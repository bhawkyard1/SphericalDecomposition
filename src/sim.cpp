#include "sim.hpp"
#include "util.hpp"

sim::sim()
{
    m_broadphase = new btDbvtBroadphase;

    //Some other physics settings I do not understand
    m_collisionConfiguration = new btDefaultCollisionConfiguration;
    m_dispatcher = new btCollisionDispatcher( m_collisionConfiguration );

    //Solver
    m_solver = new btSequentialImpulseConstraintSolver;

    //World
    m_dynamicsWorld.reset( new btDiscreteDynamicsWorld(
                               m_dispatcher,
                               m_broadphase,
                               m_solver,
                               m_collisionConfiguration
                               ) );

    m_dynamicsWorld->setGravity( btVector3(0.0f, -9.8f, 0.0f) );

    std::cout << "Sim constructed!\n";
}

sim::~sim()
{
    delete m_solver;
    delete m_dispatcher;
    delete m_collisionConfiguration;
    delete m_broadphase;
}

void sim::addSphere(const btVector3 _pos, const float _radius, const float _mass)
{
    std::cout << "Adding sphere...\n";


    //Create sphere.
    collisionSphere shape (_pos, _radius, _mass);

    //Push sphere, retrieve ID.
    slotID id = m_spheres.push_back( shape );

    std::cout << "push back! " << m_spheres.size() << '\n';

    //Grab reference to sphere.
    collisionSphere * pt = m_spheres.getByID( id );
    if(pt == nullptr)
        errorExit("Uh oh! It seems sim::removeSphere() is using a nullptr!");

    std::cout << "p1 " << (pt->getBodyPt()->getMotionState() == nullptr) << "\n";
    m_dynamicsWorld->addRigidBody( pt->getBodyPt() );
    std::cout << "p2\n";

    //m_dynamicsWorld.stepSimulation(1 / 60.f, 10);


    /*btCollisionShape * fallShape = new btSphereShape(1);
    btDefaultMotionState* fallMotionState =
            new btDefaultMotionState(btTransform(btQuaternion(0, 0, 0, 1), btVector3(0, 50, 0)));
    btScalar mass = 1;
    btVector3 fallInertia(0, 0, 0);
    fallShape->calculateLocalInertia(mass, fallInertia);
    btRigidBody::btRigidBodyConstructionInfo fallRigidBodyCI(mass, fallMotionState, fallShape, fallInertia);
    btRigidBody* fallRigidBody = new btRigidBody(fallRigidBodyCI);
    m_dynamicsWorld->addRigidBody(fallRigidBody);*/

    std::cout << "Sphere added!\n";
}

void sim::draw(const float _dt)
{
    //std::cout << "drawing\n";

    m_renderer.clear();

    for(auto &i : m_spheres.m_objects)
    {
        m_renderer.drawSphere( nv3(i.getPos()), i.getRadius(), ngl::Vec4(1.0, 1.0, 1.0, 1.0) );
    }
}

void sim::removeSphere(const size_t _i)
{
    //Retrieve sphere ID
    slotID id = m_spheres.getID( _i );

    //Retrieve sphere.
    collisionSphere * sph = m_spheres.getByID( id );
    if(sph == nullptr)
        errorExit("Uh oh! It seems sim::removeSphere() is using a nullptr!");

    //Retrieve body.
    btRigidBody * body = sph->getBodyPt();

    //Remove body from dynamicsworld.
    m_dynamicsWorld->removeRigidBody( body );

    //Delete sphere from container.
    m_spheres.free( _i );
}

void sim::update(const float _dt)
{
    std::cout << "updating " << m_spheres.size() << '\n';

    m_dynamicsWorld->stepSimulation( _dt );

    std::cout << "post step\n";

    for(auto &i : m_spheres.m_objects)
        i.update();

    std::cout << "post transform evaluation\n";
}

#include "sim.hpp"

sim::sim()
{
    std::unique_ptr<btBroadphaseInterface> broadphase ( new btDbvtBroadphase() );

    //Some other physics settings I do not understand
    std::unique_ptr<btDefaultCollisionConfiguration> collisionConfiguration ( new btDefaultCollisionConfiguration() );
    std::unique_ptr<btCollisionDispatcher> dispatcher ( new btCollisionDispatcher( collisionConfiguration.get() ) );

    //Solver
    std::unique_ptr<btSequentialImpulseConstraintSolver> solver (new btSequentialImpulseConstraintSolver);

    //World
    m_dynamicsWorld.reset(new btDiscreteDynamicsWorld( dispatcher.get(), broadphase.get(), solver.get(), collisionConfiguration.get() ));
    m_dynamicsWorld->setGravity( btVector3(0.0f, -9.8f, 0.0f) );
}

sim::~sim()
{

}

void sim::addSphere(const btVector3 _pos, const float _radius, const float _mass)
{
    collisionSphere shape (_pos, _radius, _mass);
    m_spheres.push_back( shape );
}

void sim::draw(const float _dt)
{

}

void sim::update(const float _dt)
{

}

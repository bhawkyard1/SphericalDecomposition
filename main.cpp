#include <iostream>
#include <memory>
#include <btBulletDynamicsCommon.h>

int main()
{
    std::cout << "Oh heck.\n";

    //Set broad phase algorithm
    std::unique_ptr<btBroadphaseInterface> broadphase ( new btDbvtBroadphase() );

    //Some other physics settings I do not understand
    std::unique_ptr<btDefaultCollisionConfiguration> collisionConfiguration ( new btDefaultCollisionConfiguration() );
    std::unique_ptr<btCollisionDispatcher> dispatcher ( new btCollisionDispatcher( collisionConfiguration.get() ) );

    //Solver
    std::unique_ptr<btSequentialImpulseConstraintSolver> solver (new btSequentialImpulseConstraintSolver);

    //World
    std::unique_ptr<btDiscreteDynamicsWorld> dynamicsWorld (new btDiscreteDynamicsWorld( dispatcher.get(), broadphase.get(), solver.get(), collisionConfiguration.get() ));
    dynamicsWorld->setGravity( btVector3(0, -10, 0) );

    //Our two shapes
    std::unique_ptr<btCollisionShape> groundShape ( new btStaticPlaneShape(btVector3(0, 1, 0), 1) );
    std::unique_ptr<btCollisionShape> fallShape ( new btSphereShape(1) );

    //Instantiate ground
    std::unique_ptr<btDefaultMotionState> groundMotionState (
                new btDefaultMotionState(
                    btTransform( btQuaternion(0, 0, 0, 1) ,
                                 btVector3(0, -1, 0)
                                 )));

    btRigidBody::btRigidBodyConstructionInfo groundRigidBodyCI(
                0,
                groundMotionState.get(),
                groundShape.get(),
                btVector3(0, 0, 0)
                );

    /*btRigidBody::btRigidBodyConstructionInfo
                    groundRigidBodyCI(0, groundMotionState, groundShape, btVector3(0, 0, 0));
    */
    std::unique_ptr<btRigidBody> groundRigidBody ( new btRigidBody(groundRigidBodyCI) );

    dynamicsWorld->addRigidBody( groundRigidBody.get() );

    //Instantiate sphere
    std::unique_ptr<btDefaultMotionState> fallMotionState ( new btDefaultMotionState(
                                                                btTransform(
                                                                    btQuaternion( 0, 0, 0, 1 ),
                                                                    btVector3(0, 50, 0)
                                                                             )
                                                                ) );

    btScalar mass = 1;
    btVector3 fallInertia(0, 0, 0);
    fallShape->calculateLocalInertia(mass, fallInertia);

    btRigidBody::btRigidBodyConstructionInfo fallRigidBodyCI(
                mass,
                fallMotionState.get(),
                fallShape.get(),
                fallInertia
                );

    std::unique_ptr<btRigidBody> fallRigidBody ( new btRigidBody( fallRigidBodyCI ) );
    fallRigidBody->setMotionState(fallMotionState.get());

    dynamicsWorld->addRigidBody( fallRigidBody.get() );

    for(int i = 0; i < 300; ++i)
    {
        dynamicsWorld->stepSimulation(1.0f / 60.0f, 10);

        btTransform trans;
        fallRigidBody->getMotionState()->getWorldTransform(trans);
        std::cout << "Sphere Y is " << trans.getOrigin().getY() << '\n';
    }

    std::cout << "Simulation complete.\n";

    return 0;
}

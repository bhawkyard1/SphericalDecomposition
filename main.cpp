#define GLEW_STATIC

#include <iostream>
#include <memory>

#include <SDL2/SDL.h>
#include <btBulletDynamicsCommon.h>

#include "sim.hpp"
#include "sim_time.hpp"

int main(int _argc, char * _argv[])
{
    std::cout << "Oh heck.\n";

    sim sam;
    //Make the simulation update at 60fps.
    sim_time timer (120.0f);
    timer.setStart();
    timer.setCur();

    std::cout << "Adding sphere pre\n";
    //sam.addSphere(btVector3(0, 0, 0), 1.0f, 1.0f);
    std::cout << "Adding sphere post\n";

    bool active = true;

    while(active)
    {
        while(timer.getAcc() > timer.getFrame())
        {
            sam.update( timer.getDiff() );
            timer.incrAcc( -timer.getDiff() );
        }

        //Draw the game.
        float diff_clamped = timer.getDiff();
        if(diff_clamped == 0.0f) diff_clamped = 0.01f;

        sam.draw( timer.getAcc() / diff_clamped );

        timer.setCur();
    }

/*
    //Set broad phase algorithm
    btDbvtBroadphase broadphase;

    //Some other physics settings I do not understand
    btDefaultCollisionConfiguration collisionConfiguration;
    btCollisionDispatcher dispatcher ( &collisionConfiguration );

    //Solver
    btSequentialImpulseConstraintSolver solver;

    //World
    btDiscreteDynamicsWorld dynamicsWorld ( &dispatcher, &broadphase, &solver, &collisionConfiguration );
    dynamicsWorld.setGravity( btVector3(0, -10, 0) );

    //Our two shapes
    btStaticPlaneShape groundShape ( btVector3(0, 1, 0), 1 );
    btSphereShape fallShape ( 1 );

    //Instantiate ground
    btDefaultMotionState groundMotionState (
                btTransform( btQuaternion(0, 0, 0, 1) ,
                             btVector3(0, -1, 0)
                             ));

    btRigidBody::btRigidBodyConstructionInfo groundRigidBodyCI(
                0,
                &groundMotionState,
                &groundShape,
                btVector3(0, 0, 0)
                );

    btRigidBody groundRigidBody ( groundRigidBodyCI );

    dynamicsWorld.addRigidBody( &groundRigidBody );

    //Instantiate sphere
    btDefaultMotionState fallMotionState (
                btTransform(
                    btQuaternion( 0, 0, 0, 1 ),
                    btVector3(0, 50, 0)
                    )
                );

    btScalar mass = 1;
    btVector3 fallInertia(0, 0, 0);
    fallShape.calculateLocalInertia(mass, fallInertia);

    btRigidBody::btRigidBodyConstructionInfo fallRigidBodyCI(
                mass,
                &fallMotionState,
                &fallShape,
                fallInertia
                );

    btRigidBody fallRigidBody ( fallRigidBodyCI );
    fallRigidBody.setMotionState(&fallMotionState);

    dynamicsWorld.addRigidBody( &fallRigidBody );

    for(int i = 0; i < 300; ++i)
    {
        dynamicsWorld.stepSimulation(1.0f / 60.0f, 10);

        btTransform trans;
        fallRigidBody.getMotionState()->getWorldTransform(trans);
        std::cout << "Sphere Y is " << trans.getOrigin().getY() << '\n';
    }*/

    std::cout << "Simulation complete.\n";


    return 0;
}

/*
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

std::cout << "Simulation complete.\n";*/

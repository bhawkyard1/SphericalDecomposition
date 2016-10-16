#include <iostream>
#include <utility>

#include "collisionSphere.hpp"

collisionSphere::collisionSphere(btVector3 _pos, const float _radius, const float _mass)
{
    m_radius = _radius;
    m_mass = _mass;

    m_collisionShape = new btSphereShape( 1 );

    //Instantiate sphere
    btDefaultMotionState * m_motionState =
            new btDefaultMotionState(
                btTransform(
                    btQuaternion( 0, 0, 0, 1 ),
                    btVector3(0,0,0)
                    )
                );

    btVector3 inertia(0, 0, 0);
    m_collisionShape->calculateLocalInertia(1, inertia);

    btRigidBody::btRigidBodyConstructionInfo collisionSphereCI(
                _mass,
                m_motionState,
                m_collisionShape,
                inertia
                );

    m_body = new btRigidBody( collisionSphereCI );
    std::cout << "pre construction motionstate nullptr " << (m_body->getMotionState() == nullptr) << '\n';
    m_body->setMotionState( m_motionState );
    std::cout << "post construction motionstate nullptr " << (m_body->getMotionState() == nullptr) << '\n';

    std::cout << "collisionSphere constructed!\n";
}

collisionSphere::collisionSphere(const collisionSphere &_rhs)
{
    std::cout << "copy ctor call\n";
    m_radius = _rhs.m_radius;
    m_mass = _rhs.m_mass;

    m_collisionShape = new btSphereShape( 1 );

    //Instantiate sphere
    btDefaultMotionState * m_motionState =
            new btDefaultMotionState(
                btTransform(
                    btQuaternion( 0, 0, 0, 1 ),
                    btVector3(0,0,0)
                    )
                );

    btVector3 inertia(0, 0, 0);
    m_collisionShape->calculateLocalInertia(1, inertia);

    btRigidBody::btRigidBodyConstructionInfo collisionSphereCI(
                _rhs.m_mass,
                m_motionState,
                m_collisionShape,
                inertia
                );

    m_body = new btRigidBody( collisionSphereCI );
    std::cout << "pre construction motionstate nullptr " << (m_body->getMotionState() == nullptr) << '\n';
    m_body->setMotionState( m_motionState );
}

collisionSphere::~collisionSphere()
{
    delete m_collisionShape;
    delete m_body;
}

void collisionSphere::update()
{
    std::cout << "yo " << (m_body->getMotionState() == nullptr) << '\n';
    m_body->getMotionState()->getWorldTransform( m_trans );
    std::cout << m_trans.getOrigin().getX() << ", " << m_trans.getOrigin().getY() << ", " << m_trans.getOrigin().getZ() << '\n';

    std::cout << "POSITION";

    std::cout << "post\n";
}

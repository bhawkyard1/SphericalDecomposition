#include <iostream>
#include <utility>

#include "collisionSphere.hpp"

collisionSphere::collisionSphere(btVector3 _pos, const float _radius, const float _mass)
{
    m_radius = _radius;
    m_mass = _mass;

    m_collisionShape = new btSphereShape( _radius );

    btVector3 inertia(0, 0, 0);
    m_collisionShape->calculateLocalInertia(_mass, inertia);

    //Instantiate sphere
    btDefaultMotionState motionState (
                btTransform(
                    btQuaternion( 0, 0, 0, 1 ),
                    _pos
                    )
                );

    btRigidBody::btRigidBodyConstructionInfo collisionSphereCI(
                _mass,
                &motionState,
                m_collisionShape,
                inertia
                );

    m_body = new btRigidBody( collisionSphereCI );
    m_body->setMotionState( &motionState );

    std::cout << "collisionSphere constructed!\n";
}

collisionSphere::collisionSphere(const collisionSphere &_rhs)
{
    m_radius = _rhs.m_radius;
    m_mass = _rhs.m_mass;

    m_collisionShape = new btSphereShape( *_rhs.m_collisionShape );
    m_body = new btRigidBody( *_rhs.m_body );
}

collisionSphere::~collisionSphere()
{
    delete m_collisionShape;
    delete m_body;
}

void collisionSphere::update()
{
    std::cout << "yo " << (m_body->getMotionState() == nullptr) << '\n';
    //m_body->getMotionState()->getWorldTransform( m_trans );

    std::cout << "POSITION";

    std::cout << "post\n";
}

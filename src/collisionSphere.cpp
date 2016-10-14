#include <utility>

#include "collisionSphere.hpp"

collisionSphere::collisionSphere(btVector3 _pos, const float _radius, const float _mass)
{
    m_radius = _radius;
    m_mass = _mass;

    m_collisionShape.reset( new btSphereShape( _radius ) );

    btVector3 inertia(0, 0, 0);
    m_collisionShape->calculateLocalInertia(_mass, inertia);

    //Instantiate sphere
    std::unique_ptr<btDefaultMotionState> motionState ( new btDefaultMotionState(
                                                            btTransform(
                                                                btQuaternion( 0, 0, 0, 1 ),
                                                                _pos
                                                                )
                                                            ) );

    btRigidBody::btRigidBodyConstructionInfo collisionSphereCI(
                _mass,
                motionState.get(),
                m_collisionShape.get(),
                inertia
                );

    m_body.reset( new btRigidBody( collisionSphereCI ) );
    m_body->setMotionState(motionState.get());
}

collisionSphere::collisionSphere(const collisionSphere &_rhs)
{
    m_radius = _rhs.m_radius;
    m_mass = _rhs.m_mass;

    m_collisionShape = std::make_unique( (*_rhs.m_collisionShape) );
    m_body = std::make_unique( *(_rhs.m_body) );
}

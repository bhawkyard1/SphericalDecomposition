#ifndef COLLISIONSPHERE_HPP
#define COLLISIONSPHERE_HPP

#include <memory>

#include <btBulletDynamicsCommon.h>

class collisionSphere
{
public:
    collisionSphere(btVector3 _pos, const float _radius, const float _mass);
    collisionSphere(const collisionSphere &_rhs);
private:
    std::unique_ptr<btRigidBody> m_body;
    std::unique_ptr<btCollisionShape> m_collisionShape;
    float m_mass;
    float m_radius;
};

#endif

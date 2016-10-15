#ifndef COLLISIONSPHERE_HPP
#define COLLISIONSPHERE_HPP

#include <memory>

#include <btBulletDynamicsCommon.h>

class collisionSphere
{
public:
    collisionSphere(btVector3 _pos, const float _radius, const float _mass);
    collisionSphere(const collisionSphere &_rhs);
    ~collisionSphere();

    void deleteResources();

    btRigidBody * getBodyPt() {return m_body;}
    btSphereShape * getCollisionShapePt() {return m_collisionShape;}

    btVector3 getPos() const {return m_trans.getOrigin();}

    float getRadius() const {return m_radius;}

    void update();
private:
    btRigidBody * m_body;
    btSphereShape * m_collisionShape;
    float m_mass;
    btDefaultMotionState * m_motionState;
    float m_radius;
    btTransform m_trans;
};

#endif

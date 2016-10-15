#ifndef SIM_HPP
#define SIM_HPP

#include <btBulletCollisionCommon.h>
#include <ngl/Obj.h>

#include "collisionSphere.hpp"
#include "renderer.hpp"
#include "slotMap.hpp"

struct dynamicsSettings
{
    btDbvtBroadphase m_broadphase;
    btDefaultCollisionConfiguration m_collisionConfiguration;
    btCollisionDispatcher m_dispatcher;
    btSequentialImpulseConstraintSolver m_solver;

    dynamicsSettings() : m_dispatcher( &m_collisionConfiguration )
    {
        std::cout << "Dynamics settings ctor!";
    }
};

class sim
{
public:
    sim();
    ~sim();
    void addSphere(const btVector3 _pos, const float _radius, const float _mass);
    void removeSphere(const size_t _i);
    void update(const float _dt);
    void draw(const float _dt);
private:
    dynamicsSettings m_dynamicsWorldSettings;
    btDiscreteDynamicsWorld m_dynamicsWorld;
    std::vector<ngl::Obj> m_geometry;
    renderer m_renderer;
    slotMap<collisionSphere> m_spheres;

    btCollisionShape * myColShape;
    btRigidBody * myRB;
};

#endif

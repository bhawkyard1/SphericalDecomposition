#ifndef SIM_HPP
#define SIM_HPP

#include <btBulletCollisionCommon.h>
#include <ngl/Obj.h>

#include "collisionSphere.hpp"
#include "renderer.hpp"
#include "slotMap.hpp"

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

    btBroadphaseInterface * m_broadphase;

    btDefaultCollisionConfiguration * m_collisionConfiguration;
    btCollisionDispatcher * m_dispatcher;

    std::unique_ptr<btDiscreteDynamicsWorld> m_dynamicsWorld;
    std::vector<ngl::Obj> m_geometry;
    //renderer m_renderer;
    btSequentialImpulseConstraintSolver * m_solver;
    slotMap<collisionSphere> m_spheres;
};

#endif

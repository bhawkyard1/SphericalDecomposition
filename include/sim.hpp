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
    void update(const float _dt);
    void draw(const float _dt);
private:
    std::unique_ptr<btDiscreteDynamicsWorld> m_dynamicsWorld;
    std::vector<ngl::Obj> m_geometry;
    renderer m_renderer;
    slotMap<collisionSphere> m_spheres;
};

#endif

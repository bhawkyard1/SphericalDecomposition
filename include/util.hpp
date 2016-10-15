#ifndef UTIL_HPP
#define UTIL_HPP

#include <btBulletCollisionCommon.h>
#include <ngl/NGLInit.h>
#include <string>

void errorExit(const std::string &_msg);

ngl::Vec3 nv3( btVector3 _vec );

#endif

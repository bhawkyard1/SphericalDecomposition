#include <iostream>

#include "util.hpp"

void errorExit(const std::string &_msg)
{
    std::cerr << _msg << '\n';
    exit(EXIT_FAILURE);
}

ngl::Vec3 nv3(btVector3 _vec)
{
    return ngl::Vec3( _vec.getX(), _vec.getY(), _vec.getZ() );
}

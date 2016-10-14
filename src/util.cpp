#include <iostream>

#include "util.hpp"

void errorExit(const std::string &_msg)
{
    std::cerr << _msg << '\n';
    exit(EXIT_FAILURE);
}

#include "sim_time.hpp"

sim_time::sim_time(float _fps)
{
    m_start = hr_clock::now().time_since_epoch().count();
    m_cur = hr_clock::now().time_since_epoch().count();

    m_sim_fps = _fps;
    m_sim_dt = 1.0 / m_sim_fps;
    m_sim_accumulator = 0.0;

    m_time_since_creation = 0.0;
}

void sim_time::setStart()
{
    m_start = hr_clock::now().time_since_epoch().count();
    m_diff = (m_cur - m_start) / m_tickRate;

    m_time_since_creation += m_diff;
}

void sim_time::setCur()
{
    m_cur = hr_clock::now().time_since_epoch().count();

    m_diff = (m_cur - m_start) / m_tickRate;
    m_sim_accumulator += m_diff;

    m_start = m_cur;

    if(m_sim_accumulator > 0.2) m_sim_accumulator = 0.2;

    m_time_since_creation += m_diff;
}

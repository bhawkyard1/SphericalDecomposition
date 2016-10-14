#ifndef SLOTMAP_HPP
#define SLOTMAP_HPP

#include <stddef.h>
#include <vector>

struct uniqueID
{
    uniqueID()
    {
        m_id = 0;
        m_version = -1;
    }

    uniqueID(const long _id, const long _version)
    {
        m_id = _id;
        m_version = _version;
    }

    long m_id;
    long m_version;
};

bool operator ==(const uniqueID &_lhs, const uniqueID &_rhs);
bool operator !=(const uniqueID &_lhs, const uniqueID &_rhs);

template<class t>

class slotMap
{
public:
    //----------------------------------------------------------------------------------------------------------------------
    /// \brief Vector of raw objects.
    //----------------------------------------------------------------------------------------------------------------------
    std::vector<t> m_objects;

    t * getByID(uniqueID _i)
    {
        //Something wrong here. m_indirection not keeping up with m_ids.
        if(_i.m_id < m_indirection.size() and m_indirection[ _i.m_id ].m_version == _i.m_version)
            return &m_objects[ m_indirection[ _i.m_id ].m_id ];
        return nullptr;
    }

    uniqueID push_back(const t &_obj)
    {
        uniqueID ret;
        //If there are free spaces...
        if(m_freeList.size() > 0)
        {
            long freeid = m_freeList.back();
            long ver = m_indirection[ freeid ].m_version;

            m_indirection[ freeid ].m_id = m_objects.size();
            m_ids.push_back( {freeid, ver} );
            m_freeList.pop_back();

            ret = {freeid, ver};
        }
        //Create a new object, a new id and a new entry in the indirection list.
        else
        {
            uniqueID id = {static_cast<long>(m_objects.size()), 0};
            m_indirection.push_back( id );
            m_ids.push_back( id );

            ret = id;
        }

        m_objects.push_back(_obj);

        return ret;
    }

    //Swaps item at index _a with item at index _b
    void swap(long _a, long _b)
    {
        if(_a == _b) return;

        //Store entry pointed to by the id of _a
        uniqueID swap = {_a, m_ids[_b].m_version};

        //Make the entry at _a's id point to _a's future index.
        m_indirection[ m_ids[_a].m_id ] = {_b, m_ids[_a].m_version};
        //Make the entry at _b's id point to _b's future index.
        m_indirection[ m_ids[_b].m_id ] = swap;

        //std::swap( m_objects[_a], m_objects[_b] );
        //std::swap( m_ids[_a], m_ids[_b] );

        iter_swap( m_objects.begin() + _a, m_objects.begin() + _b );
        iter_swap( m_ids.begin() + _a, m_ids.begin() + _b );
    }

    void pop()
    {
        //Add id to freelist.
        m_freeList.push_back( m_ids.back().m_id );
        //Increment version on indirection list.
        m_indirection[ m_ids.back().m_id ].m_version += 1;

        //Destroy ID.
        m_ids.pop_back();
        //Destroy object.
        m_objects.pop_back();
    }

    void free(size_t _i)
    {
        swap(_i, m_objects.size() - 1);
        pop();
    }

    t& back() const {return m_objects.back();}
    t& back() {return m_objects.back();}
    uniqueID backID() {return m_ids.back();}

    void clear()
    {
        m_objects.clear();
        m_ids.clear();
        m_indirection.clear();
        m_freeList.clear();
    }

    size_t size() const {return m_objects.size();}

    uniqueID getID(size_t _i) const {return m_ids[_i];}

    t operator [](size_t _i) const {return m_objects[_i];}
    t & operator [](size_t _i) {return m_objects[_i];}

private:
    //----------------------------------------------------------------------------------------------------------------------
    /// \brief The index of each entry is the id of the object. The contents id is the index of the object. The version is the version of the object.
    /// Confused? Me too.
    //----------------------------------------------------------------------------------------------------------------------
    std::vector< uniqueID > m_indirection;

    //----------------------------------------------------------------------------------------------------------------------
    /// \brief Means we do not have to store ids in the object, this matches movements of m_objects by index.
    //----------------------------------------------------------------------------------------------------------------------
    std::vector< uniqueID > m_ids;

    //----------------------------------------------------------------------------------------------------------------------
    /// \brief List of all free IDs.
    //----------------------------------------------------------------------------------------------------------------------
    std::vector< long > m_freeList;
};

template<class t>
void transfer(size_t _i, slotMap<t> &_src, slotMap<t> &_dst)
{
    _dst.push_back( _src[_i] );
    _src.free( _i );
}

#endif

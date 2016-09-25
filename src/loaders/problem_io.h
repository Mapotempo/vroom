#ifndef PROBLEM_IO_H
#define PROBLEM_IO_H

/*

This file is part of VROOM.

Copyright (c) 2015-2016, Julien Coupey.
All rights reserved (see LICENSE).

*/

#include<string>
#include<vector>
#include "../../include/rapidjson/document.h"
#include "../structures/matrix.h"

template <class T>
class problem_io{

public:
  virtual matrix<T> get_matrix() = 0;

  virtual void get_steps(const std::list<index_t>& steps,
                         rapidjson::Value& value,
                         rapidjson::Document::AllocatorType& allocator) const = 0;

  virtual void get_route_infos(const std::list<index_t>& steps,
                               rapidjson::Value& value,
                               rapidjson::Document::AllocatorType& allocator) const = 0;

  index_t get_vehicle_id() const{
    return _vehicle_id;
  }

  virtual ~problem_io() {}

protected:
  index_t _vehicle_id;
  pbl_context_t _pbl_context;

  problem_io() {}

public:
  const pbl_context_t& get_pbl_context() const{
    return _pbl_context;
  }
};

#endif

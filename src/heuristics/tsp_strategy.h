#ifndef TSP_STRATEGY_H
#define TSP_STRATEGY_H

/*

This file is part of VROOM.

Copyright (c) 2015-2016, Julien Coupey.
All rights reserved (see LICENSE).

*/

#include <chrono>
#include <memory>
#include <iomanip>
#include <boost/log/trivial.hpp>
#include "./heuristic.h"
#include "./christo_heuristic.h"
#include "./local_search.h"

std::pair<std::list<index_t>, distance_t>solve_atsp(const tsp& asymmetric_tsp,
                                                    unsigned nb_threads,
                                                    timing_t& computing_times);

#endif

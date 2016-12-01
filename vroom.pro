TARGET = vroom
TEMPLATE = lib
CONFIG += staticlib warn_on

ROOT_DIR = ../..


!win32* : QMAKE_CXXFLAGS *= -Wno-unused-function -Wno-unused-const-variable -Wno-ignored-qualifiers

include($$ROOT_DIR/common.pri)

DEFINES *= BOOST_ERROR_CODE_HEADER_ONLY  BOOST_LOG_NO_THREADS

INCLUDEPATH *= include/rapidjson \
     osrm-backend/third_party

SOURCES += \
     src/heuristics/christo_heuristic.cpp \
     src/heuristics/heuristic.cpp \
     src/heuristics/local_search.cpp \
     src/heuristics/tsp_strategy.cpp \
     src/structures/tsp.cpp \
     src/utils/exceptions.cpp \
     src/utils/logger.cpp \
     src/utils/version.cpp \
     ../boost/libs/log/src/trivial.cpp \
     ../boost/libs/log/src/core.cpp \
     ../boost/libs/log/src/unhandled_exception_count.cpp \
     ../boost/libs/log/src/record_ostream.cpp \
     ../boost/libs/log/src/severity_level.cpp \
     ../boost/libs/log/src/global_logger_storage.cpp \
     ../boost/libs/log/src/attribute_set.cpp \
     ../boost/libs/log/src/attribute_name.cpp \
     ../boost/libs/log/src/default_attribute_names.cpp \
     ../boost/libs/log/src/attribute_value_set.cpp \
     ../boost/libs/log/src/default_sink.cpp \
     ../boost/libs/log/src/exceptions.cpp \
#For log initialisation (not use for moment)
     ../boost/libs/log/src/text_ostream_backend.cpp \
     ../boost/libs/log/src/format_parser.cpp \
     ../boost/libs/log/src/formatter_parser.cpp \
     ../boost/libs/log/src/code_conversion.cpp \
     ../boost/libs/log/src/parser_utils.cpp \
     ../boost/libs/log/src/default_formatter_factory.cpp \
     ../boost/libs/log/src/process_id.cpp \
     ../boost/libs/log/src/dump.cpp \

HEADERS += \
     src/algorithms/graham_scan.h \
     src/algorithms/kruskal.h \
     src/algorithms/munkres.h \
     src/heuristics/christo_heuristic.h \
     src/heuristics/heuristic.h \
     src/heuristics/local_search.h \
     src/heuristics/tsp_strategy.h \
     src/loaders/osrm_loader.h \
     src/loaders/problem_io.h \
     src/loaders/routed_loader.h \
     src/loaders/tsplib_loader.h \
     src/structures/edge.h \
     src/structures/matrix.h \
     src/structures/tsp.h \
     src/structures/typedefs.h \
     src/structures/undirected_graph.h \
     src/utils/exceptions.h \
     src/utils/logger.h \
     src/version.h \
     ../boost/libs/log/src/exceptions.hpp \
     ../boost/libs/log/src/parser_utils.hpp \
#     ../boost/libs/log/src/default_formatter_factory.hpp \
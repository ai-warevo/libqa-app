cmake_minimum_required(VERSION 3.15)
project(MainApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(FetchContent)

FetchContent_Declare(
    utility_project
    GIT_REPOSITORY https://github.com/ai-warevo/libqa-util
    GIT_TAG        main
)
# FetchContent_Declare(
#     utility_app
#     SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../util
# )
FetchContent_MakeAvailable(utility_project)

add_executable(main_app main.cpp)

target_link_libraries(main_app PRIVATE Utility::lib)

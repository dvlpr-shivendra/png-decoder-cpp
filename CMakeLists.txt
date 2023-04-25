cmake_minimum_required(VERSION 3.10)

project(PNGDecoder)

# Find zlib library
find_package(ZLIB REQUIRED)

set(FLTK_DIR $ENV{FLTK_DIR})

find_package(FLTK REQUIRED NO_MODULE)

# Add source files
set(SOURCES
    src/Decoder.h
    src/Decoder.cpp
    src/Streamer.h
    src/Streamer.cpp
    src/Image.h
    src/Image.cpp
    src/ZlibHelper.h
    src/ZlibHelper.cpp
    src/main.cpp
)

# Set build type to Debug
set(CMAKE_BUILD_TYPE Debug)

# Create executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Set include directories
target_include_directories(${PROJECT_NAME} PRIVATE src)
target_include_directories(${PROJECT_NAME} PUBLIC ${FLTK_INCLUDE_DIRS})

# Link zlib library
target_link_libraries(${PROJECT_NAME} ZLIB::ZLIB)
target_link_libraries(${PROJECT_NAME} fltk)

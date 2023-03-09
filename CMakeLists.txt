cmake_minimum_required(VERSION 3.5)

project(GLFW)
# 以下三个变量要自行修改检查
set(OpenGLDirectoryName glfw-3.3.8.bin.WIN64)
set(CMAKE_INSTALL_PREFIX E:\\Program\ Files\\third_party)
set(CMAKE_FILE_INSTALL_PATH E:\\Program\ Files\\third_party)

message("CMAKE_INSTALL_PREFIX is ${CMAKE_INSTALL_PREFIX}")
set(${PROJECT_NAME}_include_dirs ${CMAKE_INSTALL_PREFIX}/include)
set(${PROJECT_NAME}_link_dirs ${CMAKE_INSTALL_PREFIX}/lib)
# 根据下载opengl文件夹名来修改

configure_file(${CMAKE_SOURCE_DIR}/${PROJECT_NAME}.cmake.in ${PROJECT_NAME}Config.cmake @ONLY)

install(FILES ${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake DESTINATION ${CMAKE_FILE_INSTALL_PATH}/share/${PROJECT_NAME}/cmake)

install(DIRECTORY ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/include/GLFW DESTINATION include)

if(${MSVC_VERSION} EQUAL 1900)
    install(FILES 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2015/glfw3.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2022/glfw3_mt.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2015/glfw3dll.lib
     DESTINATION lib)
endif()

if((${MSVC_VERSION} LESS 1920) AND (${MSVC_VERSION} GREATER 1909))
    install(FILES 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2017/glfw3.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2022/glfw3_mt.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2017/glfw3dll.lib 
    DESTINATION lib)
endif()

if((${MSVC_VERSION} LESS 1930) AND (${MSVC_VERSION} GREATER 1919))
    install(FILES 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2019/glfw3.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2022/glfw3_mt.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2019/glfw3dll.lib 
    DESTINATION lib)
endif()

if((${MSVC_VERSION} LESS 1940) AND (${MSVC_VERSION} GREATER 1929))
    install(FILES 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2022/glfw3.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2022/glfw3_mt.lib 
    ${CMAKE_SOURCE_DIR}/${OpenGLDirectoryName}/lib-vc2022/glfw3dll.lib 
    DESTINATION lib)
endif()

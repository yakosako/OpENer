macro(opener_platform_spec)
  include_directories(${PORTS_SRC_DIR}/${OpENer_PLATFORM} ${PORTS_SRC_DIR}/${OpENer_PLATFORM}/sample_application)
  set( CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99 -Werror=implicit-function-declaration" )
  if(NOT CMAKE_INSTALL_LIBDIR)
    set( CMAKE_INSTALL_LIBDIR "lib")
  endif()
  if(NOT CMAKE_INSTALL_INCLUDEDIR )
    set( CMAKE_INSTALL_INCLUDEDIR "include")
  endif()
  add_definitions( -D_POSIX_C_SOURCE=200112L -D__USE_GNU -D__USE_XOPEN2K -DOPENER_POSIX)
  get_property(languages GLOBAL PROPERTY ENABLED_LANGUAGES)
  if ("CXX" IN_LIST languages)
  	add_definitions(-DRESTRICT=)
  else()
  	add_definitions(-DRESTRICT=restrict)
  endif()
endmacro(opener_platform_spec)

###
# VIAME examples
##

###
# Install files to example directory
##
install( FILES       detector1.cxx
                     detector3.cxx
                     detector4.cxx
                     CMakeLists.txt
         DESTINATION examples/using_detectors_in_cxx_code )


# Build select files
if( VIAME_ENABLE_OPENCV )

  find_package( OpenCV REQUIRED )
  include_directories( SYSTEM ${OpenCV_INCLUDE_DIRS} )

  find_package( Eigen3 REQUIRED )
  include_directories( ${EIGEN3_INCLUDE_DIR} )

  ###
  # Add first detector example
  add_executable( detector1       detector1.cxx )

  target_link_libraries( detector1
    PRIVATE    vital
               vital_algo
               vital_config
               vital_logger
               vital_util
               kwiver_algo_core
               kwiver_algo_ocv
               ${OpenCV_LIBS}
    )


  ###
  # Add first detector example
  add_executable( detector3       detector3.cxx )

  target_link_libraries( detector3
    PRIVATE    vital
               vital_algo
               vital_config
               vital_logger
               vital_util
               vital_vpm
               kwiver_algo_core
               kwiver_algo_ocv
               ${OpenCV_LIBS}
    )

endif()

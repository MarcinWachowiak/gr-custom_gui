FIND_PATH( QWTPLOT3D_INCLUDE_DIR qwt3d_plot.h /usr/include/ /usr/local/include /usr/include/qwtplot3d/ /usr/local/include/qwtplot3d )

MESSAGE( STATUS "${QWTPLOT3D_INCLUDE_DIR}")
FIND_LIBRARY( QWTPLOT3D_LIBRARIES qwtplot3d-qt5 /usr/lib/ usr/local/lib ) 
MESSAGE( STATUS "${QWTPLOT3D_LIBRARIES}")
IF ( QWTPLOT3D_INCLUDE_DIR  AND QWTPLOT3D_LIBRARIES ) 
  SET( QWTPLOT3D_FOUND TRUE ) 
ENDIF ( QWTPLOT3D_INCLUDE_DIR  AND QWTPLOT3D_LIBRARIES ) 

IF ( QWTPLOT3D_FOUND ) 
  IF ( NOT QWTPLOT3D_FIND_QUIETLY ) 
    MESSAGE( STATUS "Found QwtPlot3D : ${QWTPLOT3D_LIBRARIES}")
  ENDIF( NOT QWTPLOT3D_FIND_QUIETLY ) 
ELSE( QWTPLOT3D_FOUND ) 
  IF ( QWTPLOT3D_FIND_REQUIRED ) 
    MESSAGE(FATAL_ERROR "Could not find QwtPlot3D ") 
  ENDIF ( QWTPLOT3D_FIND_REQUIRED ) 
ENDIF ( QWTPLOT3D_FOUND ) 

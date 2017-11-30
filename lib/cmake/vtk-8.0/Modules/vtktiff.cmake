set(vtktiff_LOADED 1)
set(vtktiff_DEPENDS "vtkjpeg;vtkzlib")
set(vtktiff_LIBRARIES "/usr/lib/x86_64-linux-gnu/libtiff.so")
set(vtktiff_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-8.0;/usr/include/x86_64-linux-gnu")
set(vtktiff_LIBRARY_DIRS "")
set(vtktiff_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtktiff_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtktiffHierarchy.txt")
set(vtktiff_KIT "")
set(vtktiff_EXCLUDE_FROM_WRAPPING 1)



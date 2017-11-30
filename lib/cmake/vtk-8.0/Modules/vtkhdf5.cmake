set(vtkhdf5_LOADED 1)
set(vtkhdf5_DEPENDS "vtkzlib")
set(vtkhdf5_LIBRARIES "/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so")
set(vtkhdf5_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-8.0;/usr/include/hdf5/serial")
set(vtkhdf5_LIBRARY_DIRS "")
set(vtkhdf5_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtkhdf5_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkhdf5Hierarchy.txt")
set(vtkhdf5_KIT "")
set(vtkhdf5_EXCLUDE_FROM_WRAPPING 1)



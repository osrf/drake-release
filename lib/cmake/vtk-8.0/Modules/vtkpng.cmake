set(vtkpng_LOADED 1)
set(vtkpng_DEPENDS "vtkzlib")
set(vtkpng_LIBRARIES "/usr/lib/x86_64-linux-gnu/libpng.so;/usr/lib/x86_64-linux-gnu/libz.so")
set(vtkpng_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-8.0;/usr/include;/usr/include")
set(vtkpng_LIBRARY_DIRS "")
set(vtkpng_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtkpng_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkpngHierarchy.txt")
set(vtkpng_KIT "")
set(vtkpng_EXCLUDE_FROM_WRAPPING 1)



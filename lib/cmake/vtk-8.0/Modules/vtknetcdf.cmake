set(vtknetcdf_LOADED 1)
set(vtknetcdf_DEPENDS "vtkhdf5")
set(vtknetcdf_LIBRARIES "/usr/lib/x86_64-linux-gnu/libnetcdf.so")
set(vtknetcdf_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-8.0;/usr/include")
set(vtknetcdf_LIBRARY_DIRS "")
set(vtknetcdf_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtknetcdf_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtknetcdfHierarchy.txt")
set(vtknetcdf_KIT "")
set(vtknetcdf_EXCLUDE_FROM_WRAPPING 1)



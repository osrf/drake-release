#ifndef LCM_EXPORT_H
#define LCM_EXPORT_H

#ifdef LCM_STATIC
#  define LCM_EXPORT
#else
#  define LCM_EXPORT __attribute__((visibility("default")))
#endif

#endif

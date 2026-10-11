#if (defined __need_time_t || defined __need_clock_t \
     || defined __need_timespec) && !defined __MINGW32__
#include_next <time.h>
#else
#  ifndef STAT_TIME_WRAPPER_H
#  define STAT_TIME_WRAPPER_H
#  if !_GL_CONFIG_H_INCLUDED
#   error "Please include config.h first."
#  endif
#  include_next <time.h>
#  if !HAVE_TZALLOC
typedef struct tm_zone *timezone_t;
timezone_t tzalloc(char const *name);
struct tm *localtime_rz(timezone_t zone, time_t const *timer,
                        struct tm *result);
#  endif
# endif
#endif

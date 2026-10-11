#if (defined __need_wchar_t || defined __need_size_t \
     || defined __need_ptrdiff_t || defined __need_NULL \
     || defined __need_wint_t)
# include_next <stddef.h>
# undef __need_wchar_t
# undef __need_size_t
# undef __need_ptrdiff_t
# undef __need_NULL
# undef __need_wint_t
#else
# ifndef STAT_STDDEF_H
#  define STAT_STDDEF_H
#  include_next <stddef.h>
#  ifndef gl_unreachable
#   if defined __GNUC__ || defined __clang__
#    define gl_unreachable() __builtin_unreachable()
#   else
#    include <stdlib.h>
#    define gl_unreachable() abort()
#   endif
#  endif
# endif
#endif

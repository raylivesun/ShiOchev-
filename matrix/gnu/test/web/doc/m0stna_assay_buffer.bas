#inclib "crt/string.h"
#inclib "crt/stdio.h"
#inclib "crt/stdlib.h"

#include once "crt/string.bi"
#include once "crt/stdio.bi"
#include once "crt/stdlib.bi"

#lang "fblite"

#if 0

declare function _cxa_thread_ ( byref _cxa_ as string, byref _cx as string, byref tp as string, byref _ as string) as string

type _cxa_thread alias "cxa_thread"
     names as string
     cx as string
     tp as string
     check as string
     list as string
     
     _cxa_thread_ = _cxa_thread_
     names = _names
     cx = _cx
     tp = _tp
     check = _check
     list = _list

     function _cxa_thread_attach (byref _cxa_thread as string)

     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_attach(byref _cxa_ as string)
     return _cxa_thread

     end function

     function _cxa_thread_detach (byref _cxa_thread as string)

     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_detach(byref _cxa_ as string)
     return _cxa_thread

     end function

     function _cxa_thread_create (byref _cxa_thread as string, by
     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_create(byref _cxa_ as string)
     return _cxa_thread

     end function

     function _cxa_thread_detach (byref _cxa_thread as string)
     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_detach(byref _cxa_ as string)
     return _cxa_thread

     end function

     function _cxa_thread_join (byref _cxa_thread as string)
     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_join(byref _cxa_ as string)
     return _cxa_thread

     end function

     function _cxa_thread_exit (byref _cxa_thread as string)
     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_exit(byref _cxa_ as string)
     return _cxa_thread

     end function

     function _cxa_atexit (byref _cxa_func as string)
     dim _cxa_func as string
     _cxa_func = _cxa_atexit(byref _cxa_func as string)
     return _cxa_func

     end function

     function _cxa_thread_atexit (byref _cxa_func as string,
     dim _cxa_func as string
     _cxa_func = _cxa_thread_atexit(byref _cxa as string)
     return _cxa_func

     end function

     function _cxa_thread_cancel (byref _cxa_thread as string)
     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_cancel(byref _cxa_ as string)
     return _cxa_thread

     end function

     function _cxa_thread_self ()
     dim _cxa_thread as string
     _cxa_thread = _cxa_thread_self()
     return _cxa_thread

     end function

     function _cxa_thread_getspecific (byref _cxa_key as string)
     dim _cxa_key as string
     _cxa_key = _cxa_thread_getspecific(byref _cxa as string)
     return _cxa_key

     end function

end type
#else
#define _cxa_thread_getspecific 0x00000000
#define _cxa_thread_getspe 0x00000000
#define _cxa_thread_setspec 0x00000000
#define _cxa_thread_atexit 0x00000000
#define _cxa_thread_exit 0x00000000
#define _cxa_thread_create 0x00000000
#define _cxa_thread_detach 0x00000000
#define _cxa_thread_join 0x00000000
#define _cxa_thread_self 0x00000000
#define _cxa_thread_cancel 0x00000000
#define _cxa_thread_key_create 0x00000000
#define _cxa_thread_key_delete 0x00000000
#endif





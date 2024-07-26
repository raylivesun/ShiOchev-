#include once "crt/string.bi"
#include once "crt/stdlib.bi"
#include once "crt/stdio.bi"
#lang "fblite"
#if 0
declare function xalloc (byref x as string, byref y as string, byref z as string) as string

type xalloc_t alias "xalloc"
     names as string
     names_len as integer
     flags as integer
     cookie as integer
     cookie_len as integer
     size as integer
     align as integer
     max_align as integer
     state as integer
     _refcount as integer
     _lock as integer
     _magic as integer
     _refcount_lock as integer
     _lock_count as integer
     _lock_owner as integer
     _last_lock_owner as integer
     _is_main_thread as boolean
     _is_atexit_registered as boolean
     _atexit_count as integer
     _atexit_func as pointer
     _onexitbegin_func as pointer
     _onexitend_func as pointer
     _cxa_finalize_lock as pointer
     _cxa_finalize_func as pointer
     _cxa_atexit_func as pointer
     _cxa_atexit_cookie as integer
     _cxa_thread_atexit_func as pointer
     _cxa_thread_atexit_cookie as integer
     _cxa_thread_atexit_func_list as pointer
     _cxa_thread_atexit_func_end as pointer
     _cxa_thread_atexit_func_lock as pointer
     _cxa_thread_atexit_func_count as integer
     _cxa_thread_atexit_func_owner as integer
     _cxa_thread_atexit_func_owner_lock as integer
     _cxa_thread_atexit_func_owner_count as integer
     _cxa_thread_atexit_func_owner_end as pointer
end type 


function xalloc_init (byref ctx as xalloc_t)
    ctx._refcount = 1
    ctx._lock = 0
    ctx._magic = 0x34334249
    ctx._refcount_lock = 0
    ctx._lock_count = 0
    ctx._lock_owner = 0
    ctx._last_lock_owner = 0
    ctx._is_main_thread = true
    ctx._is_atexit_registered = false
    ctx._atexit_count = 0
    ctx._atexit_func = 0
    ctx._onexitbegin_func = 0
    ctx._onexitend_func = 0
    ctx._cxa_finalize_lock = 0
    ctx._cxa_finalize_func = 0
    ctx._cxa_atexit_func = 0
    ctx._cxa_atexit_cookie = 0
    ctx._cxa_thread_atexit_func = 0
    ctx._cxa_thread_atexit_cookie = 0
    ctx._cxa_thread_atexit_func_list = 0
    ctx._cxa_thread_atexit_func_end = 0
    ctx._cxa_thread_atexit_func_lock = 0
    ctx._cxa_thread_atexit_func_count = 0
    ctx._cxa_thread_atexit_func_owner = 0
    ctx._cxa_thread_atexit_func_owner_lock = 0
    ctx._cxa_thread_atexit_func_owner_count = 0
    ctx._cxa_thread_atexit_func_owner_end = 0
    ctx.size = 0
    ctx.align = 0
    ctx.max_align = 0
    ctx.names = ""
    ctx.names_len = 0
    ctx.flags = 0
    ctx.cookie = 0
    ctx.cookie_len = 0
    ctx.state = 0
    return ctx

end function


function xfree (byref ptr as pointer)
    if ptr <> nil then
    xfree_locked(ptr)
    end if
    ptr = nil
    return

end function

function xfree_locked (byref ptr as pointer)
    if ptr <> nil then
    xalloc_t ctx
    xalloc_init(ctx)
    xfree_inner(ptr, ctx)
    end if
    return

end function

function xmalloc (byref size as integer) as pointer
    xalloc_t ctx
    xalloc_init(ctx)
    return xmalloc_inner(size, ctx)
    return

end function

function xrealloc (byref ptr as pointer, byref size as integer) as pointer
    xalloc_t ctx
    xalloc_init(ctx)
    return xrealloc_inner(ptr, size, ctx)
    return

end function

end declare
#endif 



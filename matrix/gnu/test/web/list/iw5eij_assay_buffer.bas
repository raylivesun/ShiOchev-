#inclib "crt/string.h"
#inclib "crt/stdio.h"
#inclib "crt/stdlib.h"

#include once "crt/string.bi"
#include once "crt/stdio.bi"
#include once "crt/stdlib.bi"

#lang "fblite"

#if 0

Declare function _assay cdecl Alias "assay" (byval assay as double) as double
type assay alias "assay/buffer"

     names as string
     local as string
     global as string
     aliases as string
     types as string
     value as string
     units as string
     dates as string
     times as string
     comments as string
     id as string
     version as string
     created as string
     modified as string
     author as string
     title as string
     abstract as string
     keywords as string
     journal as string
     pmid as string

 function get(byref names, byref local, byref global) as string

     names = "mereding alias"
     local = "assay/buffer"
     global = "assay/buffer"
     aliases = "assay/buffer"
     types = "assay/buffer"
     value = "assay/buffer"
     units = "assay/buffer"
     dates = "assay/buffer"
     times = "assay/buffer"
     comments = "assay/buffer"
     id = "assay/buffer"
     version = "assay/buffer"
     created = "assay/buffer"
     modified = "assay/buffer"
     author = "assay/buffer"
     title = "assay/buffer"
     abstract = "assay/buffer"
     keywords = "assay/buffer"
     journal = "assay/buffer"
     pmid = "assay/buffer"
     return names + " " + local + " " + global
end function

 sub main()
 
     dim names as string
     dim local as string
     dim global as string
 
 call get(names, local, global)
 
 MsgBox names
 MsgBox local
 MsgBox global

end sub


end type 
end 
#endif


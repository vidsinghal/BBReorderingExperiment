; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: null_pointer_is_valid
define i32 @main(i1 %cmp, i1 %cmp1.not) #0 {
entry:
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @usage()
  unreachable

if.end:                                           ; preds = %entry
  %call = load volatile i32, ptr null, align 4
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store volatile i32 0, ptr null, align 4
  unreachable

if.end3:                                          ; preds = %if.end
  call void null()
  %call25 = call i32 (ptr, ptr, ...) null(ptr null, ptr null, ptr null, i32 0)
  call void @usage()
  unreachable
}

; Function Attrs: null_pointer_is_valid
define void @usage() #0 {
entry:
  %call = call i32 (ptr, ptr, ...) null(ptr null, ptr null)
  %call1 = call i32 (ptr, ptr, ...) null(ptr null, ptr null, ptr null)
  unreachable
}

attributes #0 = { null_pointer_is_valid }

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: null_pointer_is_valid
define i32 @gssapi_sign(i1 %cmp.not, i1 %cmp15.not) #0 {
entry:
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call ptr null(i32 0, i32 0, ptr null, i64 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp15.not, label %if.end19, label %cleanup

common.ret:                                       ; preds = %cleanup, %if.end19
  %common.ret.op = phi i32 [ 0, %if.end19 ], [ %0, %cleanup ]
  ret i32 %common.ret.op

if.end19:                                         ; preds = %if.end
  %call27 = call i32 null(ptr null, i32 0)
  br label %common.ret

cleanup:                                          ; preds = %if.end, %if.then
  %0 = load i32, ptr null, align 4
  br label %common.ret
}

attributes #0 = { null_pointer_is_valid }

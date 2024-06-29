; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @cunmqr_check(ptr %m, ptr %k, i1 %tobool12.not, i1 %cmp18) {
entry:
  br i1 %tobool12.not, label %land.lhs.true13, label %if.else17

land.lhs.true13:                                  ; preds = %entry
  %call14 = load volatile i32, ptr null, align 4
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true13, %entry
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  store i32 0, ptr %k, align 4
  br label %common.ret

if.else21:                                        ; preds = %if.else17
  br i1 %tobool12.not, label %if.then30, label %common.ret

common.ret:                                       ; preds = %if.then30, %if.else21, %if.then20
  ret i32 0

if.then30:                                        ; preds = %if.else21
  store i32 0, ptr %m, align 4
  br label %common.ret
}

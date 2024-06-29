; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @zheswapr_(i1 %tobool) #0 {
entry:
  %call1 = call i32 @lsame_()
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call6 = call i32 @zswap_(ptr null, ptr null)
  unreachable

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr null, align 8
  %call145 = call i32 @zswap_(ptr null, ptr %0)
  unreachable
}

declare i32 @lsame_()

declare i32 @zswap_(ptr, ptr)

attributes #0 = { "tune-cpu"="znver2" }

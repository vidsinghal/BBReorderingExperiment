; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_n1 = external dso_local global i32

define i32 @ctrsyl3_(ptr %trana, ptr %tranb, ptr %isgn, ptr %m, ptr %n, ptr %lda, ptr %scale, ptr %info) #0 {
entry:
  %call13 = call i32 @lsame_()
  %call14 = call i32 @lsame_()
  %call15 = call i32 @ilaenv_(ptr null, ptr null, ptr null, ptr null, ptr @c_n1, ptr null)
  store i32 0, ptr %info, align 4
  %call66 = call i32 @lsame_()
  %tobool69.not = icmp eq i32 %call14, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %if.else74

land.lhs.true70:                                  ; preds = %entry
  %call71 = call i32 @lsame_()
  br label %if.else74

if.else74:                                        ; preds = %land.lhs.true70, %entry
  store float 0.000000e+00, ptr %scale, align 4
  %0 = load i32, ptr %n, align 4
  %cmp148 = icmp eq i32 %0, 0
  br i1 %cmp148, label %common.ret, label %if.end151

common.ret:                                       ; preds = %if.end151, %if.else74
  ret i32 0

if.end151:                                        ; preds = %if.else74
  %call182 = call i32 @ctrsyl_(ptr %trana, ptr %tranb, ptr %isgn, ptr %m, ptr null, ptr null, ptr null, ptr null)
  br label %common.ret
}

declare i32 @lsame_()

declare i32 @ilaenv_(ptr, ptr, ptr, ptr, ptr, ptr)

declare i32 @ctrsyl_(ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr)

attributes #0 = { "target-cpu"="x86-64" }
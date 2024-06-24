; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ztplqt_(ptr %m, ptr %mb, ptr %lda, ptr %info, i32 %0, i32 %1, i1 %cmp26) #0 {
entry:
  %cmp = icmp sgt i32 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp26, i1 false
  br i1 %brmerge.not, label %if.then31, label %common.ret

common.ret:                                       ; preds = %if.then31, %entry
  ret i32 0

if.then31:                                        ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %common.ret
}

attributes #0 = { "tune-cpu"="znver2" }

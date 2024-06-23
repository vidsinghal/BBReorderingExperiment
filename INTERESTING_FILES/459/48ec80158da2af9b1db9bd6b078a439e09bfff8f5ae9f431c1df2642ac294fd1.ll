; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @Transcript_velocity_single(i1 %cmp.not, i1 %cmp4.not, i1 %cmp13.not) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br i1 %cmp.not, label %for.cond3, label %for.cond

for.cond3:                                        ; preds = %for.cond3, %for.cond
  br i1 %cmp4.not, label %for.cond12, label %for.cond3

for.cond12:                                       ; preds = %for.cond12, %for.cond3
  br i1 %cmp13.not, label %for.end20, label %for.cond12

for.end20:                                        ; preds = %for.cond12
  ret void
}

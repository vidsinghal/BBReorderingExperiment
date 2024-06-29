; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ilu_zpivotL(i32 %jcol, ptr %usepr, ptr %perm_r, ptr %pivrow, ptr %Glu, ptr %0, i32 %1) {
entry:
  %sub = add i32 %jcol, -1
  br label %for.cond107

for.cond107:                                      ; preds = %for.cond107, %entry
  %isub.0 = phi i32 [ %sub, %entry ], [ 0, %for.cond107 ]
  %cmp108 = icmp sge i32 %isub.0, %1
  %cmp112 = icmp eq i32 %1, 0
  %or.cond = or i1 %cmp108, %cmp112
  br i1 %or.cond, label %if.end119, label %for.cond107

if.end119:                                        ; preds = %for.cond107
  store i32 %jcol, ptr %usepr, align 4
  ret i32 0
}

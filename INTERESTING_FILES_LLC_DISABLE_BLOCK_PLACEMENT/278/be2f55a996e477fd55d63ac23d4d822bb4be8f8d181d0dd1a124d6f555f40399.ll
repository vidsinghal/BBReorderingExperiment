; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_AMR_CFCoarsen(i1 %cmp33, ptr %call162, ptr %call159) {
entry:
  br i1 %cmp33, label %common.ret, label %for.end134

common.ret:                                       ; preds = %for.cond163, %entry
  ret i32 0

for.end134:                                       ; preds = %entry
  %call1623 = call ptr @hypre_MAlloc()
  br label %for.cond163

for.cond163:                                      ; preds = %for.body166, %for.end134
  %i.0 = phi i32 [ 0, %for.end134 ], [ %inc176, %for.body166 ]
  %cmp164 = icmp ult i32 %i.0, 27
  br i1 %cmp164, label %for.body166, label %common.ret

for.body166:                                      ; preds = %for.cond163
  %idxprom167 = zext i32 %i.0 to i64
  %arrayidx168 = getelementptr i32, ptr %call162, i64 %idxprom167
  store i32 0, ptr %arrayidx168, align 4
  %arrayidx173 = getelementptr i32, ptr %call159, i64 %idxprom167
  store i32 0, ptr %arrayidx173, align 4
  %inc176 = add i32 %i.0, 1
  br label %for.cond163
}

declare ptr @hypre_MAlloc()

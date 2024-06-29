; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @sskew_commit_row_hbmv(ptr %a, i32 %k, ptr %a_vec) #0 {
entry:
  %sub19 = sub i32 0, %k
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %entry
  %vi.0 = phi i32 [ 0, %entry ], [ %add44, %for.body35 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc42, %for.body35 ]
  %cmp34 = icmp slt i32 %i.0, %k
  br i1 %cmp34, label %for.body35, label %for.end45

for.body35:                                       ; preds = %for.cond33
  %idxprom = sext i32 %vi.0 to i64
  %arrayidx = getelementptr float, ptr %a_vec, i64 %idxprom
  %0 = load float, ptr %arrayidx, align 4
  %idxprom39 = sext i32 %sub19 to i64
  %arrayidx40 = getelementptr float, ptr %a, i64 %idxprom39
  store float %0, ptr %arrayidx40, align 4
  %inc42 = add i32 %i.0, 1
  %add44 = add i32 %vi.0, 1
  br label %for.cond33

for.end45:                                        ; preds = %for.cond33
  ret void
}

attributes #0 = { "target-cpu"="x86-64" }

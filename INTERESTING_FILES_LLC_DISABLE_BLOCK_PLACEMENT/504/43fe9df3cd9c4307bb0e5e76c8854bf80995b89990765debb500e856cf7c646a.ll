; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @shuffle_generic_inline(i32 %type_size, ptr %_src, ptr %_dest) #0 {
entry:
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %entry
  %i.0 = phi i32 [ %type_size, %entry ], [ %inc, %for.body4 ]
  %cmp3 = icmp slt i32 %i.0, 0
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %0 = load i8, ptr %_src, align 1
  %idxprom7 = sext i32 %i.0 to i64
  %arrayidx8 = getelementptr i8, ptr %_dest, i64 %idxprom7
  store i8 %0, ptr %arrayidx8, align 1
  %inc = add i32 %i.0, 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  ret void
}

attributes #0 = { "target-cpu"="x86-64" }

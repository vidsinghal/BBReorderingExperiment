; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @Spliceends_trim_qstart_nosplice(ptr %nmismatches_to_trimpos) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.then17, %for.cond, %entry
  %score.0 = phi i32 [ 0, %entry ], [ %score.0, %if.then17 ], [ %add14, %for.cond ]
  %max_score.0 = phi i32 [ 0, %entry ], [ 0, %if.then17 ], [ %score.0, %for.cond ]
  %add14 = add i32 %score.0, 1
  %cmp15 = icmp slt i32 %max_score.0, 0
  br i1 %cmp15, label %if.then17, label %for.cond

if.then17:                                        ; preds = %for.cond
  store i32 0, ptr %nmismatches_to_trimpos, align 4
  br label %for.cond
}

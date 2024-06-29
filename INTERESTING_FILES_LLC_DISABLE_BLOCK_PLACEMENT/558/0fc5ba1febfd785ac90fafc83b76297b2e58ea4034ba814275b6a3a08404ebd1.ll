; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @QDLDL_etree(i64 %n) {
entry:
  br label %for.cond37

for.cond37:                                       ; preds = %for.body39, %entry
  %sumLnz.0 = phi i64 [ 0, %entry ], [ %add41, %for.body39 ]
  %i.0 = phi i64 [ 0, %entry ], [ %inc43, %for.body39 ]
  %cmp38 = icmp slt i64 %i.0, %n
  br i1 %cmp38, label %for.body39, label %for.end44

for.body39:                                       ; preds = %for.cond37
  %add41 = or i64 %sumLnz.0, %i.0
  %inc43 = add i64 %i.0, 1
  br label %for.cond37

for.end44:                                        ; preds = %for.cond37
  ret i64 %sumLnz.0
}

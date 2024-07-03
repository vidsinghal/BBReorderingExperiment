; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @hypre_LDUSolve(ptr %ldu, i32 %0, i1 %cmp170) {
entry:
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond169, %entry
  %i.0 = phi i32 [ %0, %entry ], [ 0, %for.cond169 ]
  br label %for.cond85

for.cond85:                                       ; preds = %for.body88, %for.cond76
  %i.1 = phi i32 [ %i.0, %for.cond76 ], [ %inc112, %for.body88 ]
  %cmp86 = icmp slt i32 %i.1, 0
  br i1 %cmp86, label %for.body88, label %for.end113

for.body88:                                       ; preds = %for.cond85
  %call104 = call i32 @hypre_MPI_Irecv()
  %inc112 = add i32 %i.1, 1
  br label %for.cond85

for.end113:                                       ; preds = %for.cond85
  %cmp115 = icmp slt i32 %i.0, 0
  br i1 %cmp115, label %for.body117, label %for.cond169

for.body117:                                      ; preds = %for.end113
  ret void

for.cond169:                                      ; preds = %for.cond169, %for.end113
  br i1 %cmp170, label %for.cond169, label %for.cond76
}

declare i32 @hypre_MPI_Irecv()

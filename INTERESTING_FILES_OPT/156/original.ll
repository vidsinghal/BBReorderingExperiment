; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//156/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @hypre_LDUSolve(ptr nocapture readnone %ldu, i32 %0, i1 %cmp170) local_unnamed_addr {
entry:
  %cmp170.fr = freeze i1 %cmp170
  br i1 %cmp170.fr, label %for.cond76.us, label %for.cond76

for.cond76.us:                                    ; preds = %entry
  %cmp861.us = icmp slt i32 %0, 0
  br i1 %cmp861.us, label %for.body88.us, label %for.cond169.preheader

for.end113.us:                                    ; preds = %for.body88.us
  br i1 %cmp861.us, label %for.body117, label %for.cond169.preheader

for.cond169.preheader:                            ; preds = %for.cond76.us, %for.end113.us
  br label %for.cond169

for.body88.us:                                    ; preds = %for.cond76.us, %for.body88.us
  %i.12.us = phi i32 [ %inc112.us, %for.body88.us ], [ %0, %for.cond76.us ]
  %call104.us = tail call i32 @hypre_MPI_Irecv()
  %inc112.us = add i32 %i.12.us, 1
  %exitcond3.not = icmp eq i32 %inc112.us, 0
  br i1 %exitcond3.not, label %for.end113.us, label %for.body88.us

for.cond76:                                       ; preds = %entry, %for.cond76.backedge
  %i.0 = phi i32 [ 0, %for.cond76.backedge ], [ %0, %entry ]
  %cmp861 = icmp slt i32 %i.0, 0
  br i1 %cmp861, label %for.body88, label %for.cond76.backedge

for.body88:                                       ; preds = %for.cond76, %for.body88
  %i.12 = phi i32 [ %inc112, %for.body88 ], [ %i.0, %for.cond76 ]
  %call104 = tail call i32 @hypre_MPI_Irecv()
  %inc112 = add i32 %i.12, 1
  %exitcond.not = icmp eq i32 %inc112, 0
  br i1 %exitcond.not, label %for.end113, label %for.body88

for.end113:                                       ; preds = %for.body88
  br i1 %cmp861, label %for.body117, label %for.cond76.backedge

for.cond76.backedge:                              ; preds = %for.end113, %for.cond76
  br label %for.cond76

for.body117:                                      ; preds = %for.end113, %for.end113.us
  ret void

for.cond169:                                      ; preds = %for.cond169.preheader, %for.cond169
  br label %for.cond169
}

declare i32 @hypre_MPI_Irecv() local_unnamed_addr

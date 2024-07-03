; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//282/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef double @zlanhe_(i32 %0, i1 %cmp5) local_unnamed_addr #0 {
entry:
  br i1 %cmp5, label %for.cond6.preheader.lr.ph, label %if.end280

for.cond6.preheader.lr.ph:                        ; preds = %entry
  %add16 = or i32 %0, 1
  br label %for.cond6.preheader.us

for.cond6.preheader.us:                           ; preds = %for.cond6.preheader.us.backedge, %for.cond6.preheader.lr.ph
  %1 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %add16, %for.cond6.preheader.us.backedge ]
  %cmp7.not1.us = icmp slt i32 %1, 0
  br i1 %cmp7.not1.us, label %for.cond6.preheader.us.backedge, label %for.body8.us

for.cond6.preheader.us.backedge:                  ; preds = %for.body8.us, %for.cond6.preheader.us
  br label %for.cond6.preheader.us

for.body8.us:                                     ; preds = %for.cond6.preheader.us, %for.body8.us
  %2 = phi i32 [ %inc.us, %for.body8.us ], [ 0, %for.cond6.preheader.us ]
  %call10.us = tail call double @z_abs()
  %inc.us = add i32 %2, 1
  %cmp7.not.us = icmp sgt i32 %inc.us, %1
  br i1 %cmp7.not.us, label %for.cond6.preheader.us.backedge, label %for.body8.us

if.end280:                                        ; preds = %entry
  ret double 0.000000e+00
}

declare double @z_abs() local_unnamed_addr

attributes #0 = { "no-trapping-math"="true" }

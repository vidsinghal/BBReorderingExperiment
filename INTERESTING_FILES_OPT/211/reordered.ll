; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//211/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @BLAS_ctbsv_testgen(i32 %diag, i32 %n, ptr nocapture %alpha, i32 %alpha_flag, i1 %cmp134) local_unnamed_addr #0 {
entry:
  br i1 %cmp134, label %for.cond137.preheader.us.preheader, label %for.end165

for.cond137.preheader.us:                         ; preds = %for.cond137.preheader.us.preheader, %for.end154.us
  %0 = phi i32 [ %.pre, %for.cond137.preheader.us.preheader ], [ 0, %for.end154.us ]
  %cmp1381.us = icmp sgt i32 %0, %diag
  br i1 %cmp1381.us, label %for.body140.us.preheader, label %for.end154.us

for.end165:                                       ; preds = %entry
  ret void

for.cond137.preheader.us.preheader:               ; preds = %entry
  %.pre = load i32, ptr %alpha, align 4
  %cmp138.us = icmp slt i32 %diag, 0
  br label %for.cond137.preheader.us

for.body140.us:                                   ; preds = %for.body140.us.preheader, %for.body140.us
  br i1 %cmp138.us, label %for.body140.us, label %for.end154.us

for.body140.us.preheader:                         ; preds = %for.cond137.preheader.us
  store float 0.000000e+00, ptr %alpha, align 4
  br label %for.body140.us

for.end154.us:                                    ; preds = %for.body140.us, %for.cond137.preheader.us
  store float 0.000000e+00, ptr %alpha, align 4
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond137.preheader.us
}

attributes #0 = { nofree norecurse nounwind }

; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//405/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none)
define noundef i32 @unur_test_quartiles() local_unnamed_addr #0 {
entry:
  %h1 = alloca [5 x double], align 16
  br label %for.cond48.outer

if.then58:                                        ; preds = %for.cond48
  %idxprom67 = sext i32 %j.0 to i64
  %arrayidx68 = getelementptr [5 x double], ptr %h1, i64 0, i64 %idxprom67
  store double 0.000000e+00, ptr %arrayidx68, align 8
  %.pre.pre = load double, ptr %h1, align 16
  br label %for.cond48.outer

for.cond48:                                       ; preds = %for.cond48.outer, %for.cond48.for.inc_crit_edge
  %j.0 = phi i32 [ %.pre3, %for.cond48.for.inc_crit_edge ], [ 0, %for.cond48.outer ]
  br i1 %cmp56, label %if.then58, label %for.cond48.for.inc_crit_edge

for.cond48.for.inc_crit_edge:                     ; preds = %for.cond48
  %.pre3 = add i32 %j.0, 1
  br label %for.cond48

for.cond48.outer:                                 ; preds = %if.then58, %entry
  %.pre1.ph = phi double [ %.pre.pre, %if.then58 ], [ 1.000000e+00, %entry ]
  %cmp56 = fcmp ogt double %.pre1.ph, 0.000000e+00
  br label %for.cond48
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) }

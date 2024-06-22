; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//92/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef double @cephes_gammasgn(double %x, ptr nocapture writeonly %retval, i1 %tobool.not) local_unnamed_addr #0 {
entry:
  %cmp2 = fcmp une double %x, 0.000000e+00
  %or.cond = select i1 %cmp2, i1 %tobool.not, i1 false
  br i1 %or.cond, label %common.ret, label %if.then5

common.ret:                                       ; preds = %if.then5, %entry
  ret double 0.000000e+00

if.then5:                                         ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }

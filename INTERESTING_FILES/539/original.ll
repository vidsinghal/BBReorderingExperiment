; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//539/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @cs_di_ltsolve(ptr writeonly %L, i1 %cmp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ne ptr %L, null
  %brmerge.not = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %brmerge.not, label %for.cond6.preheader, label %if.then

for.cond6.preheader:                              ; preds = %entry
  store double 1.000000e+00, ptr %L, align 8
  br label %for.cond6

if.then:                                          ; preds = %entry
  ret i32 0

for.cond6:                                        ; preds = %for.cond6.preheader, %for.cond6
  br label %for.cond6
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }

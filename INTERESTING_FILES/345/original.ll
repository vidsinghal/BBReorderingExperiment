; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//345/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @hypre_partition1D(i64 %n, i64 %p, ptr nocapture writeonly %s, i1 %cmp1) local_unnamed_addr #0 {
entry:
  br i1 %cmp1, label %if.end12, label %if.else

if.else:                                          ; preds = %entry
  %div = sdiv i64 %n, %p
  %mul10 = mul i64 %div, %n
  br label %if.end12

if.end12:                                         ; preds = %if.else, %entry
  %storemerge = phi i64 [ %mul10, %if.else ], [ 0, %entry ]
  store i64 %storemerge, ptr %s, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "target-cpu"="x86-64" }

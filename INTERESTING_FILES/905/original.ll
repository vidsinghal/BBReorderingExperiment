; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//905/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i64 @x64_mulmod(i64 %m, ptr nocapture readonly %hi) local_unnamed_addr #0 {
entry:
  %and = and i64 %m, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %cleanup

if.else:                                          ; preds = %entry
  %0 = load i64, ptr %hi, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry
  %retval.0 = phi i64 [ %0, %if.else ], [ 1, %entry ]
  ret i64 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }

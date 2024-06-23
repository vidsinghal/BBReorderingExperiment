; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//449/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i64 @SLIP_matrix_nnz(ptr readonly %A, i1 %call) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq ptr %A, null
  %or.cond = or i1 %cmp, %call
  br i1 %or.cond, label %return, label %sw.bb7

sw.bb7:                                           ; preds = %entry
  %0 = load i64, ptr %A, align 8
  br label %return

return:                                           ; preds = %sw.bb7, %entry
  %retval.0 = phi i64 [ %0, %sw.bb7 ], [ 0, %entry ]
  ret i64 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }

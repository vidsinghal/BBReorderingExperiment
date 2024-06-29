; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//2/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @ossl_blake2s_update(ptr nocapture writeonly %c, i64 %datalen) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64 %datalen, 0
  br i1 %cmp.not, label %if.end15, label %common.ret

common.ret:                                       ; preds = %if.end15, %entry
  ret i32 0

if.end15:                                         ; preds = %entry
  store i64 0, ptr %c, align 8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }

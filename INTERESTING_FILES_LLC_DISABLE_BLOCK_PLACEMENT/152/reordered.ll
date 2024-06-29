; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//152/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @_pcre2_script_run_8(ptr nocapture writeonly %ptr, i32 %utf, i1 %tobool) local_unnamed_addr #0 {
entry:
  %cmp1.not = icmp ne i32 %utf, 0
  %brmerge.not = select i1 %cmp1.not, i1 %tobool, i1 false
  br i1 %brmerge.not, label %if.then105, label %common.ret

if.then105:                                       ; preds = %entry
  store i32 1, ptr %ptr, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.then105, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }

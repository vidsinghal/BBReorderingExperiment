; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//372/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noalias noundef ptr @dav_dbm_open_direct(ptr nocapture writeonly %pdb) local_unnamed_addr #0 {
entry:
  store ptr null, ptr %pdb, align 8
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @dav_fs_dbm_error(i32 %status, i1 %cmp1) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %status, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  ret ptr null

if.else:                                          ; preds = %entry
  %call = load volatile ptr, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn }

; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//425/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define i64 @ZSTDMT_toFlushNow(ptr nocapture readonly %mtctx, i1 %cmp, ptr nocapture readonly %0) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %cond.end5, %entry
  %retval.0 = phi i64 [ %sub, %cond.end5 ], [ 0, %entry ]
  ret i64 %retval.0

cond.false4:                                      ; preds = %if.end
  %1 = load i64, ptr %0, align 8
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %if.end
  %cond6 = phi i64 [ %1, %cond.false4 ], [ 0, %if.end ]
  %sub = or i64 %cond6, %cond
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %mtctx, align 8
  %cmp.i = icmp ult i64 %2, 2
  %cond = zext i1 %cmp.i to i64
  br i1 %cmp.i, label %cond.false4, label %cond.end5
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i64 @ZSTDMT_initCStream_internal(i1 %cmp16) local_unnamed_addr #1 {
entry:
  %call14 = load volatile i32, ptr null, align 4294967296
  br i1 %cmp16, label %if.then18, label %if.end24

if.end24:                                         ; preds = %if.then18, %entry
  ret i64 0

if.then18:                                        ; preds = %entry
  %call19 = load volatile i32, ptr null, align 4294967296
  br label %if.end24
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn }

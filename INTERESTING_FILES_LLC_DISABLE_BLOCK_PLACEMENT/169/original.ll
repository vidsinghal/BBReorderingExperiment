; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//169/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s2n_debug_str = external thread_local local_unnamed_addr global ptr

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define range(i32 0, 2) i32 @s2n_server_cookie_recv(i1 %cmp.not, i1 %call8) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %common.ret.sink.split, label %do.body7

do.body7:                                         ; preds = %entry
  %call82 = load volatile i1, ptr null, align 4294967296
  br i1 %call8, label %common.ret, label %common.ret.sink.split

common.ret.sink.split:                            ; preds = %entry, %do.body7
  %common.ret.op.ph = phi i32 [ 0, %do.body7 ], [ 1, %entry ]
  %0 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @s2n_debug_str)
  store ptr null, ptr %0, align 8
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %do.body7
  %common.ret.op = phi i32 [ 0, %do.body7 ], [ %common.ret.op.ph, %common.ret.sink.split ]
  ret i32 %common.ret.op
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

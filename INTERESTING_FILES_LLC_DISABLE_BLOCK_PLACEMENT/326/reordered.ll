; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//326/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define noundef i32 @ossl_sha3_update(ptr nocapture %ctx, i64 %len, i1 %cmp, i1 %cmp1.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %common.ret.sink.split, %entry
  ret i32 0

common.ret.sink.split:                            ; preds = %if.then2, %if.end16
  %.sink = phi i64 [ 0, %if.end16 ], [ %add, %if.then2 ]
  store i64 %.sink, ptr %ctx, align 8
  br label %common.ret

if.end:                                           ; preds = %entry
  br i1 %cmp1.not, label %if.end16, label %if.then2

if.then2:                                         ; preds = %if.end
  %add = or i64 %len, 1
  br label %common.ret.sink.split

if.end16:                                         ; preds = %if.end
  tail call void @llvm.memcpy.p0.p0.i64(ptr null, ptr align 1 %ctx, i64 %len, i1 false)
  br label %common.ret.sink.split
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

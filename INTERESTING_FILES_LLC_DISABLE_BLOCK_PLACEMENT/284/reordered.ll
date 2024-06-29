; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//284/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define void @fxdiv_init_size_t(ptr nocapture writeonly %agg.result, i64 %d) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq i64 %d, 0
  br i1 %cmp.i, label %fxdiv_init_uint64_t.exit, label %if.else.i

fxdiv_init_uint64_t.exit:                         ; preds = %entry, %if.else.i
  store i64 0, ptr %agg.result, align 8
  ret void

if.else.i:                                        ; preds = %entry
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %fxdiv_init_uint64_t.exit
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define void @fxdiv_init_uint64_t(i64 %d) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %d, 0
  br i1 %cmp, label %common.ret, label %if.else

if.else:                                          ; preds = %entry
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %common.ret

common.ret:                                       ; preds = %if.else, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

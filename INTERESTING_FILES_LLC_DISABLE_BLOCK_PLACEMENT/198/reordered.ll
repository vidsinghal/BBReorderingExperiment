; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//198/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i16 @rd_kafka_broker_ApiVersion_supported(ptr nocapture readonly %rkb, ptr readnone %0) local_unnamed_addr {
entry:
  %call.i = tail call i32 %rkb(ptr null, ptr null)
  %cmp1.i = icmp slt i32 %call.i, 0
  %tobool9.not1 = icmp eq ptr %0, null
  %tobool9.not = select i1 %cmp1.i, i1 true, i1 %tobool9.not1
  br i1 %tobool9.not, label %cleanup, label %if.then10

cleanup:                                          ; preds = %if.then10, %entry
  ret i16 0

if.then10:                                        ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull dereferenceable(6) null, ptr noundef nonnull align 1 dereferenceable(6) %rkb, i64 6, i1 false)
  br label %cleanup
}

define ptr @bsearch(ptr readnone %__base, ptr nocapture readonly %__compar) local_unnamed_addr {
entry:
  %call = tail call i32 %__compar(ptr null, ptr null)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, ptr null, ptr %__base
  ret ptr %spec.select
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

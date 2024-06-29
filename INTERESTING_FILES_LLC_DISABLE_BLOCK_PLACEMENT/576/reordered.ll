; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//576/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @aws_event_loop_new_default_with_options(i1 %tobool.not) local_unnamed_addr {
entry:
  br i1 %tobool.not, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %call123 = tail call ptr @aws_mem_calloc()
  store volatile i32 0, ptr null, align 4294967296
  %task_pre_queue = getelementptr i8, ptr %call123, i64 312
  %prev4.i = getelementptr i8, ptr %call123, i64 336
  store ptr null, ptr %prev4.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 8 dereferenceable(16) %task_pre_queue, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %call123, ptr noundef nonnull dereferenceable(40) null, i64 40, i1 false)
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null
}

declare ptr @aws_mem_calloc() local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @aws_linked_list_init(ptr nocapture writeonly %list) local_unnamed_addr #1 {
entry:
  %prev4 = getelementptr i8, ptr %list, i64 24
  store ptr null, ptr %prev4, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %list, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//447/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @FLA_Sylv_nh_blk_var1(ptr nocapture %isgn, i1 %cmp.not) local_unnamed_addr {
entry:
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %entry
  ret i32 0

while.body:                                       ; preds = %entry
  %call6 = tail call i32 @FLA_Repart_2x2_to_3x3()
  %call10 = load volatile i32, ptr null, align 4294967296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %isgn, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  %0 = load ptr, ptr %isgn, align 8
  %call22 = tail call i32 @FLA_Sylv_internal(ptr %0)
  unreachable
}

declare i32 @FLA_Repart_2x2_to_3x3() local_unnamed_addr

declare i32 @FLA_Sylv_internal(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

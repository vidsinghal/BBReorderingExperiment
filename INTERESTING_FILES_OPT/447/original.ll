; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//447/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @FLA_Sylv_nh_blk_var1(ptr nocapture writeonly %B, ptr nocapture readnone %C, ptr %cntl, i1 %cmp11, i1 %cmp16) local_unnamed_addr #0 {
entry:
  %sub_gemm3 = getelementptr i8, ptr %cntl, i64 56
  %cmp16.fr = freeze i1 %cmp16
  br i1 %cmp16.fr, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp11, label %while.cond.us.us, label %while.cond.us

while.cond.us.us:                                 ; preds = %entry.split.us, %while.cond.us.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %B, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  %call12.us.us = tail call i32 @FLA_Gemm_internal(ptr null)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %B, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  %call20.us.us = tail call i32 @FLA_Gemm_internal(ptr %sub_gemm3)
  br label %while.cond.us.us

while.cond.us:                                    ; preds = %entry.split.us, %while.cond.us
  %call12.us = tail call i32 @FLA_Gemm_internal(ptr null)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %B, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  %call20.us = tail call i32 @FLA_Gemm_internal(ptr %sub_gemm3)
  br label %while.cond.us

entry.split:                                      ; preds = %entry
  br i1 %cmp11, label %while.cond.us1, label %while.cond

while.cond.us1:                                   ; preds = %entry.split, %while.cond.us1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %B, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  %call12.us4 = tail call i32 @FLA_Gemm_internal(ptr null)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %B, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  %call20.us5 = tail call i32 @FLA_Gemm_internal(ptr %sub_gemm3)
  br label %while.cond.us1

while.cond:                                       ; preds = %entry.split, %while.cond
  %call12 = tail call i32 @FLA_Gemm_internal(ptr null)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %B, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  %call20 = tail call i32 @FLA_Gemm_internal(ptr %sub_gemm3)
  br label %while.cond
}

declare i32 @FLA_Gemm_internal(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

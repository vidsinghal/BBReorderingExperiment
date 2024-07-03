; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fla_sylv_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

define i32 @FLA_Sylv_nh_blk_var1(ptr %B, ptr %C, ptr %cntl, i1 %cmp11, i1 %cmp16) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cond.end19, %entry
  br i1 %cmp11, label %cond.true, label %cond.end

cond.true:                                        ; preds = %while.cond
  call void @llvm.memcpy.p0.p0.i64(ptr %B, ptr null, i64 56, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %while.cond, %cond.true
  %call12 = call i32 @FLA_Gemm_internal(ptr null)
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end
  call void @llvm.memcpy.p0.p0.i64(ptr %B, ptr null, i64 56, i1 false)
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  call void @llvm.memcpy.p0.p0.i64(ptr %B, ptr null, i64 56, i1 false)
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %sub_gemm3 = getelementptr %struct.fla_sylv_s, ptr %cntl, i32 0, i32 8
  %call20 = call i32 @FLA_Gemm_internal(ptr %sub_gemm3)
  br label %while.cond
}

declare i32 @FLA_Part_2x2()

declare i32 @FLA_Repart_2x2_to_3x3()

declare i32 @FLA_Gemm_internal(ptr)

declare i32 @FLA_Sylv_internal()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

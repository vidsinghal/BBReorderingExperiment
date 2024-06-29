; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Sylv_nh_blk_var1(ptr %isgn, i1 %cmp.not) {
entry:
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %entry
  %call6 = call i32 @FLA_Repart_2x2_to_3x3()
  %call10 = load volatile i32, ptr null, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr %isgn, ptr null, i64 56, i1 false)
  %0 = load ptr, ptr %isgn, align 8
  %call22 = call i32 @FLA_Sylv_internal(ptr %0)
  unreachable

while.end:                                        ; preds = %entry
  ret i32 0
}

declare i32 @FLA_Repart_2x2_to_3x3()

declare i32 @FLA_Sylv_internal(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

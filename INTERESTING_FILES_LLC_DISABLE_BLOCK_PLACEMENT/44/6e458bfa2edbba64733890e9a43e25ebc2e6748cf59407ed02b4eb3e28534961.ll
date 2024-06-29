; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define i32 @FLA_Apply_G_rf_blk_var6(ptr %G, i32 %call, i1 %cond, i32 %conv, i32 %conv5, i32 %conv9, i32 %conv11, i32 %conv47) #0 {
entry:
  %call13 = call i64 @FLA_Obj_width(ptr byval(%struct.FLA_Obj_view) null)
  %call44 = call i64 @FLA_Obj_width(ptr byval(%struct.FLA_Obj_view) null)
  %call65 = call i64 @FLA_Obj_row_stride(ptr byval(%struct.FLA_Obj_view) null)
  %call107 = call i64 @FLA_Obj_row_stride(ptr null)
  br i1 %cond, label %common.ret, label %sw.bb

common.ret:                                       ; preds = %sw.bb, %entry
  ret i32 0

sw.bb:                                            ; preds = %entry
  %call48 = call i32 @FLA_Apply_G_rf_bls_var6(i32 %conv, i32 %conv5, ptr %G, i32 %call, i32 %conv9, i32 %conv11, i32 %conv47)
  br label %common.ret
}

declare i64 @FLA_Obj_width(ptr)

declare i64 @FLA_Obj_row_stride(ptr)

define i32 @FLA_Apply_G_rf_bls_var6(i32 %k_G, i32 %n_A, ptr %buff_G, i32 %rs_G, i32 %cs_G, i32 %rs_A, i32 %b_alg) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call = call i32 @FLA_Apply_G_rf_ass_var6(i32 %k_G, i32 %b_alg, i32 %n_A, ptr %buff_G, i32 %rs_G, i32 %cs_G, i32 %rs_A)
  br label %for.cond
}

declare i32 @FLA_Apply_G_rf_ass_var6(i32, i32, i32, ptr, i32, i32, i32)

attributes #0 = { "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

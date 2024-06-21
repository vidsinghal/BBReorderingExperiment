; ModuleID = 'samples/841.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/deprecated/ex_get_partial_elem_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_partial_elem_var(i32 noundef %exoid, i32 noundef %time_step, i32 noundef %elem_var_index, i64 noundef %elem_blk_id, i64 noundef %num_elem_this_blk, i64 noundef %start_elem_num, i64 noundef %num_elem, ptr noundef %elem_var_vals) #0 {
entry:
  %exoid.addr = alloca i32, align 4
  %time_step.addr = alloca i32, align 4
  %elem_var_index.addr = alloca i32, align 4
  %elem_blk_id.addr = alloca i64, align 8
  %num_elem_this_blk.addr = alloca i64, align 8
  %start_elem_num.addr = alloca i64, align 8
  %num_elem.addr = alloca i64, align 8
  %elem_var_vals.addr = alloca ptr, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %time_step, ptr %time_step.addr, align 4, !tbaa !4
  store i32 %elem_var_index, ptr %elem_var_index.addr, align 4, !tbaa !4
  store i64 %elem_blk_id, ptr %elem_blk_id.addr, align 8, !tbaa !8
  store i64 %num_elem_this_blk, ptr %num_elem_this_blk.addr, align 8, !tbaa !8
  store i64 %start_elem_num, ptr %start_elem_num.addr, align 8, !tbaa !8
  store i64 %num_elem, ptr %num_elem.addr, align 8, !tbaa !8
  store ptr %elem_var_vals, ptr %elem_var_vals.addr, align 8, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %num_elem_this_blk.addr, align 8, !tbaa !8
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %2 = load i32, ptr %time_step.addr, align 4, !tbaa !4
  %3 = load i32, ptr %elem_var_index.addr, align 4, !tbaa !4
  %4 = load i64, ptr %elem_blk_id.addr, align 8, !tbaa !8
  %5 = load i64, ptr %start_elem_num.addr, align 8, !tbaa !8
  %6 = load i64, ptr %num_elem.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %elem_var_vals.addr, align 8, !tbaa !10
  %call = call i32 @vtkexodusII_ex_get_partial_var(i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7)
  ret i32 %call
}

declare i32 @vtkexodusII_ex_get_partial_var(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}

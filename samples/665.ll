; ModuleID = 'samples/665.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/exodusII/vtkexodusII/expnstt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @vtk_exodus_ex_put_nset_var_tab(i32 noundef %exoid, i32 noundef %num_nset, i32 noundef %num_nset_var, ptr noundef %nset_var_tab) #0 {
entry:
  %exoid.addr = alloca i32, align 4
  %num_nset.addr = alloca i32, align 4
  %num_nset_var.addr = alloca i32, align 4
  %nset_var_tab.addr = alloca ptr, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %num_nset, ptr %num_nset.addr, align 4, !tbaa !4
  store i32 %num_nset_var, ptr %num_nset_var.addr, align 4, !tbaa !4
  store ptr %nset_var_tab, ptr %nset_var_tab.addr, align 8, !tbaa !8
  %0 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %1 = load i32, ptr %num_nset.addr, align 4, !tbaa !4
  %2 = load i32, ptr %num_nset_var.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %nset_var_tab.addr, align 8, !tbaa !8
  %call = call i32 @vtk_exodus_ex_put_truth_table(i32 noundef %0, i32 noundef 2, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @vtk_exodus_ex_put_truth_table(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

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
!9 = !{!"any pointer", !6, i64 0}

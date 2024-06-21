; ModuleID = 'samples/353.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/deprecated/ex_get_n_one_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_n_one_attr(i32 noundef %exoid, i32 noundef %obj_type, i64 noundef %obj_id, i64 noundef %start_num, i64 noundef %num_ent, i32 noundef %attrib_index, ptr noundef %attrib) #0 {
entry:
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %obj_id.addr = alloca i64, align 8
  %start_num.addr = alloca i64, align 8
  %num_ent.addr = alloca i64, align 8
  %attrib_index.addr = alloca i32, align 4
  %attrib.addr = alloca ptr, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store i64 %obj_id, ptr %obj_id.addr, align 8, !tbaa !9
  store i64 %start_num, ptr %start_num.addr, align 8, !tbaa !9
  store i64 %num_ent, ptr %num_ent.addr, align 8, !tbaa !9
  store i32 %attrib_index, ptr %attrib_index.addr, align 4, !tbaa !4
  store ptr %attrib, ptr %attrib.addr, align 8, !tbaa !11
  %0 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %1 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %2 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %3 = load i64, ptr %start_num.addr, align 8, !tbaa !9
  %4 = load i64, ptr %num_ent.addr, align 8, !tbaa !9
  %5 = load i32, ptr %attrib_index.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %attrib.addr, align 8, !tbaa !11
  %call = call i32 @vtkexodusII_ex_get_partial_one_attr(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6)
  ret i32 %call
}

declare i32 @vtkexodusII_ex_get_partial_one_attr(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #1

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}

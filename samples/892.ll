; ModuleID = 'samples/892.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/deprecated/ex_put_elem_attr_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_put_elem_attr_names(i32 noundef %exoid, i64 noundef %elem_blk_id, ptr noundef %names) #0 {
entry:
  %exoid.addr = alloca i32, align 4
  %elem_blk_id.addr = alloca i64, align 8
  %names.addr = alloca ptr, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i64 %elem_blk_id, ptr %elem_blk_id.addr, align 8, !tbaa !8
  store ptr %names, ptr %names.addr, align 8, !tbaa !10
  %0 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %1 = load i64, ptr %elem_blk_id.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %names.addr, align 8, !tbaa !10
  %call = call i32 @vtkexodusII_ex_put_attr_names(i32 noundef %0, i32 noundef 1, i64 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @vtkexodusII_ex_put_attr_names(i32 noundef, i32 noundef, i64 noundef, ptr noundef) #1

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

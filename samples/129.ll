; ModuleID = 'samples/129.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/exodusII/vtkexodusII/exgvan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @vtk_exodus_ex_get_var_names(i32 noundef %exoid, ptr noundef %var_type, i32 noundef %num_vars, ptr noundef %var_names) #0 {
entry:
  %exoid.addr = alloca i32, align 4
  %var_type.addr = alloca ptr, align 8
  %num_vars.addr = alloca i32, align 4
  %var_names.addr = alloca ptr, align 8
  %obj_type = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store ptr %var_type, ptr %var_type.addr, align 8, !tbaa !8
  store i32 %num_vars, ptr %num_vars.addr, align 4, !tbaa !4
  store ptr %var_names, ptr %var_names.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %obj_type) #3
  %0 = load ptr, ptr %var_type.addr, align 8, !tbaa !8
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %call = call i32 @vtk_exodus_ex_var_type_to_ex_entity_type(i8 noundef signext %1)
  store i32 %call, ptr %obj_type, align 4, !tbaa !10
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %3 = load i32, ptr %obj_type, align 4, !tbaa !10
  %4 = load i32, ptr %num_vars.addr, align 4, !tbaa !4
  %5 = load ptr, ptr %var_names.addr, align 8, !tbaa !8
  %call1 = call i32 @vtk_exodus_ex_get_variable_names(i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %obj_type) #3
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @vtk_exodus_ex_var_type_to_ex_entity_type(i8 noundef signext) #2

declare i32 @vtk_exodus_ex_get_variable_names(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = !{!6, !6, i64 0}

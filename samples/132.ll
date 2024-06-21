; ModuleID = 'samples/132.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/check/lapack/FLA_Bidiag_UT_form_U_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [200 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/check/lapack/FLA_Bidiag_UT_form_U_check.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FLA_Bidiag_UT_form_U_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U) #0 {
entry:
  %e_val = alloca i32, align 4
  %m_A = alloca i64, align 8
  %n_A = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %e_val) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_A) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_A) #3
  %call = call i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %e_val, align 4, !tbaa !4
  %0 = load i32, ptr %e_val, align 4, !tbaa !4
  %call1 = call i32 @FLA_Check_error_code_helper(i32 noundef %0, ptr noundef @.str, i32 noundef 19)
  %call2 = call i32 @FLA_Check_nonconstant_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call2, ptr %e_val, align 4, !tbaa !4
  %1 = load i32, ptr %e_val, align 4, !tbaa !4
  %call3 = call i32 @FLA_Check_error_code_helper(i32 noundef %1, ptr noundef @.str, i32 noundef 22)
  %call4 = call i32 @FLA_Check_identical_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  store i32 %call4, ptr %e_val, align 4, !tbaa !4
  %2 = load i32, ptr %e_val, align 4, !tbaa !4
  %call5 = call i32 @FLA_Check_error_code_helper(i32 noundef %2, ptr noundef @.str, i32 noundef 25)
  %call6 = call i32 @FLA_Check_identical_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  store i32 %call6, ptr %e_val, align 4, !tbaa !4
  %3 = load i32, ptr %e_val, align 4, !tbaa !4
  %call7 = call i32 @FLA_Check_error_code_helper(i32 noundef %3, ptr noundef @.str, i32 noundef 28)
  %call8 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call8, ptr %m_A, align 8, !tbaa !8
  %call9 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call9, ptr %n_A, align 8, !tbaa !8
  %4 = load i64, ptr %m_A, align 8, !tbaa !8
  %5 = load i64, ptr %n_A, align 8, !tbaa !8
  %cmp = icmp uge i64 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %n_A, align 8, !tbaa !8
  %call10 = call i32 @FLA_Check_object_width_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, i64 noundef %6)
  store i32 %call10, ptr %e_val, align 4, !tbaa !4
  %7 = load i32, ptr %e_val, align 4, !tbaa !4
  %call11 = call i32 @FLA_Check_error_code_helper(i32 noundef %7, ptr noundef @.str, i32 noundef 42)
  %8 = load i64, ptr %m_A, align 8, !tbaa !8
  %call12 = call i32 @FLA_Check_object_length_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, i64 noundef %8)
  store i32 %call12, ptr %e_val, align 4, !tbaa !4
  %9 = load i32, ptr %e_val, align 4, !tbaa !4
  %call13 = call i32 @FLA_Check_error_code_helper(i32 noundef %9, ptr noundef @.str, i32 noundef 45)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i64, ptr %m_A, align 8, !tbaa !8
  %call14 = call i32 @FLA_Check_object_width_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, i64 noundef %10)
  store i32 %call14, ptr %e_val, align 4, !tbaa !4
  %11 = load i32, ptr %e_val, align 4, !tbaa !4
  %call15 = call i32 @FLA_Check_error_code_helper(i32 noundef %11, ptr noundef @.str, i32 noundef 50)
  %12 = load i64, ptr %m_A, align 8, !tbaa !8
  %call16 = call i32 @FLA_Check_object_length_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, i64 noundef %12)
  store i32 %call16, ptr %e_val, align 4, !tbaa !4
  %13 = load i32, ptr %e_val, align 4, !tbaa !4
  %call17 = call i32 @FLA_Check_error_code_helper(i32 noundef %13, ptr noundef @.str, i32 noundef 53)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_A) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e_val) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Check_nonconstant_object(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Check_identical_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Check_object_width_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8, i64 noundef) #2

declare i32 @FLA_Check_object_length_equals(ptr noundef byval(%struct.FLA_Obj_view) align 8, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!9 = !{!"long", !6, i64 0}

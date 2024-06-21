; ModuleID = 'samples/794.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/check/blas/2/FLA_Trmvsx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [186 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/check/blas/2/FLA_Trmvsx_check.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trmvsx_check(i32 noundef %uplo, i32 noundef %transa, i32 noundef %diag, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %x, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %transa.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %diag, ptr %diag.addr, align 4
  %0 = load i32, ptr %uplo.addr, align 4
  %call = call i32 @FLA_Check_valid_uplo(i32 noundef %0)
  store i32 %call, ptr %e_val, align 4
  %1 = load i32, ptr %e_val, align 4
  %call1 = call i32 @FLA_Check_error_code_helper(i32 noundef %1, ptr noundef @.str, i32 noundef 18)
  %2 = load i32, ptr %transa.addr, align 4
  %call2 = call i32 @FLA_Check_valid_trans(i32 noundef %2)
  store i32 %call2, ptr %e_val, align 4
  %3 = load i32, ptr %e_val, align 4
  %call3 = call i32 @FLA_Check_error_code_helper(i32 noundef %3, ptr noundef @.str, i32 noundef 21)
  %4 = load i32, ptr %diag.addr, align 4
  %call4 = call i32 @FLA_Check_valid_diag(i32 noundef %4)
  store i32 %call4, ptr %e_val, align 4
  %5 = load i32, ptr %e_val, align 4
  %call5 = call i32 @FLA_Check_error_code_helper(i32 noundef %5, ptr noundef @.str, i32 noundef 24)
  %call6 = call i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call6, ptr %e_val, align 4
  %6 = load i32, ptr %e_val, align 4
  %call7 = call i32 @FLA_Check_error_code_helper(i32 noundef %6, ptr noundef @.str, i32 noundef 27)
  %call8 = call i32 @FLA_Check_nonconstant_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call8, ptr %e_val, align 4
  %7 = load i32, ptr %e_val, align 4
  %call9 = call i32 @FLA_Check_error_code_helper(i32 noundef %7, ptr noundef @.str, i32 noundef 30)
  %call10 = call i32 @FLA_Check_identical_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  store i32 %call10, ptr %e_val, align 4
  %8 = load i32, ptr %e_val, align 4
  %call11 = call i32 @FLA_Check_error_code_helper(i32 noundef %8, ptr noundef @.str, i32 noundef 33)
  %call12 = call i32 @FLA_Check_identical_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y)
  store i32 %call12, ptr %e_val, align 4
  %9 = load i32, ptr %e_val, align 4
  %call13 = call i32 @FLA_Check_error_code_helper(i32 noundef %9, ptr noundef @.str, i32 noundef 36)
  %call14 = call i32 @FLA_Check_consistent_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  store i32 %call14, ptr %e_val, align 4
  %10 = load i32, ptr %e_val, align 4
  %call15 = call i32 @FLA_Check_error_code_helper(i32 noundef %10, ptr noundef @.str, i32 noundef 39)
  %call16 = call i32 @FLA_Check_consistent_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta)
  store i32 %call16, ptr %e_val, align 4
  %11 = load i32, ptr %e_val, align 4
  %call17 = call i32 @FLA_Check_error_code_helper(i32 noundef %11, ptr noundef @.str, i32 noundef 42)
  %call18 = call i32 @FLA_Check_if_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  store i32 %call18, ptr %e_val, align 4
  %12 = load i32, ptr %e_val, align 4
  %call19 = call i32 @FLA_Check_error_code_helper(i32 noundef %12, ptr noundef @.str, i32 noundef 45)
  %call20 = call i32 @FLA_Check_if_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta)
  store i32 %call20, ptr %e_val, align 4
  %13 = load i32, ptr %e_val, align 4
  %call21 = call i32 @FLA_Check_error_code_helper(i32 noundef %13, ptr noundef @.str, i32 noundef 48)
  %call22 = call i32 @FLA_Check_square(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call22, ptr %e_val, align 4
  %14 = load i32, ptr %e_val, align 4
  %call23 = call i32 @FLA_Check_error_code_helper(i32 noundef %14, ptr noundef @.str, i32 noundef 51)
  %call24 = call i32 @FLA_Check_if_vector(ptr noundef byval(%struct.FLA_Obj_view) align 8 %x)
  store i32 %call24, ptr %e_val, align 4
  %15 = load i32, ptr %e_val, align 4
  %call25 = call i32 @FLA_Check_error_code_helper(i32 noundef %15, ptr noundef @.str, i32 noundef 54)
  %call26 = call i32 @FLA_Check_if_vector(ptr noundef byval(%struct.FLA_Obj_view) align 8 %y)
  store i32 %call26, ptr %e_val, align 4
  %16 = load i32, ptr %e_val, align 4
  %call27 = call i32 @FLA_Check_error_code_helper(i32 noundef %16, ptr noundef @.str, i32 noundef 57)
  %call28 = call i32 @FLA_Check_matrix_vector_dims(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %x, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y)
  store i32 %call28, ptr %e_val, align 4
  %17 = load i32, ptr %e_val, align 4
  %call29 = call i32 @FLA_Check_error_code_helper(i32 noundef %17, ptr noundef @.str, i32 noundef 60)
  ret i32 -1
}

declare i32 @FLA_Check_valid_uplo(i32 noundef) #1

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Check_valid_trans(i32 noundef) #1

declare i32 @FLA_Check_valid_diag(i32 noundef) #1

declare i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_nonconstant_object(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_identical_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_consistent_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_if_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_square(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_if_vector(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_matrix_vector_dims(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

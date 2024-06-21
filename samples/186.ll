; ModuleID = 'samples/186.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/check/blas/3/FLA_Syrk_internal_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [193 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/check/blas/3/FLA_Syrk_internal_check.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Syrk_internal_check(i32 noundef %uplo, i32 noundef %trans, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %cntl) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %cntl.addr = alloca ptr, align 8
  %e_val = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr %cntl.addr, align 8
  %call = call i32 @FLA_Check_null_pointer(ptr noundef %0)
  store i32 %call, ptr %e_val, align 4
  %1 = load i32, ptr %e_val, align 4
  %call1 = call i32 @FLA_Check_error_code_helper(i32 noundef %1, ptr noundef @.str, i32 noundef 19)
  %call2 = call i32 @FLA_Check_identical_object_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  store i32 %call2, ptr %e_val, align 4
  %2 = load i32, ptr %e_val, align 4
  %call3 = call i32 @FLA_Check_error_code_helper(i32 noundef %2, ptr noundef @.str, i32 noundef 23)
  %3 = load i32, ptr %trans.addr, align 4
  %cmp = icmp eq i32 %3, 400
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i32 @FLA_Check_matrix_matrix_dims(i32 noundef 400, i32 noundef 401, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  store i32 %call4, ptr %e_val, align 4
  %4 = load i32, ptr %e_val, align 4
  %call5 = call i32 @FLA_Check_error_code_helper(i32 noundef %4, ptr noundef @.str, i32 noundef 31)
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i32 @FLA_Check_matrix_matrix_dims(i32 noundef 401, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  store i32 %call6, ptr %e_val, align 4
  %5 = load i32, ptr %e_val, align 4
  %call7 = call i32 @FLA_Check_error_code_helper(i32 noundef %5, ptr noundef @.str, i32 noundef 36)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 -1
}

declare i32 @FLA_Check_null_pointer(ptr noundef) #1

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Check_identical_object_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_matrix_matrix_dims(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

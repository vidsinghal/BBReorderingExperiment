; ModuleID = 'samples/530.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/check/blas/1/FLA_Inv_scalc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [189 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/check/blas/1/FLA_Inv_scalc_check.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Inv_scalc_check(i32 noundef %conjalpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store i32 %conjalpha, ptr %conjalpha.addr, align 4
  %0 = load i32, ptr %conjalpha.addr, align 4
  %call = call i32 @FLA_Check_valid_conj(i32 noundef %0)
  store i32 %call, ptr %e_val, align 4
  %1 = load i32, ptr %e_val, align 4
  %call1 = call i32 @FLA_Check_error_code_helper(i32 noundef %1, ptr noundef @.str, i32 noundef 18)
  %call2 = call i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call2, ptr %e_val, align 4
  %2 = load i32, ptr %e_val, align 4
  %call3 = call i32 @FLA_Check_error_code_helper(i32 noundef %2, ptr noundef @.str, i32 noundef 21)
  %call4 = call i32 @FLA_Check_nonconstant_object(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call4, ptr %e_val, align 4
  %3 = load i32, ptr %e_val, align 4
  %call5 = call i32 @FLA_Check_error_code_helper(i32 noundef %3, ptr noundef @.str, i32 noundef 24)
  %call6 = call i32 @FLA_Obj_is_real(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call7 = call i32 @FLA_Check_consistent_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  store i32 %call7, ptr %e_val, align 4
  %4 = load i32, ptr %e_val, align 4
  %call8 = call i32 @FLA_Check_error_code_helper(i32 noundef %4, ptr noundef @.str, i32 noundef 29)
  br label %if.end

if.else:                                          ; preds = %entry
  %call9 = call i32 @FLA_Check_identical_object_precision(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  store i32 %call9, ptr %e_val, align 4
  %5 = load i32, ptr %e_val, align 4
  %call10 = call i32 @FLA_Check_error_code_helper(i32 noundef %5, ptr noundef @.str, i32 noundef 34)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call11 = call i32 @FLA_Check_if_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  store i32 %call11, ptr %e_val, align 4
  %6 = load i32, ptr %e_val, align 4
  %call12 = call i32 @FLA_Check_error_code_helper(i32 noundef %6, ptr noundef @.str, i32 noundef 38)
  %call13 = call i32 @FLA_Check_divide_by_zero(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  store i32 %call13, ptr %e_val, align 4
  %7 = load i32, ptr %e_val, align 4
  %call14 = call i32 @FLA_Check_error_code_helper(i32 noundef %7, ptr noundef @.str, i32 noundef 41)
  ret i32 -1
}

declare i32 @FLA_Check_valid_conj(i32 noundef) #1

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Check_floating_object(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_nonconstant_object(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_is_real(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_consistent_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_identical_object_precision(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_if_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Check_divide_by_zero(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

; ModuleID = 'samples/944.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/dec/lu/nopiv/front/flamec/FLASH_LU_nopiv_solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLASH_LU_nopiv_solve(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %X) #0 {
entry:
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @FLA_LU_nopiv_solve_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %X)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLASH_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %X)
  %call3 = call i32 @FLASH_Trsm(i32 noundef 210, i32 noundef 300, i32 noundef 400, i32 noundef 500, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %X)
  %call4 = call i32 @FLASH_Trsm(i32 noundef 210, i32 noundef 301, i32 noundef 400, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %X)
  ret i32 -1
}

declare i32 @FLA_Check_error_level() #1

declare i32 @FLA_LU_nopiv_solve_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLASH_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLASH_Trsm(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

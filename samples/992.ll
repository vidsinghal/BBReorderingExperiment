; ModuleID = 'samples/992.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/3/herk/front/flamec/FLASH_Herk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@flash_herk_cntl_mm = external global ptr, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLASH_Herk(i32 noundef %uplo, i32 noundef %trans, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %r_val = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %trans, ptr %trans.addr, align 4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %uplo.addr, align 4
  %1 = load i32, ptr %trans.addr, align 4
  %call1 = call i32 @FLA_Herk_check(i32 noundef %0, i32 noundef %1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @FLASH_Queue_begin()
  %2 = load i32, ptr %uplo.addr, align 4
  %3 = load i32, ptr %trans.addr, align 4
  %4 = load ptr, ptr @flash_herk_cntl_mm, align 8
  %call2 = call i32 @FLA_Herk_internal(i32 noundef %2, i32 noundef %3, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %4)
  store i32 %call2, ptr %r_val, align 4
  call void @FLASH_Queue_end()
  %5 = load i32, ptr %r_val, align 4
  ret i32 %5
}

declare i32 @FLA_Check_error_level() #1

declare i32 @FLA_Herk_check(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare void @FLASH_Queue_begin() #1

declare i32 @FLA_Herk_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare void @FLASH_Queue_end() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
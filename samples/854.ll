; ModuleID = 'samples/854.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/hierarchy/util/FLASH_Random_spd_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [195 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/hierarchy/util/FLASH_Random_spd_matrix.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLASH_Random_spd_matrix(i32 noundef %uplo, ptr noundef byval(%struct.FLA_Obj_view) align 8 %H) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %F = alloca %struct.FLA_Obj_view, align 8
  %e_val = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %uplo.addr, align 4
  %call1 = call i32 @FLA_Check_valid_uplo(i32 noundef %0)
  store i32 %call1, ptr %e_val, align 4
  %1 = load i32, ptr %e_val, align 4
  %call2 = call i32 @FLA_Check_error_code_helper(i32 noundef %1, ptr noundef @.str, i32 noundef 21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 @FLA_Obj_has_zero_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %H)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @FLASH_Obj_create_flat_copy_of_hier(ptr noundef byval(%struct.FLA_Obj_view) align 8 %H, ptr noundef %F)
  %2 = load i32, ptr %uplo.addr, align 4
  %call7 = call i32 @FLA_Random_spd_matrix(i32 noundef %2, ptr noundef byval(%struct.FLA_Obj_view) align 8 %F)
  %call8 = call i32 @FLASH_Obj_hierarchify(ptr noundef byval(%struct.FLA_Obj_view) align 8 %F, ptr noundef byval(%struct.FLA_Obj_view) align 8 %H)
  call void @FLASH_Obj_free(ptr noundef %F)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @FLA_Check_error_level() #1

declare i32 @FLA_Check_valid_uplo(i32 noundef) #1

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Obj_has_zero_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLASH_Obj_create_flat_copy_of_hier(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Random_spd_matrix(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLASH_Obj_hierarchify(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare void @FLASH_Obj_free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

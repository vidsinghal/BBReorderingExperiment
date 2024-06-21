; ModuleID = 'samples/99.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/wrappers/lapack/external/FLA_Ttmm_blk_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [203 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/wrappers/lapack/external/FLA_Ttmm_blk_external.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Ttmm_blk_external(i32 noundef %uplo, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %info = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 0, ptr %info, align 4
  %call = call i32 @FLA_Check_error_code_helper(i32 noundef -93, ptr noundef @.str, i32 noundef 86)
  %0 = load i32, ptr %info, align 4
  ret i32 %0
}

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Ttmm_l_blk_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %call = call i32 @FLA_Ttmm_blk_external(i32 noundef 300, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Ttmm_u_blk_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %call = call i32 @FLA_Ttmm_blk_external(i32 noundef 301, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  ret i32 %call
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

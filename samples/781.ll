; ModuleID = 'samples/781.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/wrappers/lapack/task/FLA_Apply_Q_UT_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@fla_apqut_cntl_leaf = external global ptr, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_task(i32 noundef %side, i32 noundef %trans, i32 noundef %direct, i32 noundef %storev, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %side.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %direct.addr = alloca i32, align 4
  %storev.addr = alloca i32, align 4
  %cntl.addr = alloca ptr, align 8
  store i32 %side, ptr %side.addr, align 4
  store i32 %trans, ptr %trans.addr, align 4
  store i32 %direct, ptr %direct.addr, align 4
  store i32 %storev, ptr %storev.addr, align 4
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load i32, ptr %side.addr, align 4
  %1 = load i32, ptr %trans.addr, align 4
  %2 = load i32, ptr %direct.addr, align 4
  %3 = load i32, ptr %storev.addr, align 4
  %4 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %4)
  ret i32 %call
}

declare i32 @FLA_Apply_Q_UT_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lhbc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 402, i32 noundef 801, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lhbr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 402, i32 noundef 801, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lhfc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 402, i32 noundef 800, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lhfr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 402, i32 noundef 800, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lnbc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 400, i32 noundef 801, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lnbr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 400, i32 noundef 801, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lnfc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 400, i32 noundef 800, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_lnfr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 400, i32 noundef 800, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rhbc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 402, i32 noundef 801, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rhbr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 402, i32 noundef 801, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rhfc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 402, i32 noundef 800, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rhfr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 402, i32 noundef 800, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rnbc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 400, i32 noundef 801, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rnbr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 400, i32 noundef 801, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rnfc_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 400, i32 noundef 800, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_rnfr_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %0 = load ptr, ptr @fla_apqut_cntl_leaf, align 8
  %call = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 400, i32 noundef 800, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %0)
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

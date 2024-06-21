; ModuleID = 'samples/744.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/control/init/blas/3/fla/FLA_Syr2k_cntl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fla_syr2k_cntl_blas = global ptr null, align 8
@fla_syr2k_cntl_ip = global ptr null, align 8
@fla_syr2k_cntl_op = global ptr null, align 8
@fla_syr2k_cntl_mm = global ptr null, align 8
@fla_syr2k_var3_bsize = global ptr null, align 8
@fla_syr2k_var9_bsize = global ptr null, align 8
@fla_scalr_cntl_blas = external global ptr, align 8
@fla_gemm_cntl_blas = external global ptr, align 8

; Function Attrs: noinline nounwind optnone uwtable
define void @FLA_Syr2k_cntl_init() #0 {
entry:
  %call = call ptr @FLA_Query_blocksizes(i32 noundef 603)
  store ptr %call, ptr @fla_syr2k_var3_bsize, align 8
  %call1 = call ptr @FLA_Query_blocksizes(i32 noundef 603)
  store ptr %call1, ptr @fla_syr2k_var9_bsize, align 8
  %call2 = call ptr @FLA_Cntl_syr2k_obj_create(i32 noundef 1000, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %call2, ptr @fla_syr2k_cntl_blas, align 8
  %0 = load ptr, ptr @fla_syr2k_var9_bsize, align 8
  %1 = load ptr, ptr @fla_scalr_cntl_blas, align 8
  %2 = load ptr, ptr @fla_syr2k_cntl_blas, align 8
  %call3 = call ptr @FLA_Cntl_syr2k_obj_create(i32 noundef 1000, i32 noundef 129, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
  store ptr %call3, ptr @fla_syr2k_cntl_ip, align 8
  %3 = load ptr, ptr @fla_syr2k_var3_bsize, align 8
  %4 = load ptr, ptr @fla_scalr_cntl_blas, align 8
  %5 = load ptr, ptr @fla_syr2k_cntl_blas, align 8
  %6 = load ptr, ptr @fla_gemm_cntl_blas, align 8
  %7 = load ptr, ptr @fla_gemm_cntl_blas, align 8
  %call4 = call ptr @FLA_Cntl_syr2k_obj_create(i32 noundef 1000, i32 noundef 123, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call4, ptr @fla_syr2k_cntl_op, align 8
  %8 = load ptr, ptr @fla_syr2k_var9_bsize, align 8
  %9 = load ptr, ptr @fla_scalr_cntl_blas, align 8
  %10 = load ptr, ptr @fla_syr2k_cntl_op, align 8
  %call5 = call ptr @FLA_Cntl_syr2k_obj_create(i32 noundef 1000, i32 noundef 129, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef null)
  store ptr %call5, ptr @fla_syr2k_cntl_mm, align 8
  ret void
}

declare ptr @FLA_Query_blocksizes(i32 noundef) #1

declare ptr @FLA_Cntl_syr2k_obj_create(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @FLA_Syr2k_cntl_finalize() #0 {
entry:
  %0 = load ptr, ptr @fla_syr2k_cntl_blas, align 8
  call void @FLA_Cntl_obj_free(ptr noundef %0)
  %1 = load ptr, ptr @fla_syr2k_cntl_ip, align 8
  call void @FLA_Cntl_obj_free(ptr noundef %1)
  %2 = load ptr, ptr @fla_syr2k_cntl_op, align 8
  call void @FLA_Cntl_obj_free(ptr noundef %2)
  %3 = load ptr, ptr @fla_syr2k_cntl_mm, align 8
  call void @FLA_Cntl_obj_free(ptr noundef %3)
  %4 = load ptr, ptr @fla_syr2k_var3_bsize, align 8
  call void @FLA_Blocksize_free(ptr noundef %4)
  %5 = load ptr, ptr @fla_syr2k_var9_bsize, align 8
  call void @FLA_Blocksize_free(ptr noundef %5)
  ret void
}

declare void @FLA_Cntl_obj_free(ptr noundef) #1

declare void @FLA_Blocksize_free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

; ModuleID = 'samples/398.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/control/FLA_Cntl_blas3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fla_gemm_s = type { i32, i32, ptr, ptr, ptr }
%struct.fla_hemm_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fla_herk_s = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.fla_her2k_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fla_symm_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fla_syrk_s = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.fla_syr2k_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fla_trmm_s = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.fla_trsm_s = type { i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_gemm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 32)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_gemm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_gemm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_gemm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scal.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scal4 = getelementptr inbounds %struct.fla_gemm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8
  %8 = load ptr, ptr %sub_gemm.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_gemm5 = getelementptr inbounds %struct.fla_gemm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_gemm5, align 8
  %10 = load ptr, ptr %cntl, align 8
  ret ptr %10
}

declare ptr @FLA_malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_hemm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_hemm, ptr noundef %sub_gemm1, ptr noundef %sub_gemm2) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_hemm.addr = alloca ptr, align 8
  %sub_gemm1.addr = alloca ptr, align 8
  %sub_gemm2.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8
  store ptr %sub_hemm, ptr %sub_hemm.addr, align 8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_hemm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_hemm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_hemm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scal.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scal4 = getelementptr inbounds %struct.fla_hemm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8
  %8 = load ptr, ptr %sub_hemm.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_hemm5 = getelementptr inbounds %struct.fla_hemm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_hemm5, align 8
  %10 = load ptr, ptr %sub_gemm1.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm16 = getelementptr inbounds %struct.fla_hemm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8
  %12 = load ptr, ptr %sub_gemm2.addr, align 8
  %13 = load ptr, ptr %cntl, align 8
  %sub_gemm27 = getelementptr inbounds %struct.fla_hemm_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8
  %14 = load ptr, ptr %cntl, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_herk_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scalr, ptr noundef %sub_herk, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scalr.addr = alloca ptr, align 8
  %sub_herk.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8
  store ptr %sub_herk, ptr %sub_herk.addr, align 8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_herk_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_herk_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_herk_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scalr.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scalr4 = getelementptr inbounds %struct.fla_herk_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8
  %8 = load ptr, ptr %sub_herk.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_herk5 = getelementptr inbounds %struct.fla_herk_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_herk5, align 8
  %10 = load ptr, ptr %sub_gemm.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm6 = getelementptr inbounds %struct.fla_herk_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8
  %12 = load ptr, ptr %cntl, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_her2k_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scalr, ptr noundef %sub_her2k, ptr noundef %sub_gemm1, ptr noundef %sub_gemm2) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scalr.addr = alloca ptr, align 8
  %sub_her2k.addr = alloca ptr, align 8
  %sub_gemm1.addr = alloca ptr, align 8
  %sub_gemm2.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8
  store ptr %sub_her2k, ptr %sub_her2k.addr, align 8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_her2k_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_her2k_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_her2k_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scalr.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scalr4 = getelementptr inbounds %struct.fla_her2k_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8
  %8 = load ptr, ptr %sub_her2k.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_her2k5 = getelementptr inbounds %struct.fla_her2k_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_her2k5, align 8
  %10 = load ptr, ptr %sub_gemm1.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm16 = getelementptr inbounds %struct.fla_her2k_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8
  %12 = load ptr, ptr %sub_gemm2.addr, align 8
  %13 = load ptr, ptr %cntl, align 8
  %sub_gemm27 = getelementptr inbounds %struct.fla_her2k_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8
  %14 = load ptr, ptr %cntl, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_symm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_symm, ptr noundef %sub_gemm1, ptr noundef %sub_gemm2) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_symm.addr = alloca ptr, align 8
  %sub_gemm1.addr = alloca ptr, align 8
  %sub_gemm2.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8
  store ptr %sub_symm, ptr %sub_symm.addr, align 8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_symm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_symm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_symm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scal.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scal4 = getelementptr inbounds %struct.fla_symm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8
  %8 = load ptr, ptr %sub_symm.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_symm5 = getelementptr inbounds %struct.fla_symm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_symm5, align 8
  %10 = load ptr, ptr %sub_gemm1.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm16 = getelementptr inbounds %struct.fla_symm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8
  %12 = load ptr, ptr %sub_gemm2.addr, align 8
  %13 = load ptr, ptr %cntl, align 8
  %sub_gemm27 = getelementptr inbounds %struct.fla_symm_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8
  %14 = load ptr, ptr %cntl, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_syrk_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scalr, ptr noundef %sub_syrk, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scalr.addr = alloca ptr, align 8
  %sub_syrk.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8
  store ptr %sub_syrk, ptr %sub_syrk.addr, align 8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_syrk_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_syrk_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_syrk_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scalr.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scalr4 = getelementptr inbounds %struct.fla_syrk_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8
  %8 = load ptr, ptr %sub_syrk.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_syrk5 = getelementptr inbounds %struct.fla_syrk_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_syrk5, align 8
  %10 = load ptr, ptr %sub_gemm.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm6 = getelementptr inbounds %struct.fla_syrk_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8
  %12 = load ptr, ptr %cntl, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_syr2k_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scalr, ptr noundef %sub_syr2k, ptr noundef %sub_gemm1, ptr noundef %sub_gemm2) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scalr.addr = alloca ptr, align 8
  %sub_syr2k.addr = alloca ptr, align 8
  %sub_gemm1.addr = alloca ptr, align 8
  %sub_gemm2.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8
  store ptr %sub_syr2k, ptr %sub_syr2k.addr, align 8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_syr2k_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_syr2k_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_syr2k_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scalr.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scalr4 = getelementptr inbounds %struct.fla_syr2k_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8
  %8 = load ptr, ptr %sub_syr2k.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_syr2k5 = getelementptr inbounds %struct.fla_syr2k_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_syr2k5, align 8
  %10 = load ptr, ptr %sub_gemm1.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm16 = getelementptr inbounds %struct.fla_syr2k_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8
  %12 = load ptr, ptr %sub_gemm2.addr, align 8
  %13 = load ptr, ptr %cntl, align 8
  %sub_gemm27 = getelementptr inbounds %struct.fla_syr2k_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8
  %14 = load ptr, ptr %cntl, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_trmm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_trmm, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_trmm.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8
  store ptr %sub_trmm, ptr %sub_trmm.addr, align 8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_trmm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_trmm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_trmm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scal.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scal4 = getelementptr inbounds %struct.fla_trmm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8
  %8 = load ptr, ptr %sub_trmm.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_trmm5 = getelementptr inbounds %struct.fla_trmm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_trmm5, align 8
  %10 = load ptr, ptr %sub_gemm.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm6 = getelementptr inbounds %struct.fla_trmm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8
  %12 = load ptr, ptr %cntl, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @FLA_Cntl_trsm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_trsm, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_trsm.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4
  store i32 %variant, ptr %variant.addr, align 4
  store ptr %blocksize, ptr %blocksize.addr, align 8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8
  store ptr %sub_trsm, ptr %sub_trsm.addr, align 8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8
  %0 = load i32, ptr %matrix_type.addr, align 4
  %1 = load ptr, ptr %cntl, align 8
  %matrix_type1 = getelementptr inbounds %struct.fla_trsm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8
  %2 = load i32, ptr %variant.addr, align 4
  %3 = load ptr, ptr %cntl, align 8
  %variant2 = getelementptr inbounds %struct.fla_trsm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4
  %4 = load ptr, ptr %blocksize.addr, align 8
  %5 = load ptr, ptr %cntl, align 8
  %blocksize3 = getelementptr inbounds %struct.fla_trsm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8
  %6 = load ptr, ptr %sub_scal.addr, align 8
  %7 = load ptr, ptr %cntl, align 8
  %sub_scal4 = getelementptr inbounds %struct.fla_trsm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8
  %8 = load ptr, ptr %sub_trsm.addr, align 8
  %9 = load ptr, ptr %cntl, align 8
  %sub_trsm5 = getelementptr inbounds %struct.fla_trsm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_trsm5, align 8
  %10 = load ptr, ptr %sub_gemm.addr, align 8
  %11 = load ptr, ptr %cntl, align 8
  %sub_gemm6 = getelementptr inbounds %struct.fla_trsm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8
  %12 = load ptr, ptr %cntl, align 8
  ret ptr %12
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

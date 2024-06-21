; ModuleID = 'samples/366.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/control/FLA_Cntl_blas3.c"
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

; Function Attrs: nounwind uwtable
define ptr @FLA_Cntl_gemm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8, !tbaa !8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 32)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_gemm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !10
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_gemm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !12
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_gemm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !13
  %6 = load ptr, ptr %sub_scal.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scal4 = getelementptr inbounds %struct.fla_gemm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8, !tbaa !14
  %8 = load ptr, ptr %sub_gemm.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm5 = getelementptr inbounds %struct.fla_gemm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_gemm5, align 8, !tbaa !15
  %10 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @FLA_malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8, !tbaa !8
  store ptr %sub_hemm, ptr %sub_hemm.addr, align 8, !tbaa !8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8, !tbaa !8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_hemm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !16
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_hemm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !18
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_hemm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !19
  %6 = load ptr, ptr %sub_scal.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scal4 = getelementptr inbounds %struct.fla_hemm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8, !tbaa !20
  %8 = load ptr, ptr %sub_hemm.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_hemm5 = getelementptr inbounds %struct.fla_hemm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_hemm5, align 8, !tbaa !21
  %10 = load ptr, ptr %sub_gemm1.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm16 = getelementptr inbounds %struct.fla_hemm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8, !tbaa !22
  %12 = load ptr, ptr %sub_gemm2.addr, align 8, !tbaa !8
  %13 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm27 = getelementptr inbounds %struct.fla_hemm_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8, !tbaa !23
  %14 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define ptr @FLA_Cntl_herk_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scalr, ptr noundef %sub_herk, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scalr.addr = alloca ptr, align 8
  %sub_herk.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8, !tbaa !8
  store ptr %sub_herk, ptr %sub_herk.addr, align 8, !tbaa !8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_herk_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !24
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_herk_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !26
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_herk_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !27
  %6 = load ptr, ptr %sub_scalr.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scalr4 = getelementptr inbounds %struct.fla_herk_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8, !tbaa !28
  %8 = load ptr, ptr %sub_herk.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_herk5 = getelementptr inbounds %struct.fla_herk_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_herk5, align 8, !tbaa !29
  %10 = load ptr, ptr %sub_gemm.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm6 = getelementptr inbounds %struct.fla_herk_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8, !tbaa !30
  %12 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %12
}

; Function Attrs: nounwind uwtable
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
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8, !tbaa !8
  store ptr %sub_her2k, ptr %sub_her2k.addr, align 8, !tbaa !8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8, !tbaa !8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_her2k_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !31
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_her2k_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !33
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_her2k_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !34
  %6 = load ptr, ptr %sub_scalr.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scalr4 = getelementptr inbounds %struct.fla_her2k_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8, !tbaa !35
  %8 = load ptr, ptr %sub_her2k.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_her2k5 = getelementptr inbounds %struct.fla_her2k_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_her2k5, align 8, !tbaa !36
  %10 = load ptr, ptr %sub_gemm1.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm16 = getelementptr inbounds %struct.fla_her2k_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8, !tbaa !37
  %12 = load ptr, ptr %sub_gemm2.addr, align 8, !tbaa !8
  %13 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm27 = getelementptr inbounds %struct.fla_her2k_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8, !tbaa !38
  %14 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %14
}

; Function Attrs: nounwind uwtable
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
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8, !tbaa !8
  store ptr %sub_symm, ptr %sub_symm.addr, align 8, !tbaa !8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8, !tbaa !8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_symm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !39
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_symm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !41
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_symm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !42
  %6 = load ptr, ptr %sub_scal.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scal4 = getelementptr inbounds %struct.fla_symm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8, !tbaa !43
  %8 = load ptr, ptr %sub_symm.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_symm5 = getelementptr inbounds %struct.fla_symm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_symm5, align 8, !tbaa !44
  %10 = load ptr, ptr %sub_gemm1.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm16 = getelementptr inbounds %struct.fla_symm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8, !tbaa !45
  %12 = load ptr, ptr %sub_gemm2.addr, align 8, !tbaa !8
  %13 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm27 = getelementptr inbounds %struct.fla_symm_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8, !tbaa !46
  %14 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define ptr @FLA_Cntl_syrk_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scalr, ptr noundef %sub_syrk, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scalr.addr = alloca ptr, align 8
  %sub_syrk.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8, !tbaa !8
  store ptr %sub_syrk, ptr %sub_syrk.addr, align 8, !tbaa !8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_syrk_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !47
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_syrk_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !49
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_syrk_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !50
  %6 = load ptr, ptr %sub_scalr.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scalr4 = getelementptr inbounds %struct.fla_syrk_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8, !tbaa !51
  %8 = load ptr, ptr %sub_syrk.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_syrk5 = getelementptr inbounds %struct.fla_syrk_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_syrk5, align 8, !tbaa !52
  %10 = load ptr, ptr %sub_gemm.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm6 = getelementptr inbounds %struct.fla_syrk_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8, !tbaa !53
  %12 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %12
}

; Function Attrs: nounwind uwtable
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
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scalr, ptr %sub_scalr.addr, align 8, !tbaa !8
  store ptr %sub_syr2k, ptr %sub_syr2k.addr, align 8, !tbaa !8
  store ptr %sub_gemm1, ptr %sub_gemm1.addr, align 8, !tbaa !8
  store ptr %sub_gemm2, ptr %sub_gemm2.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 48)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_syr2k_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !54
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_syr2k_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !56
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_syr2k_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !57
  %6 = load ptr, ptr %sub_scalr.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scalr4 = getelementptr inbounds %struct.fla_syr2k_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scalr4, align 8, !tbaa !58
  %8 = load ptr, ptr %sub_syr2k.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_syr2k5 = getelementptr inbounds %struct.fla_syr2k_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_syr2k5, align 8, !tbaa !59
  %10 = load ptr, ptr %sub_gemm1.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm16 = getelementptr inbounds %struct.fla_syr2k_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm16, align 8, !tbaa !60
  %12 = load ptr, ptr %sub_gemm2.addr, align 8, !tbaa !8
  %13 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm27 = getelementptr inbounds %struct.fla_syr2k_s, ptr %13, i32 0, i32 6
  store ptr %12, ptr %sub_gemm27, align 8, !tbaa !61
  %14 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define ptr @FLA_Cntl_trmm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_trmm, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_trmm.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8, !tbaa !8
  store ptr %sub_trmm, ptr %sub_trmm.addr, align 8, !tbaa !8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_trmm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !62
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_trmm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !64
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_trmm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !65
  %6 = load ptr, ptr %sub_scal.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scal4 = getelementptr inbounds %struct.fla_trmm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8, !tbaa !66
  %8 = load ptr, ptr %sub_trmm.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_trmm5 = getelementptr inbounds %struct.fla_trmm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_trmm5, align 8, !tbaa !67
  %10 = load ptr, ptr %sub_gemm.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm6 = getelementptr inbounds %struct.fla_trmm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8, !tbaa !68
  %12 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define ptr @FLA_Cntl_trsm_obj_create(i32 noundef %matrix_type, i32 noundef %variant, ptr noundef %blocksize, ptr noundef %sub_scal, ptr noundef %sub_trsm, ptr noundef %sub_gemm) #0 {
entry:
  %matrix_type.addr = alloca i32, align 4
  %variant.addr = alloca i32, align 4
  %blocksize.addr = alloca ptr, align 8
  %sub_scal.addr = alloca ptr, align 8
  %sub_trsm.addr = alloca ptr, align 8
  %sub_gemm.addr = alloca ptr, align 8
  %cntl = alloca ptr, align 8
  store i32 %matrix_type, ptr %matrix_type.addr, align 4, !tbaa !4
  store i32 %variant, ptr %variant.addr, align 4, !tbaa !4
  store ptr %blocksize, ptr %blocksize.addr, align 8, !tbaa !8
  store ptr %sub_scal, ptr %sub_scal.addr, align 8, !tbaa !8
  store ptr %sub_trsm, ptr %sub_trsm.addr, align 8, !tbaa !8
  store ptr %sub_gemm, ptr %sub_gemm.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cntl) #3
  %call = call ptr @FLA_malloc(i64 noundef 40)
  store ptr %call, ptr %cntl, align 8, !tbaa !8
  %0 = load i32, ptr %matrix_type.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntl, align 8, !tbaa !8
  %matrix_type1 = getelementptr inbounds %struct.fla_trsm_s, ptr %1, i32 0, i32 0
  store i32 %0, ptr %matrix_type1, align 8, !tbaa !69
  %2 = load i32, ptr %variant.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %cntl, align 8, !tbaa !8
  %variant2 = getelementptr inbounds %struct.fla_trsm_s, ptr %3, i32 0, i32 1
  store i32 %2, ptr %variant2, align 4, !tbaa !71
  %4 = load ptr, ptr %blocksize.addr, align 8, !tbaa !8
  %5 = load ptr, ptr %cntl, align 8, !tbaa !8
  %blocksize3 = getelementptr inbounds %struct.fla_trsm_s, ptr %5, i32 0, i32 2
  store ptr %4, ptr %blocksize3, align 8, !tbaa !72
  %6 = load ptr, ptr %sub_scal.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_scal4 = getelementptr inbounds %struct.fla_trsm_s, ptr %7, i32 0, i32 3
  store ptr %6, ptr %sub_scal4, align 8, !tbaa !73
  %8 = load ptr, ptr %sub_trsm.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_trsm5 = getelementptr inbounds %struct.fla_trsm_s, ptr %9, i32 0, i32 4
  store ptr %8, ptr %sub_trsm5, align 8, !tbaa !74
  %10 = load ptr, ptr %sub_gemm.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %cntl, align 8, !tbaa !8
  %sub_gemm6 = getelementptr inbounds %struct.fla_trsm_s, ptr %11, i32 0, i32 5
  store ptr %10, ptr %sub_gemm6, align 8, !tbaa !75
  %12 = load ptr, ptr %cntl, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cntl) #3
  ret ptr %12
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"fla_gemm_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24}
!12 = !{!11, !5, i64 4}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 16}
!15 = !{!11, !9, i64 24}
!16 = !{!17, !5, i64 0}
!17 = !{!"fla_hemm_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!18 = !{!17, !5, i64 4}
!19 = !{!17, !9, i64 8}
!20 = !{!17, !9, i64 16}
!21 = !{!17, !9, i64 24}
!22 = !{!17, !9, i64 32}
!23 = !{!17, !9, i64 40}
!24 = !{!25, !5, i64 0}
!25 = !{!"fla_herk_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!26 = !{!25, !5, i64 4}
!27 = !{!25, !9, i64 8}
!28 = !{!25, !9, i64 16}
!29 = !{!25, !9, i64 24}
!30 = !{!25, !9, i64 32}
!31 = !{!32, !5, i64 0}
!32 = !{!"fla_her2k_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!33 = !{!32, !5, i64 4}
!34 = !{!32, !9, i64 8}
!35 = !{!32, !9, i64 16}
!36 = !{!32, !9, i64 24}
!37 = !{!32, !9, i64 32}
!38 = !{!32, !9, i64 40}
!39 = !{!40, !5, i64 0}
!40 = !{!"fla_symm_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!41 = !{!40, !5, i64 4}
!42 = !{!40, !9, i64 8}
!43 = !{!40, !9, i64 16}
!44 = !{!40, !9, i64 24}
!45 = !{!40, !9, i64 32}
!46 = !{!40, !9, i64 40}
!47 = !{!48, !5, i64 0}
!48 = !{!"fla_syrk_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!49 = !{!48, !5, i64 4}
!50 = !{!48, !9, i64 8}
!51 = !{!48, !9, i64 16}
!52 = !{!48, !9, i64 24}
!53 = !{!48, !9, i64 32}
!54 = !{!55, !5, i64 0}
!55 = !{!"fla_syr2k_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!56 = !{!55, !5, i64 4}
!57 = !{!55, !9, i64 8}
!58 = !{!55, !9, i64 16}
!59 = !{!55, !9, i64 24}
!60 = !{!55, !9, i64 32}
!61 = !{!55, !9, i64 40}
!62 = !{!63, !5, i64 0}
!63 = !{!"fla_trmm_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!64 = !{!63, !5, i64 4}
!65 = !{!63, !9, i64 8}
!66 = !{!63, !9, i64 16}
!67 = !{!63, !9, i64 24}
!68 = !{!63, !9, i64 32}
!69 = !{!70, !5, i64 0}
!70 = !{!"fla_trsm_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!71 = !{!70, !5, i64 4}
!72 = !{!70, !9, i64 8}
!73 = !{!70, !9, i64 16}
!74 = !{!70, !9, i64 24}
!75 = !{!70, !9, i64 32}

; ModuleID = 'samples/144.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/blis/1/bl1_dot2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_sdot2s(i32 noundef %conj, i32 noundef %n, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %beta, ptr noundef %rho) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %rho.addr = alloca ptr, align 8
  %dot = alloca float, align 4
  store i32 %conj, ptr %conj.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %rho, ptr %rho.addr, align 8
  %0 = load i32, ptr %conj.addr, align 4
  %1 = load i32, ptr %n.addr, align 4
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %incx.addr, align 4
  %4 = load ptr, ptr %y.addr, align 8
  %5 = load i32, ptr %incy.addr, align 4
  call void @bl1_sdot(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %dot)
  %6 = load ptr, ptr %beta.addr, align 8
  %7 = load float, ptr %6, align 4
  %8 = load ptr, ptr %rho.addr, align 8
  %9 = load float, ptr %8, align 4
  %10 = load ptr, ptr %alpha.addr, align 8
  %11 = load float, ptr %10, align 4
  %mul1 = fmul float 2.000000e+00, %11
  %12 = load float, ptr %dot, align 4
  %mul2 = fmul float %mul1, %12
  %13 = call float @llvm.fmuladd.f32(float %7, float %9, float %mul2)
  %14 = load ptr, ptr %rho.addr, align 8
  store float %13, ptr %14, align 4
  ret void
}

declare void @bl1_sdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_ddot2s(i32 noundef %conj, i32 noundef %n, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %beta, ptr noundef %rho) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %rho.addr = alloca ptr, align 8
  %dot = alloca double, align 8
  store i32 %conj, ptr %conj.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %rho, ptr %rho.addr, align 8
  %0 = load i32, ptr %conj.addr, align 4
  %1 = load i32, ptr %n.addr, align 4
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %incx.addr, align 4
  %4 = load ptr, ptr %y.addr, align 8
  %5 = load i32, ptr %incy.addr, align 4
  call void @bl1_ddot(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %dot)
  %6 = load ptr, ptr %beta.addr, align 8
  %7 = load double, ptr %6, align 8
  %8 = load ptr, ptr %rho.addr, align 8
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %alpha.addr, align 8
  %11 = load double, ptr %10, align 8
  %mul1 = fmul double 2.000000e+00, %11
  %12 = load double, ptr %dot, align 8
  %mul2 = fmul double %mul1, %12
  %13 = call double @llvm.fmuladd.f64(double %7, double %9, double %mul2)
  %14 = load ptr, ptr %rho.addr, align 8
  store double %13, ptr %14, align 8
  ret void
}

declare void @bl1_ddot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_cdot2s(i32 noundef %conj, i32 noundef %n, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %beta, ptr noundef %rho) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %rho.addr = alloca ptr, align 8
  %dotxy = alloca %struct.scomplex, align 4
  %dotyx = alloca %struct.scomplex, align 4
  %alpha_d = alloca %struct.scomplex, align 4
  %alphac_d = alloca %struct.scomplex, align 4
  %beta_d = alloca %struct.scomplex, align 4
  %rho_d = alloca %struct.scomplex, align 4
  store i32 %conj, ptr %conj.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %rho, ptr %rho.addr, align 8
  %0 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %alpha_d, ptr align 4 %0, i64 8, i1 false)
  %1 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %alphac_d, ptr align 4 %1, i64 8, i1 false)
  %2 = load ptr, ptr %beta.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %beta_d, ptr align 4 %2, i64 8, i1 false)
  %3 = load ptr, ptr %rho.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %rho_d, ptr align 4 %3, i64 8, i1 false)
  %imag = getelementptr inbounds %struct.scomplex, ptr %alphac_d, i32 0, i32 1
  %4 = load float, ptr %imag, align 4
  %mul = fmul float %4, -1.000000e+00
  store float %mul, ptr %imag, align 4
  %5 = load i32, ptr %conj.addr, align 4
  %6 = load i32, ptr %n.addr, align 4
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i32, ptr %incx.addr, align 4
  %9 = load ptr, ptr %y.addr, align 8
  %10 = load i32, ptr %incy.addr, align 4
  call void @bl1_cdot(i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %dotxy)
  %11 = load i32, ptr %conj.addr, align 4
  %12 = load i32, ptr %n.addr, align 4
  %13 = load ptr, ptr %y.addr, align 8
  %14 = load i32, ptr %incy.addr, align 4
  %15 = load ptr, ptr %x.addr, align 8
  %16 = load i32, ptr %incx.addr, align 4
  call void @bl1_cdot(i32 noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %dotyx)
  %real = getelementptr inbounds %struct.scomplex, ptr %beta_d, i32 0, i32 0
  %17 = load float, ptr %real, align 4
  %real1 = getelementptr inbounds %struct.scomplex, ptr %rho_d, i32 0, i32 0
  %18 = load float, ptr %real1, align 4
  %imag3 = getelementptr inbounds %struct.scomplex, ptr %beta_d, i32 0, i32 1
  %19 = load float, ptr %imag3, align 4
  %imag4 = getelementptr inbounds %struct.scomplex, ptr %rho_d, i32 0, i32 1
  %20 = load float, ptr %imag4, align 4
  %mul5 = fmul float %19, %20
  %neg = fneg float %mul5
  %21 = call float @llvm.fmuladd.f32(float %17, float %18, float %neg)
  %real6 = getelementptr inbounds %struct.scomplex, ptr %alpha_d, i32 0, i32 0
  %22 = load float, ptr %real6, align 4
  %real7 = getelementptr inbounds %struct.scomplex, ptr %dotxy, i32 0, i32 0
  %23 = load float, ptr %real7, align 4
  %24 = call float @llvm.fmuladd.f32(float %22, float %23, float %21)
  %imag9 = getelementptr inbounds %struct.scomplex, ptr %alpha_d, i32 0, i32 1
  %25 = load float, ptr %imag9, align 4
  %imag10 = getelementptr inbounds %struct.scomplex, ptr %dotxy, i32 0, i32 1
  %26 = load float, ptr %imag10, align 4
  %neg12 = fneg float %25
  %27 = call float @llvm.fmuladd.f32(float %neg12, float %26, float %24)
  %real13 = getelementptr inbounds %struct.scomplex, ptr %alphac_d, i32 0, i32 0
  %28 = load float, ptr %real13, align 4
  %real14 = getelementptr inbounds %struct.scomplex, ptr %dotyx, i32 0, i32 0
  %29 = load float, ptr %real14, align 4
  %30 = call float @llvm.fmuladd.f32(float %28, float %29, float %27)
  %imag16 = getelementptr inbounds %struct.scomplex, ptr %alphac_d, i32 0, i32 1
  %31 = load float, ptr %imag16, align 4
  %imag17 = getelementptr inbounds %struct.scomplex, ptr %dotyx, i32 0, i32 1
  %32 = load float, ptr %imag17, align 4
  %neg19 = fneg float %31
  %33 = call float @llvm.fmuladd.f32(float %neg19, float %32, float %30)
  %34 = load ptr, ptr %rho.addr, align 8
  %real20 = getelementptr inbounds %struct.scomplex, ptr %34, i32 0, i32 0
  store float %33, ptr %real20, align 4
  %real21 = getelementptr inbounds %struct.scomplex, ptr %beta_d, i32 0, i32 0
  %35 = load float, ptr %real21, align 4
  %imag22 = getelementptr inbounds %struct.scomplex, ptr %rho_d, i32 0, i32 1
  %36 = load float, ptr %imag22, align 4
  %imag24 = getelementptr inbounds %struct.scomplex, ptr %beta_d, i32 0, i32 1
  %37 = load float, ptr %imag24, align 4
  %real25 = getelementptr inbounds %struct.scomplex, ptr %rho_d, i32 0, i32 0
  %38 = load float, ptr %real25, align 4
  %mul26 = fmul float %37, %38
  %39 = call float @llvm.fmuladd.f32(float %35, float %36, float %mul26)
  %real27 = getelementptr inbounds %struct.scomplex, ptr %alpha_d, i32 0, i32 0
  %40 = load float, ptr %real27, align 4
  %imag28 = getelementptr inbounds %struct.scomplex, ptr %dotxy, i32 0, i32 1
  %41 = load float, ptr %imag28, align 4
  %42 = call float @llvm.fmuladd.f32(float %40, float %41, float %39)
  %imag30 = getelementptr inbounds %struct.scomplex, ptr %alpha_d, i32 0, i32 1
  %43 = load float, ptr %imag30, align 4
  %real31 = getelementptr inbounds %struct.scomplex, ptr %dotxy, i32 0, i32 0
  %44 = load float, ptr %real31, align 4
  %45 = call float @llvm.fmuladd.f32(float %43, float %44, float %42)
  %real33 = getelementptr inbounds %struct.scomplex, ptr %alphac_d, i32 0, i32 0
  %46 = load float, ptr %real33, align 4
  %imag34 = getelementptr inbounds %struct.scomplex, ptr %dotyx, i32 0, i32 1
  %47 = load float, ptr %imag34, align 4
  %48 = call float @llvm.fmuladd.f32(float %46, float %47, float %45)
  %imag36 = getelementptr inbounds %struct.scomplex, ptr %alphac_d, i32 0, i32 1
  %49 = load float, ptr %imag36, align 4
  %real37 = getelementptr inbounds %struct.scomplex, ptr %dotyx, i32 0, i32 0
  %50 = load float, ptr %real37, align 4
  %51 = call float @llvm.fmuladd.f32(float %49, float %50, float %48)
  %52 = load ptr, ptr %rho.addr, align 8
  %imag39 = getelementptr inbounds %struct.scomplex, ptr %52, i32 0, i32 1
  store float %51, ptr %imag39, align 4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @bl1_cdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_zdot2s(i32 noundef %conj, i32 noundef %n, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %beta, ptr noundef %rho) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %rho.addr = alloca ptr, align 8
  %dotxy = alloca %struct.dcomplex, align 8
  %dotyx = alloca %struct.dcomplex, align 8
  %alpha_d = alloca %struct.dcomplex, align 8
  %alphac_d = alloca %struct.dcomplex, align 8
  %beta_d = alloca %struct.dcomplex, align 8
  %rho_d = alloca %struct.dcomplex, align 8
  store i32 %conj, ptr %conj.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %rho, ptr %rho.addr, align 8
  %0 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %alpha_d, ptr align 8 %0, i64 16, i1 false)
  %1 = load ptr, ptr %alpha.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %alphac_d, ptr align 8 %1, i64 16, i1 false)
  %2 = load ptr, ptr %beta.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %beta_d, ptr align 8 %2, i64 16, i1 false)
  %3 = load ptr, ptr %rho.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rho_d, ptr align 8 %3, i64 16, i1 false)
  %imag = getelementptr inbounds %struct.dcomplex, ptr %alphac_d, i32 0, i32 1
  %4 = load double, ptr %imag, align 8
  %mul = fmul double %4, -1.000000e+00
  store double %mul, ptr %imag, align 8
  %5 = load i32, ptr %conj.addr, align 4
  %6 = load i32, ptr %n.addr, align 4
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i32, ptr %incx.addr, align 4
  %9 = load ptr, ptr %y.addr, align 8
  %10 = load i32, ptr %incy.addr, align 4
  call void @bl1_zdot(i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %dotxy)
  %11 = load i32, ptr %conj.addr, align 4
  %12 = load i32, ptr %n.addr, align 4
  %13 = load ptr, ptr %y.addr, align 8
  %14 = load i32, ptr %incy.addr, align 4
  %15 = load ptr, ptr %x.addr, align 8
  %16 = load i32, ptr %incx.addr, align 4
  call void @bl1_zdot(i32 noundef %11, i32 noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %dotyx)
  %real = getelementptr inbounds %struct.dcomplex, ptr %beta_d, i32 0, i32 0
  %17 = load double, ptr %real, align 8
  %real1 = getelementptr inbounds %struct.dcomplex, ptr %rho_d, i32 0, i32 0
  %18 = load double, ptr %real1, align 8
  %imag3 = getelementptr inbounds %struct.dcomplex, ptr %beta_d, i32 0, i32 1
  %19 = load double, ptr %imag3, align 8
  %imag4 = getelementptr inbounds %struct.dcomplex, ptr %rho_d, i32 0, i32 1
  %20 = load double, ptr %imag4, align 8
  %mul5 = fmul double %19, %20
  %neg = fneg double %mul5
  %21 = call double @llvm.fmuladd.f64(double %17, double %18, double %neg)
  %real6 = getelementptr inbounds %struct.dcomplex, ptr %alpha_d, i32 0, i32 0
  %22 = load double, ptr %real6, align 8
  %real7 = getelementptr inbounds %struct.dcomplex, ptr %dotxy, i32 0, i32 0
  %23 = load double, ptr %real7, align 8
  %24 = call double @llvm.fmuladd.f64(double %22, double %23, double %21)
  %imag9 = getelementptr inbounds %struct.dcomplex, ptr %alpha_d, i32 0, i32 1
  %25 = load double, ptr %imag9, align 8
  %imag10 = getelementptr inbounds %struct.dcomplex, ptr %dotxy, i32 0, i32 1
  %26 = load double, ptr %imag10, align 8
  %neg12 = fneg double %25
  %27 = call double @llvm.fmuladd.f64(double %neg12, double %26, double %24)
  %real13 = getelementptr inbounds %struct.dcomplex, ptr %alphac_d, i32 0, i32 0
  %28 = load double, ptr %real13, align 8
  %real14 = getelementptr inbounds %struct.dcomplex, ptr %dotyx, i32 0, i32 0
  %29 = load double, ptr %real14, align 8
  %30 = call double @llvm.fmuladd.f64(double %28, double %29, double %27)
  %imag16 = getelementptr inbounds %struct.dcomplex, ptr %alphac_d, i32 0, i32 1
  %31 = load double, ptr %imag16, align 8
  %imag17 = getelementptr inbounds %struct.dcomplex, ptr %dotyx, i32 0, i32 1
  %32 = load double, ptr %imag17, align 8
  %neg19 = fneg double %31
  %33 = call double @llvm.fmuladd.f64(double %neg19, double %32, double %30)
  %34 = load ptr, ptr %rho.addr, align 8
  %real20 = getelementptr inbounds %struct.dcomplex, ptr %34, i32 0, i32 0
  store double %33, ptr %real20, align 8
  %real21 = getelementptr inbounds %struct.dcomplex, ptr %beta_d, i32 0, i32 0
  %35 = load double, ptr %real21, align 8
  %imag22 = getelementptr inbounds %struct.dcomplex, ptr %rho_d, i32 0, i32 1
  %36 = load double, ptr %imag22, align 8
  %imag24 = getelementptr inbounds %struct.dcomplex, ptr %beta_d, i32 0, i32 1
  %37 = load double, ptr %imag24, align 8
  %real25 = getelementptr inbounds %struct.dcomplex, ptr %rho_d, i32 0, i32 0
  %38 = load double, ptr %real25, align 8
  %mul26 = fmul double %37, %38
  %39 = call double @llvm.fmuladd.f64(double %35, double %36, double %mul26)
  %real27 = getelementptr inbounds %struct.dcomplex, ptr %alpha_d, i32 0, i32 0
  %40 = load double, ptr %real27, align 8
  %imag28 = getelementptr inbounds %struct.dcomplex, ptr %dotxy, i32 0, i32 1
  %41 = load double, ptr %imag28, align 8
  %42 = call double @llvm.fmuladd.f64(double %40, double %41, double %39)
  %imag30 = getelementptr inbounds %struct.dcomplex, ptr %alpha_d, i32 0, i32 1
  %43 = load double, ptr %imag30, align 8
  %real31 = getelementptr inbounds %struct.dcomplex, ptr %dotxy, i32 0, i32 0
  %44 = load double, ptr %real31, align 8
  %45 = call double @llvm.fmuladd.f64(double %43, double %44, double %42)
  %real33 = getelementptr inbounds %struct.dcomplex, ptr %alphac_d, i32 0, i32 0
  %46 = load double, ptr %real33, align 8
  %imag34 = getelementptr inbounds %struct.dcomplex, ptr %dotyx, i32 0, i32 1
  %47 = load double, ptr %imag34, align 8
  %48 = call double @llvm.fmuladd.f64(double %46, double %47, double %45)
  %imag36 = getelementptr inbounds %struct.dcomplex, ptr %alphac_d, i32 0, i32 1
  %49 = load double, ptr %imag36, align 8
  %real37 = getelementptr inbounds %struct.dcomplex, ptr %dotyx, i32 0, i32 0
  %50 = load double, ptr %real37, align 8
  %51 = call double @llvm.fmuladd.f64(double %49, double %50, double %48)
  %52 = load ptr, ptr %rho.addr, align 8
  %imag39 = getelementptr inbounds %struct.dcomplex, ptr %52, i32 0, i32 1
  store double %51, ptr %imag39, align 8
  ret void
}

declare void @bl1_zdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}

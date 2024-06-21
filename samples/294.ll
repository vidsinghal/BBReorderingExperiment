; ModuleID = 'samples/294.bc'
source_filename = "frame/2/hemv/bli_hemv_unf_var1a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_s = type { ptr, [2 x i64], [2 x i64], i64, i32, i32, i64, ptr, i64, i64, i64, %struct.dcomplex, i64, i64, i64, i64, i64, i64 }
%struct.dcomplex = type { double, double }
%struct.constdata_s = type { float, double, %struct.scomplex, %struct.dcomplex, i64 }
%struct.scomplex = type { float, float }
%struct.func_s = type { [4 x ptr] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

@BLIS_ZERO = external global %struct.obj_s, align 8

; Function Attrs: nounwind uwtable
define hidden void @bli_shemv_unf_var1a(i32 noundef %uplo, i32 noundef %conja, i32 noundef %conjx, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %beta, ptr noundef %y, i64 noundef %incy, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conja.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %zero = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y0 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %rho = alloca float, align 4
  %conjx_chi1 = alloca float, align 4
  %alpha_chi1 = alloca float, align 4
  %alpha11_temp = alloca float, align 4
  %i = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %kfp_vf = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conja, ptr %conja.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #4
  store i32 0, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #4
  %call = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_ZERO)
  store ptr %call, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rho) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx_chi1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_chi1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha11_temp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call1 = call zeroext i1 @bli_is_lower(i32 noundef %0)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %3, ptr %conj0, align 4, !tbaa !4
  %4 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %5 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_apply_conj(i32 noundef %4, i32 noundef %5)
  store i32 %call2, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %6, ptr %rs_at, align 8, !tbaa !7
  %7 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %7, ptr %cs_at, align 8, !tbaa !7
  %8 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %9 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call3 = call i32 @bli_apply_conj(i32 noundef %8, i32 noundef %9)
  store i32 %call3, ptr %conj0, align 4, !tbaa !4
  %10 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %10, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %12 = load float, ptr %11, align 4, !tbaa !11
  %cmp = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  %13 = load i64, ptr %m.addr, align 8, !tbaa !7
  %14 = load ptr, ptr %zero, align 8, !tbaa !9
  %15 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %16 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %17 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_ssetv_ex(i32 noundef 0, i64 noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef null)
  br label %if.end6

if.else5:                                         ; preds = %if.end
  %18 = load i64, ptr %m.addr, align 8, !tbaa !7
  %19 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %20 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %21 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %22 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_sscalv_ex(i32 noundef 0, i64 noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %21, ptr noundef %22, ptr noundef null)
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_vf) #4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call7 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 0, i32 noundef 1, ptr noundef %23)
  store ptr %call7, ptr %kfp_vf, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %24 = load i64, ptr %i, align 8, !tbaa !7
  %25 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp8 = icmp slt i64 %24, %25
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %26, ptr %n_behind, align 8, !tbaa !7
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %28 = load i64, ptr %i, align 8, !tbaa !7
  %29 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %28, %29
  %add.ptr = getelementptr inbounds float, ptr %27, i64 %mul
  %30 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul9 = mul nsw i64 0, %30
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr, i64 %mul9
  store ptr %add.ptr10, ptr %a10t, align 8, !tbaa !9
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !7
  %33 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul11 = mul nsw i64 %32, %33
  %add.ptr12 = getelementptr inbounds float, ptr %31, i64 %mul11
  %34 = load i64, ptr %i, align 8, !tbaa !7
  %35 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul13 = mul nsw i64 %34, %35
  %add.ptr14 = getelementptr inbounds float, ptr %add.ptr12, i64 %mul13
  store ptr %add.ptr14, ptr %alpha11, align 8, !tbaa !9
  %36 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %37 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul15 = mul nsw i64 0, %37
  %add.ptr16 = getelementptr inbounds float, ptr %36, i64 %mul15
  store ptr %add.ptr16, ptr %x0, align 8, !tbaa !9
  %38 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %39 = load i64, ptr %i, align 8, !tbaa !7
  %40 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul17 = mul nsw i64 %39, %40
  %add.ptr18 = getelementptr inbounds float, ptr %38, i64 %mul17
  store ptr %add.ptr18, ptr %chi1, align 8, !tbaa !9
  %41 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %42 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul19 = mul nsw i64 0, %42
  %add.ptr20 = getelementptr inbounds float, ptr %41, i64 %mul19
  store ptr %add.ptr20, ptr %y0, align 8, !tbaa !9
  %43 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %44 = load i64, ptr %i, align 8, !tbaa !7
  %45 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul21 = mul nsw i64 %44, %45
  %add.ptr22 = getelementptr inbounds float, ptr %43, i64 %mul21
  store ptr %add.ptr22, ptr %psi1, align 8, !tbaa !9
  %46 = load ptr, ptr %chi1, align 8, !tbaa !9
  %47 = load float, ptr %46, align 4, !tbaa !11
  store float %47, ptr %conjx_chi1, align 4, !tbaa !11
  %48 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %49 = load float, ptr %48, align 4, !tbaa !11
  %50 = load float, ptr %conjx_chi1, align 4, !tbaa !11
  %mul23 = fmul float %49, %50
  store float %mul23, ptr %alpha_chi1, align 4, !tbaa !11
  %51 = load ptr, ptr %kfp_vf, align 8, !tbaa !9
  %52 = load i32, ptr %conj0, align 4, !tbaa !4
  %53 = load i32, ptr %conj1, align 4, !tbaa !4
  %54 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %55 = load i64, ptr %n_behind, align 8, !tbaa !7
  %56 = load ptr, ptr %a10t, align 8, !tbaa !9
  %57 = load i64, ptr %cs_at, align 8, !tbaa !7
  %58 = load ptr, ptr %x0, align 8, !tbaa !9
  %59 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %60 = load ptr, ptr %y0, align 8, !tbaa !9
  %61 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %51(i32 noundef %52, i32 noundef %53, i32 noundef %54, i64 noundef %55, ptr noundef %alpha_chi1, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %rho, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  %63 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %64 = load float, ptr %63, align 4, !tbaa !11
  %65 = load float, ptr %rho, align 4, !tbaa !11
  %66 = load ptr, ptr %psi1, align 8, !tbaa !9
  %67 = load float, ptr %66, align 4, !tbaa !11
  %68 = call float @llvm.fmuladd.f32(float %64, float %65, float %67)
  store float %68, ptr %66, align 4, !tbaa !11
  %69 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %70 = load float, ptr %69, align 4, !tbaa !11
  store float %70, ptr %alpha11_temp, align 4, !tbaa !11
  %71 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call25 = call zeroext i1 @bli_is_conj(i32 noundef %71)
  br i1 %call25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.body
  %72 = load float, ptr %alpha_chi1, align 4, !tbaa !11
  %73 = load float, ptr %alpha11_temp, align 4, !tbaa !11
  %74 = load ptr, ptr %psi1, align 8, !tbaa !9
  %75 = load float, ptr %74, align 4, !tbaa !11
  %76 = call float @llvm.fmuladd.f32(float %72, float %73, float %75)
  store float %76, ptr %74, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %77 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %77, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_vf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha11_temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_chi1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx_chi1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rho) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer_for_const(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call = call ptr @bli_obj_buffer(ptr noundef %1)
  %s = getelementptr inbounds %struct.constdata_s, ptr %call, i32 0, i32 0
  store ptr %s, ptr %p, align 8, !tbaa !9
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call3 = call ptr @bli_obj_buffer(ptr noundef %3)
  %d = getelementptr inbounds %struct.constdata_s, ptr %call3, i32 0, i32 1
  store ptr %d, ptr %p, align 8, !tbaa !9
  br label %if.end15

if.else4:                                         ; preds = %if.else
  %4 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call7 = call ptr @bli_obj_buffer(ptr noundef %5)
  %c = getelementptr inbounds %struct.constdata_s, ptr %call7, i32 0, i32 2
  store ptr %c, ptr %p, align 8, !tbaa !9
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  %6 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %cmp9 = icmp eq i32 %6, 3
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %7 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call11 = call ptr @bli_obj_buffer(ptr noundef %7)
  %z = getelementptr inbounds %struct.constdata_s, ptr %call11, i32 0, i32 3
  store ptr %z, ptr %p, align 8, !tbaa !9
  br label %if.end

if.else12:                                        ; preds = %if.else8
  %8 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call13 = call ptr @bli_obj_buffer(ptr noundef %8)
  %i = getelementptr inbounds %struct.constdata_s, ptr %call13, i32 0, i32 4
  store ptr %i, ptr %p, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %9 = load ptr, ptr %p, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_lower(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 192
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_apply_conj(i32 noundef %conjapp, i32 noundef %conj) #0 {
entry:
  %conjapp.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  store i32 %conjapp, ptr %conjapp.addr, align 4, !tbaa !4
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  %0 = load i32, ptr %conj.addr, align 4, !tbaa !4
  %1 = load i32, ptr %conjapp.addr, align 4, !tbaa !4
  %xor = xor i32 %0, %1
  ret i32 %xor
}

declare void @bli_ssetv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sscalv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1f_ker_dt(i32 noundef %dt, i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #4
  %0 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1f_kers(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !9
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #4
  ret ptr %call1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_conj(i32 noundef %conj) #0 {
entry:
  %conj.addr = alloca i32, align 4
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  %0 = load i32, ptr %conj.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 16
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_dhemv_unf_var1a(i32 noundef %uplo, i32 noundef %conja, i32 noundef %conjx, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %beta, ptr noundef %y, i64 noundef %incy, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conja.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %zero = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y0 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %rho = alloca double, align 8
  %conjx_chi1 = alloca double, align 8
  %alpha_chi1 = alloca double, align 8
  %alpha11_temp = alloca double, align 8
  %i = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %kfp_vf = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conja, ptr %conja.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #4
  store i32 2, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #4
  %call = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_ZERO)
  store ptr %call, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rho) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjx_chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11_temp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call1 = call zeroext i1 @bli_is_lower(i32 noundef %0)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %3, ptr %conj0, align 4, !tbaa !4
  %4 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %5 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_apply_conj(i32 noundef %4, i32 noundef %5)
  store i32 %call2, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %6, ptr %rs_at, align 8, !tbaa !7
  %7 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %7, ptr %cs_at, align 8, !tbaa !7
  %8 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %9 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call3 = call i32 @bli_apply_conj(i32 noundef %8, i32 noundef %9)
  store i32 %call3, ptr %conj0, align 4, !tbaa !4
  %10 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %10, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %12 = load double, ptr %11, align 8, !tbaa !13
  %cmp = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.end
  %13 = load i64, ptr %m.addr, align 8, !tbaa !7
  %14 = load ptr, ptr %zero, align 8, !tbaa !9
  %15 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %16 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %17 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_dsetv_ex(i32 noundef 0, i64 noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef null)
  br label %if.end6

if.else5:                                         ; preds = %if.end
  %18 = load i64, ptr %m.addr, align 8, !tbaa !7
  %19 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %20 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %21 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %22 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_dscalv_ex(i32 noundef 0, i64 noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %21, ptr noundef %22, ptr noundef null)
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_vf) #4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call7 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 2, i32 noundef 1, ptr noundef %23)
  store ptr %call7, ptr %kfp_vf, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %24 = load i64, ptr %i, align 8, !tbaa !7
  %25 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp8 = icmp slt i64 %24, %25
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %26, ptr %n_behind, align 8, !tbaa !7
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %28 = load i64, ptr %i, align 8, !tbaa !7
  %29 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %28, %29
  %add.ptr = getelementptr inbounds double, ptr %27, i64 %mul
  %30 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul9 = mul nsw i64 0, %30
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr, i64 %mul9
  store ptr %add.ptr10, ptr %a10t, align 8, !tbaa !9
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !7
  %33 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul11 = mul nsw i64 %32, %33
  %add.ptr12 = getelementptr inbounds double, ptr %31, i64 %mul11
  %34 = load i64, ptr %i, align 8, !tbaa !7
  %35 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul13 = mul nsw i64 %34, %35
  %add.ptr14 = getelementptr inbounds double, ptr %add.ptr12, i64 %mul13
  store ptr %add.ptr14, ptr %alpha11, align 8, !tbaa !9
  %36 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %37 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul15 = mul nsw i64 0, %37
  %add.ptr16 = getelementptr inbounds double, ptr %36, i64 %mul15
  store ptr %add.ptr16, ptr %x0, align 8, !tbaa !9
  %38 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %39 = load i64, ptr %i, align 8, !tbaa !7
  %40 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul17 = mul nsw i64 %39, %40
  %add.ptr18 = getelementptr inbounds double, ptr %38, i64 %mul17
  store ptr %add.ptr18, ptr %chi1, align 8, !tbaa !9
  %41 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %42 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul19 = mul nsw i64 0, %42
  %add.ptr20 = getelementptr inbounds double, ptr %41, i64 %mul19
  store ptr %add.ptr20, ptr %y0, align 8, !tbaa !9
  %43 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %44 = load i64, ptr %i, align 8, !tbaa !7
  %45 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul21 = mul nsw i64 %44, %45
  %add.ptr22 = getelementptr inbounds double, ptr %43, i64 %mul21
  store ptr %add.ptr22, ptr %psi1, align 8, !tbaa !9
  %46 = load ptr, ptr %chi1, align 8, !tbaa !9
  %47 = load double, ptr %46, align 8, !tbaa !13
  store double %47, ptr %conjx_chi1, align 8, !tbaa !13
  %48 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %49 = load double, ptr %48, align 8, !tbaa !13
  %50 = load double, ptr %conjx_chi1, align 8, !tbaa !13
  %mul23 = fmul double %49, %50
  store double %mul23, ptr %alpha_chi1, align 8, !tbaa !13
  %51 = load ptr, ptr %kfp_vf, align 8, !tbaa !9
  %52 = load i32, ptr %conj0, align 4, !tbaa !4
  %53 = load i32, ptr %conj1, align 4, !tbaa !4
  %54 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %55 = load i64, ptr %n_behind, align 8, !tbaa !7
  %56 = load ptr, ptr %a10t, align 8, !tbaa !9
  %57 = load i64, ptr %cs_at, align 8, !tbaa !7
  %58 = load ptr, ptr %x0, align 8, !tbaa !9
  %59 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %60 = load ptr, ptr %y0, align 8, !tbaa !9
  %61 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %51(i32 noundef %52, i32 noundef %53, i32 noundef %54, i64 noundef %55, ptr noundef %alpha_chi1, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %rho, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  %63 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %64 = load double, ptr %63, align 8, !tbaa !13
  %65 = load double, ptr %rho, align 8, !tbaa !13
  %66 = load ptr, ptr %psi1, align 8, !tbaa !9
  %67 = load double, ptr %66, align 8, !tbaa !13
  %68 = call double @llvm.fmuladd.f64(double %64, double %65, double %67)
  store double %68, ptr %66, align 8, !tbaa !13
  %69 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %70 = load double, ptr %69, align 8, !tbaa !13
  store double %70, ptr %alpha11_temp, align 8, !tbaa !13
  %71 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call25 = call zeroext i1 @bli_is_conj(i32 noundef %71)
  br i1 %call25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.body
  %72 = load double, ptr %alpha_chi1, align 8, !tbaa !13
  %73 = load double, ptr %alpha11_temp, align 8, !tbaa !13
  %74 = load ptr, ptr %psi1, align 8, !tbaa !9
  %75 = load double, ptr %74, align 8, !tbaa !13
  %76 = call double @llvm.fmuladd.f64(double %72, double %73, double %75)
  store double %76, ptr %74, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %77 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %77, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_vf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11_temp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjx_chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rho) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #4
  ret void
}

declare void @bli_dsetv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_dscalv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define hidden void @bli_chemv_unf_var1a(i32 noundef %uplo, i32 noundef %conja, i32 noundef %conjx, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %beta, ptr noundef %y, i64 noundef %incy, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conja.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %zero = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y0 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %rho = alloca %struct.scomplex, align 4
  %conjx_chi1 = alloca %struct.scomplex, align 4
  %alpha_chi1 = alloca %struct.scomplex, align 4
  %alpha11_temp = alloca %struct.scomplex, align 4
  %i = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %kfp_vf = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conja, ptr %conja.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #4
  store i32 1, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #4
  %call = call ptr @bli_obj_buffer_for_const(i32 noundef 1, ptr noundef @BLIS_ZERO)
  store ptr %call, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rho) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjx_chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11_temp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call1 = call zeroext i1 @bli_is_lower(i32 noundef %0)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %3, ptr %conj0, align 4, !tbaa !4
  %4 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %5 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_apply_conj(i32 noundef %4, i32 noundef %5)
  store i32 %call2, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %6, ptr %rs_at, align 8, !tbaa !7
  %7 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %7, ptr %cs_at, align 8, !tbaa !7
  %8 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %9 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call3 = call i32 @bli_apply_conj(i32 noundef %8, i32 noundef %9)
  store i32 %call3, ptr %conj0, align 4, !tbaa !4
  %10 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %10, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %11, i32 0, i32 0
  %12 = load float, ptr %real, align 4, !tbaa !15
  %cmp = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %13, i32 0, i32 1
  %14 = load float, ptr %imag, align 4, !tbaa !17
  %cmp4 = fcmp oeq float %14, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %land.lhs.true
  %15 = load i64, ptr %m.addr, align 8, !tbaa !7
  %16 = load ptr, ptr %zero, align 8, !tbaa !9
  %17 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %18 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %19 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_csetv_ex(i32 noundef 0, i64 noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef null)
  br label %if.end7

if.else6:                                         ; preds = %land.lhs.true, %if.end
  %20 = load i64, ptr %m.addr, align 8, !tbaa !7
  %21 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %22 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %23 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %24 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_cscalv_ex(i32 noundef 0, i64 noundef %20, ptr noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef %24, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_vf) #4
  %25 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call8 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 1, i32 noundef 1, ptr noundef %25)
  store ptr %call8, ptr %kfp_vf, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %26 = load i64, ptr %i, align 8, !tbaa !7
  %27 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %28, ptr %n_behind, align 8, !tbaa !7
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !7
  %31 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %30, %31
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %29, i64 %mul
  %32 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul10 = mul nsw i64 0, %32
  %add.ptr11 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul10
  store ptr %add.ptr11, ptr %a10t, align 8, !tbaa !9
  %33 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %34 = load i64, ptr %i, align 8, !tbaa !7
  %35 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul12 = mul nsw i64 %34, %35
  %add.ptr13 = getelementptr inbounds %struct.scomplex, ptr %33, i64 %mul12
  %36 = load i64, ptr %i, align 8, !tbaa !7
  %37 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul14 = mul nsw i64 %36, %37
  %add.ptr15 = getelementptr inbounds %struct.scomplex, ptr %add.ptr13, i64 %mul14
  store ptr %add.ptr15, ptr %alpha11, align 8, !tbaa !9
  %38 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %39 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul16 = mul nsw i64 0, %39
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %38, i64 %mul16
  store ptr %add.ptr17, ptr %x0, align 8, !tbaa !9
  %40 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %41 = load i64, ptr %i, align 8, !tbaa !7
  %42 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul18 = mul nsw i64 %41, %42
  %add.ptr19 = getelementptr inbounds %struct.scomplex, ptr %40, i64 %mul18
  store ptr %add.ptr19, ptr %chi1, align 8, !tbaa !9
  %43 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %44 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul20 = mul nsw i64 0, %44
  %add.ptr21 = getelementptr inbounds %struct.scomplex, ptr %43, i64 %mul20
  store ptr %add.ptr21, ptr %y0, align 8, !tbaa !9
  %45 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %46 = load i64, ptr %i, align 8, !tbaa !7
  %47 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul22 = mul nsw i64 %46, %47
  %add.ptr23 = getelementptr inbounds %struct.scomplex, ptr %45, i64 %mul22
  store ptr %add.ptr23, ptr %psi1, align 8, !tbaa !9
  %48 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real24 = getelementptr inbounds %struct.scomplex, ptr %48, i32 0, i32 0
  %49 = load float, ptr %real24, align 4, !tbaa !15
  %real25 = getelementptr inbounds %struct.scomplex, ptr %conjx_chi1, i32 0, i32 0
  store float %49, ptr %real25, align 4, !tbaa !15
  %50 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call26 = call zeroext i1 @bli_is_conj(i32 noundef %50)
  br i1 %call26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %51 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag27 = getelementptr inbounds %struct.scomplex, ptr %51, i32 0, i32 1
  %52 = load float, ptr %imag27, align 4, !tbaa !17
  %fneg = fneg float %52
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %53 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag28 = getelementptr inbounds %struct.scomplex, ptr %53, i32 0, i32 1
  %54 = load float, ptr %imag28, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %fneg, %cond.true ], [ %54, %cond.false ]
  %imag29 = getelementptr inbounds %struct.scomplex, ptr %conjx_chi1, i32 0, i32 1
  store float %cond, ptr %imag29, align 4, !tbaa !17
  %55 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real30 = getelementptr inbounds %struct.scomplex, ptr %55, i32 0, i32 0
  %56 = load float, ptr %real30, align 4, !tbaa !15
  %real31 = getelementptr inbounds %struct.scomplex, ptr %conjx_chi1, i32 0, i32 0
  %57 = load float, ptr %real31, align 4, !tbaa !15
  %58 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag33 = getelementptr inbounds %struct.scomplex, ptr %58, i32 0, i32 1
  %59 = load float, ptr %imag33, align 4, !tbaa !17
  %imag34 = getelementptr inbounds %struct.scomplex, ptr %conjx_chi1, i32 0, i32 1
  %60 = load float, ptr %imag34, align 4, !tbaa !17
  %mul35 = fmul float %59, %60
  %neg = fneg float %mul35
  %61 = call float @llvm.fmuladd.f32(float %56, float %57, float %neg)
  %real36 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  store float %61, ptr %real36, align 4, !tbaa !15
  %62 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag37 = getelementptr inbounds %struct.scomplex, ptr %62, i32 0, i32 1
  %63 = load float, ptr %imag37, align 4, !tbaa !17
  %real38 = getelementptr inbounds %struct.scomplex, ptr %conjx_chi1, i32 0, i32 0
  %64 = load float, ptr %real38, align 4, !tbaa !15
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real40 = getelementptr inbounds %struct.scomplex, ptr %65, i32 0, i32 0
  %66 = load float, ptr %real40, align 4, !tbaa !15
  %imag41 = getelementptr inbounds %struct.scomplex, ptr %conjx_chi1, i32 0, i32 1
  %67 = load float, ptr %imag41, align 4, !tbaa !17
  %mul42 = fmul float %66, %67
  %68 = call float @llvm.fmuladd.f32(float %63, float %64, float %mul42)
  %imag43 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  store float %68, ptr %imag43, align 4, !tbaa !17
  %69 = load ptr, ptr %kfp_vf, align 8, !tbaa !9
  %70 = load i32, ptr %conj0, align 4, !tbaa !4
  %71 = load i32, ptr %conj1, align 4, !tbaa !4
  %72 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %73 = load i64, ptr %n_behind, align 8, !tbaa !7
  %74 = load ptr, ptr %a10t, align 8, !tbaa !9
  %75 = load i64, ptr %cs_at, align 8, !tbaa !7
  %76 = load ptr, ptr %x0, align 8, !tbaa !9
  %77 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %78 = load ptr, ptr %y0, align 8, !tbaa !9
  %79 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %80 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %69(i32 noundef %70, i32 noundef %71, i32 noundef %72, i64 noundef %73, ptr noundef %alpha_chi1, ptr noundef %74, i64 noundef %75, ptr noundef %76, i64 noundef %77, ptr noundef %rho, ptr noundef %78, i64 noundef %79, ptr noundef %80)
  %81 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real44 = getelementptr inbounds %struct.scomplex, ptr %81, i32 0, i32 0
  %82 = load float, ptr %real44, align 4, !tbaa !15
  %real45 = getelementptr inbounds %struct.scomplex, ptr %rho, i32 0, i32 0
  %83 = load float, ptr %real45, align 4, !tbaa !15
  %84 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag47 = getelementptr inbounds %struct.scomplex, ptr %84, i32 0, i32 1
  %85 = load float, ptr %imag47, align 4, !tbaa !17
  %imag48 = getelementptr inbounds %struct.scomplex, ptr %rho, i32 0, i32 1
  %86 = load float, ptr %imag48, align 4, !tbaa !17
  %mul49 = fmul float %85, %86
  %neg50 = fneg float %mul49
  %87 = call float @llvm.fmuladd.f32(float %82, float %83, float %neg50)
  %88 = load ptr, ptr %psi1, align 8, !tbaa !9
  %real51 = getelementptr inbounds %struct.scomplex, ptr %88, i32 0, i32 0
  %89 = load float, ptr %real51, align 4, !tbaa !15
  %add = fadd float %89, %87
  store float %add, ptr %real51, align 4, !tbaa !15
  %90 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag52 = getelementptr inbounds %struct.scomplex, ptr %90, i32 0, i32 1
  %91 = load float, ptr %imag52, align 4, !tbaa !17
  %real53 = getelementptr inbounds %struct.scomplex, ptr %rho, i32 0, i32 0
  %92 = load float, ptr %real53, align 4, !tbaa !15
  %93 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real55 = getelementptr inbounds %struct.scomplex, ptr %93, i32 0, i32 0
  %94 = load float, ptr %real55, align 4, !tbaa !15
  %imag56 = getelementptr inbounds %struct.scomplex, ptr %rho, i32 0, i32 1
  %95 = load float, ptr %imag56, align 4, !tbaa !17
  %mul57 = fmul float %94, %95
  %96 = call float @llvm.fmuladd.f32(float %91, float %92, float %mul57)
  %97 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag58 = getelementptr inbounds %struct.scomplex, ptr %97, i32 0, i32 1
  %98 = load float, ptr %imag58, align 4, !tbaa !17
  %add59 = fadd float %98, %96
  store float %add59, ptr %imag58, align 4, !tbaa !17
  %99 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real60 = getelementptr inbounds %struct.scomplex, ptr %99, i32 0, i32 0
  %100 = load float, ptr %real60, align 4, !tbaa !15
  %real61 = getelementptr inbounds %struct.scomplex, ptr %alpha11_temp, i32 0, i32 0
  store float %100, ptr %real61, align 4, !tbaa !15
  %101 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call62 = call zeroext i1 @bli_is_conj(i32 noundef %101)
  br i1 %call62, label %cond.true63, label %cond.false66

cond.true63:                                      ; preds = %cond.end
  %102 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag64 = getelementptr inbounds %struct.scomplex, ptr %102, i32 0, i32 1
  %103 = load float, ptr %imag64, align 4, !tbaa !17
  %fneg65 = fneg float %103
  br label %cond.end68

cond.false66:                                     ; preds = %cond.end
  %104 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag67 = getelementptr inbounds %struct.scomplex, ptr %104, i32 0, i32 1
  %105 = load float, ptr %imag67, align 4, !tbaa !17
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false66, %cond.true63
  %cond69 = phi float [ %fneg65, %cond.true63 ], [ %105, %cond.false66 ]
  %imag70 = getelementptr inbounds %struct.scomplex, ptr %alpha11_temp, i32 0, i32 1
  store float %cond69, ptr %imag70, align 4, !tbaa !17
  %106 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call71 = call zeroext i1 @bli_is_conj(i32 noundef %106)
  br i1 %call71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %cond.end68
  %imag73 = getelementptr inbounds %struct.scomplex, ptr %alpha11_temp, i32 0, i32 1
  store float 0.000000e+00, ptr %imag73, align 4, !tbaa !17
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %cond.end68
  %real75 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  %107 = load float, ptr %real75, align 4, !tbaa !15
  %real76 = getelementptr inbounds %struct.scomplex, ptr %alpha11_temp, i32 0, i32 0
  %108 = load float, ptr %real76, align 4, !tbaa !15
  %imag78 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  %109 = load float, ptr %imag78, align 4, !tbaa !17
  %imag79 = getelementptr inbounds %struct.scomplex, ptr %alpha11_temp, i32 0, i32 1
  %110 = load float, ptr %imag79, align 4, !tbaa !17
  %mul80 = fmul float %109, %110
  %neg81 = fneg float %mul80
  %111 = call float @llvm.fmuladd.f32(float %107, float %108, float %neg81)
  %112 = load ptr, ptr %psi1, align 8, !tbaa !9
  %real82 = getelementptr inbounds %struct.scomplex, ptr %112, i32 0, i32 0
  %113 = load float, ptr %real82, align 4, !tbaa !15
  %add83 = fadd float %113, %111
  store float %add83, ptr %real82, align 4, !tbaa !15
  %imag84 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  %114 = load float, ptr %imag84, align 4, !tbaa !17
  %real85 = getelementptr inbounds %struct.scomplex, ptr %alpha11_temp, i32 0, i32 0
  %115 = load float, ptr %real85, align 4, !tbaa !15
  %real87 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  %116 = load float, ptr %real87, align 4, !tbaa !15
  %imag88 = getelementptr inbounds %struct.scomplex, ptr %alpha11_temp, i32 0, i32 1
  %117 = load float, ptr %imag88, align 4, !tbaa !17
  %mul89 = fmul float %116, %117
  %118 = call float @llvm.fmuladd.f32(float %114, float %115, float %mul89)
  %119 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag90 = getelementptr inbounds %struct.scomplex, ptr %119, i32 0, i32 1
  %120 = load float, ptr %imag90, align 4, !tbaa !17
  %add91 = fadd float %120, %118
  store float %add91, ptr %imag90, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %if.end74
  %121 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %121, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_vf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11_temp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjx_chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rho) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #4
  ret void
}

declare void @bli_csetv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_cscalv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_zhemv_unf_var1a(i32 noundef %uplo, i32 noundef %conja, i32 noundef %conjx, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %x, i64 noundef %incx, ptr noundef %beta, ptr noundef %y, i64 noundef %incy, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conja.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %zero = alloca ptr, align 8
  %a10t = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %x0 = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y0 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %rho = alloca %struct.dcomplex, align 8
  %conjx_chi1 = alloca %struct.dcomplex, align 8
  %alpha_chi1 = alloca %struct.dcomplex, align 8
  %alpha11_temp = alloca %struct.dcomplex, align 8
  %i = alloca i64, align 8
  %n_behind = alloca i64, align 8
  %rs_at = alloca i64, align 8
  %cs_at = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %kfp_vf = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conja, ptr %conja.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #4
  store i32 3, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #4
  %call = call ptr @bli_obj_buffer_for_const(i32 noundef 3, ptr noundef @BLIS_ZERO)
  store ptr %call, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %rho) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %conjx_chi1) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha_chi1) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha11_temp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call1 = call zeroext i1 @bli_is_lower(i32 noundef %0)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %1, ptr %rs_at, align 8, !tbaa !7
  %2 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %2, ptr %cs_at, align 8, !tbaa !7
  %3 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %3, ptr %conj0, align 4, !tbaa !4
  %4 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %5 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_apply_conj(i32 noundef %4, i32 noundef %5)
  store i32 %call2, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  store i64 %6, ptr %rs_at, align 8, !tbaa !7
  %7 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %7, ptr %cs_at, align 8, !tbaa !7
  %8 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %9 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call3 = call i32 @bli_apply_conj(i32 noundef %8, i32 noundef %9)
  store i32 %call3, ptr %conj0, align 4, !tbaa !4
  %10 = load i32, ptr %conja.addr, align 4, !tbaa !4
  store i32 %10, ptr %conj1, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %11, i32 0, i32 0
  %12 = load double, ptr %real, align 8, !tbaa !18
  %cmp = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %13, i32 0, i32 1
  %14 = load double, ptr %imag, align 8, !tbaa !20
  %cmp4 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %land.lhs.true
  %15 = load i64, ptr %m.addr, align 8, !tbaa !7
  %16 = load ptr, ptr %zero, align 8, !tbaa !9
  %17 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %18 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %19 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_zsetv_ex(i32 noundef 0, i64 noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef null)
  br label %if.end7

if.else6:                                         ; preds = %land.lhs.true, %if.end
  %20 = load i64, ptr %m.addr, align 8, !tbaa !7
  %21 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %22 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %23 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %24 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_zscalv_ex(i32 noundef 0, i64 noundef %20, ptr noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef %24, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_vf) #4
  %25 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call8 = call ptr @bli_cntx_get_l1f_ker_dt(i32 noundef 3, i32 noundef 1, ptr noundef %25)
  store ptr %call8, ptr %kfp_vf, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %26 = load i64, ptr %i, align 8, !tbaa !7
  %27 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, ptr %i, align 8, !tbaa !7
  store i64 %28, ptr %n_behind, align 8, !tbaa !7
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !7
  %31 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul = mul nsw i64 %30, %31
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %29, i64 %mul
  %32 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul10 = mul nsw i64 0, %32
  %add.ptr11 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul10
  store ptr %add.ptr11, ptr %a10t, align 8, !tbaa !9
  %33 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %34 = load i64, ptr %i, align 8, !tbaa !7
  %35 = load i64, ptr %rs_at, align 8, !tbaa !7
  %mul12 = mul nsw i64 %34, %35
  %add.ptr13 = getelementptr inbounds %struct.dcomplex, ptr %33, i64 %mul12
  %36 = load i64, ptr %i, align 8, !tbaa !7
  %37 = load i64, ptr %cs_at, align 8, !tbaa !7
  %mul14 = mul nsw i64 %36, %37
  %add.ptr15 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr13, i64 %mul14
  store ptr %add.ptr15, ptr %alpha11, align 8, !tbaa !9
  %38 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %39 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul16 = mul nsw i64 0, %39
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %38, i64 %mul16
  store ptr %add.ptr17, ptr %x0, align 8, !tbaa !9
  %40 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %41 = load i64, ptr %i, align 8, !tbaa !7
  %42 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul18 = mul nsw i64 %41, %42
  %add.ptr19 = getelementptr inbounds %struct.dcomplex, ptr %40, i64 %mul18
  store ptr %add.ptr19, ptr %chi1, align 8, !tbaa !9
  %43 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %44 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul20 = mul nsw i64 0, %44
  %add.ptr21 = getelementptr inbounds %struct.dcomplex, ptr %43, i64 %mul20
  store ptr %add.ptr21, ptr %y0, align 8, !tbaa !9
  %45 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %46 = load i64, ptr %i, align 8, !tbaa !7
  %47 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul22 = mul nsw i64 %46, %47
  %add.ptr23 = getelementptr inbounds %struct.dcomplex, ptr %45, i64 %mul22
  store ptr %add.ptr23, ptr %psi1, align 8, !tbaa !9
  %48 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real24 = getelementptr inbounds %struct.dcomplex, ptr %48, i32 0, i32 0
  %49 = load double, ptr %real24, align 8, !tbaa !18
  %real25 = getelementptr inbounds %struct.dcomplex, ptr %conjx_chi1, i32 0, i32 0
  store double %49, ptr %real25, align 8, !tbaa !18
  %50 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call26 = call zeroext i1 @bli_is_conj(i32 noundef %50)
  br i1 %call26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %51 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag27 = getelementptr inbounds %struct.dcomplex, ptr %51, i32 0, i32 1
  %52 = load double, ptr %imag27, align 8, !tbaa !20
  %fneg = fneg double %52
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %53 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag28 = getelementptr inbounds %struct.dcomplex, ptr %53, i32 0, i32 1
  %54 = load double, ptr %imag28, align 8, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %54, %cond.false ]
  %imag29 = getelementptr inbounds %struct.dcomplex, ptr %conjx_chi1, i32 0, i32 1
  store double %cond, ptr %imag29, align 8, !tbaa !20
  %55 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real30 = getelementptr inbounds %struct.dcomplex, ptr %55, i32 0, i32 0
  %56 = load double, ptr %real30, align 8, !tbaa !18
  %real31 = getelementptr inbounds %struct.dcomplex, ptr %conjx_chi1, i32 0, i32 0
  %57 = load double, ptr %real31, align 8, !tbaa !18
  %58 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag33 = getelementptr inbounds %struct.dcomplex, ptr %58, i32 0, i32 1
  %59 = load double, ptr %imag33, align 8, !tbaa !20
  %imag34 = getelementptr inbounds %struct.dcomplex, ptr %conjx_chi1, i32 0, i32 1
  %60 = load double, ptr %imag34, align 8, !tbaa !20
  %mul35 = fmul double %59, %60
  %neg = fneg double %mul35
  %61 = call double @llvm.fmuladd.f64(double %56, double %57, double %neg)
  %real36 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 0
  store double %61, ptr %real36, align 8, !tbaa !18
  %62 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag37 = getelementptr inbounds %struct.dcomplex, ptr %62, i32 0, i32 1
  %63 = load double, ptr %imag37, align 8, !tbaa !20
  %real38 = getelementptr inbounds %struct.dcomplex, ptr %conjx_chi1, i32 0, i32 0
  %64 = load double, ptr %real38, align 8, !tbaa !18
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real40 = getelementptr inbounds %struct.dcomplex, ptr %65, i32 0, i32 0
  %66 = load double, ptr %real40, align 8, !tbaa !18
  %imag41 = getelementptr inbounds %struct.dcomplex, ptr %conjx_chi1, i32 0, i32 1
  %67 = load double, ptr %imag41, align 8, !tbaa !20
  %mul42 = fmul double %66, %67
  %68 = call double @llvm.fmuladd.f64(double %63, double %64, double %mul42)
  %imag43 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 1
  store double %68, ptr %imag43, align 8, !tbaa !20
  %69 = load ptr, ptr %kfp_vf, align 8, !tbaa !9
  %70 = load i32, ptr %conj0, align 4, !tbaa !4
  %71 = load i32, ptr %conj1, align 4, !tbaa !4
  %72 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %73 = load i64, ptr %n_behind, align 8, !tbaa !7
  %74 = load ptr, ptr %a10t, align 8, !tbaa !9
  %75 = load i64, ptr %cs_at, align 8, !tbaa !7
  %76 = load ptr, ptr %x0, align 8, !tbaa !9
  %77 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %78 = load ptr, ptr %y0, align 8, !tbaa !9
  %79 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %80 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %69(i32 noundef %70, i32 noundef %71, i32 noundef %72, i64 noundef %73, ptr noundef %alpha_chi1, ptr noundef %74, i64 noundef %75, ptr noundef %76, i64 noundef %77, ptr noundef %rho, ptr noundef %78, i64 noundef %79, ptr noundef %80)
  %81 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real44 = getelementptr inbounds %struct.dcomplex, ptr %81, i32 0, i32 0
  %82 = load double, ptr %real44, align 8, !tbaa !18
  %real45 = getelementptr inbounds %struct.dcomplex, ptr %rho, i32 0, i32 0
  %83 = load double, ptr %real45, align 8, !tbaa !18
  %84 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag47 = getelementptr inbounds %struct.dcomplex, ptr %84, i32 0, i32 1
  %85 = load double, ptr %imag47, align 8, !tbaa !20
  %imag48 = getelementptr inbounds %struct.dcomplex, ptr %rho, i32 0, i32 1
  %86 = load double, ptr %imag48, align 8, !tbaa !20
  %mul49 = fmul double %85, %86
  %neg50 = fneg double %mul49
  %87 = call double @llvm.fmuladd.f64(double %82, double %83, double %neg50)
  %88 = load ptr, ptr %psi1, align 8, !tbaa !9
  %real51 = getelementptr inbounds %struct.dcomplex, ptr %88, i32 0, i32 0
  %89 = load double, ptr %real51, align 8, !tbaa !18
  %add = fadd double %89, %87
  store double %add, ptr %real51, align 8, !tbaa !18
  %90 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag52 = getelementptr inbounds %struct.dcomplex, ptr %90, i32 0, i32 1
  %91 = load double, ptr %imag52, align 8, !tbaa !20
  %real53 = getelementptr inbounds %struct.dcomplex, ptr %rho, i32 0, i32 0
  %92 = load double, ptr %real53, align 8, !tbaa !18
  %93 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real55 = getelementptr inbounds %struct.dcomplex, ptr %93, i32 0, i32 0
  %94 = load double, ptr %real55, align 8, !tbaa !18
  %imag56 = getelementptr inbounds %struct.dcomplex, ptr %rho, i32 0, i32 1
  %95 = load double, ptr %imag56, align 8, !tbaa !20
  %mul57 = fmul double %94, %95
  %96 = call double @llvm.fmuladd.f64(double %91, double %92, double %mul57)
  %97 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag58 = getelementptr inbounds %struct.dcomplex, ptr %97, i32 0, i32 1
  %98 = load double, ptr %imag58, align 8, !tbaa !20
  %add59 = fadd double %98, %96
  store double %add59, ptr %imag58, align 8, !tbaa !20
  %99 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %real60 = getelementptr inbounds %struct.dcomplex, ptr %99, i32 0, i32 0
  %100 = load double, ptr %real60, align 8, !tbaa !18
  %real61 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_temp, i32 0, i32 0
  store double %100, ptr %real61, align 8, !tbaa !18
  %101 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call62 = call zeroext i1 @bli_is_conj(i32 noundef %101)
  br i1 %call62, label %cond.true63, label %cond.false66

cond.true63:                                      ; preds = %cond.end
  %102 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag64 = getelementptr inbounds %struct.dcomplex, ptr %102, i32 0, i32 1
  %103 = load double, ptr %imag64, align 8, !tbaa !20
  %fneg65 = fneg double %103
  br label %cond.end68

cond.false66:                                     ; preds = %cond.end
  %104 = load ptr, ptr %alpha11, align 8, !tbaa !9
  %imag67 = getelementptr inbounds %struct.dcomplex, ptr %104, i32 0, i32 1
  %105 = load double, ptr %imag67, align 8, !tbaa !20
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false66, %cond.true63
  %cond69 = phi double [ %fneg65, %cond.true63 ], [ %105, %cond.false66 ]
  %imag70 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_temp, i32 0, i32 1
  store double %cond69, ptr %imag70, align 8, !tbaa !20
  %106 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call71 = call zeroext i1 @bli_is_conj(i32 noundef %106)
  br i1 %call71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %cond.end68
  %imag73 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_temp, i32 0, i32 1
  store double 0.000000e+00, ptr %imag73, align 8, !tbaa !20
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %cond.end68
  %real75 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 0
  %107 = load double, ptr %real75, align 8, !tbaa !18
  %real76 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_temp, i32 0, i32 0
  %108 = load double, ptr %real76, align 8, !tbaa !18
  %imag78 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 1
  %109 = load double, ptr %imag78, align 8, !tbaa !20
  %imag79 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_temp, i32 0, i32 1
  %110 = load double, ptr %imag79, align 8, !tbaa !20
  %mul80 = fmul double %109, %110
  %neg81 = fneg double %mul80
  %111 = call double @llvm.fmuladd.f64(double %107, double %108, double %neg81)
  %112 = load ptr, ptr %psi1, align 8, !tbaa !9
  %real82 = getelementptr inbounds %struct.dcomplex, ptr %112, i32 0, i32 0
  %113 = load double, ptr %real82, align 8, !tbaa !18
  %add83 = fadd double %113, %111
  store double %add83, ptr %real82, align 8, !tbaa !18
  %imag84 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 1
  %114 = load double, ptr %imag84, align 8, !tbaa !20
  %real85 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_temp, i32 0, i32 0
  %115 = load double, ptr %real85, align 8, !tbaa !18
  %real87 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 0
  %116 = load double, ptr %real87, align 8, !tbaa !18
  %imag88 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_temp, i32 0, i32 1
  %117 = load double, ptr %imag88, align 8, !tbaa !20
  %mul89 = fmul double %116, %117
  %118 = call double @llvm.fmuladd.f64(double %114, double %115, double %mul89)
  %119 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag90 = getelementptr inbounds %struct.dcomplex, ptr %119, i32 0, i32 1
  %120 = load double, ptr %imag90, align 8, !tbaa !20
  %add91 = fadd double %120, %118
  store double %add91, ptr %imag90, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %if.end74
  %121 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %121, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_vf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_at) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha11_temp) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha_chi1) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %conjx_chi1) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %rho) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #4
  ret void
}

declare void @bli_zsetv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zscalv_ex(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %buffer = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %buffer, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1f_kers(i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #4
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_l1f_kers_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #4
  %1 = load ptr, ptr %funcs, align 8, !tbaa !9
  %2 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !9
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #4
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_func_get_dt(i32 noundef %dt, ptr noundef %func) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store ptr %func, ptr %func.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !9
  %ptr = getelementptr inbounds %struct.func_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ptr, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_l1f_kers_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %l1f_kers = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 12
  %arraydecay = getelementptr inbounds [5 x %struct.func_s], ptr %l1f_kers, i64 0, i64 0
  ret ptr %arraydecay
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!16, !12, i64 0}
!16 = !{!"", !12, i64 0, !12, i64 4}
!17 = !{!16, !12, i64 4}
!18 = !{!19, !14, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 8}
!20 = !{!19, !14, i64 8}
!21 = !{!22, !10, i64 64}
!22 = !{!"obj_s", !10, i64 0, !5, i64 8, !5, i64 24, !8, i64 40, !23, i64 48, !23, i64 52, !8, i64 56, !10, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !19, i64 96, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!23 = !{!"int", !5, i64 0}

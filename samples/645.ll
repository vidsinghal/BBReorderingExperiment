; ModuleID = 'samples/645.bc'
source_filename = "frame/2/her2/bli_her2_unb_var4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }
%struct.func_s = type { [4 x ptr] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

; Function Attrs: nounwind uwtable
define hidden void @bli_sher2_unb_var4(i32 noundef %uplo, i32 noundef %conjx, i32 noundef %conjy, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %chi1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %y2 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %c21 = alloca ptr, align 8
  %alpha0 = alloca float, align 4
  %alpha1 = alloca float, align 4
  %alpha0_psi1 = alloca float, align 4
  %alpha1_chi1 = alloca float, align 4
  %alpha0_chi1_psi1 = alloca float, align 4
  %conjy0_psi1 = alloca float, align 4
  %conjx1_chi1 = alloca float, align 4
  %conjx0_chi1 = alloca float, align 4
  %i = alloca i64, align 8
  %n_ahead = alloca i64, align 8
  %rs_ct = alloca i64, align 8
  %cs_ct = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %conjh_conjx = alloca i32, align 4
  %conjh_conjy = alloca i32, align 4
  %kfp_av = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjy) #3
  %0 = load i32, ptr %conjh_conjx, align 4, !tbaa !4
  %1 = load i32, ptr %conjh_conjy, align 4, !tbaa !4
  %2 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_is_lower(i32 noundef %2)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %3, ptr %rs_ct, align 8, !tbaa !7
  %4 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %4, ptr %cs_ct, align 8, !tbaa !7
  %5 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %6 = load float, ptr %5, align 4, !tbaa !11
  store float %6, ptr %alpha0, align 4, !tbaa !11
  %7 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %8 = load float, ptr %7, align 4, !tbaa !11
  store float %8, ptr %alpha1, align 4, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %9, ptr %rs_ct, align 8, !tbaa !7
  %10 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %10, ptr %cs_ct, align 8, !tbaa !7
  %11 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %12 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call1 = call i32 @bli_apply_conj(i32 noundef %11, i32 noundef %12)
  store i32 %call1, ptr %conjx.addr, align 4, !tbaa !4
  %13 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %14 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_apply_conj(i32 noundef %13, i32 noundef %14)
  store i32 %call2, ptr %conjy.addr, align 4, !tbaa !4
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %16 = load float, ptr %15, align 4, !tbaa !11
  store float %16, ptr %alpha0, align 4, !tbaa !11
  %17 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %18 = load float, ptr %17, align 4, !tbaa !11
  store float %18, ptr %alpha1, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %19, ptr %conj0, align 4, !tbaa !4
  %20 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %20, ptr %conj1, align 4, !tbaa !4
  %21 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %22 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call3 = call i32 @bli_apply_conj(i32 noundef %21, i32 noundef %22)
  store i32 %call3, ptr %conjh_conjx, align 4, !tbaa !4
  %23 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %24 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call4 = call i32 @bli_apply_conj(i32 noundef %23, i32 noundef %24)
  store i32 %call4, ptr %conjh_conjy, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %25 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call5 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 4, ptr noundef %25)
  store ptr %call5, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i64, ptr %i, align 8, !tbaa !7
  %27 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, ptr %m.addr, align 8, !tbaa !7
  %29 = load i64, ptr %i, align 8, !tbaa !7
  %sub = sub nsw i64 %28, %29
  %sub6 = sub nsw i64 %sub, 1
  store i64 %sub6, ptr %n_ahead, align 8, !tbaa !7
  %30 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %31 = load i64, ptr %i, align 8, !tbaa !7
  %32 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %31, %32
  %add.ptr = getelementptr inbounds float, ptr %30, i64 %mul
  store ptr %add.ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %34 = load i64, ptr %i, align 8, !tbaa !7
  %add = add nsw i64 %34, 1
  %35 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul7 = mul nsw i64 %add, %35
  %add.ptr8 = getelementptr inbounds float, ptr %33, i64 %mul7
  store ptr %add.ptr8, ptr %x2, align 8, !tbaa !9
  %36 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %37 = load i64, ptr %i, align 8, !tbaa !7
  %38 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul9 = mul nsw i64 %37, %38
  %add.ptr10 = getelementptr inbounds float, ptr %36, i64 %mul9
  store ptr %add.ptr10, ptr %psi1, align 8, !tbaa !9
  %39 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !7
  %add11 = add nsw i64 %40, 1
  %41 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul12 = mul nsw i64 %add11, %41
  %add.ptr13 = getelementptr inbounds float, ptr %39, i64 %mul12
  store ptr %add.ptr13, ptr %y2, align 8, !tbaa !9
  %42 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !7
  %44 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul14 = mul nsw i64 %43, %44
  %add.ptr15 = getelementptr inbounds float, ptr %42, i64 %mul14
  %45 = load i64, ptr %i, align 8, !tbaa !7
  %46 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul16 = mul nsw i64 %45, %46
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr15, i64 %mul16
  store ptr %add.ptr17, ptr %gamma11, align 8, !tbaa !9
  %47 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %48 = load i64, ptr %i, align 8, !tbaa !7
  %add18 = add nsw i64 %48, 1
  %49 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul19 = mul nsw i64 %add18, %49
  %add.ptr20 = getelementptr inbounds float, ptr %47, i64 %mul19
  %50 = load i64, ptr %i, align 8, !tbaa !7
  %51 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul21 = mul nsw i64 %50, %51
  %add.ptr22 = getelementptr inbounds float, ptr %add.ptr20, i64 %mul21
  store ptr %add.ptr22, ptr %c21, align 8, !tbaa !9
  %52 = load ptr, ptr %psi1, align 8, !tbaa !9
  %53 = load float, ptr %52, align 4, !tbaa !11
  store float %53, ptr %conjy0_psi1, align 4, !tbaa !11
  %54 = load ptr, ptr %chi1, align 8, !tbaa !9
  %55 = load float, ptr %54, align 4, !tbaa !11
  store float %55, ptr %conjx1_chi1, align 4, !tbaa !11
  %56 = load ptr, ptr %chi1, align 8, !tbaa !9
  %57 = load float, ptr %56, align 4, !tbaa !11
  store float %57, ptr %conjx0_chi1, align 4, !tbaa !11
  %58 = load float, ptr %alpha0, align 4, !tbaa !11
  %59 = load float, ptr %conjy0_psi1, align 4, !tbaa !11
  %mul23 = fmul float %58, %59
  store float %mul23, ptr %alpha0_psi1, align 4, !tbaa !11
  %60 = load float, ptr %alpha1, align 4, !tbaa !11
  %61 = load float, ptr %conjx1_chi1, align 4, !tbaa !11
  %mul24 = fmul float %60, %61
  store float %mul24, ptr %alpha1_chi1, align 4, !tbaa !11
  %62 = load float, ptr %alpha0_psi1, align 4, !tbaa !11
  %63 = load float, ptr %conjx0_chi1, align 4, !tbaa !11
  %mul25 = fmul float %62, %63
  store float %mul25, ptr %alpha0_chi1_psi1, align 4, !tbaa !11
  %64 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %65 = load i32, ptr %conj0, align 4, !tbaa !4
  %66 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %67 = load ptr, ptr %x2, align 8, !tbaa !9
  %68 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %69 = load ptr, ptr %c21, align 8, !tbaa !9
  %70 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %71 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %64(i32 noundef %65, i64 noundef %66, ptr noundef %alpha0_psi1, ptr noundef %67, i64 noundef %68, ptr noundef %69, i64 noundef %70, ptr noundef %71)
  %72 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %73 = load i32, ptr %conj1, align 4, !tbaa !4
  %74 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %75 = load ptr, ptr %y2, align 8, !tbaa !9
  %76 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %77 = load ptr, ptr %c21, align 8, !tbaa !9
  %78 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %79 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %72(i32 noundef %73, i64 noundef %74, ptr noundef %alpha1_chi1, ptr noundef %75, i64 noundef %76, ptr noundef %77, i64 noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %81 = load float, ptr %80, align 4, !tbaa !11
  %82 = load float, ptr %alpha0_chi1_psi1, align 4, !tbaa !11
  %add26 = fadd float %81, %82
  %83 = load ptr, ptr %gamma11, align 8, !tbaa !9
  store float %add26, ptr %83, align 4, !tbaa !11
  %84 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %85 = load float, ptr %84, align 4, !tbaa !11
  %86 = load float, ptr %alpha0_chi1_psi1, align 4, !tbaa !11
  %add27 = fadd float %85, %86
  %87 = load ptr, ptr %gamma11, align 8, !tbaa !9
  store float %add27, ptr %87, align 4, !tbaa !11
  %88 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call28 = call zeroext i1 @bli_is_conj(i32 noundef %88)
  br i1 %call28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %89 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %89, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1v_ker_dt(i32 noundef %dt, i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %0 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1v_kers(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !9
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  ret ptr %call1
}

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
define hidden void @bli_dher2_unb_var4(i32 noundef %uplo, i32 noundef %conjx, i32 noundef %conjy, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %chi1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %y2 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %c21 = alloca ptr, align 8
  %alpha0 = alloca double, align 8
  %alpha1 = alloca double, align 8
  %alpha0_psi1 = alloca double, align 8
  %alpha1_chi1 = alloca double, align 8
  %alpha0_chi1_psi1 = alloca double, align 8
  %conjy0_psi1 = alloca double, align 8
  %conjx1_chi1 = alloca double, align 8
  %conjx0_chi1 = alloca double, align 8
  %i = alloca i64, align 8
  %n_ahead = alloca i64, align 8
  %rs_ct = alloca i64, align 8
  %cs_ct = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %conjh_conjx = alloca i32, align 4
  %conjh_conjy = alloca i32, align 4
  %kfp_av = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjy) #3
  %0 = load i32, ptr %conjh_conjx, align 4, !tbaa !4
  %1 = load i32, ptr %conjh_conjy, align 4, !tbaa !4
  %2 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_is_lower(i32 noundef %2)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %3, ptr %rs_ct, align 8, !tbaa !7
  %4 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %4, ptr %cs_ct, align 8, !tbaa !7
  %5 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %6 = load double, ptr %5, align 8, !tbaa !13
  store double %6, ptr %alpha0, align 8, !tbaa !13
  %7 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %8 = load double, ptr %7, align 8, !tbaa !13
  store double %8, ptr %alpha1, align 8, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %9, ptr %rs_ct, align 8, !tbaa !7
  %10 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %10, ptr %cs_ct, align 8, !tbaa !7
  %11 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %12 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call1 = call i32 @bli_apply_conj(i32 noundef %11, i32 noundef %12)
  store i32 %call1, ptr %conjx.addr, align 4, !tbaa !4
  %13 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %14 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call2 = call i32 @bli_apply_conj(i32 noundef %13, i32 noundef %14)
  store i32 %call2, ptr %conjy.addr, align 4, !tbaa !4
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %16 = load double, ptr %15, align 8, !tbaa !13
  store double %16, ptr %alpha0, align 8, !tbaa !13
  %17 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %18 = load double, ptr %17, align 8, !tbaa !13
  store double %18, ptr %alpha1, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %19, ptr %conj0, align 4, !tbaa !4
  %20 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %20, ptr %conj1, align 4, !tbaa !4
  %21 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %22 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call3 = call i32 @bli_apply_conj(i32 noundef %21, i32 noundef %22)
  store i32 %call3, ptr %conjh_conjx, align 4, !tbaa !4
  %23 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %24 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call4 = call i32 @bli_apply_conj(i32 noundef %23, i32 noundef %24)
  store i32 %call4, ptr %conjh_conjy, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %25 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call5 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 4, ptr noundef %25)
  store ptr %call5, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i64, ptr %i, align 8, !tbaa !7
  %27 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, ptr %m.addr, align 8, !tbaa !7
  %29 = load i64, ptr %i, align 8, !tbaa !7
  %sub = sub nsw i64 %28, %29
  %sub6 = sub nsw i64 %sub, 1
  store i64 %sub6, ptr %n_ahead, align 8, !tbaa !7
  %30 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %31 = load i64, ptr %i, align 8, !tbaa !7
  %32 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %31, %32
  %add.ptr = getelementptr inbounds double, ptr %30, i64 %mul
  store ptr %add.ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %34 = load i64, ptr %i, align 8, !tbaa !7
  %add = add nsw i64 %34, 1
  %35 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul7 = mul nsw i64 %add, %35
  %add.ptr8 = getelementptr inbounds double, ptr %33, i64 %mul7
  store ptr %add.ptr8, ptr %x2, align 8, !tbaa !9
  %36 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %37 = load i64, ptr %i, align 8, !tbaa !7
  %38 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul9 = mul nsw i64 %37, %38
  %add.ptr10 = getelementptr inbounds double, ptr %36, i64 %mul9
  store ptr %add.ptr10, ptr %psi1, align 8, !tbaa !9
  %39 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !7
  %add11 = add nsw i64 %40, 1
  %41 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul12 = mul nsw i64 %add11, %41
  %add.ptr13 = getelementptr inbounds double, ptr %39, i64 %mul12
  store ptr %add.ptr13, ptr %y2, align 8, !tbaa !9
  %42 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !7
  %44 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul14 = mul nsw i64 %43, %44
  %add.ptr15 = getelementptr inbounds double, ptr %42, i64 %mul14
  %45 = load i64, ptr %i, align 8, !tbaa !7
  %46 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul16 = mul nsw i64 %45, %46
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr15, i64 %mul16
  store ptr %add.ptr17, ptr %gamma11, align 8, !tbaa !9
  %47 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %48 = load i64, ptr %i, align 8, !tbaa !7
  %add18 = add nsw i64 %48, 1
  %49 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul19 = mul nsw i64 %add18, %49
  %add.ptr20 = getelementptr inbounds double, ptr %47, i64 %mul19
  %50 = load i64, ptr %i, align 8, !tbaa !7
  %51 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul21 = mul nsw i64 %50, %51
  %add.ptr22 = getelementptr inbounds double, ptr %add.ptr20, i64 %mul21
  store ptr %add.ptr22, ptr %c21, align 8, !tbaa !9
  %52 = load ptr, ptr %psi1, align 8, !tbaa !9
  %53 = load double, ptr %52, align 8, !tbaa !13
  store double %53, ptr %conjy0_psi1, align 8, !tbaa !13
  %54 = load ptr, ptr %chi1, align 8, !tbaa !9
  %55 = load double, ptr %54, align 8, !tbaa !13
  store double %55, ptr %conjx1_chi1, align 8, !tbaa !13
  %56 = load ptr, ptr %chi1, align 8, !tbaa !9
  %57 = load double, ptr %56, align 8, !tbaa !13
  store double %57, ptr %conjx0_chi1, align 8, !tbaa !13
  %58 = load double, ptr %alpha0, align 8, !tbaa !13
  %59 = load double, ptr %conjy0_psi1, align 8, !tbaa !13
  %mul23 = fmul double %58, %59
  store double %mul23, ptr %alpha0_psi1, align 8, !tbaa !13
  %60 = load double, ptr %alpha1, align 8, !tbaa !13
  %61 = load double, ptr %conjx1_chi1, align 8, !tbaa !13
  %mul24 = fmul double %60, %61
  store double %mul24, ptr %alpha1_chi1, align 8, !tbaa !13
  %62 = load double, ptr %alpha0_psi1, align 8, !tbaa !13
  %63 = load double, ptr %conjx0_chi1, align 8, !tbaa !13
  %mul25 = fmul double %62, %63
  store double %mul25, ptr %alpha0_chi1_psi1, align 8, !tbaa !13
  %64 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %65 = load i32, ptr %conj0, align 4, !tbaa !4
  %66 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %67 = load ptr, ptr %x2, align 8, !tbaa !9
  %68 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %69 = load ptr, ptr %c21, align 8, !tbaa !9
  %70 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %71 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %64(i32 noundef %65, i64 noundef %66, ptr noundef %alpha0_psi1, ptr noundef %67, i64 noundef %68, ptr noundef %69, i64 noundef %70, ptr noundef %71)
  %72 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %73 = load i32, ptr %conj1, align 4, !tbaa !4
  %74 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %75 = load ptr, ptr %y2, align 8, !tbaa !9
  %76 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %77 = load ptr, ptr %c21, align 8, !tbaa !9
  %78 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %79 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %72(i32 noundef %73, i64 noundef %74, ptr noundef %alpha1_chi1, ptr noundef %75, i64 noundef %76, ptr noundef %77, i64 noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %81 = load double, ptr %80, align 8, !tbaa !13
  %82 = load double, ptr %alpha0_chi1_psi1, align 8, !tbaa !13
  %add26 = fadd double %81, %82
  %83 = load ptr, ptr %gamma11, align 8, !tbaa !9
  store double %add26, ptr %83, align 8, !tbaa !13
  %84 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %85 = load double, ptr %84, align 8, !tbaa !13
  %86 = load double, ptr %alpha0_chi1_psi1, align 8, !tbaa !13
  %add27 = fadd double %85, %86
  %87 = load ptr, ptr %gamma11, align 8, !tbaa !9
  store double %add27, ptr %87, align 8, !tbaa !13
  %88 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call28 = call zeroext i1 @bli_is_conj(i32 noundef %88)
  br i1 %call28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %89 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %89, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cher2_unb_var4(i32 noundef %uplo, i32 noundef %conjx, i32 noundef %conjy, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %chi1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %y2 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %c21 = alloca ptr, align 8
  %alpha0 = alloca %struct.scomplex, align 4
  %alpha1 = alloca %struct.scomplex, align 4
  %alpha0_psi1 = alloca %struct.scomplex, align 4
  %alpha1_chi1 = alloca %struct.scomplex, align 4
  %alpha0_chi1_psi1 = alloca %struct.scomplex, align 4
  %conjy0_psi1 = alloca %struct.scomplex, align 4
  %conjx1_chi1 = alloca %struct.scomplex, align 4
  %conjx0_chi1 = alloca %struct.scomplex, align 4
  %i = alloca i64, align 8
  %n_ahead = alloca i64, align 8
  %rs_ct = alloca i64, align 8
  %cs_ct = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %conjh_conjx = alloca i32, align 4
  %conjh_conjy = alloca i32, align 4
  %kfp_av = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjy) #3
  %0 = load i32, ptr %conjh_conjx, align 4, !tbaa !4
  %1 = load i32, ptr %conjh_conjy, align 4, !tbaa !4
  %2 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_is_lower(i32 noundef %2)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %3, ptr %rs_ct, align 8, !tbaa !7
  %4 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %4, ptr %cs_ct, align 8, !tbaa !7
  %5 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %5, i32 0, i32 0
  %6 = load float, ptr %real, align 4, !tbaa !15
  %real1 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 0
  store float %6, ptr %real1, align 4, !tbaa !15
  %7 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %7, i32 0, i32 1
  %8 = load float, ptr %imag, align 4, !tbaa !17
  %imag2 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 1
  store float %8, ptr %imag2, align 4, !tbaa !17
  %9 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real3 = getelementptr inbounds %struct.scomplex, ptr %9, i32 0, i32 0
  %10 = load float, ptr %real3, align 4, !tbaa !15
  %real4 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 0
  store float %10, ptr %real4, align 4, !tbaa !15
  %11 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call5 = call zeroext i1 @bli_is_conj(i32 noundef %11)
  br i1 %call5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag6 = getelementptr inbounds %struct.scomplex, ptr %12, i32 0, i32 1
  %13 = load float, ptr %imag6, align 4, !tbaa !17
  %fneg = fneg float %13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag7 = getelementptr inbounds %struct.scomplex, ptr %14, i32 0, i32 1
  %15 = load float, ptr %imag7, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %fneg, %cond.true ], [ %15, %cond.false ]
  %imag8 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 1
  store float %cond, ptr %imag8, align 4, !tbaa !17
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %16, ptr %rs_ct, align 8, !tbaa !7
  %17 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %17, ptr %cs_ct, align 8, !tbaa !7
  %18 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %19 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call9 = call i32 @bli_apply_conj(i32 noundef %18, i32 noundef %19)
  store i32 %call9, ptr %conjx.addr, align 4, !tbaa !4
  %20 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %21 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call10 = call i32 @bli_apply_conj(i32 noundef %20, i32 noundef %21)
  store i32 %call10, ptr %conjy.addr, align 4, !tbaa !4
  %22 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real11 = getelementptr inbounds %struct.scomplex, ptr %22, i32 0, i32 0
  %23 = load float, ptr %real11, align 4, !tbaa !15
  %real12 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 0
  store float %23, ptr %real12, align 4, !tbaa !15
  %24 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call13 = call zeroext i1 @bli_is_conj(i32 noundef %24)
  br i1 %call13, label %cond.true14, label %cond.false17

cond.true14:                                      ; preds = %if.else
  %25 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag15 = getelementptr inbounds %struct.scomplex, ptr %25, i32 0, i32 1
  %26 = load float, ptr %imag15, align 4, !tbaa !17
  %fneg16 = fneg float %26
  br label %cond.end19

cond.false17:                                     ; preds = %if.else
  %27 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag18 = getelementptr inbounds %struct.scomplex, ptr %27, i32 0, i32 1
  %28 = load float, ptr %imag18, align 4, !tbaa !17
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true14
  %cond20 = phi float [ %fneg16, %cond.true14 ], [ %28, %cond.false17 ]
  %imag21 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 1
  store float %cond20, ptr %imag21, align 4, !tbaa !17
  %29 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real22 = getelementptr inbounds %struct.scomplex, ptr %29, i32 0, i32 0
  %30 = load float, ptr %real22, align 4, !tbaa !15
  %real23 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 0
  store float %30, ptr %real23, align 4, !tbaa !15
  %31 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag24 = getelementptr inbounds %struct.scomplex, ptr %31, i32 0, i32 1
  %32 = load float, ptr %imag24, align 4, !tbaa !17
  %imag25 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 1
  store float %32, ptr %imag25, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %cond.end19, %cond.end
  %33 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %33, ptr %conj0, align 4, !tbaa !4
  %34 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %34, ptr %conj1, align 4, !tbaa !4
  %35 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %36 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call26 = call i32 @bli_apply_conj(i32 noundef %35, i32 noundef %36)
  store i32 %call26, ptr %conjh_conjx, align 4, !tbaa !4
  %37 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %38 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call27 = call i32 @bli_apply_conj(i32 noundef %37, i32 noundef %38)
  store i32 %call27, ptr %conjh_conjy, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %39 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call28 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 4, ptr noundef %39)
  store ptr %call28, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i64, ptr %i, align 8, !tbaa !7
  %41 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %40, %41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i64, ptr %m.addr, align 8, !tbaa !7
  %43 = load i64, ptr %i, align 8, !tbaa !7
  %sub = sub nsw i64 %42, %43
  %sub29 = sub nsw i64 %sub, 1
  store i64 %sub29, ptr %n_ahead, align 8, !tbaa !7
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %i, align 8, !tbaa !7
  %46 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %45, %46
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %44, i64 %mul
  store ptr %add.ptr, ptr %chi1, align 8, !tbaa !9
  %47 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %48 = load i64, ptr %i, align 8, !tbaa !7
  %add = add nsw i64 %48, 1
  %49 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul30 = mul nsw i64 %add, %49
  %add.ptr31 = getelementptr inbounds %struct.scomplex, ptr %47, i64 %mul30
  store ptr %add.ptr31, ptr %x2, align 8, !tbaa !9
  %50 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %51 = load i64, ptr %i, align 8, !tbaa !7
  %52 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul32 = mul nsw i64 %51, %52
  %add.ptr33 = getelementptr inbounds %struct.scomplex, ptr %50, i64 %mul32
  store ptr %add.ptr33, ptr %psi1, align 8, !tbaa !9
  %53 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %54 = load i64, ptr %i, align 8, !tbaa !7
  %add34 = add nsw i64 %54, 1
  %55 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul35 = mul nsw i64 %add34, %55
  %add.ptr36 = getelementptr inbounds %struct.scomplex, ptr %53, i64 %mul35
  store ptr %add.ptr36, ptr %y2, align 8, !tbaa !9
  %56 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %57 = load i64, ptr %i, align 8, !tbaa !7
  %58 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul37 = mul nsw i64 %57, %58
  %add.ptr38 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %mul37
  %59 = load i64, ptr %i, align 8, !tbaa !7
  %60 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul39 = mul nsw i64 %59, %60
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %add.ptr38, i64 %mul39
  store ptr %add.ptr40, ptr %gamma11, align 8, !tbaa !9
  %61 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %62 = load i64, ptr %i, align 8, !tbaa !7
  %add41 = add nsw i64 %62, 1
  %63 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul42 = mul nsw i64 %add41, %63
  %add.ptr43 = getelementptr inbounds %struct.scomplex, ptr %61, i64 %mul42
  %64 = load i64, ptr %i, align 8, !tbaa !7
  %65 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul44 = mul nsw i64 %64, %65
  %add.ptr45 = getelementptr inbounds %struct.scomplex, ptr %add.ptr43, i64 %mul44
  store ptr %add.ptr45, ptr %c21, align 8, !tbaa !9
  %66 = load ptr, ptr %psi1, align 8, !tbaa !9
  %real46 = getelementptr inbounds %struct.scomplex, ptr %66, i32 0, i32 0
  %67 = load float, ptr %real46, align 4, !tbaa !15
  %real47 = getelementptr inbounds %struct.scomplex, ptr %conjy0_psi1, i32 0, i32 0
  store float %67, ptr %real47, align 4, !tbaa !15
  %68 = load i32, ptr %conjh_conjy, align 4, !tbaa !4
  %call48 = call zeroext i1 @bli_is_conj(i32 noundef %68)
  br i1 %call48, label %cond.true49, label %cond.false52

cond.true49:                                      ; preds = %for.body
  %69 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag50 = getelementptr inbounds %struct.scomplex, ptr %69, i32 0, i32 1
  %70 = load float, ptr %imag50, align 4, !tbaa !17
  %fneg51 = fneg float %70
  br label %cond.end54

cond.false52:                                     ; preds = %for.body
  %71 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag53 = getelementptr inbounds %struct.scomplex, ptr %71, i32 0, i32 1
  %72 = load float, ptr %imag53, align 4, !tbaa !17
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false52, %cond.true49
  %cond55 = phi float [ %fneg51, %cond.true49 ], [ %72, %cond.false52 ]
  %imag56 = getelementptr inbounds %struct.scomplex, ptr %conjy0_psi1, i32 0, i32 1
  store float %cond55, ptr %imag56, align 4, !tbaa !17
  %73 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real57 = getelementptr inbounds %struct.scomplex, ptr %73, i32 0, i32 0
  %74 = load float, ptr %real57, align 4, !tbaa !15
  %real58 = getelementptr inbounds %struct.scomplex, ptr %conjx1_chi1, i32 0, i32 0
  store float %74, ptr %real58, align 4, !tbaa !15
  %75 = load i32, ptr %conjh_conjx, align 4, !tbaa !4
  %call59 = call zeroext i1 @bli_is_conj(i32 noundef %75)
  br i1 %call59, label %cond.true60, label %cond.false63

cond.true60:                                      ; preds = %cond.end54
  %76 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag61 = getelementptr inbounds %struct.scomplex, ptr %76, i32 0, i32 1
  %77 = load float, ptr %imag61, align 4, !tbaa !17
  %fneg62 = fneg float %77
  br label %cond.end65

cond.false63:                                     ; preds = %cond.end54
  %78 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag64 = getelementptr inbounds %struct.scomplex, ptr %78, i32 0, i32 1
  %79 = load float, ptr %imag64, align 4, !tbaa !17
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false63, %cond.true60
  %cond66 = phi float [ %fneg62, %cond.true60 ], [ %79, %cond.false63 ]
  %imag67 = getelementptr inbounds %struct.scomplex, ptr %conjx1_chi1, i32 0, i32 1
  store float %cond66, ptr %imag67, align 4, !tbaa !17
  %80 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real68 = getelementptr inbounds %struct.scomplex, ptr %80, i32 0, i32 0
  %81 = load float, ptr %real68, align 4, !tbaa !15
  %real69 = getelementptr inbounds %struct.scomplex, ptr %conjx0_chi1, i32 0, i32 0
  store float %81, ptr %real69, align 4, !tbaa !15
  %82 = load i32, ptr %conj0, align 4, !tbaa !4
  %call70 = call zeroext i1 @bli_is_conj(i32 noundef %82)
  br i1 %call70, label %cond.true71, label %cond.false74

cond.true71:                                      ; preds = %cond.end65
  %83 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag72 = getelementptr inbounds %struct.scomplex, ptr %83, i32 0, i32 1
  %84 = load float, ptr %imag72, align 4, !tbaa !17
  %fneg73 = fneg float %84
  br label %cond.end76

cond.false74:                                     ; preds = %cond.end65
  %85 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag75 = getelementptr inbounds %struct.scomplex, ptr %85, i32 0, i32 1
  %86 = load float, ptr %imag75, align 4, !tbaa !17
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false74, %cond.true71
  %cond77 = phi float [ %fneg73, %cond.true71 ], [ %86, %cond.false74 ]
  %imag78 = getelementptr inbounds %struct.scomplex, ptr %conjx0_chi1, i32 0, i32 1
  store float %cond77, ptr %imag78, align 4, !tbaa !17
  %real79 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 0
  %87 = load float, ptr %real79, align 4, !tbaa !15
  %real80 = getelementptr inbounds %struct.scomplex, ptr %conjy0_psi1, i32 0, i32 0
  %88 = load float, ptr %real80, align 4, !tbaa !15
  %imag82 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 1
  %89 = load float, ptr %imag82, align 4, !tbaa !17
  %imag83 = getelementptr inbounds %struct.scomplex, ptr %conjy0_psi1, i32 0, i32 1
  %90 = load float, ptr %imag83, align 4, !tbaa !17
  %mul84 = fmul float %89, %90
  %neg = fneg float %mul84
  %91 = call float @llvm.fmuladd.f32(float %87, float %88, float %neg)
  %real85 = getelementptr inbounds %struct.scomplex, ptr %alpha0_psi1, i32 0, i32 0
  store float %91, ptr %real85, align 4, !tbaa !15
  %imag86 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 1
  %92 = load float, ptr %imag86, align 4, !tbaa !17
  %real87 = getelementptr inbounds %struct.scomplex, ptr %conjy0_psi1, i32 0, i32 0
  %93 = load float, ptr %real87, align 4, !tbaa !15
  %real89 = getelementptr inbounds %struct.scomplex, ptr %alpha0, i32 0, i32 0
  %94 = load float, ptr %real89, align 4, !tbaa !15
  %imag90 = getelementptr inbounds %struct.scomplex, ptr %conjy0_psi1, i32 0, i32 1
  %95 = load float, ptr %imag90, align 4, !tbaa !17
  %mul91 = fmul float %94, %95
  %96 = call float @llvm.fmuladd.f32(float %92, float %93, float %mul91)
  %imag92 = getelementptr inbounds %struct.scomplex, ptr %alpha0_psi1, i32 0, i32 1
  store float %96, ptr %imag92, align 4, !tbaa !17
  %real93 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 0
  %97 = load float, ptr %real93, align 4, !tbaa !15
  %real94 = getelementptr inbounds %struct.scomplex, ptr %conjx1_chi1, i32 0, i32 0
  %98 = load float, ptr %real94, align 4, !tbaa !15
  %imag96 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 1
  %99 = load float, ptr %imag96, align 4, !tbaa !17
  %imag97 = getelementptr inbounds %struct.scomplex, ptr %conjx1_chi1, i32 0, i32 1
  %100 = load float, ptr %imag97, align 4, !tbaa !17
  %mul98 = fmul float %99, %100
  %neg99 = fneg float %mul98
  %101 = call float @llvm.fmuladd.f32(float %97, float %98, float %neg99)
  %real100 = getelementptr inbounds %struct.scomplex, ptr %alpha1_chi1, i32 0, i32 0
  store float %101, ptr %real100, align 4, !tbaa !15
  %imag101 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 1
  %102 = load float, ptr %imag101, align 4, !tbaa !17
  %real102 = getelementptr inbounds %struct.scomplex, ptr %conjx1_chi1, i32 0, i32 0
  %103 = load float, ptr %real102, align 4, !tbaa !15
  %real104 = getelementptr inbounds %struct.scomplex, ptr %alpha1, i32 0, i32 0
  %104 = load float, ptr %real104, align 4, !tbaa !15
  %imag105 = getelementptr inbounds %struct.scomplex, ptr %conjx1_chi1, i32 0, i32 1
  %105 = load float, ptr %imag105, align 4, !tbaa !17
  %mul106 = fmul float %104, %105
  %106 = call float @llvm.fmuladd.f32(float %102, float %103, float %mul106)
  %imag107 = getelementptr inbounds %struct.scomplex, ptr %alpha1_chi1, i32 0, i32 1
  store float %106, ptr %imag107, align 4, !tbaa !17
  %real108 = getelementptr inbounds %struct.scomplex, ptr %alpha0_psi1, i32 0, i32 0
  %107 = load float, ptr %real108, align 4, !tbaa !15
  %real109 = getelementptr inbounds %struct.scomplex, ptr %conjx0_chi1, i32 0, i32 0
  %108 = load float, ptr %real109, align 4, !tbaa !15
  %imag111 = getelementptr inbounds %struct.scomplex, ptr %alpha0_psi1, i32 0, i32 1
  %109 = load float, ptr %imag111, align 4, !tbaa !17
  %imag112 = getelementptr inbounds %struct.scomplex, ptr %conjx0_chi1, i32 0, i32 1
  %110 = load float, ptr %imag112, align 4, !tbaa !17
  %mul113 = fmul float %109, %110
  %neg114 = fneg float %mul113
  %111 = call float @llvm.fmuladd.f32(float %107, float %108, float %neg114)
  %real115 = getelementptr inbounds %struct.scomplex, ptr %alpha0_chi1_psi1, i32 0, i32 0
  store float %111, ptr %real115, align 4, !tbaa !15
  %imag116 = getelementptr inbounds %struct.scomplex, ptr %alpha0_psi1, i32 0, i32 1
  %112 = load float, ptr %imag116, align 4, !tbaa !17
  %real117 = getelementptr inbounds %struct.scomplex, ptr %conjx0_chi1, i32 0, i32 0
  %113 = load float, ptr %real117, align 4, !tbaa !15
  %real119 = getelementptr inbounds %struct.scomplex, ptr %alpha0_psi1, i32 0, i32 0
  %114 = load float, ptr %real119, align 4, !tbaa !15
  %imag120 = getelementptr inbounds %struct.scomplex, ptr %conjx0_chi1, i32 0, i32 1
  %115 = load float, ptr %imag120, align 4, !tbaa !17
  %mul121 = fmul float %114, %115
  %116 = call float @llvm.fmuladd.f32(float %112, float %113, float %mul121)
  %imag122 = getelementptr inbounds %struct.scomplex, ptr %alpha0_chi1_psi1, i32 0, i32 1
  store float %116, ptr %imag122, align 4, !tbaa !17
  %117 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %118 = load i32, ptr %conj0, align 4, !tbaa !4
  %119 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %120 = load ptr, ptr %x2, align 8, !tbaa !9
  %121 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %122 = load ptr, ptr %c21, align 8, !tbaa !9
  %123 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %124 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %117(i32 noundef %118, i64 noundef %119, ptr noundef %alpha0_psi1, ptr noundef %120, i64 noundef %121, ptr noundef %122, i64 noundef %123, ptr noundef %124)
  %125 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %126 = load i32, ptr %conj1, align 4, !tbaa !4
  %127 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %128 = load ptr, ptr %y2, align 8, !tbaa !9
  %129 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %130 = load ptr, ptr %c21, align 8, !tbaa !9
  %131 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %132 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %125(i32 noundef %126, i64 noundef %127, ptr noundef %alpha1_chi1, ptr noundef %128, i64 noundef %129, ptr noundef %130, i64 noundef %131, ptr noundef %132)
  %133 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real123 = getelementptr inbounds %struct.scomplex, ptr %133, i32 0, i32 0
  %134 = load float, ptr %real123, align 4, !tbaa !15
  %real124 = getelementptr inbounds %struct.scomplex, ptr %alpha0_chi1_psi1, i32 0, i32 0
  %135 = load float, ptr %real124, align 4, !tbaa !15
  %add125 = fadd float %134, %135
  %136 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real126 = getelementptr inbounds %struct.scomplex, ptr %136, i32 0, i32 0
  store float %add125, ptr %real126, align 4, !tbaa !15
  %137 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag127 = getelementptr inbounds %struct.scomplex, ptr %137, i32 0, i32 1
  %138 = load float, ptr %imag127, align 4, !tbaa !17
  %imag128 = getelementptr inbounds %struct.scomplex, ptr %alpha0_chi1_psi1, i32 0, i32 1
  %139 = load float, ptr %imag128, align 4, !tbaa !17
  %add129 = fadd float %138, %139
  %140 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag130 = getelementptr inbounds %struct.scomplex, ptr %140, i32 0, i32 1
  store float %add129, ptr %imag130, align 4, !tbaa !17
  %141 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real131 = getelementptr inbounds %struct.scomplex, ptr %141, i32 0, i32 0
  %142 = load float, ptr %real131, align 4, !tbaa !15
  %real132 = getelementptr inbounds %struct.scomplex, ptr %alpha0_chi1_psi1, i32 0, i32 0
  %143 = load float, ptr %real132, align 4, !tbaa !15
  %add133 = fadd float %142, %143
  %144 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real134 = getelementptr inbounds %struct.scomplex, ptr %144, i32 0, i32 0
  store float %add133, ptr %real134, align 4, !tbaa !15
  %145 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag135 = getelementptr inbounds %struct.scomplex, ptr %145, i32 0, i32 1
  %146 = load float, ptr %imag135, align 4, !tbaa !17
  %imag136 = getelementptr inbounds %struct.scomplex, ptr %alpha0_chi1_psi1, i32 0, i32 1
  %147 = load float, ptr %imag136, align 4, !tbaa !17
  %add137 = fadd float %146, %147
  %148 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag138 = getelementptr inbounds %struct.scomplex, ptr %148, i32 0, i32 1
  store float %add137, ptr %imag138, align 4, !tbaa !17
  %149 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call139 = call zeroext i1 @bli_is_conj(i32 noundef %149)
  br i1 %call139, label %if.then140, label %if.end142

if.then140:                                       ; preds = %cond.end76
  %150 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag141 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 1
  store float 0.000000e+00, ptr %imag141, align 4, !tbaa !17
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %cond.end76
  br label %for.inc

for.inc:                                          ; preds = %if.end142
  %151 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %151, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_zher2_unb_var4(i32 noundef %uplo, i32 noundef %conjx, i32 noundef %conjy, i32 noundef %conjh, i64 noundef %m, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %c, i64 noundef %rs_c, i64 noundef %cs_c, ptr noundef %cntx) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %conjh.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %chi1 = alloca ptr, align 8
  %x2 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %y2 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %c21 = alloca ptr, align 8
  %alpha0 = alloca %struct.dcomplex, align 8
  %alpha1 = alloca %struct.dcomplex, align 8
  %alpha0_psi1 = alloca %struct.dcomplex, align 8
  %alpha1_chi1 = alloca %struct.dcomplex, align 8
  %alpha0_chi1_psi1 = alloca %struct.dcomplex, align 8
  %conjy0_psi1 = alloca %struct.dcomplex, align 8
  %conjx1_chi1 = alloca %struct.dcomplex, align 8
  %conjx0_chi1 = alloca %struct.dcomplex, align 8
  %i = alloca i64, align 8
  %n_ahead = alloca i64, align 8
  %rs_ct = alloca i64, align 8
  %cs_ct = alloca i64, align 8
  %conj0 = alloca i32, align 4
  %conj1 = alloca i32, align 4
  %conjh_conjx = alloca i32, align 4
  %conjh_conjy = alloca i32, align 4
  %kfp_av = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %conjh, ptr %conjh.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha0) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjh_conjy) #3
  %0 = load i32, ptr %conjh_conjx, align 4, !tbaa !4
  %1 = load i32, ptr %conjh_conjy, align 4, !tbaa !4
  %2 = load i32, ptr %uplo.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_is_lower(i32 noundef %2)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %3, ptr %rs_ct, align 8, !tbaa !7
  %4 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %4, ptr %cs_ct, align 8, !tbaa !7
  %5 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %5, i32 0, i32 0
  %6 = load double, ptr %real, align 8, !tbaa !18
  %real1 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 0
  store double %6, ptr %real1, align 8, !tbaa !18
  %7 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %7, i32 0, i32 1
  %8 = load double, ptr %imag, align 8, !tbaa !20
  %imag2 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 1
  store double %8, ptr %imag2, align 8, !tbaa !20
  %9 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real3 = getelementptr inbounds %struct.dcomplex, ptr %9, i32 0, i32 0
  %10 = load double, ptr %real3, align 8, !tbaa !18
  %real4 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 0
  store double %10, ptr %real4, align 8, !tbaa !18
  %11 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call5 = call zeroext i1 @bli_is_conj(i32 noundef %11)
  br i1 %call5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag6 = getelementptr inbounds %struct.dcomplex, ptr %12, i32 0, i32 1
  %13 = load double, ptr %imag6, align 8, !tbaa !20
  %fneg = fneg double %13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag7 = getelementptr inbounds %struct.dcomplex, ptr %14, i32 0, i32 1
  %15 = load double, ptr %imag7, align 8, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %15, %cond.false ]
  %imag8 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 1
  store double %cond, ptr %imag8, align 8, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i64, ptr %cs_c.addr, align 8, !tbaa !7
  store i64 %16, ptr %rs_ct, align 8, !tbaa !7
  %17 = load i64, ptr %rs_c.addr, align 8, !tbaa !7
  store i64 %17, ptr %cs_ct, align 8, !tbaa !7
  %18 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %19 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call9 = call i32 @bli_apply_conj(i32 noundef %18, i32 noundef %19)
  store i32 %call9, ptr %conjx.addr, align 4, !tbaa !4
  %20 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %21 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call10 = call i32 @bli_apply_conj(i32 noundef %20, i32 noundef %21)
  store i32 %call10, ptr %conjy.addr, align 4, !tbaa !4
  %22 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real11 = getelementptr inbounds %struct.dcomplex, ptr %22, i32 0, i32 0
  %23 = load double, ptr %real11, align 8, !tbaa !18
  %real12 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 0
  store double %23, ptr %real12, align 8, !tbaa !18
  %24 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call13 = call zeroext i1 @bli_is_conj(i32 noundef %24)
  br i1 %call13, label %cond.true14, label %cond.false17

cond.true14:                                      ; preds = %if.else
  %25 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag15 = getelementptr inbounds %struct.dcomplex, ptr %25, i32 0, i32 1
  %26 = load double, ptr %imag15, align 8, !tbaa !20
  %fneg16 = fneg double %26
  br label %cond.end19

cond.false17:                                     ; preds = %if.else
  %27 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag18 = getelementptr inbounds %struct.dcomplex, ptr %27, i32 0, i32 1
  %28 = load double, ptr %imag18, align 8, !tbaa !20
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true14
  %cond20 = phi double [ %fneg16, %cond.true14 ], [ %28, %cond.false17 ]
  %imag21 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 1
  store double %cond20, ptr %imag21, align 8, !tbaa !20
  %29 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real22 = getelementptr inbounds %struct.dcomplex, ptr %29, i32 0, i32 0
  %30 = load double, ptr %real22, align 8, !tbaa !18
  %real23 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 0
  store double %30, ptr %real23, align 8, !tbaa !18
  %31 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag24 = getelementptr inbounds %struct.dcomplex, ptr %31, i32 0, i32 1
  %32 = load double, ptr %imag24, align 8, !tbaa !20
  %imag25 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 1
  store double %32, ptr %imag25, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %cond.end19, %cond.end
  %33 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %33, ptr %conj0, align 4, !tbaa !4
  %34 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  store i32 %34, ptr %conj1, align 4, !tbaa !4
  %35 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %36 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call26 = call i32 @bli_apply_conj(i32 noundef %35, i32 noundef %36)
  store i32 %call26, ptr %conjh_conjx, align 4, !tbaa !4
  %37 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %38 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %call27 = call i32 @bli_apply_conj(i32 noundef %37, i32 noundef %38)
  store i32 %call27, ptr %conjh_conjy, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %39 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call28 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 4, ptr noundef %39)
  store ptr %call28, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i64, ptr %i, align 8, !tbaa !7
  %41 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %40, %41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i64, ptr %m.addr, align 8, !tbaa !7
  %43 = load i64, ptr %i, align 8, !tbaa !7
  %sub = sub nsw i64 %42, %43
  %sub29 = sub nsw i64 %sub, 1
  store i64 %sub29, ptr %n_ahead, align 8, !tbaa !7
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %i, align 8, !tbaa !7
  %46 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %45, %46
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %44, i64 %mul
  store ptr %add.ptr, ptr %chi1, align 8, !tbaa !9
  %47 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %48 = load i64, ptr %i, align 8, !tbaa !7
  %add = add nsw i64 %48, 1
  %49 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul30 = mul nsw i64 %add, %49
  %add.ptr31 = getelementptr inbounds %struct.dcomplex, ptr %47, i64 %mul30
  store ptr %add.ptr31, ptr %x2, align 8, !tbaa !9
  %50 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %51 = load i64, ptr %i, align 8, !tbaa !7
  %52 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul32 = mul nsw i64 %51, %52
  %add.ptr33 = getelementptr inbounds %struct.dcomplex, ptr %50, i64 %mul32
  store ptr %add.ptr33, ptr %psi1, align 8, !tbaa !9
  %53 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %54 = load i64, ptr %i, align 8, !tbaa !7
  %add34 = add nsw i64 %54, 1
  %55 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul35 = mul nsw i64 %add34, %55
  %add.ptr36 = getelementptr inbounds %struct.dcomplex, ptr %53, i64 %mul35
  store ptr %add.ptr36, ptr %y2, align 8, !tbaa !9
  %56 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %57 = load i64, ptr %i, align 8, !tbaa !7
  %58 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul37 = mul nsw i64 %57, %58
  %add.ptr38 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %mul37
  %59 = load i64, ptr %i, align 8, !tbaa !7
  %60 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul39 = mul nsw i64 %59, %60
  %add.ptr40 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr38, i64 %mul39
  store ptr %add.ptr40, ptr %gamma11, align 8, !tbaa !9
  %61 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %62 = load i64, ptr %i, align 8, !tbaa !7
  %add41 = add nsw i64 %62, 1
  %63 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %mul42 = mul nsw i64 %add41, %63
  %add.ptr43 = getelementptr inbounds %struct.dcomplex, ptr %61, i64 %mul42
  %64 = load i64, ptr %i, align 8, !tbaa !7
  %65 = load i64, ptr %cs_ct, align 8, !tbaa !7
  %mul44 = mul nsw i64 %64, %65
  %add.ptr45 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr43, i64 %mul44
  store ptr %add.ptr45, ptr %c21, align 8, !tbaa !9
  %66 = load ptr, ptr %psi1, align 8, !tbaa !9
  %real46 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 0
  %67 = load double, ptr %real46, align 8, !tbaa !18
  %real47 = getelementptr inbounds %struct.dcomplex, ptr %conjy0_psi1, i32 0, i32 0
  store double %67, ptr %real47, align 8, !tbaa !18
  %68 = load i32, ptr %conjh_conjy, align 4, !tbaa !4
  %call48 = call zeroext i1 @bli_is_conj(i32 noundef %68)
  br i1 %call48, label %cond.true49, label %cond.false52

cond.true49:                                      ; preds = %for.body
  %69 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag50 = getelementptr inbounds %struct.dcomplex, ptr %69, i32 0, i32 1
  %70 = load double, ptr %imag50, align 8, !tbaa !20
  %fneg51 = fneg double %70
  br label %cond.end54

cond.false52:                                     ; preds = %for.body
  %71 = load ptr, ptr %psi1, align 8, !tbaa !9
  %imag53 = getelementptr inbounds %struct.dcomplex, ptr %71, i32 0, i32 1
  %72 = load double, ptr %imag53, align 8, !tbaa !20
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false52, %cond.true49
  %cond55 = phi double [ %fneg51, %cond.true49 ], [ %72, %cond.false52 ]
  %imag56 = getelementptr inbounds %struct.dcomplex, ptr %conjy0_psi1, i32 0, i32 1
  store double %cond55, ptr %imag56, align 8, !tbaa !20
  %73 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real57 = getelementptr inbounds %struct.dcomplex, ptr %73, i32 0, i32 0
  %74 = load double, ptr %real57, align 8, !tbaa !18
  %real58 = getelementptr inbounds %struct.dcomplex, ptr %conjx1_chi1, i32 0, i32 0
  store double %74, ptr %real58, align 8, !tbaa !18
  %75 = load i32, ptr %conjh_conjx, align 4, !tbaa !4
  %call59 = call zeroext i1 @bli_is_conj(i32 noundef %75)
  br i1 %call59, label %cond.true60, label %cond.false63

cond.true60:                                      ; preds = %cond.end54
  %76 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag61 = getelementptr inbounds %struct.dcomplex, ptr %76, i32 0, i32 1
  %77 = load double, ptr %imag61, align 8, !tbaa !20
  %fneg62 = fneg double %77
  br label %cond.end65

cond.false63:                                     ; preds = %cond.end54
  %78 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag64 = getelementptr inbounds %struct.dcomplex, ptr %78, i32 0, i32 1
  %79 = load double, ptr %imag64, align 8, !tbaa !20
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false63, %cond.true60
  %cond66 = phi double [ %fneg62, %cond.true60 ], [ %79, %cond.false63 ]
  %imag67 = getelementptr inbounds %struct.dcomplex, ptr %conjx1_chi1, i32 0, i32 1
  store double %cond66, ptr %imag67, align 8, !tbaa !20
  %80 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real68 = getelementptr inbounds %struct.dcomplex, ptr %80, i32 0, i32 0
  %81 = load double, ptr %real68, align 8, !tbaa !18
  %real69 = getelementptr inbounds %struct.dcomplex, ptr %conjx0_chi1, i32 0, i32 0
  store double %81, ptr %real69, align 8, !tbaa !18
  %82 = load i32, ptr %conj0, align 4, !tbaa !4
  %call70 = call zeroext i1 @bli_is_conj(i32 noundef %82)
  br i1 %call70, label %cond.true71, label %cond.false74

cond.true71:                                      ; preds = %cond.end65
  %83 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag72 = getelementptr inbounds %struct.dcomplex, ptr %83, i32 0, i32 1
  %84 = load double, ptr %imag72, align 8, !tbaa !20
  %fneg73 = fneg double %84
  br label %cond.end76

cond.false74:                                     ; preds = %cond.end65
  %85 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag75 = getelementptr inbounds %struct.dcomplex, ptr %85, i32 0, i32 1
  %86 = load double, ptr %imag75, align 8, !tbaa !20
  br label %cond.end76

cond.end76:                                       ; preds = %cond.false74, %cond.true71
  %cond77 = phi double [ %fneg73, %cond.true71 ], [ %86, %cond.false74 ]
  %imag78 = getelementptr inbounds %struct.dcomplex, ptr %conjx0_chi1, i32 0, i32 1
  store double %cond77, ptr %imag78, align 8, !tbaa !20
  %real79 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 0
  %87 = load double, ptr %real79, align 8, !tbaa !18
  %real80 = getelementptr inbounds %struct.dcomplex, ptr %conjy0_psi1, i32 0, i32 0
  %88 = load double, ptr %real80, align 8, !tbaa !18
  %imag82 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 1
  %89 = load double, ptr %imag82, align 8, !tbaa !20
  %imag83 = getelementptr inbounds %struct.dcomplex, ptr %conjy0_psi1, i32 0, i32 1
  %90 = load double, ptr %imag83, align 8, !tbaa !20
  %mul84 = fmul double %89, %90
  %neg = fneg double %mul84
  %91 = call double @llvm.fmuladd.f64(double %87, double %88, double %neg)
  %real85 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_psi1, i32 0, i32 0
  store double %91, ptr %real85, align 8, !tbaa !18
  %imag86 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 1
  %92 = load double, ptr %imag86, align 8, !tbaa !20
  %real87 = getelementptr inbounds %struct.dcomplex, ptr %conjy0_psi1, i32 0, i32 0
  %93 = load double, ptr %real87, align 8, !tbaa !18
  %real89 = getelementptr inbounds %struct.dcomplex, ptr %alpha0, i32 0, i32 0
  %94 = load double, ptr %real89, align 8, !tbaa !18
  %imag90 = getelementptr inbounds %struct.dcomplex, ptr %conjy0_psi1, i32 0, i32 1
  %95 = load double, ptr %imag90, align 8, !tbaa !20
  %mul91 = fmul double %94, %95
  %96 = call double @llvm.fmuladd.f64(double %92, double %93, double %mul91)
  %imag92 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_psi1, i32 0, i32 1
  store double %96, ptr %imag92, align 8, !tbaa !20
  %real93 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 0
  %97 = load double, ptr %real93, align 8, !tbaa !18
  %real94 = getelementptr inbounds %struct.dcomplex, ptr %conjx1_chi1, i32 0, i32 0
  %98 = load double, ptr %real94, align 8, !tbaa !18
  %imag96 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 1
  %99 = load double, ptr %imag96, align 8, !tbaa !20
  %imag97 = getelementptr inbounds %struct.dcomplex, ptr %conjx1_chi1, i32 0, i32 1
  %100 = load double, ptr %imag97, align 8, !tbaa !20
  %mul98 = fmul double %99, %100
  %neg99 = fneg double %mul98
  %101 = call double @llvm.fmuladd.f64(double %97, double %98, double %neg99)
  %real100 = getelementptr inbounds %struct.dcomplex, ptr %alpha1_chi1, i32 0, i32 0
  store double %101, ptr %real100, align 8, !tbaa !18
  %imag101 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 1
  %102 = load double, ptr %imag101, align 8, !tbaa !20
  %real102 = getelementptr inbounds %struct.dcomplex, ptr %conjx1_chi1, i32 0, i32 0
  %103 = load double, ptr %real102, align 8, !tbaa !18
  %real104 = getelementptr inbounds %struct.dcomplex, ptr %alpha1, i32 0, i32 0
  %104 = load double, ptr %real104, align 8, !tbaa !18
  %imag105 = getelementptr inbounds %struct.dcomplex, ptr %conjx1_chi1, i32 0, i32 1
  %105 = load double, ptr %imag105, align 8, !tbaa !20
  %mul106 = fmul double %104, %105
  %106 = call double @llvm.fmuladd.f64(double %102, double %103, double %mul106)
  %imag107 = getelementptr inbounds %struct.dcomplex, ptr %alpha1_chi1, i32 0, i32 1
  store double %106, ptr %imag107, align 8, !tbaa !20
  %real108 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_psi1, i32 0, i32 0
  %107 = load double, ptr %real108, align 8, !tbaa !18
  %real109 = getelementptr inbounds %struct.dcomplex, ptr %conjx0_chi1, i32 0, i32 0
  %108 = load double, ptr %real109, align 8, !tbaa !18
  %imag111 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_psi1, i32 0, i32 1
  %109 = load double, ptr %imag111, align 8, !tbaa !20
  %imag112 = getelementptr inbounds %struct.dcomplex, ptr %conjx0_chi1, i32 0, i32 1
  %110 = load double, ptr %imag112, align 8, !tbaa !20
  %mul113 = fmul double %109, %110
  %neg114 = fneg double %mul113
  %111 = call double @llvm.fmuladd.f64(double %107, double %108, double %neg114)
  %real115 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_chi1_psi1, i32 0, i32 0
  store double %111, ptr %real115, align 8, !tbaa !18
  %imag116 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_psi1, i32 0, i32 1
  %112 = load double, ptr %imag116, align 8, !tbaa !20
  %real117 = getelementptr inbounds %struct.dcomplex, ptr %conjx0_chi1, i32 0, i32 0
  %113 = load double, ptr %real117, align 8, !tbaa !18
  %real119 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_psi1, i32 0, i32 0
  %114 = load double, ptr %real119, align 8, !tbaa !18
  %imag120 = getelementptr inbounds %struct.dcomplex, ptr %conjx0_chi1, i32 0, i32 1
  %115 = load double, ptr %imag120, align 8, !tbaa !20
  %mul121 = fmul double %114, %115
  %116 = call double @llvm.fmuladd.f64(double %112, double %113, double %mul121)
  %imag122 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_chi1_psi1, i32 0, i32 1
  store double %116, ptr %imag122, align 8, !tbaa !20
  %117 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %118 = load i32, ptr %conj0, align 4, !tbaa !4
  %119 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %120 = load ptr, ptr %x2, align 8, !tbaa !9
  %121 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %122 = load ptr, ptr %c21, align 8, !tbaa !9
  %123 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %124 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %117(i32 noundef %118, i64 noundef %119, ptr noundef %alpha0_psi1, ptr noundef %120, i64 noundef %121, ptr noundef %122, i64 noundef %123, ptr noundef %124)
  %125 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %126 = load i32, ptr %conj1, align 4, !tbaa !4
  %127 = load i64, ptr %n_ahead, align 8, !tbaa !7
  %128 = load ptr, ptr %y2, align 8, !tbaa !9
  %129 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %130 = load ptr, ptr %c21, align 8, !tbaa !9
  %131 = load i64, ptr %rs_ct, align 8, !tbaa !7
  %132 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %125(i32 noundef %126, i64 noundef %127, ptr noundef %alpha1_chi1, ptr noundef %128, i64 noundef %129, ptr noundef %130, i64 noundef %131, ptr noundef %132)
  %133 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real123 = getelementptr inbounds %struct.dcomplex, ptr %133, i32 0, i32 0
  %134 = load double, ptr %real123, align 8, !tbaa !18
  %real124 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_chi1_psi1, i32 0, i32 0
  %135 = load double, ptr %real124, align 8, !tbaa !18
  %add125 = fadd double %134, %135
  %136 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real126 = getelementptr inbounds %struct.dcomplex, ptr %136, i32 0, i32 0
  store double %add125, ptr %real126, align 8, !tbaa !18
  %137 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag127 = getelementptr inbounds %struct.dcomplex, ptr %137, i32 0, i32 1
  %138 = load double, ptr %imag127, align 8, !tbaa !20
  %imag128 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_chi1_psi1, i32 0, i32 1
  %139 = load double, ptr %imag128, align 8, !tbaa !20
  %add129 = fadd double %138, %139
  %140 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag130 = getelementptr inbounds %struct.dcomplex, ptr %140, i32 0, i32 1
  store double %add129, ptr %imag130, align 8, !tbaa !20
  %141 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real131 = getelementptr inbounds %struct.dcomplex, ptr %141, i32 0, i32 0
  %142 = load double, ptr %real131, align 8, !tbaa !18
  %real132 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_chi1_psi1, i32 0, i32 0
  %143 = load double, ptr %real132, align 8, !tbaa !18
  %add133 = fadd double %142, %143
  %144 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %real134 = getelementptr inbounds %struct.dcomplex, ptr %144, i32 0, i32 0
  store double %add133, ptr %real134, align 8, !tbaa !18
  %145 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag135 = getelementptr inbounds %struct.dcomplex, ptr %145, i32 0, i32 1
  %146 = load double, ptr %imag135, align 8, !tbaa !20
  %imag136 = getelementptr inbounds %struct.dcomplex, ptr %alpha0_chi1_psi1, i32 0, i32 1
  %147 = load double, ptr %imag136, align 8, !tbaa !20
  %add137 = fadd double %146, %147
  %148 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag138 = getelementptr inbounds %struct.dcomplex, ptr %148, i32 0, i32 1
  store double %add137, ptr %imag138, align 8, !tbaa !20
  %149 = load i32, ptr %conjh.addr, align 4, !tbaa !4
  %call139 = call zeroext i1 @bli_is_conj(i32 noundef %149)
  br i1 %call139, label %if.then140, label %if.end142

if.then140:                                       ; preds = %cond.end76
  %150 = load ptr, ptr %gamma11, align 8, !tbaa !9
  %imag141 = getelementptr inbounds %struct.dcomplex, ptr %150, i32 0, i32 1
  store double 0.000000e+00, ptr %imag141, align 8, !tbaa !20
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %cond.end76
  br label %for.inc

for.inc:                                          ; preds = %if.end142
  %151 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %151, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjh_conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conj0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ct) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %conjx0_chi1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %conjx1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %conjy0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha0_chi1_psi1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha1_chi1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha0_psi1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1v_kers(i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_l1v_kers_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %1 = load ptr, ptr %funcs, align 8, !tbaa !9
  %2 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !9
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #3
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
define internal ptr @bli_cntx_l1v_kers_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %l1v_kers = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 13
  %arraydecay = getelementptr inbounds [15 x %struct.func_s], ptr %l1v_kers, i64 0, i64 0
  ret ptr %arraydecay
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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

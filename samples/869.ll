; ModuleID = 'samples/869.bc'
source_filename = "frame/2/ger/bli_ger_unb_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }
%struct.func_s = type { [4 x ptr] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

; Function Attrs: nounwind uwtable
define hidden void @bli_sger_unb_var1(i32 noundef %conjx, i32 noundef %conjy, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %cntx) #0 {
entry:
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %a1t = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %alpha_chi1 = alloca float, align 4
  %i = alloca i64, align 8
  %kfp_av = alloca ptr, align 8
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1t) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 4, ptr noundef %0)
  store ptr %call, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !7
  %2 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load i64, ptr %i, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds float, ptr %3, i64 %mul
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %mul1 = mul nsw i64 0, %6
  %add.ptr2 = getelementptr inbounds float, ptr %add.ptr, i64 %mul1
  store ptr %add.ptr2, ptr %a1t, align 8, !tbaa !9
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !7
  %9 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul3 = mul nsw i64 %8, %9
  %add.ptr4 = getelementptr inbounds float, ptr %7, i64 %mul3
  store ptr %add.ptr4, ptr %chi1, align 8, !tbaa !9
  %10 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %11 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul5 = mul nsw i64 0, %11
  %add.ptr6 = getelementptr inbounds float, ptr %10, i64 %mul5
  store ptr %add.ptr6, ptr %y1, align 8, !tbaa !9
  %12 = load ptr, ptr %chi1, align 8, !tbaa !9
  %13 = load float, ptr %12, align 4, !tbaa !11
  store float %13, ptr %alpha_chi1, align 4, !tbaa !11
  %14 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %15 = load float, ptr %14, align 4, !tbaa !11
  %16 = load float, ptr %alpha_chi1, align 4, !tbaa !11
  %mul7 = fmul float %15, %16
  store float %mul7, ptr %alpha_chi1, align 4, !tbaa !11
  %17 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %18 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %19 = load i64, ptr %n.addr, align 8, !tbaa !7
  %20 = load ptr, ptr %y1, align 8, !tbaa !9
  %21 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %22 = load ptr, ptr %a1t, align 8, !tbaa !9
  %23 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %24 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %alpha_chi1, ptr noundef %20, i64 noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %25, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_dger_unb_var1(i32 noundef %conjx, i32 noundef %conjy, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %cntx) #0 {
entry:
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %a1t = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %alpha_chi1 = alloca double, align 8
  %i = alloca i64, align 8
  %kfp_av = alloca ptr, align 8
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1t) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 4, ptr noundef %0)
  store ptr %call, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !7
  %2 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load i64, ptr %i, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds double, ptr %3, i64 %mul
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %mul1 = mul nsw i64 0, %6
  %add.ptr2 = getelementptr inbounds double, ptr %add.ptr, i64 %mul1
  store ptr %add.ptr2, ptr %a1t, align 8, !tbaa !9
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !7
  %9 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul3 = mul nsw i64 %8, %9
  %add.ptr4 = getelementptr inbounds double, ptr %7, i64 %mul3
  store ptr %add.ptr4, ptr %chi1, align 8, !tbaa !9
  %10 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %11 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul5 = mul nsw i64 0, %11
  %add.ptr6 = getelementptr inbounds double, ptr %10, i64 %mul5
  store ptr %add.ptr6, ptr %y1, align 8, !tbaa !9
  %12 = load ptr, ptr %chi1, align 8, !tbaa !9
  %13 = load double, ptr %12, align 8, !tbaa !13
  store double %13, ptr %alpha_chi1, align 8, !tbaa !13
  %14 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %15 = load double, ptr %14, align 8, !tbaa !13
  %16 = load double, ptr %alpha_chi1, align 8, !tbaa !13
  %mul7 = fmul double %15, %16
  store double %mul7, ptr %alpha_chi1, align 8, !tbaa !13
  %17 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %18 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %19 = load i64, ptr %n.addr, align 8, !tbaa !7
  %20 = load ptr, ptr %y1, align 8, !tbaa !9
  %21 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %22 = load ptr, ptr %a1t, align 8, !tbaa !9
  %23 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %24 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %alpha_chi1, ptr noundef %20, i64 noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %25, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cger_unb_var1(i32 noundef %conjx, i32 noundef %conjy, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %cntx) #0 {
entry:
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %a1t = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %alpha_chi1 = alloca %struct.scomplex, align 4
  %i = alloca i64, align 8
  %kfp_av = alloca ptr, align 8
  %yr = alloca float, align 4
  %yi = alloca float, align 4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1t) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 4, ptr noundef %0)
  store ptr %call, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !7
  %2 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load i64, ptr %i, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %3, i64 %mul
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %mul1 = mul nsw i64 0, %6
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul1
  store ptr %add.ptr2, ptr %a1t, align 8, !tbaa !9
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !7
  %9 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul3 = mul nsw i64 %8, %9
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %7, i64 %mul3
  store ptr %add.ptr4, ptr %chi1, align 8, !tbaa !9
  %10 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %11 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul5 = mul nsw i64 0, %11
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %10, i64 %mul5
  store ptr %add.ptr6, ptr %y1, align 8, !tbaa !9
  %12 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %12, i32 0, i32 0
  %13 = load float, ptr %real, align 4, !tbaa !15
  %real7 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  store float %13, ptr %real7, align 4, !tbaa !15
  %14 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call8 = call zeroext i1 @bli_is_conj(i32 noundef %14)
  br i1 %call8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %15, i32 0, i32 1
  %16 = load float, ptr %imag, align 4, !tbaa !17
  %fneg = fneg float %16
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %17 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag9 = getelementptr inbounds %struct.scomplex, ptr %17, i32 0, i32 1
  %18 = load float, ptr %imag9, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %fneg, %cond.true ], [ %18, %cond.false ]
  %imag10 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  store float %cond, ptr %imag10, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr) #3
  %19 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real11 = getelementptr inbounds %struct.scomplex, ptr %19, i32 0, i32 0
  %20 = load float, ptr %real11, align 4, !tbaa !15
  %real12 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  %21 = load float, ptr %real12, align 4, !tbaa !15
  %22 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag14 = getelementptr inbounds %struct.scomplex, ptr %22, i32 0, i32 1
  %23 = load float, ptr %imag14, align 4, !tbaa !17
  %imag15 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  %24 = load float, ptr %imag15, align 4, !tbaa !17
  %mul16 = fmul float %23, %24
  %neg = fneg float %mul16
  %25 = call float @llvm.fmuladd.f32(float %20, float %21, float %neg)
  store float %25, ptr %yr, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi) #3
  %26 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag17 = getelementptr inbounds %struct.scomplex, ptr %26, i32 0, i32 1
  %27 = load float, ptr %imag17, align 4, !tbaa !17
  %real18 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  %28 = load float, ptr %real18, align 4, !tbaa !15
  %29 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real20 = getelementptr inbounds %struct.scomplex, ptr %29, i32 0, i32 0
  %30 = load float, ptr %real20, align 4, !tbaa !15
  %imag21 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  %31 = load float, ptr %imag21, align 4, !tbaa !17
  %mul22 = fmul float %30, %31
  %32 = call float @llvm.fmuladd.f32(float %27, float %28, float %mul22)
  store float %32, ptr %yi, align 4, !tbaa !11
  %33 = load float, ptr %yr, align 4, !tbaa !11
  %real23 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  store float %33, ptr %real23, align 4, !tbaa !15
  %34 = load float, ptr %yi, align 4, !tbaa !11
  %imag24 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  store float %34, ptr %imag24, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr) #3
  %35 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %36 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %37 = load i64, ptr %n.addr, align 8, !tbaa !7
  %38 = load ptr, ptr %y1, align 8, !tbaa !9
  %39 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %40 = load ptr, ptr %a1t, align 8, !tbaa !9
  %41 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %42 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %35(i32 noundef %36, i64 noundef %37, ptr noundef %alpha_chi1, ptr noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %43 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %43, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_zger_unb_var1(i32 noundef %conjx, i32 noundef %conjy, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %incx, ptr noundef %y, i64 noundef %incy, ptr noundef %a, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %cntx) #0 {
entry:
  %conjx.addr = alloca i32, align 4
  %conjy.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %a1t = alloca ptr, align 8
  %chi1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %alpha_chi1 = alloca %struct.dcomplex, align 8
  %i = alloca i64, align 8
  %kfp_av = alloca ptr, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i32 %conjy, ptr %conjy.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !7
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1t) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha_chi1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %kfp_av) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 4, ptr noundef %0)
  store ptr %call, ptr %kfp_av, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !7
  %2 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load i64, ptr %i, align 8, !tbaa !7
  %5 = load i64, ptr %rs_a.addr, align 8, !tbaa !7
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %3, i64 %mul
  %6 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %mul1 = mul nsw i64 0, %6
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul1
  store ptr %add.ptr2, ptr %a1t, align 8, !tbaa !9
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !7
  %9 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul3 = mul nsw i64 %8, %9
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %7, i64 %mul3
  store ptr %add.ptr4, ptr %chi1, align 8, !tbaa !9
  %10 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %11 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul5 = mul nsw i64 0, %11
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %10, i64 %mul5
  store ptr %add.ptr6, ptr %y1, align 8, !tbaa !9
  %12 = load ptr, ptr %chi1, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %12, i32 0, i32 0
  %13 = load double, ptr %real, align 8, !tbaa !18
  %real7 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 0
  store double %13, ptr %real7, align 8, !tbaa !18
  %14 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call8 = call zeroext i1 @bli_is_conj(i32 noundef %14)
  br i1 %call8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %15, i32 0, i32 1
  %16 = load double, ptr %imag, align 8, !tbaa !20
  %fneg = fneg double %16
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %17 = load ptr, ptr %chi1, align 8, !tbaa !9
  %imag9 = getelementptr inbounds %struct.dcomplex, ptr %17, i32 0, i32 1
  %18 = load double, ptr %imag9, align 8, !tbaa !20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %18, %cond.false ]
  %imag10 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 1
  store double %cond, ptr %imag10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr) #3
  %19 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real11 = getelementptr inbounds %struct.dcomplex, ptr %19, i32 0, i32 0
  %20 = load double, ptr %real11, align 8, !tbaa !18
  %real12 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 0
  %21 = load double, ptr %real12, align 8, !tbaa !18
  %22 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag14 = getelementptr inbounds %struct.dcomplex, ptr %22, i32 0, i32 1
  %23 = load double, ptr %imag14, align 8, !tbaa !20
  %imag15 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 1
  %24 = load double, ptr %imag15, align 8, !tbaa !20
  %mul16 = fmul double %23, %24
  %neg = fneg double %mul16
  %25 = call double @llvm.fmuladd.f64(double %20, double %21, double %neg)
  store double %25, ptr %yr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #3
  %26 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag17 = getelementptr inbounds %struct.dcomplex, ptr %26, i32 0, i32 1
  %27 = load double, ptr %imag17, align 8, !tbaa !20
  %real18 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 0
  %28 = load double, ptr %real18, align 8, !tbaa !18
  %29 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real20 = getelementptr inbounds %struct.dcomplex, ptr %29, i32 0, i32 0
  %30 = load double, ptr %real20, align 8, !tbaa !18
  %imag21 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 1
  %31 = load double, ptr %imag21, align 8, !tbaa !20
  %mul22 = fmul double %30, %31
  %32 = call double @llvm.fmuladd.f64(double %27, double %28, double %mul22)
  store double %32, ptr %yi, align 8, !tbaa !13
  %33 = load double, ptr %yr, align 8, !tbaa !13
  %real23 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 0
  store double %33, ptr %real23, align 8, !tbaa !18
  %34 = load double, ptr %yi, align 8, !tbaa !13
  %imag24 = getelementptr inbounds %struct.dcomplex, ptr %alpha_chi1, i32 0, i32 1
  store double %34, ptr %imag24, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr) #3
  %35 = load ptr, ptr %kfp_av, align 8, !tbaa !9
  %36 = load i32, ptr %conjy.addr, align 4, !tbaa !4
  %37 = load i64, ptr %n.addr, align 8, !tbaa !7
  %38 = load ptr, ptr %y1, align 8, !tbaa !9
  %39 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %40 = load ptr, ptr %a1t, align 8, !tbaa !9
  %41 = load i64, ptr %cs_a.addr, align 8, !tbaa !7
  %42 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %35(i32 noundef %36, i64 noundef %37, ptr noundef %alpha_chi1, ptr noundef %38, i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %43 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %43, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %kfp_av) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha_chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1t) #3
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

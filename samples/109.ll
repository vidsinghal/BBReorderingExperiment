; ModuleID = 'samples/109.bc'
source_filename = "ref_kernels/1/bli_scalv_ref.c"
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
define hidden void @bli_sscalv_zen2_ref(i32 noundef %conjalpha, i64 noundef %n, ptr noalias noundef %alpha, ptr noalias noundef %x, i64 noundef %incx, ptr noalias noundef %cntx) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %zero = alloca ptr, align 8
  %dt = alloca i32, align 4
  %setv_p = alloca ptr, align 8
  %alpha_conj = alloca float, align 4
  %tmp = alloca i64, align 8
  %.capture_expr. = alloca i64, align 8
  %.capture_expr.10 = alloca i64, align 8
  %i = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i13 = alloca i64, align 8
  %i23 = alloca i64, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i64, ptr %n.addr, align 8, !tbaa !7
  %call = call zeroext i1 @bli_zero_dim1(i64 noundef %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %2 = load float, ptr %1, align 4, !tbaa !11
  %cmp = fcmp oeq float %2, 1.000000e+00
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %4 = load float, ptr %3, align 4, !tbaa !11
  %cmp3 = fcmp oeq float %4, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #3
  %call5 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_ZERO)
  store ptr %call5, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %setv_p) #3
  %5 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call6 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 11, ptr noundef %5)
  store ptr %call6, ptr %setv_p, align 8, !tbaa !9
  %6 = load ptr, ptr %setv_p, align 8, !tbaa !9
  %7 = load i64, ptr %n.addr, align 8, !tbaa !7
  %8 = load ptr, ptr %zero, align 8, !tbaa !9
  %9 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %10 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %11 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %6(i32 noundef 0, i64 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %setv_p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #3
  br label %return

if.end7:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_conj) #3
  %12 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %13 = load float, ptr %12, align 4, !tbaa !11
  store float %13, ptr %alpha_conj, align 4, !tbaa !11
  %14 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %cmp8 = icmp eq i64 %14, 1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.) #3
  %15 = load i64, ptr %n.addr, align 8, !tbaa !7
  store i64 %15, ptr %.capture_expr., align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.10) #3
  %16 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub = sub nsw i64 %16, 0
  %div = sdiv i64 %sub, 1
  %sub11 = sub nsw i64 %div, 1
  store i64 %sub11, ptr %.capture_expr.10, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  store i64 0, ptr %i, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  %17 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %cmp12 = icmp slt i64 0, %17
  br i1 %cmp12, label %simd.if.then, label %simd.if.end

simd.if.then:                                     ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #3
  store i64 0, ptr %.omp.iv, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #3
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %18 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !13
  %19 = load i64, ptr %.capture_expr.10, align 8, !tbaa !7, !llvm.access.group !13
  %add = add nsw i64 %19, 1
  %cmp14 = icmp slt i64 %18, %add
  br i1 %cmp14, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !13
  %mul = mul nsw i64 %20, 1
  %add15 = add nsw i64 0, %mul
  store i64 %add15, ptr %i13, align 8, !tbaa !7, !llvm.access.group !13
  %21 = load float, ptr %alpha_conj, align 4, !tbaa !11, !llvm.access.group !13
  %22 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !13
  %23 = load i64, ptr %i13, align 8, !tbaa !7, !llvm.access.group !13
  %arrayidx = getelementptr inbounds float, ptr %22, i64 %23
  %24 = load float, ptr %arrayidx, align 4, !tbaa !11, !llvm.access.group !13
  %mul16 = fmul float %21, %24
  %25 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !13
  %26 = load i64, ptr %i13, align 8, !tbaa !7, !llvm.access.group !13
  %arrayidx17 = getelementptr inbounds float, ptr %25, i64 %26
  store float %mul16, ptr %arrayidx17, align 4, !tbaa !11, !llvm.access.group !13
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %27 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !13
  %add18 = add nsw i64 %27, 1
  store i64 %add18, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !13
  br label %omp.inner.for.cond, !llvm.loop !14

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %28 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub19 = sub nsw i64 %28, 0
  %div20 = sdiv i64 %sub19, 1
  %mul21 = mul nsw i64 %div20, 1
  %add22 = add nsw i64 0, %mul21
  store i64 %add22, ptr %i13, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i13) #3
  br label %simd.if.end

simd.if.end:                                      ; preds = %omp.inner.for.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.10) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.) #3
  br label %if.end26

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #3
  store i64 0, ptr %i23, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %29 = load i64, ptr %i23, align 8, !tbaa !7
  %30 = load i64, ptr %n.addr, align 8, !tbaa !7
  %cmp24 = icmp slt i64 %29, %30
  br i1 %cmp24, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i23) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load float, ptr %alpha_conj, align 4, !tbaa !11
  %32 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %33 = load float, ptr %32, align 4, !tbaa !11
  %mul25 = fmul float %31, %33
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  store float %mul25, ptr %34, align 4, !tbaa !11
  %35 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %36 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %36, i64 %35
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i64, ptr %i23, align 8, !tbaa !7
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i23, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end26

if.end26:                                         ; preds = %for.end, %simd.if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_conj) #3
  br label %return

return:                                           ; preds = %if.end26, %if.then4, %if.then1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_zero_dim1(i64 noundef %m) #0 {
entry:
  %m.addr = alloca i64, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  %0 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  ret ptr %9
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_dscalv_zen2_ref(i32 noundef %conjalpha, i64 noundef %n, ptr noalias noundef %alpha, ptr noalias noundef %x, i64 noundef %incx, ptr noalias noundef %cntx) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %zero = alloca ptr, align 8
  %dt = alloca i32, align 4
  %setv_p = alloca ptr, align 8
  %alpha_conj = alloca double, align 8
  %tmp = alloca i64, align 8
  %.capture_expr. = alloca i64, align 8
  %.capture_expr.10 = alloca i64, align 8
  %i = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i13 = alloca i64, align 8
  %i23 = alloca i64, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i64, ptr %n.addr, align 8, !tbaa !7
  %call = call zeroext i1 @bli_zero_dim1(i64 noundef %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %2 = load double, ptr %1, align 8, !tbaa !17
  %cmp = fcmp oeq double %2, 1.000000e+00
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %4 = load double, ptr %3, align 8, !tbaa !17
  %cmp3 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #3
  %call5 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_ZERO)
  store ptr %call5, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %setv_p) #3
  %5 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call6 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 11, ptr noundef %5)
  store ptr %call6, ptr %setv_p, align 8, !tbaa !9
  %6 = load ptr, ptr %setv_p, align 8, !tbaa !9
  %7 = load i64, ptr %n.addr, align 8, !tbaa !7
  %8 = load ptr, ptr %zero, align 8, !tbaa !9
  %9 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %10 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %11 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %6(i32 noundef 0, i64 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %setv_p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #3
  br label %return

if.end7:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_conj) #3
  %12 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %13 = load double, ptr %12, align 8, !tbaa !17
  store double %13, ptr %alpha_conj, align 8, !tbaa !17
  %14 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %cmp8 = icmp eq i64 %14, 1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.) #3
  %15 = load i64, ptr %n.addr, align 8, !tbaa !7
  store i64 %15, ptr %.capture_expr., align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.10) #3
  %16 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub = sub nsw i64 %16, 0
  %div = sdiv i64 %sub, 1
  %sub11 = sub nsw i64 %div, 1
  store i64 %sub11, ptr %.capture_expr.10, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  store i64 0, ptr %i, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  %17 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %cmp12 = icmp slt i64 0, %17
  br i1 %cmp12, label %simd.if.then, label %simd.if.end

simd.if.then:                                     ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #3
  store i64 0, ptr %.omp.iv, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #3
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %18 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !19
  %19 = load i64, ptr %.capture_expr.10, align 8, !tbaa !7, !llvm.access.group !19
  %add = add nsw i64 %19, 1
  %cmp14 = icmp slt i64 %18, %add
  br i1 %cmp14, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !19
  %mul = mul nsw i64 %20, 1
  %add15 = add nsw i64 0, %mul
  store i64 %add15, ptr %i13, align 8, !tbaa !7, !llvm.access.group !19
  %21 = load double, ptr %alpha_conj, align 8, !tbaa !17, !llvm.access.group !19
  %22 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !19
  %23 = load i64, ptr %i13, align 8, !tbaa !7, !llvm.access.group !19
  %arrayidx = getelementptr inbounds double, ptr %22, i64 %23
  %24 = load double, ptr %arrayidx, align 8, !tbaa !17, !llvm.access.group !19
  %mul16 = fmul double %21, %24
  %25 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !19
  %26 = load i64, ptr %i13, align 8, !tbaa !7, !llvm.access.group !19
  %arrayidx17 = getelementptr inbounds double, ptr %25, i64 %26
  store double %mul16, ptr %arrayidx17, align 8, !tbaa !17, !llvm.access.group !19
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %27 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !19
  %add18 = add nsw i64 %27, 1
  store i64 %add18, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !19
  br label %omp.inner.for.cond, !llvm.loop !20

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %28 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub19 = sub nsw i64 %28, 0
  %div20 = sdiv i64 %sub19, 1
  %mul21 = mul nsw i64 %div20, 1
  %add22 = add nsw i64 0, %mul21
  store i64 %add22, ptr %i13, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i13) #3
  br label %simd.if.end

simd.if.end:                                      ; preds = %omp.inner.for.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.10) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.) #3
  br label %if.end26

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #3
  store i64 0, ptr %i23, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %29 = load i64, ptr %i23, align 8, !tbaa !7
  %30 = load i64, ptr %n.addr, align 8, !tbaa !7
  %cmp24 = icmp slt i64 %29, %30
  br i1 %cmp24, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i23) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load double, ptr %alpha_conj, align 8, !tbaa !17
  %32 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %33 = load double, ptr %32, align 8, !tbaa !17
  %mul25 = fmul double %31, %33
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  store double %mul25, ptr %34, align 8, !tbaa !17
  %35 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %36 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds double, ptr %36, i64 %35
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i64, ptr %i23, align 8, !tbaa !7
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i23, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end26

if.end26:                                         ; preds = %for.end, %simd.if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_conj) #3
  br label %return

return:                                           ; preds = %if.end26, %if.then4, %if.then1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cscalv_zen2_ref(i32 noundef %conjalpha, i64 noundef %n, ptr noalias noundef %alpha, ptr noalias noundef %x, i64 noundef %incx, ptr noalias noundef %cntx) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %zero = alloca ptr, align 8
  %dt = alloca i32, align 4
  %setv_p = alloca ptr, align 8
  %alpha_conj = alloca %struct.scomplex, align 4
  %tmp = alloca i64, align 8
  %.capture_expr. = alloca i64, align 8
  %.capture_expr.21 = alloca i64, align 8
  %i = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i24 = alloca i64, align 8
  %yr = alloca float, align 4
  %yi = alloca float, align 4
  %i51 = alloca i64, align 8
  %yr53 = alloca float, align 4
  %yi61 = alloca float, align 4
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i64, ptr %n.addr, align 8, !tbaa !7
  %call = call zeroext i1 @bli_zero_dim1(i64 noundef %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %1, i32 0, i32 0
  %2 = load float, ptr %real, align 4, !tbaa !22
  %cmp = fcmp oeq float %2, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %3, i32 0, i32 1
  %4 = load float, ptr %imag, align 4, !tbaa !24
  %cmp1 = fcmp oeq float %4, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  br label %return

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real4 = getelementptr inbounds %struct.scomplex, ptr %5, i32 0, i32 0
  %6 = load float, ptr %real4, align 4, !tbaa !22
  %cmp5 = fcmp oeq float %6, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true6, label %if.end12

land.lhs.true6:                                   ; preds = %if.end3
  %7 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag7 = getelementptr inbounds %struct.scomplex, ptr %7, i32 0, i32 1
  %8 = load float, ptr %imag7, align 4, !tbaa !24
  %cmp8 = fcmp oeq float %8, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true6
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #3
  %call10 = call ptr @bli_obj_buffer_for_const(i32 noundef 1, ptr noundef @BLIS_ZERO)
  store ptr %call10, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %setv_p) #3
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call11 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 11, ptr noundef %9)
  store ptr %call11, ptr %setv_p, align 8, !tbaa !9
  %10 = load ptr, ptr %setv_p, align 8, !tbaa !9
  %11 = load i64, ptr %n.addr, align 8, !tbaa !7
  %12 = load ptr, ptr %zero, align 8, !tbaa !9
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %15 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %10(i32 noundef 0, i64 noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15)
  call void @llvm.lifetime.end.p0(i64 8, ptr %setv_p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #3
  br label %return

if.end12:                                         ; preds = %land.lhs.true6, %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_conj) #3
  %16 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real13 = getelementptr inbounds %struct.scomplex, ptr %16, i32 0, i32 0
  %17 = load float, ptr %real13, align 4, !tbaa !22
  %real14 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 0
  store float %17, ptr %real14, align 4, !tbaa !22
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !4
  %call15 = call zeroext i1 @bli_is_conj(i32 noundef %18)
  br i1 %call15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end12
  %19 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag16 = getelementptr inbounds %struct.scomplex, ptr %19, i32 0, i32 1
  %20 = load float, ptr %imag16, align 4, !tbaa !24
  %fneg = fneg float %20
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  %21 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag17 = getelementptr inbounds %struct.scomplex, ptr %21, i32 0, i32 1
  %22 = load float, ptr %imag17, align 4, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %fneg, %cond.true ], [ %22, %cond.false ]
  %imag18 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 1
  store float %cond, ptr %imag18, align 4, !tbaa !24
  %23 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %cmp19 = icmp eq i64 %23, 1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.) #3
  %24 = load i64, ptr %n.addr, align 8, !tbaa !7
  store i64 %24, ptr %.capture_expr., align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.21) #3
  %25 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub = sub nsw i64 %25, 0
  %div = sdiv i64 %sub, 1
  %sub22 = sub nsw i64 %div, 1
  store i64 %sub22, ptr %.capture_expr.21, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  store i64 0, ptr %i, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  %26 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %cmp23 = icmp slt i64 0, %26
  br i1 %cmp23, label %simd.if.then, label %simd.if.end

simd.if.then:                                     ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #3
  store i64 0, ptr %.omp.iv, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #3
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %27 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !25
  %28 = load i64, ptr %.capture_expr.21, align 8, !tbaa !7, !llvm.access.group !25
  %add = add nsw i64 %28, 1
  %cmp25 = icmp slt i64 %27, %add
  br i1 %cmp25, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !25
  %mul = mul nsw i64 %29, 1
  %add26 = add nsw i64 0, %mul
  store i64 %add26, ptr %i24, align 8, !tbaa !7, !llvm.access.group !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr) #3, !llvm.access.group !25
  %real27 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 0
  %30 = load float, ptr %real27, align 4, !tbaa !22, !llvm.access.group !25
  %31 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !25
  %32 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !25
  %arrayidx = getelementptr inbounds %struct.scomplex, ptr %31, i64 %32
  %real28 = getelementptr inbounds %struct.scomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load float, ptr %real28, align 4, !tbaa !22, !llvm.access.group !25
  %imag30 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 1
  %34 = load float, ptr %imag30, align 4, !tbaa !24, !llvm.access.group !25
  %35 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !25
  %36 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !25
  %arrayidx31 = getelementptr inbounds %struct.scomplex, ptr %35, i64 %36
  %imag32 = getelementptr inbounds %struct.scomplex, ptr %arrayidx31, i32 0, i32 1
  %37 = load float, ptr %imag32, align 4, !tbaa !24, !llvm.access.group !25
  %mul33 = fmul float %34, %37
  %neg = fneg float %mul33
  %38 = call float @llvm.fmuladd.f32(float %30, float %33, float %neg)
  store float %38, ptr %yr, align 4, !tbaa !11, !llvm.access.group !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi) #3, !llvm.access.group !25
  %imag34 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 1
  %39 = load float, ptr %imag34, align 4, !tbaa !24, !llvm.access.group !25
  %40 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !25
  %41 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !25
  %arrayidx35 = getelementptr inbounds %struct.scomplex, ptr %40, i64 %41
  %real36 = getelementptr inbounds %struct.scomplex, ptr %arrayidx35, i32 0, i32 0
  %42 = load float, ptr %real36, align 4, !tbaa !22, !llvm.access.group !25
  %real38 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 0
  %43 = load float, ptr %real38, align 4, !tbaa !22, !llvm.access.group !25
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !25
  %45 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !25
  %arrayidx39 = getelementptr inbounds %struct.scomplex, ptr %44, i64 %45
  %imag40 = getelementptr inbounds %struct.scomplex, ptr %arrayidx39, i32 0, i32 1
  %46 = load float, ptr %imag40, align 4, !tbaa !24, !llvm.access.group !25
  %mul41 = fmul float %43, %46
  %47 = call float @llvm.fmuladd.f32(float %39, float %42, float %mul41)
  store float %47, ptr %yi, align 4, !tbaa !11, !llvm.access.group !25
  %48 = load float, ptr %yr, align 4, !tbaa !11, !llvm.access.group !25
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !25
  %50 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !25
  %arrayidx42 = getelementptr inbounds %struct.scomplex, ptr %49, i64 %50
  %real43 = getelementptr inbounds %struct.scomplex, ptr %arrayidx42, i32 0, i32 0
  store float %48, ptr %real43, align 4, !tbaa !22, !llvm.access.group !25
  %51 = load float, ptr %yi, align 4, !tbaa !11, !llvm.access.group !25
  %52 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !25
  %53 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !25
  %arrayidx44 = getelementptr inbounds %struct.scomplex, ptr %52, i64 %53
  %imag45 = getelementptr inbounds %struct.scomplex, ptr %arrayidx44, i32 0, i32 1
  store float %51, ptr %imag45, align 4, !tbaa !24, !llvm.access.group !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi) #3, !llvm.access.group !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr) #3, !llvm.access.group !25
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %54 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !25
  %add46 = add nsw i64 %54, 1
  store i64 %add46, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !25
  br label %omp.inner.for.cond, !llvm.loop !26

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %55 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub47 = sub nsw i64 %55, 0
  %div48 = sdiv i64 %sub47, 1
  %mul49 = mul nsw i64 %div48, 1
  %add50 = add nsw i64 0, %mul49
  store i64 %add50, ptr %i24, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i24) #3
  br label %simd.if.end

simd.if.end:                                      ; preds = %omp.inner.for.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.) #3
  br label %if.end70

if.else:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i51) #3
  store i64 0, ptr %i51, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %56 = load i64, ptr %i51, align 8, !tbaa !7
  %57 = load i64, ptr %n.addr, align 8, !tbaa !7
  %cmp52 = icmp slt i64 %56, %57
  br i1 %cmp52, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i51) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr53) #3
  %real54 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 0
  %58 = load float, ptr %real54, align 4, !tbaa !22
  %59 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %real55 = getelementptr inbounds %struct.scomplex, ptr %59, i32 0, i32 0
  %60 = load float, ptr %real55, align 4, !tbaa !22
  %imag57 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 1
  %61 = load float, ptr %imag57, align 4, !tbaa !24
  %62 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %imag58 = getelementptr inbounds %struct.scomplex, ptr %62, i32 0, i32 1
  %63 = load float, ptr %imag58, align 4, !tbaa !24
  %mul59 = fmul float %61, %63
  %neg60 = fneg float %mul59
  %64 = call float @llvm.fmuladd.f32(float %58, float %60, float %neg60)
  store float %64, ptr %yr53, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi61) #3
  %imag62 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 1
  %65 = load float, ptr %imag62, align 4, !tbaa !24
  %66 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %real63 = getelementptr inbounds %struct.scomplex, ptr %66, i32 0, i32 0
  %67 = load float, ptr %real63, align 4, !tbaa !22
  %real65 = getelementptr inbounds %struct.scomplex, ptr %alpha_conj, i32 0, i32 0
  %68 = load float, ptr %real65, align 4, !tbaa !22
  %69 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %imag66 = getelementptr inbounds %struct.scomplex, ptr %69, i32 0, i32 1
  %70 = load float, ptr %imag66, align 4, !tbaa !24
  %mul67 = fmul float %68, %70
  %71 = call float @llvm.fmuladd.f32(float %65, float %67, float %mul67)
  store float %71, ptr %yi61, align 4, !tbaa !11
  %72 = load float, ptr %yr53, align 4, !tbaa !11
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %real68 = getelementptr inbounds %struct.scomplex, ptr %73, i32 0, i32 0
  store float %72, ptr %real68, align 4, !tbaa !22
  %74 = load float, ptr %yi61, align 4, !tbaa !11
  %75 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %imag69 = getelementptr inbounds %struct.scomplex, ptr %75, i32 0, i32 1
  store float %74, ptr %imag69, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi61) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr53) #3
  %76 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %77 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %77, i64 %76
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i64, ptr %i51, align 8, !tbaa !7
  %inc = add nsw i64 %78, 1
  store i64 %inc, ptr %i51, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end70

if.end70:                                         ; preds = %for.end, %simd.if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_conj) #3
  br label %return

return:                                           ; preds = %if.end70, %if.then9, %if.then2, %if.then
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
define hidden void @bli_zscalv_zen2_ref(i32 noundef %conjalpha, i64 noundef %n, ptr noalias noundef %alpha, ptr noalias noundef %x, i64 noundef %incx, ptr noalias noundef %cntx) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %zero = alloca ptr, align 8
  %dt = alloca i32, align 4
  %setv_p = alloca ptr, align 8
  %alpha_conj = alloca %struct.dcomplex, align 8
  %tmp = alloca i64, align 8
  %.capture_expr. = alloca i64, align 8
  %.capture_expr.21 = alloca i64, align 8
  %i = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i24 = alloca i64, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  %i51 = alloca i64, align 8
  %yr53 = alloca double, align 8
  %yi61 = alloca double, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i64, ptr %n.addr, align 8, !tbaa !7
  %call = call zeroext i1 @bli_zero_dim1(i64 noundef %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %1, i32 0, i32 0
  %2 = load double, ptr %real, align 8, !tbaa !28
  %cmp = fcmp oeq double %2, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %3, i32 0, i32 1
  %4 = load double, ptr %imag, align 8, !tbaa !30
  %cmp1 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  br label %return

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real4 = getelementptr inbounds %struct.dcomplex, ptr %5, i32 0, i32 0
  %6 = load double, ptr %real4, align 8, !tbaa !28
  %cmp5 = fcmp oeq double %6, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true6, label %if.end12

land.lhs.true6:                                   ; preds = %if.end3
  %7 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag7 = getelementptr inbounds %struct.dcomplex, ptr %7, i32 0, i32 1
  %8 = load double, ptr %imag7, align 8, !tbaa !30
  %cmp8 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true6
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #3
  %call10 = call ptr @bli_obj_buffer_for_const(i32 noundef 3, ptr noundef @BLIS_ZERO)
  store ptr %call10, ptr %zero, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %setv_p) #3
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call11 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 11, ptr noundef %9)
  store ptr %call11, ptr %setv_p, align 8, !tbaa !9
  %10 = load ptr, ptr %setv_p, align 8, !tbaa !9
  %11 = load i64, ptr %n.addr, align 8, !tbaa !7
  %12 = load ptr, ptr %zero, align 8, !tbaa !9
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %15 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %10(i32 noundef 0, i64 noundef %11, ptr noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15)
  call void @llvm.lifetime.end.p0(i64 8, ptr %setv_p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #3
  br label %return

if.end12:                                         ; preds = %land.lhs.true6, %if.end3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha_conj) #3
  %16 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real13 = getelementptr inbounds %struct.dcomplex, ptr %16, i32 0, i32 0
  %17 = load double, ptr %real13, align 8, !tbaa !28
  %real14 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 0
  store double %17, ptr %real14, align 8, !tbaa !28
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !4
  %call15 = call zeroext i1 @bli_is_conj(i32 noundef %18)
  br i1 %call15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end12
  %19 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag16 = getelementptr inbounds %struct.dcomplex, ptr %19, i32 0, i32 1
  %20 = load double, ptr %imag16, align 8, !tbaa !30
  %fneg = fneg double %20
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  %21 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag17 = getelementptr inbounds %struct.dcomplex, ptr %21, i32 0, i32 1
  %22 = load double, ptr %imag17, align 8, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %22, %cond.false ]
  %imag18 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 1
  store double %cond, ptr %imag18, align 8, !tbaa !30
  %23 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %cmp19 = icmp eq i64 %23, 1
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.) #3
  %24 = load i64, ptr %n.addr, align 8, !tbaa !7
  store i64 %24, ptr %.capture_expr., align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %.capture_expr.21) #3
  %25 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub = sub nsw i64 %25, 0
  %div = sdiv i64 %sub, 1
  %sub22 = sub nsw i64 %div, 1
  store i64 %sub22, ptr %.capture_expr.21, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  store i64 0, ptr %i, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  %26 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %cmp23 = icmp slt i64 0, %26
  br i1 %cmp23, label %simd.if.then, label %simd.if.end

simd.if.then:                                     ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #3
  store i64 0, ptr %.omp.iv, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #3
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %27 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !31
  %28 = load i64, ptr %.capture_expr.21, align 8, !tbaa !7, !llvm.access.group !31
  %add = add nsw i64 %28, 1
  %cmp25 = icmp slt i64 %27, %add
  br i1 %cmp25, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !31
  %mul = mul nsw i64 %29, 1
  %add26 = add nsw i64 0, %mul
  store i64 %add26, ptr %i24, align 8, !tbaa !7, !llvm.access.group !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr) #3, !llvm.access.group !31
  %real27 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 0
  %30 = load double, ptr %real27, align 8, !tbaa !28, !llvm.access.group !31
  %31 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !31
  %32 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !31
  %arrayidx = getelementptr inbounds %struct.dcomplex, ptr %31, i64 %32
  %real28 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load double, ptr %real28, align 8, !tbaa !28, !llvm.access.group !31
  %imag30 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 1
  %34 = load double, ptr %imag30, align 8, !tbaa !30, !llvm.access.group !31
  %35 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !31
  %36 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !31
  %arrayidx31 = getelementptr inbounds %struct.dcomplex, ptr %35, i64 %36
  %imag32 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx31, i32 0, i32 1
  %37 = load double, ptr %imag32, align 8, !tbaa !30, !llvm.access.group !31
  %mul33 = fmul double %34, %37
  %neg = fneg double %mul33
  %38 = call double @llvm.fmuladd.f64(double %30, double %33, double %neg)
  store double %38, ptr %yr, align 8, !tbaa !17, !llvm.access.group !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #3, !llvm.access.group !31
  %imag34 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 1
  %39 = load double, ptr %imag34, align 8, !tbaa !30, !llvm.access.group !31
  %40 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !31
  %41 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !31
  %arrayidx35 = getelementptr inbounds %struct.dcomplex, ptr %40, i64 %41
  %real36 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx35, i32 0, i32 0
  %42 = load double, ptr %real36, align 8, !tbaa !28, !llvm.access.group !31
  %real38 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 0
  %43 = load double, ptr %real38, align 8, !tbaa !28, !llvm.access.group !31
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !31
  %45 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !31
  %arrayidx39 = getelementptr inbounds %struct.dcomplex, ptr %44, i64 %45
  %imag40 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx39, i32 0, i32 1
  %46 = load double, ptr %imag40, align 8, !tbaa !30, !llvm.access.group !31
  %mul41 = fmul double %43, %46
  %47 = call double @llvm.fmuladd.f64(double %39, double %42, double %mul41)
  store double %47, ptr %yi, align 8, !tbaa !17, !llvm.access.group !31
  %48 = load double, ptr %yr, align 8, !tbaa !17, !llvm.access.group !31
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !31
  %50 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !31
  %arrayidx42 = getelementptr inbounds %struct.dcomplex, ptr %49, i64 %50
  %real43 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx42, i32 0, i32 0
  store double %48, ptr %real43, align 8, !tbaa !28, !llvm.access.group !31
  %51 = load double, ptr %yi, align 8, !tbaa !17, !llvm.access.group !31
  %52 = load ptr, ptr %x.addr, align 8, !tbaa !9, !llvm.access.group !31
  %53 = load i64, ptr %i24, align 8, !tbaa !7, !llvm.access.group !31
  %arrayidx44 = getelementptr inbounds %struct.dcomplex, ptr %52, i64 %53
  %imag45 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx44, i32 0, i32 1
  store double %51, ptr %imag45, align 8, !tbaa !30, !llvm.access.group !31
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #3, !llvm.access.group !31
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr) #3, !llvm.access.group !31
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %54 = load i64, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !31
  %add46 = add nsw i64 %54, 1
  store i64 %add46, ptr %.omp.iv, align 8, !tbaa !7, !llvm.access.group !31
  br label %omp.inner.for.cond, !llvm.loop !32

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %55 = load i64, ptr %.capture_expr., align 8, !tbaa !7
  %sub47 = sub nsw i64 %55, 0
  %div48 = sdiv i64 %sub47, 1
  %mul49 = mul nsw i64 %div48, 1
  %add50 = add nsw i64 0, %mul49
  store i64 %add50, ptr %i24, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i24) #3
  br label %simd.if.end

simd.if.end:                                      ; preds = %omp.inner.for.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %.capture_expr.) #3
  br label %if.end70

if.else:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i51) #3
  store i64 0, ptr %i51, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %56 = load i64, ptr %i51, align 8, !tbaa !7
  %57 = load i64, ptr %n.addr, align 8, !tbaa !7
  %cmp52 = icmp slt i64 %56, %57
  br i1 %cmp52, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i51) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr53) #3
  %real54 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 0
  %58 = load double, ptr %real54, align 8, !tbaa !28
  %59 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %real55 = getelementptr inbounds %struct.dcomplex, ptr %59, i32 0, i32 0
  %60 = load double, ptr %real55, align 8, !tbaa !28
  %imag57 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 1
  %61 = load double, ptr %imag57, align 8, !tbaa !30
  %62 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %imag58 = getelementptr inbounds %struct.dcomplex, ptr %62, i32 0, i32 1
  %63 = load double, ptr %imag58, align 8, !tbaa !30
  %mul59 = fmul double %61, %63
  %neg60 = fneg double %mul59
  %64 = call double @llvm.fmuladd.f64(double %58, double %60, double %neg60)
  store double %64, ptr %yr53, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi61) #3
  %imag62 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 1
  %65 = load double, ptr %imag62, align 8, !tbaa !30
  %66 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %real63 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 0
  %67 = load double, ptr %real63, align 8, !tbaa !28
  %real65 = getelementptr inbounds %struct.dcomplex, ptr %alpha_conj, i32 0, i32 0
  %68 = load double, ptr %real65, align 8, !tbaa !28
  %69 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %imag66 = getelementptr inbounds %struct.dcomplex, ptr %69, i32 0, i32 1
  %70 = load double, ptr %imag66, align 8, !tbaa !30
  %mul67 = fmul double %68, %70
  %71 = call double @llvm.fmuladd.f64(double %65, double %67, double %mul67)
  store double %71, ptr %yi61, align 8, !tbaa !17
  %72 = load double, ptr %yr53, align 8, !tbaa !17
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %real68 = getelementptr inbounds %struct.dcomplex, ptr %73, i32 0, i32 0
  store double %72, ptr %real68, align 8, !tbaa !28
  %74 = load double, ptr %yi61, align 8, !tbaa !17
  %75 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %imag69 = getelementptr inbounds %struct.dcomplex, ptr %75, i32 0, i32 1
  store double %74, ptr %imag69, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi61) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr53) #3
  %76 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %77 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %77, i64 %76
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i64, ptr %i51, align 8, !tbaa !7
  %inc = add nsw i64 %78, 1
  store i64 %inc, ptr %i51, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end70

if.end70:                                         ; preds = %for.end, %simd.if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha_conj) #3
  br label %return

return:                                           ; preds = %if.end70, %if.then9, %if.then2, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %buffer = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %buffer, align 8, !tbaa !34
  ret ptr %1
}

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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-fma4,-lwp,-tbm,-xop" }
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
!13 = distinct !{}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.parallel_accesses", !13}
!16 = !{!"llvm.loop.vectorize.enable", i1 true}
!17 = !{!18, !18, i64 0}
!18 = !{!"double", !5, i64 0}
!19 = distinct !{}
!20 = distinct !{!20, !21, !16}
!21 = !{!"llvm.loop.parallel_accesses", !19}
!22 = !{!23, !12, i64 0}
!23 = !{!"", !12, i64 0, !12, i64 4}
!24 = !{!23, !12, i64 4}
!25 = distinct !{}
!26 = distinct !{!26, !27, !16}
!27 = !{!"llvm.loop.parallel_accesses", !25}
!28 = !{!29, !18, i64 0}
!29 = !{!"", !18, i64 0, !18, i64 8}
!30 = !{!29, !18, i64 8}
!31 = distinct !{}
!32 = distinct !{!32, !33, !16}
!33 = !{!"llvm.loop.parallel_accesses", !31}
!34 = !{!35, !10, i64 64}
!35 = !{!"obj_s", !10, i64 0, !5, i64 8, !5, i64 24, !8, i64 40, !36, i64 48, !36, i64 52, !8, i64 56, !10, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !29, i64 96, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!36 = !{!"int", !5, i64 0}

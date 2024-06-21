; ModuleID = 'samples/885.bc'
source_filename = "frame/1m/bli_l1m_unb_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }
%struct.func_s = type { [4 x ptr] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

; Function Attrs: nounwind uwtable
define hidden void @bli_saddm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 0, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds float, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds float, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds float, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds float, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @bli_set_dims_incs_uplo_2m(i64 noundef %diagoffa, i32 noundef %diaga, i32 noundef %transa, i32 noundef %uploa, i64 noundef %m, i64 noundef %n, i64 noundef %rs_a, i64 noundef %cs_a, i64 noundef %rs_b, i64 noundef %cs_b, ptr noundef %uplo_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %inca, ptr noundef %lda, ptr noundef %incb, ptr noundef %ldb, ptr noundef %ij0, ptr noundef %n_shift) #0 {
entry:
  %diagoffa.addr = alloca i64, align 8
  %diaga.addr = alloca i32, align 4
  %transa.addr = alloca i32, align 4
  %uploa.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %rs_b.addr = alloca i64, align 8
  %cs_b.addr = alloca i64, align 8
  %uplo_eff.addr = alloca ptr, align 8
  %n_elem_max.addr = alloca ptr, align 8
  %n_iter.addr = alloca ptr, align 8
  %inca.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %incb.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %ij0.addr = alloca ptr, align 8
  %n_shift.addr = alloca ptr, align 8
  %diagoffa_use_ = alloca i64, align 8
  %diagoff_eff_ = alloca i64, align 8
  %n_iter_max_ = alloca i64, align 8
  store i64 %diagoffa, ptr %diagoffa.addr, align 8, !tbaa !4
  store i32 %diaga, ptr %diaga.addr, align 4, !tbaa !8
  store i32 %transa, ptr %transa.addr, align 4, !tbaa !8
  store i32 %uploa, ptr %uploa.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !4
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !4
  store i64 %rs_b, ptr %rs_b.addr, align 8, !tbaa !4
  store i64 %cs_b, ptr %cs_b.addr, align 8, !tbaa !4
  store ptr %uplo_eff, ptr %uplo_eff.addr, align 8, !tbaa !9
  store ptr %n_elem_max, ptr %n_elem_max.addr, align 8, !tbaa !9
  store ptr %n_iter, ptr %n_iter.addr, align 8, !tbaa !9
  store ptr %inca, ptr %inca.addr, align 8, !tbaa !9
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !9
  store ptr %incb, ptr %incb.addr, align 8, !tbaa !9
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !9
  store ptr %ij0, ptr %ij0.addr, align 8, !tbaa !9
  store ptr %n_shift, ptr %n_shift.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 0, ptr %0, align 8, !tbaa !4
  %1 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 0, ptr %1, align 8, !tbaa !4
  %2 = load i64, ptr %diagoffa.addr, align 8, !tbaa !4
  %3 = load i32, ptr %transa.addr, align 4, !tbaa !8
  %4 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  %5 = load i64, ptr %m.addr, align 8, !tbaa !4
  %6 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_is_unstored_subpart(i64 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  store i32 0, ptr %7, align 4, !tbaa !8
  br label %if.end75

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %diagoffa_use_) #3
  %8 = load i64, ptr %diagoffa.addr, align 8, !tbaa !4
  store i64 %8, ptr %diagoffa_use_, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %diagoff_eff_) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter_max_) #3
  %9 = load i32, ptr %diaga.addr, align 4, !tbaa !8
  %call1 = call zeroext i1 @bli_is_unit_diag(i32 noundef %9)
  br i1 %call1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %10 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  call void @bli_shift_diag_offset_to_shrink_uplo(i32 noundef %10, ptr noundef %diagoffa_use_)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  %11 = load i64, ptr %diagoffa_use_, align 8, !tbaa !4
  %12 = load i32, ptr %transa.addr, align 4, !tbaa !8
  %13 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  %14 = load i64, ptr %m.addr, align 8, !tbaa !4
  %15 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call3 = call zeroext i1 @bli_is_stored_subpart(i64 noundef %11, i32 noundef %12, i32 noundef %13, i64 noundef %14, i64 noundef %15)
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 224, ptr %uploa.addr, align 4, !tbaa !8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %16 = load i64, ptr %n.addr, align 8, !tbaa !4
  store i64 %16, ptr %n_iter_max_, align 8, !tbaa !4
  %17 = load i64, ptr %m.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  store i64 %17, ptr %18, align 8, !tbaa !4
  %19 = load i64, ptr %rs_a.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %inca.addr, align 8, !tbaa !9
  store i64 %19, ptr %20, align 8, !tbaa !4
  %21 = load i64, ptr %cs_a.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %lda.addr, align 8, !tbaa !9
  store i64 %21, ptr %22, align 8, !tbaa !4
  %23 = load i64, ptr %rs_b.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %incb.addr, align 8, !tbaa !9
  store i64 %23, ptr %24, align 8, !tbaa !4
  %25 = load i64, ptr %cs_b.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %ldb.addr, align 8, !tbaa !9
  store i64 %25, ptr %26, align 8, !tbaa !4
  %27 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  %28 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  store i32 %27, ptr %28, align 4, !tbaa !8
  %29 = load i64, ptr %diagoffa_use_, align 8, !tbaa !4
  store i64 %29, ptr %diagoff_eff_, align 8, !tbaa !4
  %30 = load i32, ptr %transa.addr, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_does_trans(i32 noundef %30)
  br i1 %call6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %31 = load ptr, ptr %inca.addr, align 8, !tbaa !9
  %32 = load ptr, ptr %lda.addr, align 8, !tbaa !9
  call void @bli_swap_incs(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  call void @bli_toggle_uplo(ptr noundef %33)
  call void @bli_negate_diag_offset(ptr noundef %diagoff_eff_)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %34 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %35 = load i64, ptr %34, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %37 = load ptr, ptr %incb.addr, align 8, !tbaa !9
  %38 = load i64, ptr %37, align 8, !tbaa !4
  %39 = load ptr, ptr %ldb.addr, align 8, !tbaa !9
  %40 = load i64, ptr %39, align 8, !tbaa !4
  %call9 = call zeroext i1 @bli_is_row_tilted(i64 noundef %35, i64 noundef %36, i64 noundef %38, i64 noundef %40)
  br i1 %call9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end8
  %41 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %42 = load i64, ptr %41, align 8, !tbaa !4
  %43 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %44 = load ptr, ptr %inca.addr, align 8, !tbaa !9
  %45 = load i64, ptr %44, align 8, !tbaa !4
  %46 = load ptr, ptr %lda.addr, align 8, !tbaa !9
  %47 = load i64, ptr %46, align 8, !tbaa !4
  %call10 = call zeroext i1 @bli_is_row_tilted(i64 noundef %42, i64 noundef %43, i64 noundef %45, i64 noundef %47)
  br i1 %call10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  %48 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  call void @bli_swap_dims(ptr noundef %n_iter_max_, ptr noundef %48)
  %49 = load ptr, ptr %inca.addr, align 8, !tbaa !9
  %50 = load ptr, ptr %lda.addr, align 8, !tbaa !9
  call void @bli_swap_incs(ptr noundef %49, ptr noundef %50)
  %51 = load ptr, ptr %incb.addr, align 8, !tbaa !9
  %52 = load ptr, ptr %ldb.addr, align 8, !tbaa !9
  call void @bli_swap_incs(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  call void @bli_toggle_uplo(ptr noundef %53)
  call void @bli_negate_diag_offset(ptr noundef %diagoff_eff_)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.end8
  %54 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %call13 = call zeroext i1 @bli_is_dense(i32 noundef %55)
  br i1 %call13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end12
  %56 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %57 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %56, ptr %57, align 8, !tbaa !4
  br label %if.end74

if.else15:                                        ; preds = %if.end12
  %58 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %call16 = call zeroext i1 @bli_is_upper(i32 noundef %59)
  br i1 %call16, label %if.then17, label %if.else34

if.then17:                                        ; preds = %if.else15
  %60 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %cmp = icmp slt i64 %60, 0
  br i1 %cmp, label %if.then18, label %if.else31

if.then18:                                        ; preds = %if.then17
  %61 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 0, ptr %61, align 8, !tbaa !4
  %62 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %sub = sub nsw i64 0, %62
  %63 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 %sub, ptr %63, align 8, !tbaa !4
  %64 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %65 = load i64, ptr %64, align 8, !tbaa !4
  %66 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %67 = load i64, ptr %66, align 8, !tbaa !4
  %68 = load i64, ptr %m.addr, align 8, !tbaa !4
  %69 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp19 = icmp slt i64 %68, %69
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then18
  %70 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then18
  %71 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %70, %cond.true ], [ %71, %cond.false ]
  %add = add nsw i64 %67, %cond
  %cmp20 = icmp slt i64 %65, %add
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  %72 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %73 = load i64, ptr %72, align 8, !tbaa !4
  br label %cond.end29

cond.false22:                                     ; preds = %cond.end
  %74 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %75 = load i64, ptr %74, align 8, !tbaa !4
  %76 = load i64, ptr %m.addr, align 8, !tbaa !4
  %77 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp23 = icmp slt i64 %76, %77
  br i1 %cmp23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.false22
  %78 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end26

cond.false25:                                     ; preds = %cond.false22
  %79 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond27 = phi i64 [ %78, %cond.true24 ], [ %79, %cond.false25 ]
  %add28 = add nsw i64 %75, %cond27
  br label %cond.end29

cond.end29:                                       ; preds = %cond.end26, %cond.true21
  %cond30 = phi i64 [ %73, %cond.true21 ], [ %add28, %cond.end26 ]
  %80 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  store i64 %cond30, ptr %80, align 8, !tbaa !4
  %81 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %82 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %81, ptr %82, align 8, !tbaa !4
  br label %if.end33

if.else31:                                        ; preds = %if.then17
  %83 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %84 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 %83, ptr %84, align 8, !tbaa !4
  %85 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 0, ptr %85, align 8, !tbaa !4
  %86 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %87 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %sub32 = sub nsw i64 %86, %87
  %88 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %sub32, ptr %88, align 8, !tbaa !4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %cond.end29
  br label %if.end73

if.else34:                                        ; preds = %if.else15
  %89 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %cmp35 = icmp slt i64 %89, 0
  br i1 %cmp35, label %if.then36, label %if.else54

if.then36:                                        ; preds = %if.else34
  %90 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %sub37 = sub nsw i64 0, %90
  %91 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 %sub37, ptr %91, align 8, !tbaa !4
  %92 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 0, ptr %92, align 8, !tbaa !4
  %93 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %94 = load i64, ptr %93, align 8, !tbaa !4
  %95 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %add38 = add nsw i64 %94, %95
  %96 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  store i64 %add38, ptr %96, align 8, !tbaa !4
  %97 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %98 = load i64, ptr %97, align 8, !tbaa !4
  %99 = load i64, ptr %m.addr, align 8, !tbaa !4
  %100 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp39 = icmp slt i64 %99, %100
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %if.then36
  %101 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end42

cond.false41:                                     ; preds = %if.then36
  %102 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  %cond43 = phi i64 [ %101, %cond.true40 ], [ %102, %cond.false41 ]
  %cmp44 = icmp slt i64 %98, %cond43
  br i1 %cmp44, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %cond.end42
  %103 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %104 = load i64, ptr %103, align 8, !tbaa !4
  br label %cond.end52

cond.false46:                                     ; preds = %cond.end42
  %105 = load i64, ptr %m.addr, align 8, !tbaa !4
  %106 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp47 = icmp slt i64 %105, %106
  br i1 %cmp47, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.false46
  %107 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end50

cond.false49:                                     ; preds = %cond.false46
  %108 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  %cond51 = phi i64 [ %107, %cond.true48 ], [ %108, %cond.false49 ]
  br label %cond.end52

cond.end52:                                       ; preds = %cond.end50, %cond.true45
  %cond53 = phi i64 [ %104, %cond.true45 ], [ %cond51, %cond.end50 ]
  %109 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %cond53, ptr %109, align 8, !tbaa !4
  br label %if.end72

if.else54:                                        ; preds = %if.else34
  %110 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 0, ptr %110, align 8, !tbaa !4
  %111 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %112 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 %111, ptr %112, align 8, !tbaa !4
  %113 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %114 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %115 = load i64, ptr %114, align 8, !tbaa !4
  %116 = load i64, ptr %m.addr, align 8, !tbaa !4
  %117 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp55 = icmp slt i64 %116, %117
  br i1 %cmp55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %if.else54
  %118 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end58

cond.false57:                                     ; preds = %if.else54
  %119 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi i64 [ %118, %cond.true56 ], [ %119, %cond.false57 ]
  %add60 = add nsw i64 %115, %cond59
  %cmp61 = icmp slt i64 %113, %add60
  br i1 %cmp61, label %cond.true62, label %cond.false63

cond.true62:                                      ; preds = %cond.end58
  %120 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  br label %cond.end70

cond.false63:                                     ; preds = %cond.end58
  %121 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %122 = load i64, ptr %121, align 8, !tbaa !4
  %123 = load i64, ptr %m.addr, align 8, !tbaa !4
  %124 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp64 = icmp slt i64 %123, %124
  br i1 %cmp64, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %cond.false63
  %125 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end67

cond.false66:                                     ; preds = %cond.false63
  %126 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true65
  %cond68 = phi i64 [ %125, %cond.true65 ], [ %126, %cond.false66 ]
  %add69 = add nsw i64 %122, %cond68
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end67, %cond.true62
  %cond71 = phi i64 [ %120, %cond.true62 ], [ %add69, %cond.end67 ]
  %127 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %cond71, ptr %127, align 8, !tbaa !4
  br label %if.end72

if.end72:                                         ; preds = %cond.end70, %cond.end52
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end33
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter_max_) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %diagoff_eff_) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %diagoffa_use_) #3
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_zeros(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_extract_conj(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !8
  %0 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %and = and i32 %0, 16
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1v_ker_dt(i32 noundef %dt, i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !8
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %0 = load i32, ptr %ker_id.addr, align 4, !tbaa !8
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1v_kers(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !9
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_dense(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 224
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_upper(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 96
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_lower(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 192
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_daddm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 0, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds double, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds double, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds double, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds double, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds double, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_caddm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 0, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zaddm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 0, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_scopym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 5, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds float, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds float, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds float, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds float, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dcopym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 5, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds double, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds double, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds double, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds double, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds double, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_ccopym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 5, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zcopym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 5, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_ssubm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 12, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds float, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds float, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds float, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds float, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dsubm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 12, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds double, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds double, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds double, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds double, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds double, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_csubm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 12, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zsubm_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 12, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %y1, align 8, !tbaa !9
  %31 = load i64, ptr %incy, align 8, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, i64 noundef %31, ptr noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %34)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %37 = load i64, ptr %n_shift, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %37, %38
  %add16 = add nsw i64 %add, 1
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %39
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %40 = load i64, ptr %n_shift, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %40, %41
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %42 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %42, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load i64, ptr %ij0, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %44, %45
  %46 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %46
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %43, i64 %mul21
  %47 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %47
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %49 = load i64, ptr %ij0, align 8, !tbaa !4
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %49, %50
  %51 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %51
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %48, i64 %mul26
  %52 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %52
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %53 = load ptr, ptr %f, align 8, !tbaa !9
  %54 = load i32, ptr %conjx, align 4, !tbaa !8
  %55 = load i64, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x1, align 8, !tbaa !9
  %57 = load i64, ptr %incx, align 8, !tbaa !4
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %60 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %53(i32 noundef %54, i64 noundef %55, ptr noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %61 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %61, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %62 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %62)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %64 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %65, %66
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %67, %68
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %69 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %69, %70
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %71 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %73 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %72, %73
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %71, i64 %mul46
  %74 = load i64, ptr %ij0, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %74, %75
  %76 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %76
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %77 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %78, %79
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %77, i64 %mul51
  %80 = load i64, ptr %ij0, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %80, %81
  %82 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %82
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %83 = load ptr, ptr %f, align 8, !tbaa !9
  %84 = load i32, ptr %conjx, align 4, !tbaa !8
  %85 = load i64, ptr %n_elem, align 8, !tbaa !4
  %86 = load ptr, ptr %x1, align 8, !tbaa !9
  %87 = load i64, ptr %incx, align 8, !tbaa !4
  %88 = load ptr, ptr %y1, align 8, !tbaa !9
  %89 = load i64, ptr %incy, align 8, !tbaa !4
  %90 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %83(i32 noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %91 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %91, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_saxpym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 4, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds float, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds float, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds float, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds float, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_daxpym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 4, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds double, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds double, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds double, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds double, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds double, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_caxpym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 4, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zaxpym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 4, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_sscal2m_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 10, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds float, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds float, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds float, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds float, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dscal2m_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 10, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds double, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds double, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds double, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds double, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds double, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cscal2m_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 10, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zscal2m_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 10, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %29 = load ptr, ptr %x1, align 8, !tbaa !9
  %30 = load i64, ptr %incx, align 8, !tbaa !4
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %58 = load ptr, ptr %x1, align 8, !tbaa !9
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %x1, align 8, !tbaa !9
  %90 = load i64, ptr %incx, align 8, !tbaa !4
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_sscalm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 9, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds float, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds float, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds float, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds float, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds float, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds float, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @bli_set_dims_incs_uplo_1m(i64 noundef %diagoffa, i32 noundef %diaga, i32 noundef %uploa, i64 noundef %m, i64 noundef %n, i64 noundef %rs_a, i64 noundef %cs_a, ptr noundef %uplo_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %inca, ptr noundef %lda, ptr noundef %ij0, ptr noundef %n_shift) #0 {
entry:
  %diagoffa.addr = alloca i64, align 8
  %diaga.addr = alloca i32, align 4
  %uploa.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %rs_a.addr = alloca i64, align 8
  %cs_a.addr = alloca i64, align 8
  %uplo_eff.addr = alloca ptr, align 8
  %n_elem_max.addr = alloca ptr, align 8
  %n_iter.addr = alloca ptr, align 8
  %inca.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ij0.addr = alloca ptr, align 8
  %n_shift.addr = alloca ptr, align 8
  %diagoffa_use_ = alloca i64, align 8
  %diagoff_eff_ = alloca i64, align 8
  %n_iter_max_ = alloca i64, align 8
  store i64 %diagoffa, ptr %diagoffa.addr, align 8, !tbaa !4
  store i32 %diaga, ptr %diaga.addr, align 4, !tbaa !8
  store i32 %uploa, ptr %uploa.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %rs_a, ptr %rs_a.addr, align 8, !tbaa !4
  store i64 %cs_a, ptr %cs_a.addr, align 8, !tbaa !4
  store ptr %uplo_eff, ptr %uplo_eff.addr, align 8, !tbaa !9
  store ptr %n_elem_max, ptr %n_elem_max.addr, align 8, !tbaa !9
  store ptr %n_iter, ptr %n_iter.addr, align 8, !tbaa !9
  store ptr %inca, ptr %inca.addr, align 8, !tbaa !9
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !9
  store ptr %ij0, ptr %ij0.addr, align 8, !tbaa !9
  store ptr %n_shift, ptr %n_shift.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 0, ptr %0, align 8, !tbaa !4
  %1 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 0, ptr %1, align 8, !tbaa !4
  %2 = load i64, ptr %diagoffa.addr, align 8, !tbaa !4
  %3 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call = call zeroext i1 @bli_is_unstored_subpart(i64 noundef %2, i32 noundef 0, i32 noundef %3, i64 noundef %4, i64 noundef %5)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  store i32 0, ptr %6, align 4, !tbaa !8
  br label %if.end71

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %diagoffa_use_) #3
  %7 = load i64, ptr %diagoffa.addr, align 8, !tbaa !4
  store i64 %7, ptr %diagoffa_use_, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %diagoff_eff_) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter_max_) #3
  %8 = load i32, ptr %diaga.addr, align 4, !tbaa !8
  %call1 = call zeroext i1 @bli_is_unit_diag(i32 noundef %8)
  br i1 %call1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %9 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  call void @bli_shift_diag_offset_to_shrink_uplo(i32 noundef %9, ptr noundef %diagoffa_use_)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  %10 = load i64, ptr %diagoffa_use_, align 8, !tbaa !4
  %11 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  %12 = load i64, ptr %m.addr, align 8, !tbaa !4
  %13 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call3 = call zeroext i1 @bli_is_stored_subpart(i64 noundef %10, i32 noundef 0, i32 noundef %11, i64 noundef %12, i64 noundef %13)
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 224, ptr %uploa.addr, align 4, !tbaa !8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %14 = load i64, ptr %n.addr, align 8, !tbaa !4
  store i64 %14, ptr %n_iter_max_, align 8, !tbaa !4
  %15 = load i64, ptr %m.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  store i64 %15, ptr %16, align 8, !tbaa !4
  %17 = load i64, ptr %rs_a.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %inca.addr, align 8, !tbaa !9
  store i64 %17, ptr %18, align 8, !tbaa !4
  %19 = load i64, ptr %cs_a.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %lda.addr, align 8, !tbaa !9
  store i64 %19, ptr %20, align 8, !tbaa !4
  %21 = load i32, ptr %uploa.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  store i32 %21, ptr %22, align 4, !tbaa !8
  %23 = load i64, ptr %diagoffa_use_, align 8, !tbaa !4
  store i64 %23, ptr %diagoff_eff_, align 8, !tbaa !4
  %24 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %25 = load i64, ptr %24, align 8, !tbaa !4
  %26 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %27 = load ptr, ptr %inca.addr, align 8, !tbaa !9
  %28 = load i64, ptr %27, align 8, !tbaa !4
  %29 = load ptr, ptr %lda.addr, align 8, !tbaa !9
  %30 = load i64, ptr %29, align 8, !tbaa !4
  %call6 = call zeroext i1 @bli_is_row_tilted(i64 noundef %25, i64 noundef %26, i64 noundef %28, i64 noundef %30)
  br i1 %call6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %31 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  call void @bli_swap_dims(ptr noundef %n_iter_max_, ptr noundef %31)
  %32 = load ptr, ptr %inca.addr, align 8, !tbaa !9
  %33 = load ptr, ptr %lda.addr, align 8, !tbaa !9
  call void @bli_swap_incs(ptr noundef %32, ptr noundef %33)
  %34 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  call void @bli_toggle_uplo(ptr noundef %34)
  call void @bli_negate_diag_offset(ptr noundef %diagoff_eff_)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %35 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %call9 = call zeroext i1 @bli_is_dense(i32 noundef %36)
  br i1 %call9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  %37 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %38 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %37, ptr %38, align 8, !tbaa !4
  br label %if.end70

if.else11:                                        ; preds = %if.end8
  %39 = load ptr, ptr %uplo_eff.addr, align 8, !tbaa !9
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %call12 = call zeroext i1 @bli_is_upper(i32 noundef %40)
  br i1 %call12, label %if.then13, label %if.else30

if.then13:                                        ; preds = %if.else11
  %41 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %cmp = icmp slt i64 %41, 0
  br i1 %cmp, label %if.then14, label %if.else27

if.then14:                                        ; preds = %if.then13
  %42 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 0, ptr %42, align 8, !tbaa !4
  %43 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %sub = sub nsw i64 0, %43
  %44 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 %sub, ptr %44, align 8, !tbaa !4
  %45 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %46 = load i64, ptr %45, align 8, !tbaa !4
  %47 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %48 = load i64, ptr %47, align 8, !tbaa !4
  %49 = load i64, ptr %m.addr, align 8, !tbaa !4
  %50 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp15 = icmp slt i64 %49, %50
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  %51 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  %52 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %51, %cond.true ], [ %52, %cond.false ]
  %add = add nsw i64 %48, %cond
  %cmp16 = icmp slt i64 %46, %add
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end
  %53 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %54 = load i64, ptr %53, align 8, !tbaa !4
  br label %cond.end25

cond.false18:                                     ; preds = %cond.end
  %55 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %56 = load i64, ptr %55, align 8, !tbaa !4
  %57 = load i64, ptr %m.addr, align 8, !tbaa !4
  %58 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp19 = icmp slt i64 %57, %58
  br i1 %cmp19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %cond.false18
  %59 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end22

cond.false21:                                     ; preds = %cond.false18
  %60 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i64 [ %59, %cond.true20 ], [ %60, %cond.false21 ]
  %add24 = add nsw i64 %56, %cond23
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end22, %cond.true17
  %cond26 = phi i64 [ %54, %cond.true17 ], [ %add24, %cond.end22 ]
  %61 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  store i64 %cond26, ptr %61, align 8, !tbaa !4
  %62 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %63 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %62, ptr %63, align 8, !tbaa !4
  br label %if.end29

if.else27:                                        ; preds = %if.then13
  %64 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %65 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 %64, ptr %65, align 8, !tbaa !4
  %66 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 0, ptr %66, align 8, !tbaa !4
  %67 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %68 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %sub28 = sub nsw i64 %67, %68
  %69 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %sub28, ptr %69, align 8, !tbaa !4
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %cond.end25
  br label %if.end69

if.else30:                                        ; preds = %if.else11
  %70 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %cmp31 = icmp slt i64 %70, 0
  br i1 %cmp31, label %if.then32, label %if.else50

if.then32:                                        ; preds = %if.else30
  %71 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %sub33 = sub nsw i64 0, %71
  %72 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 %sub33, ptr %72, align 8, !tbaa !4
  %73 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 0, ptr %73, align 8, !tbaa !4
  %74 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %75 = load i64, ptr %74, align 8, !tbaa !4
  %76 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %add34 = add nsw i64 %75, %76
  %77 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  store i64 %add34, ptr %77, align 8, !tbaa !4
  %78 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %79 = load i64, ptr %78, align 8, !tbaa !4
  %80 = load i64, ptr %m.addr, align 8, !tbaa !4
  %81 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp35 = icmp slt i64 %80, %81
  br i1 %cmp35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %if.then32
  %82 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end38

cond.false37:                                     ; preds = %if.then32
  %83 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i64 [ %82, %cond.true36 ], [ %83, %cond.false37 ]
  %cmp40 = icmp slt i64 %79, %cond39
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %cond.end38
  %84 = load ptr, ptr %n_elem_max.addr, align 8, !tbaa !9
  %85 = load i64, ptr %84, align 8, !tbaa !4
  br label %cond.end48

cond.false42:                                     ; preds = %cond.end38
  %86 = load i64, ptr %m.addr, align 8, !tbaa !4
  %87 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp43 = icmp slt i64 %86, %87
  br i1 %cmp43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.false42
  %88 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end46

cond.false45:                                     ; preds = %cond.false42
  %89 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i64 [ %88, %cond.true44 ], [ %89, %cond.false45 ]
  br label %cond.end48

cond.end48:                                       ; preds = %cond.end46, %cond.true41
  %cond49 = phi i64 [ %85, %cond.true41 ], [ %cond47, %cond.end46 ]
  %90 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %cond49, ptr %90, align 8, !tbaa !4
  br label %if.end68

if.else50:                                        ; preds = %if.else30
  %91 = load ptr, ptr %ij0.addr, align 8, !tbaa !9
  store i64 0, ptr %91, align 8, !tbaa !4
  %92 = load i64, ptr %diagoff_eff_, align 8, !tbaa !4
  %93 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  store i64 %92, ptr %93, align 8, !tbaa !4
  %94 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  %95 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %96 = load i64, ptr %95, align 8, !tbaa !4
  %97 = load i64, ptr %m.addr, align 8, !tbaa !4
  %98 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp51 = icmp slt i64 %97, %98
  br i1 %cmp51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %if.else50
  %99 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end54

cond.false53:                                     ; preds = %if.else50
  %100 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i64 [ %99, %cond.true52 ], [ %100, %cond.false53 ]
  %add56 = add nsw i64 %96, %cond55
  %cmp57 = icmp slt i64 %94, %add56
  br i1 %cmp57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.end54
  %101 = load i64, ptr %n_iter_max_, align 8, !tbaa !4
  br label %cond.end66

cond.false59:                                     ; preds = %cond.end54
  %102 = load ptr, ptr %n_shift.addr, align 8, !tbaa !9
  %103 = load i64, ptr %102, align 8, !tbaa !4
  %104 = load i64, ptr %m.addr, align 8, !tbaa !4
  %105 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp60 = icmp slt i64 %104, %105
  br i1 %cmp60, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.false59
  %106 = load i64, ptr %m.addr, align 8, !tbaa !4
  br label %cond.end63

cond.false62:                                     ; preds = %cond.false59
  %107 = load i64, ptr %n.addr, align 8, !tbaa !4
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi i64 [ %106, %cond.true61 ], [ %107, %cond.false62 ]
  %add65 = add nsw i64 %103, %cond64
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end63, %cond.true58
  %cond67 = phi i64 [ %101, %cond.true58 ], [ %add65, %cond.end63 ]
  %108 = load ptr, ptr %n_iter.addr, align 8, !tbaa !9
  store i64 %cond67, ptr %108, align 8, !tbaa !4
  br label %if.end68

if.end68:                                         ; preds = %cond.end66, %cond.end48
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end29
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter_max_) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %diagoff_eff_) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %diagoffa_use_) #3
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dscalm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 9, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds double, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds double, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds double, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds double, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds double, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds double, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cscalm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 9, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds %struct.scomplex, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zscalm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 9, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_ssetm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 11, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds float, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds float, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds float, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds float, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds float, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds float, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dsetm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 11, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds double, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds double, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds double, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds double, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds double, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds double, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_csetm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 11, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds %struct.scomplex, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zsetm_unb_var1(i32 noundef %conjalpha, i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i64 noundef %m, i64 noundef %n, ptr noundef %alpha, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %conjalpha.addr = alloca i32, align 4
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i32 %conjalpha, ptr %conjalpha.addr, align 4, !tbaa !8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %6 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_1m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %ij0, ptr noundef %n_shift)
  %7 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 11, ptr noundef %8)
  store ptr %call1, ptr %f, align 8, !tbaa !9
  %9 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_dense(i32 noundef %9)
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %10 = load i64, ptr %j, align 8, !tbaa !4
  %11 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %12, ptr %n_elem, align 8, !tbaa !4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %14, %15
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %13, i64 %mul
  %16 = load i64, ptr %incx, align 8, !tbaa !4
  %mul4 = mul nsw i64 0, %16
  %add.ptr5 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul4
  store ptr %add.ptr5, ptr %x1, align 8, !tbaa !9
  %17 = load ptr, ptr %f, align 8, !tbaa !9
  %18 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %19 = load i64, ptr %n_elem, align 8, !tbaa !4
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %x1, align 8, !tbaa !9
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %23 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %17(i32 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22, ptr noundef %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %25 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call6 = call zeroext i1 @bli_is_upper(i32 noundef %25)
  br i1 %call6, label %if.then7, label %if.else23

if.then7:                                         ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc20, %if.then7
  %26 = load i64, ptr %j, align 8, !tbaa !4
  %27 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %26, %27
  br i1 %cmp9, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond8
  %28 = load i64, ptr %n_shift, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %28, %29
  %add11 = add nsw i64 %add, 1
  %30 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %add11, %30
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %31 = load i64, ptr %n_shift, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !4
  %add13 = add nsw i64 %31, %32
  %add14 = add nsw i64 %add13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %33 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ %33, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %34 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %35 = load i64, ptr %ij0, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %add15 = add nsw i64 %35, %36
  %37 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul16 = mul nsw i64 %add15, %37
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %34, i64 %mul16
  %38 = load i64, ptr %incx, align 8, !tbaa !4
  %mul18 = mul nsw i64 0, %38
  %add.ptr19 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr17, i64 %mul18
  store ptr %add.ptr19, ptr %x1, align 8, !tbaa !9
  %39 = load ptr, ptr %f, align 8, !tbaa !9
  %40 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %41 = load i64, ptr %n_elem, align 8, !tbaa !4
  %42 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %43 = load ptr, ptr %x1, align 8, !tbaa !9
  %44 = load i64, ptr %incx, align 8, !tbaa !4
  %45 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %39(i32 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef %44, ptr noundef %45)
  br label %for.inc20

for.inc20:                                        ; preds = %cond.end
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %inc21 = add nsw i64 %46, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !4
  br label %for.cond8

for.end22:                                        ; preds = %for.cond8
  br label %if.end45

if.else23:                                        ; preds = %if.else
  %47 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call24 = call zeroext i1 @bli_is_lower(i32 noundef %47)
  br i1 %call24, label %if.then25, label %if.end44

if.then25:                                        ; preds = %if.else23
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %if.then25
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %49 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp27 = icmp slt i64 %48, %49
  br i1 %cmp27, label %for.body28, label %for.end43

for.body28:                                       ; preds = %for.cond26
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %50, %51
  %cmp29 = icmp sgt i64 0, %sub
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %for.body28
  br label %cond.end33

cond.false31:                                     ; preds = %for.body28
  %52 = load i64, ptr %j, align 8, !tbaa !4
  %53 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub32 = sub nsw i64 %52, %53
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi i64 [ 0, %cond.true30 ], [ %sub32, %cond.false31 ]
  store i64 %cond34, ptr %i, align 8, !tbaa !4
  %54 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %55 = load i64, ptr %i, align 8, !tbaa !4
  %sub35 = sub nsw i64 %54, %55
  store i64 %sub35, ptr %n_elem, align 8, !tbaa !4
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %57, %58
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %mul36
  %59 = load i64, ptr %ij0, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !4
  %add38 = add nsw i64 %59, %60
  %61 = load i64, ptr %incx, align 8, !tbaa !4
  %mul39 = mul nsw i64 %add38, %61
  %add.ptr40 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr37, i64 %mul39
  store ptr %add.ptr40, ptr %x1, align 8, !tbaa !9
  %62 = load ptr, ptr %f, align 8, !tbaa !9
  %63 = load i32, ptr %conjalpha.addr, align 4, !tbaa !8
  %64 = load i64, ptr %n_elem, align 8, !tbaa !4
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %66 = load ptr, ptr %x1, align 8, !tbaa !9
  %67 = load i64, ptr %incx, align 8, !tbaa !4
  %68 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %62(i32 noundef %63, i64 noundef %64, ptr noundef %65, ptr noundef %66, i64 noundef %67, ptr noundef %68)
  br label %for.inc41

for.inc41:                                        ; preds = %cond.end33
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %69, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond26

for.end43:                                        ; preds = %for.cond26
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.else23
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_sxpbym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 0, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 0, i32 noundef 14, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds float, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds float, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  %58 = load i64, ptr %incx, align 8, !tbaa !4
  %59 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, i64 noundef %58, ptr noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds float, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds float, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  %89 = load i64, ptr %incx, align 8, !tbaa !4
  %90 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dxpbym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 2, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 2, i32 noundef 14, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds double, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds double, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds double, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  %58 = load i64, ptr %incx, align 8, !tbaa !4
  %59 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, i64 noundef %58, ptr noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds double, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds double, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  %89 = load i64, ptr %incx, align 8, !tbaa !4
  %90 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cxpbym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 14, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  %58 = load i64, ptr %incx, align 8, !tbaa !4
  %59 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, i64 noundef %58, ptr noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  %89 = load i64, ptr %incx, align 8, !tbaa !4
  %90 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zxpbym_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %conjx = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_zeros(i32 noundef %10)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %call1 = call i32 @bli_extract_conj(i32 noundef %11)
  store i32 %call1, ptr %conjx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #3
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 3, i32 noundef 14, ptr noundef %12)
  store ptr %call2, ptr %f, align 8, !tbaa !9
  %13 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call3 = call zeroext i1 @bli_is_dense(i32 noundef %13)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %14 = load i64, ptr %j, align 8, !tbaa !4
  %15 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp = icmp slt i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  %25 = load ptr, ptr %f, align 8, !tbaa !9
  %26 = load i32, ptr %conjx, align 4, !tbaa !8
  %27 = load i64, ptr %n_elem, align 8, !tbaa !4
  %28 = load ptr, ptr %x1, align 8, !tbaa !9
  %29 = load i64, ptr %incx, align 8, !tbaa !4
  %30 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %y1, align 8, !tbaa !9
  %32 = load i64, ptr %incy, align 8, !tbaa !4
  %33 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %25(i32 noundef %26, i64 noundef %27, ptr noundef %28, i64 noundef %29, ptr noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %34, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else:                                          ; preds = %if.end
  %35 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call11 = call zeroext i1 @bli_is_upper(i32 noundef %35)
  br i1 %call11, label %if.then12, label %if.else33

if.then12:                                        ; preds = %if.else
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %if.then12
  %36 = load i64, ptr %j, align 8, !tbaa !4
  %37 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %36, %37
  br i1 %cmp14, label %for.body15, label %for.end32

for.body15:                                       ; preds = %for.cond13
  %38 = load i64, ptr %n_shift, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !4
  %add = add nsw i64 %38, %39
  %add16 = add nsw i64 %add, 1
  %40 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %cmp17 = icmp slt i64 %add16, %40
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body15
  %41 = load i64, ptr %n_shift, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !4
  %add18 = add nsw i64 %41, %42
  %add19 = add nsw i64 %add18, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body15
  %43 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add19, %cond.true ], [ %43, %cond.false ]
  store i64 %cond, ptr %n_elem, align 8, !tbaa !4
  %44 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %45 = load i64, ptr %ij0, align 8, !tbaa !4
  %46 = load i64, ptr %j, align 8, !tbaa !4
  %add20 = add nsw i64 %45, %46
  %47 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul21 = mul nsw i64 %add20, %47
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %44, i64 %mul21
  %48 = load i64, ptr %incx, align 8, !tbaa !4
  %mul23 = mul nsw i64 0, %48
  %add.ptr24 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %mul23
  store ptr %add.ptr24, ptr %x1, align 8, !tbaa !9
  %49 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %50 = load i64, ptr %ij0, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !4
  %add25 = add nsw i64 %50, %51
  %52 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %add25, %52
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %49, i64 %mul26
  %53 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %53
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  %54 = load ptr, ptr %f, align 8, !tbaa !9
  %55 = load i32, ptr %conjx, align 4, !tbaa !8
  %56 = load i64, ptr %n_elem, align 8, !tbaa !4
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  %58 = load i64, ptr %incx, align 8, !tbaa !4
  %59 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %60 = load ptr, ptr %y1, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %54(i32 noundef %55, i64 noundef %56, ptr noundef %57, i64 noundef %58, ptr noundef %59, ptr noundef %60, i64 noundef %61, ptr noundef %62)
  br label %for.inc30

for.inc30:                                        ; preds = %cond.end
  %63 = load i64, ptr %j, align 8, !tbaa !4
  %inc31 = add nsw i64 %63, 1
  store i64 %inc31, ptr %j, align 8, !tbaa !4
  br label %for.cond13

for.end32:                                        ; preds = %for.cond13
  br label %if.end60

if.else33:                                        ; preds = %if.else
  %64 = load i32, ptr %uplox_eff, align 4, !tbaa !8
  %call34 = call zeroext i1 @bli_is_lower(i32 noundef %64)
  br i1 %call34, label %if.then35, label %if.end59

if.then35:                                        ; preds = %if.else33
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %if.then35
  %65 = load i64, ptr %j, align 8, !tbaa !4
  %66 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp37 = icmp slt i64 %65, %66
  br i1 %cmp37, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond36
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %68 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub = sub nsw i64 %67, %68
  %cmp39 = icmp sgt i64 0, %sub
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.body38
  br label %cond.end43

cond.false41:                                     ; preds = %for.body38
  %69 = load i64, ptr %j, align 8, !tbaa !4
  %70 = load i64, ptr %n_shift, align 8, !tbaa !4
  %sub42 = sub nsw i64 %69, %70
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i64 [ 0, %cond.true40 ], [ %sub42, %cond.false41 ]
  store i64 %cond44, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  %72 = load i64, ptr %i, align 8, !tbaa !4
  %sub45 = sub nsw i64 %71, %72
  store i64 %sub45, ptr %n_elem, align 8, !tbaa !4
  %73 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %75 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul46 = mul nsw i64 %74, %75
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %73, i64 %mul46
  %76 = load i64, ptr %ij0, align 8, !tbaa !4
  %77 = load i64, ptr %i, align 8, !tbaa !4
  %add48 = add nsw i64 %76, %77
  %78 = load i64, ptr %incx, align 8, !tbaa !4
  %mul49 = mul nsw i64 %add48, %78
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr47, i64 %mul49
  store ptr %add.ptr50, ptr %x1, align 8, !tbaa !9
  %79 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %80 = load i64, ptr %j, align 8, !tbaa !4
  %81 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul51 = mul nsw i64 %80, %81
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %79, i64 %mul51
  %82 = load i64, ptr %ij0, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %add53 = add nsw i64 %82, %83
  %84 = load i64, ptr %incy, align 8, !tbaa !4
  %mul54 = mul nsw i64 %add53, %84
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr52, i64 %mul54
  store ptr %add.ptr55, ptr %y1, align 8, !tbaa !9
  %85 = load ptr, ptr %f, align 8, !tbaa !9
  %86 = load i32, ptr %conjx, align 4, !tbaa !8
  %87 = load i64, ptr %n_elem, align 8, !tbaa !4
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  %89 = load i64, ptr %incx, align 8, !tbaa !4
  %90 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %91 = load ptr, ptr %y1, align 8, !tbaa !9
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %93 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %85(i32 noundef %86, i64 noundef %87, ptr noundef %88, i64 noundef %89, ptr noundef %90, ptr noundef %91, i64 noundef %92, ptr noundef %93)
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end43
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc57 = add nsw i64 %94, 1
  store i64 %inc57, ptr %j, align 8, !tbaa !4
  br label %for.cond36

for.end58:                                        ; preds = %for.cond36
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else33
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end32
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %conjx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @bli_ssxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi130 = alloca ptr, align 8
  %psi131 = alloca ptr, align 8
  %chi160 = alloca ptr, align 8
  %psi161 = alloca ptr, align 8
  %chi187 = alloca ptr, align 8
  %psi188 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load float, ptr %10, align 4, !tbaa !11
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else44

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float, ptr %29, i64 %30
  %31 = load float, ptr %arrayidx, align 4, !tbaa !11
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds float, ptr %32, i64 %33
  %34 = load float, ptr %arrayidx14, align 4, !tbaa !11
  %add = fadd float %31, %34
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds float, ptr %35, i64 %36
  store float %add, ptr %arrayidx15, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc17 = add nsw i64 %38, 1
  store i64 %inc17, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc41, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp20 = icmp slt i64 %40, %41
  br i1 %cmp20, label %for.body21, label %for.end43

for.body21:                                       ; preds = %for.cond19
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul22 = mul nsw i64 %43, %44
  %add.ptr23 = getelementptr inbounds float, ptr %42, i64 %mul22
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul24 = mul nsw i64 0, %45
  %add.ptr25 = getelementptr inbounds float, ptr %add.ptr23, i64 %mul24
  store ptr %add.ptr25, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %47, %48
  %add.ptr27 = getelementptr inbounds float, ptr %46, i64 %mul26
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %49
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi130) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi130, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi131) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi131, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc38, %for.body21
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp33 = icmp slt i64 %52, %53
  br i1 %cmp33, label %for.body34, label %for.end40

for.body34:                                       ; preds = %for.cond32
  %54 = load ptr, ptr %psi131, align 8, !tbaa !9
  %55 = load float, ptr %54, align 4, !tbaa !11
  %56 = load ptr, ptr %chi130, align 8, !tbaa !9
  %57 = load float, ptr %56, align 4, !tbaa !11
  %add35 = fadd float %55, %57
  %58 = load ptr, ptr %psi131, align 8, !tbaa !9
  store float %add35, ptr %58, align 4, !tbaa !11
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi130, align 8, !tbaa !9
  %add.ptr36 = getelementptr inbounds float, ptr %60, i64 %59
  store ptr %add.ptr36, ptr %chi130, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi131, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds float, ptr %62, i64 %61
  store ptr %add.ptr37, ptr %psi131, align 8, !tbaa !9
  br label %for.inc38

for.inc38:                                        ; preds = %for.body34
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc39 = add nsw i64 %63, 1
  store i64 %inc39, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.end40:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi131) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi130) #3
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %64, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.end43:                                        ; preds = %for.cond19
  br label %if.end

if.end:                                           ; preds = %for.end43, %for.end18
  br label %if.end102

if.else44:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp45 = icmp eq i64 %65, 1
  br i1 %cmp45, label %land.lhs.true46, label %if.else75

land.lhs.true46:                                  ; preds = %if.else44
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp47 = icmp eq i64 %66, 1
  br i1 %cmp47, label %if.then48, label %if.else75

if.then48:                                        ; preds = %land.lhs.true46
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc72, %if.then48
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp50 = icmp slt i64 %68, %69
  br i1 %cmp50, label %for.body51, label %for.end74

for.body51:                                       ; preds = %for.cond49
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul52 = mul nsw i64 %71, %72
  %add.ptr53 = getelementptr inbounds float, ptr %70, i64 %mul52
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul54 = mul nsw i64 0, %73
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr53, i64 %mul54
  store ptr %add.ptr55, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul56 = mul nsw i64 %75, %76
  %add.ptr57 = getelementptr inbounds float, ptr %74, i64 %mul56
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul58 = mul nsw i64 0, %77
  %add.ptr59 = getelementptr inbounds float, ptr %add.ptr57, i64 %mul58
  store ptr %add.ptr59, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi160) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi160, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi161) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi161, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc69, %for.body51
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp63 = icmp slt i64 %80, %81
  br i1 %cmp63, label %for.body64, label %for.end71

for.body64:                                       ; preds = %for.cond62
  %82 = load ptr, ptr %chi160, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx65 = getelementptr inbounds float, ptr %82, i64 %83
  %84 = load float, ptr %arrayidx65, align 4, !tbaa !11
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load float, ptr %85, align 4, !tbaa !11
  %87 = load ptr, ptr %psi161, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx66 = getelementptr inbounds float, ptr %87, i64 %88
  %89 = load float, ptr %arrayidx66, align 4, !tbaa !11
  %90 = call float @llvm.fmuladd.f32(float %86, float %89, float %84)
  %91 = load ptr, ptr %psi161, align 8, !tbaa !9
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx68 = getelementptr inbounds float, ptr %91, i64 %92
  store float %90, ptr %arrayidx68, align 4, !tbaa !11
  br label %for.inc69

for.inc69:                                        ; preds = %for.body64
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %inc70 = add nsw i64 %93, 1
  store i64 %inc70, ptr %i, align 8, !tbaa !4
  br label %for.cond62

for.end71:                                        ; preds = %for.cond62
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi161) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi160) #3
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc73 = add nsw i64 %94, 1
  store i64 %inc73, ptr %j, align 8, !tbaa !4
  br label %for.cond49

for.end74:                                        ; preds = %for.cond49
  br label %if.end101

if.else75:                                        ; preds = %land.lhs.true46, %if.else44
  %95 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %95, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc98, %if.else75
  %96 = load i64, ptr %j, align 8, !tbaa !4
  %97 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp77 = icmp slt i64 %96, %97
  br i1 %cmp77, label %for.body78, label %for.end100

for.body78:                                       ; preds = %for.cond76
  %98 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %99 = load i64, ptr %j, align 8, !tbaa !4
  %100 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul79 = mul nsw i64 %99, %100
  %add.ptr80 = getelementptr inbounds float, ptr %98, i64 %mul79
  %101 = load i64, ptr %incx, align 8, !tbaa !4
  %mul81 = mul nsw i64 0, %101
  %add.ptr82 = getelementptr inbounds float, ptr %add.ptr80, i64 %mul81
  store ptr %add.ptr82, ptr %x1, align 8, !tbaa !9
  %102 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %103 = load i64, ptr %j, align 8, !tbaa !4
  %104 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul83 = mul nsw i64 %103, %104
  %add.ptr84 = getelementptr inbounds float, ptr %102, i64 %mul83
  %105 = load i64, ptr %incy, align 8, !tbaa !4
  %mul85 = mul nsw i64 0, %105
  %add.ptr86 = getelementptr inbounds float, ptr %add.ptr84, i64 %mul85
  store ptr %add.ptr86, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi187) #3
  %106 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %106, ptr %chi187, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi188) #3
  %107 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %107, ptr %psi188, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc95, %for.body78
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %109 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp90 = icmp slt i64 %108, %109
  br i1 %cmp90, label %for.body91, label %for.end97

for.body91:                                       ; preds = %for.cond89
  %110 = load ptr, ptr %chi187, align 8, !tbaa !9
  %111 = load float, ptr %110, align 4, !tbaa !11
  %112 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %113 = load float, ptr %112, align 4, !tbaa !11
  %114 = load ptr, ptr %psi188, align 8, !tbaa !9
  %115 = load float, ptr %114, align 4, !tbaa !11
  %116 = call float @llvm.fmuladd.f32(float %113, float %115, float %111)
  %117 = load ptr, ptr %psi188, align 8, !tbaa !9
  store float %116, ptr %117, align 4, !tbaa !11
  %118 = load i64, ptr %incx, align 8, !tbaa !4
  %119 = load ptr, ptr %chi187, align 8, !tbaa !9
  %add.ptr93 = getelementptr inbounds float, ptr %119, i64 %118
  store ptr %add.ptr93, ptr %chi187, align 8, !tbaa !9
  %120 = load i64, ptr %incy, align 8, !tbaa !4
  %121 = load ptr, ptr %psi188, align 8, !tbaa !9
  %add.ptr94 = getelementptr inbounds float, ptr %121, i64 %120
  store ptr %add.ptr94, ptr %psi188, align 8, !tbaa !9
  br label %for.inc95

for.inc95:                                        ; preds = %for.body91
  %122 = load i64, ptr %i, align 8, !tbaa !4
  %inc96 = add nsw i64 %122, 1
  store i64 %inc96, ptr %i, align 8, !tbaa !4
  br label %for.cond89

for.end97:                                        ; preds = %for.cond89
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi188) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi187) #3
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %123 = load i64, ptr %j, align 8, !tbaa !4
  %inc99 = add nsw i64 %123, 1
  store i64 %inc99, ptr %j, align 8, !tbaa !4
  br label %for.cond76

for.end100:                                       ; preds = %for.cond76
  br label %if.end101

if.end101:                                        ; preds = %for.end100, %for.end74
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_ddxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi130 = alloca ptr, align 8
  %psi131 = alloca ptr, align 8
  %chi160 = alloca ptr, align 8
  %psi161 = alloca ptr, align 8
  %chi187 = alloca ptr, align 8
  %psi188 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load double, ptr %10, align 8, !tbaa !13
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else44

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %29, i64 %30
  %31 = load double, ptr %arrayidx, align 8, !tbaa !13
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds double, ptr %32, i64 %33
  %34 = load double, ptr %arrayidx14, align 8, !tbaa !13
  %add = fadd double %31, %34
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double, ptr %35, i64 %36
  store double %add, ptr %arrayidx15, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc17 = add nsw i64 %38, 1
  store i64 %inc17, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc41, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp20 = icmp slt i64 %40, %41
  br i1 %cmp20, label %for.body21, label %for.end43

for.body21:                                       ; preds = %for.cond19
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul22 = mul nsw i64 %43, %44
  %add.ptr23 = getelementptr inbounds double, ptr %42, i64 %mul22
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul24 = mul nsw i64 0, %45
  %add.ptr25 = getelementptr inbounds double, ptr %add.ptr23, i64 %mul24
  store ptr %add.ptr25, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %47, %48
  %add.ptr27 = getelementptr inbounds double, ptr %46, i64 %mul26
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %49
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi130) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi130, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi131) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi131, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc38, %for.body21
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp33 = icmp slt i64 %52, %53
  br i1 %cmp33, label %for.body34, label %for.end40

for.body34:                                       ; preds = %for.cond32
  %54 = load ptr, ptr %psi131, align 8, !tbaa !9
  %55 = load double, ptr %54, align 8, !tbaa !13
  %56 = load ptr, ptr %chi130, align 8, !tbaa !9
  %57 = load double, ptr %56, align 8, !tbaa !13
  %add35 = fadd double %55, %57
  %58 = load ptr, ptr %psi131, align 8, !tbaa !9
  store double %add35, ptr %58, align 8, !tbaa !13
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi130, align 8, !tbaa !9
  %add.ptr36 = getelementptr inbounds double, ptr %60, i64 %59
  store ptr %add.ptr36, ptr %chi130, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi131, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds double, ptr %62, i64 %61
  store ptr %add.ptr37, ptr %psi131, align 8, !tbaa !9
  br label %for.inc38

for.inc38:                                        ; preds = %for.body34
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc39 = add nsw i64 %63, 1
  store i64 %inc39, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.end40:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi131) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi130) #3
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc42 = add nsw i64 %64, 1
  store i64 %inc42, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.end43:                                        ; preds = %for.cond19
  br label %if.end

if.end:                                           ; preds = %for.end43, %for.end18
  br label %if.end102

if.else44:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp45 = icmp eq i64 %65, 1
  br i1 %cmp45, label %land.lhs.true46, label %if.else75

land.lhs.true46:                                  ; preds = %if.else44
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp47 = icmp eq i64 %66, 1
  br i1 %cmp47, label %if.then48, label %if.else75

if.then48:                                        ; preds = %land.lhs.true46
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc72, %if.then48
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp50 = icmp slt i64 %68, %69
  br i1 %cmp50, label %for.body51, label %for.end74

for.body51:                                       ; preds = %for.cond49
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul52 = mul nsw i64 %71, %72
  %add.ptr53 = getelementptr inbounds double, ptr %70, i64 %mul52
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul54 = mul nsw i64 0, %73
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr53, i64 %mul54
  store ptr %add.ptr55, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul56 = mul nsw i64 %75, %76
  %add.ptr57 = getelementptr inbounds double, ptr %74, i64 %mul56
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul58 = mul nsw i64 0, %77
  %add.ptr59 = getelementptr inbounds double, ptr %add.ptr57, i64 %mul58
  store ptr %add.ptr59, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi160) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi160, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi161) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi161, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc69, %for.body51
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp63 = icmp slt i64 %80, %81
  br i1 %cmp63, label %for.body64, label %for.end71

for.body64:                                       ; preds = %for.cond62
  %82 = load ptr, ptr %chi160, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx65 = getelementptr inbounds double, ptr %82, i64 %83
  %84 = load double, ptr %arrayidx65, align 8, !tbaa !13
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load double, ptr %85, align 8, !tbaa !13
  %87 = load ptr, ptr %psi161, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx66 = getelementptr inbounds double, ptr %87, i64 %88
  %89 = load double, ptr %arrayidx66, align 8, !tbaa !13
  %90 = call double @llvm.fmuladd.f64(double %86, double %89, double %84)
  %91 = load ptr, ptr %psi161, align 8, !tbaa !9
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx68 = getelementptr inbounds double, ptr %91, i64 %92
  store double %90, ptr %arrayidx68, align 8, !tbaa !13
  br label %for.inc69

for.inc69:                                        ; preds = %for.body64
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %inc70 = add nsw i64 %93, 1
  store i64 %inc70, ptr %i, align 8, !tbaa !4
  br label %for.cond62

for.end71:                                        ; preds = %for.cond62
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi161) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi160) #3
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc73 = add nsw i64 %94, 1
  store i64 %inc73, ptr %j, align 8, !tbaa !4
  br label %for.cond49

for.end74:                                        ; preds = %for.cond49
  br label %if.end101

if.else75:                                        ; preds = %land.lhs.true46, %if.else44
  %95 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %95, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc98, %if.else75
  %96 = load i64, ptr %j, align 8, !tbaa !4
  %97 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp77 = icmp slt i64 %96, %97
  br i1 %cmp77, label %for.body78, label %for.end100

for.body78:                                       ; preds = %for.cond76
  %98 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %99 = load i64, ptr %j, align 8, !tbaa !4
  %100 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul79 = mul nsw i64 %99, %100
  %add.ptr80 = getelementptr inbounds double, ptr %98, i64 %mul79
  %101 = load i64, ptr %incx, align 8, !tbaa !4
  %mul81 = mul nsw i64 0, %101
  %add.ptr82 = getelementptr inbounds double, ptr %add.ptr80, i64 %mul81
  store ptr %add.ptr82, ptr %x1, align 8, !tbaa !9
  %102 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %103 = load i64, ptr %j, align 8, !tbaa !4
  %104 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul83 = mul nsw i64 %103, %104
  %add.ptr84 = getelementptr inbounds double, ptr %102, i64 %mul83
  %105 = load i64, ptr %incy, align 8, !tbaa !4
  %mul85 = mul nsw i64 0, %105
  %add.ptr86 = getelementptr inbounds double, ptr %add.ptr84, i64 %mul85
  store ptr %add.ptr86, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi187) #3
  %106 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %106, ptr %chi187, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi188) #3
  %107 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %107, ptr %psi188, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc95, %for.body78
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %109 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp90 = icmp slt i64 %108, %109
  br i1 %cmp90, label %for.body91, label %for.end97

for.body91:                                       ; preds = %for.cond89
  %110 = load ptr, ptr %chi187, align 8, !tbaa !9
  %111 = load double, ptr %110, align 8, !tbaa !13
  %112 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %113 = load double, ptr %112, align 8, !tbaa !13
  %114 = load ptr, ptr %psi188, align 8, !tbaa !9
  %115 = load double, ptr %114, align 8, !tbaa !13
  %116 = call double @llvm.fmuladd.f64(double %113, double %115, double %111)
  %117 = load ptr, ptr %psi188, align 8, !tbaa !9
  store double %116, ptr %117, align 8, !tbaa !13
  %118 = load i64, ptr %incx, align 8, !tbaa !4
  %119 = load ptr, ptr %chi187, align 8, !tbaa !9
  %add.ptr93 = getelementptr inbounds double, ptr %119, i64 %118
  store ptr %add.ptr93, ptr %chi187, align 8, !tbaa !9
  %120 = load i64, ptr %incy, align 8, !tbaa !4
  %121 = load ptr, ptr %psi188, align 8, !tbaa !9
  %add.ptr94 = getelementptr inbounds double, ptr %121, i64 %120
  store ptr %add.ptr94, ptr %psi188, align 8, !tbaa !9
  br label %for.inc95

for.inc95:                                        ; preds = %for.body91
  %122 = load i64, ptr %i, align 8, !tbaa !4
  %inc96 = add nsw i64 %122, 1
  store i64 %inc96, ptr %i, align 8, !tbaa !4
  br label %for.cond89

for.end97:                                        ; preds = %for.cond89
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi188) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi187) #3
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %123 = load i64, ptr %j, align 8, !tbaa !4
  %inc99 = add nsw i64 %123, 1
  store i64 %inc99, ptr %j, align 8, !tbaa !4
  br label %for.cond76

for.end100:                                       ; preds = %for.cond76
  br label %if.end101

if.end101:                                        ; preds = %for.end100, %for.end74
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_ccxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi142 = alloca ptr, align 8
  %psi143 = alloca ptr, align 8
  %chi179 = alloca ptr, align 8
  %psi180 = alloca ptr, align 8
  %yt_r = alloca float, align 4
  %yt_i = alloca float, align 4
  %chi1126 = alloca ptr, align 8
  %psi1127 = alloca ptr, align 8
  %yt_r131 = alloca float, align 4
  %yt_i140 = alloca float, align 4
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %10, i32 0, i32 0
  %11 = load float, ptr %real, align 4, !tbaa !15
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %12, i32 0, i32 1
  %13 = load float, ptr %imag, align 4, !tbaa !17
  %cmp1 = fcmp oeq float %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else63

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.scomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.scomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load float, ptr %real16, align 4, !tbaa !15
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds %struct.scomplex, ptr %34, i64 %35
  %real18 = getelementptr inbounds %struct.scomplex, ptr %arrayidx17, i32 0, i32 0
  %36 = load float, ptr %real18, align 4, !tbaa !15
  %add = fadd float %33, %36
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds %struct.scomplex, ptr %37, i64 %38
  %real20 = getelementptr inbounds %struct.scomplex, ptr %arrayidx19, i32 0, i32 0
  store float %add, ptr %real20, align 4, !tbaa !15
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.scomplex, ptr %39, i64 %40
  %imag22 = getelementptr inbounds %struct.scomplex, ptr %arrayidx21, i32 0, i32 1
  %41 = load float, ptr %imag22, align 4, !tbaa !17
  %42 = load ptr, ptr %chi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %43
  %imag24 = getelementptr inbounds %struct.scomplex, ptr %arrayidx23, i32 0, i32 1
  %44 = load float, ptr %imag24, align 4, !tbaa !17
  %add25 = fadd float %41, %44
  %45 = load ptr, ptr %psi1, align 8, !tbaa !9
  %46 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds %struct.scomplex, ptr %45, i64 %46
  %imag27 = getelementptr inbounds %struct.scomplex, ptr %arrayidx26, i32 0, i32 1
  store float %add25, ptr %imag27, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %47 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %47, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %inc29 = add nsw i64 %48, 1
  store i64 %inc29, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %49 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %49, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc60, %if.else
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp32 = icmp slt i64 %50, %51
  br i1 %cmp32, label %for.body33, label %for.end62

for.body33:                                       ; preds = %for.cond31
  %52 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %53 = load i64, ptr %j, align 8, !tbaa !4
  %54 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul34 = mul nsw i64 %53, %54
  %add.ptr35 = getelementptr inbounds %struct.scomplex, ptr %52, i64 %mul34
  %55 = load i64, ptr %incx, align 8, !tbaa !4
  %mul36 = mul nsw i64 0, %55
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %add.ptr35, i64 %mul36
  store ptr %add.ptr37, ptr %x1, align 8, !tbaa !9
  %56 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul38 = mul nsw i64 %57, %58
  %add.ptr39 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %mul38
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %mul40 = mul nsw i64 0, %59
  %add.ptr41 = getelementptr inbounds %struct.scomplex, ptr %add.ptr39, i64 %mul40
  store ptr %add.ptr41, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi142) #3
  %60 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %60, ptr %chi142, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi143) #3
  %61 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %61, ptr %psi143, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.body33
  %62 = load i64, ptr %i, align 8, !tbaa !4
  %63 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp45 = icmp slt i64 %62, %63
  br i1 %cmp45, label %for.body46, label %for.end59

for.body46:                                       ; preds = %for.cond44
  %64 = load ptr, ptr %psi143, align 8, !tbaa !9
  %real47 = getelementptr inbounds %struct.scomplex, ptr %64, i32 0, i32 0
  %65 = load float, ptr %real47, align 4, !tbaa !15
  %66 = load ptr, ptr %chi142, align 8, !tbaa !9
  %real48 = getelementptr inbounds %struct.scomplex, ptr %66, i32 0, i32 0
  %67 = load float, ptr %real48, align 4, !tbaa !15
  %add49 = fadd float %65, %67
  %68 = load ptr, ptr %psi143, align 8, !tbaa !9
  %real50 = getelementptr inbounds %struct.scomplex, ptr %68, i32 0, i32 0
  store float %add49, ptr %real50, align 4, !tbaa !15
  %69 = load ptr, ptr %psi143, align 8, !tbaa !9
  %imag51 = getelementptr inbounds %struct.scomplex, ptr %69, i32 0, i32 1
  %70 = load float, ptr %imag51, align 4, !tbaa !17
  %71 = load ptr, ptr %chi142, align 8, !tbaa !9
  %imag52 = getelementptr inbounds %struct.scomplex, ptr %71, i32 0, i32 1
  %72 = load float, ptr %imag52, align 4, !tbaa !17
  %add53 = fadd float %70, %72
  %73 = load ptr, ptr %psi143, align 8, !tbaa !9
  %imag54 = getelementptr inbounds %struct.scomplex, ptr %73, i32 0, i32 1
  store float %add53, ptr %imag54, align 4, !tbaa !17
  %74 = load i64, ptr %incx, align 8, !tbaa !4
  %75 = load ptr, ptr %chi142, align 8, !tbaa !9
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %75, i64 %74
  store ptr %add.ptr55, ptr %chi142, align 8, !tbaa !9
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %77 = load ptr, ptr %psi143, align 8, !tbaa !9
  %add.ptr56 = getelementptr inbounds %struct.scomplex, ptr %77, i64 %76
  store ptr %add.ptr56, ptr %psi143, align 8, !tbaa !9
  br label %for.inc57

for.inc57:                                        ; preds = %for.body46
  %78 = load i64, ptr %i, align 8, !tbaa !4
  %inc58 = add nsw i64 %78, 1
  store i64 %inc58, ptr %i, align 8, !tbaa !4
  br label %for.cond44

for.end59:                                        ; preds = %for.cond44
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi143) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi142) #3
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %79 = load i64, ptr %j, align 8, !tbaa !4
  %inc61 = add nsw i64 %79, 1
  store i64 %inc61, ptr %j, align 8, !tbaa !4
  br label %for.cond31

for.end62:                                        ; preds = %for.cond31
  br label %if.end

if.end:                                           ; preds = %for.end62, %for.end30
  br label %if.end159

if.else63:                                        ; preds = %land.lhs.true, %entry
  %80 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp64 = icmp eq i64 %80, 1
  br i1 %cmp64, label %land.lhs.true65, label %if.else114

land.lhs.true65:                                  ; preds = %if.else63
  %81 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp66 = icmp eq i64 %81, 1
  br i1 %cmp66, label %if.then67, label %if.else114

if.then67:                                        ; preds = %land.lhs.true65
  %82 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %82, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc111, %if.then67
  %83 = load i64, ptr %j, align 8, !tbaa !4
  %84 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp69 = icmp slt i64 %83, %84
  br i1 %cmp69, label %for.body70, label %for.end113

for.body70:                                       ; preds = %for.cond68
  %85 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %86 = load i64, ptr %j, align 8, !tbaa !4
  %87 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul71 = mul nsw i64 %86, %87
  %add.ptr72 = getelementptr inbounds %struct.scomplex, ptr %85, i64 %mul71
  %88 = load i64, ptr %incx, align 8, !tbaa !4
  %mul73 = mul nsw i64 0, %88
  %add.ptr74 = getelementptr inbounds %struct.scomplex, ptr %add.ptr72, i64 %mul73
  store ptr %add.ptr74, ptr %x1, align 8, !tbaa !9
  %89 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %90 = load i64, ptr %j, align 8, !tbaa !4
  %91 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul75 = mul nsw i64 %90, %91
  %add.ptr76 = getelementptr inbounds %struct.scomplex, ptr %89, i64 %mul75
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %mul77 = mul nsw i64 0, %92
  %add.ptr78 = getelementptr inbounds %struct.scomplex, ptr %add.ptr76, i64 %mul77
  store ptr %add.ptr78, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi179) #3
  %93 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %93, ptr %chi179, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi180) #3
  %94 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %94, ptr %psi180, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc108, %for.body70
  %95 = load i64, ptr %i, align 8, !tbaa !4
  %96 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp82 = icmp slt i64 %95, %96
  br i1 %cmp82, label %for.body83, label %for.end110

for.body83:                                       ; preds = %for.cond81
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r) #3
  %97 = load ptr, ptr %chi179, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds %struct.scomplex, ptr %97, i64 %98
  %real85 = getelementptr inbounds %struct.scomplex, ptr %arrayidx84, i32 0, i32 0
  %99 = load float, ptr %real85, align 4, !tbaa !15
  %100 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real86 = getelementptr inbounds %struct.scomplex, ptr %100, i32 0, i32 0
  %101 = load float, ptr %real86, align 4, !tbaa !15
  %102 = load ptr, ptr %psi180, align 8, !tbaa !9
  %103 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds %struct.scomplex, ptr %102, i64 %103
  %real88 = getelementptr inbounds %struct.scomplex, ptr %arrayidx87, i32 0, i32 0
  %104 = load float, ptr %real88, align 4, !tbaa !15
  %105 = call float @llvm.fmuladd.f32(float %101, float %104, float %99)
  %106 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag90 = getelementptr inbounds %struct.scomplex, ptr %106, i32 0, i32 1
  %107 = load float, ptr %imag90, align 4, !tbaa !17
  %108 = load ptr, ptr %psi180, align 8, !tbaa !9
  %109 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx91 = getelementptr inbounds %struct.scomplex, ptr %108, i64 %109
  %imag92 = getelementptr inbounds %struct.scomplex, ptr %arrayidx91, i32 0, i32 1
  %110 = load float, ptr %imag92, align 4, !tbaa !17
  %neg = fneg float %107
  %111 = call float @llvm.fmuladd.f32(float %neg, float %110, float %105)
  store float %111, ptr %yt_r, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i) #3
  %112 = load ptr, ptr %chi179, align 8, !tbaa !9
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds %struct.scomplex, ptr %112, i64 %113
  %imag95 = getelementptr inbounds %struct.scomplex, ptr %arrayidx94, i32 0, i32 1
  %114 = load float, ptr %imag95, align 4, !tbaa !17
  %115 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag96 = getelementptr inbounds %struct.scomplex, ptr %115, i32 0, i32 1
  %116 = load float, ptr %imag96, align 4, !tbaa !17
  %117 = load ptr, ptr %psi180, align 8, !tbaa !9
  %118 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds %struct.scomplex, ptr %117, i64 %118
  %real98 = getelementptr inbounds %struct.scomplex, ptr %arrayidx97, i32 0, i32 0
  %119 = load float, ptr %real98, align 4, !tbaa !15
  %120 = call float @llvm.fmuladd.f32(float %116, float %119, float %114)
  %121 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real100 = getelementptr inbounds %struct.scomplex, ptr %121, i32 0, i32 0
  %122 = load float, ptr %real100, align 4, !tbaa !15
  %123 = load ptr, ptr %psi180, align 8, !tbaa !9
  %124 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds %struct.scomplex, ptr %123, i64 %124
  %imag102 = getelementptr inbounds %struct.scomplex, ptr %arrayidx101, i32 0, i32 1
  %125 = load float, ptr %imag102, align 4, !tbaa !17
  %126 = call float @llvm.fmuladd.f32(float %122, float %125, float %120)
  store float %126, ptr %yt_i, align 4, !tbaa !11
  %127 = load float, ptr %yt_r, align 4, !tbaa !11
  %128 = load ptr, ptr %psi180, align 8, !tbaa !9
  %129 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds %struct.scomplex, ptr %128, i64 %129
  %real105 = getelementptr inbounds %struct.scomplex, ptr %arrayidx104, i32 0, i32 0
  store float %127, ptr %real105, align 4, !tbaa !15
  %130 = load float, ptr %yt_i, align 4, !tbaa !11
  %131 = load ptr, ptr %psi180, align 8, !tbaa !9
  %132 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds %struct.scomplex, ptr %131, i64 %132
  %imag107 = getelementptr inbounds %struct.scomplex, ptr %arrayidx106, i32 0, i32 1
  store float %130, ptr %imag107, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r) #3
  br label %for.inc108

for.inc108:                                       ; preds = %for.body83
  %133 = load i64, ptr %i, align 8, !tbaa !4
  %inc109 = add nsw i64 %133, 1
  store i64 %inc109, ptr %i, align 8, !tbaa !4
  br label %for.cond81

for.end110:                                       ; preds = %for.cond81
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi180) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi179) #3
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %134 = load i64, ptr %j, align 8, !tbaa !4
  %inc112 = add nsw i64 %134, 1
  store i64 %inc112, ptr %j, align 8, !tbaa !4
  br label %for.cond68

for.end113:                                       ; preds = %for.cond68
  br label %if.end158

if.else114:                                       ; preds = %land.lhs.true65, %if.else63
  %135 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %135, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc155, %if.else114
  %136 = load i64, ptr %j, align 8, !tbaa !4
  %137 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp116 = icmp slt i64 %136, %137
  br i1 %cmp116, label %for.body117, label %for.end157

for.body117:                                      ; preds = %for.cond115
  %138 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %139 = load i64, ptr %j, align 8, !tbaa !4
  %140 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul118 = mul nsw i64 %139, %140
  %add.ptr119 = getelementptr inbounds %struct.scomplex, ptr %138, i64 %mul118
  %141 = load i64, ptr %incx, align 8, !tbaa !4
  %mul120 = mul nsw i64 0, %141
  %add.ptr121 = getelementptr inbounds %struct.scomplex, ptr %add.ptr119, i64 %mul120
  store ptr %add.ptr121, ptr %x1, align 8, !tbaa !9
  %142 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %143 = load i64, ptr %j, align 8, !tbaa !4
  %144 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul122 = mul nsw i64 %143, %144
  %add.ptr123 = getelementptr inbounds %struct.scomplex, ptr %142, i64 %mul122
  %145 = load i64, ptr %incy, align 8, !tbaa !4
  %mul124 = mul nsw i64 0, %145
  %add.ptr125 = getelementptr inbounds %struct.scomplex, ptr %add.ptr123, i64 %mul124
  store ptr %add.ptr125, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1126) #3
  %146 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %146, ptr %chi1126, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1127) #3
  %147 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %147, ptr %psi1127, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc152, %for.body117
  %148 = load i64, ptr %i, align 8, !tbaa !4
  %149 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp129 = icmp slt i64 %148, %149
  br i1 %cmp129, label %for.body130, label %for.end154

for.body130:                                      ; preds = %for.cond128
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r131) #3
  %150 = load ptr, ptr %chi1126, align 8, !tbaa !9
  %real132 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 0
  %151 = load float, ptr %real132, align 4, !tbaa !15
  %152 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real133 = getelementptr inbounds %struct.scomplex, ptr %152, i32 0, i32 0
  %153 = load float, ptr %real133, align 4, !tbaa !15
  %154 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %real134 = getelementptr inbounds %struct.scomplex, ptr %154, i32 0, i32 0
  %155 = load float, ptr %real134, align 4, !tbaa !15
  %156 = call float @llvm.fmuladd.f32(float %153, float %155, float %151)
  %157 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag136 = getelementptr inbounds %struct.scomplex, ptr %157, i32 0, i32 1
  %158 = load float, ptr %imag136, align 4, !tbaa !17
  %159 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %imag137 = getelementptr inbounds %struct.scomplex, ptr %159, i32 0, i32 1
  %160 = load float, ptr %imag137, align 4, !tbaa !17
  %neg139 = fneg float %158
  %161 = call float @llvm.fmuladd.f32(float %neg139, float %160, float %156)
  store float %161, ptr %yt_r131, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i140) #3
  %162 = load ptr, ptr %chi1126, align 8, !tbaa !9
  %imag141 = getelementptr inbounds %struct.scomplex, ptr %162, i32 0, i32 1
  %163 = load float, ptr %imag141, align 4, !tbaa !17
  %164 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag142 = getelementptr inbounds %struct.scomplex, ptr %164, i32 0, i32 1
  %165 = load float, ptr %imag142, align 4, !tbaa !17
  %166 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %real143 = getelementptr inbounds %struct.scomplex, ptr %166, i32 0, i32 0
  %167 = load float, ptr %real143, align 4, !tbaa !15
  %168 = call float @llvm.fmuladd.f32(float %165, float %167, float %163)
  %169 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real145 = getelementptr inbounds %struct.scomplex, ptr %169, i32 0, i32 0
  %170 = load float, ptr %real145, align 4, !tbaa !15
  %171 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %imag146 = getelementptr inbounds %struct.scomplex, ptr %171, i32 0, i32 1
  %172 = load float, ptr %imag146, align 4, !tbaa !17
  %173 = call float @llvm.fmuladd.f32(float %170, float %172, float %168)
  store float %173, ptr %yt_i140, align 4, !tbaa !11
  %174 = load float, ptr %yt_r131, align 4, !tbaa !11
  %175 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %real148 = getelementptr inbounds %struct.scomplex, ptr %175, i32 0, i32 0
  store float %174, ptr %real148, align 4, !tbaa !15
  %176 = load float, ptr %yt_i140, align 4, !tbaa !11
  %177 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %imag149 = getelementptr inbounds %struct.scomplex, ptr %177, i32 0, i32 1
  store float %176, ptr %imag149, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i140) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r131) #3
  %178 = load i64, ptr %incx, align 8, !tbaa !4
  %179 = load ptr, ptr %chi1126, align 8, !tbaa !9
  %add.ptr150 = getelementptr inbounds %struct.scomplex, ptr %179, i64 %178
  store ptr %add.ptr150, ptr %chi1126, align 8, !tbaa !9
  %180 = load i64, ptr %incy, align 8, !tbaa !4
  %181 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %add.ptr151 = getelementptr inbounds %struct.scomplex, ptr %181, i64 %180
  store ptr %add.ptr151, ptr %psi1127, align 8, !tbaa !9
  br label %for.inc152

for.inc152:                                       ; preds = %for.body130
  %182 = load i64, ptr %i, align 8, !tbaa !4
  %inc153 = add nsw i64 %182, 1
  store i64 %inc153, ptr %i, align 8, !tbaa !4
  br label %for.cond128

for.end154:                                       ; preds = %for.cond128
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1127) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1126) #3
  br label %for.inc155

for.inc155:                                       ; preds = %for.end154
  %183 = load i64, ptr %j, align 8, !tbaa !4
  %inc156 = add nsw i64 %183, 1
  store i64 %inc156, ptr %j, align 8, !tbaa !4
  br label %for.cond115

for.end157:                                       ; preds = %for.cond115
  br label %if.end158

if.end158:                                        ; preds = %for.end157, %for.end113
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zzxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi142 = alloca ptr, align 8
  %psi143 = alloca ptr, align 8
  %chi179 = alloca ptr, align 8
  %psi180 = alloca ptr, align 8
  %yt_r = alloca double, align 8
  %yt_i = alloca double, align 8
  %chi1126 = alloca ptr, align 8
  %psi1127 = alloca ptr, align 8
  %yt_r131 = alloca double, align 8
  %yt_i140 = alloca double, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %10, i32 0, i32 0
  %11 = load double, ptr %real, align 8, !tbaa !18
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %12, i32 0, i32 1
  %13 = load double, ptr %imag, align 8, !tbaa !20
  %cmp1 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else63

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.dcomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load double, ptr %real16, align 8, !tbaa !18
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds %struct.dcomplex, ptr %34, i64 %35
  %real18 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx17, i32 0, i32 0
  %36 = load double, ptr %real18, align 8, !tbaa !18
  %add = fadd double %33, %36
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds %struct.dcomplex, ptr %37, i64 %38
  %real20 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx19, i32 0, i32 0
  store double %add, ptr %real20, align 8, !tbaa !18
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.dcomplex, ptr %39, i64 %40
  %imag22 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx21, i32 0, i32 1
  %41 = load double, ptr %imag22, align 8, !tbaa !20
  %42 = load ptr, ptr %chi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.dcomplex, ptr %42, i64 %43
  %imag24 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx23, i32 0, i32 1
  %44 = load double, ptr %imag24, align 8, !tbaa !20
  %add25 = fadd double %41, %44
  %45 = load ptr, ptr %psi1, align 8, !tbaa !9
  %46 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds %struct.dcomplex, ptr %45, i64 %46
  %imag27 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx26, i32 0, i32 1
  store double %add25, ptr %imag27, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %47 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %47, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %inc29 = add nsw i64 %48, 1
  store i64 %inc29, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %49 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %49, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc60, %if.else
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp32 = icmp slt i64 %50, %51
  br i1 %cmp32, label %for.body33, label %for.end62

for.body33:                                       ; preds = %for.cond31
  %52 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %53 = load i64, ptr %j, align 8, !tbaa !4
  %54 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul34 = mul nsw i64 %53, %54
  %add.ptr35 = getelementptr inbounds %struct.dcomplex, ptr %52, i64 %mul34
  %55 = load i64, ptr %incx, align 8, !tbaa !4
  %mul36 = mul nsw i64 0, %55
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr35, i64 %mul36
  store ptr %add.ptr37, ptr %x1, align 8, !tbaa !9
  %56 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul38 = mul nsw i64 %57, %58
  %add.ptr39 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %mul38
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %mul40 = mul nsw i64 0, %59
  %add.ptr41 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr39, i64 %mul40
  store ptr %add.ptr41, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi142) #3
  %60 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %60, ptr %chi142, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi143) #3
  %61 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %61, ptr %psi143, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.body33
  %62 = load i64, ptr %i, align 8, !tbaa !4
  %63 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp45 = icmp slt i64 %62, %63
  br i1 %cmp45, label %for.body46, label %for.end59

for.body46:                                       ; preds = %for.cond44
  %64 = load ptr, ptr %psi143, align 8, !tbaa !9
  %real47 = getelementptr inbounds %struct.dcomplex, ptr %64, i32 0, i32 0
  %65 = load double, ptr %real47, align 8, !tbaa !18
  %66 = load ptr, ptr %chi142, align 8, !tbaa !9
  %real48 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 0
  %67 = load double, ptr %real48, align 8, !tbaa !18
  %add49 = fadd double %65, %67
  %68 = load ptr, ptr %psi143, align 8, !tbaa !9
  %real50 = getelementptr inbounds %struct.dcomplex, ptr %68, i32 0, i32 0
  store double %add49, ptr %real50, align 8, !tbaa !18
  %69 = load ptr, ptr %psi143, align 8, !tbaa !9
  %imag51 = getelementptr inbounds %struct.dcomplex, ptr %69, i32 0, i32 1
  %70 = load double, ptr %imag51, align 8, !tbaa !20
  %71 = load ptr, ptr %chi142, align 8, !tbaa !9
  %imag52 = getelementptr inbounds %struct.dcomplex, ptr %71, i32 0, i32 1
  %72 = load double, ptr %imag52, align 8, !tbaa !20
  %add53 = fadd double %70, %72
  %73 = load ptr, ptr %psi143, align 8, !tbaa !9
  %imag54 = getelementptr inbounds %struct.dcomplex, ptr %73, i32 0, i32 1
  store double %add53, ptr %imag54, align 8, !tbaa !20
  %74 = load i64, ptr %incx, align 8, !tbaa !4
  %75 = load ptr, ptr %chi142, align 8, !tbaa !9
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %75, i64 %74
  store ptr %add.ptr55, ptr %chi142, align 8, !tbaa !9
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %77 = load ptr, ptr %psi143, align 8, !tbaa !9
  %add.ptr56 = getelementptr inbounds %struct.dcomplex, ptr %77, i64 %76
  store ptr %add.ptr56, ptr %psi143, align 8, !tbaa !9
  br label %for.inc57

for.inc57:                                        ; preds = %for.body46
  %78 = load i64, ptr %i, align 8, !tbaa !4
  %inc58 = add nsw i64 %78, 1
  store i64 %inc58, ptr %i, align 8, !tbaa !4
  br label %for.cond44

for.end59:                                        ; preds = %for.cond44
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi143) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi142) #3
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %79 = load i64, ptr %j, align 8, !tbaa !4
  %inc61 = add nsw i64 %79, 1
  store i64 %inc61, ptr %j, align 8, !tbaa !4
  br label %for.cond31

for.end62:                                        ; preds = %for.cond31
  br label %if.end

if.end:                                           ; preds = %for.end62, %for.end30
  br label %if.end159

if.else63:                                        ; preds = %land.lhs.true, %entry
  %80 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp64 = icmp eq i64 %80, 1
  br i1 %cmp64, label %land.lhs.true65, label %if.else114

land.lhs.true65:                                  ; preds = %if.else63
  %81 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp66 = icmp eq i64 %81, 1
  br i1 %cmp66, label %if.then67, label %if.else114

if.then67:                                        ; preds = %land.lhs.true65
  %82 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %82, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc111, %if.then67
  %83 = load i64, ptr %j, align 8, !tbaa !4
  %84 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp69 = icmp slt i64 %83, %84
  br i1 %cmp69, label %for.body70, label %for.end113

for.body70:                                       ; preds = %for.cond68
  %85 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %86 = load i64, ptr %j, align 8, !tbaa !4
  %87 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul71 = mul nsw i64 %86, %87
  %add.ptr72 = getelementptr inbounds %struct.dcomplex, ptr %85, i64 %mul71
  %88 = load i64, ptr %incx, align 8, !tbaa !4
  %mul73 = mul nsw i64 0, %88
  %add.ptr74 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr72, i64 %mul73
  store ptr %add.ptr74, ptr %x1, align 8, !tbaa !9
  %89 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %90 = load i64, ptr %j, align 8, !tbaa !4
  %91 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul75 = mul nsw i64 %90, %91
  %add.ptr76 = getelementptr inbounds %struct.dcomplex, ptr %89, i64 %mul75
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %mul77 = mul nsw i64 0, %92
  %add.ptr78 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr76, i64 %mul77
  store ptr %add.ptr78, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi179) #3
  %93 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %93, ptr %chi179, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi180) #3
  %94 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %94, ptr %psi180, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc108, %for.body70
  %95 = load i64, ptr %i, align 8, !tbaa !4
  %96 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp82 = icmp slt i64 %95, %96
  br i1 %cmp82, label %for.body83, label %for.end110

for.body83:                                       ; preds = %for.cond81
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r) #3
  %97 = load ptr, ptr %chi179, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds %struct.dcomplex, ptr %97, i64 %98
  %real85 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx84, i32 0, i32 0
  %99 = load double, ptr %real85, align 8, !tbaa !18
  %100 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real86 = getelementptr inbounds %struct.dcomplex, ptr %100, i32 0, i32 0
  %101 = load double, ptr %real86, align 8, !tbaa !18
  %102 = load ptr, ptr %psi180, align 8, !tbaa !9
  %103 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds %struct.dcomplex, ptr %102, i64 %103
  %real88 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx87, i32 0, i32 0
  %104 = load double, ptr %real88, align 8, !tbaa !18
  %105 = call double @llvm.fmuladd.f64(double %101, double %104, double %99)
  %106 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag90 = getelementptr inbounds %struct.dcomplex, ptr %106, i32 0, i32 1
  %107 = load double, ptr %imag90, align 8, !tbaa !20
  %108 = load ptr, ptr %psi180, align 8, !tbaa !9
  %109 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx91 = getelementptr inbounds %struct.dcomplex, ptr %108, i64 %109
  %imag92 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx91, i32 0, i32 1
  %110 = load double, ptr %imag92, align 8, !tbaa !20
  %neg = fneg double %107
  %111 = call double @llvm.fmuladd.f64(double %neg, double %110, double %105)
  store double %111, ptr %yt_r, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i) #3
  %112 = load ptr, ptr %chi179, align 8, !tbaa !9
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds %struct.dcomplex, ptr %112, i64 %113
  %imag95 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx94, i32 0, i32 1
  %114 = load double, ptr %imag95, align 8, !tbaa !20
  %115 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag96 = getelementptr inbounds %struct.dcomplex, ptr %115, i32 0, i32 1
  %116 = load double, ptr %imag96, align 8, !tbaa !20
  %117 = load ptr, ptr %psi180, align 8, !tbaa !9
  %118 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds %struct.dcomplex, ptr %117, i64 %118
  %real98 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx97, i32 0, i32 0
  %119 = load double, ptr %real98, align 8, !tbaa !18
  %120 = call double @llvm.fmuladd.f64(double %116, double %119, double %114)
  %121 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real100 = getelementptr inbounds %struct.dcomplex, ptr %121, i32 0, i32 0
  %122 = load double, ptr %real100, align 8, !tbaa !18
  %123 = load ptr, ptr %psi180, align 8, !tbaa !9
  %124 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds %struct.dcomplex, ptr %123, i64 %124
  %imag102 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx101, i32 0, i32 1
  %125 = load double, ptr %imag102, align 8, !tbaa !20
  %126 = call double @llvm.fmuladd.f64(double %122, double %125, double %120)
  store double %126, ptr %yt_i, align 8, !tbaa !13
  %127 = load double, ptr %yt_r, align 8, !tbaa !13
  %128 = load ptr, ptr %psi180, align 8, !tbaa !9
  %129 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds %struct.dcomplex, ptr %128, i64 %129
  %real105 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx104, i32 0, i32 0
  store double %127, ptr %real105, align 8, !tbaa !18
  %130 = load double, ptr %yt_i, align 8, !tbaa !13
  %131 = load ptr, ptr %psi180, align 8, !tbaa !9
  %132 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds %struct.dcomplex, ptr %131, i64 %132
  %imag107 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx106, i32 0, i32 1
  store double %130, ptr %imag107, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r) #3
  br label %for.inc108

for.inc108:                                       ; preds = %for.body83
  %133 = load i64, ptr %i, align 8, !tbaa !4
  %inc109 = add nsw i64 %133, 1
  store i64 %inc109, ptr %i, align 8, !tbaa !4
  br label %for.cond81

for.end110:                                       ; preds = %for.cond81
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi180) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi179) #3
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %134 = load i64, ptr %j, align 8, !tbaa !4
  %inc112 = add nsw i64 %134, 1
  store i64 %inc112, ptr %j, align 8, !tbaa !4
  br label %for.cond68

for.end113:                                       ; preds = %for.cond68
  br label %if.end158

if.else114:                                       ; preds = %land.lhs.true65, %if.else63
  %135 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %135, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc155, %if.else114
  %136 = load i64, ptr %j, align 8, !tbaa !4
  %137 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp116 = icmp slt i64 %136, %137
  br i1 %cmp116, label %for.body117, label %for.end157

for.body117:                                      ; preds = %for.cond115
  %138 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %139 = load i64, ptr %j, align 8, !tbaa !4
  %140 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul118 = mul nsw i64 %139, %140
  %add.ptr119 = getelementptr inbounds %struct.dcomplex, ptr %138, i64 %mul118
  %141 = load i64, ptr %incx, align 8, !tbaa !4
  %mul120 = mul nsw i64 0, %141
  %add.ptr121 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr119, i64 %mul120
  store ptr %add.ptr121, ptr %x1, align 8, !tbaa !9
  %142 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %143 = load i64, ptr %j, align 8, !tbaa !4
  %144 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul122 = mul nsw i64 %143, %144
  %add.ptr123 = getelementptr inbounds %struct.dcomplex, ptr %142, i64 %mul122
  %145 = load i64, ptr %incy, align 8, !tbaa !4
  %mul124 = mul nsw i64 0, %145
  %add.ptr125 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr123, i64 %mul124
  store ptr %add.ptr125, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1126) #3
  %146 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %146, ptr %chi1126, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1127) #3
  %147 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %147, ptr %psi1127, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc152, %for.body117
  %148 = load i64, ptr %i, align 8, !tbaa !4
  %149 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp129 = icmp slt i64 %148, %149
  br i1 %cmp129, label %for.body130, label %for.end154

for.body130:                                      ; preds = %for.cond128
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r131) #3
  %150 = load ptr, ptr %chi1126, align 8, !tbaa !9
  %real132 = getelementptr inbounds %struct.dcomplex, ptr %150, i32 0, i32 0
  %151 = load double, ptr %real132, align 8, !tbaa !18
  %152 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real133 = getelementptr inbounds %struct.dcomplex, ptr %152, i32 0, i32 0
  %153 = load double, ptr %real133, align 8, !tbaa !18
  %154 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %real134 = getelementptr inbounds %struct.dcomplex, ptr %154, i32 0, i32 0
  %155 = load double, ptr %real134, align 8, !tbaa !18
  %156 = call double @llvm.fmuladd.f64(double %153, double %155, double %151)
  %157 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag136 = getelementptr inbounds %struct.dcomplex, ptr %157, i32 0, i32 1
  %158 = load double, ptr %imag136, align 8, !tbaa !20
  %159 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %imag137 = getelementptr inbounds %struct.dcomplex, ptr %159, i32 0, i32 1
  %160 = load double, ptr %imag137, align 8, !tbaa !20
  %neg139 = fneg double %158
  %161 = call double @llvm.fmuladd.f64(double %neg139, double %160, double %156)
  store double %161, ptr %yt_r131, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i140) #3
  %162 = load ptr, ptr %chi1126, align 8, !tbaa !9
  %imag141 = getelementptr inbounds %struct.dcomplex, ptr %162, i32 0, i32 1
  %163 = load double, ptr %imag141, align 8, !tbaa !20
  %164 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag142 = getelementptr inbounds %struct.dcomplex, ptr %164, i32 0, i32 1
  %165 = load double, ptr %imag142, align 8, !tbaa !20
  %166 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %real143 = getelementptr inbounds %struct.dcomplex, ptr %166, i32 0, i32 0
  %167 = load double, ptr %real143, align 8, !tbaa !18
  %168 = call double @llvm.fmuladd.f64(double %165, double %167, double %163)
  %169 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real145 = getelementptr inbounds %struct.dcomplex, ptr %169, i32 0, i32 0
  %170 = load double, ptr %real145, align 8, !tbaa !18
  %171 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %imag146 = getelementptr inbounds %struct.dcomplex, ptr %171, i32 0, i32 1
  %172 = load double, ptr %imag146, align 8, !tbaa !20
  %173 = call double @llvm.fmuladd.f64(double %170, double %172, double %168)
  store double %173, ptr %yt_i140, align 8, !tbaa !13
  %174 = load double, ptr %yt_r131, align 8, !tbaa !13
  %175 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %real148 = getelementptr inbounds %struct.dcomplex, ptr %175, i32 0, i32 0
  store double %174, ptr %real148, align 8, !tbaa !18
  %176 = load double, ptr %yt_i140, align 8, !tbaa !13
  %177 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %imag149 = getelementptr inbounds %struct.dcomplex, ptr %177, i32 0, i32 1
  store double %176, ptr %imag149, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i140) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r131) #3
  %178 = load i64, ptr %incx, align 8, !tbaa !4
  %179 = load ptr, ptr %chi1126, align 8, !tbaa !9
  %add.ptr150 = getelementptr inbounds %struct.dcomplex, ptr %179, i64 %178
  store ptr %add.ptr150, ptr %chi1126, align 8, !tbaa !9
  %180 = load i64, ptr %incy, align 8, !tbaa !4
  %181 = load ptr, ptr %psi1127, align 8, !tbaa !9
  %add.ptr151 = getelementptr inbounds %struct.dcomplex, ptr %181, i64 %180
  store ptr %add.ptr151, ptr %psi1127, align 8, !tbaa !9
  br label %for.inc152

for.inc152:                                       ; preds = %for.body130
  %182 = load i64, ptr %i, align 8, !tbaa !4
  %inc153 = add nsw i64 %182, 1
  store i64 %inc153, ptr %i, align 8, !tbaa !4
  br label %for.cond128

for.end154:                                       ; preds = %for.cond128
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1127) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1126) #3
  br label %for.inc155

for.inc155:                                       ; preds = %for.end154
  %183 = load i64, ptr %j, align 8, !tbaa !4
  %inc156 = add nsw i64 %183, 1
  store i64 %inc156, ptr %j, align 8, !tbaa !4
  br label %for.cond115

for.end157:                                       ; preds = %for.cond115
  br label %if.end158

if.end158:                                        ; preds = %for.end157, %for.end113
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_sdxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi131 = alloca ptr, align 8
  %psi132 = alloca ptr, align 8
  %chi166 = alloca ptr, align 8
  %psi167 = alloca ptr, align 8
  %chi196 = alloca ptr, align 8
  %psi197 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load double, ptr %10, align 8, !tbaa !13
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else47

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds float, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %29, i64 %30
  %31 = load double, ptr %arrayidx, align 8, !tbaa !13
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds float, ptr %32, i64 %33
  %34 = load float, ptr %arrayidx14, align 4, !tbaa !11
  %conv = fpext float %34 to double
  %add = fadd double %31, %conv
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double, ptr %35, i64 %36
  store double %add, ptr %arrayidx15, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc17 = add nsw i64 %38, 1
  store i64 %inc17, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc44, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp20 = icmp slt i64 %40, %41
  br i1 %cmp20, label %for.body22, label %for.end46

for.body22:                                       ; preds = %for.cond19
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul23 = mul nsw i64 %43, %44
  %add.ptr24 = getelementptr inbounds float, ptr %42, i64 %mul23
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul25 = mul nsw i64 0, %45
  %add.ptr26 = getelementptr inbounds float, ptr %add.ptr24, i64 %mul25
  store ptr %add.ptr26, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul27 = mul nsw i64 %47, %48
  %add.ptr28 = getelementptr inbounds double, ptr %46, i64 %mul27
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul29 = mul nsw i64 0, %49
  %add.ptr30 = getelementptr inbounds double, ptr %add.ptr28, i64 %mul29
  store ptr %add.ptr30, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi131) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi131, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi132) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi132, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %for.body22
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp34 = icmp slt i64 %52, %53
  br i1 %cmp34, label %for.body36, label %for.end43

for.body36:                                       ; preds = %for.cond33
  %54 = load ptr, ptr %psi132, align 8, !tbaa !9
  %55 = load double, ptr %54, align 8, !tbaa !13
  %56 = load ptr, ptr %chi131, align 8, !tbaa !9
  %57 = load float, ptr %56, align 4, !tbaa !11
  %conv37 = fpext float %57 to double
  %add38 = fadd double %55, %conv37
  %58 = load ptr, ptr %psi132, align 8, !tbaa !9
  store double %add38, ptr %58, align 8, !tbaa !13
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi131, align 8, !tbaa !9
  %add.ptr39 = getelementptr inbounds float, ptr %60, i64 %59
  store ptr %add.ptr39, ptr %chi131, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi132, align 8, !tbaa !9
  %add.ptr40 = getelementptr inbounds double, ptr %62, i64 %61
  store ptr %add.ptr40, ptr %psi132, align 8, !tbaa !9
  br label %for.inc41

for.inc41:                                        ; preds = %for.body36
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc42 = add nsw i64 %63, 1
  store i64 %inc42, ptr %i, align 8, !tbaa !4
  br label %for.cond33

for.end43:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi132) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi131) #3
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc45 = add nsw i64 %64, 1
  store i64 %inc45, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.end46:                                        ; preds = %for.cond19
  br label %if.end

if.end:                                           ; preds = %for.end46, %for.end18
  br label %if.end113

if.else47:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp48 = icmp eq i64 %65, 1
  br i1 %cmp48, label %land.lhs.true50, label %if.else83

land.lhs.true50:                                  ; preds = %if.else47
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp51 = icmp eq i64 %66, 1
  br i1 %cmp51, label %if.then53, label %if.else83

if.then53:                                        ; preds = %land.lhs.true50
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc80, %if.then53
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp55 = icmp slt i64 %68, %69
  br i1 %cmp55, label %for.body57, label %for.end82

for.body57:                                       ; preds = %for.cond54
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul58 = mul nsw i64 %71, %72
  %add.ptr59 = getelementptr inbounds float, ptr %70, i64 %mul58
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul60 = mul nsw i64 0, %73
  %add.ptr61 = getelementptr inbounds float, ptr %add.ptr59, i64 %mul60
  store ptr %add.ptr61, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul62 = mul nsw i64 %75, %76
  %add.ptr63 = getelementptr inbounds double, ptr %74, i64 %mul62
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul64 = mul nsw i64 0, %77
  %add.ptr65 = getelementptr inbounds double, ptr %add.ptr63, i64 %mul64
  store ptr %add.ptr65, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi166) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi166, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi167) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi167, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc77, %for.body57
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp69 = icmp slt i64 %80, %81
  br i1 %cmp69, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond68
  %82 = load ptr, ptr %chi166, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx72 = getelementptr inbounds float, ptr %82, i64 %83
  %84 = load float, ptr %arrayidx72, align 4, !tbaa !11
  %conv73 = fpext float %84 to double
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load double, ptr %85, align 8, !tbaa !13
  %87 = load ptr, ptr %psi167, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds double, ptr %87, i64 %88
  %89 = load double, ptr %arrayidx74, align 8, !tbaa !13
  %90 = call double @llvm.fmuladd.f64(double %86, double %89, double %conv73)
  %91 = load ptr, ptr %psi167, align 8, !tbaa !9
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx76 = getelementptr inbounds double, ptr %91, i64 %92
  store double %90, ptr %arrayidx76, align 8, !tbaa !13
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %inc78 = add nsw i64 %93, 1
  store i64 %inc78, ptr %i, align 8, !tbaa !4
  br label %for.cond68

for.end79:                                        ; preds = %for.cond68
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi167) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi166) #3
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc81 = add nsw i64 %94, 1
  store i64 %inc81, ptr %j, align 8, !tbaa !4
  br label %for.cond54

for.end82:                                        ; preds = %for.cond54
  br label %if.end112

if.else83:                                        ; preds = %land.lhs.true50, %if.else47
  %95 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %95, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc109, %if.else83
  %96 = load i64, ptr %j, align 8, !tbaa !4
  %97 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp85 = icmp slt i64 %96, %97
  br i1 %cmp85, label %for.body87, label %for.end111

for.body87:                                       ; preds = %for.cond84
  %98 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %99 = load i64, ptr %j, align 8, !tbaa !4
  %100 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul88 = mul nsw i64 %99, %100
  %add.ptr89 = getelementptr inbounds float, ptr %98, i64 %mul88
  %101 = load i64, ptr %incx, align 8, !tbaa !4
  %mul90 = mul nsw i64 0, %101
  %add.ptr91 = getelementptr inbounds float, ptr %add.ptr89, i64 %mul90
  store ptr %add.ptr91, ptr %x1, align 8, !tbaa !9
  %102 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %103 = load i64, ptr %j, align 8, !tbaa !4
  %104 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul92 = mul nsw i64 %103, %104
  %add.ptr93 = getelementptr inbounds double, ptr %102, i64 %mul92
  %105 = load i64, ptr %incy, align 8, !tbaa !4
  %mul94 = mul nsw i64 0, %105
  %add.ptr95 = getelementptr inbounds double, ptr %add.ptr93, i64 %mul94
  store ptr %add.ptr95, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi196) #3
  %106 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %106, ptr %chi196, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi197) #3
  %107 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %107, ptr %psi197, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc106, %for.body87
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %109 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp99 = icmp slt i64 %108, %109
  br i1 %cmp99, label %for.body101, label %for.end108

for.body101:                                      ; preds = %for.cond98
  %110 = load ptr, ptr %chi196, align 8, !tbaa !9
  %111 = load float, ptr %110, align 4, !tbaa !11
  %conv102 = fpext float %111 to double
  %112 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %113 = load double, ptr %112, align 8, !tbaa !13
  %114 = load ptr, ptr %psi197, align 8, !tbaa !9
  %115 = load double, ptr %114, align 8, !tbaa !13
  %116 = call double @llvm.fmuladd.f64(double %113, double %115, double %conv102)
  %117 = load ptr, ptr %psi197, align 8, !tbaa !9
  store double %116, ptr %117, align 8, !tbaa !13
  %118 = load i64, ptr %incx, align 8, !tbaa !4
  %119 = load ptr, ptr %chi196, align 8, !tbaa !9
  %add.ptr104 = getelementptr inbounds float, ptr %119, i64 %118
  store ptr %add.ptr104, ptr %chi196, align 8, !tbaa !9
  %120 = load i64, ptr %incy, align 8, !tbaa !4
  %121 = load ptr, ptr %psi197, align 8, !tbaa !9
  %add.ptr105 = getelementptr inbounds double, ptr %121, i64 %120
  store ptr %add.ptr105, ptr %psi197, align 8, !tbaa !9
  br label %for.inc106

for.inc106:                                       ; preds = %for.body101
  %122 = load i64, ptr %i, align 8, !tbaa !4
  %inc107 = add nsw i64 %122, 1
  store i64 %inc107, ptr %i, align 8, !tbaa !4
  br label %for.cond98

for.end108:                                       ; preds = %for.cond98
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi197) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi196) #3
  br label %for.inc109

for.inc109:                                       ; preds = %for.end108
  %123 = load i64, ptr %j, align 8, !tbaa !4
  %inc110 = add nsw i64 %123, 1
  store i64 %inc110, ptr %j, align 8, !tbaa !4
  br label %for.cond84

for.end111:                                       ; preds = %for.cond84
  br label %if.end112

if.end112:                                        ; preds = %for.end111, %for.end82
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_scxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi139 = alloca ptr, align 8
  %psi140 = alloca ptr, align 8
  %chi174 = alloca ptr, align 8
  %psi175 = alloca ptr, align 8
  %yt_r = alloca float, align 4
  %yt_i = alloca float, align 4
  %chi1118 = alloca ptr, align 8
  %psi1119 = alloca ptr, align 8
  %yt_r123 = alloca float, align 4
  %yt_i131 = alloca float, align 4
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %10, i32 0, i32 0
  %11 = load float, ptr %real, align 4, !tbaa !15
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else58

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %12, i32 0, i32 1
  %13 = load float, ptr %imag, align 4, !tbaa !17
  %cmp1 = fcmp oeq float %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else58

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds float, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds float, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.scomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.scomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load float, ptr %real16, align 4, !tbaa !15
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds float, ptr %34, i64 %35
  %36 = load float, ptr %arrayidx17, align 4, !tbaa !11
  %add = fadd float %33, %36
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds %struct.scomplex, ptr %37, i64 %38
  %real19 = getelementptr inbounds %struct.scomplex, ptr %arrayidx18, i32 0, i32 0
  store float %add, ptr %real19, align 4, !tbaa !15
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds %struct.scomplex, ptr %39, i64 %40
  %imag21 = getelementptr inbounds %struct.scomplex, ptr %arrayidx20, i32 0, i32 1
  %41 = load float, ptr %imag21, align 4, !tbaa !17
  %add22 = fadd float %41, 0.000000e+00
  %42 = load ptr, ptr %psi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %43
  %imag24 = getelementptr inbounds %struct.scomplex, ptr %arrayidx23, i32 0, i32 1
  store float %add22, ptr %imag24, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %44 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %44, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %inc26 = add nsw i64 %45, 1
  store i64 %inc26, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end27:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %46 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %46, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc55, %if.else
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp29 = icmp slt i64 %47, %48
  br i1 %cmp29, label %for.body30, label %for.end57

for.body30:                                       ; preds = %for.cond28
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul31 = mul nsw i64 %50, %51
  %add.ptr32 = getelementptr inbounds float, ptr %49, i64 %mul31
  %52 = load i64, ptr %incx, align 8, !tbaa !4
  %mul33 = mul nsw i64 0, %52
  %add.ptr34 = getelementptr inbounds float, ptr %add.ptr32, i64 %mul33
  store ptr %add.ptr34, ptr %x1, align 8, !tbaa !9
  %53 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %55 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul35 = mul nsw i64 %54, %55
  %add.ptr36 = getelementptr inbounds %struct.scomplex, ptr %53, i64 %mul35
  %56 = load i64, ptr %incy, align 8, !tbaa !4
  %mul37 = mul nsw i64 0, %56
  %add.ptr38 = getelementptr inbounds %struct.scomplex, ptr %add.ptr36, i64 %mul37
  store ptr %add.ptr38, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi139) #3
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %57, ptr %chi139, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi140) #3
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %58, ptr %psi140, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc52, %for.body30
  %59 = load i64, ptr %i, align 8, !tbaa !4
  %60 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp42 = icmp slt i64 %59, %60
  br i1 %cmp42, label %for.body43, label %for.end54

for.body43:                                       ; preds = %for.cond41
  %61 = load ptr, ptr %psi140, align 8, !tbaa !9
  %real44 = getelementptr inbounds %struct.scomplex, ptr %61, i32 0, i32 0
  %62 = load float, ptr %real44, align 4, !tbaa !15
  %63 = load ptr, ptr %chi139, align 8, !tbaa !9
  %64 = load float, ptr %63, align 4, !tbaa !11
  %add45 = fadd float %62, %64
  %65 = load ptr, ptr %psi140, align 8, !tbaa !9
  %real46 = getelementptr inbounds %struct.scomplex, ptr %65, i32 0, i32 0
  store float %add45, ptr %real46, align 4, !tbaa !15
  %66 = load ptr, ptr %psi140, align 8, !tbaa !9
  %imag47 = getelementptr inbounds %struct.scomplex, ptr %66, i32 0, i32 1
  %67 = load float, ptr %imag47, align 4, !tbaa !17
  %add48 = fadd float %67, 0.000000e+00
  %68 = load ptr, ptr %psi140, align 8, !tbaa !9
  %imag49 = getelementptr inbounds %struct.scomplex, ptr %68, i32 0, i32 1
  store float %add48, ptr %imag49, align 4, !tbaa !17
  %69 = load i64, ptr %incx, align 8, !tbaa !4
  %70 = load ptr, ptr %chi139, align 8, !tbaa !9
  %add.ptr50 = getelementptr inbounds float, ptr %70, i64 %69
  store ptr %add.ptr50, ptr %chi139, align 8, !tbaa !9
  %71 = load i64, ptr %incy, align 8, !tbaa !4
  %72 = load ptr, ptr %psi140, align 8, !tbaa !9
  %add.ptr51 = getelementptr inbounds %struct.scomplex, ptr %72, i64 %71
  store ptr %add.ptr51, ptr %psi140, align 8, !tbaa !9
  br label %for.inc52

for.inc52:                                        ; preds = %for.body43
  %73 = load i64, ptr %i, align 8, !tbaa !4
  %inc53 = add nsw i64 %73, 1
  store i64 %inc53, ptr %i, align 8, !tbaa !4
  br label %for.cond41

for.end54:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi140) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi139) #3
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %inc56 = add nsw i64 %74, 1
  store i64 %inc56, ptr %j, align 8, !tbaa !4
  br label %for.cond28

for.end57:                                        ; preds = %for.cond28
  br label %if.end

if.end:                                           ; preds = %for.end57, %for.end27
  br label %if.end149

if.else58:                                        ; preds = %land.lhs.true, %entry
  %75 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp59 = icmp eq i64 %75, 1
  br i1 %cmp59, label %land.lhs.true60, label %if.else106

land.lhs.true60:                                  ; preds = %if.else58
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp61 = icmp eq i64 %76, 1
  br i1 %cmp61, label %if.then62, label %if.else106

if.then62:                                        ; preds = %land.lhs.true60
  %77 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %77, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc103, %if.then62
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp64 = icmp slt i64 %78, %79
  br i1 %cmp64, label %for.body65, label %for.end105

for.body65:                                       ; preds = %for.cond63
  %80 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %81 = load i64, ptr %j, align 8, !tbaa !4
  %82 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul66 = mul nsw i64 %81, %82
  %add.ptr67 = getelementptr inbounds float, ptr %80, i64 %mul66
  %83 = load i64, ptr %incx, align 8, !tbaa !4
  %mul68 = mul nsw i64 0, %83
  %add.ptr69 = getelementptr inbounds float, ptr %add.ptr67, i64 %mul68
  store ptr %add.ptr69, ptr %x1, align 8, !tbaa !9
  %84 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %85 = load i64, ptr %j, align 8, !tbaa !4
  %86 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul70 = mul nsw i64 %85, %86
  %add.ptr71 = getelementptr inbounds %struct.scomplex, ptr %84, i64 %mul70
  %87 = load i64, ptr %incy, align 8, !tbaa !4
  %mul72 = mul nsw i64 0, %87
  %add.ptr73 = getelementptr inbounds %struct.scomplex, ptr %add.ptr71, i64 %mul72
  store ptr %add.ptr73, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi174) #3
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %88, ptr %chi174, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi175) #3
  %89 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %89, ptr %psi175, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc100, %for.body65
  %90 = load i64, ptr %i, align 8, !tbaa !4
  %91 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp77 = icmp slt i64 %90, %91
  br i1 %cmp77, label %for.body78, label %for.end102

for.body78:                                       ; preds = %for.cond76
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r) #3
  %92 = load ptr, ptr %chi174, align 8, !tbaa !9
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx79 = getelementptr inbounds float, ptr %92, i64 %93
  %94 = load float, ptr %arrayidx79, align 4, !tbaa !11
  %95 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real80 = getelementptr inbounds %struct.scomplex, ptr %95, i32 0, i32 0
  %96 = load float, ptr %real80, align 4, !tbaa !15
  %97 = load ptr, ptr %psi175, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds %struct.scomplex, ptr %97, i64 %98
  %real82 = getelementptr inbounds %struct.scomplex, ptr %arrayidx81, i32 0, i32 0
  %99 = load float, ptr %real82, align 4, !tbaa !15
  %100 = call float @llvm.fmuladd.f32(float %96, float %99, float %94)
  %101 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag84 = getelementptr inbounds %struct.scomplex, ptr %101, i32 0, i32 1
  %102 = load float, ptr %imag84, align 4, !tbaa !17
  %103 = load ptr, ptr %psi175, align 8, !tbaa !9
  %104 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds %struct.scomplex, ptr %103, i64 %104
  %imag86 = getelementptr inbounds %struct.scomplex, ptr %arrayidx85, i32 0, i32 1
  %105 = load float, ptr %imag86, align 4, !tbaa !17
  %neg = fneg float %102
  %106 = call float @llvm.fmuladd.f32(float %neg, float %105, float %100)
  store float %106, ptr %yt_r, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i) #3
  %107 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag88 = getelementptr inbounds %struct.scomplex, ptr %107, i32 0, i32 1
  %108 = load float, ptr %imag88, align 4, !tbaa !17
  %109 = load ptr, ptr %psi175, align 8, !tbaa !9
  %110 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds %struct.scomplex, ptr %109, i64 %110
  %real90 = getelementptr inbounds %struct.scomplex, ptr %arrayidx89, i32 0, i32 0
  %111 = load float, ptr %real90, align 4, !tbaa !15
  %112 = call float @llvm.fmuladd.f32(float %108, float %111, float 0.000000e+00)
  %113 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real92 = getelementptr inbounds %struct.scomplex, ptr %113, i32 0, i32 0
  %114 = load float, ptr %real92, align 4, !tbaa !15
  %115 = load ptr, ptr %psi175, align 8, !tbaa !9
  %116 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds %struct.scomplex, ptr %115, i64 %116
  %imag94 = getelementptr inbounds %struct.scomplex, ptr %arrayidx93, i32 0, i32 1
  %117 = load float, ptr %imag94, align 4, !tbaa !17
  %118 = call float @llvm.fmuladd.f32(float %114, float %117, float %112)
  store float %118, ptr %yt_i, align 4, !tbaa !11
  %119 = load float, ptr %yt_r, align 4, !tbaa !11
  %120 = load ptr, ptr %psi175, align 8, !tbaa !9
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds %struct.scomplex, ptr %120, i64 %121
  %real97 = getelementptr inbounds %struct.scomplex, ptr %arrayidx96, i32 0, i32 0
  store float %119, ptr %real97, align 4, !tbaa !15
  %122 = load float, ptr %yt_i, align 4, !tbaa !11
  %123 = load ptr, ptr %psi175, align 8, !tbaa !9
  %124 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx98 = getelementptr inbounds %struct.scomplex, ptr %123, i64 %124
  %imag99 = getelementptr inbounds %struct.scomplex, ptr %arrayidx98, i32 0, i32 1
  store float %122, ptr %imag99, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r) #3
  br label %for.inc100

for.inc100:                                       ; preds = %for.body78
  %125 = load i64, ptr %i, align 8, !tbaa !4
  %inc101 = add nsw i64 %125, 1
  store i64 %inc101, ptr %i, align 8, !tbaa !4
  br label %for.cond76

for.end102:                                       ; preds = %for.cond76
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi175) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi174) #3
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %126 = load i64, ptr %j, align 8, !tbaa !4
  %inc104 = add nsw i64 %126, 1
  store i64 %inc104, ptr %j, align 8, !tbaa !4
  br label %for.cond63

for.end105:                                       ; preds = %for.cond63
  br label %if.end148

if.else106:                                       ; preds = %land.lhs.true60, %if.else58
  %127 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %127, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc145, %if.else106
  %128 = load i64, ptr %j, align 8, !tbaa !4
  %129 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp108 = icmp slt i64 %128, %129
  br i1 %cmp108, label %for.body109, label %for.end147

for.body109:                                      ; preds = %for.cond107
  %130 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %131 = load i64, ptr %j, align 8, !tbaa !4
  %132 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul110 = mul nsw i64 %131, %132
  %add.ptr111 = getelementptr inbounds float, ptr %130, i64 %mul110
  %133 = load i64, ptr %incx, align 8, !tbaa !4
  %mul112 = mul nsw i64 0, %133
  %add.ptr113 = getelementptr inbounds float, ptr %add.ptr111, i64 %mul112
  store ptr %add.ptr113, ptr %x1, align 8, !tbaa !9
  %134 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %135 = load i64, ptr %j, align 8, !tbaa !4
  %136 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul114 = mul nsw i64 %135, %136
  %add.ptr115 = getelementptr inbounds %struct.scomplex, ptr %134, i64 %mul114
  %137 = load i64, ptr %incy, align 8, !tbaa !4
  %mul116 = mul nsw i64 0, %137
  %add.ptr117 = getelementptr inbounds %struct.scomplex, ptr %add.ptr115, i64 %mul116
  store ptr %add.ptr117, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1118) #3
  %138 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %138, ptr %chi1118, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1119) #3
  %139 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %139, ptr %psi1119, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc142, %for.body109
  %140 = load i64, ptr %i, align 8, !tbaa !4
  %141 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp121 = icmp slt i64 %140, %141
  br i1 %cmp121, label %for.body122, label %for.end144

for.body122:                                      ; preds = %for.cond120
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r123) #3
  %142 = load ptr, ptr %chi1118, align 8, !tbaa !9
  %143 = load float, ptr %142, align 4, !tbaa !11
  %144 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real124 = getelementptr inbounds %struct.scomplex, ptr %144, i32 0, i32 0
  %145 = load float, ptr %real124, align 4, !tbaa !15
  %146 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %real125 = getelementptr inbounds %struct.scomplex, ptr %146, i32 0, i32 0
  %147 = load float, ptr %real125, align 4, !tbaa !15
  %148 = call float @llvm.fmuladd.f32(float %145, float %147, float %143)
  %149 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag127 = getelementptr inbounds %struct.scomplex, ptr %149, i32 0, i32 1
  %150 = load float, ptr %imag127, align 4, !tbaa !17
  %151 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %imag128 = getelementptr inbounds %struct.scomplex, ptr %151, i32 0, i32 1
  %152 = load float, ptr %imag128, align 4, !tbaa !17
  %neg130 = fneg float %150
  %153 = call float @llvm.fmuladd.f32(float %neg130, float %152, float %148)
  store float %153, ptr %yt_r123, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i131) #3
  %154 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag132 = getelementptr inbounds %struct.scomplex, ptr %154, i32 0, i32 1
  %155 = load float, ptr %imag132, align 4, !tbaa !17
  %156 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %real133 = getelementptr inbounds %struct.scomplex, ptr %156, i32 0, i32 0
  %157 = load float, ptr %real133, align 4, !tbaa !15
  %158 = call float @llvm.fmuladd.f32(float %155, float %157, float 0.000000e+00)
  %159 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real135 = getelementptr inbounds %struct.scomplex, ptr %159, i32 0, i32 0
  %160 = load float, ptr %real135, align 4, !tbaa !15
  %161 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %imag136 = getelementptr inbounds %struct.scomplex, ptr %161, i32 0, i32 1
  %162 = load float, ptr %imag136, align 4, !tbaa !17
  %163 = call float @llvm.fmuladd.f32(float %160, float %162, float %158)
  store float %163, ptr %yt_i131, align 4, !tbaa !11
  %164 = load float, ptr %yt_r123, align 4, !tbaa !11
  %165 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %real138 = getelementptr inbounds %struct.scomplex, ptr %165, i32 0, i32 0
  store float %164, ptr %real138, align 4, !tbaa !15
  %166 = load float, ptr %yt_i131, align 4, !tbaa !11
  %167 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %imag139 = getelementptr inbounds %struct.scomplex, ptr %167, i32 0, i32 1
  store float %166, ptr %imag139, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i131) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r123) #3
  %168 = load i64, ptr %incx, align 8, !tbaa !4
  %169 = load ptr, ptr %chi1118, align 8, !tbaa !9
  %add.ptr140 = getelementptr inbounds float, ptr %169, i64 %168
  store ptr %add.ptr140, ptr %chi1118, align 8, !tbaa !9
  %170 = load i64, ptr %incy, align 8, !tbaa !4
  %171 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %add.ptr141 = getelementptr inbounds %struct.scomplex, ptr %171, i64 %170
  store ptr %add.ptr141, ptr %psi1119, align 8, !tbaa !9
  br label %for.inc142

for.inc142:                                       ; preds = %for.body122
  %172 = load i64, ptr %i, align 8, !tbaa !4
  %inc143 = add nsw i64 %172, 1
  store i64 %inc143, ptr %i, align 8, !tbaa !4
  br label %for.cond120

for.end144:                                       ; preds = %for.cond120
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1119) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1118) #3
  br label %for.inc145

for.inc145:                                       ; preds = %for.end144
  %173 = load i64, ptr %j, align 8, !tbaa !4
  %inc146 = add nsw i64 %173, 1
  store i64 %inc146, ptr %j, align 8, !tbaa !4
  br label %for.cond107

for.end147:                                       ; preds = %for.cond107
  br label %if.end148

if.end148:                                        ; preds = %for.end147, %for.end105
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_szxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi140 = alloca ptr, align 8
  %psi141 = alloca ptr, align 8
  %chi180 = alloca ptr, align 8
  %psi181 = alloca ptr, align 8
  %yt_r = alloca double, align 8
  %yt_i = alloca double, align 8
  %chi1127 = alloca ptr, align 8
  %psi1128 = alloca ptr, align 8
  %yt_r133 = alloca double, align 8
  %yt_i142 = alloca double, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %10, i32 0, i32 0
  %11 = load double, ptr %real, align 8, !tbaa !18
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else61

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %12, i32 0, i32 1
  %13 = load double, ptr %imag, align 8, !tbaa !20
  %cmp1 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else61

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds float, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds float, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.dcomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load double, ptr %real16, align 8, !tbaa !18
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds float, ptr %34, i64 %35
  %36 = load float, ptr %arrayidx17, align 4, !tbaa !11
  %conv = fpext float %36 to double
  %add = fadd double %33, %conv
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds %struct.dcomplex, ptr %37, i64 %38
  %real19 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx18, i32 0, i32 0
  store double %add, ptr %real19, align 8, !tbaa !18
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds %struct.dcomplex, ptr %39, i64 %40
  %imag21 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx20, i32 0, i32 1
  %41 = load double, ptr %imag21, align 8, !tbaa !20
  %add22 = fadd double %41, 0.000000e+00
  %42 = load ptr, ptr %psi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.dcomplex, ptr %42, i64 %43
  %imag24 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx23, i32 0, i32 1
  store double %add22, ptr %imag24, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %44 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %44, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %inc26 = add nsw i64 %45, 1
  store i64 %inc26, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end27:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %46 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %46, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc58, %if.else
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp29 = icmp slt i64 %47, %48
  br i1 %cmp29, label %for.body31, label %for.end60

for.body31:                                       ; preds = %for.cond28
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul32 = mul nsw i64 %50, %51
  %add.ptr33 = getelementptr inbounds float, ptr %49, i64 %mul32
  %52 = load i64, ptr %incx, align 8, !tbaa !4
  %mul34 = mul nsw i64 0, %52
  %add.ptr35 = getelementptr inbounds float, ptr %add.ptr33, i64 %mul34
  store ptr %add.ptr35, ptr %x1, align 8, !tbaa !9
  %53 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %55 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul36 = mul nsw i64 %54, %55
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %53, i64 %mul36
  %56 = load i64, ptr %incy, align 8, !tbaa !4
  %mul38 = mul nsw i64 0, %56
  %add.ptr39 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr37, i64 %mul38
  store ptr %add.ptr39, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi140) #3
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %57, ptr %chi140, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi141) #3
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %58, ptr %psi141, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc55, %for.body31
  %59 = load i64, ptr %i, align 8, !tbaa !4
  %60 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp43 = icmp slt i64 %59, %60
  br i1 %cmp43, label %for.body45, label %for.end57

for.body45:                                       ; preds = %for.cond42
  %61 = load ptr, ptr %psi141, align 8, !tbaa !9
  %real46 = getelementptr inbounds %struct.dcomplex, ptr %61, i32 0, i32 0
  %62 = load double, ptr %real46, align 8, !tbaa !18
  %63 = load ptr, ptr %chi140, align 8, !tbaa !9
  %64 = load float, ptr %63, align 4, !tbaa !11
  %conv47 = fpext float %64 to double
  %add48 = fadd double %62, %conv47
  %65 = load ptr, ptr %psi141, align 8, !tbaa !9
  %real49 = getelementptr inbounds %struct.dcomplex, ptr %65, i32 0, i32 0
  store double %add48, ptr %real49, align 8, !tbaa !18
  %66 = load ptr, ptr %psi141, align 8, !tbaa !9
  %imag50 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 1
  %67 = load double, ptr %imag50, align 8, !tbaa !20
  %add51 = fadd double %67, 0.000000e+00
  %68 = load ptr, ptr %psi141, align 8, !tbaa !9
  %imag52 = getelementptr inbounds %struct.dcomplex, ptr %68, i32 0, i32 1
  store double %add51, ptr %imag52, align 8, !tbaa !20
  %69 = load i64, ptr %incx, align 8, !tbaa !4
  %70 = load ptr, ptr %chi140, align 8, !tbaa !9
  %add.ptr53 = getelementptr inbounds float, ptr %70, i64 %69
  store ptr %add.ptr53, ptr %chi140, align 8, !tbaa !9
  %71 = load i64, ptr %incy, align 8, !tbaa !4
  %72 = load ptr, ptr %psi141, align 8, !tbaa !9
  %add.ptr54 = getelementptr inbounds %struct.dcomplex, ptr %72, i64 %71
  store ptr %add.ptr54, ptr %psi141, align 8, !tbaa !9
  br label %for.inc55

for.inc55:                                        ; preds = %for.body45
  %73 = load i64, ptr %i, align 8, !tbaa !4
  %inc56 = add nsw i64 %73, 1
  store i64 %inc56, ptr %i, align 8, !tbaa !4
  br label %for.cond42

for.end57:                                        ; preds = %for.cond42
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi141) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi140) #3
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %inc59 = add nsw i64 %74, 1
  store i64 %inc59, ptr %j, align 8, !tbaa !4
  br label %for.cond28

for.end60:                                        ; preds = %for.cond28
  br label %if.end

if.end:                                           ; preds = %for.end60, %for.end27
  br label %if.end160

if.else61:                                        ; preds = %land.lhs.true, %entry
  %75 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp62 = icmp eq i64 %75, 1
  br i1 %cmp62, label %land.lhs.true64, label %if.else114

land.lhs.true64:                                  ; preds = %if.else61
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp65 = icmp eq i64 %76, 1
  br i1 %cmp65, label %if.then67, label %if.else114

if.then67:                                        ; preds = %land.lhs.true64
  %77 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %77, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc111, %if.then67
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp69 = icmp slt i64 %78, %79
  br i1 %cmp69, label %for.body71, label %for.end113

for.body71:                                       ; preds = %for.cond68
  %80 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %81 = load i64, ptr %j, align 8, !tbaa !4
  %82 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul72 = mul nsw i64 %81, %82
  %add.ptr73 = getelementptr inbounds float, ptr %80, i64 %mul72
  %83 = load i64, ptr %incx, align 8, !tbaa !4
  %mul74 = mul nsw i64 0, %83
  %add.ptr75 = getelementptr inbounds float, ptr %add.ptr73, i64 %mul74
  store ptr %add.ptr75, ptr %x1, align 8, !tbaa !9
  %84 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %85 = load i64, ptr %j, align 8, !tbaa !4
  %86 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul76 = mul nsw i64 %85, %86
  %add.ptr77 = getelementptr inbounds %struct.dcomplex, ptr %84, i64 %mul76
  %87 = load i64, ptr %incy, align 8, !tbaa !4
  %mul78 = mul nsw i64 0, %87
  %add.ptr79 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr77, i64 %mul78
  store ptr %add.ptr79, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi180) #3
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %88, ptr %chi180, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi181) #3
  %89 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %89, ptr %psi181, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc108, %for.body71
  %90 = load i64, ptr %i, align 8, !tbaa !4
  %91 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp83 = icmp slt i64 %90, %91
  br i1 %cmp83, label %for.body85, label %for.end110

for.body85:                                       ; preds = %for.cond82
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r) #3
  %92 = load ptr, ptr %chi180, align 8, !tbaa !9
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx86 = getelementptr inbounds float, ptr %92, i64 %93
  %94 = load float, ptr %arrayidx86, align 4, !tbaa !11
  %conv87 = fpext float %94 to double
  %95 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real88 = getelementptr inbounds %struct.dcomplex, ptr %95, i32 0, i32 0
  %96 = load double, ptr %real88, align 8, !tbaa !18
  %97 = load ptr, ptr %psi181, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds %struct.dcomplex, ptr %97, i64 %98
  %real90 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx89, i32 0, i32 0
  %99 = load double, ptr %real90, align 8, !tbaa !18
  %100 = call double @llvm.fmuladd.f64(double %96, double %99, double %conv87)
  %101 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag92 = getelementptr inbounds %struct.dcomplex, ptr %101, i32 0, i32 1
  %102 = load double, ptr %imag92, align 8, !tbaa !20
  %103 = load ptr, ptr %psi181, align 8, !tbaa !9
  %104 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds %struct.dcomplex, ptr %103, i64 %104
  %imag94 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx93, i32 0, i32 1
  %105 = load double, ptr %imag94, align 8, !tbaa !20
  %neg = fneg double %102
  %106 = call double @llvm.fmuladd.f64(double %neg, double %105, double %100)
  store double %106, ptr %yt_r, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i) #3
  %107 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag96 = getelementptr inbounds %struct.dcomplex, ptr %107, i32 0, i32 1
  %108 = load double, ptr %imag96, align 8, !tbaa !20
  %109 = load ptr, ptr %psi181, align 8, !tbaa !9
  %110 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds %struct.dcomplex, ptr %109, i64 %110
  %real98 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx97, i32 0, i32 0
  %111 = load double, ptr %real98, align 8, !tbaa !18
  %112 = call double @llvm.fmuladd.f64(double %108, double %111, double 0.000000e+00)
  %113 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real100 = getelementptr inbounds %struct.dcomplex, ptr %113, i32 0, i32 0
  %114 = load double, ptr %real100, align 8, !tbaa !18
  %115 = load ptr, ptr %psi181, align 8, !tbaa !9
  %116 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds %struct.dcomplex, ptr %115, i64 %116
  %imag102 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx101, i32 0, i32 1
  %117 = load double, ptr %imag102, align 8, !tbaa !20
  %118 = call double @llvm.fmuladd.f64(double %114, double %117, double %112)
  store double %118, ptr %yt_i, align 8, !tbaa !13
  %119 = load double, ptr %yt_r, align 8, !tbaa !13
  %120 = load ptr, ptr %psi181, align 8, !tbaa !9
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds %struct.dcomplex, ptr %120, i64 %121
  %real105 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx104, i32 0, i32 0
  store double %119, ptr %real105, align 8, !tbaa !18
  %122 = load double, ptr %yt_i, align 8, !tbaa !13
  %123 = load ptr, ptr %psi181, align 8, !tbaa !9
  %124 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds %struct.dcomplex, ptr %123, i64 %124
  %imag107 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx106, i32 0, i32 1
  store double %122, ptr %imag107, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r) #3
  br label %for.inc108

for.inc108:                                       ; preds = %for.body85
  %125 = load i64, ptr %i, align 8, !tbaa !4
  %inc109 = add nsw i64 %125, 1
  store i64 %inc109, ptr %i, align 8, !tbaa !4
  br label %for.cond82

for.end110:                                       ; preds = %for.cond82
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi181) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi180) #3
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %126 = load i64, ptr %j, align 8, !tbaa !4
  %inc112 = add nsw i64 %126, 1
  store i64 %inc112, ptr %j, align 8, !tbaa !4
  br label %for.cond68

for.end113:                                       ; preds = %for.cond68
  br label %if.end159

if.else114:                                       ; preds = %land.lhs.true64, %if.else61
  %127 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %127, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc156, %if.else114
  %128 = load i64, ptr %j, align 8, !tbaa !4
  %129 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp116 = icmp slt i64 %128, %129
  br i1 %cmp116, label %for.body118, label %for.end158

for.body118:                                      ; preds = %for.cond115
  %130 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %131 = load i64, ptr %j, align 8, !tbaa !4
  %132 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul119 = mul nsw i64 %131, %132
  %add.ptr120 = getelementptr inbounds float, ptr %130, i64 %mul119
  %133 = load i64, ptr %incx, align 8, !tbaa !4
  %mul121 = mul nsw i64 0, %133
  %add.ptr122 = getelementptr inbounds float, ptr %add.ptr120, i64 %mul121
  store ptr %add.ptr122, ptr %x1, align 8, !tbaa !9
  %134 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %135 = load i64, ptr %j, align 8, !tbaa !4
  %136 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul123 = mul nsw i64 %135, %136
  %add.ptr124 = getelementptr inbounds %struct.dcomplex, ptr %134, i64 %mul123
  %137 = load i64, ptr %incy, align 8, !tbaa !4
  %mul125 = mul nsw i64 0, %137
  %add.ptr126 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr124, i64 %mul125
  store ptr %add.ptr126, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1127) #3
  %138 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %138, ptr %chi1127, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1128) #3
  %139 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %139, ptr %psi1128, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc153, %for.body118
  %140 = load i64, ptr %i, align 8, !tbaa !4
  %141 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp130 = icmp slt i64 %140, %141
  br i1 %cmp130, label %for.body132, label %for.end155

for.body132:                                      ; preds = %for.cond129
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r133) #3
  %142 = load ptr, ptr %chi1127, align 8, !tbaa !9
  %143 = load float, ptr %142, align 4, !tbaa !11
  %conv134 = fpext float %143 to double
  %144 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real135 = getelementptr inbounds %struct.dcomplex, ptr %144, i32 0, i32 0
  %145 = load double, ptr %real135, align 8, !tbaa !18
  %146 = load ptr, ptr %psi1128, align 8, !tbaa !9
  %real136 = getelementptr inbounds %struct.dcomplex, ptr %146, i32 0, i32 0
  %147 = load double, ptr %real136, align 8, !tbaa !18
  %148 = call double @llvm.fmuladd.f64(double %145, double %147, double %conv134)
  %149 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag138 = getelementptr inbounds %struct.dcomplex, ptr %149, i32 0, i32 1
  %150 = load double, ptr %imag138, align 8, !tbaa !20
  %151 = load ptr, ptr %psi1128, align 8, !tbaa !9
  %imag139 = getelementptr inbounds %struct.dcomplex, ptr %151, i32 0, i32 1
  %152 = load double, ptr %imag139, align 8, !tbaa !20
  %neg141 = fneg double %150
  %153 = call double @llvm.fmuladd.f64(double %neg141, double %152, double %148)
  store double %153, ptr %yt_r133, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i142) #3
  %154 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag143 = getelementptr inbounds %struct.dcomplex, ptr %154, i32 0, i32 1
  %155 = load double, ptr %imag143, align 8, !tbaa !20
  %156 = load ptr, ptr %psi1128, align 8, !tbaa !9
  %real144 = getelementptr inbounds %struct.dcomplex, ptr %156, i32 0, i32 0
  %157 = load double, ptr %real144, align 8, !tbaa !18
  %158 = call double @llvm.fmuladd.f64(double %155, double %157, double 0.000000e+00)
  %159 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real146 = getelementptr inbounds %struct.dcomplex, ptr %159, i32 0, i32 0
  %160 = load double, ptr %real146, align 8, !tbaa !18
  %161 = load ptr, ptr %psi1128, align 8, !tbaa !9
  %imag147 = getelementptr inbounds %struct.dcomplex, ptr %161, i32 0, i32 1
  %162 = load double, ptr %imag147, align 8, !tbaa !20
  %163 = call double @llvm.fmuladd.f64(double %160, double %162, double %158)
  store double %163, ptr %yt_i142, align 8, !tbaa !13
  %164 = load double, ptr %yt_r133, align 8, !tbaa !13
  %165 = load ptr, ptr %psi1128, align 8, !tbaa !9
  %real149 = getelementptr inbounds %struct.dcomplex, ptr %165, i32 0, i32 0
  store double %164, ptr %real149, align 8, !tbaa !18
  %166 = load double, ptr %yt_i142, align 8, !tbaa !13
  %167 = load ptr, ptr %psi1128, align 8, !tbaa !9
  %imag150 = getelementptr inbounds %struct.dcomplex, ptr %167, i32 0, i32 1
  store double %166, ptr %imag150, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i142) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r133) #3
  %168 = load i64, ptr %incx, align 8, !tbaa !4
  %169 = load ptr, ptr %chi1127, align 8, !tbaa !9
  %add.ptr151 = getelementptr inbounds float, ptr %169, i64 %168
  store ptr %add.ptr151, ptr %chi1127, align 8, !tbaa !9
  %170 = load i64, ptr %incy, align 8, !tbaa !4
  %171 = load ptr, ptr %psi1128, align 8, !tbaa !9
  %add.ptr152 = getelementptr inbounds %struct.dcomplex, ptr %171, i64 %170
  store ptr %add.ptr152, ptr %psi1128, align 8, !tbaa !9
  br label %for.inc153

for.inc153:                                       ; preds = %for.body132
  %172 = load i64, ptr %i, align 8, !tbaa !4
  %inc154 = add nsw i64 %172, 1
  store i64 %inc154, ptr %i, align 8, !tbaa !4
  br label %for.cond129

for.end155:                                       ; preds = %for.cond129
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1128) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1127) #3
  br label %for.inc156

for.inc156:                                       ; preds = %for.end155
  %173 = load i64, ptr %j, align 8, !tbaa !4
  %inc157 = add nsw i64 %173, 1
  store i64 %inc157, ptr %j, align 8, !tbaa !4
  br label %for.cond115

for.end158:                                       ; preds = %for.cond115
  br label %if.end159

if.end159:                                        ; preds = %for.end158, %for.end113
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dsxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi132 = alloca ptr, align 8
  %psi133 = alloca ptr, align 8
  %chi168 = alloca ptr, align 8
  %psi169 = alloca ptr, align 8
  %chi1100 = alloca ptr, align 8
  %psi1101 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load float, ptr %10, align 4, !tbaa !11
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else49

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds double, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float, ptr %29, i64 %30
  %31 = load float, ptr %arrayidx, align 4, !tbaa !11
  %conv = fpext float %31 to double
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds double, ptr %32, i64 %33
  %34 = load double, ptr %arrayidx14, align 8, !tbaa !13
  %add = fadd double %conv, %34
  %conv15 = fptrunc double %add to float
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds float, ptr %35, i64 %36
  store float %conv15, ptr %arrayidx16, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc18 = add nsw i64 %38, 1
  store i64 %inc18, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end19:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc46, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp21 = icmp slt i64 %40, %41
  br i1 %cmp21, label %for.body23, label %for.end48

for.body23:                                       ; preds = %for.cond20
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul24 = mul nsw i64 %43, %44
  %add.ptr25 = getelementptr inbounds double, ptr %42, i64 %mul24
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul26 = mul nsw i64 0, %45
  %add.ptr27 = getelementptr inbounds double, ptr %add.ptr25, i64 %mul26
  store ptr %add.ptr27, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul28 = mul nsw i64 %47, %48
  %add.ptr29 = getelementptr inbounds float, ptr %46, i64 %mul28
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul30 = mul nsw i64 0, %49
  %add.ptr31 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul30
  store ptr %add.ptr31, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi132) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi132, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi133) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi133, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.body23
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp35 = icmp slt i64 %52, %53
  br i1 %cmp35, label %for.body37, label %for.end45

for.body37:                                       ; preds = %for.cond34
  %54 = load ptr, ptr %psi133, align 8, !tbaa !9
  %55 = load float, ptr %54, align 4, !tbaa !11
  %conv38 = fpext float %55 to double
  %56 = load ptr, ptr %chi132, align 8, !tbaa !9
  %57 = load double, ptr %56, align 8, !tbaa !13
  %add39 = fadd double %conv38, %57
  %conv40 = fptrunc double %add39 to float
  %58 = load ptr, ptr %psi133, align 8, !tbaa !9
  store float %conv40, ptr %58, align 4, !tbaa !11
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi132, align 8, !tbaa !9
  %add.ptr41 = getelementptr inbounds double, ptr %60, i64 %59
  store ptr %add.ptr41, ptr %chi132, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi133, align 8, !tbaa !9
  %add.ptr42 = getelementptr inbounds float, ptr %62, i64 %61
  store ptr %add.ptr42, ptr %psi133, align 8, !tbaa !9
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc44 = add nsw i64 %63, 1
  store i64 %inc44, ptr %i, align 8, !tbaa !4
  br label %for.cond34

for.end45:                                        ; preds = %for.cond34
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi133) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi132) #3
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc47 = add nsw i64 %64, 1
  store i64 %inc47, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.end48:                                        ; preds = %for.cond20
  br label %if.end

if.end:                                           ; preds = %for.end48, %for.end19
  br label %if.end119

if.else49:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp50 = icmp eq i64 %65, 1
  br i1 %cmp50, label %land.lhs.true52, label %if.else87

land.lhs.true52:                                  ; preds = %if.else49
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp53 = icmp eq i64 %66, 1
  br i1 %cmp53, label %if.then55, label %if.else87

if.then55:                                        ; preds = %land.lhs.true52
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc84, %if.then55
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp57 = icmp slt i64 %68, %69
  br i1 %cmp57, label %for.body59, label %for.end86

for.body59:                                       ; preds = %for.cond56
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul60 = mul nsw i64 %71, %72
  %add.ptr61 = getelementptr inbounds double, ptr %70, i64 %mul60
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul62 = mul nsw i64 0, %73
  %add.ptr63 = getelementptr inbounds double, ptr %add.ptr61, i64 %mul62
  store ptr %add.ptr63, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul64 = mul nsw i64 %75, %76
  %add.ptr65 = getelementptr inbounds float, ptr %74, i64 %mul64
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul66 = mul nsw i64 0, %77
  %add.ptr67 = getelementptr inbounds float, ptr %add.ptr65, i64 %mul66
  store ptr %add.ptr67, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi168) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi168, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi169) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi169, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc81, %for.body59
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp71 = icmp slt i64 %80, %81
  br i1 %cmp71, label %for.body73, label %for.end83

for.body73:                                       ; preds = %for.cond70
  %82 = load ptr, ptr %chi168, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds double, ptr %82, i64 %83
  %84 = load double, ptr %arrayidx74, align 8, !tbaa !13
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load float, ptr %85, align 4, !tbaa !11
  %87 = load ptr, ptr %psi169, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds float, ptr %87, i64 %88
  %89 = load float, ptr %arrayidx75, align 4, !tbaa !11
  %mul76 = fmul float %86, %89
  %conv77 = fpext float %mul76 to double
  %add78 = fadd double %84, %conv77
  %conv79 = fptrunc double %add78 to float
  %90 = load ptr, ptr %psi169, align 8, !tbaa !9
  %91 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx80 = getelementptr inbounds float, ptr %90, i64 %91
  store float %conv79, ptr %arrayidx80, align 4, !tbaa !11
  br label %for.inc81

for.inc81:                                        ; preds = %for.body73
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %inc82 = add nsw i64 %92, 1
  store i64 %inc82, ptr %i, align 8, !tbaa !4
  br label %for.cond70

for.end83:                                        ; preds = %for.cond70
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi169) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi168) #3
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %93 = load i64, ptr %j, align 8, !tbaa !4
  %inc85 = add nsw i64 %93, 1
  store i64 %inc85, ptr %j, align 8, !tbaa !4
  br label %for.cond56

for.end86:                                        ; preds = %for.cond56
  br label %if.end118

if.else87:                                        ; preds = %land.lhs.true52, %if.else49
  %94 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %94, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc115, %if.else87
  %95 = load i64, ptr %j, align 8, !tbaa !4
  %96 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp89 = icmp slt i64 %95, %96
  br i1 %cmp89, label %for.body91, label %for.end117

for.body91:                                       ; preds = %for.cond88
  %97 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %98 = load i64, ptr %j, align 8, !tbaa !4
  %99 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul92 = mul nsw i64 %98, %99
  %add.ptr93 = getelementptr inbounds double, ptr %97, i64 %mul92
  %100 = load i64, ptr %incx, align 8, !tbaa !4
  %mul94 = mul nsw i64 0, %100
  %add.ptr95 = getelementptr inbounds double, ptr %add.ptr93, i64 %mul94
  store ptr %add.ptr95, ptr %x1, align 8, !tbaa !9
  %101 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %102 = load i64, ptr %j, align 8, !tbaa !4
  %103 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul96 = mul nsw i64 %102, %103
  %add.ptr97 = getelementptr inbounds float, ptr %101, i64 %mul96
  %104 = load i64, ptr %incy, align 8, !tbaa !4
  %mul98 = mul nsw i64 0, %104
  %add.ptr99 = getelementptr inbounds float, ptr %add.ptr97, i64 %mul98
  store ptr %add.ptr99, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1100) #3
  %105 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %105, ptr %chi1100, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1101) #3
  %106 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %106, ptr %psi1101, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc112, %for.body91
  %107 = load i64, ptr %i, align 8, !tbaa !4
  %108 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp103 = icmp slt i64 %107, %108
  br i1 %cmp103, label %for.body105, label %for.end114

for.body105:                                      ; preds = %for.cond102
  %109 = load ptr, ptr %chi1100, align 8, !tbaa !9
  %110 = load double, ptr %109, align 8, !tbaa !13
  %111 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %112 = load float, ptr %111, align 4, !tbaa !11
  %113 = load ptr, ptr %psi1101, align 8, !tbaa !9
  %114 = load float, ptr %113, align 4, !tbaa !11
  %mul106 = fmul float %112, %114
  %conv107 = fpext float %mul106 to double
  %add108 = fadd double %110, %conv107
  %conv109 = fptrunc double %add108 to float
  %115 = load ptr, ptr %psi1101, align 8, !tbaa !9
  store float %conv109, ptr %115, align 4, !tbaa !11
  %116 = load i64, ptr %incx, align 8, !tbaa !4
  %117 = load ptr, ptr %chi1100, align 8, !tbaa !9
  %add.ptr110 = getelementptr inbounds double, ptr %117, i64 %116
  store ptr %add.ptr110, ptr %chi1100, align 8, !tbaa !9
  %118 = load i64, ptr %incy, align 8, !tbaa !4
  %119 = load ptr, ptr %psi1101, align 8, !tbaa !9
  %add.ptr111 = getelementptr inbounds float, ptr %119, i64 %118
  store ptr %add.ptr111, ptr %psi1101, align 8, !tbaa !9
  br label %for.inc112

for.inc112:                                       ; preds = %for.body105
  %120 = load i64, ptr %i, align 8, !tbaa !4
  %inc113 = add nsw i64 %120, 1
  store i64 %inc113, ptr %i, align 8, !tbaa !4
  br label %for.cond102

for.end114:                                       ; preds = %for.cond102
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1101) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1100) #3
  br label %for.inc115

for.inc115:                                       ; preds = %for.end114
  %121 = load i64, ptr %j, align 8, !tbaa !4
  %inc116 = add nsw i64 %121, 1
  store i64 %inc116, ptr %j, align 8, !tbaa !4
  br label %for.cond88

for.end117:                                       ; preds = %for.cond88
  br label %if.end118

if.end118:                                        ; preds = %for.end117, %for.end86
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dcxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi143 = alloca ptr, align 8
  %psi144 = alloca ptr, align 8
  %chi186 = alloca ptr, align 8
  %psi187 = alloca ptr, align 8
  %yt_r = alloca float, align 4
  %yt_i = alloca float, align 4
  %chi1141 = alloca ptr, align 8
  %psi1142 = alloca ptr, align 8
  %yt_r147 = alloca float, align 4
  %yt_i159 = alloca float, align 4
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %10, i32 0, i32 0
  %11 = load float, ptr %real, align 4, !tbaa !15
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else67

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %12, i32 0, i32 1
  %13 = load float, ptr %imag, align 4, !tbaa !17
  %cmp1 = fcmp oeq float %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else67

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds double, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds double, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.scomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.scomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load float, ptr %real16, align 4, !tbaa !15
  %conv = fpext float %33 to double
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds double, ptr %34, i64 %35
  %36 = load double, ptr %arrayidx17, align 8, !tbaa !13
  %add = fadd double %conv, %36
  %conv18 = fptrunc double %add to float
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds %struct.scomplex, ptr %37, i64 %38
  %real20 = getelementptr inbounds %struct.scomplex, ptr %arrayidx19, i32 0, i32 0
  store float %conv18, ptr %real20, align 4, !tbaa !15
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.scomplex, ptr %39, i64 %40
  %imag22 = getelementptr inbounds %struct.scomplex, ptr %arrayidx21, i32 0, i32 1
  %41 = load float, ptr %imag22, align 4, !tbaa !17
  %conv23 = fpext float %41 to double
  %add24 = fadd double %conv23, 0.000000e+00
  %conv25 = fptrunc double %add24 to float
  %42 = load ptr, ptr %psi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %43
  %imag27 = getelementptr inbounds %struct.scomplex, ptr %arrayidx26, i32 0, i32 1
  store float %conv25, ptr %imag27, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %44 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %44, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %inc29 = add nsw i64 %45, 1
  store i64 %inc29, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %46 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %46, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc64, %if.else
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp32 = icmp slt i64 %47, %48
  br i1 %cmp32, label %for.body34, label %for.end66

for.body34:                                       ; preds = %for.cond31
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul35 = mul nsw i64 %50, %51
  %add.ptr36 = getelementptr inbounds double, ptr %49, i64 %mul35
  %52 = load i64, ptr %incx, align 8, !tbaa !4
  %mul37 = mul nsw i64 0, %52
  %add.ptr38 = getelementptr inbounds double, ptr %add.ptr36, i64 %mul37
  store ptr %add.ptr38, ptr %x1, align 8, !tbaa !9
  %53 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %55 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul39 = mul nsw i64 %54, %55
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %53, i64 %mul39
  %56 = load i64, ptr %incy, align 8, !tbaa !4
  %mul41 = mul nsw i64 0, %56
  %add.ptr42 = getelementptr inbounds %struct.scomplex, ptr %add.ptr40, i64 %mul41
  store ptr %add.ptr42, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi143) #3
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %57, ptr %chi143, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi144) #3
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %58, ptr %psi144, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.body34
  %59 = load i64, ptr %i, align 8, !tbaa !4
  %60 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp46 = icmp slt i64 %59, %60
  br i1 %cmp46, label %for.body48, label %for.end63

for.body48:                                       ; preds = %for.cond45
  %61 = load ptr, ptr %psi144, align 8, !tbaa !9
  %real49 = getelementptr inbounds %struct.scomplex, ptr %61, i32 0, i32 0
  %62 = load float, ptr %real49, align 4, !tbaa !15
  %conv50 = fpext float %62 to double
  %63 = load ptr, ptr %chi143, align 8, !tbaa !9
  %64 = load double, ptr %63, align 8, !tbaa !13
  %add51 = fadd double %conv50, %64
  %conv52 = fptrunc double %add51 to float
  %65 = load ptr, ptr %psi144, align 8, !tbaa !9
  %real53 = getelementptr inbounds %struct.scomplex, ptr %65, i32 0, i32 0
  store float %conv52, ptr %real53, align 4, !tbaa !15
  %66 = load ptr, ptr %psi144, align 8, !tbaa !9
  %imag54 = getelementptr inbounds %struct.scomplex, ptr %66, i32 0, i32 1
  %67 = load float, ptr %imag54, align 4, !tbaa !17
  %conv55 = fpext float %67 to double
  %add56 = fadd double %conv55, 0.000000e+00
  %conv57 = fptrunc double %add56 to float
  %68 = load ptr, ptr %psi144, align 8, !tbaa !9
  %imag58 = getelementptr inbounds %struct.scomplex, ptr %68, i32 0, i32 1
  store float %conv57, ptr %imag58, align 4, !tbaa !17
  %69 = load i64, ptr %incx, align 8, !tbaa !4
  %70 = load ptr, ptr %chi143, align 8, !tbaa !9
  %add.ptr59 = getelementptr inbounds double, ptr %70, i64 %69
  store ptr %add.ptr59, ptr %chi143, align 8, !tbaa !9
  %71 = load i64, ptr %incy, align 8, !tbaa !4
  %72 = load ptr, ptr %psi144, align 8, !tbaa !9
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %72, i64 %71
  store ptr %add.ptr60, ptr %psi144, align 8, !tbaa !9
  br label %for.inc61

for.inc61:                                        ; preds = %for.body48
  %73 = load i64, ptr %i, align 8, !tbaa !4
  %inc62 = add nsw i64 %73, 1
  store i64 %inc62, ptr %i, align 8, !tbaa !4
  br label %for.cond45

for.end63:                                        ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi144) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi143) #3
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %inc65 = add nsw i64 %74, 1
  store i64 %inc65, ptr %j, align 8, !tbaa !4
  br label %for.cond31

for.end66:                                        ; preds = %for.cond31
  br label %if.end

if.end:                                           ; preds = %for.end66, %for.end30
  br label %if.end182

if.else67:                                        ; preds = %land.lhs.true, %entry
  %75 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp68 = icmp eq i64 %75, 1
  br i1 %cmp68, label %land.lhs.true70, label %if.else128

land.lhs.true70:                                  ; preds = %if.else67
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp71 = icmp eq i64 %76, 1
  br i1 %cmp71, label %if.then73, label %if.else128

if.then73:                                        ; preds = %land.lhs.true70
  %77 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %77, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc125, %if.then73
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp75 = icmp slt i64 %78, %79
  br i1 %cmp75, label %for.body77, label %for.end127

for.body77:                                       ; preds = %for.cond74
  %80 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %81 = load i64, ptr %j, align 8, !tbaa !4
  %82 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul78 = mul nsw i64 %81, %82
  %add.ptr79 = getelementptr inbounds double, ptr %80, i64 %mul78
  %83 = load i64, ptr %incx, align 8, !tbaa !4
  %mul80 = mul nsw i64 0, %83
  %add.ptr81 = getelementptr inbounds double, ptr %add.ptr79, i64 %mul80
  store ptr %add.ptr81, ptr %x1, align 8, !tbaa !9
  %84 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %85 = load i64, ptr %j, align 8, !tbaa !4
  %86 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul82 = mul nsw i64 %85, %86
  %add.ptr83 = getelementptr inbounds %struct.scomplex, ptr %84, i64 %mul82
  %87 = load i64, ptr %incy, align 8, !tbaa !4
  %mul84 = mul nsw i64 0, %87
  %add.ptr85 = getelementptr inbounds %struct.scomplex, ptr %add.ptr83, i64 %mul84
  store ptr %add.ptr85, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi186) #3
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %88, ptr %chi186, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi187) #3
  %89 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %89, ptr %psi187, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc122, %for.body77
  %90 = load i64, ptr %i, align 8, !tbaa !4
  %91 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp89 = icmp slt i64 %90, %91
  br i1 %cmp89, label %for.body91, label %for.end124

for.body91:                                       ; preds = %for.cond88
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r) #3
  %92 = load ptr, ptr %chi186, align 8, !tbaa !9
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx92 = getelementptr inbounds double, ptr %92, i64 %93
  %94 = load double, ptr %arrayidx92, align 8, !tbaa !13
  %95 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real93 = getelementptr inbounds %struct.scomplex, ptr %95, i32 0, i32 0
  %96 = load float, ptr %real93, align 4, !tbaa !15
  %97 = load ptr, ptr %psi187, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds %struct.scomplex, ptr %97, i64 %98
  %real95 = getelementptr inbounds %struct.scomplex, ptr %arrayidx94, i32 0, i32 0
  %99 = load float, ptr %real95, align 4, !tbaa !15
  %mul96 = fmul float %96, %99
  %conv97 = fpext float %mul96 to double
  %add98 = fadd double %94, %conv97
  %100 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag99 = getelementptr inbounds %struct.scomplex, ptr %100, i32 0, i32 1
  %101 = load float, ptr %imag99, align 4, !tbaa !17
  %102 = load ptr, ptr %psi187, align 8, !tbaa !9
  %103 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds %struct.scomplex, ptr %102, i64 %103
  %imag101 = getelementptr inbounds %struct.scomplex, ptr %arrayidx100, i32 0, i32 1
  %104 = load float, ptr %imag101, align 4, !tbaa !17
  %mul102 = fmul float %101, %104
  %conv103 = fpext float %mul102 to double
  %sub = fsub double %add98, %conv103
  %conv104 = fptrunc double %sub to float
  store float %conv104, ptr %yt_r, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i) #3
  %105 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag105 = getelementptr inbounds %struct.scomplex, ptr %105, i32 0, i32 1
  %106 = load float, ptr %imag105, align 4, !tbaa !17
  %107 = load ptr, ptr %psi187, align 8, !tbaa !9
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds %struct.scomplex, ptr %107, i64 %108
  %real107 = getelementptr inbounds %struct.scomplex, ptr %arrayidx106, i32 0, i32 0
  %109 = load float, ptr %real107, align 4, !tbaa !15
  %mul108 = fmul float %106, %109
  %conv109 = fpext float %mul108 to double
  %add110 = fadd double 0.000000e+00, %conv109
  %110 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real111 = getelementptr inbounds %struct.scomplex, ptr %110, i32 0, i32 0
  %111 = load float, ptr %real111, align 4, !tbaa !15
  %112 = load ptr, ptr %psi187, align 8, !tbaa !9
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx112 = getelementptr inbounds %struct.scomplex, ptr %112, i64 %113
  %imag113 = getelementptr inbounds %struct.scomplex, ptr %arrayidx112, i32 0, i32 1
  %114 = load float, ptr %imag113, align 4, !tbaa !17
  %mul114 = fmul float %111, %114
  %conv115 = fpext float %mul114 to double
  %add116 = fadd double %add110, %conv115
  %conv117 = fptrunc double %add116 to float
  store float %conv117, ptr %yt_i, align 4, !tbaa !11
  %115 = load float, ptr %yt_r, align 4, !tbaa !11
  %116 = load ptr, ptr %psi187, align 8, !tbaa !9
  %117 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx118 = getelementptr inbounds %struct.scomplex, ptr %116, i64 %117
  %real119 = getelementptr inbounds %struct.scomplex, ptr %arrayidx118, i32 0, i32 0
  store float %115, ptr %real119, align 4, !tbaa !15
  %118 = load float, ptr %yt_i, align 4, !tbaa !11
  %119 = load ptr, ptr %psi187, align 8, !tbaa !9
  %120 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx120 = getelementptr inbounds %struct.scomplex, ptr %119, i64 %120
  %imag121 = getelementptr inbounds %struct.scomplex, ptr %arrayidx120, i32 0, i32 1
  store float %118, ptr %imag121, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r) #3
  br label %for.inc122

for.inc122:                                       ; preds = %for.body91
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %inc123 = add nsw i64 %121, 1
  store i64 %inc123, ptr %i, align 8, !tbaa !4
  br label %for.cond88

for.end124:                                       ; preds = %for.cond88
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi187) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi186) #3
  br label %for.inc125

for.inc125:                                       ; preds = %for.end124
  %122 = load i64, ptr %j, align 8, !tbaa !4
  %inc126 = add nsw i64 %122, 1
  store i64 %inc126, ptr %j, align 8, !tbaa !4
  br label %for.cond74

for.end127:                                       ; preds = %for.cond74
  br label %if.end181

if.else128:                                       ; preds = %land.lhs.true70, %if.else67
  %123 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %123, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc178, %if.else128
  %124 = load i64, ptr %j, align 8, !tbaa !4
  %125 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp130 = icmp slt i64 %124, %125
  br i1 %cmp130, label %for.body132, label %for.end180

for.body132:                                      ; preds = %for.cond129
  %126 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %127 = load i64, ptr %j, align 8, !tbaa !4
  %128 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul133 = mul nsw i64 %127, %128
  %add.ptr134 = getelementptr inbounds double, ptr %126, i64 %mul133
  %129 = load i64, ptr %incx, align 8, !tbaa !4
  %mul135 = mul nsw i64 0, %129
  %add.ptr136 = getelementptr inbounds double, ptr %add.ptr134, i64 %mul135
  store ptr %add.ptr136, ptr %x1, align 8, !tbaa !9
  %130 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %131 = load i64, ptr %j, align 8, !tbaa !4
  %132 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul137 = mul nsw i64 %131, %132
  %add.ptr138 = getelementptr inbounds %struct.scomplex, ptr %130, i64 %mul137
  %133 = load i64, ptr %incy, align 8, !tbaa !4
  %mul139 = mul nsw i64 0, %133
  %add.ptr140 = getelementptr inbounds %struct.scomplex, ptr %add.ptr138, i64 %mul139
  store ptr %add.ptr140, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1141) #3
  %134 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %134, ptr %chi1141, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1142) #3
  %135 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %135, ptr %psi1142, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc175, %for.body132
  %136 = load i64, ptr %i, align 8, !tbaa !4
  %137 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp144 = icmp slt i64 %136, %137
  br i1 %cmp144, label %for.body146, label %for.end177

for.body146:                                      ; preds = %for.cond143
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r147) #3
  %138 = load ptr, ptr %chi1141, align 8, !tbaa !9
  %139 = load double, ptr %138, align 8, !tbaa !13
  %140 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real148 = getelementptr inbounds %struct.scomplex, ptr %140, i32 0, i32 0
  %141 = load float, ptr %real148, align 4, !tbaa !15
  %142 = load ptr, ptr %psi1142, align 8, !tbaa !9
  %real149 = getelementptr inbounds %struct.scomplex, ptr %142, i32 0, i32 0
  %143 = load float, ptr %real149, align 4, !tbaa !15
  %mul150 = fmul float %141, %143
  %conv151 = fpext float %mul150 to double
  %add152 = fadd double %139, %conv151
  %144 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag153 = getelementptr inbounds %struct.scomplex, ptr %144, i32 0, i32 1
  %145 = load float, ptr %imag153, align 4, !tbaa !17
  %146 = load ptr, ptr %psi1142, align 8, !tbaa !9
  %imag154 = getelementptr inbounds %struct.scomplex, ptr %146, i32 0, i32 1
  %147 = load float, ptr %imag154, align 4, !tbaa !17
  %mul155 = fmul float %145, %147
  %conv156 = fpext float %mul155 to double
  %sub157 = fsub double %add152, %conv156
  %conv158 = fptrunc double %sub157 to float
  store float %conv158, ptr %yt_r147, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i159) #3
  %148 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag160 = getelementptr inbounds %struct.scomplex, ptr %148, i32 0, i32 1
  %149 = load float, ptr %imag160, align 4, !tbaa !17
  %150 = load ptr, ptr %psi1142, align 8, !tbaa !9
  %real161 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 0
  %151 = load float, ptr %real161, align 4, !tbaa !15
  %mul162 = fmul float %149, %151
  %conv163 = fpext float %mul162 to double
  %add164 = fadd double 0.000000e+00, %conv163
  %152 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real165 = getelementptr inbounds %struct.scomplex, ptr %152, i32 0, i32 0
  %153 = load float, ptr %real165, align 4, !tbaa !15
  %154 = load ptr, ptr %psi1142, align 8, !tbaa !9
  %imag166 = getelementptr inbounds %struct.scomplex, ptr %154, i32 0, i32 1
  %155 = load float, ptr %imag166, align 4, !tbaa !17
  %mul167 = fmul float %153, %155
  %conv168 = fpext float %mul167 to double
  %add169 = fadd double %add164, %conv168
  %conv170 = fptrunc double %add169 to float
  store float %conv170, ptr %yt_i159, align 4, !tbaa !11
  %156 = load float, ptr %yt_r147, align 4, !tbaa !11
  %157 = load ptr, ptr %psi1142, align 8, !tbaa !9
  %real171 = getelementptr inbounds %struct.scomplex, ptr %157, i32 0, i32 0
  store float %156, ptr %real171, align 4, !tbaa !15
  %158 = load float, ptr %yt_i159, align 4, !tbaa !11
  %159 = load ptr, ptr %psi1142, align 8, !tbaa !9
  %imag172 = getelementptr inbounds %struct.scomplex, ptr %159, i32 0, i32 1
  store float %158, ptr %imag172, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i159) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r147) #3
  %160 = load i64, ptr %incx, align 8, !tbaa !4
  %161 = load ptr, ptr %chi1141, align 8, !tbaa !9
  %add.ptr173 = getelementptr inbounds double, ptr %161, i64 %160
  store ptr %add.ptr173, ptr %chi1141, align 8, !tbaa !9
  %162 = load i64, ptr %incy, align 8, !tbaa !4
  %163 = load ptr, ptr %psi1142, align 8, !tbaa !9
  %add.ptr174 = getelementptr inbounds %struct.scomplex, ptr %163, i64 %162
  store ptr %add.ptr174, ptr %psi1142, align 8, !tbaa !9
  br label %for.inc175

for.inc175:                                       ; preds = %for.body146
  %164 = load i64, ptr %i, align 8, !tbaa !4
  %inc176 = add nsw i64 %164, 1
  store i64 %inc176, ptr %i, align 8, !tbaa !4
  br label %for.cond143

for.end177:                                       ; preds = %for.cond143
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1142) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1141) #3
  br label %for.inc178

for.inc178:                                       ; preds = %for.end177
  %165 = load i64, ptr %j, align 8, !tbaa !4
  %inc179 = add nsw i64 %165, 1
  store i64 %inc179, ptr %j, align 8, !tbaa !4
  br label %for.cond129

for.end180:                                       ; preds = %for.cond129
  br label %if.end181

if.end181:                                        ; preds = %for.end180, %for.end127
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dzxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi139 = alloca ptr, align 8
  %psi140 = alloca ptr, align 8
  %chi174 = alloca ptr, align 8
  %psi175 = alloca ptr, align 8
  %yt_r = alloca double, align 8
  %yt_i = alloca double, align 8
  %chi1118 = alloca ptr, align 8
  %psi1119 = alloca ptr, align 8
  %yt_r123 = alloca double, align 8
  %yt_i131 = alloca double, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %10, i32 0, i32 0
  %11 = load double, ptr %real, align 8, !tbaa !18
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else58

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %12, i32 0, i32 1
  %13 = load double, ptr %imag, align 8, !tbaa !20
  %cmp1 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else58

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds double, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds double, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.dcomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load double, ptr %real16, align 8, !tbaa !18
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds double, ptr %34, i64 %35
  %36 = load double, ptr %arrayidx17, align 8, !tbaa !13
  %add = fadd double %33, %36
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds %struct.dcomplex, ptr %37, i64 %38
  %real19 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx18, i32 0, i32 0
  store double %add, ptr %real19, align 8, !tbaa !18
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds %struct.dcomplex, ptr %39, i64 %40
  %imag21 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx20, i32 0, i32 1
  %41 = load double, ptr %imag21, align 8, !tbaa !20
  %add22 = fadd double %41, 0.000000e+00
  %42 = load ptr, ptr %psi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.dcomplex, ptr %42, i64 %43
  %imag24 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx23, i32 0, i32 1
  store double %add22, ptr %imag24, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %44 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %44, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %45 = load i64, ptr %j, align 8, !tbaa !4
  %inc26 = add nsw i64 %45, 1
  store i64 %inc26, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end27:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %46 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %46, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc55, %if.else
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp29 = icmp slt i64 %47, %48
  br i1 %cmp29, label %for.body30, label %for.end57

for.body30:                                       ; preds = %for.cond28
  %49 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul31 = mul nsw i64 %50, %51
  %add.ptr32 = getelementptr inbounds double, ptr %49, i64 %mul31
  %52 = load i64, ptr %incx, align 8, !tbaa !4
  %mul33 = mul nsw i64 0, %52
  %add.ptr34 = getelementptr inbounds double, ptr %add.ptr32, i64 %mul33
  store ptr %add.ptr34, ptr %x1, align 8, !tbaa !9
  %53 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %55 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul35 = mul nsw i64 %54, %55
  %add.ptr36 = getelementptr inbounds %struct.dcomplex, ptr %53, i64 %mul35
  %56 = load i64, ptr %incy, align 8, !tbaa !4
  %mul37 = mul nsw i64 0, %56
  %add.ptr38 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr36, i64 %mul37
  store ptr %add.ptr38, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi139) #3
  %57 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %57, ptr %chi139, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi140) #3
  %58 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %58, ptr %psi140, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc52, %for.body30
  %59 = load i64, ptr %i, align 8, !tbaa !4
  %60 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp42 = icmp slt i64 %59, %60
  br i1 %cmp42, label %for.body43, label %for.end54

for.body43:                                       ; preds = %for.cond41
  %61 = load ptr, ptr %psi140, align 8, !tbaa !9
  %real44 = getelementptr inbounds %struct.dcomplex, ptr %61, i32 0, i32 0
  %62 = load double, ptr %real44, align 8, !tbaa !18
  %63 = load ptr, ptr %chi139, align 8, !tbaa !9
  %64 = load double, ptr %63, align 8, !tbaa !13
  %add45 = fadd double %62, %64
  %65 = load ptr, ptr %psi140, align 8, !tbaa !9
  %real46 = getelementptr inbounds %struct.dcomplex, ptr %65, i32 0, i32 0
  store double %add45, ptr %real46, align 8, !tbaa !18
  %66 = load ptr, ptr %psi140, align 8, !tbaa !9
  %imag47 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 1
  %67 = load double, ptr %imag47, align 8, !tbaa !20
  %add48 = fadd double %67, 0.000000e+00
  %68 = load ptr, ptr %psi140, align 8, !tbaa !9
  %imag49 = getelementptr inbounds %struct.dcomplex, ptr %68, i32 0, i32 1
  store double %add48, ptr %imag49, align 8, !tbaa !20
  %69 = load i64, ptr %incx, align 8, !tbaa !4
  %70 = load ptr, ptr %chi139, align 8, !tbaa !9
  %add.ptr50 = getelementptr inbounds double, ptr %70, i64 %69
  store ptr %add.ptr50, ptr %chi139, align 8, !tbaa !9
  %71 = load i64, ptr %incy, align 8, !tbaa !4
  %72 = load ptr, ptr %psi140, align 8, !tbaa !9
  %add.ptr51 = getelementptr inbounds %struct.dcomplex, ptr %72, i64 %71
  store ptr %add.ptr51, ptr %psi140, align 8, !tbaa !9
  br label %for.inc52

for.inc52:                                        ; preds = %for.body43
  %73 = load i64, ptr %i, align 8, !tbaa !4
  %inc53 = add nsw i64 %73, 1
  store i64 %inc53, ptr %i, align 8, !tbaa !4
  br label %for.cond41

for.end54:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi140) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi139) #3
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %74 = load i64, ptr %j, align 8, !tbaa !4
  %inc56 = add nsw i64 %74, 1
  store i64 %inc56, ptr %j, align 8, !tbaa !4
  br label %for.cond28

for.end57:                                        ; preds = %for.cond28
  br label %if.end

if.end:                                           ; preds = %for.end57, %for.end27
  br label %if.end149

if.else58:                                        ; preds = %land.lhs.true, %entry
  %75 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp59 = icmp eq i64 %75, 1
  br i1 %cmp59, label %land.lhs.true60, label %if.else106

land.lhs.true60:                                  ; preds = %if.else58
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp61 = icmp eq i64 %76, 1
  br i1 %cmp61, label %if.then62, label %if.else106

if.then62:                                        ; preds = %land.lhs.true60
  %77 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %77, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc103, %if.then62
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp64 = icmp slt i64 %78, %79
  br i1 %cmp64, label %for.body65, label %for.end105

for.body65:                                       ; preds = %for.cond63
  %80 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %81 = load i64, ptr %j, align 8, !tbaa !4
  %82 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul66 = mul nsw i64 %81, %82
  %add.ptr67 = getelementptr inbounds double, ptr %80, i64 %mul66
  %83 = load i64, ptr %incx, align 8, !tbaa !4
  %mul68 = mul nsw i64 0, %83
  %add.ptr69 = getelementptr inbounds double, ptr %add.ptr67, i64 %mul68
  store ptr %add.ptr69, ptr %x1, align 8, !tbaa !9
  %84 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %85 = load i64, ptr %j, align 8, !tbaa !4
  %86 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul70 = mul nsw i64 %85, %86
  %add.ptr71 = getelementptr inbounds %struct.dcomplex, ptr %84, i64 %mul70
  %87 = load i64, ptr %incy, align 8, !tbaa !4
  %mul72 = mul nsw i64 0, %87
  %add.ptr73 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr71, i64 %mul72
  store ptr %add.ptr73, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi174) #3
  %88 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %88, ptr %chi174, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi175) #3
  %89 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %89, ptr %psi175, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc100, %for.body65
  %90 = load i64, ptr %i, align 8, !tbaa !4
  %91 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp77 = icmp slt i64 %90, %91
  br i1 %cmp77, label %for.body78, label %for.end102

for.body78:                                       ; preds = %for.cond76
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r) #3
  %92 = load ptr, ptr %chi174, align 8, !tbaa !9
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx79 = getelementptr inbounds double, ptr %92, i64 %93
  %94 = load double, ptr %arrayidx79, align 8, !tbaa !13
  %95 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real80 = getelementptr inbounds %struct.dcomplex, ptr %95, i32 0, i32 0
  %96 = load double, ptr %real80, align 8, !tbaa !18
  %97 = load ptr, ptr %psi175, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds %struct.dcomplex, ptr %97, i64 %98
  %real82 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx81, i32 0, i32 0
  %99 = load double, ptr %real82, align 8, !tbaa !18
  %100 = call double @llvm.fmuladd.f64(double %96, double %99, double %94)
  %101 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag84 = getelementptr inbounds %struct.dcomplex, ptr %101, i32 0, i32 1
  %102 = load double, ptr %imag84, align 8, !tbaa !20
  %103 = load ptr, ptr %psi175, align 8, !tbaa !9
  %104 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds %struct.dcomplex, ptr %103, i64 %104
  %imag86 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx85, i32 0, i32 1
  %105 = load double, ptr %imag86, align 8, !tbaa !20
  %neg = fneg double %102
  %106 = call double @llvm.fmuladd.f64(double %neg, double %105, double %100)
  store double %106, ptr %yt_r, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i) #3
  %107 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag88 = getelementptr inbounds %struct.dcomplex, ptr %107, i32 0, i32 1
  %108 = load double, ptr %imag88, align 8, !tbaa !20
  %109 = load ptr, ptr %psi175, align 8, !tbaa !9
  %110 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds %struct.dcomplex, ptr %109, i64 %110
  %real90 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx89, i32 0, i32 0
  %111 = load double, ptr %real90, align 8, !tbaa !18
  %112 = call double @llvm.fmuladd.f64(double %108, double %111, double 0.000000e+00)
  %113 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real92 = getelementptr inbounds %struct.dcomplex, ptr %113, i32 0, i32 0
  %114 = load double, ptr %real92, align 8, !tbaa !18
  %115 = load ptr, ptr %psi175, align 8, !tbaa !9
  %116 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds %struct.dcomplex, ptr %115, i64 %116
  %imag94 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx93, i32 0, i32 1
  %117 = load double, ptr %imag94, align 8, !tbaa !20
  %118 = call double @llvm.fmuladd.f64(double %114, double %117, double %112)
  store double %118, ptr %yt_i, align 8, !tbaa !13
  %119 = load double, ptr %yt_r, align 8, !tbaa !13
  %120 = load ptr, ptr %psi175, align 8, !tbaa !9
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds %struct.dcomplex, ptr %120, i64 %121
  %real97 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx96, i32 0, i32 0
  store double %119, ptr %real97, align 8, !tbaa !18
  %122 = load double, ptr %yt_i, align 8, !tbaa !13
  %123 = load ptr, ptr %psi175, align 8, !tbaa !9
  %124 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx98 = getelementptr inbounds %struct.dcomplex, ptr %123, i64 %124
  %imag99 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx98, i32 0, i32 1
  store double %122, ptr %imag99, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r) #3
  br label %for.inc100

for.inc100:                                       ; preds = %for.body78
  %125 = load i64, ptr %i, align 8, !tbaa !4
  %inc101 = add nsw i64 %125, 1
  store i64 %inc101, ptr %i, align 8, !tbaa !4
  br label %for.cond76

for.end102:                                       ; preds = %for.cond76
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi175) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi174) #3
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %126 = load i64, ptr %j, align 8, !tbaa !4
  %inc104 = add nsw i64 %126, 1
  store i64 %inc104, ptr %j, align 8, !tbaa !4
  br label %for.cond63

for.end105:                                       ; preds = %for.cond63
  br label %if.end148

if.else106:                                       ; preds = %land.lhs.true60, %if.else58
  %127 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %127, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc145, %if.else106
  %128 = load i64, ptr %j, align 8, !tbaa !4
  %129 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp108 = icmp slt i64 %128, %129
  br i1 %cmp108, label %for.body109, label %for.end147

for.body109:                                      ; preds = %for.cond107
  %130 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %131 = load i64, ptr %j, align 8, !tbaa !4
  %132 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul110 = mul nsw i64 %131, %132
  %add.ptr111 = getelementptr inbounds double, ptr %130, i64 %mul110
  %133 = load i64, ptr %incx, align 8, !tbaa !4
  %mul112 = mul nsw i64 0, %133
  %add.ptr113 = getelementptr inbounds double, ptr %add.ptr111, i64 %mul112
  store ptr %add.ptr113, ptr %x1, align 8, !tbaa !9
  %134 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %135 = load i64, ptr %j, align 8, !tbaa !4
  %136 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul114 = mul nsw i64 %135, %136
  %add.ptr115 = getelementptr inbounds %struct.dcomplex, ptr %134, i64 %mul114
  %137 = load i64, ptr %incy, align 8, !tbaa !4
  %mul116 = mul nsw i64 0, %137
  %add.ptr117 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr115, i64 %mul116
  store ptr %add.ptr117, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1118) #3
  %138 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %138, ptr %chi1118, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1119) #3
  %139 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %139, ptr %psi1119, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc142, %for.body109
  %140 = load i64, ptr %i, align 8, !tbaa !4
  %141 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp121 = icmp slt i64 %140, %141
  br i1 %cmp121, label %for.body122, label %for.end144

for.body122:                                      ; preds = %for.cond120
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r123) #3
  %142 = load ptr, ptr %chi1118, align 8, !tbaa !9
  %143 = load double, ptr %142, align 8, !tbaa !13
  %144 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real124 = getelementptr inbounds %struct.dcomplex, ptr %144, i32 0, i32 0
  %145 = load double, ptr %real124, align 8, !tbaa !18
  %146 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %real125 = getelementptr inbounds %struct.dcomplex, ptr %146, i32 0, i32 0
  %147 = load double, ptr %real125, align 8, !tbaa !18
  %148 = call double @llvm.fmuladd.f64(double %145, double %147, double %143)
  %149 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag127 = getelementptr inbounds %struct.dcomplex, ptr %149, i32 0, i32 1
  %150 = load double, ptr %imag127, align 8, !tbaa !20
  %151 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %imag128 = getelementptr inbounds %struct.dcomplex, ptr %151, i32 0, i32 1
  %152 = load double, ptr %imag128, align 8, !tbaa !20
  %neg130 = fneg double %150
  %153 = call double @llvm.fmuladd.f64(double %neg130, double %152, double %148)
  store double %153, ptr %yt_r123, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i131) #3
  %154 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag132 = getelementptr inbounds %struct.dcomplex, ptr %154, i32 0, i32 1
  %155 = load double, ptr %imag132, align 8, !tbaa !20
  %156 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %real133 = getelementptr inbounds %struct.dcomplex, ptr %156, i32 0, i32 0
  %157 = load double, ptr %real133, align 8, !tbaa !18
  %158 = call double @llvm.fmuladd.f64(double %155, double %157, double 0.000000e+00)
  %159 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real135 = getelementptr inbounds %struct.dcomplex, ptr %159, i32 0, i32 0
  %160 = load double, ptr %real135, align 8, !tbaa !18
  %161 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %imag136 = getelementptr inbounds %struct.dcomplex, ptr %161, i32 0, i32 1
  %162 = load double, ptr %imag136, align 8, !tbaa !20
  %163 = call double @llvm.fmuladd.f64(double %160, double %162, double %158)
  store double %163, ptr %yt_i131, align 8, !tbaa !13
  %164 = load double, ptr %yt_r123, align 8, !tbaa !13
  %165 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %real138 = getelementptr inbounds %struct.dcomplex, ptr %165, i32 0, i32 0
  store double %164, ptr %real138, align 8, !tbaa !18
  %166 = load double, ptr %yt_i131, align 8, !tbaa !13
  %167 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %imag139 = getelementptr inbounds %struct.dcomplex, ptr %167, i32 0, i32 1
  store double %166, ptr %imag139, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i131) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r123) #3
  %168 = load i64, ptr %incx, align 8, !tbaa !4
  %169 = load ptr, ptr %chi1118, align 8, !tbaa !9
  %add.ptr140 = getelementptr inbounds double, ptr %169, i64 %168
  store ptr %add.ptr140, ptr %chi1118, align 8, !tbaa !9
  %170 = load i64, ptr %incy, align 8, !tbaa !4
  %171 = load ptr, ptr %psi1119, align 8, !tbaa !9
  %add.ptr141 = getelementptr inbounds %struct.dcomplex, ptr %171, i64 %170
  store ptr %add.ptr141, ptr %psi1119, align 8, !tbaa !9
  br label %for.inc142

for.inc142:                                       ; preds = %for.body122
  %172 = load i64, ptr %i, align 8, !tbaa !4
  %inc143 = add nsw i64 %172, 1
  store i64 %inc143, ptr %i, align 8, !tbaa !4
  br label %for.cond120

for.end144:                                       ; preds = %for.cond120
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1119) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1118) #3
  br label %for.inc145

for.inc145:                                       ; preds = %for.end144
  %173 = load i64, ptr %j, align 8, !tbaa !4
  %inc146 = add nsw i64 %173, 1
  store i64 %inc146, ptr %j, align 8, !tbaa !4
  br label %for.cond107

for.end147:                                       ; preds = %for.cond107
  br label %if.end148

if.end148:                                        ; preds = %for.end147, %for.end105
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_csxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi130 = alloca ptr, align 8
  %psi131 = alloca ptr, align 8
  %chi161 = alloca ptr, align 8
  %psi162 = alloca ptr, align 8
  %chi189 = alloca ptr, align 8
  %psi190 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load float, ptr %10, align 4, !tbaa !11
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else45

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float, ptr %29, i64 %30
  %31 = load float, ptr %arrayidx, align 4, !tbaa !11
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds %struct.scomplex, ptr %32, i64 %33
  %real = getelementptr inbounds %struct.scomplex, ptr %arrayidx14, i32 0, i32 0
  %34 = load float, ptr %real, align 4, !tbaa !15
  %add = fadd float %31, %34
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds float, ptr %35, i64 %36
  store float %add, ptr %arrayidx15, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc17 = add nsw i64 %38, 1
  store i64 %inc17, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc42, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp20 = icmp slt i64 %40, %41
  br i1 %cmp20, label %for.body21, label %for.end44

for.body21:                                       ; preds = %for.cond19
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul22 = mul nsw i64 %43, %44
  %add.ptr23 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %mul22
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul24 = mul nsw i64 0, %45
  %add.ptr25 = getelementptr inbounds %struct.scomplex, ptr %add.ptr23, i64 %mul24
  store ptr %add.ptr25, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %47, %48
  %add.ptr27 = getelementptr inbounds float, ptr %46, i64 %mul26
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %49
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi130) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi130, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi131) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi131, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc39, %for.body21
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp33 = icmp slt i64 %52, %53
  br i1 %cmp33, label %for.body34, label %for.end41

for.body34:                                       ; preds = %for.cond32
  %54 = load ptr, ptr %psi131, align 8, !tbaa !9
  %55 = load float, ptr %54, align 4, !tbaa !11
  %56 = load ptr, ptr %chi130, align 8, !tbaa !9
  %real35 = getelementptr inbounds %struct.scomplex, ptr %56, i32 0, i32 0
  %57 = load float, ptr %real35, align 4, !tbaa !15
  %add36 = fadd float %55, %57
  %58 = load ptr, ptr %psi131, align 8, !tbaa !9
  store float %add36, ptr %58, align 4, !tbaa !11
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi130, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %60, i64 %59
  store ptr %add.ptr37, ptr %chi130, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi131, align 8, !tbaa !9
  %add.ptr38 = getelementptr inbounds float, ptr %62, i64 %61
  store ptr %add.ptr38, ptr %psi131, align 8, !tbaa !9
  br label %for.inc39

for.inc39:                                        ; preds = %for.body34
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc40 = add nsw i64 %63, 1
  store i64 %inc40, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.end41:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi131) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi130) #3
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc43 = add nsw i64 %64, 1
  store i64 %inc43, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.end44:                                        ; preds = %for.cond19
  br label %if.end

if.end:                                           ; preds = %for.end44, %for.end18
  br label %if.end105

if.else45:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp46 = icmp eq i64 %65, 1
  br i1 %cmp46, label %land.lhs.true47, label %if.else77

land.lhs.true47:                                  ; preds = %if.else45
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp48 = icmp eq i64 %66, 1
  br i1 %cmp48, label %if.then49, label %if.else77

if.then49:                                        ; preds = %land.lhs.true47
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc74, %if.then49
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp51 = icmp slt i64 %68, %69
  br i1 %cmp51, label %for.body52, label %for.end76

for.body52:                                       ; preds = %for.cond50
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul53 = mul nsw i64 %71, %72
  %add.ptr54 = getelementptr inbounds %struct.scomplex, ptr %70, i64 %mul53
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul55 = mul nsw i64 0, %73
  %add.ptr56 = getelementptr inbounds %struct.scomplex, ptr %add.ptr54, i64 %mul55
  store ptr %add.ptr56, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul57 = mul nsw i64 %75, %76
  %add.ptr58 = getelementptr inbounds float, ptr %74, i64 %mul57
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul59 = mul nsw i64 0, %77
  %add.ptr60 = getelementptr inbounds float, ptr %add.ptr58, i64 %mul59
  store ptr %add.ptr60, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi161) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi161, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi162) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi162, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc71, %for.body52
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp64 = icmp slt i64 %80, %81
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  %82 = load ptr, ptr %chi161, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx66 = getelementptr inbounds %struct.scomplex, ptr %82, i64 %83
  %real67 = getelementptr inbounds %struct.scomplex, ptr %arrayidx66, i32 0, i32 0
  %84 = load float, ptr %real67, align 4, !tbaa !15
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load float, ptr %85, align 4, !tbaa !11
  %87 = load ptr, ptr %psi162, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx68 = getelementptr inbounds float, ptr %87, i64 %88
  %89 = load float, ptr %arrayidx68, align 4, !tbaa !11
  %90 = call float @llvm.fmuladd.f32(float %86, float %89, float %84)
  %91 = load ptr, ptr %psi162, align 8, !tbaa !9
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds float, ptr %91, i64 %92
  store float %90, ptr %arrayidx70, align 4, !tbaa !11
  br label %for.inc71

for.inc71:                                        ; preds = %for.body65
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %inc72 = add nsw i64 %93, 1
  store i64 %inc72, ptr %i, align 8, !tbaa !4
  br label %for.cond63

for.end73:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi162) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi161) #3
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc75 = add nsw i64 %94, 1
  store i64 %inc75, ptr %j, align 8, !tbaa !4
  br label %for.cond50

for.end76:                                        ; preds = %for.cond50
  br label %if.end104

if.else77:                                        ; preds = %land.lhs.true47, %if.else45
  %95 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %95, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc101, %if.else77
  %96 = load i64, ptr %j, align 8, !tbaa !4
  %97 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp79 = icmp slt i64 %96, %97
  br i1 %cmp79, label %for.body80, label %for.end103

for.body80:                                       ; preds = %for.cond78
  %98 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %99 = load i64, ptr %j, align 8, !tbaa !4
  %100 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul81 = mul nsw i64 %99, %100
  %add.ptr82 = getelementptr inbounds %struct.scomplex, ptr %98, i64 %mul81
  %101 = load i64, ptr %incx, align 8, !tbaa !4
  %mul83 = mul nsw i64 0, %101
  %add.ptr84 = getelementptr inbounds %struct.scomplex, ptr %add.ptr82, i64 %mul83
  store ptr %add.ptr84, ptr %x1, align 8, !tbaa !9
  %102 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %103 = load i64, ptr %j, align 8, !tbaa !4
  %104 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul85 = mul nsw i64 %103, %104
  %add.ptr86 = getelementptr inbounds float, ptr %102, i64 %mul85
  %105 = load i64, ptr %incy, align 8, !tbaa !4
  %mul87 = mul nsw i64 0, %105
  %add.ptr88 = getelementptr inbounds float, ptr %add.ptr86, i64 %mul87
  store ptr %add.ptr88, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi189) #3
  %106 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %106, ptr %chi189, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi190) #3
  %107 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %107, ptr %psi190, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc98, %for.body80
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %109 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp92 = icmp slt i64 %108, %109
  br i1 %cmp92, label %for.body93, label %for.end100

for.body93:                                       ; preds = %for.cond91
  %110 = load ptr, ptr %chi189, align 8, !tbaa !9
  %real94 = getelementptr inbounds %struct.scomplex, ptr %110, i32 0, i32 0
  %111 = load float, ptr %real94, align 4, !tbaa !15
  %112 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %113 = load float, ptr %112, align 4, !tbaa !11
  %114 = load ptr, ptr %psi190, align 8, !tbaa !9
  %115 = load float, ptr %114, align 4, !tbaa !11
  %116 = call float @llvm.fmuladd.f32(float %113, float %115, float %111)
  %117 = load ptr, ptr %psi190, align 8, !tbaa !9
  store float %116, ptr %117, align 4, !tbaa !11
  %118 = load i64, ptr %incx, align 8, !tbaa !4
  %119 = load ptr, ptr %chi189, align 8, !tbaa !9
  %add.ptr96 = getelementptr inbounds %struct.scomplex, ptr %119, i64 %118
  store ptr %add.ptr96, ptr %chi189, align 8, !tbaa !9
  %120 = load i64, ptr %incy, align 8, !tbaa !4
  %121 = load ptr, ptr %psi190, align 8, !tbaa !9
  %add.ptr97 = getelementptr inbounds float, ptr %121, i64 %120
  store ptr %add.ptr97, ptr %psi190, align 8, !tbaa !9
  br label %for.inc98

for.inc98:                                        ; preds = %for.body93
  %122 = load i64, ptr %i, align 8, !tbaa !4
  %inc99 = add nsw i64 %122, 1
  store i64 %inc99, ptr %i, align 8, !tbaa !4
  br label %for.cond91

for.end100:                                       ; preds = %for.cond91
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi190) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi189) #3
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %123 = load i64, ptr %j, align 8, !tbaa !4
  %inc102 = add nsw i64 %123, 1
  store i64 %inc102, ptr %j, align 8, !tbaa !4
  br label %for.cond78

for.end103:                                       ; preds = %for.cond78
  br label %if.end104

if.end104:                                        ; preds = %for.end103, %for.end76
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cdxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi131 = alloca ptr, align 8
  %psi132 = alloca ptr, align 8
  %chi167 = alloca ptr, align 8
  %psi168 = alloca ptr, align 8
  %chi198 = alloca ptr, align 8
  %psi199 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load double, ptr %10, align 8, !tbaa !13
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else48

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %29, i64 %30
  %31 = load double, ptr %arrayidx, align 8, !tbaa !13
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds %struct.scomplex, ptr %32, i64 %33
  %real = getelementptr inbounds %struct.scomplex, ptr %arrayidx14, i32 0, i32 0
  %34 = load float, ptr %real, align 4, !tbaa !15
  %conv = fpext float %34 to double
  %add = fadd double %31, %conv
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double, ptr %35, i64 %36
  store double %add, ptr %arrayidx15, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc17 = add nsw i64 %38, 1
  store i64 %inc17, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc45, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp20 = icmp slt i64 %40, %41
  br i1 %cmp20, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond19
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul23 = mul nsw i64 %43, %44
  %add.ptr24 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %mul23
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul25 = mul nsw i64 0, %45
  %add.ptr26 = getelementptr inbounds %struct.scomplex, ptr %add.ptr24, i64 %mul25
  store ptr %add.ptr26, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul27 = mul nsw i64 %47, %48
  %add.ptr28 = getelementptr inbounds double, ptr %46, i64 %mul27
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul29 = mul nsw i64 0, %49
  %add.ptr30 = getelementptr inbounds double, ptr %add.ptr28, i64 %mul29
  store ptr %add.ptr30, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi131) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi131, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi132) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi132, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc42, %for.body22
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp34 = icmp slt i64 %52, %53
  br i1 %cmp34, label %for.body36, label %for.end44

for.body36:                                       ; preds = %for.cond33
  %54 = load ptr, ptr %psi132, align 8, !tbaa !9
  %55 = load double, ptr %54, align 8, !tbaa !13
  %56 = load ptr, ptr %chi131, align 8, !tbaa !9
  %real37 = getelementptr inbounds %struct.scomplex, ptr %56, i32 0, i32 0
  %57 = load float, ptr %real37, align 4, !tbaa !15
  %conv38 = fpext float %57 to double
  %add39 = fadd double %55, %conv38
  %58 = load ptr, ptr %psi132, align 8, !tbaa !9
  store double %add39, ptr %58, align 8, !tbaa !13
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi131, align 8, !tbaa !9
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %60, i64 %59
  store ptr %add.ptr40, ptr %chi131, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi132, align 8, !tbaa !9
  %add.ptr41 = getelementptr inbounds double, ptr %62, i64 %61
  store ptr %add.ptr41, ptr %psi132, align 8, !tbaa !9
  br label %for.inc42

for.inc42:                                        ; preds = %for.body36
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc43 = add nsw i64 %63, 1
  store i64 %inc43, ptr %i, align 8, !tbaa !4
  br label %for.cond33

for.end44:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi132) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi131) #3
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc46 = add nsw i64 %64, 1
  store i64 %inc46, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.end47:                                        ; preds = %for.cond19
  br label %if.end

if.end:                                           ; preds = %for.end47, %for.end18
  br label %if.end116

if.else48:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp49 = icmp eq i64 %65, 1
  br i1 %cmp49, label %land.lhs.true51, label %if.else85

land.lhs.true51:                                  ; preds = %if.else48
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp52 = icmp eq i64 %66, 1
  br i1 %cmp52, label %if.then54, label %if.else85

if.then54:                                        ; preds = %land.lhs.true51
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc82, %if.then54
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp56 = icmp slt i64 %68, %69
  br i1 %cmp56, label %for.body58, label %for.end84

for.body58:                                       ; preds = %for.cond55
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul59 = mul nsw i64 %71, %72
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %70, i64 %mul59
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul61 = mul nsw i64 0, %73
  %add.ptr62 = getelementptr inbounds %struct.scomplex, ptr %add.ptr60, i64 %mul61
  store ptr %add.ptr62, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul63 = mul nsw i64 %75, %76
  %add.ptr64 = getelementptr inbounds double, ptr %74, i64 %mul63
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul65 = mul nsw i64 0, %77
  %add.ptr66 = getelementptr inbounds double, ptr %add.ptr64, i64 %mul65
  store ptr %add.ptr66, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi167) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi167, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi168) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi168, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc79, %for.body58
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp70 = icmp slt i64 %80, %81
  br i1 %cmp70, label %for.body72, label %for.end81

for.body72:                                       ; preds = %for.cond69
  %82 = load ptr, ptr %chi167, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx73 = getelementptr inbounds %struct.scomplex, ptr %82, i64 %83
  %real74 = getelementptr inbounds %struct.scomplex, ptr %arrayidx73, i32 0, i32 0
  %84 = load float, ptr %real74, align 4, !tbaa !15
  %conv75 = fpext float %84 to double
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load double, ptr %85, align 8, !tbaa !13
  %87 = load ptr, ptr %psi168, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx76 = getelementptr inbounds double, ptr %87, i64 %88
  %89 = load double, ptr %arrayidx76, align 8, !tbaa !13
  %90 = call double @llvm.fmuladd.f64(double %86, double %89, double %conv75)
  %91 = load ptr, ptr %psi168, align 8, !tbaa !9
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds double, ptr %91, i64 %92
  store double %90, ptr %arrayidx78, align 8, !tbaa !13
  br label %for.inc79

for.inc79:                                        ; preds = %for.body72
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %inc80 = add nsw i64 %93, 1
  store i64 %inc80, ptr %i, align 8, !tbaa !4
  br label %for.cond69

for.end81:                                        ; preds = %for.cond69
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi168) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi167) #3
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc83 = add nsw i64 %94, 1
  store i64 %inc83, ptr %j, align 8, !tbaa !4
  br label %for.cond55

for.end84:                                        ; preds = %for.cond55
  br label %if.end115

if.else85:                                        ; preds = %land.lhs.true51, %if.else48
  %95 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %95, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc112, %if.else85
  %96 = load i64, ptr %j, align 8, !tbaa !4
  %97 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp87 = icmp slt i64 %96, %97
  br i1 %cmp87, label %for.body89, label %for.end114

for.body89:                                       ; preds = %for.cond86
  %98 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %99 = load i64, ptr %j, align 8, !tbaa !4
  %100 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul90 = mul nsw i64 %99, %100
  %add.ptr91 = getelementptr inbounds %struct.scomplex, ptr %98, i64 %mul90
  %101 = load i64, ptr %incx, align 8, !tbaa !4
  %mul92 = mul nsw i64 0, %101
  %add.ptr93 = getelementptr inbounds %struct.scomplex, ptr %add.ptr91, i64 %mul92
  store ptr %add.ptr93, ptr %x1, align 8, !tbaa !9
  %102 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %103 = load i64, ptr %j, align 8, !tbaa !4
  %104 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul94 = mul nsw i64 %103, %104
  %add.ptr95 = getelementptr inbounds double, ptr %102, i64 %mul94
  %105 = load i64, ptr %incy, align 8, !tbaa !4
  %mul96 = mul nsw i64 0, %105
  %add.ptr97 = getelementptr inbounds double, ptr %add.ptr95, i64 %mul96
  store ptr %add.ptr97, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi198) #3
  %106 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %106, ptr %chi198, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi199) #3
  %107 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %107, ptr %psi199, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc109, %for.body89
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %109 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp101 = icmp slt i64 %108, %109
  br i1 %cmp101, label %for.body103, label %for.end111

for.body103:                                      ; preds = %for.cond100
  %110 = load ptr, ptr %chi198, align 8, !tbaa !9
  %real104 = getelementptr inbounds %struct.scomplex, ptr %110, i32 0, i32 0
  %111 = load float, ptr %real104, align 4, !tbaa !15
  %conv105 = fpext float %111 to double
  %112 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %113 = load double, ptr %112, align 8, !tbaa !13
  %114 = load ptr, ptr %psi199, align 8, !tbaa !9
  %115 = load double, ptr %114, align 8, !tbaa !13
  %116 = call double @llvm.fmuladd.f64(double %113, double %115, double %conv105)
  %117 = load ptr, ptr %psi199, align 8, !tbaa !9
  store double %116, ptr %117, align 8, !tbaa !13
  %118 = load i64, ptr %incx, align 8, !tbaa !4
  %119 = load ptr, ptr %chi198, align 8, !tbaa !9
  %add.ptr107 = getelementptr inbounds %struct.scomplex, ptr %119, i64 %118
  store ptr %add.ptr107, ptr %chi198, align 8, !tbaa !9
  %120 = load i64, ptr %incy, align 8, !tbaa !4
  %121 = load ptr, ptr %psi199, align 8, !tbaa !9
  %add.ptr108 = getelementptr inbounds double, ptr %121, i64 %120
  store ptr %add.ptr108, ptr %psi199, align 8, !tbaa !9
  br label %for.inc109

for.inc109:                                       ; preds = %for.body103
  %122 = load i64, ptr %i, align 8, !tbaa !4
  %inc110 = add nsw i64 %122, 1
  store i64 %inc110, ptr %i, align 8, !tbaa !4
  br label %for.cond100

for.end111:                                       ; preds = %for.cond100
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi199) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi198) #3
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %123 = load i64, ptr %j, align 8, !tbaa !4
  %inc113 = add nsw i64 %123, 1
  store i64 %inc113, ptr %j, align 8, !tbaa !4
  br label %for.cond86

for.end114:                                       ; preds = %for.cond86
  br label %if.end115

if.end115:                                        ; preds = %for.end114, %for.end84
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_czxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi144 = alloca ptr, align 8
  %psi145 = alloca ptr, align 8
  %chi187 = alloca ptr, align 8
  %psi188 = alloca ptr, align 8
  %yt_r = alloca double, align 8
  %yt_i = alloca double, align 8
  %chi1138 = alloca ptr, align 8
  %psi1139 = alloca ptr, align 8
  %yt_r144 = alloca double, align 8
  %yt_i154 = alloca double, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %10, i32 0, i32 0
  %11 = load double, ptr %real, align 8, !tbaa !18
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else68

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %12, i32 0, i32 1
  %13 = load double, ptr %imag, align 8, !tbaa !20
  %cmp1 = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else68

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.dcomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load double, ptr %real16, align 8, !tbaa !18
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds %struct.scomplex, ptr %34, i64 %35
  %real18 = getelementptr inbounds %struct.scomplex, ptr %arrayidx17, i32 0, i32 0
  %36 = load float, ptr %real18, align 4, !tbaa !15
  %conv = fpext float %36 to double
  %add = fadd double %33, %conv
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds %struct.dcomplex, ptr %37, i64 %38
  %real20 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx19, i32 0, i32 0
  store double %add, ptr %real20, align 8, !tbaa !18
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.dcomplex, ptr %39, i64 %40
  %imag22 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx21, i32 0, i32 1
  %41 = load double, ptr %imag22, align 8, !tbaa !20
  %42 = load ptr, ptr %chi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %43
  %imag24 = getelementptr inbounds %struct.scomplex, ptr %arrayidx23, i32 0, i32 1
  %44 = load float, ptr %imag24, align 4, !tbaa !17
  %conv25 = fpext float %44 to double
  %add26 = fadd double %41, %conv25
  %45 = load ptr, ptr %psi1, align 8, !tbaa !9
  %46 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds %struct.dcomplex, ptr %45, i64 %46
  %imag28 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx27, i32 0, i32 1
  store double %add26, ptr %imag28, align 8, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %47 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %47, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %inc30 = add nsw i64 %48, 1
  store i64 %inc30, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %49 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %49, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc65, %if.else
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp33 = icmp slt i64 %50, %51
  br i1 %cmp33, label %for.body35, label %for.end67

for.body35:                                       ; preds = %for.cond32
  %52 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %53 = load i64, ptr %j, align 8, !tbaa !4
  %54 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul36 = mul nsw i64 %53, %54
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %52, i64 %mul36
  %55 = load i64, ptr %incx, align 8, !tbaa !4
  %mul38 = mul nsw i64 0, %55
  %add.ptr39 = getelementptr inbounds %struct.scomplex, ptr %add.ptr37, i64 %mul38
  store ptr %add.ptr39, ptr %x1, align 8, !tbaa !9
  %56 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul40 = mul nsw i64 %57, %58
  %add.ptr41 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %mul40
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %mul42 = mul nsw i64 0, %59
  %add.ptr43 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr41, i64 %mul42
  store ptr %add.ptr43, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi144) #3
  %60 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %60, ptr %chi144, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi145) #3
  %61 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %61, ptr %psi145, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc62, %for.body35
  %62 = load i64, ptr %i, align 8, !tbaa !4
  %63 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp47 = icmp slt i64 %62, %63
  br i1 %cmp47, label %for.body49, label %for.end64

for.body49:                                       ; preds = %for.cond46
  %64 = load ptr, ptr %psi145, align 8, !tbaa !9
  %real50 = getelementptr inbounds %struct.dcomplex, ptr %64, i32 0, i32 0
  %65 = load double, ptr %real50, align 8, !tbaa !18
  %66 = load ptr, ptr %chi144, align 8, !tbaa !9
  %real51 = getelementptr inbounds %struct.scomplex, ptr %66, i32 0, i32 0
  %67 = load float, ptr %real51, align 4, !tbaa !15
  %conv52 = fpext float %67 to double
  %add53 = fadd double %65, %conv52
  %68 = load ptr, ptr %psi145, align 8, !tbaa !9
  %real54 = getelementptr inbounds %struct.dcomplex, ptr %68, i32 0, i32 0
  store double %add53, ptr %real54, align 8, !tbaa !18
  %69 = load ptr, ptr %psi145, align 8, !tbaa !9
  %imag55 = getelementptr inbounds %struct.dcomplex, ptr %69, i32 0, i32 1
  %70 = load double, ptr %imag55, align 8, !tbaa !20
  %71 = load ptr, ptr %chi144, align 8, !tbaa !9
  %imag56 = getelementptr inbounds %struct.scomplex, ptr %71, i32 0, i32 1
  %72 = load float, ptr %imag56, align 4, !tbaa !17
  %conv57 = fpext float %72 to double
  %add58 = fadd double %70, %conv57
  %73 = load ptr, ptr %psi145, align 8, !tbaa !9
  %imag59 = getelementptr inbounds %struct.dcomplex, ptr %73, i32 0, i32 1
  store double %add58, ptr %imag59, align 8, !tbaa !20
  %74 = load i64, ptr %incx, align 8, !tbaa !4
  %75 = load ptr, ptr %chi144, align 8, !tbaa !9
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %75, i64 %74
  store ptr %add.ptr60, ptr %chi144, align 8, !tbaa !9
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %77 = load ptr, ptr %psi145, align 8, !tbaa !9
  %add.ptr61 = getelementptr inbounds %struct.dcomplex, ptr %77, i64 %76
  store ptr %add.ptr61, ptr %psi145, align 8, !tbaa !9
  br label %for.inc62

for.inc62:                                        ; preds = %for.body49
  %78 = load i64, ptr %i, align 8, !tbaa !4
  %inc63 = add nsw i64 %78, 1
  store i64 %inc63, ptr %i, align 8, !tbaa !4
  br label %for.cond46

for.end64:                                        ; preds = %for.cond46
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi145) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi144) #3
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %79 = load i64, ptr %j, align 8, !tbaa !4
  %inc66 = add nsw i64 %79, 1
  store i64 %inc66, ptr %j, align 8, !tbaa !4
  br label %for.cond32

for.end67:                                        ; preds = %for.cond32
  br label %if.end

if.end:                                           ; preds = %for.end67, %for.end31
  br label %if.end174

if.else68:                                        ; preds = %land.lhs.true, %entry
  %80 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp69 = icmp eq i64 %80, 1
  br i1 %cmp69, label %land.lhs.true71, label %if.else125

land.lhs.true71:                                  ; preds = %if.else68
  %81 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp72 = icmp eq i64 %81, 1
  br i1 %cmp72, label %if.then74, label %if.else125

if.then74:                                        ; preds = %land.lhs.true71
  %82 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %82, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc122, %if.then74
  %83 = load i64, ptr %j, align 8, !tbaa !4
  %84 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp76 = icmp slt i64 %83, %84
  br i1 %cmp76, label %for.body78, label %for.end124

for.body78:                                       ; preds = %for.cond75
  %85 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %86 = load i64, ptr %j, align 8, !tbaa !4
  %87 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul79 = mul nsw i64 %86, %87
  %add.ptr80 = getelementptr inbounds %struct.scomplex, ptr %85, i64 %mul79
  %88 = load i64, ptr %incx, align 8, !tbaa !4
  %mul81 = mul nsw i64 0, %88
  %add.ptr82 = getelementptr inbounds %struct.scomplex, ptr %add.ptr80, i64 %mul81
  store ptr %add.ptr82, ptr %x1, align 8, !tbaa !9
  %89 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %90 = load i64, ptr %j, align 8, !tbaa !4
  %91 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul83 = mul nsw i64 %90, %91
  %add.ptr84 = getelementptr inbounds %struct.dcomplex, ptr %89, i64 %mul83
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %mul85 = mul nsw i64 0, %92
  %add.ptr86 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr84, i64 %mul85
  store ptr %add.ptr86, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi187) #3
  %93 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %93, ptr %chi187, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi188) #3
  %94 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %94, ptr %psi188, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc119, %for.body78
  %95 = load i64, ptr %i, align 8, !tbaa !4
  %96 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp90 = icmp slt i64 %95, %96
  br i1 %cmp90, label %for.body92, label %for.end121

for.body92:                                       ; preds = %for.cond89
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r) #3
  %97 = load ptr, ptr %chi187, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds %struct.scomplex, ptr %97, i64 %98
  %real94 = getelementptr inbounds %struct.scomplex, ptr %arrayidx93, i32 0, i32 0
  %99 = load float, ptr %real94, align 4, !tbaa !15
  %conv95 = fpext float %99 to double
  %100 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real96 = getelementptr inbounds %struct.dcomplex, ptr %100, i32 0, i32 0
  %101 = load double, ptr %real96, align 8, !tbaa !18
  %102 = load ptr, ptr %psi188, align 8, !tbaa !9
  %103 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds %struct.dcomplex, ptr %102, i64 %103
  %real98 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx97, i32 0, i32 0
  %104 = load double, ptr %real98, align 8, !tbaa !18
  %105 = call double @llvm.fmuladd.f64(double %101, double %104, double %conv95)
  %106 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag100 = getelementptr inbounds %struct.dcomplex, ptr %106, i32 0, i32 1
  %107 = load double, ptr %imag100, align 8, !tbaa !20
  %108 = load ptr, ptr %psi188, align 8, !tbaa !9
  %109 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds %struct.dcomplex, ptr %108, i64 %109
  %imag102 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx101, i32 0, i32 1
  %110 = load double, ptr %imag102, align 8, !tbaa !20
  %neg = fneg double %107
  %111 = call double @llvm.fmuladd.f64(double %neg, double %110, double %105)
  store double %111, ptr %yt_r, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i) #3
  %112 = load ptr, ptr %chi187, align 8, !tbaa !9
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds %struct.scomplex, ptr %112, i64 %113
  %imag105 = getelementptr inbounds %struct.scomplex, ptr %arrayidx104, i32 0, i32 1
  %114 = load float, ptr %imag105, align 4, !tbaa !17
  %conv106 = fpext float %114 to double
  %115 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag107 = getelementptr inbounds %struct.dcomplex, ptr %115, i32 0, i32 1
  %116 = load double, ptr %imag107, align 8, !tbaa !20
  %117 = load ptr, ptr %psi188, align 8, !tbaa !9
  %118 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx108 = getelementptr inbounds %struct.dcomplex, ptr %117, i64 %118
  %real109 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx108, i32 0, i32 0
  %119 = load double, ptr %real109, align 8, !tbaa !18
  %120 = call double @llvm.fmuladd.f64(double %116, double %119, double %conv106)
  %121 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real111 = getelementptr inbounds %struct.dcomplex, ptr %121, i32 0, i32 0
  %122 = load double, ptr %real111, align 8, !tbaa !18
  %123 = load ptr, ptr %psi188, align 8, !tbaa !9
  %124 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx112 = getelementptr inbounds %struct.dcomplex, ptr %123, i64 %124
  %imag113 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx112, i32 0, i32 1
  %125 = load double, ptr %imag113, align 8, !tbaa !20
  %126 = call double @llvm.fmuladd.f64(double %122, double %125, double %120)
  store double %126, ptr %yt_i, align 8, !tbaa !13
  %127 = load double, ptr %yt_r, align 8, !tbaa !13
  %128 = load ptr, ptr %psi188, align 8, !tbaa !9
  %129 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds %struct.dcomplex, ptr %128, i64 %129
  %real116 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx115, i32 0, i32 0
  store double %127, ptr %real116, align 8, !tbaa !18
  %130 = load double, ptr %yt_i, align 8, !tbaa !13
  %131 = load ptr, ptr %psi188, align 8, !tbaa !9
  %132 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds %struct.dcomplex, ptr %131, i64 %132
  %imag118 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx117, i32 0, i32 1
  store double %130, ptr %imag118, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r) #3
  br label %for.inc119

for.inc119:                                       ; preds = %for.body92
  %133 = load i64, ptr %i, align 8, !tbaa !4
  %inc120 = add nsw i64 %133, 1
  store i64 %inc120, ptr %i, align 8, !tbaa !4
  br label %for.cond89

for.end121:                                       ; preds = %for.cond89
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi188) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi187) #3
  br label %for.inc122

for.inc122:                                       ; preds = %for.end121
  %134 = load i64, ptr %j, align 8, !tbaa !4
  %inc123 = add nsw i64 %134, 1
  store i64 %inc123, ptr %j, align 8, !tbaa !4
  br label %for.cond75

for.end124:                                       ; preds = %for.cond75
  br label %if.end173

if.else125:                                       ; preds = %land.lhs.true71, %if.else68
  %135 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %135, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc170, %if.else125
  %136 = load i64, ptr %j, align 8, !tbaa !4
  %137 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp127 = icmp slt i64 %136, %137
  br i1 %cmp127, label %for.body129, label %for.end172

for.body129:                                      ; preds = %for.cond126
  %138 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %139 = load i64, ptr %j, align 8, !tbaa !4
  %140 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul130 = mul nsw i64 %139, %140
  %add.ptr131 = getelementptr inbounds %struct.scomplex, ptr %138, i64 %mul130
  %141 = load i64, ptr %incx, align 8, !tbaa !4
  %mul132 = mul nsw i64 0, %141
  %add.ptr133 = getelementptr inbounds %struct.scomplex, ptr %add.ptr131, i64 %mul132
  store ptr %add.ptr133, ptr %x1, align 8, !tbaa !9
  %142 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %143 = load i64, ptr %j, align 8, !tbaa !4
  %144 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul134 = mul nsw i64 %143, %144
  %add.ptr135 = getelementptr inbounds %struct.dcomplex, ptr %142, i64 %mul134
  %145 = load i64, ptr %incy, align 8, !tbaa !4
  %mul136 = mul nsw i64 0, %145
  %add.ptr137 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr135, i64 %mul136
  store ptr %add.ptr137, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1138) #3
  %146 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %146, ptr %chi1138, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1139) #3
  %147 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %147, ptr %psi1139, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc167, %for.body129
  %148 = load i64, ptr %i, align 8, !tbaa !4
  %149 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp141 = icmp slt i64 %148, %149
  br i1 %cmp141, label %for.body143, label %for.end169

for.body143:                                      ; preds = %for.cond140
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_r144) #3
  %150 = load ptr, ptr %chi1138, align 8, !tbaa !9
  %real145 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 0
  %151 = load float, ptr %real145, align 4, !tbaa !15
  %conv146 = fpext float %151 to double
  %152 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real147 = getelementptr inbounds %struct.dcomplex, ptr %152, i32 0, i32 0
  %153 = load double, ptr %real147, align 8, !tbaa !18
  %154 = load ptr, ptr %psi1139, align 8, !tbaa !9
  %real148 = getelementptr inbounds %struct.dcomplex, ptr %154, i32 0, i32 0
  %155 = load double, ptr %real148, align 8, !tbaa !18
  %156 = call double @llvm.fmuladd.f64(double %153, double %155, double %conv146)
  %157 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag150 = getelementptr inbounds %struct.dcomplex, ptr %157, i32 0, i32 1
  %158 = load double, ptr %imag150, align 8, !tbaa !20
  %159 = load ptr, ptr %psi1139, align 8, !tbaa !9
  %imag151 = getelementptr inbounds %struct.dcomplex, ptr %159, i32 0, i32 1
  %160 = load double, ptr %imag151, align 8, !tbaa !20
  %neg153 = fneg double %158
  %161 = call double @llvm.fmuladd.f64(double %neg153, double %160, double %156)
  store double %161, ptr %yt_r144, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %yt_i154) #3
  %162 = load ptr, ptr %chi1138, align 8, !tbaa !9
  %imag155 = getelementptr inbounds %struct.scomplex, ptr %162, i32 0, i32 1
  %163 = load float, ptr %imag155, align 4, !tbaa !17
  %conv156 = fpext float %163 to double
  %164 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag157 = getelementptr inbounds %struct.dcomplex, ptr %164, i32 0, i32 1
  %165 = load double, ptr %imag157, align 8, !tbaa !20
  %166 = load ptr, ptr %psi1139, align 8, !tbaa !9
  %real158 = getelementptr inbounds %struct.dcomplex, ptr %166, i32 0, i32 0
  %167 = load double, ptr %real158, align 8, !tbaa !18
  %168 = call double @llvm.fmuladd.f64(double %165, double %167, double %conv156)
  %169 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real160 = getelementptr inbounds %struct.dcomplex, ptr %169, i32 0, i32 0
  %170 = load double, ptr %real160, align 8, !tbaa !18
  %171 = load ptr, ptr %psi1139, align 8, !tbaa !9
  %imag161 = getelementptr inbounds %struct.dcomplex, ptr %171, i32 0, i32 1
  %172 = load double, ptr %imag161, align 8, !tbaa !20
  %173 = call double @llvm.fmuladd.f64(double %170, double %172, double %168)
  store double %173, ptr %yt_i154, align 8, !tbaa !13
  %174 = load double, ptr %yt_r144, align 8, !tbaa !13
  %175 = load ptr, ptr %psi1139, align 8, !tbaa !9
  %real163 = getelementptr inbounds %struct.dcomplex, ptr %175, i32 0, i32 0
  store double %174, ptr %real163, align 8, !tbaa !18
  %176 = load double, ptr %yt_i154, align 8, !tbaa !13
  %177 = load ptr, ptr %psi1139, align 8, !tbaa !9
  %imag164 = getelementptr inbounds %struct.dcomplex, ptr %177, i32 0, i32 1
  store double %176, ptr %imag164, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_i154) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yt_r144) #3
  %178 = load i64, ptr %incx, align 8, !tbaa !4
  %179 = load ptr, ptr %chi1138, align 8, !tbaa !9
  %add.ptr165 = getelementptr inbounds %struct.scomplex, ptr %179, i64 %178
  store ptr %add.ptr165, ptr %chi1138, align 8, !tbaa !9
  %180 = load i64, ptr %incy, align 8, !tbaa !4
  %181 = load ptr, ptr %psi1139, align 8, !tbaa !9
  %add.ptr166 = getelementptr inbounds %struct.dcomplex, ptr %181, i64 %180
  store ptr %add.ptr166, ptr %psi1139, align 8, !tbaa !9
  br label %for.inc167

for.inc167:                                       ; preds = %for.body143
  %182 = load i64, ptr %i, align 8, !tbaa !4
  %inc168 = add nsw i64 %182, 1
  store i64 %inc168, ptr %i, align 8, !tbaa !4
  br label %for.cond140

for.end169:                                       ; preds = %for.cond140
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1139) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1138) #3
  br label %for.inc170

for.inc170:                                       ; preds = %for.end169
  %183 = load i64, ptr %j, align 8, !tbaa !4
  %inc171 = add nsw i64 %183, 1
  store i64 %inc171, ptr %j, align 8, !tbaa !4
  br label %for.cond126

for.end172:                                       ; preds = %for.cond126
  br label %if.end173

if.end173:                                        ; preds = %for.end172, %for.end124
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zsxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi132 = alloca ptr, align 8
  %psi133 = alloca ptr, align 8
  %chi169 = alloca ptr, align 8
  %psi170 = alloca ptr, align 8
  %chi1102 = alloca ptr, align 8
  %psi1103 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load float, ptr %10, align 4, !tbaa !11
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else50

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds float, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float, ptr %29, i64 %30
  %31 = load float, ptr %arrayidx, align 4, !tbaa !11
  %conv = fpext float %31 to double
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds %struct.dcomplex, ptr %32, i64 %33
  %real = getelementptr inbounds %struct.dcomplex, ptr %arrayidx14, i32 0, i32 0
  %34 = load double, ptr %real, align 8, !tbaa !18
  %add = fadd double %conv, %34
  %conv15 = fptrunc double %add to float
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds float, ptr %35, i64 %36
  store float %conv15, ptr %arrayidx16, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc18 = add nsw i64 %38, 1
  store i64 %inc18, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end19:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc47, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp21 = icmp slt i64 %40, %41
  br i1 %cmp21, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond20
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul24 = mul nsw i64 %43, %44
  %add.ptr25 = getelementptr inbounds %struct.dcomplex, ptr %42, i64 %mul24
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul26 = mul nsw i64 0, %45
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr25, i64 %mul26
  store ptr %add.ptr27, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul28 = mul nsw i64 %47, %48
  %add.ptr29 = getelementptr inbounds float, ptr %46, i64 %mul28
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul30 = mul nsw i64 0, %49
  %add.ptr31 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul30
  store ptr %add.ptr31, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi132) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi132, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi133) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi133, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc44, %for.body23
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp35 = icmp slt i64 %52, %53
  br i1 %cmp35, label %for.body37, label %for.end46

for.body37:                                       ; preds = %for.cond34
  %54 = load ptr, ptr %psi133, align 8, !tbaa !9
  %55 = load float, ptr %54, align 4, !tbaa !11
  %conv38 = fpext float %55 to double
  %56 = load ptr, ptr %chi132, align 8, !tbaa !9
  %real39 = getelementptr inbounds %struct.dcomplex, ptr %56, i32 0, i32 0
  %57 = load double, ptr %real39, align 8, !tbaa !18
  %add40 = fadd double %conv38, %57
  %conv41 = fptrunc double %add40 to float
  %58 = load ptr, ptr %psi133, align 8, !tbaa !9
  store float %conv41, ptr %58, align 4, !tbaa !11
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi132, align 8, !tbaa !9
  %add.ptr42 = getelementptr inbounds %struct.dcomplex, ptr %60, i64 %59
  store ptr %add.ptr42, ptr %chi132, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi133, align 8, !tbaa !9
  %add.ptr43 = getelementptr inbounds float, ptr %62, i64 %61
  store ptr %add.ptr43, ptr %psi133, align 8, !tbaa !9
  br label %for.inc44

for.inc44:                                        ; preds = %for.body37
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc45 = add nsw i64 %63, 1
  store i64 %inc45, ptr %i, align 8, !tbaa !4
  br label %for.cond34

for.end46:                                        ; preds = %for.cond34
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi133) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi132) #3
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc48 = add nsw i64 %64, 1
  store i64 %inc48, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.end49:                                        ; preds = %for.cond20
  br label %if.end

if.end:                                           ; preds = %for.end49, %for.end19
  br label %if.end122

if.else50:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp51 = icmp eq i64 %65, 1
  br i1 %cmp51, label %land.lhs.true53, label %if.else89

land.lhs.true53:                                  ; preds = %if.else50
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp54 = icmp eq i64 %66, 1
  br i1 %cmp54, label %if.then56, label %if.else89

if.then56:                                        ; preds = %land.lhs.true53
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc86, %if.then56
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp58 = icmp slt i64 %68, %69
  br i1 %cmp58, label %for.body60, label %for.end88

for.body60:                                       ; preds = %for.cond57
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul61 = mul nsw i64 %71, %72
  %add.ptr62 = getelementptr inbounds %struct.dcomplex, ptr %70, i64 %mul61
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul63 = mul nsw i64 0, %73
  %add.ptr64 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr62, i64 %mul63
  store ptr %add.ptr64, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul65 = mul nsw i64 %75, %76
  %add.ptr66 = getelementptr inbounds float, ptr %74, i64 %mul65
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul67 = mul nsw i64 0, %77
  %add.ptr68 = getelementptr inbounds float, ptr %add.ptr66, i64 %mul67
  store ptr %add.ptr68, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi169) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi169, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi170) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi170, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc83, %for.body60
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp72 = icmp slt i64 %80, %81
  br i1 %cmp72, label %for.body74, label %for.end85

for.body74:                                       ; preds = %for.cond71
  %82 = load ptr, ptr %chi169, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds %struct.dcomplex, ptr %82, i64 %83
  %real76 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx75, i32 0, i32 0
  %84 = load double, ptr %real76, align 8, !tbaa !18
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load float, ptr %85, align 4, !tbaa !11
  %87 = load ptr, ptr %psi170, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx77 = getelementptr inbounds float, ptr %87, i64 %88
  %89 = load float, ptr %arrayidx77, align 4, !tbaa !11
  %mul78 = fmul float %86, %89
  %conv79 = fpext float %mul78 to double
  %add80 = fadd double %84, %conv79
  %conv81 = fptrunc double %add80 to float
  %90 = load ptr, ptr %psi170, align 8, !tbaa !9
  %91 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds float, ptr %90, i64 %91
  store float %conv81, ptr %arrayidx82, align 4, !tbaa !11
  br label %for.inc83

for.inc83:                                        ; preds = %for.body74
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %inc84 = add nsw i64 %92, 1
  store i64 %inc84, ptr %i, align 8, !tbaa !4
  br label %for.cond71

for.end85:                                        ; preds = %for.cond71
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi170) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi169) #3
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %93 = load i64, ptr %j, align 8, !tbaa !4
  %inc87 = add nsw i64 %93, 1
  store i64 %inc87, ptr %j, align 8, !tbaa !4
  br label %for.cond57

for.end88:                                        ; preds = %for.cond57
  br label %if.end121

if.else89:                                        ; preds = %land.lhs.true53, %if.else50
  %94 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %94, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc118, %if.else89
  %95 = load i64, ptr %j, align 8, !tbaa !4
  %96 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp91 = icmp slt i64 %95, %96
  br i1 %cmp91, label %for.body93, label %for.end120

for.body93:                                       ; preds = %for.cond90
  %97 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %98 = load i64, ptr %j, align 8, !tbaa !4
  %99 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul94 = mul nsw i64 %98, %99
  %add.ptr95 = getelementptr inbounds %struct.dcomplex, ptr %97, i64 %mul94
  %100 = load i64, ptr %incx, align 8, !tbaa !4
  %mul96 = mul nsw i64 0, %100
  %add.ptr97 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr95, i64 %mul96
  store ptr %add.ptr97, ptr %x1, align 8, !tbaa !9
  %101 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %102 = load i64, ptr %j, align 8, !tbaa !4
  %103 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul98 = mul nsw i64 %102, %103
  %add.ptr99 = getelementptr inbounds float, ptr %101, i64 %mul98
  %104 = load i64, ptr %incy, align 8, !tbaa !4
  %mul100 = mul nsw i64 0, %104
  %add.ptr101 = getelementptr inbounds float, ptr %add.ptr99, i64 %mul100
  store ptr %add.ptr101, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1102) #3
  %105 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %105, ptr %chi1102, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1103) #3
  %106 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %106, ptr %psi1103, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc115, %for.body93
  %107 = load i64, ptr %i, align 8, !tbaa !4
  %108 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp105 = icmp slt i64 %107, %108
  br i1 %cmp105, label %for.body107, label %for.end117

for.body107:                                      ; preds = %for.cond104
  %109 = load ptr, ptr %chi1102, align 8, !tbaa !9
  %real108 = getelementptr inbounds %struct.dcomplex, ptr %109, i32 0, i32 0
  %110 = load double, ptr %real108, align 8, !tbaa !18
  %111 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %112 = load float, ptr %111, align 4, !tbaa !11
  %113 = load ptr, ptr %psi1103, align 8, !tbaa !9
  %114 = load float, ptr %113, align 4, !tbaa !11
  %mul109 = fmul float %112, %114
  %conv110 = fpext float %mul109 to double
  %add111 = fadd double %110, %conv110
  %conv112 = fptrunc double %add111 to float
  %115 = load ptr, ptr %psi1103, align 8, !tbaa !9
  store float %conv112, ptr %115, align 4, !tbaa !11
  %116 = load i64, ptr %incx, align 8, !tbaa !4
  %117 = load ptr, ptr %chi1102, align 8, !tbaa !9
  %add.ptr113 = getelementptr inbounds %struct.dcomplex, ptr %117, i64 %116
  store ptr %add.ptr113, ptr %chi1102, align 8, !tbaa !9
  %118 = load i64, ptr %incy, align 8, !tbaa !4
  %119 = load ptr, ptr %psi1103, align 8, !tbaa !9
  %add.ptr114 = getelementptr inbounds float, ptr %119, i64 %118
  store ptr %add.ptr114, ptr %psi1103, align 8, !tbaa !9
  br label %for.inc115

for.inc115:                                       ; preds = %for.body107
  %120 = load i64, ptr %i, align 8, !tbaa !4
  %inc116 = add nsw i64 %120, 1
  store i64 %inc116, ptr %i, align 8, !tbaa !4
  br label %for.cond104

for.end117:                                       ; preds = %for.cond104
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1103) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1102) #3
  br label %for.inc118

for.inc118:                                       ; preds = %for.end117
  %121 = load i64, ptr %j, align 8, !tbaa !4
  %inc119 = add nsw i64 %121, 1
  store i64 %inc119, ptr %j, align 8, !tbaa !4
  br label %for.cond90

for.end120:                                       ; preds = %for.cond90
  br label %if.end121

if.end121:                                        ; preds = %for.end120, %for.end88
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zdxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi130 = alloca ptr, align 8
  %psi131 = alloca ptr, align 8
  %chi161 = alloca ptr, align 8
  %psi162 = alloca ptr, align 8
  %chi189 = alloca ptr, align 8
  %psi190 = alloca ptr, align 8
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load double, ptr %10, align 8, !tbaa !13
  %cmp = fcmp oeq double %11, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else45

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp1 = icmp eq i64 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %13, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %14 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %14, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.then3
  %15 = load i64, ptr %j, align 8, !tbaa !4
  %16 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp4 = icmp slt i64 %15, %16
  br i1 %cmp4, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %18 = load i64, ptr %j, align 8, !tbaa !4
  %19 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %18, %19
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul
  %20 = load i64, ptr %incx, align 8, !tbaa !4
  %mul5 = mul nsw i64 0, %20
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul5
  store ptr %add.ptr6, ptr %x1, align 8, !tbaa !9
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %23 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul7 = mul nsw i64 %22, %23
  %add.ptr8 = getelementptr inbounds double, ptr %21, i64 %mul7
  %24 = load i64, ptr %incy, align 8, !tbaa !4
  %mul9 = mul nsw i64 0, %24
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr8, i64 %mul9
  store ptr %add.ptr10, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %25 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %25, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %26 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %26, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %27 = load i64, ptr %i, align 8, !tbaa !4
  %28 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp12 = icmp slt i64 %27, %28
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %29 = load ptr, ptr %psi1, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %29, i64 %30
  %31 = load double, ptr %arrayidx, align 8, !tbaa !13
  %32 = load ptr, ptr %chi1, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds %struct.dcomplex, ptr %32, i64 %33
  %real = getelementptr inbounds %struct.dcomplex, ptr %arrayidx14, i32 0, i32 0
  %34 = load double, ptr %real, align 8, !tbaa !18
  %add = fadd double %31, %34
  %35 = load ptr, ptr %psi1, align 8, !tbaa !9
  %36 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double, ptr %35, i64 %36
  store double %add, ptr %arrayidx15, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %37 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %38 = load i64, ptr %j, align 8, !tbaa !4
  %inc17 = add nsw i64 %38, 1
  store i64 %inc17, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %39 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %39, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc42, %if.else
  %40 = load i64, ptr %j, align 8, !tbaa !4
  %41 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp20 = icmp slt i64 %40, %41
  br i1 %cmp20, label %for.body21, label %for.end44

for.body21:                                       ; preds = %for.cond19
  %42 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %44 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul22 = mul nsw i64 %43, %44
  %add.ptr23 = getelementptr inbounds %struct.dcomplex, ptr %42, i64 %mul22
  %45 = load i64, ptr %incx, align 8, !tbaa !4
  %mul24 = mul nsw i64 0, %45
  %add.ptr25 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr23, i64 %mul24
  store ptr %add.ptr25, ptr %x1, align 8, !tbaa !9
  %46 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %48 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul26 = mul nsw i64 %47, %48
  %add.ptr27 = getelementptr inbounds double, ptr %46, i64 %mul26
  %49 = load i64, ptr %incy, align 8, !tbaa !4
  %mul28 = mul nsw i64 0, %49
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr27, i64 %mul28
  store ptr %add.ptr29, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi130) #3
  %50 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %50, ptr %chi130, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi131) #3
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %51, ptr %psi131, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc39, %for.body21
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp33 = icmp slt i64 %52, %53
  br i1 %cmp33, label %for.body34, label %for.end41

for.body34:                                       ; preds = %for.cond32
  %54 = load ptr, ptr %psi131, align 8, !tbaa !9
  %55 = load double, ptr %54, align 8, !tbaa !13
  %56 = load ptr, ptr %chi130, align 8, !tbaa !9
  %real35 = getelementptr inbounds %struct.dcomplex, ptr %56, i32 0, i32 0
  %57 = load double, ptr %real35, align 8, !tbaa !18
  %add36 = fadd double %55, %57
  %58 = load ptr, ptr %psi131, align 8, !tbaa !9
  store double %add36, ptr %58, align 8, !tbaa !13
  %59 = load i64, ptr %incx, align 8, !tbaa !4
  %60 = load ptr, ptr %chi130, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %60, i64 %59
  store ptr %add.ptr37, ptr %chi130, align 8, !tbaa !9
  %61 = load i64, ptr %incy, align 8, !tbaa !4
  %62 = load ptr, ptr %psi131, align 8, !tbaa !9
  %add.ptr38 = getelementptr inbounds double, ptr %62, i64 %61
  store ptr %add.ptr38, ptr %psi131, align 8, !tbaa !9
  br label %for.inc39

for.inc39:                                        ; preds = %for.body34
  %63 = load i64, ptr %i, align 8, !tbaa !4
  %inc40 = add nsw i64 %63, 1
  store i64 %inc40, ptr %i, align 8, !tbaa !4
  br label %for.cond32

for.end41:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi131) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi130) #3
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %64 = load i64, ptr %j, align 8, !tbaa !4
  %inc43 = add nsw i64 %64, 1
  store i64 %inc43, ptr %j, align 8, !tbaa !4
  br label %for.cond19

for.end44:                                        ; preds = %for.cond19
  br label %if.end

if.end:                                           ; preds = %for.end44, %for.end18
  br label %if.end105

if.else45:                                        ; preds = %entry
  %65 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp46 = icmp eq i64 %65, 1
  br i1 %cmp46, label %land.lhs.true47, label %if.else77

land.lhs.true47:                                  ; preds = %if.else45
  %66 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp48 = icmp eq i64 %66, 1
  br i1 %cmp48, label %if.then49, label %if.else77

if.then49:                                        ; preds = %land.lhs.true47
  %67 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %67, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc74, %if.then49
  %68 = load i64, ptr %j, align 8, !tbaa !4
  %69 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp51 = icmp slt i64 %68, %69
  br i1 %cmp51, label %for.body52, label %for.end76

for.body52:                                       ; preds = %for.cond50
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %j, align 8, !tbaa !4
  %72 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul53 = mul nsw i64 %71, %72
  %add.ptr54 = getelementptr inbounds %struct.dcomplex, ptr %70, i64 %mul53
  %73 = load i64, ptr %incx, align 8, !tbaa !4
  %mul55 = mul nsw i64 0, %73
  %add.ptr56 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr54, i64 %mul55
  store ptr %add.ptr56, ptr %x1, align 8, !tbaa !9
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %75 = load i64, ptr %j, align 8, !tbaa !4
  %76 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul57 = mul nsw i64 %75, %76
  %add.ptr58 = getelementptr inbounds double, ptr %74, i64 %mul57
  %77 = load i64, ptr %incy, align 8, !tbaa !4
  %mul59 = mul nsw i64 0, %77
  %add.ptr60 = getelementptr inbounds double, ptr %add.ptr58, i64 %mul59
  store ptr %add.ptr60, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi161) #3
  %78 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %78, ptr %chi161, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi162) #3
  %79 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %79, ptr %psi162, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc71, %for.body52
  %80 = load i64, ptr %i, align 8, !tbaa !4
  %81 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp64 = icmp slt i64 %80, %81
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  %82 = load ptr, ptr %chi161, align 8, !tbaa !9
  %83 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx66 = getelementptr inbounds %struct.dcomplex, ptr %82, i64 %83
  %real67 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx66, i32 0, i32 0
  %84 = load double, ptr %real67, align 8, !tbaa !18
  %85 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %86 = load double, ptr %85, align 8, !tbaa !13
  %87 = load ptr, ptr %psi162, align 8, !tbaa !9
  %88 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx68 = getelementptr inbounds double, ptr %87, i64 %88
  %89 = load double, ptr %arrayidx68, align 8, !tbaa !13
  %90 = call double @llvm.fmuladd.f64(double %86, double %89, double %84)
  %91 = load ptr, ptr %psi162, align 8, !tbaa !9
  %92 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds double, ptr %91, i64 %92
  store double %90, ptr %arrayidx70, align 8, !tbaa !13
  br label %for.inc71

for.inc71:                                        ; preds = %for.body65
  %93 = load i64, ptr %i, align 8, !tbaa !4
  %inc72 = add nsw i64 %93, 1
  store i64 %inc72, ptr %i, align 8, !tbaa !4
  br label %for.cond63

for.end73:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi162) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi161) #3
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %94 = load i64, ptr %j, align 8, !tbaa !4
  %inc75 = add nsw i64 %94, 1
  store i64 %inc75, ptr %j, align 8, !tbaa !4
  br label %for.cond50

for.end76:                                        ; preds = %for.cond50
  br label %if.end104

if.else77:                                        ; preds = %land.lhs.true47, %if.else45
  %95 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %95, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc101, %if.else77
  %96 = load i64, ptr %j, align 8, !tbaa !4
  %97 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp79 = icmp slt i64 %96, %97
  br i1 %cmp79, label %for.body80, label %for.end103

for.body80:                                       ; preds = %for.cond78
  %98 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %99 = load i64, ptr %j, align 8, !tbaa !4
  %100 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul81 = mul nsw i64 %99, %100
  %add.ptr82 = getelementptr inbounds %struct.dcomplex, ptr %98, i64 %mul81
  %101 = load i64, ptr %incx, align 8, !tbaa !4
  %mul83 = mul nsw i64 0, %101
  %add.ptr84 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr82, i64 %mul83
  store ptr %add.ptr84, ptr %x1, align 8, !tbaa !9
  %102 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %103 = load i64, ptr %j, align 8, !tbaa !4
  %104 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul85 = mul nsw i64 %103, %104
  %add.ptr86 = getelementptr inbounds double, ptr %102, i64 %mul85
  %105 = load i64, ptr %incy, align 8, !tbaa !4
  %mul87 = mul nsw i64 0, %105
  %add.ptr88 = getelementptr inbounds double, ptr %add.ptr86, i64 %mul87
  store ptr %add.ptr88, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi189) #3
  %106 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %106, ptr %chi189, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi190) #3
  %107 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %107, ptr %psi190, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc98, %for.body80
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %109 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp92 = icmp slt i64 %108, %109
  br i1 %cmp92, label %for.body93, label %for.end100

for.body93:                                       ; preds = %for.cond91
  %110 = load ptr, ptr %chi189, align 8, !tbaa !9
  %real94 = getelementptr inbounds %struct.dcomplex, ptr %110, i32 0, i32 0
  %111 = load double, ptr %real94, align 8, !tbaa !18
  %112 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %113 = load double, ptr %112, align 8, !tbaa !13
  %114 = load ptr, ptr %psi190, align 8, !tbaa !9
  %115 = load double, ptr %114, align 8, !tbaa !13
  %116 = call double @llvm.fmuladd.f64(double %113, double %115, double %111)
  %117 = load ptr, ptr %psi190, align 8, !tbaa !9
  store double %116, ptr %117, align 8, !tbaa !13
  %118 = load i64, ptr %incx, align 8, !tbaa !4
  %119 = load ptr, ptr %chi189, align 8, !tbaa !9
  %add.ptr96 = getelementptr inbounds %struct.dcomplex, ptr %119, i64 %118
  store ptr %add.ptr96, ptr %chi189, align 8, !tbaa !9
  %120 = load i64, ptr %incy, align 8, !tbaa !4
  %121 = load ptr, ptr %psi190, align 8, !tbaa !9
  %add.ptr97 = getelementptr inbounds double, ptr %121, i64 %120
  store ptr %add.ptr97, ptr %psi190, align 8, !tbaa !9
  br label %for.inc98

for.inc98:                                        ; preds = %for.body93
  %122 = load i64, ptr %i, align 8, !tbaa !4
  %inc99 = add nsw i64 %122, 1
  store i64 %inc99, ptr %i, align 8, !tbaa !4
  br label %for.cond91

for.end100:                                       ; preds = %for.cond91
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi190) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi189) #3
  br label %for.inc101

for.inc101:                                       ; preds = %for.end100
  %123 = load i64, ptr %j, align 8, !tbaa !4
  %inc102 = add nsw i64 %123, 1
  store i64 %inc102, ptr %j, align 8, !tbaa !4
  br label %for.cond78

for.end103:                                       ; preds = %for.cond78
  br label %if.end104

if.end104:                                        ; preds = %for.end103, %for.end76
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zcxpbym_md_unb_var1(i64 noundef %diagoffx, i32 noundef %diagx, i32 noundef %uplox, i32 noundef %transx, i64 noundef %m, i64 noundef %n, ptr noundef %x, i64 noundef %rs_x, i64 noundef %cs_x, ptr noundef %beta, ptr noundef %y, i64 noundef %rs_y, i64 noundef %cs_y, ptr noundef %cntx, ptr noundef %rntm) #0 {
entry:
  %diagoffx.addr = alloca i64, align 8
  %diagx.addr = alloca i32, align 4
  %uplox.addr = alloca i32, align 4
  %transx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %rs_x.addr = alloca i64, align 8
  %cs_x.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %rs_y.addr = alloca i64, align 8
  %cs_y.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %uplox_eff = alloca i32, align 4
  %n_iter = alloca i64, align 8
  %n_elem = alloca i64, align 8
  %n_elem_max = alloca i64, align 8
  %ldx = alloca i64, align 8
  %incx = alloca i64, align 8
  %ldy = alloca i64, align 8
  %incy = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %ij0 = alloca i64, align 8
  %n_shift = alloca i64, align 8
  %chi1 = alloca ptr, align 8
  %psi1 = alloca ptr, align 8
  %chi146 = alloca ptr, align 8
  %psi147 = alloca ptr, align 8
  %chi191 = alloca ptr, align 8
  %psi192 = alloca ptr, align 8
  %yt_r = alloca float, align 4
  %yt_i = alloca float, align 4
  %chi1149 = alloca ptr, align 8
  %psi1150 = alloca ptr, align 8
  %yt_r155 = alloca float, align 4
  %yt_i168 = alloca float, align 4
  store i64 %diagoffx, ptr %diagoffx.addr, align 8, !tbaa !4
  store i32 %diagx, ptr %diagx.addr, align 4, !tbaa !8
  store i32 %uplox, ptr %uplox.addr, align 4, !tbaa !8
  store i32 %transx, ptr %transx.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %rs_x, ptr %rs_x.addr, align 8, !tbaa !4
  store i64 %cs_x, ptr %cs_x.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %rs_y, ptr %rs_y.addr, align 8, !tbaa !4
  store i64 %cs_y, ptr %cs_y.addr, align 8, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_shift) #3
  %0 = load i64, ptr %diagoffx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %diagx.addr, align 4, !tbaa !8
  %2 = load i32, ptr %transx.addr, align 4, !tbaa !8
  %3 = load i32, ptr %uplox.addr, align 4, !tbaa !8
  %4 = load i64, ptr %m.addr, align 8, !tbaa !4
  %5 = load i64, ptr %n.addr, align 8, !tbaa !4
  %6 = load i64, ptr %rs_x.addr, align 8, !tbaa !4
  %7 = load i64, ptr %cs_x.addr, align 8, !tbaa !4
  %8 = load i64, ptr %rs_y.addr, align 8, !tbaa !4
  %9 = load i64, ptr %cs_y.addr, align 8, !tbaa !4
  call void @bli_set_dims_incs_uplo_2m(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %uplox_eff, ptr noundef %n_elem_max, ptr noundef %n_iter, ptr noundef %incx, ptr noundef %ldx, ptr noundef %incy, ptr noundef %ldy, ptr noundef %ij0, ptr noundef %n_shift)
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %10, i32 0, i32 0
  %11 = load float, ptr %real, align 4, !tbaa !15
  %cmp = fcmp oeq float %11, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else72

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %12, i32 0, i32 1
  %13 = load float, ptr %imag, align 4, !tbaa !17
  %cmp1 = fcmp oeq float %13, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else72

if.then:                                          ; preds = %land.lhs.true
  %14 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp2 = icmp eq i64 %14, 1
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %15 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp4 = icmp eq i64 %15, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %16, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %if.then5
  %17 = load i64, ptr %j, align 8, !tbaa !4
  %18 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %20 = load i64, ptr %j, align 8, !tbaa !4
  %21 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul = mul nsw i64 %20, %21
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %19, i64 %mul
  %22 = load i64, ptr %incx, align 8, !tbaa !4
  %mul7 = mul nsw i64 0, %22
  %add.ptr8 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr, i64 %mul7
  store ptr %add.ptr8, ptr %x1, align 8, !tbaa !9
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load i64, ptr %j, align 8, !tbaa !4
  %25 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul9 = mul nsw i64 %24, %25
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %23, i64 %mul9
  %26 = load i64, ptr %incy, align 8, !tbaa !4
  %mul11 = mul nsw i64 0, %26
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %add.ptr10, i64 %mul11
  store ptr %add.ptr12, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #3
  %27 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %27, ptr %chi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1) #3
  %28 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %28, ptr %psi1, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %30 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp14 = icmp slt i64 %29, %30
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %31 = load ptr, ptr %psi1, align 8, !tbaa !9
  %32 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.scomplex, ptr %31, i64 %32
  %real16 = getelementptr inbounds %struct.scomplex, ptr %arrayidx, i32 0, i32 0
  %33 = load float, ptr %real16, align 4, !tbaa !15
  %conv = fpext float %33 to double
  %34 = load ptr, ptr %chi1, align 8, !tbaa !9
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds %struct.dcomplex, ptr %34, i64 %35
  %real18 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx17, i32 0, i32 0
  %36 = load double, ptr %real18, align 8, !tbaa !18
  %add = fadd double %conv, %36
  %conv19 = fptrunc double %add to float
  %37 = load ptr, ptr %psi1, align 8, !tbaa !9
  %38 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds %struct.scomplex, ptr %37, i64 %38
  %real21 = getelementptr inbounds %struct.scomplex, ptr %arrayidx20, i32 0, i32 0
  store float %conv19, ptr %real21, align 4, !tbaa !15
  %39 = load ptr, ptr %psi1, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds %struct.scomplex, ptr %39, i64 %40
  %imag23 = getelementptr inbounds %struct.scomplex, ptr %arrayidx22, i32 0, i32 1
  %41 = load float, ptr %imag23, align 4, !tbaa !17
  %conv24 = fpext float %41 to double
  %42 = load ptr, ptr %chi1, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds %struct.dcomplex, ptr %42, i64 %43
  %imag26 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx25, i32 0, i32 1
  %44 = load double, ptr %imag26, align 8, !tbaa !20
  %add27 = fadd double %conv24, %44
  %conv28 = fptrunc double %add27 to float
  %45 = load ptr, ptr %psi1, align 8, !tbaa !9
  %46 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds %struct.scomplex, ptr %45, i64 %46
  %imag30 = getelementptr inbounds %struct.scomplex, ptr %arrayidx29, i32 0, i32 1
  store float %conv28, ptr %imag30, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %47 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add nsw i64 %47, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #3
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %48 = load i64, ptr %j, align 8, !tbaa !4
  %inc32 = add nsw i64 %48, 1
  store i64 %inc32, ptr %j, align 8, !tbaa !4
  br label %for.cond

for.end33:                                        ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %if.then
  %49 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %49, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc69, %if.else
  %50 = load i64, ptr %j, align 8, !tbaa !4
  %51 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp35 = icmp slt i64 %50, %51
  br i1 %cmp35, label %for.body37, label %for.end71

for.body37:                                       ; preds = %for.cond34
  %52 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %53 = load i64, ptr %j, align 8, !tbaa !4
  %54 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul38 = mul nsw i64 %53, %54
  %add.ptr39 = getelementptr inbounds %struct.dcomplex, ptr %52, i64 %mul38
  %55 = load i64, ptr %incx, align 8, !tbaa !4
  %mul40 = mul nsw i64 0, %55
  %add.ptr41 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr39, i64 %mul40
  store ptr %add.ptr41, ptr %x1, align 8, !tbaa !9
  %56 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %57 = load i64, ptr %j, align 8, !tbaa !4
  %58 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul42 = mul nsw i64 %57, %58
  %add.ptr43 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %mul42
  %59 = load i64, ptr %incy, align 8, !tbaa !4
  %mul44 = mul nsw i64 0, %59
  %add.ptr45 = getelementptr inbounds %struct.scomplex, ptr %add.ptr43, i64 %mul44
  store ptr %add.ptr45, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi146) #3
  %60 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %60, ptr %chi146, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi147) #3
  %61 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %61, ptr %psi147, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc66, %for.body37
  %62 = load i64, ptr %i, align 8, !tbaa !4
  %63 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp49 = icmp slt i64 %62, %63
  br i1 %cmp49, label %for.body51, label %for.end68

for.body51:                                       ; preds = %for.cond48
  %64 = load ptr, ptr %psi147, align 8, !tbaa !9
  %real52 = getelementptr inbounds %struct.scomplex, ptr %64, i32 0, i32 0
  %65 = load float, ptr %real52, align 4, !tbaa !15
  %conv53 = fpext float %65 to double
  %66 = load ptr, ptr %chi146, align 8, !tbaa !9
  %real54 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 0
  %67 = load double, ptr %real54, align 8, !tbaa !18
  %add55 = fadd double %conv53, %67
  %conv56 = fptrunc double %add55 to float
  %68 = load ptr, ptr %psi147, align 8, !tbaa !9
  %real57 = getelementptr inbounds %struct.scomplex, ptr %68, i32 0, i32 0
  store float %conv56, ptr %real57, align 4, !tbaa !15
  %69 = load ptr, ptr %psi147, align 8, !tbaa !9
  %imag58 = getelementptr inbounds %struct.scomplex, ptr %69, i32 0, i32 1
  %70 = load float, ptr %imag58, align 4, !tbaa !17
  %conv59 = fpext float %70 to double
  %71 = load ptr, ptr %chi146, align 8, !tbaa !9
  %imag60 = getelementptr inbounds %struct.dcomplex, ptr %71, i32 0, i32 1
  %72 = load double, ptr %imag60, align 8, !tbaa !20
  %add61 = fadd double %conv59, %72
  %conv62 = fptrunc double %add61 to float
  %73 = load ptr, ptr %psi147, align 8, !tbaa !9
  %imag63 = getelementptr inbounds %struct.scomplex, ptr %73, i32 0, i32 1
  store float %conv62, ptr %imag63, align 4, !tbaa !17
  %74 = load i64, ptr %incx, align 8, !tbaa !4
  %75 = load ptr, ptr %chi146, align 8, !tbaa !9
  %add.ptr64 = getelementptr inbounds %struct.dcomplex, ptr %75, i64 %74
  store ptr %add.ptr64, ptr %chi146, align 8, !tbaa !9
  %76 = load i64, ptr %incy, align 8, !tbaa !4
  %77 = load ptr, ptr %psi147, align 8, !tbaa !9
  %add.ptr65 = getelementptr inbounds %struct.scomplex, ptr %77, i64 %76
  store ptr %add.ptr65, ptr %psi147, align 8, !tbaa !9
  br label %for.inc66

for.inc66:                                        ; preds = %for.body51
  %78 = load i64, ptr %i, align 8, !tbaa !4
  %inc67 = add nsw i64 %78, 1
  store i64 %inc67, ptr %i, align 8, !tbaa !4
  br label %for.cond48

for.end68:                                        ; preds = %for.cond48
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi147) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi146) #3
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %79 = load i64, ptr %j, align 8, !tbaa !4
  %inc70 = add nsw i64 %79, 1
  store i64 %inc70, ptr %j, align 8, !tbaa !4
  br label %for.cond34

for.end71:                                        ; preds = %for.cond34
  br label %if.end

if.end:                                           ; preds = %for.end71, %for.end33
  br label %if.end192

if.else72:                                        ; preds = %land.lhs.true, %entry
  %80 = load i64, ptr %incx, align 8, !tbaa !4
  %cmp73 = icmp eq i64 %80, 1
  br i1 %cmp73, label %land.lhs.true75, label %if.else136

land.lhs.true75:                                  ; preds = %if.else72
  %81 = load i64, ptr %incy, align 8, !tbaa !4
  %cmp76 = icmp eq i64 %81, 1
  br i1 %cmp76, label %if.then78, label %if.else136

if.then78:                                        ; preds = %land.lhs.true75
  %82 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %82, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc133, %if.then78
  %83 = load i64, ptr %j, align 8, !tbaa !4
  %84 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp80 = icmp slt i64 %83, %84
  br i1 %cmp80, label %for.body82, label %for.end135

for.body82:                                       ; preds = %for.cond79
  %85 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %86 = load i64, ptr %j, align 8, !tbaa !4
  %87 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul83 = mul nsw i64 %86, %87
  %add.ptr84 = getelementptr inbounds %struct.dcomplex, ptr %85, i64 %mul83
  %88 = load i64, ptr %incx, align 8, !tbaa !4
  %mul85 = mul nsw i64 0, %88
  %add.ptr86 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr84, i64 %mul85
  store ptr %add.ptr86, ptr %x1, align 8, !tbaa !9
  %89 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %90 = load i64, ptr %j, align 8, !tbaa !4
  %91 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul87 = mul nsw i64 %90, %91
  %add.ptr88 = getelementptr inbounds %struct.scomplex, ptr %89, i64 %mul87
  %92 = load i64, ptr %incy, align 8, !tbaa !4
  %mul89 = mul nsw i64 0, %92
  %add.ptr90 = getelementptr inbounds %struct.scomplex, ptr %add.ptr88, i64 %mul89
  store ptr %add.ptr90, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi191) #3
  %93 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %93, ptr %chi191, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi192) #3
  %94 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %94, ptr %psi192, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc130, %for.body82
  %95 = load i64, ptr %i, align 8, !tbaa !4
  %96 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp94 = icmp slt i64 %95, %96
  br i1 %cmp94, label %for.body96, label %for.end132

for.body96:                                       ; preds = %for.cond93
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r) #3
  %97 = load ptr, ptr %chi191, align 8, !tbaa !9
  %98 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds %struct.dcomplex, ptr %97, i64 %98
  %real98 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx97, i32 0, i32 0
  %99 = load double, ptr %real98, align 8, !tbaa !18
  %100 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real99 = getelementptr inbounds %struct.scomplex, ptr %100, i32 0, i32 0
  %101 = load float, ptr %real99, align 4, !tbaa !15
  %102 = load ptr, ptr %psi192, align 8, !tbaa !9
  %103 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds %struct.scomplex, ptr %102, i64 %103
  %real101 = getelementptr inbounds %struct.scomplex, ptr %arrayidx100, i32 0, i32 0
  %104 = load float, ptr %real101, align 4, !tbaa !15
  %mul102 = fmul float %101, %104
  %conv103 = fpext float %mul102 to double
  %add104 = fadd double %99, %conv103
  %105 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag105 = getelementptr inbounds %struct.scomplex, ptr %105, i32 0, i32 1
  %106 = load float, ptr %imag105, align 4, !tbaa !17
  %107 = load ptr, ptr %psi192, align 8, !tbaa !9
  %108 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds %struct.scomplex, ptr %107, i64 %108
  %imag107 = getelementptr inbounds %struct.scomplex, ptr %arrayidx106, i32 0, i32 1
  %109 = load float, ptr %imag107, align 4, !tbaa !17
  %mul108 = fmul float %106, %109
  %conv109 = fpext float %mul108 to double
  %sub = fsub double %add104, %conv109
  %conv110 = fptrunc double %sub to float
  store float %conv110, ptr %yt_r, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i) #3
  %110 = load ptr, ptr %chi191, align 8, !tbaa !9
  %111 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds %struct.dcomplex, ptr %110, i64 %111
  %imag112 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx111, i32 0, i32 1
  %112 = load double, ptr %imag112, align 8, !tbaa !20
  %113 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag113 = getelementptr inbounds %struct.scomplex, ptr %113, i32 0, i32 1
  %114 = load float, ptr %imag113, align 4, !tbaa !17
  %115 = load ptr, ptr %psi192, align 8, !tbaa !9
  %116 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds %struct.scomplex, ptr %115, i64 %116
  %real115 = getelementptr inbounds %struct.scomplex, ptr %arrayidx114, i32 0, i32 0
  %117 = load float, ptr %real115, align 4, !tbaa !15
  %mul116 = fmul float %114, %117
  %conv117 = fpext float %mul116 to double
  %add118 = fadd double %112, %conv117
  %118 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real119 = getelementptr inbounds %struct.scomplex, ptr %118, i32 0, i32 0
  %119 = load float, ptr %real119, align 4, !tbaa !15
  %120 = load ptr, ptr %psi192, align 8, !tbaa !9
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx120 = getelementptr inbounds %struct.scomplex, ptr %120, i64 %121
  %imag121 = getelementptr inbounds %struct.scomplex, ptr %arrayidx120, i32 0, i32 1
  %122 = load float, ptr %imag121, align 4, !tbaa !17
  %mul122 = fmul float %119, %122
  %conv123 = fpext float %mul122 to double
  %add124 = fadd double %add118, %conv123
  %conv125 = fptrunc double %add124 to float
  store float %conv125, ptr %yt_i, align 4, !tbaa !11
  %123 = load float, ptr %yt_r, align 4, !tbaa !11
  %124 = load ptr, ptr %psi192, align 8, !tbaa !9
  %125 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx126 = getelementptr inbounds %struct.scomplex, ptr %124, i64 %125
  %real127 = getelementptr inbounds %struct.scomplex, ptr %arrayidx126, i32 0, i32 0
  store float %123, ptr %real127, align 4, !tbaa !15
  %126 = load float, ptr %yt_i, align 4, !tbaa !11
  %127 = load ptr, ptr %psi192, align 8, !tbaa !9
  %128 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx128 = getelementptr inbounds %struct.scomplex, ptr %127, i64 %128
  %imag129 = getelementptr inbounds %struct.scomplex, ptr %arrayidx128, i32 0, i32 1
  store float %126, ptr %imag129, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r) #3
  br label %for.inc130

for.inc130:                                       ; preds = %for.body96
  %129 = load i64, ptr %i, align 8, !tbaa !4
  %inc131 = add nsw i64 %129, 1
  store i64 %inc131, ptr %i, align 8, !tbaa !4
  br label %for.cond93

for.end132:                                       ; preds = %for.cond93
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi192) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi191) #3
  br label %for.inc133

for.inc133:                                       ; preds = %for.end132
  %130 = load i64, ptr %j, align 8, !tbaa !4
  %inc134 = add nsw i64 %130, 1
  store i64 %inc134, ptr %j, align 8, !tbaa !4
  br label %for.cond79

for.end135:                                       ; preds = %for.cond79
  br label %if.end191

if.else136:                                       ; preds = %land.lhs.true75, %if.else72
  %131 = load i64, ptr %n_elem_max, align 8, !tbaa !4
  store i64 %131, ptr %n_elem, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond137

for.cond137:                                      ; preds = %for.inc188, %if.else136
  %132 = load i64, ptr %j, align 8, !tbaa !4
  %133 = load i64, ptr %n_iter, align 8, !tbaa !4
  %cmp138 = icmp slt i64 %132, %133
  br i1 %cmp138, label %for.body140, label %for.end190

for.body140:                                      ; preds = %for.cond137
  %134 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %135 = load i64, ptr %j, align 8, !tbaa !4
  %136 = load i64, ptr %ldx, align 8, !tbaa !4
  %mul141 = mul nsw i64 %135, %136
  %add.ptr142 = getelementptr inbounds %struct.dcomplex, ptr %134, i64 %mul141
  %137 = load i64, ptr %incx, align 8, !tbaa !4
  %mul143 = mul nsw i64 0, %137
  %add.ptr144 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr142, i64 %mul143
  store ptr %add.ptr144, ptr %x1, align 8, !tbaa !9
  %138 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %139 = load i64, ptr %j, align 8, !tbaa !4
  %140 = load i64, ptr %ldy, align 8, !tbaa !4
  %mul145 = mul nsw i64 %139, %140
  %add.ptr146 = getelementptr inbounds %struct.scomplex, ptr %138, i64 %mul145
  %141 = load i64, ptr %incy, align 8, !tbaa !4
  %mul147 = mul nsw i64 0, %141
  %add.ptr148 = getelementptr inbounds %struct.scomplex, ptr %add.ptr146, i64 %mul147
  store ptr %add.ptr148, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1149) #3
  %142 = load ptr, ptr %x1, align 8, !tbaa !9
  store ptr %142, ptr %chi1149, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi1150) #3
  %143 = load ptr, ptr %y1, align 8, !tbaa !9
  store ptr %143, ptr %psi1150, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc185, %for.body140
  %144 = load i64, ptr %i, align 8, !tbaa !4
  %145 = load i64, ptr %n_elem, align 8, !tbaa !4
  %cmp152 = icmp slt i64 %144, %145
  br i1 %cmp152, label %for.body154, label %for.end187

for.body154:                                      ; preds = %for.cond151
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_r155) #3
  %146 = load ptr, ptr %chi1149, align 8, !tbaa !9
  %real156 = getelementptr inbounds %struct.dcomplex, ptr %146, i32 0, i32 0
  %147 = load double, ptr %real156, align 8, !tbaa !18
  %148 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real157 = getelementptr inbounds %struct.scomplex, ptr %148, i32 0, i32 0
  %149 = load float, ptr %real157, align 4, !tbaa !15
  %150 = load ptr, ptr %psi1150, align 8, !tbaa !9
  %real158 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 0
  %151 = load float, ptr %real158, align 4, !tbaa !15
  %mul159 = fmul float %149, %151
  %conv160 = fpext float %mul159 to double
  %add161 = fadd double %147, %conv160
  %152 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag162 = getelementptr inbounds %struct.scomplex, ptr %152, i32 0, i32 1
  %153 = load float, ptr %imag162, align 4, !tbaa !17
  %154 = load ptr, ptr %psi1150, align 8, !tbaa !9
  %imag163 = getelementptr inbounds %struct.scomplex, ptr %154, i32 0, i32 1
  %155 = load float, ptr %imag163, align 4, !tbaa !17
  %mul164 = fmul float %153, %155
  %conv165 = fpext float %mul164 to double
  %sub166 = fsub double %add161, %conv165
  %conv167 = fptrunc double %sub166 to float
  store float %conv167, ptr %yt_r155, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %yt_i168) #3
  %156 = load ptr, ptr %chi1149, align 8, !tbaa !9
  %imag169 = getelementptr inbounds %struct.dcomplex, ptr %156, i32 0, i32 1
  %157 = load double, ptr %imag169, align 8, !tbaa !20
  %158 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag170 = getelementptr inbounds %struct.scomplex, ptr %158, i32 0, i32 1
  %159 = load float, ptr %imag170, align 4, !tbaa !17
  %160 = load ptr, ptr %psi1150, align 8, !tbaa !9
  %real171 = getelementptr inbounds %struct.scomplex, ptr %160, i32 0, i32 0
  %161 = load float, ptr %real171, align 4, !tbaa !15
  %mul172 = fmul float %159, %161
  %conv173 = fpext float %mul172 to double
  %add174 = fadd double %157, %conv173
  %162 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real175 = getelementptr inbounds %struct.scomplex, ptr %162, i32 0, i32 0
  %163 = load float, ptr %real175, align 4, !tbaa !15
  %164 = load ptr, ptr %psi1150, align 8, !tbaa !9
  %imag176 = getelementptr inbounds %struct.scomplex, ptr %164, i32 0, i32 1
  %165 = load float, ptr %imag176, align 4, !tbaa !17
  %mul177 = fmul float %163, %165
  %conv178 = fpext float %mul177 to double
  %add179 = fadd double %add174, %conv178
  %conv180 = fptrunc double %add179 to float
  store float %conv180, ptr %yt_i168, align 4, !tbaa !11
  %166 = load float, ptr %yt_r155, align 4, !tbaa !11
  %167 = load ptr, ptr %psi1150, align 8, !tbaa !9
  %real181 = getelementptr inbounds %struct.scomplex, ptr %167, i32 0, i32 0
  store float %166, ptr %real181, align 4, !tbaa !15
  %168 = load float, ptr %yt_i168, align 4, !tbaa !11
  %169 = load ptr, ptr %psi1150, align 8, !tbaa !9
  %imag182 = getelementptr inbounds %struct.scomplex, ptr %169, i32 0, i32 1
  store float %168, ptr %imag182, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_i168) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yt_r155) #3
  %170 = load i64, ptr %incx, align 8, !tbaa !4
  %171 = load ptr, ptr %chi1149, align 8, !tbaa !9
  %add.ptr183 = getelementptr inbounds %struct.dcomplex, ptr %171, i64 %170
  store ptr %add.ptr183, ptr %chi1149, align 8, !tbaa !9
  %172 = load i64, ptr %incy, align 8, !tbaa !4
  %173 = load ptr, ptr %psi1150, align 8, !tbaa !9
  %add.ptr184 = getelementptr inbounds %struct.scomplex, ptr %173, i64 %172
  store ptr %add.ptr184, ptr %psi1150, align 8, !tbaa !9
  br label %for.inc185

for.inc185:                                       ; preds = %for.body154
  %174 = load i64, ptr %i, align 8, !tbaa !4
  %inc186 = add nsw i64 %174, 1
  store i64 %inc186, ptr %i, align 8, !tbaa !4
  br label %for.cond151

for.end187:                                       ; preds = %for.cond151
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi1150) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1149) #3
  br label %for.inc188

for.inc188:                                       ; preds = %for.end187
  %175 = load i64, ptr %j, align 8, !tbaa !4
  %inc189 = add nsw i64 %175, 1
  store i64 %inc189, ptr %j, align 8, !tbaa !4
  br label %for.cond137

for.end190:                                       ; preds = %for.cond137
  br label %if.end191

if.end191:                                        ; preds = %for.end190, %for.end135
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_shift) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_elem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_iter) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %uplox_eff) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_unstored_subpart(i64 noundef %diagoff, i32 noundef %trans, i32 noundef %uplo, i64 noundef %m, i64 noundef %n) #0 {
entry:
  %diagoff.addr = alloca i64, align 8
  %trans.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %diagoff, ptr %diagoff.addr, align 8, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_upper(i32 noundef %0)
  br i1 %call, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %2 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_is_strictly_below_diag(i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4)
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_lower(i32 noundef %5)
  br i1 %call2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %7 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %8 = load i64, ptr %m.addr, align 8, !tbaa !4
  %9 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call3 = call zeroext i1 @bli_is_strictly_above_diag(i64 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %call3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %11 = phi i1 [ true, %land.lhs.true ], [ %10, %land.end ]
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_unit_diag(i32 noundef %diag) #0 {
entry:
  %diag.addr = alloca i32, align 4
  store i32 %diag, ptr %diag.addr, align 4, !tbaa !8
  %0 = load i32, ptr %diag.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 256
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @bli_shift_diag_offset_to_shrink_uplo(i32 noundef %uplo, ptr noundef %diagoff) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %diagoff.addr = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  store ptr %diagoff, ptr %diagoff.addr, align 8, !tbaa !9
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_upper(i32 noundef %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %diagoff.addr, align 8, !tbaa !9
  %2 = load i64, ptr %1, align 8, !tbaa !4
  %add = add nsw i64 %2, 1
  store i64 %add, ptr %1, align 8, !tbaa !4
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call1 = call zeroext i1 @bli_is_lower(i32 noundef %3)
  br i1 %call1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %diagoff.addr, align 8, !tbaa !9
  %5 = load i64, ptr %4, align 8, !tbaa !4
  %sub = sub nsw i64 %5, 1
  store i64 %sub, ptr %4, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_stored_subpart(i64 noundef %diagoff, i32 noundef %trans, i32 noundef %uplo, i64 noundef %m, i64 noundef %n) #0 {
entry:
  %diagoff.addr = alloca i64, align 8
  %trans.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %diagoff, ptr %diagoff.addr, align 8, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !8
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_upper(i32 noundef %0)
  br i1 %call, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %2 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @bli_is_strictly_above_diag(i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4)
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call2 = call zeroext i1 @bli_is_lower(i32 noundef %5)
  br i1 %call2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %7 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %8 = load i64, ptr %m.addr, align 8, !tbaa !4
  %9 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call3 = call zeroext i1 @bli_is_strictly_below_diag(i64 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %call3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %11 = phi i1 [ true, %land.lhs.true ], [ %10, %land.end ]
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_does_trans(i32 noundef %trans) #0 {
entry:
  %trans.addr = alloca i32, align 4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !8
  %0 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %and = and i32 %0, 8
  %cmp = icmp eq i32 %and, 8
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @bli_swap_incs(ptr noundef %inc1, ptr noundef %inc2) #0 {
entry:
  %inc1.addr = alloca ptr, align 8
  %inc2.addr = alloca ptr, align 8
  %temp = alloca i64, align 8
  store ptr %inc1, ptr %inc1.addr, align 8, !tbaa !9
  store ptr %inc2, ptr %inc2.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #3
  %0 = load ptr, ptr %inc1.addr, align 8, !tbaa !9
  %1 = load i64, ptr %0, align 8, !tbaa !4
  store i64 %1, ptr %temp, align 8, !tbaa !4
  %2 = load ptr, ptr %inc2.addr, align 8, !tbaa !9
  %3 = load i64, ptr %2, align 8, !tbaa !4
  %4 = load ptr, ptr %inc1.addr, align 8, !tbaa !9
  store i64 %3, ptr %4, align 8, !tbaa !4
  %5 = load i64, ptr %temp, align 8, !tbaa !4
  %6 = load ptr, ptr %inc2.addr, align 8, !tbaa !9
  store i64 %5, ptr %6, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_toggle_uplo(ptr noundef %uplo) #0 {
entry:
  %uplo.addr = alloca ptr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %uplo.addr, align 8, !tbaa !9
  %1 = load i32, ptr %0, align 4, !tbaa !8
  %call = call i32 @bli_uplo_toggled(i32 noundef %1)
  %2 = load ptr, ptr %uplo.addr, align 8, !tbaa !9
  store i32 %call, ptr %2, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_negate_diag_offset(ptr noundef %diagoff) #0 {
entry:
  %diagoff.addr = alloca ptr, align 8
  store ptr %diagoff, ptr %diagoff.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %diagoff.addr, align 8, !tbaa !9
  %1 = load i64, ptr %0, align 8, !tbaa !4
  %sub = sub nsw i64 0, %1
  %2 = load ptr, ptr %diagoff.addr, align 8, !tbaa !9
  store i64 %sub, ptr %2, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_row_tilted(i64 noundef %m, i64 noundef %n, i64 noundef %rs, i64 noundef %cs) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %rs.addr = alloca i64, align 8
  %cs.addr = alloca i64, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %rs, ptr %rs.addr, align 8, !tbaa !4
  store i64 %cs, ptr %cs.addr, align 8, !tbaa !4
  %0 = load i64, ptr %cs.addr, align 8, !tbaa !4
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %cs.addr, align 8, !tbaa !4
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %cs.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  %3 = load i64, ptr %rs.addr, align 8, !tbaa !4
  %cmp1 = icmp sle i64 %3, 0
  br i1 %cmp1, label %cond.true2, label %cond.false4

cond.true2:                                       ; preds = %cond.end
  %4 = load i64, ptr %rs.addr, align 8, !tbaa !4
  %sub3 = sub nsw i64 0, %4
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  %5 = load i64, ptr %rs.addr, align 8, !tbaa !4
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi i64 [ %sub3, %cond.true2 ], [ %5, %cond.false4 ]
  %cmp7 = icmp eq i64 %cond, %cond6
  br i1 %cmp7, label %cond.true8, label %cond.false10

cond.true8:                                       ; preds = %cond.end5
  %6 = load i64, ptr %n.addr, align 8, !tbaa !4
  %7 = load i64, ptr %m.addr, align 8, !tbaa !4
  %cmp9 = icmp slt i64 %6, %7
  %conv = zext i1 %cmp9 to i32
  br label %cond.end27

cond.false10:                                     ; preds = %cond.end5
  %8 = load i64, ptr %cs.addr, align 8, !tbaa !4
  %cmp11 = icmp sle i64 %8, 0
  br i1 %cmp11, label %cond.true13, label %cond.false15

cond.true13:                                      ; preds = %cond.false10
  %9 = load i64, ptr %cs.addr, align 8, !tbaa !4
  %sub14 = sub nsw i64 0, %9
  br label %cond.end16

cond.false15:                                     ; preds = %cond.false10
  %10 = load i64, ptr %cs.addr, align 8, !tbaa !4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.true13
  %cond17 = phi i64 [ %sub14, %cond.true13 ], [ %10, %cond.false15 ]
  %11 = load i64, ptr %rs.addr, align 8, !tbaa !4
  %cmp18 = icmp sle i64 %11, 0
  br i1 %cmp18, label %cond.true20, label %cond.false22

cond.true20:                                      ; preds = %cond.end16
  %12 = load i64, ptr %rs.addr, align 8, !tbaa !4
  %sub21 = sub nsw i64 0, %12
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end16
  %13 = load i64, ptr %rs.addr, align 8, !tbaa !4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true20
  %cond24 = phi i64 [ %sub21, %cond.true20 ], [ %13, %cond.false22 ]
  %cmp25 = icmp slt i64 %cond17, %cond24
  %conv26 = zext i1 %cmp25 to i32
  br label %cond.end27

cond.end27:                                       ; preds = %cond.end23, %cond.true8
  %cond28 = phi i32 [ %conv, %cond.true8 ], [ %conv26, %cond.end23 ]
  %tobool = icmp ne i32 %cond28, 0
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal void @bli_swap_dims(ptr noundef %dim1, ptr noundef %dim2) #0 {
entry:
  %dim1.addr = alloca ptr, align 8
  %dim2.addr = alloca ptr, align 8
  %temp = alloca i64, align 8
  store ptr %dim1, ptr %dim1.addr, align 8, !tbaa !9
  store ptr %dim2, ptr %dim2.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #3
  %0 = load ptr, ptr %dim1.addr, align 8, !tbaa !9
  %1 = load i64, ptr %0, align 8, !tbaa !4
  store i64 %1, ptr %temp, align 8, !tbaa !4
  %2 = load ptr, ptr %dim2.addr, align 8, !tbaa !9
  %3 = load i64, ptr %2, align 8, !tbaa !4
  %4 = load ptr, ptr %dim1.addr, align 8, !tbaa !9
  store i64 %3, ptr %4, align 8, !tbaa !4
  %5 = load i64, ptr %temp, align 8, !tbaa !4
  %6 = load ptr, ptr %dim2.addr, align 8, !tbaa !9
  store i64 %5, ptr %6, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_strictly_below_diag(i64 noundef %diagoff, i32 noundef %trans, i64 noundef %m, i64 noundef %n) #0 {
entry:
  %diagoff.addr = alloca i64, align 8
  %trans.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %diagoff, ptr %diagoff.addr, align 8, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  %0 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %call = call zeroext i1 @bli_does_trans(i32 noundef %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %m.addr, align 8, !tbaa !4
  %2 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %cmp = icmp sle i64 %1, %2
  %conv = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %n.addr, align 8, !tbaa !4
  %4 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %cmp1 = icmp sle i64 %3, %4
  %conv2 = zext i1 %cmp1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_strictly_above_diag(i64 noundef %diagoff, i32 noundef %trans, i64 noundef %m, i64 noundef %n) #0 {
entry:
  %diagoff.addr = alloca i64, align 8
  %trans.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %diagoff, ptr %diagoff.addr, align 8, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  %0 = load i32, ptr %trans.addr, align 4, !tbaa !8
  %call = call zeroext i1 @bli_does_trans(i32 noundef %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %2 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %sub = sub nsw i64 0, %2
  %cmp = icmp sle i64 %1, %sub
  %conv = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %m.addr, align 8, !tbaa !4
  %4 = load i64, ptr %diagoff.addr, align 8, !tbaa !4
  %sub1 = sub nsw i64 0, %4
  %cmp2 = icmp sle i64 %3, %sub1
  %conv3 = zext i1 %cmp2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv3, %cond.false ]
  %tobool = icmp ne i32 %cond, 0
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_uplo_toggled(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_upper_or_lower(i32 noundef %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %xor = xor i32 %1, 128
  %xor1 = xor i32 %xor, 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor1, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_upper_or_lower(i32 noundef %uplo) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !8
  %0 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call = call zeroext i1 @bli_is_upper(i32 noundef %0)
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %uplo.addr, align 4, !tbaa !8
  %call1 = call zeroext i1 @bli_is_lower(i32 noundef %1)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1v_kers(i32 noundef %ker_id, ptr noundef %cntx) #0 {
entry:
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_l1v_kers_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %1 = load ptr, ptr %funcs, align 8, !tbaa !9
  %2 = load i32, ptr %ker_id.addr, align 4, !tbaa !8
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
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !8
  store ptr %func, ptr %func.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !9
  %ptr = getelementptr inbounds %struct.func_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !8
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
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!16, !12, i64 0}
!16 = !{!"", !12, i64 0, !12, i64 4}
!17 = !{!16, !12, i64 4}
!18 = !{!19, !14, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 8}
!20 = !{!19, !14, i64 8}

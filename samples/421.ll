; ModuleID = 'samples/421.bc'
source_filename = "ref_kernels/3/bb/bli_gemmtrsmbb_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_s = type { ptr, [2 x i64], [2 x i64], i64, i32, i32, i64, ptr, i64, i64, i64, %struct.dcomplex, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.dcomplex = type { double, double }
%struct.constdata_s = type { float, double, %struct.scomplex, %struct.dcomplex, i64 }
%struct.scomplex = type { float, float }
%struct.blksz_s = type { [4 x i64], [4 x i64] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [5 x %struct.func_s], [5 x %struct.func_s], [5 x %struct.mbool_s], [3 x %struct.blksz_s], [11 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [14 x %struct.func_s], [32 x %struct.func_s], [32 x %struct.func_s], i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.func_s = type { [4 x ptr] }

@BLIS_MINUS_ONE = external global %struct.obj_s, align 8

; Function Attrs: nounwind uwtable
define hidden void @bli_sgemmtrsmbb_l_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 0, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 0, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 0, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 0, i32 noundef 3, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_sbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i64 @bli_cntx_get_blksz_def_dt(i32 noundef %dt, i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  %bs_dt = alloca i64, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !10
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #2
  %0 = load i32, ptr %bs_id.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_blksz(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %blksz, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_dt) #2
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %blksz, align 8, !tbaa !8
  %call1 = call i64 @bli_blksz_get_def(i32 noundef %2, ptr noundef %3)
  store i64 %call1, ptr %bs_dt, align 8, !tbaa !4
  %4 = load i64, ptr %bs_dt, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_dt) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_cntx_get_blksz_max_dt(i32 noundef %dt, i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  %bs_dt = alloca i64, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !10
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #2
  %0 = load i32, ptr %bs_id.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_blksz(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %blksz, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_dt) #2
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %blksz, align 8, !tbaa !8
  %call1 = call i64 @bli_blksz_get_max(i32 noundef %2, ptr noundef %3)
  store i64 %call1, ptr %bs_dt, align 8, !tbaa !4
  %4 = load i64, ptr %bs_dt, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_dt) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #2
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer_for_const(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #2
  %0 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !8
  %call = call ptr @bli_obj_buffer(ptr noundef %1)
  %s = getelementptr inbounds %struct.constdata_s, ptr %call, i32 0, i32 0
  store ptr %s, ptr %p, align 8, !tbaa !8
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !8
  %call3 = call ptr @bli_obj_buffer(ptr noundef %3)
  %d = getelementptr inbounds %struct.constdata_s, ptr %call3, i32 0, i32 1
  store ptr %d, ptr %p, align 8, !tbaa !8
  br label %if.end15

if.else4:                                         ; preds = %if.else
  %4 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %cmp5 = icmp eq i32 %4, 1
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !8
  %call7 = call ptr @bli_obj_buffer(ptr noundef %5)
  %c = getelementptr inbounds %struct.constdata_s, ptr %call7, i32 0, i32 2
  store ptr %c, ptr %p, align 8, !tbaa !8
  br label %if.end14

if.else8:                                         ; preds = %if.else4
  %6 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %cmp9 = icmp eq i32 %6, 3
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %7 = load ptr, ptr %obj.addr, align 8, !tbaa !8
  %call11 = call ptr @bli_obj_buffer(ptr noundef %7)
  %z = getelementptr inbounds %struct.constdata_s, ptr %call11, i32 0, i32 3
  store ptr %z, ptr %p, align 8, !tbaa !8
  br label %if.end

if.else12:                                        ; preds = %if.else8
  %8 = load ptr, ptr %obj.addr, align 8, !tbaa !8
  %call13 = call ptr @bli_obj_buffer(ptr noundef %8)
  %i = getelementptr inbounds %struct.constdata_s, ptr %call13, i32 0, i32 4
  store ptr %i, ptr %p, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %9 = load ptr, ptr %p, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #2
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef %dt, i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !10
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #2
  %0 = load i32, ptr %ukr_id.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_l3_nat_ukrs(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !8
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %func, align 8, !tbaa !8
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #2
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define internal void @bli_sbcastbbs_mxn(i64 noundef %m, i64 noundef %n, ptr noalias noundef %y, i64 noundef %incy, i64 noundef %ldy) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %ldy.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %ds_y = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %yi = alloca ptr, align 8
  %j = alloca i64, align 8
  %yij = alloca ptr, align 8
  %p = alloca i64, align 8
  %yijd = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !4
  store i64 %ldy, ptr %ldy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #2
  %0 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  store i64 %0, ptr %d, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds_y) #2
  store i64 1, ptr %ds_y, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #2
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !4
  %2 = load i64, ptr %m.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #2
  br label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #2
  %3 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %4 = load i64, ptr %i, align 8, !tbaa !4
  %5 = load i64, ptr %incy.addr, align 8, !tbaa !4
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds float, ptr %3, i64 %mul
  store ptr %add.ptr, ptr %yi, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #2
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc13, %for.body
  %6 = load i64, ptr %j, align 8, !tbaa !4
  %7 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp2 = icmp slt i64 %6, %7
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #2
  br label %for.end15

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %yij) #2
  %8 = load ptr, ptr %yi, align 8, !tbaa !8
  %9 = load i64, ptr %j, align 8, !tbaa !4
  %10 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  %mul5 = mul nsw i64 %9, %10
  %add.ptr6 = getelementptr inbounds float, ptr %8, i64 %mul5
  store ptr %add.ptr6, ptr %yij, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #2
  store i64 1, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %11 = load i64, ptr %p, align 8, !tbaa !4
  %12 = load i64, ptr %d, align 8, !tbaa !4
  %cmp8 = icmp slt i64 %11, %12
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #2
  br label %for.end

for.body10:                                       ; preds = %for.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %yijd) #2
  %13 = load ptr, ptr %yij, align 8, !tbaa !8
  %14 = load i64, ptr %p, align 8, !tbaa !4
  %mul11 = mul nsw i64 %14, 1
  %add.ptr12 = getelementptr inbounds float, ptr %13, i64 %mul11
  store ptr %add.ptr12, ptr %yijd, align 8, !tbaa !8
  %15 = load ptr, ptr %yij, align 8, !tbaa !8
  %16 = load float, ptr %15, align 4, !tbaa !11
  %17 = load ptr, ptr %yijd, align 8, !tbaa !8
  store float %16, ptr %17, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %yijd) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %18 = load i64, ptr %p, align 8, !tbaa !4
  %inc = add nsw i64 %18, 1
  store i64 %inc, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.end:                                          ; preds = %for.cond.cleanup9
  call void @llvm.lifetime.end.p0(i64 8, ptr %yij) #2
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %19 = load i64, ptr %j, align 8, !tbaa !4
  %inc14 = add nsw i64 %19, 1
  store i64 %inc14, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.end15:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #2
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %20 = load i64, ptr %i, align 8, !tbaa !4
  %inc17 = add nsw i64 %20, 1
  store i64 %inc17, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds_y) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_dgemmtrsmbb_l_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 2, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 2, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 2, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 2, i32 noundef 3, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_dbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_dbcastbbs_mxn(i64 noundef %m, i64 noundef %n, ptr noalias noundef %y, i64 noundef %incy, i64 noundef %ldy) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %ldy.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %ds_y = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %yi = alloca ptr, align 8
  %j = alloca i64, align 8
  %yij = alloca ptr, align 8
  %p = alloca i64, align 8
  %yijd = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !4
  store i64 %ldy, ptr %ldy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #2
  %0 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  store i64 %0, ptr %d, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds_y) #2
  store i64 1, ptr %ds_y, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #2
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !4
  %2 = load i64, ptr %m.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #2
  br label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #2
  %3 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %4 = load i64, ptr %i, align 8, !tbaa !4
  %5 = load i64, ptr %incy.addr, align 8, !tbaa !4
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds double, ptr %3, i64 %mul
  store ptr %add.ptr, ptr %yi, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #2
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc13, %for.body
  %6 = load i64, ptr %j, align 8, !tbaa !4
  %7 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp2 = icmp slt i64 %6, %7
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #2
  br label %for.end15

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %yij) #2
  %8 = load ptr, ptr %yi, align 8, !tbaa !8
  %9 = load i64, ptr %j, align 8, !tbaa !4
  %10 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  %mul5 = mul nsw i64 %9, %10
  %add.ptr6 = getelementptr inbounds double, ptr %8, i64 %mul5
  store ptr %add.ptr6, ptr %yij, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #2
  store i64 1, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %11 = load i64, ptr %p, align 8, !tbaa !4
  %12 = load i64, ptr %d, align 8, !tbaa !4
  %cmp8 = icmp slt i64 %11, %12
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #2
  br label %for.end

for.body10:                                       ; preds = %for.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %yijd) #2
  %13 = load ptr, ptr %yij, align 8, !tbaa !8
  %14 = load i64, ptr %p, align 8, !tbaa !4
  %mul11 = mul nsw i64 %14, 1
  %add.ptr12 = getelementptr inbounds double, ptr %13, i64 %mul11
  store ptr %add.ptr12, ptr %yijd, align 8, !tbaa !8
  %15 = load ptr, ptr %yij, align 8, !tbaa !8
  %16 = load double, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %yijd, align 8, !tbaa !8
  store double %16, ptr %17, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr %yijd) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %18 = load i64, ptr %p, align 8, !tbaa !4
  %inc = add nsw i64 %18, 1
  store i64 %inc, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.end:                                          ; preds = %for.cond.cleanup9
  call void @llvm.lifetime.end.p0(i64 8, ptr %yij) #2
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %19 = load i64, ptr %j, align 8, !tbaa !4
  %inc14 = add nsw i64 %19, 1
  store i64 %inc14, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.end15:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #2
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %20 = load i64, ptr %i, align 8, !tbaa !4
  %inc17 = add nsw i64 %20, 1
  store i64 %inc17, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end18:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds_y) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cgemmtrsmbb_l_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 1, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 1, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 1, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 1, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 1, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 1, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 1, i32 noundef 3, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_cbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_cbcastbbs_mxn(i64 noundef %m, i64 noundef %n, ptr noalias noundef %y, i64 noundef %incy, i64 noundef %ldy) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %ldy.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %ds_y = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %yi = alloca ptr, align 8
  %j = alloca i64, align 8
  %yij = alloca ptr, align 8
  %p = alloca i64, align 8
  %yijd = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !4
  store i64 %ldy, ptr %ldy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #2
  %0 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  store i64 %0, ptr %d, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds_y) #2
  store i64 1, ptr %ds_y, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #2
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !4
  %2 = load i64, ptr %m.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #2
  br label %for.end20

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #2
  %3 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %4 = load i64, ptr %i, align 8, !tbaa !4
  %5 = load i64, ptr %incy.addr, align 8, !tbaa !4
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %3, i64 %mul
  store ptr %add.ptr, ptr %yi, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #2
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %6 = load i64, ptr %j, align 8, !tbaa !4
  %7 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp2 = icmp slt i64 %6, %7
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #2
  br label %for.end17

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %yij) #2
  %8 = load ptr, ptr %yi, align 8, !tbaa !8
  %9 = load i64, ptr %j, align 8, !tbaa !4
  %10 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  %mul5 = mul nsw i64 %9, %10
  %add.ptr6 = getelementptr inbounds %struct.scomplex, ptr %8, i64 %mul5
  store ptr %add.ptr6, ptr %yij, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #2
  store i64 1, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %11 = load i64, ptr %p, align 8, !tbaa !4
  %12 = load i64, ptr %d, align 8, !tbaa !4
  %cmp8 = icmp slt i64 %11, %12
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #2
  br label %for.end

for.body10:                                       ; preds = %for.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %yijd) #2
  %13 = load ptr, ptr %yij, align 8, !tbaa !8
  %14 = load i64, ptr %p, align 8, !tbaa !4
  %mul11 = mul nsw i64 %14, 1
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %13, i64 %mul11
  store ptr %add.ptr12, ptr %yijd, align 8, !tbaa !8
  %15 = load ptr, ptr %yij, align 8, !tbaa !8
  %real = getelementptr inbounds %struct.scomplex, ptr %15, i32 0, i32 0
  %16 = load float, ptr %real, align 4, !tbaa !15
  %17 = load ptr, ptr %yijd, align 8, !tbaa !8
  %real13 = getelementptr inbounds %struct.scomplex, ptr %17, i32 0, i32 0
  store float %16, ptr %real13, align 4, !tbaa !15
  %18 = load ptr, ptr %yij, align 8, !tbaa !8
  %imag = getelementptr inbounds %struct.scomplex, ptr %18, i32 0, i32 1
  %19 = load float, ptr %imag, align 4, !tbaa !17
  %20 = load ptr, ptr %yijd, align 8, !tbaa !8
  %imag14 = getelementptr inbounds %struct.scomplex, ptr %20, i32 0, i32 1
  store float %19, ptr %imag14, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %yijd) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %21 = load i64, ptr %p, align 8, !tbaa !4
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.end:                                          ; preds = %for.cond.cleanup9
  call void @llvm.lifetime.end.p0(i64 8, ptr %yij) #2
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %inc16 = add nsw i64 %22, 1
  store i64 %inc16, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.end17:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #2
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %23 = load i64, ptr %i, align 8, !tbaa !4
  %inc19 = add nsw i64 %23, 1
  store i64 %inc19, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end20:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds_y) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zgemmtrsmbb_l_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 3, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 3, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 3, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 3, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 3, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 3, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 3, i32 noundef 3, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_zbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_zbcastbbs_mxn(i64 noundef %m, i64 noundef %n, ptr noalias noundef %y, i64 noundef %incy, i64 noundef %ldy) #0 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %ldy.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %ds_y = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %yi = alloca ptr, align 8
  %j = alloca i64, align 8
  %yij = alloca ptr, align 8
  %p = alloca i64, align 8
  %yijd = alloca ptr, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !4
  store i64 %ldy, ptr %ldy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #2
  %0 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  store i64 %0, ptr %d, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds_y) #2
  store i64 1, ptr %ds_y, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #2
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !4
  %2 = load i64, ptr %m.addr, align 8, !tbaa !4
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #2
  br label %for.end20

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #2
  %3 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %4 = load i64, ptr %i, align 8, !tbaa !4
  %5 = load i64, ptr %incy.addr, align 8, !tbaa !4
  %mul = mul nsw i64 %4, %5
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %3, i64 %mul
  store ptr %add.ptr, ptr %yi, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #2
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %6 = load i64, ptr %j, align 8, !tbaa !4
  %7 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp2 = icmp slt i64 %6, %7
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #2
  br label %for.end17

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %yij) #2
  %8 = load ptr, ptr %yi, align 8, !tbaa !8
  %9 = load i64, ptr %j, align 8, !tbaa !4
  %10 = load i64, ptr %ldy.addr, align 8, !tbaa !4
  %mul5 = mul nsw i64 %9, %10
  %add.ptr6 = getelementptr inbounds %struct.dcomplex, ptr %8, i64 %mul5
  store ptr %add.ptr6, ptr %yij, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #2
  store i64 1, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body4
  %11 = load i64, ptr %p, align 8, !tbaa !4
  %12 = load i64, ptr %d, align 8, !tbaa !4
  %cmp8 = icmp slt i64 %11, %12
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #2
  br label %for.end

for.body10:                                       ; preds = %for.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %yijd) #2
  %13 = load ptr, ptr %yij, align 8, !tbaa !8
  %14 = load i64, ptr %p, align 8, !tbaa !4
  %mul11 = mul nsw i64 %14, 1
  %add.ptr12 = getelementptr inbounds %struct.dcomplex, ptr %13, i64 %mul11
  store ptr %add.ptr12, ptr %yijd, align 8, !tbaa !8
  %15 = load ptr, ptr %yij, align 8, !tbaa !8
  %real = getelementptr inbounds %struct.dcomplex, ptr %15, i32 0, i32 0
  %16 = load double, ptr %real, align 8, !tbaa !18
  %17 = load ptr, ptr %yijd, align 8, !tbaa !8
  %real13 = getelementptr inbounds %struct.dcomplex, ptr %17, i32 0, i32 0
  store double %16, ptr %real13, align 8, !tbaa !18
  %18 = load ptr, ptr %yij, align 8, !tbaa !8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %18, i32 0, i32 1
  %19 = load double, ptr %imag, align 8, !tbaa !20
  %20 = load ptr, ptr %yijd, align 8, !tbaa !8
  %imag14 = getelementptr inbounds %struct.dcomplex, ptr %20, i32 0, i32 1
  store double %19, ptr %imag14, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %yijd) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %21 = load i64, ptr %p, align 8, !tbaa !4
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %p, align 8, !tbaa !4
  br label %for.cond7

for.end:                                          ; preds = %for.cond.cleanup9
  call void @llvm.lifetime.end.p0(i64 8, ptr %yij) #2
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %22 = load i64, ptr %j, align 8, !tbaa !4
  %inc16 = add nsw i64 %22, 1
  store i64 %inc16, ptr %j, align 8, !tbaa !4
  br label %for.cond1

for.end17:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #2
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %23 = load i64, ptr %i, align 8, !tbaa !4
  %inc19 = add nsw i64 %23, 1
  store i64 %inc19, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end20:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds_y) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_sgemmtrsmbb_u_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 0, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 0, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 0, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 0, i32 noundef 4, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_sbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_dgemmtrsmbb_u_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 2, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 2, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 2, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 2, i32 noundef 4, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_dbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_cgemmtrsmbb_u_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 1, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 1, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 1, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 1, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 1, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 1, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 1, i32 noundef 4, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_cbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zgemmtrsmbb_u_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %k.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a1x.addr = alloca ptr, align 8
  %a11.addr = alloca ptr, align 8
  %bx1.addr = alloca ptr, align 8
  %b11.addr = alloca ptr, align 8
  %c11.addr = alloca ptr, align 8
  %rs_c.addr = alloca i64, align 8
  %cs_c.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %minus_one = alloca ptr, align 8
  %gemm_ukr = alloca ptr, align 8
  %trsm_ukr = alloca ptr, align 8
  store i64 %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !8
  store ptr %a1x, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %a11, ptr %a11.addr, align 8, !tbaa !8
  store ptr %bx1, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %b11, ptr %b11.addr, align 8, !tbaa !8
  store ptr %c11, ptr %c11.addr, align 8, !tbaa !8
  store i64 %rs_c, ptr %rs_c.addr, align 8, !tbaa !4
  store i64 %cs_c, ptr %cs_c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #2
  store i32 3, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 3, i32 noundef 1, ptr noundef %0)
  store i64 %call, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #2
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 3, i32 noundef 2, ptr noundef %1)
  store i64 %call1, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #2
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 3, i32 noundef 2, ptr noundef %2)
  store i64 %call2, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #2
  %3 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %3, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #2
  %4 = load i64, ptr %packnr, align 8, !tbaa !4
  %5 = load i64, ptr %nr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one) #2
  %call3 = call ptr @bli_obj_buffer_for_const(i32 noundef 3, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call3, ptr %minus_one, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gemm_ukr) #2
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 3, i32 noundef 0, ptr noundef %6)
  store ptr %call4, ptr %gemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %trsm_ukr) #2
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call5 = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 3, i32 noundef 4, ptr noundef %7)
  store ptr %call5, ptr %trsm_ukr, align 8, !tbaa !8
  %8 = load ptr, ptr %gemm_ukr, align 8, !tbaa !8
  %9 = load i64, ptr %mr, align 8, !tbaa !4
  %10 = load i64, ptr %nr, align 8, !tbaa !4
  %11 = load i64, ptr %k.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %minus_one, align 8, !tbaa !8
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %16 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %17 = load i64, ptr %rs_b, align 8, !tbaa !4
  %18 = load i64, ptr %cs_b, align 8, !tbaa !4
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %20 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %8(i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %trsm_ukr, align 8, !tbaa !8
  %22 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %25 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %26 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %28 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load i64, ptr %mr, align 8, !tbaa !4
  %30 = load i64, ptr %nr, align 8, !tbaa !4
  %31 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %32 = load i64, ptr %rs_b, align 8, !tbaa !4
  %33 = load i64, ptr %cs_b, align 8, !tbaa !4
  call void @bli_zbcastbbs_mxn(i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr %trsm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %gemm_ukr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_blksz(i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blkszs = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !10
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %blkszs) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_blkszs_buf(ptr noundef %0)
  store ptr %call, ptr %blkszs, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #2
  %1 = load ptr, ptr %blkszs, align 8, !tbaa !8
  %2 = load i32, ptr %bs_id.addr, align 4, !tbaa !10
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.blksz_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %blksz, align 8, !tbaa !8
  %3 = load ptr, ptr %blksz, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %blkszs) #2
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_blksz_get_def(i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store ptr %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %v = getelementptr inbounds %struct.blksz_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %v, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !4
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_blkszs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %blkszs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_blksz_get_max(i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store ptr %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !8
  %e = getelementptr inbounds %struct.blksz_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %e, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !4
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %buffer, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l3_nat_ukrs(i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !10
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #2
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_l3_nat_ukrs_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #2
  %1 = load ptr, ptr %funcs, align 8, !tbaa !8
  %2 = load i32, ptr %ukr_id.addr, align 4, !tbaa !10
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !8
  %3 = load ptr, ptr %func, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #2
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_func_get_dt(i32 noundef %dt, ptr noundef %func) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store ptr %func, ptr %func.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !8
  %ptr = getelementptr inbounds %struct.func_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ptr, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_l3_nat_ukrs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %l3_nat_ukrs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [5 x %struct.func_s], ptr %l3_nat_ukrs, i64 0, i64 0
  ret ptr %arraydecay
}

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="true" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!16, !12, i64 0}
!16 = !{!"scomplex", !12, i64 0, !12, i64 4}
!17 = !{!16, !12, i64 4}
!18 = !{!19, !14, i64 0}
!19 = !{!"dcomplex", !14, i64 0, !14, i64 8}
!20 = !{!19, !14, i64 8}
!21 = !{!22, !9, i64 64}
!22 = !{!"obj_s", !9, i64 0, !6, i64 8, !6, i64 24, !5, i64 40, !23, i64 48, !23, i64 52, !5, i64 56, !9, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !19, i64 96, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184}
!23 = !{!"int", !6, i64 0}

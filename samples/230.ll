; ModuleID = 'samples/230.bc'
source_filename = "frame/3/bli_l3_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cntl_s = type { i32, i32, ptr, ptr, ptr, ptr, %struct.mem_s }
%struct.mem_s = type { %struct.pblk_t, i32, ptr, i64 }
%struct.pblk_t = type { ptr, i64 }
%struct.obj_s = type { ptr, [2 x i64], [2 x i64], i64, i32, i32, i64, ptr, i64, i64, i64, %struct.dcomplex, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.dcomplex = type { double, double }
%struct.blksz_s = type { [4 x i64], [4 x i64] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [5 x %struct.func_s], [5 x %struct.func_s], [5 x %struct.mbool_s], [3 x %struct.blksz_s], [11 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [14 x %struct.func_s], [32 x %struct.func_s], [32 x %struct.func_s], i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.func_s = type { [4 x ptr] }

; Function Attrs: nounwind uwtable
define hidden i64 @bli_l3_determine_kc(i32 noundef %direct, i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx, ptr noundef %cntl) #0 {
entry:
  %retval = alloca i64, align 8
  %direct.addr = alloca i32, align 4
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %cntl.addr = alloca ptr, align 8
  %family = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %direct, ptr %direct.addr, align 4, !tbaa !4
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %family) #3
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !9
  %call = call i32 @bli_cntl_family(ptr noundef %0)
  store i32 %call, ptr %family, align 4, !tbaa !4
  %1 = load i32, ptr %family, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %3 = load i64, ptr %i.addr, align 8, !tbaa !7
  %4 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %7 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call i64 @bli_gemm_determine_kc(i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8)
  store i64 %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %family, align 4, !tbaa !4
  %cmp2 = icmp eq i32 %9, 1
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %10 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %11 = load i64, ptr %i.addr, align 8, !tbaa !7
  %12 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %15 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %16 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call4 = call i64 @bli_gemmt_determine_kc(i32 noundef %10, i64 noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %16)
  store i64 %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else5:                                         ; preds = %if.else
  %17 = load i32, ptr %family, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %17, 9
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %18 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %19 = load i64, ptr %i.addr, align 8, !tbaa !7
  %20 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %23 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %24 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call8 = call i64 @bli_trmm_determine_kc(i32 noundef %18, i64 noundef %19, i64 noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24)
  store i64 %call8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else9:                                         ; preds = %if.else5
  %25 = load i32, ptr %family, align 4, !tbaa !4
  %cmp10 = icmp eq i32 %25, 10
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else9
  %26 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %27 = load i64, ptr %i.addr, align 8, !tbaa !7
  %28 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %30 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %31 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %32 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call12 = call i64 @bli_trsm_determine_kc(i32 noundef %26, i64 noundef %27, i64 noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31, ptr noundef %32)
  store i64 %call12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else9
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  %33 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %34 = load i64, ptr %i.addr, align 8, !tbaa !7
  %35 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %36 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %37 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %38 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %39 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call16 = call i64 @bli_gemm_determine_kc(i32 noundef %33, i64 noundef %34, i64 noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef %39)
  store i64 %call16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %family) #3
  %40 = load i64, ptr %retval, align 8
  ret i64 %40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @bli_cntl_family(ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !9
  %family = getelementptr inbounds %struct.cntl_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %family, align 8, !tbaa !11
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_determine_kc(i32 noundef %direct, i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %retval = alloca i64, align 8
  %direct.addr = alloca i32, align 4
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %direct, ptr %direct.addr, align 4, !tbaa !4
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %i.addr, align 8, !tbaa !7
  %2 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %5 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call i64 @bli_gemm_determine_kc_f(i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  store i64 %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %i.addr, align 8, !tbaa !7
  %8 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %11 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call i64 @bli_gemm_determine_kc_b(i64 noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12)
  store i64 %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemmt_determine_kc(i32 noundef %direct, i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %retval = alloca i64, align 8
  %direct.addr = alloca i32, align 4
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %direct, ptr %direct.addr, align 4, !tbaa !4
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %i.addr, align 8, !tbaa !7
  %2 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %5 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call i64 @bli_gemmt_determine_kc_f(i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  store i64 %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %i.addr, align 8, !tbaa !7
  %8 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %11 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call i64 @bli_gemmt_determine_kc_b(i64 noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12)
  store i64 %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_trmm_determine_kc(i32 noundef %direct, i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %retval = alloca i64, align 8
  %direct.addr = alloca i32, align 4
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %direct, ptr %direct.addr, align 4, !tbaa !4
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %i.addr, align 8, !tbaa !7
  %2 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %5 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call i64 @bli_trmm_determine_kc_f(i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  store i64 %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %i.addr, align 8, !tbaa !7
  %8 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %11 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call i64 @bli_trmm_determine_kc_b(i64 noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12)
  store i64 %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_trsm_determine_kc(i32 noundef %direct, i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %retval = alloca i64, align 8
  %direct.addr = alloca i32, align 4
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  store i32 %direct, ptr %direct.addr, align 4, !tbaa !4
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %i.addr, align 8, !tbaa !7
  %2 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %5 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call i64 @bli_trsm_determine_kc_f(i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  store i64 %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %i.addr, align 8, !tbaa !7
  %8 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %11 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %12 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call i64 @bli_trsm_determine_kc_b(i64 noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12)
  store i64 %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_determine_kc_f(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %mnr = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call4 = call zeroext i1 @bli_obj_root_is_herm_or_symm(ptr noundef %7)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %dt, align 4, !tbaa !4
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call5 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %8, i32 noundef 1, ptr noundef %9)
  store i64 %call5, ptr %mnr, align 8, !tbaa !7
  %10 = load i64, ptr %b_alg, align 8, !tbaa !7
  %11 = load i64, ptr %mnr, align 8, !tbaa !7
  %call6 = call i64 @bli_align_dim_to_mult(i64 noundef %10, i64 noundef %11)
  store i64 %call6, ptr %b_alg, align 8, !tbaa !7
  %12 = load i64, ptr %b_max, align 8, !tbaa !7
  %13 = load i64, ptr %mnr, align 8, !tbaa !7
  %call7 = call i64 @bli_align_dim_to_mult(i64 noundef %12, i64 noundef %13)
  store i64 %call7, ptr %b_max, align 8, !tbaa !7
  br label %if.end13

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %call8 = call zeroext i1 @bli_obj_root_is_herm_or_symm(ptr noundef %14)
  br i1 %call8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %15 = load i32, ptr %dt, align 4, !tbaa !4
  %16 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call10 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %15, i32 noundef 2, ptr noundef %16)
  store i64 %call10, ptr %mnr, align 8, !tbaa !7
  %17 = load i64, ptr %b_alg, align 8, !tbaa !7
  %18 = load i64, ptr %mnr, align 8, !tbaa !7
  %call11 = call i64 @bli_align_dim_to_mult(i64 noundef %17, i64 noundef %18)
  store i64 %call11, ptr %b_alg, align 8, !tbaa !7
  %19 = load i64, ptr %b_max, align 8, !tbaa !7
  %20 = load i64, ptr %mnr, align 8, !tbaa !7
  %call12 = call i64 @bli_align_dim_to_mult(i64 noundef %19, i64 noundef %20)
  store i64 %call12, ptr %b_max, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %21 = load i64, ptr %i.addr, align 8, !tbaa !7
  %22 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %23 = load i64, ptr %b_alg, align 8, !tbaa !7
  %24 = load i64, ptr %b_max, align 8, !tbaa !7
  %call14 = call i64 @bli_determine_blocksize_f_sub(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24)
  store i64 %call14, ptr %b_use, align 8, !tbaa !7
  %25 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemm_determine_kc_b(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %mnr = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call4 = call zeroext i1 @bli_obj_root_is_herm_or_symm(ptr noundef %7)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %dt, align 4, !tbaa !4
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call5 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %8, i32 noundef 1, ptr noundef %9)
  store i64 %call5, ptr %mnr, align 8, !tbaa !7
  %10 = load i64, ptr %b_alg, align 8, !tbaa !7
  %11 = load i64, ptr %mnr, align 8, !tbaa !7
  %call6 = call i64 @bli_align_dim_to_mult(i64 noundef %10, i64 noundef %11)
  store i64 %call6, ptr %b_alg, align 8, !tbaa !7
  %12 = load i64, ptr %b_max, align 8, !tbaa !7
  %13 = load i64, ptr %mnr, align 8, !tbaa !7
  %call7 = call i64 @bli_align_dim_to_mult(i64 noundef %12, i64 noundef %13)
  store i64 %call7, ptr %b_max, align 8, !tbaa !7
  br label %if.end13

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %call8 = call zeroext i1 @bli_obj_root_is_herm_or_symm(ptr noundef %14)
  br i1 %call8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %15 = load i32, ptr %dt, align 4, !tbaa !4
  %16 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call10 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %15, i32 noundef 2, ptr noundef %16)
  store i64 %call10, ptr %mnr, align 8, !tbaa !7
  %17 = load i64, ptr %b_alg, align 8, !tbaa !7
  %18 = load i64, ptr %mnr, align 8, !tbaa !7
  %call11 = call i64 @bli_align_dim_to_mult(i64 noundef %17, i64 noundef %18)
  store i64 %call11, ptr %b_alg, align 8, !tbaa !7
  %19 = load i64, ptr %b_max, align 8, !tbaa !7
  %20 = load i64, ptr %mnr, align 8, !tbaa !7
  %call12 = call i64 @bli_align_dim_to_mult(i64 noundef %19, i64 noundef %20)
  store i64 %call12, ptr %b_max, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %21 = load i64, ptr %i.addr, align 8, !tbaa !7
  %22 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %23 = load i64, ptr %b_alg, align 8, !tbaa !7
  %24 = load i64, ptr %b_max, align 8, !tbaa !7
  %call14 = call i64 @bli_determine_blocksize_b_sub(i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24)
  store i64 %call14, ptr %b_use, align 8, !tbaa !7
  %25 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemmt_determine_kc_f(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load i64, ptr %i.addr, align 8, !tbaa !7
  %8 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %9 = load i64, ptr %b_alg, align 8, !tbaa !7
  %10 = load i64, ptr %b_max, align 8, !tbaa !7
  %call4 = call i64 @bli_determine_blocksize_f_sub(i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10)
  store i64 %call4, ptr %b_use, align 8, !tbaa !7
  %11 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_gemmt_determine_kc_b(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load i64, ptr %i.addr, align 8, !tbaa !7
  %8 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %9 = load i64, ptr %b_alg, align 8, !tbaa !7
  %10 = load i64, ptr %b_max, align 8, !tbaa !7
  %call4 = call i64 @bli_determine_blocksize_b_sub(i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10)
  store i64 %call4, ptr %b_use, align 8, !tbaa !7
  %11 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_trmm_determine_kc_f(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %mnr = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call4 = call zeroext i1 @bli_obj_root_is_triangular(ptr noundef %7)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %dt, align 4, !tbaa !4
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call5 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %8, i32 noundef 1, ptr noundef %9)
  store i64 %call5, ptr %mnr, align 8, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, ptr %dt, align 4, !tbaa !4
  %11 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call6 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %10, i32 noundef 2, ptr noundef %11)
  store i64 %call6, ptr %mnr, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i64, ptr %b_alg, align 8, !tbaa !7
  %13 = load i64, ptr %mnr, align 8, !tbaa !7
  %call7 = call i64 @bli_align_dim_to_mult(i64 noundef %12, i64 noundef %13)
  store i64 %call7, ptr %b_alg, align 8, !tbaa !7
  %14 = load i64, ptr %b_max, align 8, !tbaa !7
  %15 = load i64, ptr %mnr, align 8, !tbaa !7
  %call8 = call i64 @bli_align_dim_to_mult(i64 noundef %14, i64 noundef %15)
  store i64 %call8, ptr %b_max, align 8, !tbaa !7
  %16 = load i64, ptr %i.addr, align 8, !tbaa !7
  %17 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %18 = load i64, ptr %b_alg, align 8, !tbaa !7
  %19 = load i64, ptr %b_max, align 8, !tbaa !7
  %call9 = call i64 @bli_determine_blocksize_f_sub(i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19)
  store i64 %call9, ptr %b_use, align 8, !tbaa !7
  %20 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_trmm_determine_kc_b(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %mnr = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call4 = call zeroext i1 @bli_obj_root_is_triangular(ptr noundef %7)
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %dt, align 4, !tbaa !4
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call5 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %8, i32 noundef 1, ptr noundef %9)
  store i64 %call5, ptr %mnr, align 8, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load i32, ptr %dt, align 4, !tbaa !4
  %11 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call6 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %10, i32 noundef 2, ptr noundef %11)
  store i64 %call6, ptr %mnr, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i64, ptr %b_alg, align 8, !tbaa !7
  %13 = load i64, ptr %mnr, align 8, !tbaa !7
  %call7 = call i64 @bli_align_dim_to_mult(i64 noundef %12, i64 noundef %13)
  store i64 %call7, ptr %b_alg, align 8, !tbaa !7
  %14 = load i64, ptr %b_max, align 8, !tbaa !7
  %15 = load i64, ptr %mnr, align 8, !tbaa !7
  %call8 = call i64 @bli_align_dim_to_mult(i64 noundef %14, i64 noundef %15)
  store i64 %call8, ptr %b_max, align 8, !tbaa !7
  %16 = load i64, ptr %i.addr, align 8, !tbaa !7
  %17 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %18 = load i64, ptr %b_alg, align 8, !tbaa !7
  %19 = load i64, ptr %b_max, align 8, !tbaa !7
  %call9 = call i64 @bli_determine_blocksize_b_sub(i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19)
  store i64 %call9, ptr %b_use, align 8, !tbaa !7
  %20 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_trsm_determine_kc_f(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %mnr = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load i32, ptr %dt, align 4, !tbaa !4
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call4 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %7, i32 noundef 1, ptr noundef %8)
  store i64 %call4, ptr %mnr, align 8, !tbaa !7
  %9 = load i64, ptr %b_alg, align 8, !tbaa !7
  %10 = load i64, ptr %mnr, align 8, !tbaa !7
  %call5 = call i64 @bli_align_dim_to_mult(i64 noundef %9, i64 noundef %10)
  store i64 %call5, ptr %b_alg, align 8, !tbaa !7
  %11 = load i64, ptr %b_max, align 8, !tbaa !7
  %12 = load i64, ptr %mnr, align 8, !tbaa !7
  %call6 = call i64 @bli_align_dim_to_mult(i64 noundef %11, i64 noundef %12)
  store i64 %call6, ptr %b_max, align 8, !tbaa !7
  %13 = load i64, ptr %i.addr, align 8, !tbaa !7
  %14 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %15 = load i64, ptr %b_alg, align 8, !tbaa !7
  %16 = load i64, ptr %b_max, align 8, !tbaa !7
  %call7 = call i64 @bli_determine_blocksize_f_sub(i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16)
  store i64 %call7, ptr %b_use, align 8, !tbaa !7
  %17 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define hidden i64 @bli_trsm_determine_kc_b(i64 noundef %i, i64 noundef %dim, ptr noundef %a, ptr noundef %b, i32 noundef %bszid, ptr noundef %cntx) #0 {
entry:
  %i.addr = alloca i64, align 8
  %dim.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %bszid.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %dt = alloca i32, align 4
  %bsize = alloca ptr, align 8
  %mnr = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %b_max = alloca i64, align 8
  %b_use = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8, !tbaa !7
  store i64 %dim, ptr %dim.addr, align 8, !tbaa !7
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i32 %bszid, ptr %bszid.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_use) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_exec_dt(ptr noundef %0)
  store i32 %call, ptr %dt, align 4, !tbaa !4
  %1 = load i32, ptr %bszid.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call1 = call ptr @bli_cntx_get_blksz(i32 noundef %1, ptr noundef %2)
  store ptr %call1, ptr %bsize, align 8, !tbaa !9
  %3 = load i32, ptr %dt, align 4, !tbaa !4
  %4 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call2 = call i64 @bli_blksz_get_def(i32 noundef %3, ptr noundef %4)
  store i64 %call2, ptr %b_alg, align 8, !tbaa !7
  %5 = load i32, ptr %dt, align 4, !tbaa !4
  %6 = load ptr, ptr %bsize, align 8, !tbaa !9
  %call3 = call i64 @bli_blksz_get_max(i32 noundef %5, ptr noundef %6)
  store i64 %call3, ptr %b_max, align 8, !tbaa !7
  %7 = load i32, ptr %dt, align 4, !tbaa !4
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call4 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef %7, i32 noundef 1, ptr noundef %8)
  store i64 %call4, ptr %mnr, align 8, !tbaa !7
  %9 = load i64, ptr %b_alg, align 8, !tbaa !7
  %10 = load i64, ptr %mnr, align 8, !tbaa !7
  %call5 = call i64 @bli_align_dim_to_mult(i64 noundef %9, i64 noundef %10)
  store i64 %call5, ptr %b_alg, align 8, !tbaa !7
  %11 = load i64, ptr %b_max, align 8, !tbaa !7
  %12 = load i64, ptr %mnr, align 8, !tbaa !7
  %call6 = call i64 @bli_align_dim_to_mult(i64 noundef %11, i64 noundef %12)
  store i64 %call6, ptr %b_max, align 8, !tbaa !7
  %13 = load i64, ptr %i.addr, align 8, !tbaa !7
  %14 = load i64, ptr %dim.addr, align 8, !tbaa !7
  %15 = load i64, ptr %b_alg, align 8, !tbaa !7
  %16 = load i64, ptr %b_max, align 8, !tbaa !7
  %call7 = call i64 @bli_determine_blocksize_b_sub(i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16)
  store i64 %call7, ptr %b_use, align 8, !tbaa !7
  %17 = load i64, ptr %b_use, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_use) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_max) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_exec_dt(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !15
  %and = and i32 %1, 57344
  %shr = lshr i32 %and, 13
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_blksz(i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blkszs = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %blkszs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_blkszs_buf(ptr noundef %0)
  store ptr %call, ptr %blkszs, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #3
  %1 = load ptr, ptr %blkszs, align 8, !tbaa !9
  %2 = load i32, ptr %bs_id.addr, align 4, !tbaa !4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.blksz_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %blksz, align 8, !tbaa !9
  %3 = load ptr, ptr %blksz, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blkszs) #3
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_blksz_get_def(i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %v = getelementptr inbounds %struct.blksz_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %v, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !7
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_blksz_get_max(i32 noundef %dt, ptr noundef %b) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %e = getelementptr inbounds %struct.blksz_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i64], ptr %e, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !7
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_root_is_herm_or_symm(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call = call ptr @bli_obj_root(ptr noundef %0)
  %call1 = call zeroext i1 @bli_obj_is_hermitian(ptr noundef %call)
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call2 = call ptr @bli_obj_root(ptr noundef %1)
  %call3 = call zeroext i1 @bli_obj_is_symmetric(ptr noundef %call2)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call3, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_cntx_get_blksz_def_dt(i32 noundef %dt, i32 noundef %bs_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %bs_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %blksz = alloca ptr, align 8
  %bs_dt = alloca i64, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store i32 %bs_id, ptr %bs_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #3
  %0 = load i32, ptr %bs_id.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_blksz(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %blksz, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_dt) #3
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %blksz, align 8, !tbaa !9
  %call1 = call i64 @bli_blksz_get_def(i32 noundef %2, ptr noundef %3)
  store i64 %call1, ptr %bs_dt, align 8, !tbaa !7
  %4 = load i64, ptr %bs_dt, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #3
  ret i64 %4
}

declare i64 @bli_align_dim_to_mult(i64 noundef, i64 noundef) #2

declare i64 @bli_determine_blocksize_f_sub(i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

declare i64 @bli_determine_blocksize_b_sub(i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_root_is_triangular(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call = call ptr @bli_obj_root(ptr noundef %0)
  %call1 = call zeroext i1 @bli_obj_is_triangular(ptr noundef %call)
  ret i1 %call1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_blkszs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %blkszs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_hermitian(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_struc(ptr noundef %0)
  %cmp = icmp eq i32 %call, 134217728
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_root(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %root = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %root, align 8, !tbaa !20
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_symmetric(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_struc(ptr noundef %0)
  %cmp = icmp eq i32 %call, 268435456
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal i32 @bli_obj_struc(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %info = getelementptr inbounds %struct.obj_s, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %info, align 8, !tbaa !15
  %and = and i32 %1, 402653184
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_obj_is_triangular(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !9
  %call = call i32 @bli_obj_struc(ptr noundef %0)
  %cmp = icmp eq i32 %call, 402653184
  ret i1 %cmp
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = !{!12, !5, i64 0}
!12 = !{!"cntl_s", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !13, i64 40}
!13 = !{!"mem_s", !14, i64 0, !5, i64 16, !10, i64 24, !8, i64 32}
!14 = !{!"", !10, i64 0, !8, i64 8}
!15 = !{!16, !17, i64 48}
!16 = !{!"obj_s", !10, i64 0, !5, i64 8, !5, i64 24, !8, i64 40, !17, i64 48, !17, i64 52, !8, i64 56, !10, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !18, i64 96, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184}
!17 = !{!"int", !5, i64 0}
!18 = !{!"dcomplex", !19, i64 0, !19, i64 8}
!19 = !{!"double", !5, i64 0}
!20 = !{!16, !10, i64 0}

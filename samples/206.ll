; ModuleID = 'samples/206.bc'
source_filename = "ref_kernels/ind/bli_gemmtrsm3m1_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_s = type { ptr, [2 x i64], [2 x i64], i64, i32, i32, i64, ptr, i64, i64, i64, %struct.dcomplex, i64, i64, i64, i64, i64, i64 }
%struct.dcomplex = type { double, double }
%struct.scomplex = type { float, float }
%struct.auxinfo_t = type { i32, i32, ptr, ptr, i64, i64, i64, i64 }
%struct.constdata_s = type { float, double, %struct.scomplex, %struct.dcomplex, i64 }
%struct.func_s = type { [4 x ptr] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [11 x %struct.blksz_s], [6 x %struct.func_s], [6 x %struct.func_s], [6 x %struct.mbool_s], [12 x ptr], [3 x %struct.blksz_s], [12 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [15 x %struct.func_s], [33 x %struct.func_s], [32 x %struct.func_s], i32, i32, i32, i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

@BLIS_ONE = external global %struct.obj_s, align 8
@BLIS_ZERO = external global %struct.obj_s, align 8
@BLIS_MINUS_ONE = external global %struct.obj_s, align 8

; Function Attrs: nounwind uwtable
define hidden void @bli_cgemmtrsm3m1_l_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
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
  %dt_r = alloca i32, align 4
  %rgemm_ukr = alloca ptr, align 8
  %ctrsm_vir_ukr = alloca ptr, align 8
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %ab_r = alloca [1024 x float], align 64
  %ab_i = alloca [1024 x float], align 64
  %rs_ab = alloca i64, align 8
  %cs_ab = alloca i64, align 8
  %is_a = alloca i64, align 8
  %is_b = alloca i64, align 8
  %a1x_r = alloca ptr, align 8
  %a1x_i = alloca ptr, align 8
  %a1x_ri = alloca ptr, align 8
  %bx1_r = alloca ptr, align 8
  %bx1_i = alloca ptr, align 8
  %bx1_ri = alloca ptr, align 8
  %b11_r = alloca ptr, align 8
  %b11_i = alloca ptr, align 8
  %b11_ri = alloca ptr, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %one_r = alloca ptr, align 8
  %zero_r = alloca ptr, align 8
  %minus_one_r = alloca ptr, align 8
  %alpha_r = alloca float, align 4
  %alpha_i = alloca float, align 4
  %a_next = alloca ptr, align 8
  %b_next = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %yr = alloca float, align 4
  %yi = alloca float, align 4
  %alphabeta_r = alloca float, align 4
  %alphabeta_i = alloca float, align 4
  %beta11_r = alloca float, align 4
  %beta11_i = alloca float, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_r) #3
  store i32 0, ptr %dt_r, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgemm_ukr) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 0, i32 noundef 0, ptr noundef %0)
  store ptr %call, ptr %rgemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call ptr @bli_cntx_get_l3_vir_ukr_dt(i32 noundef 1, i32 noundef 3, ptr noundef %1)
  store ptr %call1, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #3
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 1, ptr noundef %2)
  store i64 %call2, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #3
  %3 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call3 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 2, ptr noundef %3)
  store i64 %call3, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #3
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 0, i32 noundef 2, ptr noundef %4)
  store i64 %call4, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #3
  %5 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %5, ptr %m, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  %6 = load i64, ptr %nr, align 8, !tbaa !4
  store i64 %6, ptr %n, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ab) #3
  store i64 1, ptr %rs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ab) #3
  %7 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %7, ptr %cs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_a) #3
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call5 = call i64 @bli_auxinfo_is_a(ptr noundef %8)
  store i64 %call5, ptr %is_a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_b) #3
  %9 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call6 = call i64 @bli_auxinfo_is_b(ptr noundef %9)
  store i64 %call6, ptr %is_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_r) #3
  %10 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %10, ptr %a1x_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_i) #3
  %11 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %12 = load i64, ptr %is_a, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float, ptr %11, i64 %12
  store ptr %add.ptr, ptr %a1x_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_ri) #3
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load i64, ptr %is_a, align 8, !tbaa !4
  %mul = mul nsw i64 2, %14
  %add.ptr7 = getelementptr inbounds float, ptr %13, i64 %mul
  store ptr %add.ptr7, ptr %a1x_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_r) #3
  %15 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %15, ptr %bx1_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_i) #3
  %16 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %17 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr8 = getelementptr inbounds float, ptr %16, i64 %17
  store ptr %add.ptr8, ptr %bx1_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_ri) #3
  %18 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %19 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul9 = mul nsw i64 2, %19
  %add.ptr10 = getelementptr inbounds float, ptr %18, i64 %mul9
  store ptr %add.ptr10, ptr %bx1_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_r) #3
  %20 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  store ptr %20, ptr %b11_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_i) #3
  %21 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %22 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds float, ptr %21, i64 %22
  store ptr %add.ptr11, ptr %b11_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_ri) #3
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul12 = mul nsw i64 2, %24
  %add.ptr13 = getelementptr inbounds float, ptr %23, i64 %mul12
  store ptr %add.ptr13, ptr %b11_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #3
  %25 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %25, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #3
  store i64 1, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one_r) #3
  %call14 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_ONE)
  store ptr %call14, ptr %one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero_r) #3
  %call15 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_ZERO)
  store ptr %call15, ptr %zero_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one_r) #3
  %call16 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call16, ptr %minus_one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_r) #3
  %26 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %real = getelementptr inbounds %struct.scomplex, ptr %26, i32 0, i32 0
  %27 = load float, ptr %real, align 4, !tbaa !11
  store float %27, ptr %alpha_r, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_i) #3
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %imag = getelementptr inbounds %struct.scomplex, ptr %28, i32 0, i32 1
  %29 = load float, ptr %imag, align 4, !tbaa !15
  store float %29, ptr %alpha_i, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_next) #3
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call17 = call ptr @bli_auxinfo_next_a(ptr noundef %30)
  store ptr %call17, ptr %a_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_next) #3
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call18 = call ptr @bli_auxinfo_next_b(ptr noundef %31)
  store ptr %call18, ptr %b_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  %32 = load float, ptr %alpha_i, align 4, !tbaa !14
  %cmp = fcmp oeq float %32, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %if.then
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %34 = load i64, ptr %m, align 8, !tbaa !4
  %cmp19 = icmp slt i64 %33, %34
  br i1 %cmp19, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n, align 8, !tbaa !4
  %cmp21 = icmp slt i64 %35, %36
  br i1 %cmp21, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr) #3
  %37 = load float, ptr %alpha_r, align 4, !tbaa !14
  %38 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %39 = load i64, ptr %i, align 8, !tbaa !4
  %40 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul23 = mul nsw i64 %39, %40
  %add.ptr24 = getelementptr inbounds float, ptr %38, i64 %mul23
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %mul25 = mul nsw i64 %41, 1
  %add.ptr26 = getelementptr inbounds float, ptr %add.ptr24, i64 %mul25
  %42 = load float, ptr %add.ptr26, align 4, !tbaa !14
  %43 = load float, ptr %alpha_i, align 4, !tbaa !14
  %44 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %45 = load i64, ptr %i, align 8, !tbaa !4
  %46 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul28 = mul nsw i64 %45, %46
  %add.ptr29 = getelementptr inbounds float, ptr %44, i64 %mul28
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %mul30 = mul nsw i64 %47, 1
  %add.ptr31 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul30
  %48 = load float, ptr %add.ptr31, align 4, !tbaa !14
  %mul32 = fmul float %43, %48
  %neg = fneg float %mul32
  %49 = call float @llvm.fmuladd.f32(float %37, float %42, float %neg)
  store float %49, ptr %yr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi) #3
  %50 = load float, ptr %alpha_i, align 4, !tbaa !14
  %51 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul33 = mul nsw i64 %52, %53
  %add.ptr34 = getelementptr inbounds float, ptr %51, i64 %mul33
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %mul35 = mul nsw i64 %54, 1
  %add.ptr36 = getelementptr inbounds float, ptr %add.ptr34, i64 %mul35
  %55 = load float, ptr %add.ptr36, align 4, !tbaa !14
  %56 = load float, ptr %alpha_r, align 4, !tbaa !14
  %57 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %58 = load i64, ptr %i, align 8, !tbaa !4
  %59 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul38 = mul nsw i64 %58, %59
  %add.ptr39 = getelementptr inbounds float, ptr %57, i64 %mul38
  %60 = load i64, ptr %j, align 8, !tbaa !4
  %mul40 = mul nsw i64 %60, 1
  %add.ptr41 = getelementptr inbounds float, ptr %add.ptr39, i64 %mul40
  %61 = load float, ptr %add.ptr41, align 4, !tbaa !14
  %mul42 = fmul float %56, %61
  %62 = call float @llvm.fmuladd.f32(float %50, float %55, float %mul42)
  store float %62, ptr %yi, align 4, !tbaa !14
  %63 = load float, ptr %yr, align 4, !tbaa !14
  %64 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %65 = load i64, ptr %i, align 8, !tbaa !4
  %66 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul43 = mul nsw i64 %65, %66
  %add.ptr44 = getelementptr inbounds float, ptr %64, i64 %mul43
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %mul45 = mul nsw i64 %67, 1
  %add.ptr46 = getelementptr inbounds float, ptr %add.ptr44, i64 %mul45
  store float %63, ptr %add.ptr46, align 4, !tbaa !14
  %68 = load float, ptr %yi, align 4, !tbaa !14
  %69 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul47 = mul nsw i64 %70, %71
  %add.ptr48 = getelementptr inbounds float, ptr %69, i64 %mul47
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %mul49 = mul nsw i64 %72, 1
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr48, i64 %mul49
  store float %68, ptr %add.ptr50, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %73 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %73, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.end:                                          ; preds = %for.cond20
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %74 = load i64, ptr %i, align 8, !tbaa !4
  %inc52 = add nsw i64 %74, 1
  store i64 %inc52, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end53:                                        ; preds = %for.cond
  %75 = load ptr, ptr %one_r, align 8, !tbaa !8
  %76 = load float, ptr %75, align 4, !tbaa !14
  store float %76, ptr %alpha_r, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %for.end53, %entry
  %77 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %78 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %79 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %81 = load i64, ptr %k.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %one_r, align 8, !tbaa !8
  %83 = load ptr, ptr %a1x_r, align 8, !tbaa !8
  %84 = load ptr, ptr %bx1_r, align 8, !tbaa !8
  %85 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [1024 x float], ptr %ab_r, i64 0, i64 0
  %86 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %87 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %88 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %80(i64 noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %arraydecay, i64 noundef 1, i64 noundef %86, ptr noundef %87, ptr noundef %88)
  %89 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %90 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %91 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %89, ptr noundef %90, ptr noundef %91)
  %92 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %93 = load i64, ptr %k.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %one_r, align 8, !tbaa !8
  %95 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %96 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %97 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay54 = getelementptr inbounds [1024 x float], ptr %ab_i, i64 0, i64 0
  %98 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %99 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %100 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %92(i64 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %arraydecay54, i64 noundef 1, i64 noundef %98, ptr noundef %99, ptr noundef %100)
  %101 = load ptr, ptr %a_next, align 8, !tbaa !8
  %102 = load ptr, ptr %b_next, align 8, !tbaa !8
  %103 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %105 = load i64, ptr %k.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %minus_one_r, align 8, !tbaa !8
  %107 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %108 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %109 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %110 = load i64, ptr %rs_b, align 8, !tbaa !4
  %111 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %112 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %104(i64 noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %alpha_r, ptr noundef %109, i64 noundef %110, i64 noundef 1, ptr noundef %111, ptr noundef %112)
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc98, %if.end
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %114 = load i64, ptr %m, align 8, !tbaa !4
  %cmp56 = icmp slt i64 %113, %114
  br i1 %cmp56, label %for.body57, label %for.end100

for.body57:                                       ; preds = %for.cond55
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc95, %for.body57
  %115 = load i64, ptr %j, align 8, !tbaa !4
  %116 = load i64, ptr %n, align 8, !tbaa !4
  %cmp59 = icmp slt i64 %115, %116
  br i1 %cmp59, label %for.body60, label %for.end97

for.body60:                                       ; preds = %for.cond58
  call void @llvm.lifetime.start.p0(i64 4, ptr %alphabeta_r) #3
  %arraydecay61 = getelementptr inbounds [1024 x float], ptr %ab_r, i64 0, i64 0
  %117 = load i64, ptr %i, align 8, !tbaa !4
  %mul62 = mul nsw i64 %117, 1
  %add.ptr63 = getelementptr inbounds float, ptr %arraydecay61, i64 %mul62
  %118 = load i64, ptr %j, align 8, !tbaa !4
  %119 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul64 = mul nsw i64 %118, %119
  %add.ptr65 = getelementptr inbounds float, ptr %add.ptr63, i64 %mul64
  %120 = load float, ptr %add.ptr65, align 4, !tbaa !14
  store float %120, ptr %alphabeta_r, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %alphabeta_i) #3
  %arraydecay66 = getelementptr inbounds [1024 x float], ptr %ab_i, i64 0, i64 0
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %mul67 = mul nsw i64 %121, 1
  %add.ptr68 = getelementptr inbounds float, ptr %arraydecay66, i64 %mul67
  %122 = load i64, ptr %j, align 8, !tbaa !4
  %123 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul69 = mul nsw i64 %122, %123
  %add.ptr70 = getelementptr inbounds float, ptr %add.ptr68, i64 %mul69
  %124 = load float, ptr %add.ptr70, align 4, !tbaa !14
  store float %124, ptr %alphabeta_i, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %beta11_r) #3
  %125 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %126 = load i64, ptr %i, align 8, !tbaa !4
  %127 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul71 = mul nsw i64 %126, %127
  %add.ptr72 = getelementptr inbounds float, ptr %125, i64 %mul71
  %128 = load i64, ptr %j, align 8, !tbaa !4
  %mul73 = mul nsw i64 %128, 1
  %add.ptr74 = getelementptr inbounds float, ptr %add.ptr72, i64 %mul73
  %129 = load float, ptr %add.ptr74, align 4, !tbaa !14
  store float %129, ptr %beta11_r, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %beta11_i) #3
  %130 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %131 = load i64, ptr %i, align 8, !tbaa !4
  %132 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul75 = mul nsw i64 %131, %132
  %add.ptr76 = getelementptr inbounds float, ptr %130, i64 %mul75
  %133 = load i64, ptr %j, align 8, !tbaa !4
  %mul77 = mul nsw i64 %133, 1
  %add.ptr78 = getelementptr inbounds float, ptr %add.ptr76, i64 %mul77
  %134 = load float, ptr %add.ptr78, align 4, !tbaa !14
  store float %134, ptr %beta11_i, align 4, !tbaa !14
  %135 = load float, ptr %alpha_r, align 4, !tbaa !14
  %136 = load float, ptr %beta11_r, align 4, !tbaa !14
  %mul79 = fmul float %135, %136
  store float %mul79, ptr %beta11_r, align 4, !tbaa !14
  %137 = load float, ptr %beta11_r, align 4, !tbaa !14
  %138 = load float, ptr %alphabeta_r, align 4, !tbaa !14
  %sub = fsub float %137, %138
  store float %sub, ptr %beta11_r, align 4, !tbaa !14
  %139 = load float, ptr %beta11_r, align 4, !tbaa !14
  %140 = load float, ptr %alphabeta_i, align 4, !tbaa !14
  %add = fadd float %139, %140
  store float %add, ptr %beta11_r, align 4, !tbaa !14
  %141 = load float, ptr %beta11_i, align 4, !tbaa !14
  %142 = load float, ptr %alphabeta_r, align 4, !tbaa !14
  %add80 = fadd float %141, %142
  store float %add80, ptr %beta11_i, align 4, !tbaa !14
  %143 = load float, ptr %beta11_i, align 4, !tbaa !14
  %144 = load float, ptr %alphabeta_i, align 4, !tbaa !14
  %add81 = fadd float %143, %144
  store float %add81, ptr %beta11_i, align 4, !tbaa !14
  %145 = load float, ptr %beta11_r, align 4, !tbaa !14
  %146 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %147 = load i64, ptr %i, align 8, !tbaa !4
  %148 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul82 = mul nsw i64 %147, %148
  %add.ptr83 = getelementptr inbounds float, ptr %146, i64 %mul82
  %149 = load i64, ptr %j, align 8, !tbaa !4
  %mul84 = mul nsw i64 %149, 1
  %add.ptr85 = getelementptr inbounds float, ptr %add.ptr83, i64 %mul84
  store float %145, ptr %add.ptr85, align 4, !tbaa !14
  %150 = load float, ptr %beta11_i, align 4, !tbaa !14
  %151 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %152 = load i64, ptr %i, align 8, !tbaa !4
  %153 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul86 = mul nsw i64 %152, %153
  %add.ptr87 = getelementptr inbounds float, ptr %151, i64 %mul86
  %154 = load i64, ptr %j, align 8, !tbaa !4
  %mul88 = mul nsw i64 %154, 1
  %add.ptr89 = getelementptr inbounds float, ptr %add.ptr87, i64 %mul88
  store float %150, ptr %add.ptr89, align 4, !tbaa !14
  %155 = load float, ptr %beta11_r, align 4, !tbaa !14
  %156 = load float, ptr %beta11_i, align 4, !tbaa !14
  %add90 = fadd float %155, %156
  %157 = load ptr, ptr %b11_ri, align 8, !tbaa !8
  %158 = load i64, ptr %i, align 8, !tbaa !4
  %159 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul91 = mul nsw i64 %158, %159
  %add.ptr92 = getelementptr inbounds float, ptr %157, i64 %mul91
  %160 = load i64, ptr %j, align 8, !tbaa !4
  %mul93 = mul nsw i64 %160, 1
  %add.ptr94 = getelementptr inbounds float, ptr %add.ptr92, i64 %mul93
  store float %add90, ptr %add.ptr94, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %beta11_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %beta11_r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alphabeta_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alphabeta_r) #3
  br label %for.inc95

for.inc95:                                        ; preds = %for.body60
  %161 = load i64, ptr %j, align 8, !tbaa !4
  %inc96 = add nsw i64 %161, 1
  store i64 %inc96, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.end97:                                        ; preds = %for.cond58
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %162 = load i64, ptr %i, align 8, !tbaa !4
  %inc99 = add nsw i64 %162, 1
  store i64 %inc99, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.end100:                                       ; preds = %for.cond55
  %163 = load ptr, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  %164 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %165 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %166 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %167 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %168 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %170 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %163(ptr noundef %164, ptr noundef %165, ptr noundef %166, i64 noundef %167, i64 noundef %168, ptr noundef %169, ptr noundef %170)
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_next) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_next) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_a) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ab) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ab) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgemm_ukr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %0 = load i32, ptr %ukr_id.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_l3_nat_ukrs(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !8
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %func, align 8, !tbaa !8
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l3_vir_ukr_dt(i32 noundef %dt, i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !10
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %0 = load i32, ptr %ukr_id.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_l3_vir_ukrs(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !8
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %func, align 8, !tbaa !8
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  ret ptr %call1
}

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
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #3
  %0 = load i32, ptr %bs_id.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_blksz(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %blksz, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_dt) #3
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %blksz, align 8, !tbaa !8
  %call1 = call i64 @bli_blksz_get_def(i32 noundef %2, ptr noundef %3)
  store i64 %call1, ptr %bs_dt, align 8, !tbaa !4
  %4 = load i64, ptr %bs_dt, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #3
  %0 = load i32, ptr %bs_id.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_blksz(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %blksz, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bs_dt) #3
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !10
  %3 = load ptr, ptr %blksz, align 8, !tbaa !8
  %call1 = call i64 @bli_blksz_get_max(i32 noundef %2, ptr noundef %3)
  store i64 %call1, ptr %bs_dt, align 8, !tbaa !4
  %4 = load i64, ptr %bs_dt, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bs_dt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #3
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_auxinfo_is_a(ptr noundef %ai) #0 {
entry:
  %ai.addr = alloca ptr, align 8
  store ptr %ai, ptr %ai.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %ai.addr, align 8, !tbaa !8
  %is_a = getelementptr inbounds %struct.auxinfo_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %is_a, align 8, !tbaa !16
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_auxinfo_is_b(ptr noundef %ai) #0 {
entry:
  %ai.addr = alloca ptr, align 8
  store ptr %ai, ptr %ai.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %ai.addr, align 8, !tbaa !8
  %is_b = getelementptr inbounds %struct.auxinfo_t, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %is_b, align 8, !tbaa !18
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_obj_buffer_for_const(i32 noundef %dt, ptr noundef %obj) #0 {
entry:
  %dt.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !10
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_auxinfo_next_a(ptr noundef %ai) #0 {
entry:
  %ai.addr = alloca ptr, align 8
  store ptr %ai, ptr %ai.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %ai.addr, align 8, !tbaa !8
  %a_next = getelementptr inbounds %struct.auxinfo_t, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %a_next, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_auxinfo_next_b(ptr noundef %ai) #0 {
entry:
  %ai.addr = alloca ptr, align 8
  store ptr %ai, ptr %ai.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %ai.addr, align 8, !tbaa !8
  %b_next = getelementptr inbounds %struct.auxinfo_t, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %b_next, align 8, !tbaa !20
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @bli_auxinfo_set_next_ab(ptr noundef %ap, ptr noundef %bp, ptr noundef %ai) #0 {
entry:
  %ap.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %ai.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !8
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !8
  store ptr %ai, ptr %ai.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %ai.addr, align 8, !tbaa !8
  %a_next = getelementptr inbounds %struct.auxinfo_t, ptr %1, i32 0, i32 2
  store ptr %0, ptr %a_next, align 8, !tbaa !19
  %2 = load ptr, ptr %bp.addr, align 8, !tbaa !8
  %3 = load ptr, ptr %ai.addr, align 8, !tbaa !8
  %b_next = getelementptr inbounds %struct.auxinfo_t, ptr %3, i32 0, i32 3
  store ptr %2, ptr %b_next, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zgemmtrsm3m1_l_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
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
  %dt_r = alloca i32, align 4
  %rgemm_ukr = alloca ptr, align 8
  %ctrsm_vir_ukr = alloca ptr, align 8
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %ab_r = alloca [512 x double], align 64
  %ab_i = alloca [512 x double], align 64
  %rs_ab = alloca i64, align 8
  %cs_ab = alloca i64, align 8
  %is_a = alloca i64, align 8
  %is_b = alloca i64, align 8
  %a1x_r = alloca ptr, align 8
  %a1x_i = alloca ptr, align 8
  %a1x_ri = alloca ptr, align 8
  %bx1_r = alloca ptr, align 8
  %bx1_i = alloca ptr, align 8
  %bx1_ri = alloca ptr, align 8
  %b11_r = alloca ptr, align 8
  %b11_i = alloca ptr, align 8
  %b11_ri = alloca ptr, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %one_r = alloca ptr, align 8
  %zero_r = alloca ptr, align 8
  %minus_one_r = alloca ptr, align 8
  %alpha_r = alloca double, align 8
  %alpha_i = alloca double, align 8
  %a_next = alloca ptr, align 8
  %b_next = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  %alphabeta_r = alloca double, align 8
  %alphabeta_i = alloca double, align 8
  %beta11_r = alloca double, align 8
  %beta11_i = alloca double, align 8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_r) #3
  store i32 2, ptr %dt_r, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgemm_ukr) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 2, i32 noundef 0, ptr noundef %0)
  store ptr %call, ptr %rgemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call ptr @bli_cntx_get_l3_vir_ukr_dt(i32 noundef 3, i32 noundef 3, ptr noundef %1)
  store ptr %call1, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #3
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 1, ptr noundef %2)
  store i64 %call2, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #3
  %3 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call3 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 2, ptr noundef %3)
  store i64 %call3, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #3
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 2, i32 noundef 2, ptr noundef %4)
  store i64 %call4, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #3
  %5 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %5, ptr %m, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  %6 = load i64, ptr %nr, align 8, !tbaa !4
  store i64 %6, ptr %n, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ab) #3
  store i64 1, ptr %rs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ab) #3
  %7 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %7, ptr %cs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_a) #3
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call5 = call i64 @bli_auxinfo_is_a(ptr noundef %8)
  store i64 %call5, ptr %is_a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_b) #3
  %9 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call6 = call i64 @bli_auxinfo_is_b(ptr noundef %9)
  store i64 %call6, ptr %is_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_r) #3
  %10 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %10, ptr %a1x_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_i) #3
  %11 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %12 = load i64, ptr %is_a, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds double, ptr %11, i64 %12
  store ptr %add.ptr, ptr %a1x_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_ri) #3
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load i64, ptr %is_a, align 8, !tbaa !4
  %mul = mul nsw i64 2, %14
  %add.ptr7 = getelementptr inbounds double, ptr %13, i64 %mul
  store ptr %add.ptr7, ptr %a1x_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_r) #3
  %15 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %15, ptr %bx1_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_i) #3
  %16 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %17 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr8 = getelementptr inbounds double, ptr %16, i64 %17
  store ptr %add.ptr8, ptr %bx1_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_ri) #3
  %18 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %19 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul9 = mul nsw i64 2, %19
  %add.ptr10 = getelementptr inbounds double, ptr %18, i64 %mul9
  store ptr %add.ptr10, ptr %bx1_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_r) #3
  %20 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  store ptr %20, ptr %b11_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_i) #3
  %21 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %22 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds double, ptr %21, i64 %22
  store ptr %add.ptr11, ptr %b11_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_ri) #3
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul12 = mul nsw i64 2, %24
  %add.ptr13 = getelementptr inbounds double, ptr %23, i64 %mul12
  store ptr %add.ptr13, ptr %b11_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #3
  %25 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %25, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #3
  store i64 1, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one_r) #3
  %call14 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_ONE)
  store ptr %call14, ptr %one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero_r) #3
  %call15 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_ZERO)
  store ptr %call15, ptr %zero_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one_r) #3
  %call16 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call16, ptr %minus_one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_r) #3
  %26 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %real = getelementptr inbounds %struct.dcomplex, ptr %26, i32 0, i32 0
  %27 = load double, ptr %real, align 8, !tbaa !21
  store double %27, ptr %alpha_r, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #3
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %28, i32 0, i32 1
  %29 = load double, ptr %imag, align 8, !tbaa !25
  store double %29, ptr %alpha_i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_next) #3
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call17 = call ptr @bli_auxinfo_next_a(ptr noundef %30)
  store ptr %call17, ptr %a_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_next) #3
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call18 = call ptr @bli_auxinfo_next_b(ptr noundef %31)
  store ptr %call18, ptr %b_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  %32 = load double, ptr %alpha_i, align 8, !tbaa !24
  %cmp = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %if.then
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %34 = load i64, ptr %m, align 8, !tbaa !4
  %cmp19 = icmp slt i64 %33, %34
  br i1 %cmp19, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n, align 8, !tbaa !4
  %cmp21 = icmp slt i64 %35, %36
  br i1 %cmp21, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr) #3
  %37 = load double, ptr %alpha_r, align 8, !tbaa !24
  %38 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %39 = load i64, ptr %i, align 8, !tbaa !4
  %40 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul23 = mul nsw i64 %39, %40
  %add.ptr24 = getelementptr inbounds double, ptr %38, i64 %mul23
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %mul25 = mul nsw i64 %41, 1
  %add.ptr26 = getelementptr inbounds double, ptr %add.ptr24, i64 %mul25
  %42 = load double, ptr %add.ptr26, align 8, !tbaa !24
  %43 = load double, ptr %alpha_i, align 8, !tbaa !24
  %44 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %45 = load i64, ptr %i, align 8, !tbaa !4
  %46 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul28 = mul nsw i64 %45, %46
  %add.ptr29 = getelementptr inbounds double, ptr %44, i64 %mul28
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %mul30 = mul nsw i64 %47, 1
  %add.ptr31 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul30
  %48 = load double, ptr %add.ptr31, align 8, !tbaa !24
  %mul32 = fmul double %43, %48
  %neg = fneg double %mul32
  %49 = call double @llvm.fmuladd.f64(double %37, double %42, double %neg)
  store double %49, ptr %yr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #3
  %50 = load double, ptr %alpha_i, align 8, !tbaa !24
  %51 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul33 = mul nsw i64 %52, %53
  %add.ptr34 = getelementptr inbounds double, ptr %51, i64 %mul33
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %mul35 = mul nsw i64 %54, 1
  %add.ptr36 = getelementptr inbounds double, ptr %add.ptr34, i64 %mul35
  %55 = load double, ptr %add.ptr36, align 8, !tbaa !24
  %56 = load double, ptr %alpha_r, align 8, !tbaa !24
  %57 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %58 = load i64, ptr %i, align 8, !tbaa !4
  %59 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul38 = mul nsw i64 %58, %59
  %add.ptr39 = getelementptr inbounds double, ptr %57, i64 %mul38
  %60 = load i64, ptr %j, align 8, !tbaa !4
  %mul40 = mul nsw i64 %60, 1
  %add.ptr41 = getelementptr inbounds double, ptr %add.ptr39, i64 %mul40
  %61 = load double, ptr %add.ptr41, align 8, !tbaa !24
  %mul42 = fmul double %56, %61
  %62 = call double @llvm.fmuladd.f64(double %50, double %55, double %mul42)
  store double %62, ptr %yi, align 8, !tbaa !24
  %63 = load double, ptr %yr, align 8, !tbaa !24
  %64 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %65 = load i64, ptr %i, align 8, !tbaa !4
  %66 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul43 = mul nsw i64 %65, %66
  %add.ptr44 = getelementptr inbounds double, ptr %64, i64 %mul43
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %mul45 = mul nsw i64 %67, 1
  %add.ptr46 = getelementptr inbounds double, ptr %add.ptr44, i64 %mul45
  store double %63, ptr %add.ptr46, align 8, !tbaa !24
  %68 = load double, ptr %yi, align 8, !tbaa !24
  %69 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul47 = mul nsw i64 %70, %71
  %add.ptr48 = getelementptr inbounds double, ptr %69, i64 %mul47
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %mul49 = mul nsw i64 %72, 1
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr48, i64 %mul49
  store double %68, ptr %add.ptr50, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %73 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %73, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.end:                                          ; preds = %for.cond20
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %74 = load i64, ptr %i, align 8, !tbaa !4
  %inc52 = add nsw i64 %74, 1
  store i64 %inc52, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end53:                                        ; preds = %for.cond
  %75 = load ptr, ptr %one_r, align 8, !tbaa !8
  %76 = load double, ptr %75, align 8, !tbaa !24
  store double %76, ptr %alpha_r, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %for.end53, %entry
  %77 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %78 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %79 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %81 = load i64, ptr %k.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %one_r, align 8, !tbaa !8
  %83 = load ptr, ptr %a1x_r, align 8, !tbaa !8
  %84 = load ptr, ptr %bx1_r, align 8, !tbaa !8
  %85 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [512 x double], ptr %ab_r, i64 0, i64 0
  %86 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %87 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %88 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %80(i64 noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %arraydecay, i64 noundef 1, i64 noundef %86, ptr noundef %87, ptr noundef %88)
  %89 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %90 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %91 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %89, ptr noundef %90, ptr noundef %91)
  %92 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %93 = load i64, ptr %k.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %one_r, align 8, !tbaa !8
  %95 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %96 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %97 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay54 = getelementptr inbounds [512 x double], ptr %ab_i, i64 0, i64 0
  %98 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %99 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %100 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %92(i64 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %arraydecay54, i64 noundef 1, i64 noundef %98, ptr noundef %99, ptr noundef %100)
  %101 = load ptr, ptr %a_next, align 8, !tbaa !8
  %102 = load ptr, ptr %b_next, align 8, !tbaa !8
  %103 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %105 = load i64, ptr %k.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %minus_one_r, align 8, !tbaa !8
  %107 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %108 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %109 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %110 = load i64, ptr %rs_b, align 8, !tbaa !4
  %111 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %112 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %104(i64 noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %alpha_r, ptr noundef %109, i64 noundef %110, i64 noundef 1, ptr noundef %111, ptr noundef %112)
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc98, %if.end
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %114 = load i64, ptr %m, align 8, !tbaa !4
  %cmp56 = icmp slt i64 %113, %114
  br i1 %cmp56, label %for.body57, label %for.end100

for.body57:                                       ; preds = %for.cond55
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc95, %for.body57
  %115 = load i64, ptr %j, align 8, !tbaa !4
  %116 = load i64, ptr %n, align 8, !tbaa !4
  %cmp59 = icmp slt i64 %115, %116
  br i1 %cmp59, label %for.body60, label %for.end97

for.body60:                                       ; preds = %for.cond58
  call void @llvm.lifetime.start.p0(i64 8, ptr %alphabeta_r) #3
  %arraydecay61 = getelementptr inbounds [512 x double], ptr %ab_r, i64 0, i64 0
  %117 = load i64, ptr %i, align 8, !tbaa !4
  %mul62 = mul nsw i64 %117, 1
  %add.ptr63 = getelementptr inbounds double, ptr %arraydecay61, i64 %mul62
  %118 = load i64, ptr %j, align 8, !tbaa !4
  %119 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul64 = mul nsw i64 %118, %119
  %add.ptr65 = getelementptr inbounds double, ptr %add.ptr63, i64 %mul64
  %120 = load double, ptr %add.ptr65, align 8, !tbaa !24
  store double %120, ptr %alphabeta_r, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %alphabeta_i) #3
  %arraydecay66 = getelementptr inbounds [512 x double], ptr %ab_i, i64 0, i64 0
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %mul67 = mul nsw i64 %121, 1
  %add.ptr68 = getelementptr inbounds double, ptr %arraydecay66, i64 %mul67
  %122 = load i64, ptr %j, align 8, !tbaa !4
  %123 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul69 = mul nsw i64 %122, %123
  %add.ptr70 = getelementptr inbounds double, ptr %add.ptr68, i64 %mul69
  %124 = load double, ptr %add.ptr70, align 8, !tbaa !24
  store double %124, ptr %alphabeta_i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11_r) #3
  %125 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %126 = load i64, ptr %i, align 8, !tbaa !4
  %127 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul71 = mul nsw i64 %126, %127
  %add.ptr72 = getelementptr inbounds double, ptr %125, i64 %mul71
  %128 = load i64, ptr %j, align 8, !tbaa !4
  %mul73 = mul nsw i64 %128, 1
  %add.ptr74 = getelementptr inbounds double, ptr %add.ptr72, i64 %mul73
  %129 = load double, ptr %add.ptr74, align 8, !tbaa !24
  store double %129, ptr %beta11_r, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11_i) #3
  %130 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %131 = load i64, ptr %i, align 8, !tbaa !4
  %132 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul75 = mul nsw i64 %131, %132
  %add.ptr76 = getelementptr inbounds double, ptr %130, i64 %mul75
  %133 = load i64, ptr %j, align 8, !tbaa !4
  %mul77 = mul nsw i64 %133, 1
  %add.ptr78 = getelementptr inbounds double, ptr %add.ptr76, i64 %mul77
  %134 = load double, ptr %add.ptr78, align 8, !tbaa !24
  store double %134, ptr %beta11_i, align 8, !tbaa !24
  %135 = load double, ptr %alpha_r, align 8, !tbaa !24
  %136 = load double, ptr %beta11_r, align 8, !tbaa !24
  %mul79 = fmul double %135, %136
  store double %mul79, ptr %beta11_r, align 8, !tbaa !24
  %137 = load double, ptr %beta11_r, align 8, !tbaa !24
  %138 = load double, ptr %alphabeta_r, align 8, !tbaa !24
  %sub = fsub double %137, %138
  store double %sub, ptr %beta11_r, align 8, !tbaa !24
  %139 = load double, ptr %beta11_r, align 8, !tbaa !24
  %140 = load double, ptr %alphabeta_i, align 8, !tbaa !24
  %add = fadd double %139, %140
  store double %add, ptr %beta11_r, align 8, !tbaa !24
  %141 = load double, ptr %beta11_i, align 8, !tbaa !24
  %142 = load double, ptr %alphabeta_r, align 8, !tbaa !24
  %add80 = fadd double %141, %142
  store double %add80, ptr %beta11_i, align 8, !tbaa !24
  %143 = load double, ptr %beta11_i, align 8, !tbaa !24
  %144 = load double, ptr %alphabeta_i, align 8, !tbaa !24
  %add81 = fadd double %143, %144
  store double %add81, ptr %beta11_i, align 8, !tbaa !24
  %145 = load double, ptr %beta11_r, align 8, !tbaa !24
  %146 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %147 = load i64, ptr %i, align 8, !tbaa !4
  %148 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul82 = mul nsw i64 %147, %148
  %add.ptr83 = getelementptr inbounds double, ptr %146, i64 %mul82
  %149 = load i64, ptr %j, align 8, !tbaa !4
  %mul84 = mul nsw i64 %149, 1
  %add.ptr85 = getelementptr inbounds double, ptr %add.ptr83, i64 %mul84
  store double %145, ptr %add.ptr85, align 8, !tbaa !24
  %150 = load double, ptr %beta11_i, align 8, !tbaa !24
  %151 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %152 = load i64, ptr %i, align 8, !tbaa !4
  %153 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul86 = mul nsw i64 %152, %153
  %add.ptr87 = getelementptr inbounds double, ptr %151, i64 %mul86
  %154 = load i64, ptr %j, align 8, !tbaa !4
  %mul88 = mul nsw i64 %154, 1
  %add.ptr89 = getelementptr inbounds double, ptr %add.ptr87, i64 %mul88
  store double %150, ptr %add.ptr89, align 8, !tbaa !24
  %155 = load double, ptr %beta11_r, align 8, !tbaa !24
  %156 = load double, ptr %beta11_i, align 8, !tbaa !24
  %add90 = fadd double %155, %156
  %157 = load ptr, ptr %b11_ri, align 8, !tbaa !8
  %158 = load i64, ptr %i, align 8, !tbaa !4
  %159 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul91 = mul nsw i64 %158, %159
  %add.ptr92 = getelementptr inbounds double, ptr %157, i64 %mul91
  %160 = load i64, ptr %j, align 8, !tbaa !4
  %mul93 = mul nsw i64 %160, 1
  %add.ptr94 = getelementptr inbounds double, ptr %add.ptr92, i64 %mul93
  store double %add90, ptr %add.ptr94, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alphabeta_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alphabeta_r) #3
  br label %for.inc95

for.inc95:                                        ; preds = %for.body60
  %161 = load i64, ptr %j, align 8, !tbaa !4
  %inc96 = add nsw i64 %161, 1
  store i64 %inc96, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.end97:                                        ; preds = %for.cond58
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %162 = load i64, ptr %i, align 8, !tbaa !4
  %inc99 = add nsw i64 %162, 1
  store i64 %inc99, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.end100:                                       ; preds = %for.cond55
  %163 = load ptr, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  %164 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %165 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %166 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %167 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %168 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %170 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %163(ptr noundef %164, ptr noundef %165, ptr noundef %166, i64 noundef %167, i64 noundef %168, ptr noundef %169, ptr noundef %170)
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_next) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_next) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_a) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ab) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ab) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgemm_ukr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_cgemmtrsm3m1_u_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
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
  %dt_r = alloca i32, align 4
  %rgemm_ukr = alloca ptr, align 8
  %ctrsm_vir_ukr = alloca ptr, align 8
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %ab_r = alloca [1024 x float], align 64
  %ab_i = alloca [1024 x float], align 64
  %rs_ab = alloca i64, align 8
  %cs_ab = alloca i64, align 8
  %is_a = alloca i64, align 8
  %is_b = alloca i64, align 8
  %a1x_r = alloca ptr, align 8
  %a1x_i = alloca ptr, align 8
  %a1x_ri = alloca ptr, align 8
  %bx1_r = alloca ptr, align 8
  %bx1_i = alloca ptr, align 8
  %bx1_ri = alloca ptr, align 8
  %b11_r = alloca ptr, align 8
  %b11_i = alloca ptr, align 8
  %b11_ri = alloca ptr, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %one_r = alloca ptr, align 8
  %zero_r = alloca ptr, align 8
  %minus_one_r = alloca ptr, align 8
  %alpha_r = alloca float, align 4
  %alpha_i = alloca float, align 4
  %a_next = alloca ptr, align 8
  %b_next = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %yr = alloca float, align 4
  %yi = alloca float, align 4
  %alphabeta_r = alloca float, align 4
  %alphabeta_i = alloca float, align 4
  %beta11_r = alloca float, align 4
  %beta11_i = alloca float, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 1, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_r) #3
  store i32 0, ptr %dt_r, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgemm_ukr) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 0, i32 noundef 0, ptr noundef %0)
  store ptr %call, ptr %rgemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call ptr @bli_cntx_get_l3_vir_ukr_dt(i32 noundef 1, i32 noundef 4, ptr noundef %1)
  store ptr %call1, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #3
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 1, ptr noundef %2)
  store i64 %call2, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #3
  %3 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call3 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 0, i32 noundef 2, ptr noundef %3)
  store i64 %call3, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #3
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 0, i32 noundef 2, ptr noundef %4)
  store i64 %call4, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #3
  %5 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %5, ptr %m, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  %6 = load i64, ptr %nr, align 8, !tbaa !4
  store i64 %6, ptr %n, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ab) #3
  store i64 1, ptr %rs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ab) #3
  %7 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %7, ptr %cs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_a) #3
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call5 = call i64 @bli_auxinfo_is_a(ptr noundef %8)
  store i64 %call5, ptr %is_a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_b) #3
  %9 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call6 = call i64 @bli_auxinfo_is_b(ptr noundef %9)
  store i64 %call6, ptr %is_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_r) #3
  %10 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %10, ptr %a1x_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_i) #3
  %11 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %12 = load i64, ptr %is_a, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds float, ptr %11, i64 %12
  store ptr %add.ptr, ptr %a1x_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_ri) #3
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load i64, ptr %is_a, align 8, !tbaa !4
  %mul = mul nsw i64 2, %14
  %add.ptr7 = getelementptr inbounds float, ptr %13, i64 %mul
  store ptr %add.ptr7, ptr %a1x_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_r) #3
  %15 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %15, ptr %bx1_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_i) #3
  %16 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %17 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr8 = getelementptr inbounds float, ptr %16, i64 %17
  store ptr %add.ptr8, ptr %bx1_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_ri) #3
  %18 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %19 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul9 = mul nsw i64 2, %19
  %add.ptr10 = getelementptr inbounds float, ptr %18, i64 %mul9
  store ptr %add.ptr10, ptr %bx1_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_r) #3
  %20 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  store ptr %20, ptr %b11_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_i) #3
  %21 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %22 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds float, ptr %21, i64 %22
  store ptr %add.ptr11, ptr %b11_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_ri) #3
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul12 = mul nsw i64 2, %24
  %add.ptr13 = getelementptr inbounds float, ptr %23, i64 %mul12
  store ptr %add.ptr13, ptr %b11_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #3
  %25 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %25, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #3
  store i64 1, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one_r) #3
  %call14 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_ONE)
  store ptr %call14, ptr %one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero_r) #3
  %call15 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_ZERO)
  store ptr %call15, ptr %zero_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one_r) #3
  %call16 = call ptr @bli_obj_buffer_for_const(i32 noundef 0, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call16, ptr %minus_one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_r) #3
  %26 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %real = getelementptr inbounds %struct.scomplex, ptr %26, i32 0, i32 0
  %27 = load float, ptr %real, align 4, !tbaa !11
  store float %27, ptr %alpha_r, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_i) #3
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %imag = getelementptr inbounds %struct.scomplex, ptr %28, i32 0, i32 1
  %29 = load float, ptr %imag, align 4, !tbaa !15
  store float %29, ptr %alpha_i, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_next) #3
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call17 = call ptr @bli_auxinfo_next_a(ptr noundef %30)
  store ptr %call17, ptr %a_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_next) #3
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call18 = call ptr @bli_auxinfo_next_b(ptr noundef %31)
  store ptr %call18, ptr %b_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  %32 = load float, ptr %alpha_i, align 4, !tbaa !14
  %cmp = fcmp oeq float %32, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %if.then
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %34 = load i64, ptr %m, align 8, !tbaa !4
  %cmp19 = icmp slt i64 %33, %34
  br i1 %cmp19, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n, align 8, !tbaa !4
  %cmp21 = icmp slt i64 %35, %36
  br i1 %cmp21, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr) #3
  %37 = load float, ptr %alpha_r, align 4, !tbaa !14
  %38 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %39 = load i64, ptr %i, align 8, !tbaa !4
  %40 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul23 = mul nsw i64 %39, %40
  %add.ptr24 = getelementptr inbounds float, ptr %38, i64 %mul23
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %mul25 = mul nsw i64 %41, 1
  %add.ptr26 = getelementptr inbounds float, ptr %add.ptr24, i64 %mul25
  %42 = load float, ptr %add.ptr26, align 4, !tbaa !14
  %43 = load float, ptr %alpha_i, align 4, !tbaa !14
  %44 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %45 = load i64, ptr %i, align 8, !tbaa !4
  %46 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul28 = mul nsw i64 %45, %46
  %add.ptr29 = getelementptr inbounds float, ptr %44, i64 %mul28
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %mul30 = mul nsw i64 %47, 1
  %add.ptr31 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul30
  %48 = load float, ptr %add.ptr31, align 4, !tbaa !14
  %mul32 = fmul float %43, %48
  %neg = fneg float %mul32
  %49 = call float @llvm.fmuladd.f32(float %37, float %42, float %neg)
  store float %49, ptr %yr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi) #3
  %50 = load float, ptr %alpha_i, align 4, !tbaa !14
  %51 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul33 = mul nsw i64 %52, %53
  %add.ptr34 = getelementptr inbounds float, ptr %51, i64 %mul33
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %mul35 = mul nsw i64 %54, 1
  %add.ptr36 = getelementptr inbounds float, ptr %add.ptr34, i64 %mul35
  %55 = load float, ptr %add.ptr36, align 4, !tbaa !14
  %56 = load float, ptr %alpha_r, align 4, !tbaa !14
  %57 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %58 = load i64, ptr %i, align 8, !tbaa !4
  %59 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul38 = mul nsw i64 %58, %59
  %add.ptr39 = getelementptr inbounds float, ptr %57, i64 %mul38
  %60 = load i64, ptr %j, align 8, !tbaa !4
  %mul40 = mul nsw i64 %60, 1
  %add.ptr41 = getelementptr inbounds float, ptr %add.ptr39, i64 %mul40
  %61 = load float, ptr %add.ptr41, align 4, !tbaa !14
  %mul42 = fmul float %56, %61
  %62 = call float @llvm.fmuladd.f32(float %50, float %55, float %mul42)
  store float %62, ptr %yi, align 4, !tbaa !14
  %63 = load float, ptr %yr, align 4, !tbaa !14
  %64 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %65 = load i64, ptr %i, align 8, !tbaa !4
  %66 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul43 = mul nsw i64 %65, %66
  %add.ptr44 = getelementptr inbounds float, ptr %64, i64 %mul43
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %mul45 = mul nsw i64 %67, 1
  %add.ptr46 = getelementptr inbounds float, ptr %add.ptr44, i64 %mul45
  store float %63, ptr %add.ptr46, align 4, !tbaa !14
  %68 = load float, ptr %yi, align 4, !tbaa !14
  %69 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul47 = mul nsw i64 %70, %71
  %add.ptr48 = getelementptr inbounds float, ptr %69, i64 %mul47
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %mul49 = mul nsw i64 %72, 1
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr48, i64 %mul49
  store float %68, ptr %add.ptr50, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %73 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %73, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.end:                                          ; preds = %for.cond20
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %74 = load i64, ptr %i, align 8, !tbaa !4
  %inc52 = add nsw i64 %74, 1
  store i64 %inc52, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end53:                                        ; preds = %for.cond
  %75 = load ptr, ptr %one_r, align 8, !tbaa !8
  %76 = load float, ptr %75, align 4, !tbaa !14
  store float %76, ptr %alpha_r, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %for.end53, %entry
  %77 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %78 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %79 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %81 = load i64, ptr %k.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %one_r, align 8, !tbaa !8
  %83 = load ptr, ptr %a1x_r, align 8, !tbaa !8
  %84 = load ptr, ptr %bx1_r, align 8, !tbaa !8
  %85 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [1024 x float], ptr %ab_r, i64 0, i64 0
  %86 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %87 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %88 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %80(i64 noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %arraydecay, i64 noundef 1, i64 noundef %86, ptr noundef %87, ptr noundef %88)
  %89 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %90 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %91 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %89, ptr noundef %90, ptr noundef %91)
  %92 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %93 = load i64, ptr %k.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %one_r, align 8, !tbaa !8
  %95 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %96 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %97 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay54 = getelementptr inbounds [1024 x float], ptr %ab_i, i64 0, i64 0
  %98 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %99 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %100 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %92(i64 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %arraydecay54, i64 noundef 1, i64 noundef %98, ptr noundef %99, ptr noundef %100)
  %101 = load ptr, ptr %a_next, align 8, !tbaa !8
  %102 = load ptr, ptr %b_next, align 8, !tbaa !8
  %103 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %105 = load i64, ptr %k.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %minus_one_r, align 8, !tbaa !8
  %107 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %108 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %109 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %110 = load i64, ptr %rs_b, align 8, !tbaa !4
  %111 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %112 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %104(i64 noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %alpha_r, ptr noundef %109, i64 noundef %110, i64 noundef 1, ptr noundef %111, ptr noundef %112)
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc98, %if.end
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %114 = load i64, ptr %m, align 8, !tbaa !4
  %cmp56 = icmp slt i64 %113, %114
  br i1 %cmp56, label %for.body57, label %for.end100

for.body57:                                       ; preds = %for.cond55
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc95, %for.body57
  %115 = load i64, ptr %j, align 8, !tbaa !4
  %116 = load i64, ptr %n, align 8, !tbaa !4
  %cmp59 = icmp slt i64 %115, %116
  br i1 %cmp59, label %for.body60, label %for.end97

for.body60:                                       ; preds = %for.cond58
  call void @llvm.lifetime.start.p0(i64 4, ptr %alphabeta_r) #3
  %arraydecay61 = getelementptr inbounds [1024 x float], ptr %ab_r, i64 0, i64 0
  %117 = load i64, ptr %i, align 8, !tbaa !4
  %mul62 = mul nsw i64 %117, 1
  %add.ptr63 = getelementptr inbounds float, ptr %arraydecay61, i64 %mul62
  %118 = load i64, ptr %j, align 8, !tbaa !4
  %119 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul64 = mul nsw i64 %118, %119
  %add.ptr65 = getelementptr inbounds float, ptr %add.ptr63, i64 %mul64
  %120 = load float, ptr %add.ptr65, align 4, !tbaa !14
  store float %120, ptr %alphabeta_r, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %alphabeta_i) #3
  %arraydecay66 = getelementptr inbounds [1024 x float], ptr %ab_i, i64 0, i64 0
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %mul67 = mul nsw i64 %121, 1
  %add.ptr68 = getelementptr inbounds float, ptr %arraydecay66, i64 %mul67
  %122 = load i64, ptr %j, align 8, !tbaa !4
  %123 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul69 = mul nsw i64 %122, %123
  %add.ptr70 = getelementptr inbounds float, ptr %add.ptr68, i64 %mul69
  %124 = load float, ptr %add.ptr70, align 4, !tbaa !14
  store float %124, ptr %alphabeta_i, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %beta11_r) #3
  %125 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %126 = load i64, ptr %i, align 8, !tbaa !4
  %127 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul71 = mul nsw i64 %126, %127
  %add.ptr72 = getelementptr inbounds float, ptr %125, i64 %mul71
  %128 = load i64, ptr %j, align 8, !tbaa !4
  %mul73 = mul nsw i64 %128, 1
  %add.ptr74 = getelementptr inbounds float, ptr %add.ptr72, i64 %mul73
  %129 = load float, ptr %add.ptr74, align 4, !tbaa !14
  store float %129, ptr %beta11_r, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %beta11_i) #3
  %130 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %131 = load i64, ptr %i, align 8, !tbaa !4
  %132 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul75 = mul nsw i64 %131, %132
  %add.ptr76 = getelementptr inbounds float, ptr %130, i64 %mul75
  %133 = load i64, ptr %j, align 8, !tbaa !4
  %mul77 = mul nsw i64 %133, 1
  %add.ptr78 = getelementptr inbounds float, ptr %add.ptr76, i64 %mul77
  %134 = load float, ptr %add.ptr78, align 4, !tbaa !14
  store float %134, ptr %beta11_i, align 4, !tbaa !14
  %135 = load float, ptr %alpha_r, align 4, !tbaa !14
  %136 = load float, ptr %beta11_r, align 4, !tbaa !14
  %mul79 = fmul float %135, %136
  store float %mul79, ptr %beta11_r, align 4, !tbaa !14
  %137 = load float, ptr %beta11_r, align 4, !tbaa !14
  %138 = load float, ptr %alphabeta_r, align 4, !tbaa !14
  %sub = fsub float %137, %138
  store float %sub, ptr %beta11_r, align 4, !tbaa !14
  %139 = load float, ptr %beta11_r, align 4, !tbaa !14
  %140 = load float, ptr %alphabeta_i, align 4, !tbaa !14
  %add = fadd float %139, %140
  store float %add, ptr %beta11_r, align 4, !tbaa !14
  %141 = load float, ptr %beta11_i, align 4, !tbaa !14
  %142 = load float, ptr %alphabeta_r, align 4, !tbaa !14
  %add80 = fadd float %141, %142
  store float %add80, ptr %beta11_i, align 4, !tbaa !14
  %143 = load float, ptr %beta11_i, align 4, !tbaa !14
  %144 = load float, ptr %alphabeta_i, align 4, !tbaa !14
  %add81 = fadd float %143, %144
  store float %add81, ptr %beta11_i, align 4, !tbaa !14
  %145 = load float, ptr %beta11_r, align 4, !tbaa !14
  %146 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %147 = load i64, ptr %i, align 8, !tbaa !4
  %148 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul82 = mul nsw i64 %147, %148
  %add.ptr83 = getelementptr inbounds float, ptr %146, i64 %mul82
  %149 = load i64, ptr %j, align 8, !tbaa !4
  %mul84 = mul nsw i64 %149, 1
  %add.ptr85 = getelementptr inbounds float, ptr %add.ptr83, i64 %mul84
  store float %145, ptr %add.ptr85, align 4, !tbaa !14
  %150 = load float, ptr %beta11_i, align 4, !tbaa !14
  %151 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %152 = load i64, ptr %i, align 8, !tbaa !4
  %153 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul86 = mul nsw i64 %152, %153
  %add.ptr87 = getelementptr inbounds float, ptr %151, i64 %mul86
  %154 = load i64, ptr %j, align 8, !tbaa !4
  %mul88 = mul nsw i64 %154, 1
  %add.ptr89 = getelementptr inbounds float, ptr %add.ptr87, i64 %mul88
  store float %150, ptr %add.ptr89, align 4, !tbaa !14
  %155 = load float, ptr %beta11_r, align 4, !tbaa !14
  %156 = load float, ptr %beta11_i, align 4, !tbaa !14
  %add90 = fadd float %155, %156
  %157 = load ptr, ptr %b11_ri, align 8, !tbaa !8
  %158 = load i64, ptr %i, align 8, !tbaa !4
  %159 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul91 = mul nsw i64 %158, %159
  %add.ptr92 = getelementptr inbounds float, ptr %157, i64 %mul91
  %160 = load i64, ptr %j, align 8, !tbaa !4
  %mul93 = mul nsw i64 %160, 1
  %add.ptr94 = getelementptr inbounds float, ptr %add.ptr92, i64 %mul93
  store float %add90, ptr %add.ptr94, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %beta11_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %beta11_r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alphabeta_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alphabeta_r) #3
  br label %for.inc95

for.inc95:                                        ; preds = %for.body60
  %161 = load i64, ptr %j, align 8, !tbaa !4
  %inc96 = add nsw i64 %161, 1
  store i64 %inc96, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.end97:                                        ; preds = %for.cond58
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %162 = load i64, ptr %i, align 8, !tbaa !4
  %inc99 = add nsw i64 %162, 1
  store i64 %inc99, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.end100:                                       ; preds = %for.cond55
  %163 = load ptr, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  %164 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %165 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %166 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %167 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %168 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %170 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %163(ptr noundef %164, ptr noundef %165, ptr noundef %166, i64 noundef %167, i64 noundef %168, ptr noundef %169, ptr noundef %170)
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_next) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_next) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_a) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ab) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ab) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgemm_ukr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bli_zgemmtrsm3m1_u_zen2_ref(i64 noundef %k, ptr noalias noundef %alpha, ptr noalias noundef %a1x, ptr noalias noundef %a11, ptr noalias noundef %bx1, ptr noalias noundef %b11, ptr noalias noundef %c11, i64 noundef %rs_c, i64 noundef %cs_c, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
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
  %dt_r = alloca i32, align 4
  %rgemm_ukr = alloca ptr, align 8
  %ctrsm_vir_ukr = alloca ptr, align 8
  %mr = alloca i64, align 8
  %nr = alloca i64, align 8
  %packnr = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %ab_r = alloca [512 x double], align 64
  %ab_i = alloca [512 x double], align 64
  %rs_ab = alloca i64, align 8
  %cs_ab = alloca i64, align 8
  %is_a = alloca i64, align 8
  %is_b = alloca i64, align 8
  %a1x_r = alloca ptr, align 8
  %a1x_i = alloca ptr, align 8
  %a1x_ri = alloca ptr, align 8
  %bx1_r = alloca ptr, align 8
  %bx1_i = alloca ptr, align 8
  %bx1_ri = alloca ptr, align 8
  %b11_r = alloca ptr, align 8
  %b11_i = alloca ptr, align 8
  %b11_ri = alloca ptr, align 8
  %rs_b = alloca i64, align 8
  %cs_b = alloca i64, align 8
  %one_r = alloca ptr, align 8
  %zero_r = alloca ptr, align 8
  %minus_one_r = alloca ptr, align 8
  %alpha_r = alloca double, align 8
  %alpha_i = alloca double, align 8
  %a_next = alloca ptr, align 8
  %b_next = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  %alphabeta_r = alloca double, align 8
  %alphabeta_i = alloca double, align 8
  %beta11_r = alloca double, align 8
  %beta11_i = alloca double, align 8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt) #3
  store i32 3, ptr %dt, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %dt_r) #3
  store i32 2, ptr %dt_r, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgemm_ukr) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_get_l3_nat_ukr_dt(i32 noundef 2, i32 noundef 0, ptr noundef %0)
  store ptr %call, ptr %rgemm_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call1 = call ptr @bli_cntx_get_l3_vir_ukr_dt(i32 noundef 3, i32 noundef 4, ptr noundef %1)
  store ptr %call1, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mr) #3
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call2 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 1, ptr noundef %2)
  store i64 %call2, ptr %mr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr) #3
  %3 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call3 = call i64 @bli_cntx_get_blksz_def_dt(i32 noundef 2, i32 noundef 2, ptr noundef %3)
  store i64 %call3, ptr %nr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %packnr) #3
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call4 = call i64 @bli_cntx_get_blksz_max_dt(i32 noundef 2, i32 noundef 2, ptr noundef %4)
  store i64 %call4, ptr %packnr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #3
  %5 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %5, ptr %m, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  %6 = load i64, ptr %nr, align 8, !tbaa !4
  store i64 %6, ptr %n, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.start.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_ab) #3
  store i64 1, ptr %rs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_ab) #3
  %7 = load i64, ptr %mr, align 8, !tbaa !4
  store i64 %7, ptr %cs_ab, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_a) #3
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call5 = call i64 @bli_auxinfo_is_a(ptr noundef %8)
  store i64 %call5, ptr %is_a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_b) #3
  %9 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call6 = call i64 @bli_auxinfo_is_b(ptr noundef %9)
  store i64 %call6, ptr %is_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_r) #3
  %10 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  store ptr %10, ptr %a1x_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_i) #3
  %11 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %12 = load i64, ptr %is_a, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds double, ptr %11, i64 %12
  store ptr %add.ptr, ptr %a1x_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1x_ri) #3
  %13 = load ptr, ptr %a1x.addr, align 8, !tbaa !8
  %14 = load i64, ptr %is_a, align 8, !tbaa !4
  %mul = mul nsw i64 2, %14
  %add.ptr7 = getelementptr inbounds double, ptr %13, i64 %mul
  store ptr %add.ptr7, ptr %a1x_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_r) #3
  %15 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  store ptr %15, ptr %bx1_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_i) #3
  %16 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %17 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr8 = getelementptr inbounds double, ptr %16, i64 %17
  store ptr %add.ptr8, ptr %bx1_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bx1_ri) #3
  %18 = load ptr, ptr %bx1.addr, align 8, !tbaa !8
  %19 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul9 = mul nsw i64 2, %19
  %add.ptr10 = getelementptr inbounds double, ptr %18, i64 %mul9
  store ptr %add.ptr10, ptr %bx1_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_r) #3
  %20 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  store ptr %20, ptr %b11_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_i) #3
  %21 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %22 = load i64, ptr %is_b, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds double, ptr %21, i64 %22
  store ptr %add.ptr11, ptr %b11_i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b11_ri) #3
  %23 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %24 = load i64, ptr %is_b, align 8, !tbaa !4
  %mul12 = mul nsw i64 2, %24
  %add.ptr13 = getelementptr inbounds double, ptr %23, i64 %mul12
  store ptr %add.ptr13, ptr %b11_ri, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #3
  %25 = load i64, ptr %packnr, align 8, !tbaa !4
  store i64 %25, ptr %rs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_b) #3
  store i64 1, ptr %cs_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one_r) #3
  %call14 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_ONE)
  store ptr %call14, ptr %one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero_r) #3
  %call15 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_ZERO)
  store ptr %call15, ptr %zero_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_one_r) #3
  %call16 = call ptr @bli_obj_buffer_for_const(i32 noundef 2, ptr noundef @BLIS_MINUS_ONE)
  store ptr %call16, ptr %minus_one_r, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_r) #3
  %26 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %real = getelementptr inbounds %struct.dcomplex, ptr %26, i32 0, i32 0
  %27 = load double, ptr %real, align 8, !tbaa !21
  store double %27, ptr %alpha_r, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #3
  %28 = load ptr, ptr %alpha.addr, align 8, !tbaa !8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %28, i32 0, i32 1
  %29 = load double, ptr %imag, align 8, !tbaa !25
  store double %29, ptr %alpha_i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_next) #3
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call17 = call ptr @bli_auxinfo_next_a(ptr noundef %30)
  store ptr %call17, ptr %a_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_next) #3
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %call18 = call ptr @bli_auxinfo_next_b(ptr noundef %31)
  store ptr %call18, ptr %b_next, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  %32 = load double, ptr %alpha_i, align 8, !tbaa !24
  %cmp = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %if.then
  %33 = load i64, ptr %i, align 8, !tbaa !4
  %34 = load i64, ptr %m, align 8, !tbaa !4
  %cmp19 = icmp slt i64 %33, %34
  br i1 %cmp19, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body
  %35 = load i64, ptr %j, align 8, !tbaa !4
  %36 = load i64, ptr %n, align 8, !tbaa !4
  %cmp21 = icmp slt i64 %35, %36
  br i1 %cmp21, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 8, ptr %yr) #3
  %37 = load double, ptr %alpha_r, align 8, !tbaa !24
  %38 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %39 = load i64, ptr %i, align 8, !tbaa !4
  %40 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul23 = mul nsw i64 %39, %40
  %add.ptr24 = getelementptr inbounds double, ptr %38, i64 %mul23
  %41 = load i64, ptr %j, align 8, !tbaa !4
  %mul25 = mul nsw i64 %41, 1
  %add.ptr26 = getelementptr inbounds double, ptr %add.ptr24, i64 %mul25
  %42 = load double, ptr %add.ptr26, align 8, !tbaa !24
  %43 = load double, ptr %alpha_i, align 8, !tbaa !24
  %44 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %45 = load i64, ptr %i, align 8, !tbaa !4
  %46 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul28 = mul nsw i64 %45, %46
  %add.ptr29 = getelementptr inbounds double, ptr %44, i64 %mul28
  %47 = load i64, ptr %j, align 8, !tbaa !4
  %mul30 = mul nsw i64 %47, 1
  %add.ptr31 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul30
  %48 = load double, ptr %add.ptr31, align 8, !tbaa !24
  %mul32 = fmul double %43, %48
  %neg = fneg double %mul32
  %49 = call double @llvm.fmuladd.f64(double %37, double %42, double %neg)
  store double %49, ptr %yr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yi) #3
  %50 = load double, ptr %alpha_i, align 8, !tbaa !24
  %51 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %52 = load i64, ptr %i, align 8, !tbaa !4
  %53 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul33 = mul nsw i64 %52, %53
  %add.ptr34 = getelementptr inbounds double, ptr %51, i64 %mul33
  %54 = load i64, ptr %j, align 8, !tbaa !4
  %mul35 = mul nsw i64 %54, 1
  %add.ptr36 = getelementptr inbounds double, ptr %add.ptr34, i64 %mul35
  %55 = load double, ptr %add.ptr36, align 8, !tbaa !24
  %56 = load double, ptr %alpha_r, align 8, !tbaa !24
  %57 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %58 = load i64, ptr %i, align 8, !tbaa !4
  %59 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul38 = mul nsw i64 %58, %59
  %add.ptr39 = getelementptr inbounds double, ptr %57, i64 %mul38
  %60 = load i64, ptr %j, align 8, !tbaa !4
  %mul40 = mul nsw i64 %60, 1
  %add.ptr41 = getelementptr inbounds double, ptr %add.ptr39, i64 %mul40
  %61 = load double, ptr %add.ptr41, align 8, !tbaa !24
  %mul42 = fmul double %56, %61
  %62 = call double @llvm.fmuladd.f64(double %50, double %55, double %mul42)
  store double %62, ptr %yi, align 8, !tbaa !24
  %63 = load double, ptr %yr, align 8, !tbaa !24
  %64 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %65 = load i64, ptr %i, align 8, !tbaa !4
  %66 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul43 = mul nsw i64 %65, %66
  %add.ptr44 = getelementptr inbounds double, ptr %64, i64 %mul43
  %67 = load i64, ptr %j, align 8, !tbaa !4
  %mul45 = mul nsw i64 %67, 1
  %add.ptr46 = getelementptr inbounds double, ptr %add.ptr44, i64 %mul45
  store double %63, ptr %add.ptr46, align 8, !tbaa !24
  %68 = load double, ptr %yi, align 8, !tbaa !24
  %69 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %70 = load i64, ptr %i, align 8, !tbaa !4
  %71 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul47 = mul nsw i64 %70, %71
  %add.ptr48 = getelementptr inbounds double, ptr %69, i64 %mul47
  %72 = load i64, ptr %j, align 8, !tbaa !4
  %mul49 = mul nsw i64 %72, 1
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr48, i64 %mul49
  store double %68, ptr %add.ptr50, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %yi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %yr) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %73 = load i64, ptr %j, align 8, !tbaa !4
  %inc = add nsw i64 %73, 1
  store i64 %inc, ptr %j, align 8, !tbaa !4
  br label %for.cond20

for.end:                                          ; preds = %for.cond20
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %74 = load i64, ptr %i, align 8, !tbaa !4
  %inc52 = add nsw i64 %74, 1
  store i64 %inc52, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end53:                                        ; preds = %for.cond
  %75 = load ptr, ptr %one_r, align 8, !tbaa !8
  %76 = load double, ptr %75, align 8, !tbaa !24
  store double %76, ptr %alpha_r, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %for.end53, %entry
  %77 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %78 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %79 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %81 = load i64, ptr %k.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %one_r, align 8, !tbaa !8
  %83 = load ptr, ptr %a1x_r, align 8, !tbaa !8
  %84 = load ptr, ptr %bx1_r, align 8, !tbaa !8
  %85 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [512 x double], ptr %ab_r, i64 0, i64 0
  %86 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %87 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %88 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %80(i64 noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %arraydecay, i64 noundef 1, i64 noundef %86, ptr noundef %87, ptr noundef %88)
  %89 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %90 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %91 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %89, ptr noundef %90, ptr noundef %91)
  %92 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %93 = load i64, ptr %k.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %one_r, align 8, !tbaa !8
  %95 = load ptr, ptr %a1x_i, align 8, !tbaa !8
  %96 = load ptr, ptr %bx1_i, align 8, !tbaa !8
  %97 = load ptr, ptr %zero_r, align 8, !tbaa !8
  %arraydecay54 = getelementptr inbounds [512 x double], ptr %ab_i, i64 0, i64 0
  %98 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %99 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %100 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %92(i64 noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef %arraydecay54, i64 noundef 1, i64 noundef %98, ptr noundef %99, ptr noundef %100)
  %101 = load ptr, ptr %a_next, align 8, !tbaa !8
  %102 = load ptr, ptr %b_next, align 8, !tbaa !8
  %103 = load ptr, ptr %data.addr, align 8, !tbaa !8
  call void @bli_auxinfo_set_next_ab(ptr noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %rgemm_ukr, align 8, !tbaa !8
  %105 = load i64, ptr %k.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %minus_one_r, align 8, !tbaa !8
  %107 = load ptr, ptr %a1x_ri, align 8, !tbaa !8
  %108 = load ptr, ptr %bx1_ri, align 8, !tbaa !8
  %109 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %110 = load i64, ptr %rs_b, align 8, !tbaa !4
  %111 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %112 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %104(i64 noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %alpha_r, ptr noundef %109, i64 noundef %110, i64 noundef 1, ptr noundef %111, ptr noundef %112)
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc98, %if.end
  %113 = load i64, ptr %i, align 8, !tbaa !4
  %114 = load i64, ptr %m, align 8, !tbaa !4
  %cmp56 = icmp slt i64 %113, %114
  br i1 %cmp56, label %for.body57, label %for.end100

for.body57:                                       ; preds = %for.cond55
  store i64 0, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc95, %for.body57
  %115 = load i64, ptr %j, align 8, !tbaa !4
  %116 = load i64, ptr %n, align 8, !tbaa !4
  %cmp59 = icmp slt i64 %115, %116
  br i1 %cmp59, label %for.body60, label %for.end97

for.body60:                                       ; preds = %for.cond58
  call void @llvm.lifetime.start.p0(i64 8, ptr %alphabeta_r) #3
  %arraydecay61 = getelementptr inbounds [512 x double], ptr %ab_r, i64 0, i64 0
  %117 = load i64, ptr %i, align 8, !tbaa !4
  %mul62 = mul nsw i64 %117, 1
  %add.ptr63 = getelementptr inbounds double, ptr %arraydecay61, i64 %mul62
  %118 = load i64, ptr %j, align 8, !tbaa !4
  %119 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul64 = mul nsw i64 %118, %119
  %add.ptr65 = getelementptr inbounds double, ptr %add.ptr63, i64 %mul64
  %120 = load double, ptr %add.ptr65, align 8, !tbaa !24
  store double %120, ptr %alphabeta_r, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %alphabeta_i) #3
  %arraydecay66 = getelementptr inbounds [512 x double], ptr %ab_i, i64 0, i64 0
  %121 = load i64, ptr %i, align 8, !tbaa !4
  %mul67 = mul nsw i64 %121, 1
  %add.ptr68 = getelementptr inbounds double, ptr %arraydecay66, i64 %mul67
  %122 = load i64, ptr %j, align 8, !tbaa !4
  %123 = load i64, ptr %cs_ab, align 8, !tbaa !4
  %mul69 = mul nsw i64 %122, %123
  %add.ptr70 = getelementptr inbounds double, ptr %add.ptr68, i64 %mul69
  %124 = load double, ptr %add.ptr70, align 8, !tbaa !24
  store double %124, ptr %alphabeta_i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11_r) #3
  %125 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %126 = load i64, ptr %i, align 8, !tbaa !4
  %127 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul71 = mul nsw i64 %126, %127
  %add.ptr72 = getelementptr inbounds double, ptr %125, i64 %mul71
  %128 = load i64, ptr %j, align 8, !tbaa !4
  %mul73 = mul nsw i64 %128, 1
  %add.ptr74 = getelementptr inbounds double, ptr %add.ptr72, i64 %mul73
  %129 = load double, ptr %add.ptr74, align 8, !tbaa !24
  store double %129, ptr %beta11_r, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11_i) #3
  %130 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %131 = load i64, ptr %i, align 8, !tbaa !4
  %132 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul75 = mul nsw i64 %131, %132
  %add.ptr76 = getelementptr inbounds double, ptr %130, i64 %mul75
  %133 = load i64, ptr %j, align 8, !tbaa !4
  %mul77 = mul nsw i64 %133, 1
  %add.ptr78 = getelementptr inbounds double, ptr %add.ptr76, i64 %mul77
  %134 = load double, ptr %add.ptr78, align 8, !tbaa !24
  store double %134, ptr %beta11_i, align 8, !tbaa !24
  %135 = load double, ptr %alpha_r, align 8, !tbaa !24
  %136 = load double, ptr %beta11_r, align 8, !tbaa !24
  %mul79 = fmul double %135, %136
  store double %mul79, ptr %beta11_r, align 8, !tbaa !24
  %137 = load double, ptr %beta11_r, align 8, !tbaa !24
  %138 = load double, ptr %alphabeta_r, align 8, !tbaa !24
  %sub = fsub double %137, %138
  store double %sub, ptr %beta11_r, align 8, !tbaa !24
  %139 = load double, ptr %beta11_r, align 8, !tbaa !24
  %140 = load double, ptr %alphabeta_i, align 8, !tbaa !24
  %add = fadd double %139, %140
  store double %add, ptr %beta11_r, align 8, !tbaa !24
  %141 = load double, ptr %beta11_i, align 8, !tbaa !24
  %142 = load double, ptr %alphabeta_r, align 8, !tbaa !24
  %add80 = fadd double %141, %142
  store double %add80, ptr %beta11_i, align 8, !tbaa !24
  %143 = load double, ptr %beta11_i, align 8, !tbaa !24
  %144 = load double, ptr %alphabeta_i, align 8, !tbaa !24
  %add81 = fadd double %143, %144
  store double %add81, ptr %beta11_i, align 8, !tbaa !24
  %145 = load double, ptr %beta11_r, align 8, !tbaa !24
  %146 = load ptr, ptr %b11_r, align 8, !tbaa !8
  %147 = load i64, ptr %i, align 8, !tbaa !4
  %148 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul82 = mul nsw i64 %147, %148
  %add.ptr83 = getelementptr inbounds double, ptr %146, i64 %mul82
  %149 = load i64, ptr %j, align 8, !tbaa !4
  %mul84 = mul nsw i64 %149, 1
  %add.ptr85 = getelementptr inbounds double, ptr %add.ptr83, i64 %mul84
  store double %145, ptr %add.ptr85, align 8, !tbaa !24
  %150 = load double, ptr %beta11_i, align 8, !tbaa !24
  %151 = load ptr, ptr %b11_i, align 8, !tbaa !8
  %152 = load i64, ptr %i, align 8, !tbaa !4
  %153 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul86 = mul nsw i64 %152, %153
  %add.ptr87 = getelementptr inbounds double, ptr %151, i64 %mul86
  %154 = load i64, ptr %j, align 8, !tbaa !4
  %mul88 = mul nsw i64 %154, 1
  %add.ptr89 = getelementptr inbounds double, ptr %add.ptr87, i64 %mul88
  store double %150, ptr %add.ptr89, align 8, !tbaa !24
  %155 = load double, ptr %beta11_r, align 8, !tbaa !24
  %156 = load double, ptr %beta11_i, align 8, !tbaa !24
  %add90 = fadd double %155, %156
  %157 = load ptr, ptr %b11_ri, align 8, !tbaa !8
  %158 = load i64, ptr %i, align 8, !tbaa !4
  %159 = load i64, ptr %rs_b, align 8, !tbaa !4
  %mul91 = mul nsw i64 %158, %159
  %add.ptr92 = getelementptr inbounds double, ptr %157, i64 %mul91
  %160 = load i64, ptr %j, align 8, !tbaa !4
  %mul93 = mul nsw i64 %160, 1
  %add.ptr94 = getelementptr inbounds double, ptr %add.ptr92, i64 %mul93
  store double %add90, ptr %add.ptr94, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alphabeta_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alphabeta_r) #3
  br label %for.inc95

for.inc95:                                        ; preds = %for.body60
  %161 = load i64, ptr %j, align 8, !tbaa !4
  %inc96 = add nsw i64 %161, 1
  store i64 %inc96, ptr %j, align 8, !tbaa !4
  br label %for.cond58

for.end97:                                        ; preds = %for.cond58
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %162 = load i64, ptr %i, align 8, !tbaa !4
  %inc99 = add nsw i64 %162, 1
  store i64 %inc99, ptr %i, align 8, !tbaa !4
  br label %for.cond55

for.end100:                                       ; preds = %for.cond55
  %163 = load ptr, ptr %ctrsm_vir_ukr, align 8, !tbaa !8
  %164 = load ptr, ptr %a11.addr, align 8, !tbaa !8
  %165 = load ptr, ptr %b11.addr, align 8, !tbaa !8
  %166 = load ptr, ptr %c11.addr, align 8, !tbaa !8
  %167 = load i64, ptr %rs_c.addr, align 8, !tbaa !4
  %168 = load i64, ptr %cs_c.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %data.addr, align 8, !tbaa !8
  %170 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  call void %163(ptr noundef %164, ptr noundef %165, ptr noundef %166, i64 noundef %167, i64 noundef %168, ptr noundef %169, ptr noundef %170)
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_next) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_next) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %one_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b11_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bx1_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1x_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_b) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_a) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_ab) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_ab) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_i) #3
  call void @llvm.lifetime.end.p0(i64 4096, ptr %ab_r) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %packnr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrsm_vir_ukr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgemm_ukr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt_r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dt) #3
  ret void
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_l3_nat_ukrs_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %1 = load ptr, ptr %funcs, align 8, !tbaa !8
  %2 = load i32, ptr %ukr_id.addr, align 4, !tbaa !10
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !8
  %3 = load ptr, ptr %func, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #3
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
  %l3_nat_ukrs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [6 x %struct.func_s], ptr %l3_nat_ukrs, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l3_vir_ukrs(i32 noundef %ukr_id, ptr noundef %cntx) #0 {
entry:
  %ukr_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ukr_id, ptr %ukr_id.addr, align 4, !tbaa !10
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_l3_vir_ukrs_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #3
  %1 = load ptr, ptr %funcs, align 8, !tbaa !8
  %2 = load i32, ptr %ukr_id.addr, align 4, !tbaa !10
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !8
  %3 = load ptr, ptr %func, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #3
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_l3_vir_ukrs_buf(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %l3_vir_ukrs = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [6 x %struct.func_s], ptr %l3_vir_ukrs, i64 0, i64 0
  ret ptr %arraydecay
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %blkszs) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !8
  %call = call ptr @bli_cntx_blkszs_buf(ptr noundef %0)
  store ptr %call, ptr %blkszs, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %blksz) #3
  %1 = load ptr, ptr %blkszs, align 8, !tbaa !8
  %2 = load i32, ptr %bs_id.addr, align 4, !tbaa !10
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.blksz_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %blksz, align 8, !tbaa !8
  %3 = load ptr, ptr %blksz, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %blksz) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blkszs) #3
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
  %1 = load ptr, ptr %buffer, align 8, !tbaa !26
  ret ptr %1
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
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 4}
!13 = !{!"float", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!12, !13, i64 4}
!16 = !{!17, !5, i64 24}
!17 = !{!"", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!18 = !{!17, !5, i64 32}
!19 = !{!17, !9, i64 8}
!20 = !{!17, !9, i64 16}
!21 = !{!22, !23, i64 0}
!22 = !{!"", !23, i64 0, !23, i64 8}
!23 = !{!"double", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!22, !23, i64 8}
!26 = !{!27, !9, i64 64}
!27 = !{!"obj_s", !9, i64 0, !6, i64 8, !6, i64 24, !5, i64 40, !28, i64 48, !28, i64 52, !5, i64 56, !9, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !22, i64 96, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152}
!28 = !{!"int", !6, i64 0}

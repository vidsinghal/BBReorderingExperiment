; ModuleID = 'samples/404.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-igemm/gen/3x4-minmax-fp32-scalar-imagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i32, float, float, i32, i32, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
entry:
  %mr.addr = alloca i64, align 8
  %nc.addr = alloca i64, align 8
  %kc.addr = alloca i64, align 8
  %ks.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cm_stride.addr = alloca i64, align 8
  %cn_stride.addr = alloca i64, align 8
  %a_offset.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %c1 = alloca ptr, align 8
  %c2 = alloca ptr, align 8
  %vb_zero_point = alloca i32, align 4
  %vacc0x0 = alloca i32, align 4
  %vacc0x1 = alloca i32, align 4
  %vacc0x2 = alloca i32, align 4
  %vacc0x3 = alloca i32, align 4
  %vacc1x0 = alloca i32, align 4
  %vacc1x1 = alloca i32, align 4
  %vacc1x2 = alloca i32, align 4
  %vacc1x3 = alloca i32, align 4
  %vacc2x0 = alloca i32, align 4
  %vacc2x1 = alloca i32, align 4
  %vacc2x2 = alloca i32, align 4
  %vacc2x3 = alloca i32, align 4
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca i32, align 4
  %va1 = alloca i32, align 4
  %va2 = alloca i32, align 4
  %vb0 = alloca i32, align 4
  %vb1 = alloca i32, align 4
  %vb2 = alloca i32, align 4
  %vb3 = alloca i32, align 4
  %vfpacc0x0 = alloca float, align 4
  %vfpacc0x1 = alloca float, align 4
  %vfpacc0x2 = alloca float, align 4
  %vfpacc0x3 = alloca float, align 4
  %vfpacc1x0 = alloca float, align 4
  %vfpacc1x1 = alloca float, align 4
  %vfpacc1x2 = alloca float, align 4
  %vfpacc1x3 = alloca float, align 4
  %vfpacc2x0 = alloca float, align 4
  %vfpacc2x1 = alloca float, align 4
  %vfpacc2x2 = alloca float, align 4
  %vfpacc2x3 = alloca float, align 4
  %vscale = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vout0x0 = alloca i32, align 4
  %vout0x1 = alloca i32, align 4
  %vout0x2 = alloca i32, align 4
  %vout0x3 = alloca i32, align 4
  %vout1x0 = alloca i32, align 4
  %vout1x1 = alloca i32, align 4
  %vout1x2 = alloca i32, align 4
  %vout1x3 = alloca i32, align 4
  %vout2x0 = alloca i32, align 4
  %vout2x1 = alloca i32, align 4
  %vout2x2 = alloca i32, align 4
  %vout2x3 = alloca i32, align 4
  %vmagic_min = alloca i32, align 4
  %vmagic_max = alloca i32, align 4
  %vmagic_bias_less_zero_point = alloca i32, align 4
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !5
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !5
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !5
  store i64 %ks, ptr %ks.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !5
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !5
  store i64 %a_offset, ptr %a_offset.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %0, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #4
  %1 = load ptr, ptr %c0, align 8, !tbaa !9
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %c1, align 8, !tbaa !9
  %5 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %5, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %c0, align 8, !tbaa !9
  store ptr %6, ptr %c1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #4
  %7 = load ptr, ptr %c1, align 8, !tbaa !9
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add2 = add i64 %8, %9
  %10 = inttoptr i64 %add2 to ptr
  store ptr %10, ptr %c2, align 8, !tbaa !9
  %11 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp3 = icmp ule i64 %11, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %c1, align 8, !tbaa !9
  store ptr %12, ptr %c2, align 8, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb_zero_point) #4
  %13 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %kernel_zero_point = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %kernel_zero_point, align 64, !tbaa !12
  store i32 %14, ptr %vb_zero_point, align 4, !tbaa !13
  br label %do.body

do.body:                                          ; preds = %do.cond253, %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x0) #4
  %15 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %15, i64 0
  %16 = load i32, ptr %arrayidx, align 4, !tbaa !13
  store i32 %16, ptr %vacc0x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x1) #4
  %17 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds i32, ptr %17, i64 1
  %18 = load i32, ptr %arrayidx13, align 4, !tbaa !13
  store i32 %18, ptr %vacc0x1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x2) #4
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds i32, ptr %19, i64 2
  %20 = load i32, ptr %arrayidx14, align 4, !tbaa !13
  store i32 %20, ptr %vacc0x2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x3) #4
  %21 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds i32, ptr %21, i64 3
  %22 = load i32, ptr %arrayidx15, align 4, !tbaa !13
  store i32 %22, ptr %vacc0x3, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x0) #4
  %23 = load i32, ptr %vacc0x0, align 4, !tbaa !13
  store i32 %23, ptr %vacc1x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x1) #4
  %24 = load i32, ptr %vacc0x1, align 4, !tbaa !13
  store i32 %24, ptr %vacc1x1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x2) #4
  %25 = load i32, ptr %vacc0x2, align 4, !tbaa !13
  store i32 %25, ptr %vacc1x2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x3) #4
  %26 = load i32, ptr %vacc0x3, align 4, !tbaa !13
  store i32 %26, ptr %vacc1x3, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x0) #4
  %27 = load i32, ptr %vacc0x0, align 4, !tbaa !13
  store i32 %27, ptr %vacc2x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x1) #4
  %28 = load i32, ptr %vacc0x1, align 4, !tbaa !13
  store i32 %28, ptr %vacc2x1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x2) #4
  %29 = load i32, ptr %vacc0x2, align 4, !tbaa !13
  store i32 %29, ptr %vacc2x2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x3) #4
  %30 = load i32, ptr %vacc0x3, align 4, !tbaa !13
  store i32 %30, ptr %vacc2x3, align 4, !tbaa !13
  %31 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %31, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %32 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %32, ptr %p, align 8, !tbaa !5
  br label %do.body16

do.body16:                                        ; preds = %do.cond99, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %33 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx17 = getelementptr inbounds ptr, ptr %33, i64 0
  %34 = load ptr, ptr %arrayidx17, align 8, !tbaa !9
  store ptr %34, ptr %a0, align 8, !tbaa !9
  %35 = load ptr, ptr %a0, align 8, !tbaa !9
  %36 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp18 = icmp ne ptr %35, %36
  %lnot20 = xor i1 %cmp18, true
  %lnot22 = xor i1 %lnot20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %tobool25 = icmp ne i64 %conv24, 0
  br i1 %tobool25, label %if.then26, label %if.end28, !unpredictable !11

if.then26:                                        ; preds = %do.body16
  %37 = load ptr, ptr %a0, align 8, !tbaa !9
  %38 = ptrtoint ptr %37 to i64
  %39 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add27 = add i64 %38, %39
  %40 = inttoptr i64 %add27 to ptr
  store ptr %40, ptr %a0, align 8, !tbaa !9
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.body16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #4
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx29 = getelementptr inbounds ptr, ptr %41, i64 1
  %42 = load ptr, ptr %arrayidx29, align 8, !tbaa !9
  store ptr %42, ptr %a1, align 8, !tbaa !9
  %43 = load ptr, ptr %a1, align 8, !tbaa !9
  %44 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp30 = icmp ne ptr %43, %44
  %lnot32 = xor i1 %cmp30, true
  %lnot34 = xor i1 %lnot32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %if.then38, label %if.end40, !unpredictable !11

if.then38:                                        ; preds = %if.end28
  %45 = load ptr, ptr %a1, align 8, !tbaa !9
  %46 = ptrtoint ptr %45 to i64
  %47 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add39 = add i64 %46, %47
  %48 = inttoptr i64 %add39 to ptr
  store ptr %48, ptr %a1, align 8, !tbaa !9
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #4
  %49 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx41 = getelementptr inbounds ptr, ptr %49, i64 2
  %50 = load ptr, ptr %arrayidx41, align 8, !tbaa !9
  store ptr %50, ptr %a2, align 8, !tbaa !9
  %51 = load ptr, ptr %a2, align 8, !tbaa !9
  %52 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp42 = icmp ne ptr %51, %52
  %lnot44 = xor i1 %cmp42, true
  %lnot46 = xor i1 %lnot44, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %conv48 = sext i32 %lnot.ext47 to i64
  %tobool49 = icmp ne i64 %conv48, 0
  br i1 %tobool49, label %if.then50, label %if.end52, !unpredictable !11

if.then50:                                        ; preds = %if.end40
  %53 = load ptr, ptr %a2, align 8, !tbaa !9
  %54 = ptrtoint ptr %53 to i64
  %55 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add51 = add i64 %54, %55
  %56 = inttoptr i64 %add51 to ptr
  store ptr %56, ptr %a2, align 8, !tbaa !9
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end40
  %57 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr53 = getelementptr inbounds ptr, ptr %57, i64 3
  store ptr %add.ptr53, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %58 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %58, ptr %k, align 8, !tbaa !5
  br label %do.body54

do.body54:                                        ; preds = %do.cond, %if.end52
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %59 = load ptr, ptr %a0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %59, i32 1
  store ptr %incdec.ptr, ptr %a0, align 8, !tbaa !9
  %60 = load i8, ptr %59, align 1, !tbaa !12
  %conv55 = zext i8 %60 to i32
  store i32 %conv55, ptr %va0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #4
  %61 = load ptr, ptr %a1, align 8, !tbaa !9
  %incdec.ptr56 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr56, ptr %a1, align 8, !tbaa !9
  %62 = load i8, ptr %61, align 1, !tbaa !12
  %conv57 = zext i8 %62 to i32
  store i32 %conv57, ptr %va1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %va2) #4
  %63 = load ptr, ptr %a2, align 8, !tbaa !9
  %incdec.ptr58 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr58, ptr %a2, align 8, !tbaa !9
  %64 = load i8, ptr %63, align 1, !tbaa !12
  %conv59 = zext i8 %64 to i32
  store i32 %conv59, ptr %va2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %65 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx60 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx60, align 1, !tbaa !12
  %conv61 = zext i8 %66 to i32
  %67 = load i32, ptr %vb_zero_point, align 4, !tbaa !13
  %sub = sub nsw i32 %conv61, %67
  store i32 %sub, ptr %vb0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %68 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx62 = getelementptr inbounds i8, ptr %68, i64 1
  %69 = load i8, ptr %arrayidx62, align 1, !tbaa !12
  %conv63 = zext i8 %69 to i32
  %70 = load i32, ptr %vb_zero_point, align 4, !tbaa !13
  %sub64 = sub nsw i32 %conv63, %70
  store i32 %sub64, ptr %vb1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb2) #4
  %71 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx65 = getelementptr inbounds i8, ptr %71, i64 2
  %72 = load i8, ptr %arrayidx65, align 1, !tbaa !12
  %conv66 = zext i8 %72 to i32
  %73 = load i32, ptr %vb_zero_point, align 4, !tbaa !13
  %sub67 = sub nsw i32 %conv66, %73
  store i32 %sub67, ptr %vb2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb3) #4
  %74 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx68 = getelementptr inbounds i8, ptr %74, i64 3
  %75 = load i8, ptr %arrayidx68, align 1, !tbaa !12
  %conv69 = zext i8 %75 to i32
  %76 = load i32, ptr %vb_zero_point, align 4, !tbaa !13
  %sub70 = sub nsw i32 %conv69, %76
  store i32 %sub70, ptr %vb3, align 4, !tbaa !13
  %77 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr71 = getelementptr inbounds i8, ptr %77, i64 4
  store ptr %add.ptr71, ptr %w.addr, align 8, !tbaa !9
  %78 = load i32, ptr %va0, align 4, !tbaa !13
  %79 = load i32, ptr %vb0, align 4, !tbaa !13
  %mul = mul nsw i32 %78, %79
  %80 = load i32, ptr %vacc0x0, align 4, !tbaa !13
  %add72 = add nsw i32 %80, %mul
  store i32 %add72, ptr %vacc0x0, align 4, !tbaa !13
  %81 = load i32, ptr %va0, align 4, !tbaa !13
  %82 = load i32, ptr %vb1, align 4, !tbaa !13
  %mul73 = mul nsw i32 %81, %82
  %83 = load i32, ptr %vacc0x1, align 4, !tbaa !13
  %add74 = add nsw i32 %83, %mul73
  store i32 %add74, ptr %vacc0x1, align 4, !tbaa !13
  %84 = load i32, ptr %va0, align 4, !tbaa !13
  %85 = load i32, ptr %vb2, align 4, !tbaa !13
  %mul75 = mul nsw i32 %84, %85
  %86 = load i32, ptr %vacc0x2, align 4, !tbaa !13
  %add76 = add nsw i32 %86, %mul75
  store i32 %add76, ptr %vacc0x2, align 4, !tbaa !13
  %87 = load i32, ptr %va0, align 4, !tbaa !13
  %88 = load i32, ptr %vb3, align 4, !tbaa !13
  %mul77 = mul nsw i32 %87, %88
  %89 = load i32, ptr %vacc0x3, align 4, !tbaa !13
  %add78 = add nsw i32 %89, %mul77
  store i32 %add78, ptr %vacc0x3, align 4, !tbaa !13
  %90 = load i32, ptr %va1, align 4, !tbaa !13
  %91 = load i32, ptr %vb0, align 4, !tbaa !13
  %mul79 = mul nsw i32 %90, %91
  %92 = load i32, ptr %vacc1x0, align 4, !tbaa !13
  %add80 = add nsw i32 %92, %mul79
  store i32 %add80, ptr %vacc1x0, align 4, !tbaa !13
  %93 = load i32, ptr %va1, align 4, !tbaa !13
  %94 = load i32, ptr %vb1, align 4, !tbaa !13
  %mul81 = mul nsw i32 %93, %94
  %95 = load i32, ptr %vacc1x1, align 4, !tbaa !13
  %add82 = add nsw i32 %95, %mul81
  store i32 %add82, ptr %vacc1x1, align 4, !tbaa !13
  %96 = load i32, ptr %va1, align 4, !tbaa !13
  %97 = load i32, ptr %vb2, align 4, !tbaa !13
  %mul83 = mul nsw i32 %96, %97
  %98 = load i32, ptr %vacc1x2, align 4, !tbaa !13
  %add84 = add nsw i32 %98, %mul83
  store i32 %add84, ptr %vacc1x2, align 4, !tbaa !13
  %99 = load i32, ptr %va1, align 4, !tbaa !13
  %100 = load i32, ptr %vb3, align 4, !tbaa !13
  %mul85 = mul nsw i32 %99, %100
  %101 = load i32, ptr %vacc1x3, align 4, !tbaa !13
  %add86 = add nsw i32 %101, %mul85
  store i32 %add86, ptr %vacc1x3, align 4, !tbaa !13
  %102 = load i32, ptr %va2, align 4, !tbaa !13
  %103 = load i32, ptr %vb0, align 4, !tbaa !13
  %mul87 = mul nsw i32 %102, %103
  %104 = load i32, ptr %vacc2x0, align 4, !tbaa !13
  %add88 = add nsw i32 %104, %mul87
  store i32 %add88, ptr %vacc2x0, align 4, !tbaa !13
  %105 = load i32, ptr %va2, align 4, !tbaa !13
  %106 = load i32, ptr %vb1, align 4, !tbaa !13
  %mul89 = mul nsw i32 %105, %106
  %107 = load i32, ptr %vacc2x1, align 4, !tbaa !13
  %add90 = add nsw i32 %107, %mul89
  store i32 %add90, ptr %vacc2x1, align 4, !tbaa !13
  %108 = load i32, ptr %va2, align 4, !tbaa !13
  %109 = load i32, ptr %vb2, align 4, !tbaa !13
  %mul91 = mul nsw i32 %108, %109
  %110 = load i32, ptr %vacc2x2, align 4, !tbaa !13
  %add92 = add nsw i32 %110, %mul91
  store i32 %add92, ptr %vacc2x2, align 4, !tbaa !13
  %111 = load i32, ptr %va2, align 4, !tbaa !13
  %112 = load i32, ptr %vb3, align 4, !tbaa !13
  %mul93 = mul nsw i32 %111, %112
  %113 = load i32, ptr %vacc2x3, align 4, !tbaa !13
  %add94 = add nsw i32 %113, %mul93
  store i32 %add94, ptr %vacc2x3, align 4, !tbaa !13
  %114 = load i64, ptr %k, align 8, !tbaa !5
  %sub95 = sub i64 %114, 1
  store i64 %sub95, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body54
  %115 = load i64, ptr %k, align 8, !tbaa !5
  %cmp96 = icmp ne i64 %115, 0
  br i1 %cmp96, label %do.body54, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %116 = load i64, ptr %p, align 8, !tbaa !5
  %sub98 = sub i64 %116, 24
  store i64 %sub98, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #4
  br label %do.cond99

do.cond99:                                        ; preds = %do.end
  %117 = load i64, ptr %p, align 8, !tbaa !5
  %cmp100 = icmp ne i64 %117, 0
  br i1 %cmp100, label %do.body16, label %do.end102, !llvm.loop !17

do.end102:                                        ; preds = %do.cond99
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x0) #4
  %118 = load i32, ptr %vacc0x0, align 4, !tbaa !13
  %conv103 = sitofp i32 %118 to float
  store float %conv103, ptr %vfpacc0x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x1) #4
  %119 = load i32, ptr %vacc0x1, align 4, !tbaa !13
  %conv104 = sitofp i32 %119 to float
  store float %conv104, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x2) #4
  %120 = load i32, ptr %vacc0x2, align 4, !tbaa !13
  %conv105 = sitofp i32 %120 to float
  store float %conv105, ptr %vfpacc0x2, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x3) #4
  %121 = load i32, ptr %vacc0x3, align 4, !tbaa !13
  %conv106 = sitofp i32 %121 to float
  store float %conv106, ptr %vfpacc0x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x0) #4
  %122 = load i32, ptr %vacc1x0, align 4, !tbaa !13
  %conv107 = sitofp i32 %122 to float
  store float %conv107, ptr %vfpacc1x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x1) #4
  %123 = load i32, ptr %vacc1x1, align 4, !tbaa !13
  %conv108 = sitofp i32 %123 to float
  store float %conv108, ptr %vfpacc1x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x2) #4
  %124 = load i32, ptr %vacc1x2, align 4, !tbaa !13
  %conv109 = sitofp i32 %124 to float
  store float %conv109, ptr %vfpacc1x2, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x3) #4
  %125 = load i32, ptr %vacc1x3, align 4, !tbaa !13
  %conv110 = sitofp i32 %125 to float
  store float %conv110, ptr %vfpacc1x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2x0) #4
  %126 = load i32, ptr %vacc2x0, align 4, !tbaa !13
  %conv111 = sitofp i32 %126 to float
  store float %conv111, ptr %vfpacc2x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2x1) #4
  %127 = load i32, ptr %vacc2x1, align 4, !tbaa !13
  %conv112 = sitofp i32 %127 to float
  store float %conv112, ptr %vfpacc2x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2x2) #4
  %128 = load i32, ptr %vacc2x2, align 4, !tbaa !13
  %conv113 = sitofp i32 %128 to float
  store float %conv113, ptr %vfpacc2x2, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2x3) #4
  %129 = load i32, ptr %vacc2x3, align 4, !tbaa !13
  %conv114 = sitofp i32 %129 to float
  store float %conv114, ptr %vfpacc2x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %130 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.0, ptr %130, i32 0, i32 1
  %131 = load float, ptr %scale, align 4, !tbaa !12
  store float %131, ptr %vscale, align 4, !tbaa !18
  %132 = load float, ptr %vscale, align 4, !tbaa !18
  %133 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %mul115 = fmul float %133, %132
  store float %mul115, ptr %vfpacc0x0, align 4, !tbaa !18
  %134 = load float, ptr %vscale, align 4, !tbaa !18
  %135 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %mul116 = fmul float %135, %134
  store float %mul116, ptr %vfpacc0x1, align 4, !tbaa !18
  %136 = load float, ptr %vscale, align 4, !tbaa !18
  %137 = load float, ptr %vfpacc0x2, align 4, !tbaa !18
  %mul117 = fmul float %137, %136
  store float %mul117, ptr %vfpacc0x2, align 4, !tbaa !18
  %138 = load float, ptr %vscale, align 4, !tbaa !18
  %139 = load float, ptr %vfpacc0x3, align 4, !tbaa !18
  %mul118 = fmul float %139, %138
  store float %mul118, ptr %vfpacc0x3, align 4, !tbaa !18
  %140 = load float, ptr %vscale, align 4, !tbaa !18
  %141 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %mul119 = fmul float %141, %140
  store float %mul119, ptr %vfpacc1x0, align 4, !tbaa !18
  %142 = load float, ptr %vscale, align 4, !tbaa !18
  %143 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %mul120 = fmul float %143, %142
  store float %mul120, ptr %vfpacc1x1, align 4, !tbaa !18
  %144 = load float, ptr %vscale, align 4, !tbaa !18
  %145 = load float, ptr %vfpacc1x2, align 4, !tbaa !18
  %mul121 = fmul float %145, %144
  store float %mul121, ptr %vfpacc1x2, align 4, !tbaa !18
  %146 = load float, ptr %vscale, align 4, !tbaa !18
  %147 = load float, ptr %vfpacc1x3, align 4, !tbaa !18
  %mul122 = fmul float %147, %146
  store float %mul122, ptr %vfpacc1x3, align 4, !tbaa !18
  %148 = load float, ptr %vscale, align 4, !tbaa !18
  %149 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %mul123 = fmul float %149, %148
  store float %mul123, ptr %vfpacc2x0, align 4, !tbaa !18
  %150 = load float, ptr %vscale, align 4, !tbaa !18
  %151 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %mul124 = fmul float %151, %150
  store float %mul124, ptr %vfpacc2x1, align 4, !tbaa !18
  %152 = load float, ptr %vscale, align 4, !tbaa !18
  %153 = load float, ptr %vfpacc2x2, align 4, !tbaa !18
  %mul125 = fmul float %153, %152
  store float %mul125, ptr %vfpacc2x2, align 4, !tbaa !18
  %154 = load float, ptr %vscale, align 4, !tbaa !18
  %155 = load float, ptr %vfpacc2x3, align 4, !tbaa !18
  %mul126 = fmul float %155, %154
  store float %mul126, ptr %vfpacc2x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %156 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %156, i32 0, i32 2
  %157 = load float, ptr %magic_bias, align 8, !tbaa !12
  store float %157, ptr %vmagic_bias, align 4, !tbaa !18
  %158 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %159 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %add127 = fadd float %159, %158
  store float %add127, ptr %vfpacc0x0, align 4, !tbaa !18
  %160 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %161 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %add128 = fadd float %161, %160
  store float %add128, ptr %vfpacc0x1, align 4, !tbaa !18
  %162 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %163 = load float, ptr %vfpacc0x2, align 4, !tbaa !18
  %add129 = fadd float %163, %162
  store float %add129, ptr %vfpacc0x2, align 4, !tbaa !18
  %164 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %165 = load float, ptr %vfpacc0x3, align 4, !tbaa !18
  %add130 = fadd float %165, %164
  store float %add130, ptr %vfpacc0x3, align 4, !tbaa !18
  %166 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %167 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %add131 = fadd float %167, %166
  store float %add131, ptr %vfpacc1x0, align 4, !tbaa !18
  %168 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %169 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %add132 = fadd float %169, %168
  store float %add132, ptr %vfpacc1x1, align 4, !tbaa !18
  %170 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %171 = load float, ptr %vfpacc1x2, align 4, !tbaa !18
  %add133 = fadd float %171, %170
  store float %add133, ptr %vfpacc1x2, align 4, !tbaa !18
  %172 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %173 = load float, ptr %vfpacc1x3, align 4, !tbaa !18
  %add134 = fadd float %173, %172
  store float %add134, ptr %vfpacc1x3, align 4, !tbaa !18
  %174 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %175 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %add135 = fadd float %175, %174
  store float %add135, ptr %vfpacc2x0, align 4, !tbaa !18
  %176 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %177 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %add136 = fadd float %177, %176
  store float %add136, ptr %vfpacc2x1, align 4, !tbaa !18
  %178 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %179 = load float, ptr %vfpacc2x2, align 4, !tbaa !18
  %add137 = fadd float %179, %178
  store float %add137, ptr %vfpacc2x2, align 4, !tbaa !18
  %180 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %181 = load float, ptr %vfpacc2x3, align 4, !tbaa !18
  %add138 = fadd float %181, %180
  store float %add138, ptr %vfpacc2x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x0) #4
  %182 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %call = call i32 @fp32_to_bits(float noundef %182)
  store i32 %call, ptr %vout0x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x1) #4
  %183 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %call139 = call i32 @fp32_to_bits(float noundef %183)
  store i32 %call139, ptr %vout0x1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x2) #4
  %184 = load float, ptr %vfpacc0x2, align 4, !tbaa !18
  %call140 = call i32 @fp32_to_bits(float noundef %184)
  store i32 %call140, ptr %vout0x2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x3) #4
  %185 = load float, ptr %vfpacc0x3, align 4, !tbaa !18
  %call141 = call i32 @fp32_to_bits(float noundef %185)
  store i32 %call141, ptr %vout0x3, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x0) #4
  %186 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %call142 = call i32 @fp32_to_bits(float noundef %186)
  store i32 %call142, ptr %vout1x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x1) #4
  %187 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %call143 = call i32 @fp32_to_bits(float noundef %187)
  store i32 %call143, ptr %vout1x1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x2) #4
  %188 = load float, ptr %vfpacc1x2, align 4, !tbaa !18
  %call144 = call i32 @fp32_to_bits(float noundef %188)
  store i32 %call144, ptr %vout1x2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x3) #4
  %189 = load float, ptr %vfpacc1x3, align 4, !tbaa !18
  %call145 = call i32 @fp32_to_bits(float noundef %189)
  store i32 %call145, ptr %vout1x3, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2x0) #4
  %190 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %call146 = call i32 @fp32_to_bits(float noundef %190)
  store i32 %call146, ptr %vout2x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2x1) #4
  %191 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %call147 = call i32 @fp32_to_bits(float noundef %191)
  store i32 %call147, ptr %vout2x1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2x2) #4
  %192 = load float, ptr %vfpacc2x2, align 4, !tbaa !18
  %call148 = call i32 @fp32_to_bits(float noundef %192)
  store i32 %call148, ptr %vout2x2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2x3) #4
  %193 = load float, ptr %vfpacc2x3, align 4, !tbaa !18
  %call149 = call i32 @fp32_to_bits(float noundef %193)
  store i32 %call149, ptr %vout2x3, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_min) #4
  %194 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_min = getelementptr inbounds %struct.anon.0, ptr %194, i32 0, i32 3
  %195 = load i32, ptr %magic_min, align 4, !tbaa !12
  store i32 %195, ptr %vmagic_min, align 4, !tbaa !13
  %196 = load i32, ptr %vout0x0, align 4, !tbaa !13
  %197 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call150 = call i32 @math_max_s32(i32 noundef %196, i32 noundef %197)
  store i32 %call150, ptr %vout0x0, align 4, !tbaa !13
  %198 = load i32, ptr %vout0x1, align 4, !tbaa !13
  %199 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call151 = call i32 @math_max_s32(i32 noundef %198, i32 noundef %199)
  store i32 %call151, ptr %vout0x1, align 4, !tbaa !13
  %200 = load i32, ptr %vout0x2, align 4, !tbaa !13
  %201 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call152 = call i32 @math_max_s32(i32 noundef %200, i32 noundef %201)
  store i32 %call152, ptr %vout0x2, align 4, !tbaa !13
  %202 = load i32, ptr %vout0x3, align 4, !tbaa !13
  %203 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call153 = call i32 @math_max_s32(i32 noundef %202, i32 noundef %203)
  store i32 %call153, ptr %vout0x3, align 4, !tbaa !13
  %204 = load i32, ptr %vout1x0, align 4, !tbaa !13
  %205 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call154 = call i32 @math_max_s32(i32 noundef %204, i32 noundef %205)
  store i32 %call154, ptr %vout1x0, align 4, !tbaa !13
  %206 = load i32, ptr %vout1x1, align 4, !tbaa !13
  %207 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call155 = call i32 @math_max_s32(i32 noundef %206, i32 noundef %207)
  store i32 %call155, ptr %vout1x1, align 4, !tbaa !13
  %208 = load i32, ptr %vout1x2, align 4, !tbaa !13
  %209 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call156 = call i32 @math_max_s32(i32 noundef %208, i32 noundef %209)
  store i32 %call156, ptr %vout1x2, align 4, !tbaa !13
  %210 = load i32, ptr %vout1x3, align 4, !tbaa !13
  %211 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call157 = call i32 @math_max_s32(i32 noundef %210, i32 noundef %211)
  store i32 %call157, ptr %vout1x3, align 4, !tbaa !13
  %212 = load i32, ptr %vout2x0, align 4, !tbaa !13
  %213 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call158 = call i32 @math_max_s32(i32 noundef %212, i32 noundef %213)
  store i32 %call158, ptr %vout2x0, align 4, !tbaa !13
  %214 = load i32, ptr %vout2x1, align 4, !tbaa !13
  %215 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call159 = call i32 @math_max_s32(i32 noundef %214, i32 noundef %215)
  store i32 %call159, ptr %vout2x1, align 4, !tbaa !13
  %216 = load i32, ptr %vout2x2, align 4, !tbaa !13
  %217 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call160 = call i32 @math_max_s32(i32 noundef %216, i32 noundef %217)
  store i32 %call160, ptr %vout2x2, align 4, !tbaa !13
  %218 = load i32, ptr %vout2x3, align 4, !tbaa !13
  %219 = load i32, ptr %vmagic_min, align 4, !tbaa !13
  %call161 = call i32 @math_max_s32(i32 noundef %218, i32 noundef %219)
  store i32 %call161, ptr %vout2x3, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_max) #4
  %220 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_max = getelementptr inbounds %struct.anon.0, ptr %220, i32 0, i32 4
  %221 = load i32, ptr %magic_max, align 16, !tbaa !12
  store i32 %221, ptr %vmagic_max, align 4, !tbaa !13
  %222 = load i32, ptr %vout0x0, align 4, !tbaa !13
  %223 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call162 = call i32 @math_min_s32(i32 noundef %222, i32 noundef %223)
  store i32 %call162, ptr %vout0x0, align 4, !tbaa !13
  %224 = load i32, ptr %vout0x1, align 4, !tbaa !13
  %225 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call163 = call i32 @math_min_s32(i32 noundef %224, i32 noundef %225)
  store i32 %call163, ptr %vout0x1, align 4, !tbaa !13
  %226 = load i32, ptr %vout0x2, align 4, !tbaa !13
  %227 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call164 = call i32 @math_min_s32(i32 noundef %226, i32 noundef %227)
  store i32 %call164, ptr %vout0x2, align 4, !tbaa !13
  %228 = load i32, ptr %vout0x3, align 4, !tbaa !13
  %229 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call165 = call i32 @math_min_s32(i32 noundef %228, i32 noundef %229)
  store i32 %call165, ptr %vout0x3, align 4, !tbaa !13
  %230 = load i32, ptr %vout1x0, align 4, !tbaa !13
  %231 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call166 = call i32 @math_min_s32(i32 noundef %230, i32 noundef %231)
  store i32 %call166, ptr %vout1x0, align 4, !tbaa !13
  %232 = load i32, ptr %vout1x1, align 4, !tbaa !13
  %233 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call167 = call i32 @math_min_s32(i32 noundef %232, i32 noundef %233)
  store i32 %call167, ptr %vout1x1, align 4, !tbaa !13
  %234 = load i32, ptr %vout1x2, align 4, !tbaa !13
  %235 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call168 = call i32 @math_min_s32(i32 noundef %234, i32 noundef %235)
  store i32 %call168, ptr %vout1x2, align 4, !tbaa !13
  %236 = load i32, ptr %vout1x3, align 4, !tbaa !13
  %237 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call169 = call i32 @math_min_s32(i32 noundef %236, i32 noundef %237)
  store i32 %call169, ptr %vout1x3, align 4, !tbaa !13
  %238 = load i32, ptr %vout2x0, align 4, !tbaa !13
  %239 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call170 = call i32 @math_min_s32(i32 noundef %238, i32 noundef %239)
  store i32 %call170, ptr %vout2x0, align 4, !tbaa !13
  %240 = load i32, ptr %vout2x1, align 4, !tbaa !13
  %241 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call171 = call i32 @math_min_s32(i32 noundef %240, i32 noundef %241)
  store i32 %call171, ptr %vout2x1, align 4, !tbaa !13
  %242 = load i32, ptr %vout2x2, align 4, !tbaa !13
  %243 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call172 = call i32 @math_min_s32(i32 noundef %242, i32 noundef %243)
  store i32 %call172, ptr %vout2x2, align 4, !tbaa !13
  %244 = load i32, ptr %vout2x3, align 4, !tbaa !13
  %245 = load i32, ptr %vmagic_max, align 4, !tbaa !13
  %call173 = call i32 @math_min_s32(i32 noundef %244, i32 noundef %245)
  store i32 %call173, ptr %vout2x3, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  %246 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %246, i32 0, i32 5
  %247 = load i32, ptr %magic_bias_less_zero_point, align 4, !tbaa !12
  store i32 %247, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %248 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %249 = load i32, ptr %vout0x0, align 4, !tbaa !13
  %sub174 = sub nsw i32 %249, %248
  store i32 %sub174, ptr %vout0x0, align 4, !tbaa !13
  %250 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %251 = load i32, ptr %vout0x1, align 4, !tbaa !13
  %sub175 = sub nsw i32 %251, %250
  store i32 %sub175, ptr %vout0x1, align 4, !tbaa !13
  %252 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %253 = load i32, ptr %vout0x2, align 4, !tbaa !13
  %sub176 = sub nsw i32 %253, %252
  store i32 %sub176, ptr %vout0x2, align 4, !tbaa !13
  %254 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %255 = load i32, ptr %vout0x3, align 4, !tbaa !13
  %sub177 = sub nsw i32 %255, %254
  store i32 %sub177, ptr %vout0x3, align 4, !tbaa !13
  %256 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %257 = load i32, ptr %vout1x0, align 4, !tbaa !13
  %sub178 = sub nsw i32 %257, %256
  store i32 %sub178, ptr %vout1x0, align 4, !tbaa !13
  %258 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %259 = load i32, ptr %vout1x1, align 4, !tbaa !13
  %sub179 = sub nsw i32 %259, %258
  store i32 %sub179, ptr %vout1x1, align 4, !tbaa !13
  %260 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %261 = load i32, ptr %vout1x2, align 4, !tbaa !13
  %sub180 = sub nsw i32 %261, %260
  store i32 %sub180, ptr %vout1x2, align 4, !tbaa !13
  %262 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %263 = load i32, ptr %vout1x3, align 4, !tbaa !13
  %sub181 = sub nsw i32 %263, %262
  store i32 %sub181, ptr %vout1x3, align 4, !tbaa !13
  %264 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %265 = load i32, ptr %vout2x0, align 4, !tbaa !13
  %sub182 = sub nsw i32 %265, %264
  store i32 %sub182, ptr %vout2x0, align 4, !tbaa !13
  %266 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %267 = load i32, ptr %vout2x1, align 4, !tbaa !13
  %sub183 = sub nsw i32 %267, %266
  store i32 %sub183, ptr %vout2x1, align 4, !tbaa !13
  %268 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %269 = load i32, ptr %vout2x2, align 4, !tbaa !13
  %sub184 = sub nsw i32 %269, %268
  store i32 %sub184, ptr %vout2x2, align 4, !tbaa !13
  %270 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !13
  %271 = load i32, ptr %vout2x3, align 4, !tbaa !13
  %sub185 = sub nsw i32 %271, %270
  store i32 %sub185, ptr %vout2x3, align 4, !tbaa !13
  %272 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp186 = icmp uge i64 %272, 4
  %lnot188 = xor i1 %cmp186, true
  %lnot190 = xor i1 %lnot188, true
  %lnot.ext191 = zext i1 %lnot190 to i32
  %conv192 = sext i32 %lnot.ext191 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv192, i64 1)
  %tobool193 = icmp ne i64 %expval, 0
  br i1 %tobool193, label %if.then194, label %if.else

if.then194:                                       ; preds = %do.end102
  %273 = load i32, ptr %vout2x0, align 4, !tbaa !13
  %conv195 = trunc i32 %273 to i8
  %274 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx196 = getelementptr inbounds i8, ptr %274, i64 0
  store i8 %conv195, ptr %arrayidx196, align 1, !tbaa !12
  %275 = load i32, ptr %vout2x1, align 4, !tbaa !13
  %conv197 = trunc i32 %275 to i8
  %276 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx198 = getelementptr inbounds i8, ptr %276, i64 1
  store i8 %conv197, ptr %arrayidx198, align 1, !tbaa !12
  %277 = load i32, ptr %vout2x2, align 4, !tbaa !13
  %conv199 = trunc i32 %277 to i8
  %278 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx200 = getelementptr inbounds i8, ptr %278, i64 2
  store i8 %conv199, ptr %arrayidx200, align 1, !tbaa !12
  %279 = load i32, ptr %vout2x3, align 4, !tbaa !13
  %conv201 = trunc i32 %279 to i8
  %280 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx202 = getelementptr inbounds i8, ptr %280, i64 3
  store i8 %conv201, ptr %arrayidx202, align 1, !tbaa !12
  %281 = load i32, ptr %vout1x0, align 4, !tbaa !13
  %conv203 = trunc i32 %281 to i8
  %282 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx204 = getelementptr inbounds i8, ptr %282, i64 0
  store i8 %conv203, ptr %arrayidx204, align 1, !tbaa !12
  %283 = load i32, ptr %vout1x1, align 4, !tbaa !13
  %conv205 = trunc i32 %283 to i8
  %284 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx206 = getelementptr inbounds i8, ptr %284, i64 1
  store i8 %conv205, ptr %arrayidx206, align 1, !tbaa !12
  %285 = load i32, ptr %vout1x2, align 4, !tbaa !13
  %conv207 = trunc i32 %285 to i8
  %286 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx208 = getelementptr inbounds i8, ptr %286, i64 2
  store i8 %conv207, ptr %arrayidx208, align 1, !tbaa !12
  %287 = load i32, ptr %vout1x3, align 4, !tbaa !13
  %conv209 = trunc i32 %287 to i8
  %288 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx210 = getelementptr inbounds i8, ptr %288, i64 3
  store i8 %conv209, ptr %arrayidx210, align 1, !tbaa !12
  %289 = load i32, ptr %vout0x0, align 4, !tbaa !13
  %conv211 = trunc i32 %289 to i8
  %290 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx212 = getelementptr inbounds i8, ptr %290, i64 0
  store i8 %conv211, ptr %arrayidx212, align 1, !tbaa !12
  %291 = load i32, ptr %vout0x1, align 4, !tbaa !13
  %conv213 = trunc i32 %291 to i8
  %292 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx214 = getelementptr inbounds i8, ptr %292, i64 1
  store i8 %conv213, ptr %arrayidx214, align 1, !tbaa !12
  %293 = load i32, ptr %vout0x2, align 4, !tbaa !13
  %conv215 = trunc i32 %293 to i8
  %294 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx216 = getelementptr inbounds i8, ptr %294, i64 2
  store i8 %conv215, ptr %arrayidx216, align 1, !tbaa !12
  %295 = load i32, ptr %vout0x3, align 4, !tbaa !13
  %conv217 = trunc i32 %295 to i8
  %296 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx218 = getelementptr inbounds i8, ptr %296, i64 3
  store i8 %conv217, ptr %arrayidx218, align 1, !tbaa !12
  %297 = load ptr, ptr %c2, align 8, !tbaa !9
  %298 = ptrtoint ptr %297 to i64
  %299 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add219 = add i64 %298, %299
  %300 = inttoptr i64 %add219 to ptr
  store ptr %300, ptr %c2, align 8, !tbaa !9
  %301 = load ptr, ptr %c1, align 8, !tbaa !9
  %302 = ptrtoint ptr %301 to i64
  %303 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add220 = add i64 %302, %303
  %304 = inttoptr i64 %add220 to ptr
  store ptr %304, ptr %c1, align 8, !tbaa !9
  %305 = load ptr, ptr %c0, align 8, !tbaa !9
  %306 = ptrtoint ptr %305 to i64
  %307 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add221 = add i64 %306, %307
  %308 = inttoptr i64 %add221 to ptr
  store ptr %308, ptr %c0, align 8, !tbaa !9
  %309 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %310 = ptrtoint ptr %309 to i64
  %311 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub222 = sub i64 %310, %311
  %312 = inttoptr i64 %sub222 to ptr
  store ptr %312, ptr %a.addr, align 8, !tbaa !9
  %313 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub223 = sub i64 %313, 4
  store i64 %sub223, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end252

if.else:                                          ; preds = %do.end102
  %314 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %314, 2
  %tobool224 = icmp ne i64 %and, 0
  br i1 %tobool224, label %if.then225, label %if.end241

if.then225:                                       ; preds = %if.else
  %315 = load i32, ptr %vout2x0, align 4, !tbaa !13
  %conv226 = trunc i32 %315 to i8
  %316 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx227 = getelementptr inbounds i8, ptr %316, i64 0
  store i8 %conv226, ptr %arrayidx227, align 1, !tbaa !12
  %317 = load i32, ptr %vout2x1, align 4, !tbaa !13
  %conv228 = trunc i32 %317 to i8
  %318 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx229 = getelementptr inbounds i8, ptr %318, i64 1
  store i8 %conv228, ptr %arrayidx229, align 1, !tbaa !12
  %319 = load i32, ptr %vout2x2, align 4, !tbaa !13
  store i32 %319, ptr %vout2x0, align 4, !tbaa !13
  %320 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr230 = getelementptr inbounds i8, ptr %320, i64 2
  store ptr %add.ptr230, ptr %c2, align 8, !tbaa !9
  %321 = load i32, ptr %vout1x0, align 4, !tbaa !13
  %conv231 = trunc i32 %321 to i8
  %322 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx232 = getelementptr inbounds i8, ptr %322, i64 0
  store i8 %conv231, ptr %arrayidx232, align 1, !tbaa !12
  %323 = load i32, ptr %vout1x1, align 4, !tbaa !13
  %conv233 = trunc i32 %323 to i8
  %324 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx234 = getelementptr inbounds i8, ptr %324, i64 1
  store i8 %conv233, ptr %arrayidx234, align 1, !tbaa !12
  %325 = load i32, ptr %vout1x2, align 4, !tbaa !13
  store i32 %325, ptr %vout1x0, align 4, !tbaa !13
  %326 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr235 = getelementptr inbounds i8, ptr %326, i64 2
  store ptr %add.ptr235, ptr %c1, align 8, !tbaa !9
  %327 = load i32, ptr %vout0x0, align 4, !tbaa !13
  %conv236 = trunc i32 %327 to i8
  %328 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx237 = getelementptr inbounds i8, ptr %328, i64 0
  store i8 %conv236, ptr %arrayidx237, align 1, !tbaa !12
  %329 = load i32, ptr %vout0x1, align 4, !tbaa !13
  %conv238 = trunc i32 %329 to i8
  %330 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx239 = getelementptr inbounds i8, ptr %330, i64 1
  store i8 %conv238, ptr %arrayidx239, align 1, !tbaa !12
  %331 = load i32, ptr %vout0x2, align 4, !tbaa !13
  store i32 %331, ptr %vout0x0, align 4, !tbaa !13
  %332 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr240 = getelementptr inbounds i8, ptr %332, i64 2
  store ptr %add.ptr240, ptr %c0, align 8, !tbaa !9
  br label %if.end241

if.end241:                                        ; preds = %if.then225, %if.else
  %333 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and242 = and i64 %333, 1
  %tobool243 = icmp ne i64 %and242, 0
  br i1 %tobool243, label %if.then244, label %if.end251

if.then244:                                       ; preds = %if.end241
  %334 = load i32, ptr %vout2x0, align 4, !tbaa !13
  %conv245 = trunc i32 %334 to i8
  %335 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx246 = getelementptr inbounds i8, ptr %335, i64 0
  store i8 %conv245, ptr %arrayidx246, align 1, !tbaa !12
  %336 = load i32, ptr %vout1x0, align 4, !tbaa !13
  %conv247 = trunc i32 %336 to i8
  %337 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx248 = getelementptr inbounds i8, ptr %337, i64 0
  store i8 %conv247, ptr %arrayidx248, align 1, !tbaa !12
  %338 = load i32, ptr %vout0x0, align 4, !tbaa !13
  %conv249 = trunc i32 %338 to i8
  %339 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx250 = getelementptr inbounds i8, ptr %339, i64 0
  store i8 %conv249, ptr %arrayidx250, align 1, !tbaa !12
  br label %if.end251

if.end251:                                        ; preds = %if.then244, %if.end241
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %if.then194
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x0) #4
  br label %do.cond253

do.cond253:                                       ; preds = %if.end252
  %340 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp254 = icmp ne i64 %340, 0
  br i1 %cmp254, label %do.body, label %do.end256, !llvm.loop !20

do.end256:                                        ; preds = %do.cond253
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #2 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !18
  store float %0, ptr %fp32, align 4, !tbaa !12
  %1 = load i32, ptr %fp32, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_max_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !13
  store i32 %b, ptr %b.addr, align 4, !tbaa !13
  %0 = load i32, ptr %a.addr, align 4, !tbaa !13
  %1 = load i32, ptr %b.addr, align 4, !tbaa !13
  %cmp = icmp sgt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_min_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !13
  store i32 %b, ptr %b.addr, align 4, !tbaa !13
  %0 = load i32, ptr %a.addr, align 4, !tbaa !13
  %1 = load i32, ptr %b.addr, align 4, !tbaa !13
  %cmp = icmp slt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = distinct !{!20, !16}

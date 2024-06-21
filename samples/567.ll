; ModuleID = 'samples/567.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-igemm/gen/2x4-minmax-fp32-scalar-imagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { float, float, i32, i32, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vacc0x0 = alloca i32, align 4
  %vacc0x1 = alloca i32, align 4
  %vacc0x2 = alloca i32, align 4
  %vacc0x3 = alloca i32, align 4
  %vacc1x0 = alloca i32, align 4
  %vacc1x1 = alloca i32, align 4
  %vacc1x2 = alloca i32, align 4
  %vacc1x3 = alloca i32, align 4
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca i32, align 4
  %va1 = alloca i32, align 4
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
  %cmp = icmp ne i64 %5, 2
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
  br label %do.body

do.body:                                          ; preds = %do.cond172, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x0) #4
  %7 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 0
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %8, ptr %vacc0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x1) #4
  %9 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds i32, ptr %9, i64 1
  %10 = load i32, ptr %arrayidx2, align 4, !tbaa !12
  store i32 %10, ptr %vacc0x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x2) #4
  %11 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds i32, ptr %11, i64 2
  %12 = load i32, ptr %arrayidx3, align 4, !tbaa !12
  store i32 %12, ptr %vacc0x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x3) #4
  %13 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds i32, ptr %13, i64 3
  %14 = load i32, ptr %arrayidx4, align 4, !tbaa !12
  store i32 %14, ptr %vacc0x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x0) #4
  %15 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  store i32 %15, ptr %vacc1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x1) #4
  %16 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  store i32 %16, ptr %vacc1x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x2) #4
  %17 = load i32, ptr %vacc0x2, align 4, !tbaa !12
  store i32 %17, ptr %vacc1x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x3) #4
  %18 = load i32, ptr %vacc0x3, align 4, !tbaa !12
  store i32 %18, ptr %vacc1x3, align 4, !tbaa !12
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %19, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %20 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %20, ptr %p, align 8, !tbaa !5
  br label %do.body5

do.body5:                                         ; preds = %do.cond62, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx6, align 8, !tbaa !9
  store ptr %22, ptr %a0, align 8, !tbaa !9
  %23 = load ptr, ptr %a0, align 8, !tbaa !9
  %24 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp7 = icmp ne ptr %23, %24
  %lnot9 = xor i1 %cmp7, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %conv13 = sext i32 %lnot.ext12 to i64
  %tobool14 = icmp ne i64 %conv13, 0
  br i1 %tobool14, label %if.then15, label %if.end17, !unpredictable !11

if.then15:                                        ; preds = %do.body5
  %25 = load ptr, ptr %a0, align 8, !tbaa !9
  %26 = ptrtoint ptr %25 to i64
  %27 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add16 = add i64 %26, %27
  %28 = inttoptr i64 %add16 to ptr
  store ptr %28, ptr %a0, align 8, !tbaa !9
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #4
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx18 = getelementptr inbounds ptr, ptr %29, i64 1
  %30 = load ptr, ptr %arrayidx18, align 8, !tbaa !9
  store ptr %30, ptr %a1, align 8, !tbaa !9
  %31 = load ptr, ptr %a1, align 8, !tbaa !9
  %32 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp19 = icmp ne ptr %31, %32
  %lnot21 = xor i1 %cmp19, true
  %lnot23 = xor i1 %lnot21, true
  %lnot.ext24 = zext i1 %lnot23 to i32
  %conv25 = sext i32 %lnot.ext24 to i64
  %tobool26 = icmp ne i64 %conv25, 0
  br i1 %tobool26, label %if.then27, label %if.end29, !unpredictable !11

if.then27:                                        ; preds = %if.end17
  %33 = load ptr, ptr %a1, align 8, !tbaa !9
  %34 = ptrtoint ptr %33 to i64
  %35 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add28 = add i64 %34, %35
  %36 = inttoptr i64 %add28 to ptr
  store ptr %36, ptr %a1, align 8, !tbaa !9
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end17
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr30 = getelementptr inbounds ptr, ptr %37, i64 2
  store ptr %add.ptr30, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %38 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %38, ptr %k, align 8, !tbaa !5
  br label %do.body31

do.body31:                                        ; preds = %do.cond, %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %39 = load ptr, ptr %a0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %a0, align 8, !tbaa !9
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %conv32 = sext i8 %40 to i32
  store i32 %conv32, ptr %va0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #4
  %41 = load ptr, ptr %a1, align 8, !tbaa !9
  %incdec.ptr33 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr33, ptr %a1, align 8, !tbaa !9
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %conv34 = sext i8 %42 to i32
  store i32 %conv34, ptr %va1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %43 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx35 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx35, align 1, !tbaa !14
  %conv36 = sext i8 %44 to i32
  store i32 %conv36, ptr %vb0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %45 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx37 = getelementptr inbounds i8, ptr %45, i64 1
  %46 = load i8, ptr %arrayidx37, align 1, !tbaa !14
  %conv38 = sext i8 %46 to i32
  store i32 %conv38, ptr %vb1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb2) #4
  %47 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx39 = getelementptr inbounds i8, ptr %47, i64 2
  %48 = load i8, ptr %arrayidx39, align 1, !tbaa !14
  %conv40 = sext i8 %48 to i32
  store i32 %conv40, ptr %vb2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb3) #4
  %49 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx41 = getelementptr inbounds i8, ptr %49, i64 3
  %50 = load i8, ptr %arrayidx41, align 1, !tbaa !14
  %conv42 = sext i8 %50 to i32
  store i32 %conv42, ptr %vb3, align 4, !tbaa !12
  %51 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr43 = getelementptr inbounds i8, ptr %51, i64 4
  store ptr %add.ptr43, ptr %w.addr, align 8, !tbaa !9
  %52 = load i32, ptr %va0, align 4, !tbaa !12
  %53 = load i32, ptr %vb0, align 4, !tbaa !12
  %mul = mul nsw i32 %52, %53
  %54 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  %add44 = add nsw i32 %54, %mul
  store i32 %add44, ptr %vacc0x0, align 4, !tbaa !12
  %55 = load i32, ptr %va0, align 4, !tbaa !12
  %56 = load i32, ptr %vb1, align 4, !tbaa !12
  %mul45 = mul nsw i32 %55, %56
  %57 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  %add46 = add nsw i32 %57, %mul45
  store i32 %add46, ptr %vacc0x1, align 4, !tbaa !12
  %58 = load i32, ptr %va0, align 4, !tbaa !12
  %59 = load i32, ptr %vb2, align 4, !tbaa !12
  %mul47 = mul nsw i32 %58, %59
  %60 = load i32, ptr %vacc0x2, align 4, !tbaa !12
  %add48 = add nsw i32 %60, %mul47
  store i32 %add48, ptr %vacc0x2, align 4, !tbaa !12
  %61 = load i32, ptr %va0, align 4, !tbaa !12
  %62 = load i32, ptr %vb3, align 4, !tbaa !12
  %mul49 = mul nsw i32 %61, %62
  %63 = load i32, ptr %vacc0x3, align 4, !tbaa !12
  %add50 = add nsw i32 %63, %mul49
  store i32 %add50, ptr %vacc0x3, align 4, !tbaa !12
  %64 = load i32, ptr %va1, align 4, !tbaa !12
  %65 = load i32, ptr %vb0, align 4, !tbaa !12
  %mul51 = mul nsw i32 %64, %65
  %66 = load i32, ptr %vacc1x0, align 4, !tbaa !12
  %add52 = add nsw i32 %66, %mul51
  store i32 %add52, ptr %vacc1x0, align 4, !tbaa !12
  %67 = load i32, ptr %va1, align 4, !tbaa !12
  %68 = load i32, ptr %vb1, align 4, !tbaa !12
  %mul53 = mul nsw i32 %67, %68
  %69 = load i32, ptr %vacc1x1, align 4, !tbaa !12
  %add54 = add nsw i32 %69, %mul53
  store i32 %add54, ptr %vacc1x1, align 4, !tbaa !12
  %70 = load i32, ptr %va1, align 4, !tbaa !12
  %71 = load i32, ptr %vb2, align 4, !tbaa !12
  %mul55 = mul nsw i32 %70, %71
  %72 = load i32, ptr %vacc1x2, align 4, !tbaa !12
  %add56 = add nsw i32 %72, %mul55
  store i32 %add56, ptr %vacc1x2, align 4, !tbaa !12
  %73 = load i32, ptr %va1, align 4, !tbaa !12
  %74 = load i32, ptr %vb3, align 4, !tbaa !12
  %mul57 = mul nsw i32 %73, %74
  %75 = load i32, ptr %vacc1x3, align 4, !tbaa !12
  %add58 = add nsw i32 %75, %mul57
  store i32 %add58, ptr %vacc1x3, align 4, !tbaa !12
  %76 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %76, 1
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body31
  %77 = load i64, ptr %k, align 8, !tbaa !5
  %cmp59 = icmp ne i64 %77, 0
  br i1 %cmp59, label %do.body31, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %78 = load i64, ptr %p, align 8, !tbaa !5
  %sub61 = sub i64 %78, 16
  store i64 %sub61, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #4
  br label %do.cond62

do.cond62:                                        ; preds = %do.end
  %79 = load i64, ptr %p, align 8, !tbaa !5
  %cmp63 = icmp ne i64 %79, 0
  br i1 %cmp63, label %do.body5, label %do.end65, !llvm.loop !17

do.end65:                                         ; preds = %do.cond62
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x0) #4
  %80 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  %conv66 = sitofp i32 %80 to float
  store float %conv66, ptr %vfpacc0x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x1) #4
  %81 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  %conv67 = sitofp i32 %81 to float
  store float %conv67, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x2) #4
  %82 = load i32, ptr %vacc0x2, align 4, !tbaa !12
  %conv68 = sitofp i32 %82 to float
  store float %conv68, ptr %vfpacc0x2, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x3) #4
  %83 = load i32, ptr %vacc0x3, align 4, !tbaa !12
  %conv69 = sitofp i32 %83 to float
  store float %conv69, ptr %vfpacc0x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x0) #4
  %84 = load i32, ptr %vacc1x0, align 4, !tbaa !12
  %conv70 = sitofp i32 %84 to float
  store float %conv70, ptr %vfpacc1x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x1) #4
  %85 = load i32, ptr %vacc1x1, align 4, !tbaa !12
  %conv71 = sitofp i32 %85 to float
  store float %conv71, ptr %vfpacc1x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x2) #4
  %86 = load i32, ptr %vacc1x2, align 4, !tbaa !12
  %conv72 = sitofp i32 %86 to float
  store float %conv72, ptr %vfpacc1x2, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x3) #4
  %87 = load i32, ptr %vacc1x3, align 4, !tbaa !12
  %conv73 = sitofp i32 %87 to float
  store float %conv73, ptr %vfpacc1x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %88 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.0, ptr %88, i32 0, i32 0
  %89 = load float, ptr %scale, align 64, !tbaa !14
  store float %89, ptr %vscale, align 4, !tbaa !18
  %90 = load float, ptr %vscale, align 4, !tbaa !18
  %91 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %mul74 = fmul float %91, %90
  store float %mul74, ptr %vfpacc0x0, align 4, !tbaa !18
  %92 = load float, ptr %vscale, align 4, !tbaa !18
  %93 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %mul75 = fmul float %93, %92
  store float %mul75, ptr %vfpacc0x1, align 4, !tbaa !18
  %94 = load float, ptr %vscale, align 4, !tbaa !18
  %95 = load float, ptr %vfpacc0x2, align 4, !tbaa !18
  %mul76 = fmul float %95, %94
  store float %mul76, ptr %vfpacc0x2, align 4, !tbaa !18
  %96 = load float, ptr %vscale, align 4, !tbaa !18
  %97 = load float, ptr %vfpacc0x3, align 4, !tbaa !18
  %mul77 = fmul float %97, %96
  store float %mul77, ptr %vfpacc0x3, align 4, !tbaa !18
  %98 = load float, ptr %vscale, align 4, !tbaa !18
  %99 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %mul78 = fmul float %99, %98
  store float %mul78, ptr %vfpacc1x0, align 4, !tbaa !18
  %100 = load float, ptr %vscale, align 4, !tbaa !18
  %101 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %mul79 = fmul float %101, %100
  store float %mul79, ptr %vfpacc1x1, align 4, !tbaa !18
  %102 = load float, ptr %vscale, align 4, !tbaa !18
  %103 = load float, ptr %vfpacc1x2, align 4, !tbaa !18
  %mul80 = fmul float %103, %102
  store float %mul80, ptr %vfpacc1x2, align 4, !tbaa !18
  %104 = load float, ptr %vscale, align 4, !tbaa !18
  %105 = load float, ptr %vfpacc1x3, align 4, !tbaa !18
  %mul81 = fmul float %105, %104
  store float %mul81, ptr %vfpacc1x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %106 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %106, i32 0, i32 1
  %107 = load float, ptr %magic_bias, align 4, !tbaa !14
  store float %107, ptr %vmagic_bias, align 4, !tbaa !18
  %108 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %109 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %add82 = fadd float %109, %108
  store float %add82, ptr %vfpacc0x0, align 4, !tbaa !18
  %110 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %111 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %add83 = fadd float %111, %110
  store float %add83, ptr %vfpacc0x1, align 4, !tbaa !18
  %112 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %113 = load float, ptr %vfpacc0x2, align 4, !tbaa !18
  %add84 = fadd float %113, %112
  store float %add84, ptr %vfpacc0x2, align 4, !tbaa !18
  %114 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %115 = load float, ptr %vfpacc0x3, align 4, !tbaa !18
  %add85 = fadd float %115, %114
  store float %add85, ptr %vfpacc0x3, align 4, !tbaa !18
  %116 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %117 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %add86 = fadd float %117, %116
  store float %add86, ptr %vfpacc1x0, align 4, !tbaa !18
  %118 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %119 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %add87 = fadd float %119, %118
  store float %add87, ptr %vfpacc1x1, align 4, !tbaa !18
  %120 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %121 = load float, ptr %vfpacc1x2, align 4, !tbaa !18
  %add88 = fadd float %121, %120
  store float %add88, ptr %vfpacc1x2, align 4, !tbaa !18
  %122 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %123 = load float, ptr %vfpacc1x3, align 4, !tbaa !18
  %add89 = fadd float %123, %122
  store float %add89, ptr %vfpacc1x3, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x0) #4
  %124 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %call = call i32 @fp32_to_bits(float noundef %124)
  store i32 %call, ptr %vout0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x1) #4
  %125 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %call90 = call i32 @fp32_to_bits(float noundef %125)
  store i32 %call90, ptr %vout0x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x2) #4
  %126 = load float, ptr %vfpacc0x2, align 4, !tbaa !18
  %call91 = call i32 @fp32_to_bits(float noundef %126)
  store i32 %call91, ptr %vout0x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x3) #4
  %127 = load float, ptr %vfpacc0x3, align 4, !tbaa !18
  %call92 = call i32 @fp32_to_bits(float noundef %127)
  store i32 %call92, ptr %vout0x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x0) #4
  %128 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %call93 = call i32 @fp32_to_bits(float noundef %128)
  store i32 %call93, ptr %vout1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x1) #4
  %129 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %call94 = call i32 @fp32_to_bits(float noundef %129)
  store i32 %call94, ptr %vout1x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x2) #4
  %130 = load float, ptr %vfpacc1x2, align 4, !tbaa !18
  %call95 = call i32 @fp32_to_bits(float noundef %130)
  store i32 %call95, ptr %vout1x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x3) #4
  %131 = load float, ptr %vfpacc1x3, align 4, !tbaa !18
  %call96 = call i32 @fp32_to_bits(float noundef %131)
  store i32 %call96, ptr %vout1x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_min) #4
  %132 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_min = getelementptr inbounds %struct.anon.0, ptr %132, i32 0, i32 2
  %133 = load i32, ptr %magic_min, align 8, !tbaa !14
  store i32 %133, ptr %vmagic_min, align 4, !tbaa !12
  %134 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %135 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call97 = call i32 @math_max_s32(i32 noundef %134, i32 noundef %135)
  store i32 %call97, ptr %vout0x0, align 4, !tbaa !12
  %136 = load i32, ptr %vout0x1, align 4, !tbaa !12
  %137 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call98 = call i32 @math_max_s32(i32 noundef %136, i32 noundef %137)
  store i32 %call98, ptr %vout0x1, align 4, !tbaa !12
  %138 = load i32, ptr %vout0x2, align 4, !tbaa !12
  %139 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call99 = call i32 @math_max_s32(i32 noundef %138, i32 noundef %139)
  store i32 %call99, ptr %vout0x2, align 4, !tbaa !12
  %140 = load i32, ptr %vout0x3, align 4, !tbaa !12
  %141 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call100 = call i32 @math_max_s32(i32 noundef %140, i32 noundef %141)
  store i32 %call100, ptr %vout0x3, align 4, !tbaa !12
  %142 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %143 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call101 = call i32 @math_max_s32(i32 noundef %142, i32 noundef %143)
  store i32 %call101, ptr %vout1x0, align 4, !tbaa !12
  %144 = load i32, ptr %vout1x1, align 4, !tbaa !12
  %145 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call102 = call i32 @math_max_s32(i32 noundef %144, i32 noundef %145)
  store i32 %call102, ptr %vout1x1, align 4, !tbaa !12
  %146 = load i32, ptr %vout1x2, align 4, !tbaa !12
  %147 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call103 = call i32 @math_max_s32(i32 noundef %146, i32 noundef %147)
  store i32 %call103, ptr %vout1x2, align 4, !tbaa !12
  %148 = load i32, ptr %vout1x3, align 4, !tbaa !12
  %149 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call104 = call i32 @math_max_s32(i32 noundef %148, i32 noundef %149)
  store i32 %call104, ptr %vout1x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_max) #4
  %150 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_max = getelementptr inbounds %struct.anon.0, ptr %150, i32 0, i32 3
  %151 = load i32, ptr %magic_max, align 4, !tbaa !14
  store i32 %151, ptr %vmagic_max, align 4, !tbaa !12
  %152 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %153 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call105 = call i32 @math_min_s32(i32 noundef %152, i32 noundef %153)
  store i32 %call105, ptr %vout0x0, align 4, !tbaa !12
  %154 = load i32, ptr %vout0x1, align 4, !tbaa !12
  %155 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call106 = call i32 @math_min_s32(i32 noundef %154, i32 noundef %155)
  store i32 %call106, ptr %vout0x1, align 4, !tbaa !12
  %156 = load i32, ptr %vout0x2, align 4, !tbaa !12
  %157 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call107 = call i32 @math_min_s32(i32 noundef %156, i32 noundef %157)
  store i32 %call107, ptr %vout0x2, align 4, !tbaa !12
  %158 = load i32, ptr %vout0x3, align 4, !tbaa !12
  %159 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call108 = call i32 @math_min_s32(i32 noundef %158, i32 noundef %159)
  store i32 %call108, ptr %vout0x3, align 4, !tbaa !12
  %160 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %161 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call109 = call i32 @math_min_s32(i32 noundef %160, i32 noundef %161)
  store i32 %call109, ptr %vout1x0, align 4, !tbaa !12
  %162 = load i32, ptr %vout1x1, align 4, !tbaa !12
  %163 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call110 = call i32 @math_min_s32(i32 noundef %162, i32 noundef %163)
  store i32 %call110, ptr %vout1x1, align 4, !tbaa !12
  %164 = load i32, ptr %vout1x2, align 4, !tbaa !12
  %165 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call111 = call i32 @math_min_s32(i32 noundef %164, i32 noundef %165)
  store i32 %call111, ptr %vout1x2, align 4, !tbaa !12
  %166 = load i32, ptr %vout1x3, align 4, !tbaa !12
  %167 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call112 = call i32 @math_min_s32(i32 noundef %166, i32 noundef %167)
  store i32 %call112, ptr %vout1x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  %168 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %168, i32 0, i32 4
  %169 = load i32, ptr %magic_bias_less_zero_point, align 16, !tbaa !14
  store i32 %169, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %170 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %171 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %sub113 = sub nsw i32 %171, %170
  store i32 %sub113, ptr %vout0x0, align 4, !tbaa !12
  %172 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %173 = load i32, ptr %vout0x1, align 4, !tbaa !12
  %sub114 = sub nsw i32 %173, %172
  store i32 %sub114, ptr %vout0x1, align 4, !tbaa !12
  %174 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %175 = load i32, ptr %vout0x2, align 4, !tbaa !12
  %sub115 = sub nsw i32 %175, %174
  store i32 %sub115, ptr %vout0x2, align 4, !tbaa !12
  %176 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %177 = load i32, ptr %vout0x3, align 4, !tbaa !12
  %sub116 = sub nsw i32 %177, %176
  store i32 %sub116, ptr %vout0x3, align 4, !tbaa !12
  %178 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %179 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %sub117 = sub nsw i32 %179, %178
  store i32 %sub117, ptr %vout1x0, align 4, !tbaa !12
  %180 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %181 = load i32, ptr %vout1x1, align 4, !tbaa !12
  %sub118 = sub nsw i32 %181, %180
  store i32 %sub118, ptr %vout1x1, align 4, !tbaa !12
  %182 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %183 = load i32, ptr %vout1x2, align 4, !tbaa !12
  %sub119 = sub nsw i32 %183, %182
  store i32 %sub119, ptr %vout1x2, align 4, !tbaa !12
  %184 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %185 = load i32, ptr %vout1x3, align 4, !tbaa !12
  %sub120 = sub nsw i32 %185, %184
  store i32 %sub120, ptr %vout1x3, align 4, !tbaa !12
  %186 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp121 = icmp uge i64 %186, 4
  %lnot123 = xor i1 %cmp121, true
  %lnot125 = xor i1 %lnot123, true
  %lnot.ext126 = zext i1 %lnot125 to i32
  %conv127 = sext i32 %lnot.ext126 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv127, i64 1)
  %tobool128 = icmp ne i64 %expval, 0
  br i1 %tobool128, label %if.then129, label %if.else

if.then129:                                       ; preds = %do.end65
  %187 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %conv130 = trunc i32 %187 to i8
  %188 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx131 = getelementptr inbounds i8, ptr %188, i64 0
  store i8 %conv130, ptr %arrayidx131, align 1, !tbaa !14
  %189 = load i32, ptr %vout1x1, align 4, !tbaa !12
  %conv132 = trunc i32 %189 to i8
  %190 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx133 = getelementptr inbounds i8, ptr %190, i64 1
  store i8 %conv132, ptr %arrayidx133, align 1, !tbaa !14
  %191 = load i32, ptr %vout1x2, align 4, !tbaa !12
  %conv134 = trunc i32 %191 to i8
  %192 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx135 = getelementptr inbounds i8, ptr %192, i64 2
  store i8 %conv134, ptr %arrayidx135, align 1, !tbaa !14
  %193 = load i32, ptr %vout1x3, align 4, !tbaa !12
  %conv136 = trunc i32 %193 to i8
  %194 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx137 = getelementptr inbounds i8, ptr %194, i64 3
  store i8 %conv136, ptr %arrayidx137, align 1, !tbaa !14
  %195 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %conv138 = trunc i32 %195 to i8
  %196 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx139 = getelementptr inbounds i8, ptr %196, i64 0
  store i8 %conv138, ptr %arrayidx139, align 1, !tbaa !14
  %197 = load i32, ptr %vout0x1, align 4, !tbaa !12
  %conv140 = trunc i32 %197 to i8
  %198 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx141 = getelementptr inbounds i8, ptr %198, i64 1
  store i8 %conv140, ptr %arrayidx141, align 1, !tbaa !14
  %199 = load i32, ptr %vout0x2, align 4, !tbaa !12
  %conv142 = trunc i32 %199 to i8
  %200 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx143 = getelementptr inbounds i8, ptr %200, i64 2
  store i8 %conv142, ptr %arrayidx143, align 1, !tbaa !14
  %201 = load i32, ptr %vout0x3, align 4, !tbaa !12
  %conv144 = trunc i32 %201 to i8
  %202 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx145 = getelementptr inbounds i8, ptr %202, i64 3
  store i8 %conv144, ptr %arrayidx145, align 1, !tbaa !14
  %203 = load ptr, ptr %c1, align 8, !tbaa !9
  %204 = ptrtoint ptr %203 to i64
  %205 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add146 = add i64 %204, %205
  %206 = inttoptr i64 %add146 to ptr
  store ptr %206, ptr %c1, align 8, !tbaa !9
  %207 = load ptr, ptr %c0, align 8, !tbaa !9
  %208 = ptrtoint ptr %207 to i64
  %209 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add147 = add i64 %208, %209
  %210 = inttoptr i64 %add147 to ptr
  store ptr %210, ptr %c0, align 8, !tbaa !9
  %211 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %212 = ptrtoint ptr %211 to i64
  %213 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub148 = sub i64 %212, %213
  %214 = inttoptr i64 %sub148 to ptr
  store ptr %214, ptr %a.addr, align 8, !tbaa !9
  %215 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub149 = sub i64 %215, 4
  store i64 %sub149, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end171

if.else:                                          ; preds = %do.end65
  %216 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %216, 2
  %tobool150 = icmp ne i64 %and, 0
  br i1 %tobool150, label %if.then151, label %if.end162

if.then151:                                       ; preds = %if.else
  %217 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %conv152 = trunc i32 %217 to i8
  %218 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx153 = getelementptr inbounds i8, ptr %218, i64 0
  store i8 %conv152, ptr %arrayidx153, align 1, !tbaa !14
  %219 = load i32, ptr %vout1x1, align 4, !tbaa !12
  %conv154 = trunc i32 %219 to i8
  %220 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx155 = getelementptr inbounds i8, ptr %220, i64 1
  store i8 %conv154, ptr %arrayidx155, align 1, !tbaa !14
  %221 = load i32, ptr %vout1x2, align 4, !tbaa !12
  store i32 %221, ptr %vout1x0, align 4, !tbaa !12
  %222 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr156 = getelementptr inbounds i8, ptr %222, i64 2
  store ptr %add.ptr156, ptr %c1, align 8, !tbaa !9
  %223 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %conv157 = trunc i32 %223 to i8
  %224 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx158 = getelementptr inbounds i8, ptr %224, i64 0
  store i8 %conv157, ptr %arrayidx158, align 1, !tbaa !14
  %225 = load i32, ptr %vout0x1, align 4, !tbaa !12
  %conv159 = trunc i32 %225 to i8
  %226 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx160 = getelementptr inbounds i8, ptr %226, i64 1
  store i8 %conv159, ptr %arrayidx160, align 1, !tbaa !14
  %227 = load i32, ptr %vout0x2, align 4, !tbaa !12
  store i32 %227, ptr %vout0x0, align 4, !tbaa !12
  %228 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr161 = getelementptr inbounds i8, ptr %228, i64 2
  store ptr %add.ptr161, ptr %c0, align 8, !tbaa !9
  br label %if.end162

if.end162:                                        ; preds = %if.then151, %if.else
  %229 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and163 = and i64 %229, 1
  %tobool164 = icmp ne i64 %and163, 0
  br i1 %tobool164, label %if.then165, label %if.end170

if.then165:                                       ; preds = %if.end162
  %230 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %conv166 = trunc i32 %230 to i8
  %231 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx167 = getelementptr inbounds i8, ptr %231, i64 0
  store i8 %conv166, ptr %arrayidx167, align 1, !tbaa !14
  %232 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %conv168 = trunc i32 %232 to i8
  %233 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx169 = getelementptr inbounds i8, ptr %233, i64 0
  store i8 %conv168, ptr %arrayidx169, align 1, !tbaa !14
  br label %if.end170

if.end170:                                        ; preds = %if.then165, %if.end162
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then129
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_min) #4
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x0) #4
  br label %do.cond172

do.cond172:                                       ; preds = %if.end171
  %234 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp173 = icmp ne i64 %234, 0
  br i1 %cmp173, label %do.body, label %do.end175, !llvm.loop !20

do.end175:                                        ; preds = %do.cond172
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
  store float %0, ptr %fp32, align 4, !tbaa !14
  %1 = load i32, ptr %fp32, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_max_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !12
  store i32 %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load i32, ptr %a.addr, align 4, !tbaa !12
  %1 = load i32, ptr %b.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !12
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
  store i32 %a, ptr %a.addr, align 4, !tbaa !12
  store i32 %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load i32, ptr %a.addr, align 4, !tbaa !12
  %1 = load i32, ptr %b.addr, align 4, !tbaa !12
  %cmp = icmp slt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !12
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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = distinct !{!20, !16}

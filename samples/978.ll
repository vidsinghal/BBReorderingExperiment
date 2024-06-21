; ModuleID = 'samples/978.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qc8-igemm/gen/3x2-minmax-fp32-scalar-fmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { float, float, float, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_qc8_igemm_minmax_fp32_ukernel_3x2__scalar_fmagic(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(192) %params) #0 {
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
  %vacc0x0 = alloca i32, align 4
  %vacc0x1 = alloca i32, align 4
  %vacc1x0 = alloca i32, align 4
  %vacc1x1 = alloca i32, align 4
  %vacc2x0 = alloca i32, align 4
  %vacc2x1 = alloca i32, align 4
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
  %vfpacc0x0 = alloca float, align 4
  %vfpacc0x1 = alloca float, align 4
  %vfpacc1x0 = alloca float, align 4
  %vfpacc1x1 = alloca float, align 4
  %vfpacc2x0 = alloca float, align 4
  %vfpacc2x1 = alloca float, align 4
  %vscale0 = alloca float, align 4
  %vscale1 = alloca float, align 4
  %voutput_min_less_zero_point = alloca float, align 4
  %voutput_max_less_zero_point = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_bias_less_output_zero_point = alloca i32, align 4
  %vout0x0 = alloca i32, align 4
  %vout0x1 = alloca i32, align 4
  %vout1x0 = alloca i32, align 4
  %vout1x1 = alloca i32, align 4
  %vout2x0 = alloca i32, align 4
  %vout2x1 = alloca i32, align 4
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
  br label %do.body

do.body:                                          ; preds = %do.cond161, %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x0) #4
  %13 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %13, i64 0
  %14 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %14, ptr %vacc0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x1) #4
  %15 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds i32, ptr %15, i64 1
  %16 = load i32, ptr %arrayidx13, align 4, !tbaa !12
  store i32 %16, ptr %vacc0x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x0) #4
  %17 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  store i32 %17, ptr %vacc1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x1) #4
  %18 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  store i32 %18, ptr %vacc1x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x0) #4
  %19 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  store i32 %19, ptr %vacc2x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x1) #4
  %20 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  store i32 %20, ptr %vacc2x1, align 4, !tbaa !12
  %21 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %21, i64 2
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %22 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %22, ptr %p, align 8, !tbaa !5
  br label %do.body14

do.body14:                                        ; preds = %do.cond77, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds ptr, ptr %23, i64 0
  %24 = load ptr, ptr %arrayidx15, align 8, !tbaa !9
  store ptr %24, ptr %a0, align 8, !tbaa !9
  %25 = load ptr, ptr %a0, align 8, !tbaa !9
  %26 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp16 = icmp ne ptr %25, %26
  %lnot18 = xor i1 %cmp16, true
  %lnot20 = xor i1 %lnot18, true
  %lnot.ext21 = zext i1 %lnot20 to i32
  %conv22 = sext i32 %lnot.ext21 to i64
  %tobool23 = icmp ne i64 %conv22, 0
  br i1 %tobool23, label %if.then24, label %if.end26, !unpredictable !11

if.then24:                                        ; preds = %do.body14
  %27 = load ptr, ptr %a0, align 8, !tbaa !9
  %28 = ptrtoint ptr %27 to i64
  %29 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add25 = add i64 %28, %29
  %30 = inttoptr i64 %add25 to ptr
  store ptr %30, ptr %a0, align 8, !tbaa !9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #4
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds ptr, ptr %31, i64 1
  %32 = load ptr, ptr %arrayidx27, align 8, !tbaa !9
  store ptr %32, ptr %a1, align 8, !tbaa !9
  %33 = load ptr, ptr %a1, align 8, !tbaa !9
  %34 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp28 = icmp ne ptr %33, %34
  %lnot30 = xor i1 %cmp28, true
  %lnot32 = xor i1 %lnot30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %tobool35 = icmp ne i64 %conv34, 0
  br i1 %tobool35, label %if.then36, label %if.end38, !unpredictable !11

if.then36:                                        ; preds = %if.end26
  %35 = load ptr, ptr %a1, align 8, !tbaa !9
  %36 = ptrtoint ptr %35 to i64
  %37 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add37 = add i64 %36, %37
  %38 = inttoptr i64 %add37 to ptr
  store ptr %38, ptr %a1, align 8, !tbaa !9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #4
  %39 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx39 = getelementptr inbounds ptr, ptr %39, i64 2
  %40 = load ptr, ptr %arrayidx39, align 8, !tbaa !9
  store ptr %40, ptr %a2, align 8, !tbaa !9
  %41 = load ptr, ptr %a2, align 8, !tbaa !9
  %42 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp40 = icmp ne ptr %41, %42
  %lnot42 = xor i1 %cmp40, true
  %lnot44 = xor i1 %lnot42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %tobool47 = icmp ne i64 %conv46, 0
  br i1 %tobool47, label %if.then48, label %if.end50, !unpredictable !11

if.then48:                                        ; preds = %if.end38
  %43 = load ptr, ptr %a2, align 8, !tbaa !9
  %44 = ptrtoint ptr %43 to i64
  %45 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add49 = add i64 %44, %45
  %46 = inttoptr i64 %add49 to ptr
  store ptr %46, ptr %a2, align 8, !tbaa !9
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end38
  %47 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr51 = getelementptr inbounds ptr, ptr %47, i64 3
  store ptr %add.ptr51, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %48 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %48, ptr %k, align 8, !tbaa !5
  br label %do.body52

do.body52:                                        ; preds = %do.cond, %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %49 = load ptr, ptr %a0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr, ptr %a0, align 8, !tbaa !9
  %50 = load i8, ptr %49, align 1, !tbaa !14
  %conv53 = sext i8 %50 to i32
  store i32 %conv53, ptr %va0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #4
  %51 = load ptr, ptr %a1, align 8, !tbaa !9
  %incdec.ptr54 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr54, ptr %a1, align 8, !tbaa !9
  %52 = load i8, ptr %51, align 1, !tbaa !14
  %conv55 = sext i8 %52 to i32
  store i32 %conv55, ptr %va1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va2) #4
  %53 = load ptr, ptr %a2, align 8, !tbaa !9
  %incdec.ptr56 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr56, ptr %a2, align 8, !tbaa !9
  %54 = load i8, ptr %53, align 1, !tbaa !14
  %conv57 = sext i8 %54 to i32
  store i32 %conv57, ptr %va2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %55 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx58 = getelementptr inbounds i8, ptr %55, i64 0
  %56 = load i8, ptr %arrayidx58, align 1, !tbaa !14
  %conv59 = sext i8 %56 to i32
  store i32 %conv59, ptr %vb0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %57 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx60 = getelementptr inbounds i8, ptr %57, i64 1
  %58 = load i8, ptr %arrayidx60, align 1, !tbaa !14
  %conv61 = sext i8 %58 to i32
  store i32 %conv61, ptr %vb1, align 4, !tbaa !12
  %59 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr62 = getelementptr inbounds i8, ptr %59, i64 2
  store ptr %add.ptr62, ptr %w.addr, align 8, !tbaa !9
  %60 = load i32, ptr %va0, align 4, !tbaa !12
  %61 = load i32, ptr %vb0, align 4, !tbaa !12
  %mul = mul nsw i32 %60, %61
  %62 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  %add63 = add nsw i32 %62, %mul
  store i32 %add63, ptr %vacc0x0, align 4, !tbaa !12
  %63 = load i32, ptr %va0, align 4, !tbaa !12
  %64 = load i32, ptr %vb1, align 4, !tbaa !12
  %mul64 = mul nsw i32 %63, %64
  %65 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  %add65 = add nsw i32 %65, %mul64
  store i32 %add65, ptr %vacc0x1, align 4, !tbaa !12
  %66 = load i32, ptr %va1, align 4, !tbaa !12
  %67 = load i32, ptr %vb0, align 4, !tbaa !12
  %mul66 = mul nsw i32 %66, %67
  %68 = load i32, ptr %vacc1x0, align 4, !tbaa !12
  %add67 = add nsw i32 %68, %mul66
  store i32 %add67, ptr %vacc1x0, align 4, !tbaa !12
  %69 = load i32, ptr %va1, align 4, !tbaa !12
  %70 = load i32, ptr %vb1, align 4, !tbaa !12
  %mul68 = mul nsw i32 %69, %70
  %71 = load i32, ptr %vacc1x1, align 4, !tbaa !12
  %add69 = add nsw i32 %71, %mul68
  store i32 %add69, ptr %vacc1x1, align 4, !tbaa !12
  %72 = load i32, ptr %va2, align 4, !tbaa !12
  %73 = load i32, ptr %vb0, align 4, !tbaa !12
  %mul70 = mul nsw i32 %72, %73
  %74 = load i32, ptr %vacc2x0, align 4, !tbaa !12
  %add71 = add nsw i32 %74, %mul70
  store i32 %add71, ptr %vacc2x0, align 4, !tbaa !12
  %75 = load i32, ptr %va2, align 4, !tbaa !12
  %76 = load i32, ptr %vb1, align 4, !tbaa !12
  %mul72 = mul nsw i32 %75, %76
  %77 = load i32, ptr %vacc2x1, align 4, !tbaa !12
  %add73 = add nsw i32 %77, %mul72
  store i32 %add73, ptr %vacc2x1, align 4, !tbaa !12
  %78 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %78, 1
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body52
  %79 = load i64, ptr %k, align 8, !tbaa !5
  %cmp74 = icmp ne i64 %79, 0
  br i1 %cmp74, label %do.body52, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %80 = load i64, ptr %p, align 8, !tbaa !5
  %sub76 = sub i64 %80, 24
  store i64 %sub76, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #4
  br label %do.cond77

do.cond77:                                        ; preds = %do.end
  %81 = load i64, ptr %p, align 8, !tbaa !5
  %cmp78 = icmp ne i64 %81, 0
  br i1 %cmp78, label %do.body14, label %do.end80, !llvm.loop !17

do.end80:                                         ; preds = %do.cond77
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x0) #4
  %82 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  %conv81 = sitofp i32 %82 to float
  store float %conv81, ptr %vfpacc0x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x1) #4
  %83 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  %conv82 = sitofp i32 %83 to float
  store float %conv82, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x0) #4
  %84 = load i32, ptr %vacc1x0, align 4, !tbaa !12
  %conv83 = sitofp i32 %84 to float
  store float %conv83, ptr %vfpacc1x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1x1) #4
  %85 = load i32, ptr %vacc1x1, align 4, !tbaa !12
  %conv84 = sitofp i32 %85 to float
  store float %conv84, ptr %vfpacc1x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2x0) #4
  %86 = load i32, ptr %vacc2x0, align 4, !tbaa !12
  %conv85 = sitofp i32 %86 to float
  store float %conv85, ptr %vfpacc2x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2x1) #4
  %87 = load i32, ptr %vacc2x1, align 4, !tbaa !12
  %conv86 = sitofp i32 %87 to float
  store float %conv86, ptr %vfpacc2x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale0) #4
  %88 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds float, ptr %88, i64 0
  %89 = load float, ptr %arrayidx87, align 1, !tbaa !18
  store float %89, ptr %vscale0, align 4, !tbaa !18
  %90 = load float, ptr %vscale0, align 4, !tbaa !18
  %91 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %mul88 = fmul float %91, %90
  store float %mul88, ptr %vfpacc0x0, align 4, !tbaa !18
  %92 = load float, ptr %vscale0, align 4, !tbaa !18
  %93 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %mul89 = fmul float %93, %92
  store float %mul89, ptr %vfpacc1x0, align 4, !tbaa !18
  %94 = load float, ptr %vscale0, align 4, !tbaa !18
  %95 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %mul90 = fmul float %95, %94
  store float %mul90, ptr %vfpacc2x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale1) #4
  %96 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx91 = getelementptr inbounds float, ptr %96, i64 1
  %97 = load float, ptr %arrayidx91, align 1, !tbaa !18
  store float %97, ptr %vscale1, align 4, !tbaa !18
  %98 = load float, ptr %vscale1, align 4, !tbaa !18
  %99 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %mul92 = fmul float %99, %98
  store float %mul92, ptr %vfpacc0x1, align 4, !tbaa !18
  %100 = load float, ptr %vscale1, align 4, !tbaa !18
  %101 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %mul93 = fmul float %101, %100
  store float %mul93, ptr %vfpacc1x1, align 4, !tbaa !18
  %102 = load float, ptr %vscale1, align 4, !tbaa !18
  %103 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %mul94 = fmul float %103, %102
  store float %mul94, ptr %vfpacc2x1, align 4, !tbaa !18
  %104 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr95 = getelementptr inbounds float, ptr %104, i64 2
  store ptr %add.ptr95, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  %105 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %105, i32 0, i32 0
  %106 = load float, ptr %output_min_less_zero_point, align 64, !tbaa !14
  store float %106, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %107 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %108 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call = call float @math_max_f32(float noundef %107, float noundef %108)
  store float %call, ptr %vfpacc0x0, align 4, !tbaa !18
  %109 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %110 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call96 = call float @math_max_f32(float noundef %109, float noundef %110)
  store float %call96, ptr %vfpacc0x1, align 4, !tbaa !18
  %111 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %112 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call97 = call float @math_max_f32(float noundef %111, float noundef %112)
  store float %call97, ptr %vfpacc1x0, align 4, !tbaa !18
  %113 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %114 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call98 = call float @math_max_f32(float noundef %113, float noundef %114)
  store float %call98, ptr %vfpacc1x1, align 4, !tbaa !18
  %115 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %116 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call99 = call float @math_max_f32(float noundef %115, float noundef %116)
  store float %call99, ptr %vfpacc2x0, align 4, !tbaa !18
  %117 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %118 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call100 = call float @math_max_f32(float noundef %117, float noundef %118)
  store float %call100, ptr %vfpacc2x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  %119 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %119, i32 0, i32 1
  %120 = load float, ptr %output_max_less_zero_point, align 4, !tbaa !14
  store float %120, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %121 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %122 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call101 = call float @math_min_f32(float noundef %121, float noundef %122)
  store float %call101, ptr %vfpacc0x0, align 4, !tbaa !18
  %123 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %124 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call102 = call float @math_min_f32(float noundef %123, float noundef %124)
  store float %call102, ptr %vfpacc0x1, align 4, !tbaa !18
  %125 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %126 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call103 = call float @math_min_f32(float noundef %125, float noundef %126)
  store float %call103, ptr %vfpacc1x0, align 4, !tbaa !18
  %127 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %128 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call104 = call float @math_min_f32(float noundef %127, float noundef %128)
  store float %call104, ptr %vfpacc1x1, align 4, !tbaa !18
  %129 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %130 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call105 = call float @math_min_f32(float noundef %129, float noundef %130)
  store float %call105, ptr %vfpacc2x0, align 4, !tbaa !18
  %131 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %132 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call106 = call float @math_min_f32(float noundef %131, float noundef %132)
  store float %call106, ptr %vfpacc2x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %133 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %133, i32 0, i32 2
  %134 = load float, ptr %magic_bias, align 8, !tbaa !14
  store float %134, ptr %vmagic_bias, align 4, !tbaa !18
  %135 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %136 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %add107 = fadd float %136, %135
  store float %add107, ptr %vfpacc0x0, align 4, !tbaa !18
  %137 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %138 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %add108 = fadd float %138, %137
  store float %add108, ptr %vfpacc0x1, align 4, !tbaa !18
  %139 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %140 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %add109 = fadd float %140, %139
  store float %add109, ptr %vfpacc1x0, align 4, !tbaa !18
  %141 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %142 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %add110 = fadd float %142, %141
  store float %add110, ptr %vfpacc1x1, align 4, !tbaa !18
  %143 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %144 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %add111 = fadd float %144, %143
  store float %add111, ptr %vfpacc2x0, align 4, !tbaa !18
  %145 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %146 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %add112 = fadd float %146, %145
  store float %add112, ptr %vfpacc2x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  %147 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_output_zero_point = getelementptr inbounds %struct.anon.0, ptr %147, i32 0, i32 3
  %148 = load i32, ptr %magic_bias_less_output_zero_point, align 4, !tbaa !14
  store i32 %148, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x0) #4
  %149 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %call113 = call i32 @fp32_to_bits(float noundef %149)
  %150 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub114 = sub nsw i32 %call113, %150
  store i32 %sub114, ptr %vout0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x1) #4
  %151 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %call115 = call i32 @fp32_to_bits(float noundef %151)
  %152 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub116 = sub nsw i32 %call115, %152
  store i32 %sub116, ptr %vout0x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x0) #4
  %153 = load float, ptr %vfpacc1x0, align 4, !tbaa !18
  %call117 = call i32 @fp32_to_bits(float noundef %153)
  %154 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub118 = sub nsw i32 %call117, %154
  store i32 %sub118, ptr %vout1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1x1) #4
  %155 = load float, ptr %vfpacc1x1, align 4, !tbaa !18
  %call119 = call i32 @fp32_to_bits(float noundef %155)
  %156 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub120 = sub nsw i32 %call119, %156
  store i32 %sub120, ptr %vout1x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2x0) #4
  %157 = load float, ptr %vfpacc2x0, align 4, !tbaa !18
  %call121 = call i32 @fp32_to_bits(float noundef %157)
  %158 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub122 = sub nsw i32 %call121, %158
  store i32 %sub122, ptr %vout2x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2x1) #4
  %159 = load float, ptr %vfpacc2x1, align 4, !tbaa !18
  %call123 = call i32 @fp32_to_bits(float noundef %159)
  %160 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub124 = sub nsw i32 %call123, %160
  store i32 %sub124, ptr %vout2x1, align 4, !tbaa !12
  %161 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp125 = icmp uge i64 %161, 2
  %lnot127 = xor i1 %cmp125, true
  %lnot129 = xor i1 %lnot127, true
  %lnot.ext130 = zext i1 %lnot129 to i32
  %conv131 = sext i32 %lnot.ext130 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv131, i64 1)
  %tobool132 = icmp ne i64 %expval, 0
  br i1 %tobool132, label %if.then133, label %if.else

if.then133:                                       ; preds = %do.end80
  %162 = load i32, ptr %vout2x0, align 4, !tbaa !12
  %conv134 = trunc i32 %162 to i8
  %163 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx135 = getelementptr inbounds i8, ptr %163, i64 0
  store i8 %conv134, ptr %arrayidx135, align 1, !tbaa !14
  %164 = load i32, ptr %vout2x1, align 4, !tbaa !12
  %conv136 = trunc i32 %164 to i8
  %165 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx137 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 %conv136, ptr %arrayidx137, align 1, !tbaa !14
  %166 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %conv138 = trunc i32 %166 to i8
  %167 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx139 = getelementptr inbounds i8, ptr %167, i64 0
  store i8 %conv138, ptr %arrayidx139, align 1, !tbaa !14
  %168 = load i32, ptr %vout1x1, align 4, !tbaa !12
  %conv140 = trunc i32 %168 to i8
  %169 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx141 = getelementptr inbounds i8, ptr %169, i64 1
  store i8 %conv140, ptr %arrayidx141, align 1, !tbaa !14
  %170 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %conv142 = trunc i32 %170 to i8
  %171 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx143 = getelementptr inbounds i8, ptr %171, i64 0
  store i8 %conv142, ptr %arrayidx143, align 1, !tbaa !14
  %172 = load i32, ptr %vout0x1, align 4, !tbaa !12
  %conv144 = trunc i32 %172 to i8
  %173 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx145 = getelementptr inbounds i8, ptr %173, i64 1
  store i8 %conv144, ptr %arrayidx145, align 1, !tbaa !14
  %174 = load ptr, ptr %c2, align 8, !tbaa !9
  %175 = ptrtoint ptr %174 to i64
  %176 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add146 = add i64 %175, %176
  %177 = inttoptr i64 %add146 to ptr
  store ptr %177, ptr %c2, align 8, !tbaa !9
  %178 = load ptr, ptr %c1, align 8, !tbaa !9
  %179 = ptrtoint ptr %178 to i64
  %180 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add147 = add i64 %179, %180
  %181 = inttoptr i64 %add147 to ptr
  store ptr %181, ptr %c1, align 8, !tbaa !9
  %182 = load ptr, ptr %c0, align 8, !tbaa !9
  %183 = ptrtoint ptr %182 to i64
  %184 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add148 = add i64 %183, %184
  %185 = inttoptr i64 %add148 to ptr
  store ptr %185, ptr %c0, align 8, !tbaa !9
  %186 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %187 = ptrtoint ptr %186 to i64
  %188 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub149 = sub i64 %187, %188
  %189 = inttoptr i64 %sub149 to ptr
  store ptr %189, ptr %a.addr, align 8, !tbaa !9
  %190 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub150 = sub i64 %190, 2
  store i64 %sub150, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end160

if.else:                                          ; preds = %do.end80
  %191 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %191, 1
  %tobool151 = icmp ne i64 %and, 0
  br i1 %tobool151, label %if.then152, label %if.end159

if.then152:                                       ; preds = %if.else
  %192 = load i32, ptr %vout2x0, align 4, !tbaa !12
  %conv153 = trunc i32 %192 to i8
  %193 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx154 = getelementptr inbounds i8, ptr %193, i64 0
  store i8 %conv153, ptr %arrayidx154, align 1, !tbaa !14
  %194 = load i32, ptr %vout1x0, align 4, !tbaa !12
  %conv155 = trunc i32 %194 to i8
  %195 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx156 = getelementptr inbounds i8, ptr %195, i64 0
  store i8 %conv155, ptr %arrayidx156, align 1, !tbaa !14
  %196 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %conv157 = trunc i32 %196 to i8
  %197 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx158 = getelementptr inbounds i8, ptr %197, i64 0
  store i8 %conv157, ptr %arrayidx158, align 1, !tbaa !14
  br label %if.end159

if.end159:                                        ; preds = %if.then152, %if.else
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.then133
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x0) #4
  br label %do.cond161

do.cond161:                                       ; preds = %if.end160
  %198 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp162 = icmp ne i64 %198, 0
  br i1 %cmp162, label %do.body, label %do.end164, !llvm.loop !20

do.end164:                                        ; preds = %do.cond161
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
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !18
  store float %b, ptr %b.addr, align 4, !tbaa !18
  %0 = load float, ptr %b.addr, align 4, !tbaa !18
  %1 = load float, ptr %a.addr, align 4, !tbaa !18
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_min_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !18
  store float %b, ptr %b.addr, align 4, !tbaa !18
  %0 = load float, ptr %b.addr, align 4, !tbaa !18
  %1 = load float, ptr %a.addr, align 4, !tbaa !18
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

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

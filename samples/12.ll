; ModuleID = 'samples/12.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-ppmm/gen/4x4-minmax-scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float, float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_ppmm_minmax_ukernel_4x4__scalar(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
entry:
  %mr.addr = alloca i64, align 8
  %nc.addr = alloca i64, align 8
  %kc.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cm_stride.addr = alloca i64, align 8
  %cn_stride.addr = alloca i64, align 8
  %params.addr = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %c1 = alloca ptr, align 8
  %c2 = alloca ptr, align 8
  %c3 = alloca ptr, align 8
  %vacc0x0 = alloca float, align 4
  %vacc0x1 = alloca float, align 4
  %vacc0x2 = alloca float, align 4
  %vacc0x3 = alloca float, align 4
  %vacc1x0 = alloca float, align 4
  %vacc1x1 = alloca float, align 4
  %vacc1x2 = alloca float, align 4
  %vacc1x3 = alloca float, align 4
  %vacc2x0 = alloca float, align 4
  %vacc2x1 = alloca float, align 4
  %vacc2x2 = alloca float, align 4
  %vacc2x3 = alloca float, align 4
  %vacc3x0 = alloca float, align 4
  %vacc3x1 = alloca float, align 4
  %vacc3x2 = alloca float, align 4
  %vacc3x3 = alloca float, align 4
  %k = alloca i64, align 8
  %va0 = alloca float, align 4
  %va1 = alloca float, align 4
  %va2 = alloca float, align 4
  %va3 = alloca float, align 4
  %vb0 = alloca float, align 4
  %vb1 = alloca float, align 4
  %vb2 = alloca float, align 4
  %vb3 = alloca float, align 4
  %vmax = alloca float, align 4
  %vmin = alloca float, align 4
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !5
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !5
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !5
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !5
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #5
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %0, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c3) #5
  %13 = load ptr, ptr %c2, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add13 = add i64 %14, %15
  %16 = inttoptr i64 %add13 to ptr
  store ptr %16, ptr %c3, align 8, !tbaa !9
  %17 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp14 = icmp ne i64 %17, 4
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !11

if.then22:                                        ; preds = %if.end12
  %18 = load ptr, ptr %c2, align 8, !tbaa !9
  store ptr %18, ptr %c3, align 8, !tbaa !9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end12
  br label %do.body

do.body:                                          ; preds = %do.cond122, %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x0) #5
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %19, i64 0
  %20 = load float, ptr %arrayidx, align 4, !tbaa !12
  store float %20, ptr %vacc0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x1) #5
  %21 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx24 = getelementptr inbounds float, ptr %21, i64 1
  %22 = load float, ptr %arrayidx24, align 4, !tbaa !12
  store float %22, ptr %vacc0x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x2) #5
  %23 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx25 = getelementptr inbounds float, ptr %23, i64 2
  %24 = load float, ptr %arrayidx25, align 4, !tbaa !12
  store float %24, ptr %vacc0x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x3) #5
  %25 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx26 = getelementptr inbounds float, ptr %25, i64 3
  %26 = load float, ptr %arrayidx26, align 4, !tbaa !12
  store float %26, ptr %vacc0x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x0) #5
  %27 = load float, ptr %vacc0x0, align 4, !tbaa !12
  store float %27, ptr %vacc1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x1) #5
  %28 = load float, ptr %vacc0x1, align 4, !tbaa !12
  store float %28, ptr %vacc1x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x2) #5
  %29 = load float, ptr %vacc0x2, align 4, !tbaa !12
  store float %29, ptr %vacc1x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1x3) #5
  %30 = load float, ptr %vacc0x3, align 4, !tbaa !12
  store float %30, ptr %vacc1x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x0) #5
  %31 = load float, ptr %vacc0x0, align 4, !tbaa !12
  store float %31, ptr %vacc2x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x1) #5
  %32 = load float, ptr %vacc0x1, align 4, !tbaa !12
  store float %32, ptr %vacc2x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x2) #5
  %33 = load float, ptr %vacc0x2, align 4, !tbaa !12
  store float %33, ptr %vacc2x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2x3) #5
  %34 = load float, ptr %vacc0x3, align 4, !tbaa !12
  store float %34, ptr %vacc2x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3x0) #5
  %35 = load float, ptr %vacc0x0, align 4, !tbaa !12
  store float %35, ptr %vacc3x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3x1) #5
  %36 = load float, ptr %vacc0x1, align 4, !tbaa !12
  store float %36, ptr %vacc3x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3x2) #5
  %37 = load float, ptr %vacc0x2, align 4, !tbaa !12
  store float %37, ptr %vacc3x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3x3) #5
  %38 = load float, ptr %vacc0x3, align 4, !tbaa !12
  store float %38, ptr %vacc3x3, align 4, !tbaa !12
  %39 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %39, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #5
  %40 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %40, ptr %k, align 8, !tbaa !5
  br label %do.body27

do.body27:                                        ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #5
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx28 = getelementptr inbounds float, ptr %41, i64 0
  %42 = load float, ptr %arrayidx28, align 4, !tbaa !12
  store float %42, ptr %va0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #5
  %43 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx29 = getelementptr inbounds float, ptr %43, i64 1
  %44 = load float, ptr %arrayidx29, align 4, !tbaa !12
  store float %44, ptr %va1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va2) #5
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds float, ptr %45, i64 2
  %46 = load float, ptr %arrayidx30, align 4, !tbaa !12
  store float %46, ptr %va2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va3) #5
  %47 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx31 = getelementptr inbounds float, ptr %47, i64 3
  %48 = load float, ptr %arrayidx31, align 4, !tbaa !12
  store float %48, ptr %va3, align 4, !tbaa !12
  %49 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr32 = getelementptr inbounds float, ptr %49, i64 4
  store ptr %add.ptr32, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #5
  %50 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx33 = getelementptr inbounds float, ptr %50, i64 0
  %51 = load float, ptr %arrayidx33, align 4, !tbaa !12
  store float %51, ptr %vb0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #5
  %52 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx34 = getelementptr inbounds float, ptr %52, i64 1
  %53 = load float, ptr %arrayidx34, align 4, !tbaa !12
  store float %53, ptr %vb1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb2) #5
  %54 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx35 = getelementptr inbounds float, ptr %54, i64 2
  %55 = load float, ptr %arrayidx35, align 4, !tbaa !12
  store float %55, ptr %vb2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb3) #5
  %56 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx36 = getelementptr inbounds float, ptr %56, i64 3
  %57 = load float, ptr %arrayidx36, align 4, !tbaa !12
  store float %57, ptr %vb3, align 4, !tbaa !12
  %58 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds float, ptr %58, i64 4
  store ptr %add.ptr37, ptr %w.addr, align 8, !tbaa !9
  %59 = load float, ptr %va0, align 4, !tbaa !12
  %60 = load float, ptr %vb0, align 4, !tbaa !12
  %61 = load float, ptr %vacc0x0, align 4, !tbaa !12
  %62 = call float @llvm.fmuladd.f32(float %59, float %60, float %61)
  store float %62, ptr %vacc0x0, align 4, !tbaa !12
  %63 = load float, ptr %va1, align 4, !tbaa !12
  %64 = load float, ptr %vb0, align 4, !tbaa !12
  %65 = load float, ptr %vacc1x0, align 4, !tbaa !12
  %66 = call float @llvm.fmuladd.f32(float %63, float %64, float %65)
  store float %66, ptr %vacc1x0, align 4, !tbaa !12
  %67 = load float, ptr %va2, align 4, !tbaa !12
  %68 = load float, ptr %vb0, align 4, !tbaa !12
  %69 = load float, ptr %vacc2x0, align 4, !tbaa !12
  %70 = call float @llvm.fmuladd.f32(float %67, float %68, float %69)
  store float %70, ptr %vacc2x0, align 4, !tbaa !12
  %71 = load float, ptr %va3, align 4, !tbaa !12
  %72 = load float, ptr %vb0, align 4, !tbaa !12
  %73 = load float, ptr %vacc3x0, align 4, !tbaa !12
  %74 = call float @llvm.fmuladd.f32(float %71, float %72, float %73)
  store float %74, ptr %vacc3x0, align 4, !tbaa !12
  %75 = load float, ptr %va0, align 4, !tbaa !12
  %76 = load float, ptr %vb1, align 4, !tbaa !12
  %77 = load float, ptr %vacc0x1, align 4, !tbaa !12
  %78 = call float @llvm.fmuladd.f32(float %75, float %76, float %77)
  store float %78, ptr %vacc0x1, align 4, !tbaa !12
  %79 = load float, ptr %va1, align 4, !tbaa !12
  %80 = load float, ptr %vb1, align 4, !tbaa !12
  %81 = load float, ptr %vacc1x1, align 4, !tbaa !12
  %82 = call float @llvm.fmuladd.f32(float %79, float %80, float %81)
  store float %82, ptr %vacc1x1, align 4, !tbaa !12
  %83 = load float, ptr %va2, align 4, !tbaa !12
  %84 = load float, ptr %vb1, align 4, !tbaa !12
  %85 = load float, ptr %vacc2x1, align 4, !tbaa !12
  %86 = call float @llvm.fmuladd.f32(float %83, float %84, float %85)
  store float %86, ptr %vacc2x1, align 4, !tbaa !12
  %87 = load float, ptr %va3, align 4, !tbaa !12
  %88 = load float, ptr %vb1, align 4, !tbaa !12
  %89 = load float, ptr %vacc3x1, align 4, !tbaa !12
  %90 = call float @llvm.fmuladd.f32(float %87, float %88, float %89)
  store float %90, ptr %vacc3x1, align 4, !tbaa !12
  %91 = load float, ptr %va0, align 4, !tbaa !12
  %92 = load float, ptr %vb2, align 4, !tbaa !12
  %93 = load float, ptr %vacc0x2, align 4, !tbaa !12
  %94 = call float @llvm.fmuladd.f32(float %91, float %92, float %93)
  store float %94, ptr %vacc0x2, align 4, !tbaa !12
  %95 = load float, ptr %va1, align 4, !tbaa !12
  %96 = load float, ptr %vb2, align 4, !tbaa !12
  %97 = load float, ptr %vacc1x2, align 4, !tbaa !12
  %98 = call float @llvm.fmuladd.f32(float %95, float %96, float %97)
  store float %98, ptr %vacc1x2, align 4, !tbaa !12
  %99 = load float, ptr %va2, align 4, !tbaa !12
  %100 = load float, ptr %vb2, align 4, !tbaa !12
  %101 = load float, ptr %vacc2x2, align 4, !tbaa !12
  %102 = call float @llvm.fmuladd.f32(float %99, float %100, float %101)
  store float %102, ptr %vacc2x2, align 4, !tbaa !12
  %103 = load float, ptr %va3, align 4, !tbaa !12
  %104 = load float, ptr %vb2, align 4, !tbaa !12
  %105 = load float, ptr %vacc3x2, align 4, !tbaa !12
  %106 = call float @llvm.fmuladd.f32(float %103, float %104, float %105)
  store float %106, ptr %vacc3x2, align 4, !tbaa !12
  %107 = load float, ptr %va0, align 4, !tbaa !12
  %108 = load float, ptr %vb3, align 4, !tbaa !12
  %109 = load float, ptr %vacc0x3, align 4, !tbaa !12
  %110 = call float @llvm.fmuladd.f32(float %107, float %108, float %109)
  store float %110, ptr %vacc0x3, align 4, !tbaa !12
  %111 = load float, ptr %va1, align 4, !tbaa !12
  %112 = load float, ptr %vb3, align 4, !tbaa !12
  %113 = load float, ptr %vacc1x3, align 4, !tbaa !12
  %114 = call float @llvm.fmuladd.f32(float %111, float %112, float %113)
  store float %114, ptr %vacc1x3, align 4, !tbaa !12
  %115 = load float, ptr %va2, align 4, !tbaa !12
  %116 = load float, ptr %vb3, align 4, !tbaa !12
  %117 = load float, ptr %vacc2x3, align 4, !tbaa !12
  %118 = call float @llvm.fmuladd.f32(float %115, float %116, float %117)
  store float %118, ptr %vacc2x3, align 4, !tbaa !12
  %119 = load float, ptr %va3, align 4, !tbaa !12
  %120 = load float, ptr %vb3, align 4, !tbaa !12
  %121 = load float, ptr %vacc3x3, align 4, !tbaa !12
  %122 = call float @llvm.fmuladd.f32(float %119, float %120, float %121)
  store float %122, ptr %vacc3x3, align 4, !tbaa !12
  %123 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %123, 4
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %va3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %va2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #5
  br label %do.cond

do.cond:                                          ; preds = %do.body27
  %124 = load i64, ptr %k, align 8, !tbaa !5
  %cmp38 = icmp ne i64 %124, 0
  br i1 %cmp38, label %do.body27, label %do.end, !llvm.loop !14

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmax) #5
  %125 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %125, i32 0, i32 1
  %126 = load float, ptr %max, align 4, !tbaa !16
  store float %126, ptr %vmax, align 4, !tbaa !12
  %127 = load float, ptr %vacc0x0, align 4, !tbaa !12
  %128 = load float, ptr %vmax, align 4, !tbaa !12
  %call = call float @math_min_f32(float noundef %127, float noundef %128)
  store float %call, ptr %vacc0x0, align 4, !tbaa !12
  %129 = load float, ptr %vacc1x0, align 4, !tbaa !12
  %130 = load float, ptr %vmax, align 4, !tbaa !12
  %call40 = call float @math_min_f32(float noundef %129, float noundef %130)
  store float %call40, ptr %vacc1x0, align 4, !tbaa !12
  %131 = load float, ptr %vacc2x0, align 4, !tbaa !12
  %132 = load float, ptr %vmax, align 4, !tbaa !12
  %call41 = call float @math_min_f32(float noundef %131, float noundef %132)
  store float %call41, ptr %vacc2x0, align 4, !tbaa !12
  %133 = load float, ptr %vacc3x0, align 4, !tbaa !12
  %134 = load float, ptr %vmax, align 4, !tbaa !12
  %call42 = call float @math_min_f32(float noundef %133, float noundef %134)
  store float %call42, ptr %vacc3x0, align 4, !tbaa !12
  %135 = load float, ptr %vacc0x1, align 4, !tbaa !12
  %136 = load float, ptr %vmax, align 4, !tbaa !12
  %call43 = call float @math_min_f32(float noundef %135, float noundef %136)
  store float %call43, ptr %vacc0x1, align 4, !tbaa !12
  %137 = load float, ptr %vacc1x1, align 4, !tbaa !12
  %138 = load float, ptr %vmax, align 4, !tbaa !12
  %call44 = call float @math_min_f32(float noundef %137, float noundef %138)
  store float %call44, ptr %vacc1x1, align 4, !tbaa !12
  %139 = load float, ptr %vacc2x1, align 4, !tbaa !12
  %140 = load float, ptr %vmax, align 4, !tbaa !12
  %call45 = call float @math_min_f32(float noundef %139, float noundef %140)
  store float %call45, ptr %vacc2x1, align 4, !tbaa !12
  %141 = load float, ptr %vacc3x1, align 4, !tbaa !12
  %142 = load float, ptr %vmax, align 4, !tbaa !12
  %call46 = call float @math_min_f32(float noundef %141, float noundef %142)
  store float %call46, ptr %vacc3x1, align 4, !tbaa !12
  %143 = load float, ptr %vacc0x2, align 4, !tbaa !12
  %144 = load float, ptr %vmax, align 4, !tbaa !12
  %call47 = call float @math_min_f32(float noundef %143, float noundef %144)
  store float %call47, ptr %vacc0x2, align 4, !tbaa !12
  %145 = load float, ptr %vacc1x2, align 4, !tbaa !12
  %146 = load float, ptr %vmax, align 4, !tbaa !12
  %call48 = call float @math_min_f32(float noundef %145, float noundef %146)
  store float %call48, ptr %vacc1x2, align 4, !tbaa !12
  %147 = load float, ptr %vacc2x2, align 4, !tbaa !12
  %148 = load float, ptr %vmax, align 4, !tbaa !12
  %call49 = call float @math_min_f32(float noundef %147, float noundef %148)
  store float %call49, ptr %vacc2x2, align 4, !tbaa !12
  %149 = load float, ptr %vacc3x2, align 4, !tbaa !12
  %150 = load float, ptr %vmax, align 4, !tbaa !12
  %call50 = call float @math_min_f32(float noundef %149, float noundef %150)
  store float %call50, ptr %vacc3x2, align 4, !tbaa !12
  %151 = load float, ptr %vacc0x3, align 4, !tbaa !12
  %152 = load float, ptr %vmax, align 4, !tbaa !12
  %call51 = call float @math_min_f32(float noundef %151, float noundef %152)
  store float %call51, ptr %vacc0x3, align 4, !tbaa !12
  %153 = load float, ptr %vacc1x3, align 4, !tbaa !12
  %154 = load float, ptr %vmax, align 4, !tbaa !12
  %call52 = call float @math_min_f32(float noundef %153, float noundef %154)
  store float %call52, ptr %vacc1x3, align 4, !tbaa !12
  %155 = load float, ptr %vacc2x3, align 4, !tbaa !12
  %156 = load float, ptr %vmax, align 4, !tbaa !12
  %call53 = call float @math_min_f32(float noundef %155, float noundef %156)
  store float %call53, ptr %vacc2x3, align 4, !tbaa !12
  %157 = load float, ptr %vacc3x3, align 4, !tbaa !12
  %158 = load float, ptr %vmax, align 4, !tbaa !12
  %call54 = call float @math_min_f32(float noundef %157, float noundef %158)
  store float %call54, ptr %vacc3x3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmin) #5
  %159 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %159, i32 0, i32 0
  %160 = load float, ptr %min, align 32, !tbaa !16
  store float %160, ptr %vmin, align 4, !tbaa !12
  %161 = load float, ptr %vacc0x0, align 4, !tbaa !12
  %162 = load float, ptr %vmin, align 4, !tbaa !12
  %call55 = call float @math_max_f32(float noundef %161, float noundef %162)
  store float %call55, ptr %vacc0x0, align 4, !tbaa !12
  %163 = load float, ptr %vacc1x0, align 4, !tbaa !12
  %164 = load float, ptr %vmin, align 4, !tbaa !12
  %call56 = call float @math_max_f32(float noundef %163, float noundef %164)
  store float %call56, ptr %vacc1x0, align 4, !tbaa !12
  %165 = load float, ptr %vacc2x0, align 4, !tbaa !12
  %166 = load float, ptr %vmin, align 4, !tbaa !12
  %call57 = call float @math_max_f32(float noundef %165, float noundef %166)
  store float %call57, ptr %vacc2x0, align 4, !tbaa !12
  %167 = load float, ptr %vacc3x0, align 4, !tbaa !12
  %168 = load float, ptr %vmin, align 4, !tbaa !12
  %call58 = call float @math_max_f32(float noundef %167, float noundef %168)
  store float %call58, ptr %vacc3x0, align 4, !tbaa !12
  %169 = load float, ptr %vacc0x1, align 4, !tbaa !12
  %170 = load float, ptr %vmin, align 4, !tbaa !12
  %call59 = call float @math_max_f32(float noundef %169, float noundef %170)
  store float %call59, ptr %vacc0x1, align 4, !tbaa !12
  %171 = load float, ptr %vacc1x1, align 4, !tbaa !12
  %172 = load float, ptr %vmin, align 4, !tbaa !12
  %call60 = call float @math_max_f32(float noundef %171, float noundef %172)
  store float %call60, ptr %vacc1x1, align 4, !tbaa !12
  %173 = load float, ptr %vacc2x1, align 4, !tbaa !12
  %174 = load float, ptr %vmin, align 4, !tbaa !12
  %call61 = call float @math_max_f32(float noundef %173, float noundef %174)
  store float %call61, ptr %vacc2x1, align 4, !tbaa !12
  %175 = load float, ptr %vacc3x1, align 4, !tbaa !12
  %176 = load float, ptr %vmin, align 4, !tbaa !12
  %call62 = call float @math_max_f32(float noundef %175, float noundef %176)
  store float %call62, ptr %vacc3x1, align 4, !tbaa !12
  %177 = load float, ptr %vacc0x2, align 4, !tbaa !12
  %178 = load float, ptr %vmin, align 4, !tbaa !12
  %call63 = call float @math_max_f32(float noundef %177, float noundef %178)
  store float %call63, ptr %vacc0x2, align 4, !tbaa !12
  %179 = load float, ptr %vacc1x2, align 4, !tbaa !12
  %180 = load float, ptr %vmin, align 4, !tbaa !12
  %call64 = call float @math_max_f32(float noundef %179, float noundef %180)
  store float %call64, ptr %vacc1x2, align 4, !tbaa !12
  %181 = load float, ptr %vacc2x2, align 4, !tbaa !12
  %182 = load float, ptr %vmin, align 4, !tbaa !12
  %call65 = call float @math_max_f32(float noundef %181, float noundef %182)
  store float %call65, ptr %vacc2x2, align 4, !tbaa !12
  %183 = load float, ptr %vacc3x2, align 4, !tbaa !12
  %184 = load float, ptr %vmin, align 4, !tbaa !12
  %call66 = call float @math_max_f32(float noundef %183, float noundef %184)
  store float %call66, ptr %vacc3x2, align 4, !tbaa !12
  %185 = load float, ptr %vacc0x3, align 4, !tbaa !12
  %186 = load float, ptr %vmin, align 4, !tbaa !12
  %call67 = call float @math_max_f32(float noundef %185, float noundef %186)
  store float %call67, ptr %vacc0x3, align 4, !tbaa !12
  %187 = load float, ptr %vacc1x3, align 4, !tbaa !12
  %188 = load float, ptr %vmin, align 4, !tbaa !12
  %call68 = call float @math_max_f32(float noundef %187, float noundef %188)
  store float %call68, ptr %vacc1x3, align 4, !tbaa !12
  %189 = load float, ptr %vacc2x3, align 4, !tbaa !12
  %190 = load float, ptr %vmin, align 4, !tbaa !12
  %call69 = call float @math_max_f32(float noundef %189, float noundef %190)
  store float %call69, ptr %vacc2x3, align 4, !tbaa !12
  %191 = load float, ptr %vacc3x3, align 4, !tbaa !12
  %192 = load float, ptr %vmin, align 4, !tbaa !12
  %call70 = call float @math_max_f32(float noundef %191, float noundef %192)
  store float %call70, ptr %vacc3x3, align 4, !tbaa !12
  %193 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp71 = icmp uge i64 %193, 4
  %lnot73 = xor i1 %cmp71, true
  %lnot75 = xor i1 %lnot73, true
  %lnot.ext76 = zext i1 %lnot75 to i32
  %conv77 = sext i32 %lnot.ext76 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv77, i64 1)
  %tobool78 = icmp ne i64 %expval, 0
  br i1 %tobool78, label %if.then79, label %if.else

if.then79:                                        ; preds = %do.end
  %194 = load float, ptr %vacc3x0, align 4, !tbaa !12
  %195 = load ptr, ptr %c3, align 8, !tbaa !9
  %arrayidx80 = getelementptr inbounds float, ptr %195, i64 0
  store float %194, ptr %arrayidx80, align 4, !tbaa !12
  %196 = load float, ptr %vacc3x1, align 4, !tbaa !12
  %197 = load ptr, ptr %c3, align 8, !tbaa !9
  %arrayidx81 = getelementptr inbounds float, ptr %197, i64 1
  store float %196, ptr %arrayidx81, align 4, !tbaa !12
  %198 = load float, ptr %vacc3x2, align 4, !tbaa !12
  %199 = load ptr, ptr %c3, align 8, !tbaa !9
  %arrayidx82 = getelementptr inbounds float, ptr %199, i64 2
  store float %198, ptr %arrayidx82, align 4, !tbaa !12
  %200 = load float, ptr %vacc3x3, align 4, !tbaa !12
  %201 = load ptr, ptr %c3, align 8, !tbaa !9
  %arrayidx83 = getelementptr inbounds float, ptr %201, i64 3
  store float %200, ptr %arrayidx83, align 4, !tbaa !12
  %202 = load float, ptr %vacc2x0, align 4, !tbaa !12
  %203 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx84 = getelementptr inbounds float, ptr %203, i64 0
  store float %202, ptr %arrayidx84, align 4, !tbaa !12
  %204 = load float, ptr %vacc2x1, align 4, !tbaa !12
  %205 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx85 = getelementptr inbounds float, ptr %205, i64 1
  store float %204, ptr %arrayidx85, align 4, !tbaa !12
  %206 = load float, ptr %vacc2x2, align 4, !tbaa !12
  %207 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx86 = getelementptr inbounds float, ptr %207, i64 2
  store float %206, ptr %arrayidx86, align 4, !tbaa !12
  %208 = load float, ptr %vacc2x3, align 4, !tbaa !12
  %209 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds float, ptr %209, i64 3
  store float %208, ptr %arrayidx87, align 4, !tbaa !12
  %210 = load float, ptr %vacc1x0, align 4, !tbaa !12
  %211 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx88 = getelementptr inbounds float, ptr %211, i64 0
  store float %210, ptr %arrayidx88, align 4, !tbaa !12
  %212 = load float, ptr %vacc1x1, align 4, !tbaa !12
  %213 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx89 = getelementptr inbounds float, ptr %213, i64 1
  store float %212, ptr %arrayidx89, align 4, !tbaa !12
  %214 = load float, ptr %vacc1x2, align 4, !tbaa !12
  %215 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx90 = getelementptr inbounds float, ptr %215, i64 2
  store float %214, ptr %arrayidx90, align 4, !tbaa !12
  %216 = load float, ptr %vacc1x3, align 4, !tbaa !12
  %217 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx91 = getelementptr inbounds float, ptr %217, i64 3
  store float %216, ptr %arrayidx91, align 4, !tbaa !12
  %218 = load float, ptr %vacc0x0, align 4, !tbaa !12
  %219 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx92 = getelementptr inbounds float, ptr %219, i64 0
  store float %218, ptr %arrayidx92, align 4, !tbaa !12
  %220 = load float, ptr %vacc0x1, align 4, !tbaa !12
  %221 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx93 = getelementptr inbounds float, ptr %221, i64 1
  store float %220, ptr %arrayidx93, align 4, !tbaa !12
  %222 = load float, ptr %vacc0x2, align 4, !tbaa !12
  %223 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx94 = getelementptr inbounds float, ptr %223, i64 2
  store float %222, ptr %arrayidx94, align 4, !tbaa !12
  %224 = load float, ptr %vacc0x3, align 4, !tbaa !12
  %225 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx95 = getelementptr inbounds float, ptr %225, i64 3
  store float %224, ptr %arrayidx95, align 4, !tbaa !12
  %226 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %227 = ptrtoint ptr %226 to i64
  %228 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %mul = mul i64 %228, 4
  %sub96 = sub i64 %227, %mul
  %229 = inttoptr i64 %sub96 to ptr
  store ptr %229, ptr %a.addr, align 8, !tbaa !9
  %230 = load ptr, ptr %c3, align 8, !tbaa !9
  %231 = ptrtoint ptr %230 to i64
  %232 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add97 = add i64 %231, %232
  %233 = inttoptr i64 %add97 to ptr
  store ptr %233, ptr %c3, align 8, !tbaa !9
  %234 = load ptr, ptr %c2, align 8, !tbaa !9
  %235 = ptrtoint ptr %234 to i64
  %236 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add98 = add i64 %235, %236
  %237 = inttoptr i64 %add98 to ptr
  store ptr %237, ptr %c2, align 8, !tbaa !9
  %238 = load ptr, ptr %c1, align 8, !tbaa !9
  %239 = ptrtoint ptr %238 to i64
  %240 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add99 = add i64 %239, %240
  %241 = inttoptr i64 %add99 to ptr
  store ptr %241, ptr %c1, align 8, !tbaa !9
  %242 = load ptr, ptr %c0, align 8, !tbaa !9
  %243 = ptrtoint ptr %242 to i64
  %244 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add100 = add i64 %243, %244
  %245 = inttoptr i64 %add100 to ptr
  store ptr %245, ptr %c0, align 8, !tbaa !9
  %246 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub101 = sub i64 %246, 4
  store i64 %sub101, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end121

if.else:                                          ; preds = %do.end
  %247 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %247, 2
  %tobool102 = icmp ne i64 %and, 0
  br i1 %tobool102, label %if.then103, label %if.end116

if.then103:                                       ; preds = %if.else
  %248 = load float, ptr %vacc3x0, align 4, !tbaa !12
  %249 = load ptr, ptr %c3, align 8, !tbaa !9
  %arrayidx104 = getelementptr inbounds float, ptr %249, i64 0
  store float %248, ptr %arrayidx104, align 4, !tbaa !12
  %250 = load float, ptr %vacc3x1, align 4, !tbaa !12
  %251 = load ptr, ptr %c3, align 8, !tbaa !9
  %arrayidx105 = getelementptr inbounds float, ptr %251, i64 1
  store float %250, ptr %arrayidx105, align 4, !tbaa !12
  %252 = load float, ptr %vacc2x0, align 4, !tbaa !12
  %253 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx106 = getelementptr inbounds float, ptr %253, i64 0
  store float %252, ptr %arrayidx106, align 4, !tbaa !12
  %254 = load float, ptr %vacc2x1, align 4, !tbaa !12
  %255 = load ptr, ptr %c2, align 8, !tbaa !9
  %arrayidx107 = getelementptr inbounds float, ptr %255, i64 1
  store float %254, ptr %arrayidx107, align 4, !tbaa !12
  %256 = load float, ptr %vacc1x0, align 4, !tbaa !12
  %257 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx108 = getelementptr inbounds float, ptr %257, i64 0
  store float %256, ptr %arrayidx108, align 4, !tbaa !12
  %258 = load float, ptr %vacc1x1, align 4, !tbaa !12
  %259 = load ptr, ptr %c1, align 8, !tbaa !9
  %arrayidx109 = getelementptr inbounds float, ptr %259, i64 1
  store float %258, ptr %arrayidx109, align 4, !tbaa !12
  %260 = load float, ptr %vacc0x0, align 4, !tbaa !12
  %261 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx110 = getelementptr inbounds float, ptr %261, i64 0
  store float %260, ptr %arrayidx110, align 4, !tbaa !12
  %262 = load float, ptr %vacc0x1, align 4, !tbaa !12
  %263 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx111 = getelementptr inbounds float, ptr %263, i64 1
  store float %262, ptr %arrayidx111, align 4, !tbaa !12
  %264 = load float, ptr %vacc3x2, align 4, !tbaa !12
  store float %264, ptr %vacc3x0, align 4, !tbaa !12
  %265 = load float, ptr %vacc2x2, align 4, !tbaa !12
  store float %265, ptr %vacc2x0, align 4, !tbaa !12
  %266 = load float, ptr %vacc1x2, align 4, !tbaa !12
  store float %266, ptr %vacc1x0, align 4, !tbaa !12
  %267 = load float, ptr %vacc0x2, align 4, !tbaa !12
  store float %267, ptr %vacc0x0, align 4, !tbaa !12
  %268 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr112 = getelementptr inbounds float, ptr %268, i64 2
  store ptr %add.ptr112, ptr %c3, align 8, !tbaa !9
  %269 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr113 = getelementptr inbounds float, ptr %269, i64 2
  store ptr %add.ptr113, ptr %c2, align 8, !tbaa !9
  %270 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr114 = getelementptr inbounds float, ptr %270, i64 2
  store ptr %add.ptr114, ptr %c1, align 8, !tbaa !9
  %271 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr115 = getelementptr inbounds float, ptr %271, i64 2
  store ptr %add.ptr115, ptr %c0, align 8, !tbaa !9
  br label %if.end116

if.end116:                                        ; preds = %if.then103, %if.else
  %272 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and117 = and i64 %272, 1
  %tobool118 = icmp ne i64 %and117, 0
  br i1 %tobool118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  %273 = load float, ptr %vacc3x0, align 4, !tbaa !12
  %274 = load ptr, ptr %c3, align 8, !tbaa !9
  store float %273, ptr %274, align 4, !tbaa !12
  %275 = load float, ptr %vacc2x0, align 4, !tbaa !12
  %276 = load ptr, ptr %c2, align 8, !tbaa !9
  store float %275, ptr %276, align 4, !tbaa !12
  %277 = load float, ptr %vacc1x0, align 4, !tbaa !12
  %278 = load ptr, ptr %c1, align 8, !tbaa !9
  store float %277, ptr %278, align 4, !tbaa !12
  %279 = load float, ptr %vacc0x0, align 4, !tbaa !12
  %280 = load ptr, ptr %c0, align 8, !tbaa !9
  store float %279, ptr %280, align 4, !tbaa !12
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end116
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then79
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3x3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3x1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3x0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2x0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1x0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x0) #5
  br label %do.cond122

do.cond122:                                       ; preds = %if.end121
  %281 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp123 = icmp ne i64 %281, 0
  br i1 %cmp123, label %do.body, label %do.end125, !llvm.loop !17

do.end125:                                        ; preds = %do.cond122
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_min_f32(float noundef %a, float noundef %b) #3 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !12
  store float %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load float, ptr %b.addr, align 4, !tbaa !12
  %1 = load float, ptr %a.addr, align 4, !tbaa !12
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #3 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !12
  store float %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load float, ptr %b.addr, align 4, !tbaa !12
  %1 = load float, ptr %a.addr, align 4, !tbaa !12
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

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
!13 = !{!"float", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !15}

; ModuleID = 'samples/767.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-gemm/gen/5x8-minmax-sse-load1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { [4 x float], [4 x float] }
%struct.__mm_load1_ps_struct = type { float }
%struct.__storeu_ps = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_gemm_minmax_ukernel_5x8__sse_load1(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, i64 noundef %a_stride, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
entry:
  %mr.addr = alloca i64, align 8
  %nc.addr = alloca i64, align 8
  %kc.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %a_stride.addr = alloca i64, align 8
  %w.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cm_stride.addr = alloca i64, align 8
  %cn_stride.addr = alloca i64, align 8
  %params.addr = alloca ptr, align 8
  %a0 = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %c1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %c2 = alloca ptr, align 8
  %a3 = alloca ptr, align 8
  %c3 = alloca ptr, align 8
  %a4 = alloca ptr, align 8
  %c4 = alloca ptr, align 8
  %vacc0x0123 = alloca <4 x float>, align 16
  %vacc0x4567 = alloca <4 x float>, align 16
  %vacc1x0123 = alloca <4 x float>, align 16
  %vacc1x4567 = alloca <4 x float>, align 16
  %vacc2x0123 = alloca <4 x float>, align 16
  %vacc2x4567 = alloca <4 x float>, align 16
  %vacc3x0123 = alloca <4 x float>, align 16
  %vacc3x4567 = alloca <4 x float>, align 16
  %vacc4x0123 = alloca <4 x float>, align 16
  %vacc4x4567 = alloca <4 x float>, align 16
  %k = alloca i64, align 8
  %va0 = alloca <4 x float>, align 16
  %va1 = alloca <4 x float>, align 16
  %va2 = alloca <4 x float>, align 16
  %va3 = alloca <4 x float>, align 16
  %va4 = alloca <4 x float>, align 16
  %vb0123 = alloca <4 x float>, align 16
  %vb4567 = alloca <4 x float>, align 16
  %vmax = alloca <4 x float>, align 16
  %vmin = alloca <4 x float>, align 16
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !5
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !5
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %a_stride, ptr %a_stride.addr, align 8, !tbaa !5
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !5
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !5
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #4
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %1, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #4
  %2 = load ptr, ptr %a0, align 8, !tbaa !9
  %3 = ptrtoint ptr %2 to i64
  %4 = load i64, ptr %a_stride.addr, align 8, !tbaa !5
  %add = add i64 %3, %4
  %5 = inttoptr i64 %add to ptr
  store ptr %5, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #4
  %6 = load ptr, ptr %c0, align 8, !tbaa !9
  %7 = ptrtoint ptr %6 to i64
  %8 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add1 = add i64 %7, %8
  %9 = inttoptr i64 %add1 to ptr
  store ptr %9, ptr %c1, align 8, !tbaa !9
  %10 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %10, 2
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %a0, align 8, !tbaa !9
  store ptr %11, ptr %a1, align 8, !tbaa !9
  %12 = load ptr, ptr %c0, align 8, !tbaa !9
  store ptr %12, ptr %c1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #4
  %13 = load ptr, ptr %a1, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %a_stride.addr, align 8, !tbaa !5
  %add3 = add i64 %14, %15
  %16 = inttoptr i64 %add3 to ptr
  store ptr %16, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #4
  %17 = load ptr, ptr %c1, align 8, !tbaa !9
  %18 = ptrtoint ptr %17 to i64
  %19 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add4 = add i64 %18, %19
  %20 = inttoptr i64 %add4 to ptr
  store ptr %20, ptr %c2, align 8, !tbaa !9
  %21 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp5 = icmp ule i64 %21, 2
  %lnot7 = xor i1 %cmp5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.end14, !unpredictable !11

if.then13:                                        ; preds = %if.end
  %22 = load ptr, ptr %a1, align 8, !tbaa !9
  store ptr %22, ptr %a2, align 8, !tbaa !9
  %23 = load ptr, ptr %c1, align 8, !tbaa !9
  store ptr %23, ptr %c2, align 8, !tbaa !9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3) #4
  %24 = load ptr, ptr %a2, align 8, !tbaa !9
  %25 = ptrtoint ptr %24 to i64
  %26 = load i64, ptr %a_stride.addr, align 8, !tbaa !5
  %add15 = add i64 %25, %26
  %27 = inttoptr i64 %add15 to ptr
  store ptr %27, ptr %a3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c3) #4
  %28 = load ptr, ptr %c2, align 8, !tbaa !9
  %29 = ptrtoint ptr %28 to i64
  %30 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add16 = add i64 %29, %30
  %31 = inttoptr i64 %add16 to ptr
  store ptr %31, ptr %c3, align 8, !tbaa !9
  %32 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp17 = icmp ult i64 %32, 4
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then25, label %if.end26, !unpredictable !11

if.then25:                                        ; preds = %if.end14
  %33 = load ptr, ptr %a2, align 8, !tbaa !9
  store ptr %33, ptr %a3, align 8, !tbaa !9
  %34 = load ptr, ptr %c2, align 8, !tbaa !9
  store ptr %34, ptr %c3, align 8, !tbaa !9
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %a4) #4
  %35 = load ptr, ptr %a3, align 8, !tbaa !9
  %36 = ptrtoint ptr %35 to i64
  %37 = load i64, ptr %a_stride.addr, align 8, !tbaa !5
  %add27 = add i64 %36, %37
  %38 = inttoptr i64 %add27 to ptr
  store ptr %38, ptr %a4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c4) #4
  %39 = load ptr, ptr %c3, align 8, !tbaa !9
  %40 = ptrtoint ptr %39 to i64
  %41 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add28 = add i64 %40, %41
  %42 = inttoptr i64 %add28 to ptr
  store ptr %42, ptr %c4, align 8, !tbaa !9
  %43 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp29 = icmp ule i64 %43, 4
  %lnot31 = xor i1 %cmp29, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %tobool36 = icmp ne i64 %conv35, 0
  br i1 %tobool36, label %if.then37, label %if.end38, !unpredictable !11

if.then37:                                        ; preds = %if.end26
  %44 = load ptr, ptr %a3, align 8, !tbaa !9
  store ptr %44, ptr %a4, align 8, !tbaa !9
  %45 = load ptr, ptr %c3, align 8, !tbaa !9
  store ptr %45, ptr %c4, align 8, !tbaa !9
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end26
  br label %do.body

do.body:                                          ; preds = %do.cond154, %if.end38
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #4
  %46 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %46, i64 0
  %call = call <4 x float> @_mm_load_ps(ptr noundef %add.ptr)
  store <4 x float> %call, ptr %vacc0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x4567) #4
  %47 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr39 = getelementptr inbounds float, ptr %47, i64 4
  %call40 = call <4 x float> @_mm_load_ps(ptr noundef %add.ptr39)
  store <4 x float> %call40, ptr %vacc0x4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #4
  %48 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  store <4 x float> %48, ptr %vacc1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x4567) #4
  %49 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  store <4 x float> %49, ptr %vacc1x4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x0123) #4
  %50 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  store <4 x float> %50, ptr %vacc2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x4567) #4
  %51 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  store <4 x float> %51, ptr %vacc2x4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc3x0123) #4
  %52 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  store <4 x float> %52, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc3x4567) #4
  %53 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  store <4 x float> %53, ptr %vacc3x4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4x0123) #4
  %54 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  store <4 x float> %54, ptr %vacc4x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4x4567) #4
  %55 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  store <4 x float> %55, ptr %vacc4x4567, align 16, !tbaa !12
  %56 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr41 = getelementptr inbounds float, ptr %56, i64 8
  store ptr %add.ptr41, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %57 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %57, ptr %k, align 8, !tbaa !5
  br label %do.body42

do.body42:                                        ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #4
  %58 = load ptr, ptr %a0, align 8, !tbaa !9
  %call43 = call <4 x float> @_mm_load1_ps(ptr noundef %58)
  store <4 x float> %call43, ptr %va0, align 16, !tbaa !12
  %59 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr44 = getelementptr inbounds float, ptr %59, i64 1
  store ptr %add.ptr44, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #4
  %60 = load ptr, ptr %a1, align 8, !tbaa !9
  %call45 = call <4 x float> @_mm_load1_ps(ptr noundef %60)
  store <4 x float> %call45, ptr %va1, align 16, !tbaa !12
  %61 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr46 = getelementptr inbounds float, ptr %61, i64 1
  store ptr %add.ptr46, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va2) #4
  %62 = load ptr, ptr %a2, align 8, !tbaa !9
  %call47 = call <4 x float> @_mm_load1_ps(ptr noundef %62)
  store <4 x float> %call47, ptr %va2, align 16, !tbaa !12
  %63 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr48 = getelementptr inbounds float, ptr %63, i64 1
  store ptr %add.ptr48, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va3) #4
  %64 = load ptr, ptr %a3, align 8, !tbaa !9
  %call49 = call <4 x float> @_mm_load1_ps(ptr noundef %64)
  store <4 x float> %call49, ptr %va3, align 16, !tbaa !12
  %65 = load ptr, ptr %a3, align 8, !tbaa !9
  %add.ptr50 = getelementptr inbounds float, ptr %65, i64 1
  store ptr %add.ptr50, ptr %a3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va4) #4
  %66 = load ptr, ptr %a4, align 8, !tbaa !9
  %call51 = call <4 x float> @_mm_load1_ps(ptr noundef %66)
  store <4 x float> %call51, ptr %va4, align 16, !tbaa !12
  %67 = load ptr, ptr %a4, align 8, !tbaa !9
  %add.ptr52 = getelementptr inbounds float, ptr %67, i64 1
  store ptr %add.ptr52, ptr %a4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0123) #4
  %68 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call53 = call <4 x float> @_mm_load_ps(ptr noundef %68)
  store <4 x float> %call53, ptr %vb0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb4567) #4
  %69 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr54 = getelementptr inbounds float, ptr %69, i64 4
  %call55 = call <4 x float> @_mm_load_ps(ptr noundef %add.ptr54)
  store <4 x float> %call55, ptr %vb4567, align 16, !tbaa !12
  %70 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr56 = getelementptr inbounds float, ptr %70, i64 8
  store ptr %add.ptr56, ptr %w.addr, align 8, !tbaa !9
  %71 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %72 = load <4 x float>, ptr %va0, align 16, !tbaa !12
  %73 = load <4 x float>, ptr %vb0123, align 16, !tbaa !12
  %call57 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %72, <4 x float> noundef %73)
  %call58 = call <4 x float> @_mm_add_ps(<4 x float> noundef %71, <4 x float> noundef %call57)
  store <4 x float> %call58, ptr %vacc0x0123, align 16, !tbaa !12
  %74 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %75 = load <4 x float>, ptr %va1, align 16, !tbaa !12
  %76 = load <4 x float>, ptr %vb0123, align 16, !tbaa !12
  %call59 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %75, <4 x float> noundef %76)
  %call60 = call <4 x float> @_mm_add_ps(<4 x float> noundef %74, <4 x float> noundef %call59)
  store <4 x float> %call60, ptr %vacc1x0123, align 16, !tbaa !12
  %77 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %78 = load <4 x float>, ptr %va2, align 16, !tbaa !12
  %79 = load <4 x float>, ptr %vb0123, align 16, !tbaa !12
  %call61 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %78, <4 x float> noundef %79)
  %call62 = call <4 x float> @_mm_add_ps(<4 x float> noundef %77, <4 x float> noundef %call61)
  store <4 x float> %call62, ptr %vacc2x0123, align 16, !tbaa !12
  %80 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  %81 = load <4 x float>, ptr %va3, align 16, !tbaa !12
  %82 = load <4 x float>, ptr %vb0123, align 16, !tbaa !12
  %call63 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %81, <4 x float> noundef %82)
  %call64 = call <4 x float> @_mm_add_ps(<4 x float> noundef %80, <4 x float> noundef %call63)
  store <4 x float> %call64, ptr %vacc3x0123, align 16, !tbaa !12
  %83 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  %84 = load <4 x float>, ptr %va4, align 16, !tbaa !12
  %85 = load <4 x float>, ptr %vb0123, align 16, !tbaa !12
  %call65 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %84, <4 x float> noundef %85)
  %call66 = call <4 x float> @_mm_add_ps(<4 x float> noundef %83, <4 x float> noundef %call65)
  store <4 x float> %call66, ptr %vacc4x0123, align 16, !tbaa !12
  %86 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  %87 = load <4 x float>, ptr %va0, align 16, !tbaa !12
  %88 = load <4 x float>, ptr %vb4567, align 16, !tbaa !12
  %call67 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %87, <4 x float> noundef %88)
  %call68 = call <4 x float> @_mm_add_ps(<4 x float> noundef %86, <4 x float> noundef %call67)
  store <4 x float> %call68, ptr %vacc0x4567, align 16, !tbaa !12
  %89 = load <4 x float>, ptr %vacc1x4567, align 16, !tbaa !12
  %90 = load <4 x float>, ptr %va1, align 16, !tbaa !12
  %91 = load <4 x float>, ptr %vb4567, align 16, !tbaa !12
  %call69 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %90, <4 x float> noundef %91)
  %call70 = call <4 x float> @_mm_add_ps(<4 x float> noundef %89, <4 x float> noundef %call69)
  store <4 x float> %call70, ptr %vacc1x4567, align 16, !tbaa !12
  %92 = load <4 x float>, ptr %vacc2x4567, align 16, !tbaa !12
  %93 = load <4 x float>, ptr %va2, align 16, !tbaa !12
  %94 = load <4 x float>, ptr %vb4567, align 16, !tbaa !12
  %call71 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %93, <4 x float> noundef %94)
  %call72 = call <4 x float> @_mm_add_ps(<4 x float> noundef %92, <4 x float> noundef %call71)
  store <4 x float> %call72, ptr %vacc2x4567, align 16, !tbaa !12
  %95 = load <4 x float>, ptr %vacc3x4567, align 16, !tbaa !12
  %96 = load <4 x float>, ptr %va3, align 16, !tbaa !12
  %97 = load <4 x float>, ptr %vb4567, align 16, !tbaa !12
  %call73 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %96, <4 x float> noundef %97)
  %call74 = call <4 x float> @_mm_add_ps(<4 x float> noundef %95, <4 x float> noundef %call73)
  store <4 x float> %call74, ptr %vacc3x4567, align 16, !tbaa !12
  %98 = load <4 x float>, ptr %vacc4x4567, align 16, !tbaa !12
  %99 = load <4 x float>, ptr %va4, align 16, !tbaa !12
  %100 = load <4 x float>, ptr %vb4567, align 16, !tbaa !12
  %call75 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %99, <4 x float> noundef %100)
  %call76 = call <4 x float> @_mm_add_ps(<4 x float> noundef %98, <4 x float> noundef %call75)
  store <4 x float> %call76, ptr %vacc4x4567, align 16, !tbaa !12
  %101 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %101, 4
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va3) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body42
  %102 = load i64, ptr %k, align 8, !tbaa !5
  %cmp77 = icmp ne i64 %102, 0
  br i1 %cmp77, label %do.body42, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmax) #4
  %103 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon.0, ptr %103, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x float], ptr %max, i64 0, i64 0
  %call79 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call79, ptr %vmax, align 16, !tbaa !12
  %104 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %105 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call80 = call <4 x float> @_mm_min_ps(<4 x float> noundef %104, <4 x float> noundef %105)
  store <4 x float> %call80, ptr %vacc0x0123, align 16, !tbaa !12
  %106 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %107 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call81 = call <4 x float> @_mm_min_ps(<4 x float> noundef %106, <4 x float> noundef %107)
  store <4 x float> %call81, ptr %vacc1x0123, align 16, !tbaa !12
  %108 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %109 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call82 = call <4 x float> @_mm_min_ps(<4 x float> noundef %108, <4 x float> noundef %109)
  store <4 x float> %call82, ptr %vacc2x0123, align 16, !tbaa !12
  %110 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  %111 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call83 = call <4 x float> @_mm_min_ps(<4 x float> noundef %110, <4 x float> noundef %111)
  store <4 x float> %call83, ptr %vacc3x0123, align 16, !tbaa !12
  %112 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  %113 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call84 = call <4 x float> @_mm_min_ps(<4 x float> noundef %112, <4 x float> noundef %113)
  store <4 x float> %call84, ptr %vacc4x0123, align 16, !tbaa !12
  %114 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  %115 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call85 = call <4 x float> @_mm_min_ps(<4 x float> noundef %114, <4 x float> noundef %115)
  store <4 x float> %call85, ptr %vacc0x4567, align 16, !tbaa !12
  %116 = load <4 x float>, ptr %vacc1x4567, align 16, !tbaa !12
  %117 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call86 = call <4 x float> @_mm_min_ps(<4 x float> noundef %116, <4 x float> noundef %117)
  store <4 x float> %call86, ptr %vacc1x4567, align 16, !tbaa !12
  %118 = load <4 x float>, ptr %vacc2x4567, align 16, !tbaa !12
  %119 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call87 = call <4 x float> @_mm_min_ps(<4 x float> noundef %118, <4 x float> noundef %119)
  store <4 x float> %call87, ptr %vacc2x4567, align 16, !tbaa !12
  %120 = load <4 x float>, ptr %vacc3x4567, align 16, !tbaa !12
  %121 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call88 = call <4 x float> @_mm_min_ps(<4 x float> noundef %120, <4 x float> noundef %121)
  store <4 x float> %call88, ptr %vacc3x4567, align 16, !tbaa !12
  %122 = load <4 x float>, ptr %vacc4x4567, align 16, !tbaa !12
  %123 = load <4 x float>, ptr %vmax, align 16, !tbaa !12
  %call89 = call <4 x float> @_mm_min_ps(<4 x float> noundef %122, <4 x float> noundef %123)
  store <4 x float> %call89, ptr %vacc4x4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmin) #4
  %124 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon.0, ptr %124, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [4 x float], ptr %min, i64 0, i64 0
  %call91 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay90)
  store <4 x float> %call91, ptr %vmin, align 16, !tbaa !12
  %125 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %126 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call92 = call <4 x float> @_mm_max_ps(<4 x float> noundef %125, <4 x float> noundef %126)
  store <4 x float> %call92, ptr %vacc0x0123, align 16, !tbaa !12
  %127 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %128 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call93 = call <4 x float> @_mm_max_ps(<4 x float> noundef %127, <4 x float> noundef %128)
  store <4 x float> %call93, ptr %vacc1x0123, align 16, !tbaa !12
  %129 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %130 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call94 = call <4 x float> @_mm_max_ps(<4 x float> noundef %129, <4 x float> noundef %130)
  store <4 x float> %call94, ptr %vacc2x0123, align 16, !tbaa !12
  %131 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  %132 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call95 = call <4 x float> @_mm_max_ps(<4 x float> noundef %131, <4 x float> noundef %132)
  store <4 x float> %call95, ptr %vacc3x0123, align 16, !tbaa !12
  %133 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  %134 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call96 = call <4 x float> @_mm_max_ps(<4 x float> noundef %133, <4 x float> noundef %134)
  store <4 x float> %call96, ptr %vacc4x0123, align 16, !tbaa !12
  %135 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  %136 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call97 = call <4 x float> @_mm_max_ps(<4 x float> noundef %135, <4 x float> noundef %136)
  store <4 x float> %call97, ptr %vacc0x4567, align 16, !tbaa !12
  %137 = load <4 x float>, ptr %vacc1x4567, align 16, !tbaa !12
  %138 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call98 = call <4 x float> @_mm_max_ps(<4 x float> noundef %137, <4 x float> noundef %138)
  store <4 x float> %call98, ptr %vacc1x4567, align 16, !tbaa !12
  %139 = load <4 x float>, ptr %vacc2x4567, align 16, !tbaa !12
  %140 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call99 = call <4 x float> @_mm_max_ps(<4 x float> noundef %139, <4 x float> noundef %140)
  store <4 x float> %call99, ptr %vacc2x4567, align 16, !tbaa !12
  %141 = load <4 x float>, ptr %vacc3x4567, align 16, !tbaa !12
  %142 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call100 = call <4 x float> @_mm_max_ps(<4 x float> noundef %141, <4 x float> noundef %142)
  store <4 x float> %call100, ptr %vacc3x4567, align 16, !tbaa !12
  %143 = load <4 x float>, ptr %vacc4x4567, align 16, !tbaa !12
  %144 = load <4 x float>, ptr %vmin, align 16, !tbaa !12
  %call101 = call <4 x float> @_mm_max_ps(<4 x float> noundef %143, <4 x float> noundef %144)
  store <4 x float> %call101, ptr %vacc4x4567, align 16, !tbaa !12
  %145 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp102 = icmp uge i64 %145, 8
  %lnot104 = xor i1 %cmp102, true
  %lnot106 = xor i1 %lnot104, true
  %lnot.ext107 = zext i1 %lnot106 to i32
  %conv108 = sext i32 %lnot.ext107 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv108, i64 1)
  %tobool109 = icmp ne i64 %expval, 0
  br i1 %tobool109, label %if.then110, label %if.else

if.then110:                                       ; preds = %do.end
  %146 = load ptr, ptr %c4, align 8, !tbaa !9
  %147 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %146, <4 x float> noundef %147)
  %148 = load ptr, ptr %c4, align 8, !tbaa !9
  %add.ptr111 = getelementptr inbounds float, ptr %148, i64 4
  %149 = load <4 x float>, ptr %vacc4x4567, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %add.ptr111, <4 x float> noundef %149)
  %150 = load ptr, ptr %c4, align 8, !tbaa !9
  %151 = ptrtoint ptr %150 to i64
  %152 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add112 = add i64 %151, %152
  %153 = inttoptr i64 %add112 to ptr
  store ptr %153, ptr %c4, align 8, !tbaa !9
  %154 = load ptr, ptr %c3, align 8, !tbaa !9
  %155 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %154, <4 x float> noundef %155)
  %156 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr113 = getelementptr inbounds float, ptr %156, i64 4
  %157 = load <4 x float>, ptr %vacc3x4567, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %add.ptr113, <4 x float> noundef %157)
  %158 = load ptr, ptr %c3, align 8, !tbaa !9
  %159 = ptrtoint ptr %158 to i64
  %160 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add114 = add i64 %159, %160
  %161 = inttoptr i64 %add114 to ptr
  store ptr %161, ptr %c3, align 8, !tbaa !9
  %162 = load ptr, ptr %c2, align 8, !tbaa !9
  %163 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %162, <4 x float> noundef %163)
  %164 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr115 = getelementptr inbounds float, ptr %164, i64 4
  %165 = load <4 x float>, ptr %vacc2x4567, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %add.ptr115, <4 x float> noundef %165)
  %166 = load ptr, ptr %c2, align 8, !tbaa !9
  %167 = ptrtoint ptr %166 to i64
  %168 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add116 = add i64 %167, %168
  %169 = inttoptr i64 %add116 to ptr
  store ptr %169, ptr %c2, align 8, !tbaa !9
  %170 = load ptr, ptr %c1, align 8, !tbaa !9
  %171 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %170, <4 x float> noundef %171)
  %172 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr117 = getelementptr inbounds float, ptr %172, i64 4
  %173 = load <4 x float>, ptr %vacc1x4567, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %add.ptr117, <4 x float> noundef %173)
  %174 = load ptr, ptr %c1, align 8, !tbaa !9
  %175 = ptrtoint ptr %174 to i64
  %176 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add118 = add i64 %175, %176
  %177 = inttoptr i64 %add118 to ptr
  store ptr %177, ptr %c1, align 8, !tbaa !9
  %178 = load ptr, ptr %c0, align 8, !tbaa !9
  %179 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %178, <4 x float> noundef %179)
  %180 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr119 = getelementptr inbounds float, ptr %180, i64 4
  %181 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %add.ptr119, <4 x float> noundef %181)
  %182 = load ptr, ptr %c0, align 8, !tbaa !9
  %183 = ptrtoint ptr %182 to i64
  %184 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add120 = add i64 %183, %184
  %185 = inttoptr i64 %add120 to ptr
  store ptr %185, ptr %c0, align 8, !tbaa !9
  %186 = load ptr, ptr %a4, align 8, !tbaa !9
  %187 = ptrtoint ptr %186 to i64
  %188 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub121 = sub i64 %187, %188
  %189 = inttoptr i64 %sub121 to ptr
  store ptr %189, ptr %a4, align 8, !tbaa !9
  %190 = load ptr, ptr %a3, align 8, !tbaa !9
  %191 = ptrtoint ptr %190 to i64
  %192 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub122 = sub i64 %191, %192
  %193 = inttoptr i64 %sub122 to ptr
  store ptr %193, ptr %a3, align 8, !tbaa !9
  %194 = load ptr, ptr %a2, align 8, !tbaa !9
  %195 = ptrtoint ptr %194 to i64
  %196 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub123 = sub i64 %195, %196
  %197 = inttoptr i64 %sub123 to ptr
  store ptr %197, ptr %a2, align 8, !tbaa !9
  %198 = load ptr, ptr %a1, align 8, !tbaa !9
  %199 = ptrtoint ptr %198 to i64
  %200 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub124 = sub i64 %199, %200
  %201 = inttoptr i64 %sub124 to ptr
  store ptr %201, ptr %a1, align 8, !tbaa !9
  %202 = load ptr, ptr %a0, align 8, !tbaa !9
  %203 = ptrtoint ptr %202 to i64
  %204 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub125 = sub i64 %203, %204
  %205 = inttoptr i64 %sub125 to ptr
  store ptr %205, ptr %a0, align 8, !tbaa !9
  %206 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub126 = sub i64 %206, 8
  store i64 %sub126, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end153

if.else:                                          ; preds = %do.end
  %207 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %207, 4
  %tobool127 = icmp ne i64 %and, 0
  br i1 %tobool127, label %if.then128, label %if.end134

if.then128:                                       ; preds = %if.else
  %208 = load ptr, ptr %c4, align 8, !tbaa !9
  %209 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %208, <4 x float> noundef %209)
  %210 = load ptr, ptr %c3, align 8, !tbaa !9
  %211 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %210, <4 x float> noundef %211)
  %212 = load ptr, ptr %c2, align 8, !tbaa !9
  %213 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %212, <4 x float> noundef %213)
  %214 = load ptr, ptr %c1, align 8, !tbaa !9
  %215 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %214, <4 x float> noundef %215)
  %216 = load ptr, ptr %c0, align 8, !tbaa !9
  %217 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %216, <4 x float> noundef %217)
  %218 = load <4 x float>, ptr %vacc4x4567, align 16, !tbaa !12
  store <4 x float> %218, ptr %vacc4x0123, align 16, !tbaa !12
  %219 = load <4 x float>, ptr %vacc3x4567, align 16, !tbaa !12
  store <4 x float> %219, ptr %vacc3x0123, align 16, !tbaa !12
  %220 = load <4 x float>, ptr %vacc2x4567, align 16, !tbaa !12
  store <4 x float> %220, ptr %vacc2x0123, align 16, !tbaa !12
  %221 = load <4 x float>, ptr %vacc1x4567, align 16, !tbaa !12
  store <4 x float> %221, ptr %vacc1x0123, align 16, !tbaa !12
  %222 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !12
  store <4 x float> %222, ptr %vacc0x0123, align 16, !tbaa !12
  %223 = load ptr, ptr %c4, align 8, !tbaa !9
  %add.ptr129 = getelementptr inbounds float, ptr %223, i64 4
  store ptr %add.ptr129, ptr %c4, align 8, !tbaa !9
  %224 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr130 = getelementptr inbounds float, ptr %224, i64 4
  store ptr %add.ptr130, ptr %c3, align 8, !tbaa !9
  %225 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr131 = getelementptr inbounds float, ptr %225, i64 4
  store ptr %add.ptr131, ptr %c2, align 8, !tbaa !9
  %226 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr132 = getelementptr inbounds float, ptr %226, i64 4
  store ptr %add.ptr132, ptr %c1, align 8, !tbaa !9
  %227 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr133 = getelementptr inbounds float, ptr %227, i64 4
  store ptr %add.ptr133, ptr %c0, align 8, !tbaa !9
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.else
  %228 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and135 = and i64 %228, 2
  %tobool136 = icmp ne i64 %and135, 0
  br i1 %tobool136, label %if.then137, label %if.end148

if.then137:                                       ; preds = %if.end134
  %229 = load ptr, ptr %c4, align 8, !tbaa !9
  %230 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %229, <4 x float> noundef %230)
  %231 = load ptr, ptr %c3, align 8, !tbaa !9
  %232 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %231, <4 x float> noundef %232)
  %233 = load ptr, ptr %c2, align 8, !tbaa !9
  %234 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %233, <4 x float> noundef %234)
  %235 = load ptr, ptr %c1, align 8, !tbaa !9
  %236 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %235, <4 x float> noundef %236)
  %237 = load ptr, ptr %c0, align 8, !tbaa !9
  %238 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %237, <4 x float> noundef %238)
  %239 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  %240 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  %call138 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %239, <4 x float> noundef %240)
  store <4 x float> %call138, ptr %vacc4x0123, align 16, !tbaa !12
  %241 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  %242 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  %call139 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %241, <4 x float> noundef %242)
  store <4 x float> %call139, ptr %vacc3x0123, align 16, !tbaa !12
  %243 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %244 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %call140 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %243, <4 x float> noundef %244)
  store <4 x float> %call140, ptr %vacc2x0123, align 16, !tbaa !12
  %245 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %246 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %call141 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %245, <4 x float> noundef %246)
  store <4 x float> %call141, ptr %vacc1x0123, align 16, !tbaa !12
  %247 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %248 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %call142 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %247, <4 x float> noundef %248)
  store <4 x float> %call142, ptr %vacc0x0123, align 16, !tbaa !12
  %249 = load ptr, ptr %c4, align 8, !tbaa !9
  %add.ptr143 = getelementptr inbounds float, ptr %249, i64 2
  store ptr %add.ptr143, ptr %c4, align 8, !tbaa !9
  %250 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr144 = getelementptr inbounds float, ptr %250, i64 2
  store ptr %add.ptr144, ptr %c3, align 8, !tbaa !9
  %251 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr145 = getelementptr inbounds float, ptr %251, i64 2
  store ptr %add.ptr145, ptr %c2, align 8, !tbaa !9
  %252 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr146 = getelementptr inbounds float, ptr %252, i64 2
  store ptr %add.ptr146, ptr %c1, align 8, !tbaa !9
  %253 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr147 = getelementptr inbounds float, ptr %253, i64 2
  store ptr %add.ptr147, ptr %c0, align 8, !tbaa !9
  br label %if.end148

if.end148:                                        ; preds = %if.then137, %if.end134
  %254 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and149 = and i64 %254, 1
  %tobool150 = icmp ne i64 %and149, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end148
  %255 = load ptr, ptr %c4, align 8, !tbaa !9
  %256 = load <4 x float>, ptr %vacc4x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %255, <4 x float> noundef %256)
  %257 = load ptr, ptr %c3, align 8, !tbaa !9
  %258 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %257, <4 x float> noundef %258)
  %259 = load ptr, ptr %c2, align 8, !tbaa !9
  %260 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %259, <4 x float> noundef %260)
  %261 = load ptr, ptr %c1, align 8, !tbaa !9
  %262 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %261, <4 x float> noundef %262)
  %263 = load ptr, ptr %c0, align 8, !tbaa !9
  %264 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %263, <4 x float> noundef %264)
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end148
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then110
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmin) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmax) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4x4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4x0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc3x4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc3x0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #4
  br label %do.cond154

do.cond154:                                       ; preds = %if.end153
  %265 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp155 = icmp ne i64 %265, 0
  br i1 %cmp155, label %do.body, label %do.end157, !llvm.loop !15

do.end157:                                        ; preds = %do.cond154
  call void @llvm.lifetime.end.p0(i64 8, ptr %c4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !12
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load1_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__u = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__u) #4
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u1 = getelementptr inbounds %struct.__mm_load1_ps_struct, ptr %0, i32 0, i32 0
  %1 = load float, ptr %__u1, align 1, !tbaa !12
  store float %1, ptr %__u, align 4, !tbaa !16
  %2 = load float, ptr %__u, align 4, !tbaa !16
  %vecinit = insertelement <4 x float> undef, float %2, i32 0
  %3 = load float, ptr %__u, align 4, !tbaa !16
  %vecinit2 = insertelement <4 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %__u, align 4, !tbaa !16
  %vecinit3 = insertelement <4 x float> %vecinit2, float %4, i32 2
  %5 = load float, ptr %__u, align 4, !tbaa !16
  %vecinit4 = insertelement <4 x float> %vecinit3, float %5, i32 3
  store <4 x float> %vecinit4, ptr %.compoundliteral, align 16, !tbaa !12
  %6 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__u) #4
  ret <4 x float> %6
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !12
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !12
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !12
  %2 = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_max_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !12
  %2 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !12
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !7, i64 0}

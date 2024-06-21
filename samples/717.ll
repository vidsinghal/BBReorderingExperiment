; ModuleID = 'samples/717.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-gemm/gen/3x16-minmax-avx-broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { [8 x float], [8 x float], [14 x i32], [8 x i8] }
%struct.__mm256_broadcast_ss_struct = type { float }
%struct.__storeu_ps = type { <8 x float> }
%struct.__storeu_ps.2 = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, i64 noundef %a_stride, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
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
  %vacc0x01234567 = alloca <8 x float>, align 32
  %vacc0x89ABCDEF = alloca <8 x float>, align 32
  %vacc1x01234567 = alloca <8 x float>, align 32
  %vacc1x89ABCDEF = alloca <8 x float>, align 32
  %vacc2x01234567 = alloca <8 x float>, align 32
  %vacc2x89ABCDEF = alloca <8 x float>, align 32
  %k = alloca i64, align 8
  %va0 = alloca <8 x float>, align 32
  %va1 = alloca <8 x float>, align 32
  %va2 = alloca <8 x float>, align 32
  %vb01234567 = alloca <8 x float>, align 32
  %vb89ABCDEF = alloca <8 x float>, align 32
  %vmin = alloca <8 x float>, align 32
  %vmax = alloca <8 x float>, align 32
  %vacc2x0123 = alloca <4 x float>, align 16
  %vacc1x0123 = alloca <4 x float>, align 16
  %vacc0x0123 = alloca <4 x float>, align 16
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #5
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %1, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #5
  %2 = load ptr, ptr %a0, align 8, !tbaa !9
  %3 = ptrtoint ptr %2 to i64
  %4 = load i64, ptr %a_stride.addr, align 8, !tbaa !5
  %add = add i64 %3, %4
  %5 = inttoptr i64 %add to ptr
  store ptr %5, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #5
  %13 = load ptr, ptr %a1, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %a_stride.addr, align 8, !tbaa !5
  %add3 = add i64 %14, %15
  %16 = inttoptr i64 %add3 to ptr
  store ptr %16, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #5
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
  br label %do.body

do.body:                                          ; preds = %do.cond110, %if.end14
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc0x01234567) #5
  %24 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %24, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr)
  store <8 x float> %call, ptr %vacc0x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc0x89ABCDEF) #5
  %25 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr15 = getelementptr inbounds float, ptr %25, i64 8
  %call16 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr15)
  store <8 x float> %call16, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc1x01234567) #5
  %26 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %26, ptr %vacc1x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc1x89ABCDEF) #5
  %27 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %27, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc2x01234567) #5
  %28 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %28, ptr %vacc2x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc2x89ABCDEF) #5
  %29 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %29, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %30 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr17 = getelementptr inbounds float, ptr %30, i64 16
  store ptr %add.ptr17, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #5
  %31 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %31, ptr %k, align 8, !tbaa !5
  br label %do.body18

do.body18:                                        ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 32, ptr %va0) #5
  %32 = load ptr, ptr %a0, align 8, !tbaa !9
  %call19 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %32)
  store <8 x float> %call19, ptr %va0, align 32, !tbaa !12
  %33 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr20 = getelementptr inbounds float, ptr %33, i64 1
  store ptr %add.ptr20, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va1) #5
  %34 = load ptr, ptr %a1, align 8, !tbaa !9
  %call21 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %34)
  store <8 x float> %call21, ptr %va1, align 32, !tbaa !12
  %35 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr22 = getelementptr inbounds float, ptr %35, i64 1
  store ptr %add.ptr22, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va2) #5
  %36 = load ptr, ptr %a2, align 8, !tbaa !9
  %call23 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %36)
  store <8 x float> %call23, ptr %va2, align 32, !tbaa !12
  %37 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr24 = getelementptr inbounds float, ptr %37, i64 1
  store ptr %add.ptr24, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vb01234567) #5
  %38 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call25 = call <8 x float> @_mm256_load_ps(ptr noundef %38)
  store <8 x float> %call25, ptr %vb01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vb89ABCDEF) #5
  %39 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr26 = getelementptr inbounds float, ptr %39, i64 8
  %call27 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr26)
  store <8 x float> %call27, ptr %vb89ABCDEF, align 32, !tbaa !12
  %40 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr28 = getelementptr inbounds float, ptr %40, i64 16
  store ptr %add.ptr28, ptr %w.addr, align 8, !tbaa !9
  %41 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %42 = load <8 x float>, ptr %va0, align 32, !tbaa !12
  %43 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %call29 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %42, <8 x float> noundef %43)
  %call30 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %41, <8 x float> noundef %call29)
  store <8 x float> %call30, ptr %vacc0x01234567, align 32, !tbaa !12
  %44 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %45 = load <8 x float>, ptr %va1, align 32, !tbaa !12
  %46 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %call31 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %45, <8 x float> noundef %46)
  %call32 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %44, <8 x float> noundef %call31)
  store <8 x float> %call32, ptr %vacc1x01234567, align 32, !tbaa !12
  %47 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %48 = load <8 x float>, ptr %va2, align 32, !tbaa !12
  %49 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %call33 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %48, <8 x float> noundef %49)
  %call34 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %47, <8 x float> noundef %call33)
  store <8 x float> %call34, ptr %vacc2x01234567, align 32, !tbaa !12
  %50 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %51 = load <8 x float>, ptr %va0, align 32, !tbaa !12
  %52 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %call35 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %51, <8 x float> noundef %52)
  %call36 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %50, <8 x float> noundef %call35)
  store <8 x float> %call36, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %53 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %54 = load <8 x float>, ptr %va1, align 32, !tbaa !12
  %55 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %call37 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %54, <8 x float> noundef %55)
  %call38 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %53, <8 x float> noundef %call37)
  store <8 x float> %call38, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %56 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %57 = load <8 x float>, ptr %va2, align 32, !tbaa !12
  %58 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %call39 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %57, <8 x float> noundef %58)
  %call40 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %56, <8 x float> noundef %call39)
  store <8 x float> %call40, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %59 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %59, 4
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vb89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vb01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %va2) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %va1) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %va0) #5
  br label %do.cond

do.cond:                                          ; preds = %do.body18
  %60 = load i64, ptr %k, align 8, !tbaa !5
  %cmp41 = icmp ne i64 %60, 0
  br i1 %cmp41, label %do.body18, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin) #5
  %61 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon.1, ptr %61, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call43 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call43, ptr %vmin, align 32, !tbaa !12
  %62 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %63 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call44 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %62, <8 x float> noundef %63)
  store <8 x float> %call44, ptr %vacc0x01234567, align 32, !tbaa !12
  %64 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %65 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call45 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %64, <8 x float> noundef %65)
  store <8 x float> %call45, ptr %vacc1x01234567, align 32, !tbaa !12
  %66 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %67 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call46 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %66, <8 x float> noundef %67)
  store <8 x float> %call46, ptr %vacc2x01234567, align 32, !tbaa !12
  %68 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %69 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call47 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %68, <8 x float> noundef %69)
  store <8 x float> %call47, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %70 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %71 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call48 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %70, <8 x float> noundef %71)
  store <8 x float> %call48, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %72 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %73 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call49 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %72, <8 x float> noundef %73)
  store <8 x float> %call49, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax) #5
  %74 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon.1, ptr %74, i32 0, i32 1
  %arraydecay50 = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call51 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay50)
  store <8 x float> %call51, ptr %vmax, align 32, !tbaa !12
  %75 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %76 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call52 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %75, <8 x float> noundef %76)
  store <8 x float> %call52, ptr %vacc0x01234567, align 32, !tbaa !12
  %77 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %78 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call53 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %77, <8 x float> noundef %78)
  store <8 x float> %call53, ptr %vacc1x01234567, align 32, !tbaa !12
  %79 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %80 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call54 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %79, <8 x float> noundef %80)
  store <8 x float> %call54, ptr %vacc2x01234567, align 32, !tbaa !12
  %81 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %82 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call55 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %81, <8 x float> noundef %82)
  store <8 x float> %call55, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %83 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %84 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call56 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %83, <8 x float> noundef %84)
  store <8 x float> %call56, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %85 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %86 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call57 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %85, <8 x float> noundef %86)
  store <8 x float> %call57, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %87 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp58 = icmp uge i64 %87, 16
  %lnot60 = xor i1 %cmp58, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv64, i64 1)
  %tobool65 = icmp ne i64 %expval, 0
  br i1 %tobool65, label %if.then66, label %if.else

if.then66:                                        ; preds = %do.end
  %88 = load ptr, ptr %c2, align 8, !tbaa !9
  %89 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %88, <8 x float> noundef %89)
  %90 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr67 = getelementptr inbounds float, ptr %90, i64 8
  %91 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %add.ptr67, <8 x float> noundef %91)
  %92 = load ptr, ptr %c2, align 8, !tbaa !9
  %93 = ptrtoint ptr %92 to i64
  %94 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add68 = add i64 %93, %94
  %95 = inttoptr i64 %add68 to ptr
  store ptr %95, ptr %c2, align 8, !tbaa !9
  %96 = load ptr, ptr %c1, align 8, !tbaa !9
  %97 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %96, <8 x float> noundef %97)
  %98 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr69 = getelementptr inbounds float, ptr %98, i64 8
  %99 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %add.ptr69, <8 x float> noundef %99)
  %100 = load ptr, ptr %c1, align 8, !tbaa !9
  %101 = ptrtoint ptr %100 to i64
  %102 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add70 = add i64 %101, %102
  %103 = inttoptr i64 %add70 to ptr
  store ptr %103, ptr %c1, align 8, !tbaa !9
  %104 = load ptr, ptr %c0, align 8, !tbaa !9
  %105 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %104, <8 x float> noundef %105)
  %106 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr71 = getelementptr inbounds float, ptr %106, i64 8
  %107 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %add.ptr71, <8 x float> noundef %107)
  %108 = load ptr, ptr %c0, align 8, !tbaa !9
  %109 = ptrtoint ptr %108 to i64
  %110 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add72 = add i64 %109, %110
  %111 = inttoptr i64 %add72 to ptr
  store ptr %111, ptr %c0, align 8, !tbaa !9
  %112 = load ptr, ptr %a2, align 8, !tbaa !9
  %113 = ptrtoint ptr %112 to i64
  %114 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub73 = sub i64 %113, %114
  %115 = inttoptr i64 %sub73 to ptr
  store ptr %115, ptr %a2, align 8, !tbaa !9
  %116 = load ptr, ptr %a1, align 8, !tbaa !9
  %117 = ptrtoint ptr %116 to i64
  %118 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub74 = sub i64 %117, %118
  %119 = inttoptr i64 %sub74 to ptr
  store ptr %119, ptr %a1, align 8, !tbaa !9
  %120 = load ptr, ptr %a0, align 8, !tbaa !9
  %121 = ptrtoint ptr %120 to i64
  %122 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub75 = sub i64 %121, %122
  %123 = inttoptr i64 %sub75 to ptr
  store ptr %123, ptr %a0, align 8, !tbaa !9
  %124 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub76 = sub i64 %124, 16
  store i64 %sub76, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end109

if.else:                                          ; preds = %do.end
  %125 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %125, 8
  %tobool77 = icmp ne i64 %and, 0
  br i1 %tobool77, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.else
  %126 = load ptr, ptr %c2, align 8, !tbaa !9
  %127 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %126, <8 x float> noundef %127)
  %128 = load ptr, ptr %c1, align 8, !tbaa !9
  %129 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %128, <8 x float> noundef %129)
  %130 = load ptr, ptr %c0, align 8, !tbaa !9
  %131 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %130, <8 x float> noundef %131)
  %132 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %132, ptr %vacc2x01234567, align 32, !tbaa !12
  %133 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %133, ptr %vacc1x01234567, align 32, !tbaa !12
  %134 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %134, ptr %vacc0x01234567, align 32, !tbaa !12
  %135 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr79 = getelementptr inbounds float, ptr %135, i64 8
  store ptr %add.ptr79, ptr %c2, align 8, !tbaa !9
  %136 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr80 = getelementptr inbounds float, ptr %136, i64 8
  store ptr %add.ptr80, ptr %c1, align 8, !tbaa !9
  %137 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr81 = getelementptr inbounds float, ptr %137, i64 8
  store ptr %add.ptr81, ptr %c0, align 8, !tbaa !9
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x0123) #5
  %138 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %call83 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %138)
  store <4 x float> %call83, ptr %vacc2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #5
  %139 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %call84 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %139)
  store <4 x float> %call84, ptr %vacc1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #5
  %140 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %call85 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %140)
  store <4 x float> %call85, ptr %vacc0x0123, align 16, !tbaa !12
  %141 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and86 = and i64 %141, 4
  %tobool87 = icmp ne i64 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end94

if.then88:                                        ; preds = %if.end82
  %142 = load ptr, ptr %c2, align 8, !tbaa !9
  %143 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %142, <4 x float> noundef %143)
  %144 = load ptr, ptr %c1, align 8, !tbaa !9
  %145 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %144, <4 x float> noundef %145)
  %146 = load ptr, ptr %c0, align 8, !tbaa !9
  %147 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %146, <4 x float> noundef %147)
  %148 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %extract = shufflevector <8 x float> %148, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract, ptr %vacc2x0123, align 16, !tbaa !12
  %149 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %extract89 = shufflevector <8 x float> %149, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract89, ptr %vacc1x0123, align 16, !tbaa !12
  %150 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %extract90 = shufflevector <8 x float> %150, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract90, ptr %vacc0x0123, align 16, !tbaa !12
  %151 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr91 = getelementptr inbounds float, ptr %151, i64 4
  store ptr %add.ptr91, ptr %c2, align 8, !tbaa !9
  %152 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr92 = getelementptr inbounds float, ptr %152, i64 4
  store ptr %add.ptr92, ptr %c1, align 8, !tbaa !9
  %153 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr93 = getelementptr inbounds float, ptr %153, i64 4
  store ptr %add.ptr93, ptr %c0, align 8, !tbaa !9
  br label %if.end94

if.end94:                                         ; preds = %if.then88, %if.end82
  %154 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and95 = and i64 %154, 2
  %tobool96 = icmp ne i64 %and95, 0
  br i1 %tobool96, label %if.then97, label %if.end104

if.then97:                                        ; preds = %if.end94
  %155 = load ptr, ptr %c2, align 8, !tbaa !9
  %156 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %155, <4 x float> noundef %156)
  %157 = load ptr, ptr %c1, align 8, !tbaa !9
  %158 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %157, <4 x float> noundef %158)
  %159 = load ptr, ptr %c0, align 8, !tbaa !9
  %160 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %159, <4 x float> noundef %160)
  %161 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %162 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %call98 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %161, <4 x float> noundef %162)
  store <4 x float> %call98, ptr %vacc2x0123, align 16, !tbaa !12
  %163 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %164 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %call99 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %163, <4 x float> noundef %164)
  store <4 x float> %call99, ptr %vacc1x0123, align 16, !tbaa !12
  %165 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %166 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %call100 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %165, <4 x float> noundef %166)
  store <4 x float> %call100, ptr %vacc0x0123, align 16, !tbaa !12
  %167 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr101 = getelementptr inbounds float, ptr %167, i64 2
  store ptr %add.ptr101, ptr %c2, align 8, !tbaa !9
  %168 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr102 = getelementptr inbounds float, ptr %168, i64 2
  store ptr %add.ptr102, ptr %c1, align 8, !tbaa !9
  %169 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr103 = getelementptr inbounds float, ptr %169, i64 2
  store ptr %add.ptr103, ptr %c0, align 8, !tbaa !9
  br label %if.end104

if.end104:                                        ; preds = %if.then97, %if.end94
  %170 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and105 = and i64 %170, 1
  %tobool106 = icmp ne i64 %and105, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  %171 = load ptr, ptr %c2, align 8, !tbaa !9
  %172 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %171, <4 x float> noundef %172)
  %173 = load ptr, ptr %c1, align 8, !tbaa !9
  %174 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %173, <4 x float> noundef %174)
  %175 = load ptr, ptr %c0, align 8, !tbaa !9
  %176 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %175, <4 x float> noundef %176)
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end104
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x0123) #5
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then66
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc2x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc1x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc0x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc0x01234567) #5
  br label %do.cond110

do.cond110:                                       ; preds = %if.end109
  %177 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp111 = icmp ne i64 %177, 0
  br i1 %cmp111, label %do.body, label %do.end113, !llvm.loop !15

do.end113:                                        ; preds = %do.cond110
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !12
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_broadcast_ss(ptr noundef %__a) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__f = alloca float, align 4
  %.compoundliteral = alloca <8 x float>, align 32
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__f) #5
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !9
  %__f1 = getelementptr inbounds %struct.__mm256_broadcast_ss_struct, ptr %0, i32 0, i32 0
  %1 = load float, ptr %__f1, align 1, !tbaa !12
  store float %1, ptr %__f, align 4, !tbaa !16
  %2 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit = insertelement <8 x float> undef, float %2, i32 0
  %3 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit2 = insertelement <8 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit3 = insertelement <8 x float> %vecinit2, float %4, i32 2
  %5 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit4 = insertelement <8 x float> %vecinit3, float %5, i32 3
  %6 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit5 = insertelement <8 x float> %vecinit4, float %6, i32 4
  %7 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit6 = insertelement <8 x float> %vecinit5, float %7, i32 5
  %8 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit7 = insertelement <8 x float> %vecinit6, float %8, i32 6
  %9 = load float, ptr %__f, align 4, !tbaa !16
  %vecinit8 = insertelement <8 x float> %vecinit7, float %9, i32 7
  store <8 x float> %vecinit8, ptr %.compoundliteral, align 32, !tbaa !12
  %10 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__f) #5
  ret <8 x float> %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_max_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %2 = call <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_min_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %2 = call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_storeu_ps(ptr noundef %__p, <8 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <8 x float>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <8 x float> %0, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %shuffle = shufflevector <8 x float> %0, <8 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps.2, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #4 {
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
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
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
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #4 {
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
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !7, i64 0}

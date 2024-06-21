; ModuleID = 'samples/644.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-igemm/gen/4x8-minmax-fma3-broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { [8 x float], [8 x float], [14 x i32], [8 x i8] }
%struct.__mm256_broadcast_ss_struct = type { float }
%struct.__storeu_ps = type { <8 x float> }
%struct.__storeu_ps.2 = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_igemm_minmax_ukernel_4x8__fma3_broadcast(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
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
  %c3 = alloca ptr, align 8
  %vacc0x01234567 = alloca <8 x float>, align 32
  %vacc1x01234567 = alloca <8 x float>, align 32
  %vacc2x01234567 = alloca <8 x float>, align 32
  %vacc3x01234567 = alloca <8 x float>, align 32
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %a3 = alloca ptr, align 8
  %k = alloca i64, align 8
  %vb01234567 = alloca <8 x float>, align 32
  %va0 = alloca <8 x float>, align 32
  %va1 = alloca <8 x float>, align 32
  %va2 = alloca <8 x float>, align 32
  %va3 = alloca <8 x float>, align 32
  %vmin = alloca <8 x float>, align 32
  %vmax = alloca <8 x float>, align 32
  %vacc3x0123 = alloca <4 x float>, align 16
  %vacc2x0123 = alloca <4 x float>, align 16
  %vacc1x0123 = alloca <4 x float>, align 16
  %vacc0x0123 = alloca <4 x float>, align 16
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #6
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %0, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #6
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c3) #6
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

do.body:                                          ; preds = %do.cond152, %if.end23
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc0x01234567) #6
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %19)
  store <8 x float> %call, ptr %vacc0x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc1x01234567) #6
  %20 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %20, ptr %vacc1x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc2x01234567) #6
  %21 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %21, ptr %vacc2x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc3x01234567) #6
  %22 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %22, ptr %vacc3x01234567, align 32, !tbaa !12
  %23 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %23, i64 8
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %24 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %24, ptr %p, align 8, !tbaa !5
  br label %do.body24

do.body24:                                        ; preds = %do.cond91, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %25, i64 0
  %26 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %26, ptr %a0, align 8, !tbaa !9
  %27 = load ptr, ptr %a0, align 8, !tbaa !9
  %28 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp25 = icmp ne ptr %27, %28
  %lnot27 = xor i1 %cmp25, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %if.then33, label %if.end35, !unpredictable !11

if.then33:                                        ; preds = %do.body24
  %29 = load ptr, ptr %a0, align 8, !tbaa !9
  %30 = ptrtoint ptr %29 to i64
  %31 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add34 = add i64 %30, %31
  %32 = inttoptr i64 %add34 to ptr
  store ptr %32, ptr %a0, align 8, !tbaa !9
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.body24
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #6
  %33 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx36 = getelementptr inbounds ptr, ptr %33, i64 1
  %34 = load ptr, ptr %arrayidx36, align 8, !tbaa !9
  store ptr %34, ptr %a1, align 8, !tbaa !9
  %35 = load ptr, ptr %a1, align 8, !tbaa !9
  %36 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp37 = icmp ne ptr %35, %36
  %lnot39 = xor i1 %cmp37, true
  %lnot41 = xor i1 %lnot39, true
  %lnot.ext42 = zext i1 %lnot41 to i32
  %conv43 = sext i32 %lnot.ext42 to i64
  %tobool44 = icmp ne i64 %conv43, 0
  br i1 %tobool44, label %if.then45, label %if.end47, !unpredictable !11

if.then45:                                        ; preds = %if.end35
  %37 = load ptr, ptr %a1, align 8, !tbaa !9
  %38 = ptrtoint ptr %37 to i64
  %39 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add46 = add i64 %38, %39
  %40 = inttoptr i64 %add46 to ptr
  store ptr %40, ptr %a1, align 8, !tbaa !9
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #6
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx48 = getelementptr inbounds ptr, ptr %41, i64 2
  %42 = load ptr, ptr %arrayidx48, align 8, !tbaa !9
  store ptr %42, ptr %a2, align 8, !tbaa !9
  %43 = load ptr, ptr %a2, align 8, !tbaa !9
  %44 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp49 = icmp ne ptr %43, %44
  %lnot51 = xor i1 %cmp49, true
  %lnot53 = xor i1 %lnot51, true
  %lnot.ext54 = zext i1 %lnot53 to i32
  %conv55 = sext i32 %lnot.ext54 to i64
  %tobool56 = icmp ne i64 %conv55, 0
  br i1 %tobool56, label %if.then57, label %if.end59, !unpredictable !11

if.then57:                                        ; preds = %if.end47
  %45 = load ptr, ptr %a2, align 8, !tbaa !9
  %46 = ptrtoint ptr %45 to i64
  %47 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add58 = add i64 %46, %47
  %48 = inttoptr i64 %add58 to ptr
  store ptr %48, ptr %a2, align 8, !tbaa !9
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end47
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3) #6
  %49 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx60 = getelementptr inbounds ptr, ptr %49, i64 3
  %50 = load ptr, ptr %arrayidx60, align 8, !tbaa !9
  store ptr %50, ptr %a3, align 8, !tbaa !9
  %51 = load ptr, ptr %a3, align 8, !tbaa !9
  %52 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp61 = icmp ne ptr %51, %52
  %lnot63 = xor i1 %cmp61, true
  %lnot65 = xor i1 %lnot63, true
  %lnot.ext66 = zext i1 %lnot65 to i32
  %conv67 = sext i32 %lnot.ext66 to i64
  %tobool68 = icmp ne i64 %conv67, 0
  br i1 %tobool68, label %if.then69, label %if.end71, !unpredictable !11

if.then69:                                        ; preds = %if.end59
  %53 = load ptr, ptr %a3, align 8, !tbaa !9
  %54 = ptrtoint ptr %53 to i64
  %55 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add70 = add i64 %54, %55
  %56 = inttoptr i64 %add70 to ptr
  store ptr %56, ptr %a3, align 8, !tbaa !9
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end59
  %57 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr72 = getelementptr inbounds ptr, ptr %57, i64 4
  store ptr %add.ptr72, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %58 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %58, ptr %k, align 8, !tbaa !5
  br label %do.body73

do.body73:                                        ; preds = %do.cond, %if.end71
  call void @llvm.lifetime.start.p0(i64 32, ptr %vb01234567) #6
  %59 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call74 = call <8 x float> @_mm256_load_ps(ptr noundef %59)
  store <8 x float> %call74, ptr %vb01234567, align 32, !tbaa !12
  %60 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr75 = getelementptr inbounds float, ptr %60, i64 8
  store ptr %add.ptr75, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va0) #6
  %61 = load ptr, ptr %a0, align 8, !tbaa !9
  %call76 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %61)
  store <8 x float> %call76, ptr %va0, align 32, !tbaa !12
  %62 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr77 = getelementptr inbounds float, ptr %62, i64 1
  store ptr %add.ptr77, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va1) #6
  %63 = load ptr, ptr %a1, align 8, !tbaa !9
  %call78 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %63)
  store <8 x float> %call78, ptr %va1, align 32, !tbaa !12
  %64 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr79 = getelementptr inbounds float, ptr %64, i64 1
  store ptr %add.ptr79, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va2) #6
  %65 = load ptr, ptr %a2, align 8, !tbaa !9
  %call80 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %65)
  store <8 x float> %call80, ptr %va2, align 32, !tbaa !12
  %66 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr81 = getelementptr inbounds float, ptr %66, i64 1
  store ptr %add.ptr81, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va3) #6
  %67 = load ptr, ptr %a3, align 8, !tbaa !9
  %call82 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %67)
  store <8 x float> %call82, ptr %va3, align 32, !tbaa !12
  %68 = load ptr, ptr %a3, align 8, !tbaa !9
  %add.ptr83 = getelementptr inbounds float, ptr %68, i64 1
  store ptr %add.ptr83, ptr %a3, align 8, !tbaa !9
  %69 = load <8 x float>, ptr %va0, align 32, !tbaa !12
  %70 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %71 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %call84 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %69, <8 x float> noundef %70, <8 x float> noundef %71)
  store <8 x float> %call84, ptr %vacc0x01234567, align 32, !tbaa !12
  %72 = load <8 x float>, ptr %va1, align 32, !tbaa !12
  %73 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %74 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %call85 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %72, <8 x float> noundef %73, <8 x float> noundef %74)
  store <8 x float> %call85, ptr %vacc1x01234567, align 32, !tbaa !12
  %75 = load <8 x float>, ptr %va2, align 32, !tbaa !12
  %76 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %77 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %call86 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %75, <8 x float> noundef %76, <8 x float> noundef %77)
  store <8 x float> %call86, ptr %vacc2x01234567, align 32, !tbaa !12
  %78 = load <8 x float>, ptr %va3, align 32, !tbaa !12
  %79 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %80 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %call87 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %78, <8 x float> noundef %79, <8 x float> noundef %80)
  store <8 x float> %call87, ptr %vacc3x01234567, align 32, !tbaa !12
  %81 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %81, 4
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 32, ptr %va3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va0) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vb01234567) #6
  br label %do.cond

do.cond:                                          ; preds = %do.body73
  %82 = load i64, ptr %k, align 8, !tbaa !5
  %cmp88 = icmp ne i64 %82, 0
  br i1 %cmp88, label %do.body73, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %83 = load i64, ptr %p, align 8, !tbaa !5
  %sub90 = sub i64 %83, 32
  store i64 %sub90, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond91

do.cond91:                                        ; preds = %do.end
  %84 = load i64, ptr %p, align 8, !tbaa !5
  %cmp92 = icmp ne i64 %84, 0
  br i1 %cmp92, label %do.body24, label %do.end94, !llvm.loop !15

do.end94:                                         ; preds = %do.cond91
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin) #6
  %85 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon.1, ptr %85, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call95 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call95, ptr %vmin, align 32, !tbaa !12
  %86 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %87 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call96 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %86, <8 x float> noundef %87)
  store <8 x float> %call96, ptr %vacc0x01234567, align 32, !tbaa !12
  %88 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %89 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call97 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %88, <8 x float> noundef %89)
  store <8 x float> %call97, ptr %vacc1x01234567, align 32, !tbaa !12
  %90 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %91 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call98 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %90, <8 x float> noundef %91)
  store <8 x float> %call98, ptr %vacc2x01234567, align 32, !tbaa !12
  %92 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %93 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call99 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %92, <8 x float> noundef %93)
  store <8 x float> %call99, ptr %vacc3x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax) #6
  %94 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon.1, ptr %94, i32 0, i32 1
  %arraydecay100 = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call101 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay100)
  store <8 x float> %call101, ptr %vmax, align 32, !tbaa !12
  %95 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %96 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call102 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %95, <8 x float> noundef %96)
  store <8 x float> %call102, ptr %vacc0x01234567, align 32, !tbaa !12
  %97 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %98 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call103 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %97, <8 x float> noundef %98)
  store <8 x float> %call103, ptr %vacc1x01234567, align 32, !tbaa !12
  %99 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %100 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call104 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %99, <8 x float> noundef %100)
  store <8 x float> %call104, ptr %vacc2x01234567, align 32, !tbaa !12
  %101 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %102 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call105 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %101, <8 x float> noundef %102)
  store <8 x float> %call105, ptr %vacc3x01234567, align 32, !tbaa !12
  %103 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp106 = icmp uge i64 %103, 8
  %lnot108 = xor i1 %cmp106, true
  %lnot110 = xor i1 %lnot108, true
  %lnot.ext111 = zext i1 %lnot110 to i32
  %conv112 = sext i32 %lnot.ext111 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv112, i64 1)
  %tobool113 = icmp ne i64 %expval, 0
  br i1 %tobool113, label %if.then114, label %if.else

if.then114:                                       ; preds = %do.end94
  %104 = load ptr, ptr %c3, align 8, !tbaa !9
  %105 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %104, <8 x float> noundef %105)
  %106 = load ptr, ptr %c3, align 8, !tbaa !9
  %107 = ptrtoint ptr %106 to i64
  %108 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add115 = add i64 %107, %108
  %109 = inttoptr i64 %add115 to ptr
  store ptr %109, ptr %c3, align 8, !tbaa !9
  %110 = load ptr, ptr %c2, align 8, !tbaa !9
  %111 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %110, <8 x float> noundef %111)
  %112 = load ptr, ptr %c2, align 8, !tbaa !9
  %113 = ptrtoint ptr %112 to i64
  %114 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add116 = add i64 %113, %114
  %115 = inttoptr i64 %add116 to ptr
  store ptr %115, ptr %c2, align 8, !tbaa !9
  %116 = load ptr, ptr %c1, align 8, !tbaa !9
  %117 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %116, <8 x float> noundef %117)
  %118 = load ptr, ptr %c1, align 8, !tbaa !9
  %119 = ptrtoint ptr %118 to i64
  %120 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add117 = add i64 %119, %120
  %121 = inttoptr i64 %add117 to ptr
  store ptr %121, ptr %c1, align 8, !tbaa !9
  %122 = load ptr, ptr %c0, align 8, !tbaa !9
  %123 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  call void @_mm256_storeu_ps(ptr noundef %122, <8 x float> noundef %123)
  %124 = load ptr, ptr %c0, align 8, !tbaa !9
  %125 = ptrtoint ptr %124 to i64
  %126 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add118 = add i64 %125, %126
  %127 = inttoptr i64 %add118 to ptr
  store ptr %127, ptr %c0, align 8, !tbaa !9
  %128 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %129 = ptrtoint ptr %128 to i64
  %130 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub119 = sub i64 %129, %130
  %131 = inttoptr i64 %sub119 to ptr
  store ptr %131, ptr %a.addr, align 8, !tbaa !9
  %132 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub120 = sub i64 %132, 8
  store i64 %sub120, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end151

if.else:                                          ; preds = %do.end94
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc3x0123) #6
  %133 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %call121 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %133)
  store <4 x float> %call121, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x0123) #6
  %134 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %call122 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %134)
  store <4 x float> %call122, ptr %vacc2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #6
  %135 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %call123 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %135)
  store <4 x float> %call123, ptr %vacc1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %136 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %call124 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %136)
  store <4 x float> %call124, ptr %vacc0x0123, align 16, !tbaa !12
  %137 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %137, 4
  %tobool125 = icmp ne i64 %and, 0
  br i1 %tobool125, label %if.then126, label %if.end134

if.then126:                                       ; preds = %if.else
  %138 = load ptr, ptr %c3, align 8, !tbaa !9
  %139 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %138, <4 x float> noundef %139)
  %140 = load ptr, ptr %c2, align 8, !tbaa !9
  %141 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %140, <4 x float> noundef %141)
  %142 = load ptr, ptr %c1, align 8, !tbaa !9
  %143 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %142, <4 x float> noundef %143)
  %144 = load ptr, ptr %c0, align 8, !tbaa !9
  %145 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_storeu_ps(ptr noundef %144, <4 x float> noundef %145)
  %146 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %extract = shufflevector <8 x float> %146, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract, ptr %vacc3x0123, align 16, !tbaa !12
  %147 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %extract127 = shufflevector <8 x float> %147, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract127, ptr %vacc2x0123, align 16, !tbaa !12
  %148 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %extract128 = shufflevector <8 x float> %148, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract128, ptr %vacc1x0123, align 16, !tbaa !12
  %149 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %extract129 = shufflevector <8 x float> %149, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract129, ptr %vacc0x0123, align 16, !tbaa !12
  %150 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr130 = getelementptr inbounds float, ptr %150, i64 4
  store ptr %add.ptr130, ptr %c3, align 8, !tbaa !9
  %151 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr131 = getelementptr inbounds float, ptr %151, i64 4
  store ptr %add.ptr131, ptr %c2, align 8, !tbaa !9
  %152 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr132 = getelementptr inbounds float, ptr %152, i64 4
  store ptr %add.ptr132, ptr %c1, align 8, !tbaa !9
  %153 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr133 = getelementptr inbounds float, ptr %153, i64 4
  store ptr %add.ptr133, ptr %c0, align 8, !tbaa !9
  br label %if.end134

if.end134:                                        ; preds = %if.then126, %if.else
  %154 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and135 = and i64 %154, 2
  %tobool136 = icmp ne i64 %and135, 0
  br i1 %tobool136, label %if.then137, label %if.end146

if.then137:                                       ; preds = %if.end134
  %155 = load ptr, ptr %c3, align 8, !tbaa !9
  %156 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %155, <4 x float> noundef %156)
  %157 = load ptr, ptr %c2, align 8, !tbaa !9
  %158 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %157, <4 x float> noundef %158)
  %159 = load ptr, ptr %c1, align 8, !tbaa !9
  %160 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %159, <4 x float> noundef %160)
  %161 = load ptr, ptr %c0, align 8, !tbaa !9
  %162 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_storel_pi(ptr noundef %161, <4 x float> noundef %162)
  %163 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  %164 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  %call138 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %163, <4 x float> noundef %164)
  store <4 x float> %call138, ptr %vacc3x0123, align 16, !tbaa !12
  %165 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %166 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  %call139 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %165, <4 x float> noundef %166)
  store <4 x float> %call139, ptr %vacc2x0123, align 16, !tbaa !12
  %167 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %168 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  %call140 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %167, <4 x float> noundef %168)
  store <4 x float> %call140, ptr %vacc1x0123, align 16, !tbaa !12
  %169 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %170 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  %call141 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %169, <4 x float> noundef %170)
  store <4 x float> %call141, ptr %vacc0x0123, align 16, !tbaa !12
  %171 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr142 = getelementptr inbounds float, ptr %171, i64 2
  store ptr %add.ptr142, ptr %c3, align 8, !tbaa !9
  %172 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr143 = getelementptr inbounds float, ptr %172, i64 2
  store ptr %add.ptr143, ptr %c2, align 8, !tbaa !9
  %173 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr144 = getelementptr inbounds float, ptr %173, i64 2
  store ptr %add.ptr144, ptr %c1, align 8, !tbaa !9
  %174 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr145 = getelementptr inbounds float, ptr %174, i64 2
  store ptr %add.ptr145, ptr %c0, align 8, !tbaa !9
  br label %if.end146

if.end146:                                        ; preds = %if.then137, %if.end134
  %175 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and147 = and i64 %175, 1
  %tobool148 = icmp ne i64 %and147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end146
  %176 = load ptr, ptr %c3, align 8, !tbaa !9
  %177 = load <4 x float>, ptr %vacc3x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %176, <4 x float> noundef %177)
  %178 = load ptr, ptr %c2, align 8, !tbaa !9
  %179 = load <4 x float>, ptr %vacc2x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %178, <4 x float> noundef %179)
  %180 = load ptr, ptr %c1, align 8, !tbaa !9
  %181 = load <4 x float>, ptr %vacc1x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %180, <4 x float> noundef %181)
  %182 = load ptr, ptr %c0, align 8, !tbaa !9
  %183 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !12
  call void @_mm_store_ss(ptr noundef %182, <4 x float> noundef %183)
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end146
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc3x0123) #6
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then114
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmin) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc0x01234567) #6
  br label %do.cond152

do.cond152:                                       ; preds = %if.end151
  %184 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp153 = icmp ne i64 %184, 0
  br i1 %cmp153, label %do.body, label %do.end155, !llvm.loop !16

do.end155:                                        ; preds = %do.cond152
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #6
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %__f) #6
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !9
  %__f1 = getelementptr inbounds %struct.__mm256_broadcast_ss_struct, ptr %0, i32 0, i32 0
  %1 = load float, ptr %__f1, align 1, !tbaa !12
  store float %1, ptr %__f, align 4, !tbaa !17
  %2 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit = insertelement <8 x float> undef, float %2, i32 0
  %3 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit2 = insertelement <8 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit3 = insertelement <8 x float> %vecinit2, float %4, i32 2
  %5 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit4 = insertelement <8 x float> %vecinit3, float %5, i32 3
  %6 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit5 = insertelement <8 x float> %vecinit4, float %6, i32 4
  %7 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit6 = insertelement <8 x float> %vecinit5, float %7, i32 5
  %8 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit7 = insertelement <8 x float> %vecinit6, float %8, i32 6
  %9 = load float, ptr %__f, align 4, !tbaa !17
  %vecinit8 = insertelement <8 x float> %vecinit7, float %9, i32 7
  store <8 x float> %vecinit8, ptr %.compoundliteral, align 32, !tbaa !12
  %10 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__f) #6
  ret <8 x float> %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <8 x float>, align 32
  %__B.addr = alloca <8 x float>, align 32
  %__C.addr = alloca <8 x float>, align 32
  store <8 x float> %__A, ptr %__A.addr, align 32, !tbaa !12
  store <8 x float> %__B, ptr %__B.addr, align 32, !tbaa !12
  store <8 x float> %__C, ptr %__C.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__A.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__B.addr, align 32, !tbaa !12
  %2 = load <8 x float>, ptr %__C.addr, align 32, !tbaa !12
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!16 = distinct !{!16, !14}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}

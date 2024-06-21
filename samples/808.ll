; ModuleID = 'samples/808.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-gemm/gen-inc/1x8inc-minmax-sse-load1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { [4 x float], [4 x float] }
%struct.__mm_load1_ps_struct = type { float }
%struct.__storeu_ps = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_gemminc_minmax_ukernel_1x8__sse_load1(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, i64 noundef %a_stride, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef %acc, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
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
  %acc.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %a0 = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %vacc0x0123 = alloca <4 x float>, align 16
  %vacc0x4567 = alloca <4 x float>, align 16
  %k = alloca i64, align 8
  %va0 = alloca <4 x float>, align 16
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
  store ptr %acc, ptr %acc.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #4
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %1, ptr %c0, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %do.cond41, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #4
  %2 = load ptr, ptr %acc.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %2, i64 0
  %call = call <4 x float> @_mm_load_ps(ptr noundef %add.ptr)
  store <4 x float> %call, ptr %vacc0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x4567) #4
  %3 = load ptr, ptr %acc.addr, align 8, !tbaa !9
  %add.ptr1 = getelementptr inbounds float, ptr %3, i64 4
  %call2 = call <4 x float> @_mm_load_ps(ptr noundef %add.ptr1)
  store <4 x float> %call2, ptr %vacc0x4567, align 16, !tbaa !11
  %4 = load ptr, ptr %acc.addr, align 8, !tbaa !9
  %add.ptr3 = getelementptr inbounds float, ptr %4, i64 8
  store ptr %add.ptr3, ptr %acc.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %5 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %5, ptr %k, align 8, !tbaa !5
  br label %do.body4

do.body4:                                         ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #4
  %6 = load ptr, ptr %a0, align 8, !tbaa !9
  %call5 = call <4 x float> @_mm_load1_ps(ptr noundef %6)
  store <4 x float> %call5, ptr %va0, align 16, !tbaa !11
  %7 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr6 = getelementptr inbounds float, ptr %7, i64 1
  store ptr %add.ptr6, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0123) #4
  %8 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call7 = call <4 x float> @_mm_load_ps(ptr noundef %8)
  store <4 x float> %call7, ptr %vb0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb4567) #4
  %9 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr8 = getelementptr inbounds float, ptr %9, i64 4
  %call9 = call <4 x float> @_mm_load_ps(ptr noundef %add.ptr8)
  store <4 x float> %call9, ptr %vb4567, align 16, !tbaa !11
  %10 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr10 = getelementptr inbounds float, ptr %10, i64 8
  store ptr %add.ptr10, ptr %w.addr, align 8, !tbaa !9
  %11 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  %12 = load <4 x float>, ptr %va0, align 16, !tbaa !11
  %13 = load <4 x float>, ptr %vb0123, align 16, !tbaa !11
  %call11 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %12, <4 x float> noundef %13)
  %call12 = call <4 x float> @_mm_add_ps(<4 x float> noundef %11, <4 x float> noundef %call11)
  store <4 x float> %call12, ptr %vacc0x0123, align 16, !tbaa !11
  %14 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !11
  %15 = load <4 x float>, ptr %va0, align 16, !tbaa !11
  %16 = load <4 x float>, ptr %vb4567, align 16, !tbaa !11
  %call13 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %15, <4 x float> noundef %16)
  %call14 = call <4 x float> @_mm_add_ps(<4 x float> noundef %14, <4 x float> noundef %call13)
  store <4 x float> %call14, ptr %vacc0x4567, align 16, !tbaa !11
  %17 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %17, 4
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body4
  %18 = load i64, ptr %k, align 8, !tbaa !5
  %cmp = icmp ne i64 %18, 0
  br i1 %cmp, label %do.body4, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmax) #4
  %19 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon.0, ptr %19, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x float], ptr %max, i64 0, i64 0
  %call15 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call15, ptr %vmax, align 16, !tbaa !11
  %20 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  %21 = load <4 x float>, ptr %vmax, align 16, !tbaa !11
  %call16 = call <4 x float> @_mm_min_ps(<4 x float> noundef %20, <4 x float> noundef %21)
  store <4 x float> %call16, ptr %vacc0x0123, align 16, !tbaa !11
  %22 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !11
  %23 = load <4 x float>, ptr %vmax, align 16, !tbaa !11
  %call17 = call <4 x float> @_mm_min_ps(<4 x float> noundef %22, <4 x float> noundef %23)
  store <4 x float> %call17, ptr %vacc0x4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmin) #4
  %24 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [4 x float], ptr %min, i64 0, i64 0
  %call19 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay18)
  store <4 x float> %call19, ptr %vmin, align 16, !tbaa !11
  %25 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  %26 = load <4 x float>, ptr %vmin, align 16, !tbaa !11
  %call20 = call <4 x float> @_mm_max_ps(<4 x float> noundef %25, <4 x float> noundef %26)
  store <4 x float> %call20, ptr %vacc0x0123, align 16, !tbaa !11
  %27 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !11
  %28 = load <4 x float>, ptr %vmin, align 16, !tbaa !11
  %call21 = call <4 x float> @_mm_max_ps(<4 x float> noundef %27, <4 x float> noundef %28)
  store <4 x float> %call21, ptr %vacc0x4567, align 16, !tbaa !11
  %29 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp22 = icmp uge i64 %29, 8
  %lnot = xor i1 %cmp22, true
  %lnot23 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot23 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %30 = load ptr, ptr %c0, align 8, !tbaa !9
  %31 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %30, <4 x float> noundef %31)
  %32 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr24 = getelementptr inbounds float, ptr %32, i64 4
  %33 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %add.ptr24, <4 x float> noundef %33)
  %34 = load ptr, ptr %c0, align 8, !tbaa !9
  %35 = ptrtoint ptr %34 to i64
  %36 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add = add i64 %35, %36
  %37 = inttoptr i64 %add to ptr
  store ptr %37, ptr %c0, align 8, !tbaa !9
  %38 = load ptr, ptr %a0, align 8, !tbaa !9
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub25 = sub i64 %39, %40
  %41 = inttoptr i64 %sub25 to ptr
  store ptr %41, ptr %a0, align 8, !tbaa !9
  %42 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub26 = sub i64 %42, 8
  store i64 %sub26, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end40

if.else:                                          ; preds = %do.end
  %43 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %43, 4
  %tobool27 = icmp ne i64 %and, 0
  br i1 %tobool27, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.else
  %44 = load ptr, ptr %c0, align 8, !tbaa !9
  %45 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %44, <4 x float> noundef %45)
  %46 = load <4 x float>, ptr %vacc0x4567, align 16, !tbaa !11
  store <4 x float> %46, ptr %vacc0x0123, align 16, !tbaa !11
  %47 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr29 = getelementptr inbounds float, ptr %47, i64 4
  store ptr %add.ptr29, ptr %c0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.else
  %48 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and30 = and i64 %48, 2
  %tobool31 = icmp ne i64 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end
  %49 = load ptr, ptr %c0, align 8, !tbaa !9
  %50 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %49, <4 x float> noundef %50)
  %51 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  %52 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  %call33 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %51, <4 x float> noundef %52)
  store <4 x float> %call33, ptr %vacc0x0123, align 16, !tbaa !11
  %53 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr34 = getelementptr inbounds float, ptr %53, i64 2
  store ptr %add.ptr34, ptr %c0, align 8, !tbaa !9
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end
  %54 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and36 = and i64 %54, 1
  %tobool37 = icmp ne i64 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  %55 = load ptr, ptr %c0, align 8, !tbaa !9
  %56 = load <4 x float>, ptr %vacc0x0123, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %55, <4 x float> noundef %56)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmin) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmax) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x4567) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #4
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  %57 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp42 = icmp ne i64 %57, 0
  br i1 %cmp42, label %do.body, label %do.end44, !llvm.loop !14

do.end44:                                         ; preds = %do.cond41
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
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !11
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
  %1 = load float, ptr %__u1, align 1, !tbaa !11
  store float %1, ptr %__u, align 4, !tbaa !15
  %2 = load float, ptr %__u, align 4, !tbaa !15
  %vecinit = insertelement <4 x float> undef, float %2, i32 0
  %3 = load float, ptr %__u, align 4, !tbaa !15
  %vecinit2 = insertelement <4 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %__u, align 4, !tbaa !15
  %vecinit3 = insertelement <4 x float> %vecinit2, float %4, i32 2
  %5 = load float, ptr %__u, align 4, !tbaa !15
  %vecinit4 = insertelement <4 x float> %vecinit3, float %5, i32 3
  store <4 x float> %vecinit4, ptr %.compoundliteral, align 16, !tbaa !11
  %6 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__u) #4
  ret <4 x float> %6
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
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
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %2 = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_max_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
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
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !11
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
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !7, i64 0}

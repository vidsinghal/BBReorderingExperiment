; ModuleID = 'samples/555.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-igemm/gen/4x2c4-minmax-sse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { [4 x float], [4 x float] }
%struct.__mm_load_ss_struct = type { float }
%struct.__loadu_ps = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_storeh_pi_struct.2 = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_igemm_minmax_ukernel_4x2c4__sse(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
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
  %vacc0x0c4 = alloca <4 x float>, align 16
  %vacc0x1c4 = alloca <4 x float>, align 16
  %vacc1x0c4 = alloca <4 x float>, align 16
  %vacc1x1c4 = alloca <4 x float>, align 16
  %vacc2x0c4 = alloca <4 x float>, align 16
  %vacc2x1c4 = alloca <4 x float>, align 16
  %vacc3x0c4 = alloca <4 x float>, align 16
  %vacc3x1c4 = alloca <4 x float>, align 16
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %a3 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca <4 x float>, align 16
  %va1 = alloca <4 x float>, align 16
  %va2 = alloca <4 x float>, align 16
  %va3 = alloca <4 x float>, align 16
  %vb0 = alloca <4 x float>, align 16
  %vb1 = alloca <4 x float>, align 16
  %va0114 = alloca <4 x float>, align 16
  %va1116 = alloca <4 x float>, align 16
  %va2118 = alloca <4 x float>, align 16
  %va3120 = alloca <4 x float>, align 16
  %vb0122 = alloca <4 x float>, align 16
  %vb1124 = alloca <4 x float>, align 16
  %vmask0 = alloca <4 x float>, align 16
  %vmask1 = alloca <4 x float>, align 16
  %vacc0x01c2 = alloca <4 x float>, align 16
  %vacc1x01c2 = alloca <4 x float>, align 16
  %vacc2x01c2 = alloca <4 x float>, align 16
  %vacc3x01c2 = alloca <4 x float>, align 16
  %vacc01x01 = alloca <4 x float>, align 16
  %vacc23x01 = alloca <4 x float>, align 16
  %vmax = alloca <4 x float>, align 16
  %vmin = alloca <4 x float>, align 16
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !4
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !4
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !4
  store i64 %ks, ptr %ks.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store ptr %w, ptr %w.addr, align 8, !tbaa !8
  store ptr %c, ptr %c.addr, align 8, !tbaa !8
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !4
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !4
  store i64 %a_offset, ptr %a_offset.addr, align 8, !tbaa !4
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !8
  store ptr %0, ptr %c0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #4
  %1 = load ptr, ptr %c0, align 8, !tbaa !8
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %cm_stride.addr, align 8, !tbaa !4
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %c1, align 8, !tbaa !8
  %5 = load i64, ptr %mr.addr, align 8, !tbaa !4
  %cmp = icmp ult i64 %5, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !10

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %c0, align 8, !tbaa !8
  store ptr %6, ptr %c1, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #4
  %7 = load ptr, ptr %c1, align 8, !tbaa !8
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %cm_stride.addr, align 8, !tbaa !4
  %add2 = add i64 %8, %9
  %10 = inttoptr i64 %add2 to ptr
  store ptr %10, ptr %c2, align 8, !tbaa !8
  %11 = load i64, ptr %mr.addr, align 8, !tbaa !4
  %cmp3 = icmp ule i64 %11, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !10

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %c1, align 8, !tbaa !8
  store ptr %12, ptr %c2, align 8, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %c3) #4
  %13 = load ptr, ptr %c2, align 8, !tbaa !8
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %cm_stride.addr, align 8, !tbaa !4
  %add13 = add i64 %14, %15
  %16 = inttoptr i64 %add13 to ptr
  store ptr %16, ptr %c3, align 8, !tbaa !8
  %17 = load i64, ptr %mr.addr, align 8, !tbaa !4
  %cmp14 = icmp ne i64 %17, 4
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !10

if.then22:                                        ; preds = %if.end12
  %18 = load ptr, ptr %c2, align 8, !tbaa !8
  store ptr %18, ptr %c3, align 8, !tbaa !8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end12
  br label %do.body

do.body:                                          ; preds = %do.cond204, %if.end23
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0c4) #4
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %call = call <4 x float> @_mm_load_ss(ptr noundef %19)
  store <4 x float> %call, ptr %vacc0x0c4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x1c4) #4
  %20 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds float, ptr %20, i64 1
  %call24 = call <4 x float> @_mm_load_ss(ptr noundef %add.ptr)
  store <4 x float> %call24, ptr %vacc0x1c4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0c4) #4
  %21 = load <4 x float>, ptr %vacc0x0c4, align 16, !tbaa !11
  store <4 x float> %21, ptr %vacc1x0c4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x1c4) #4
  %22 = load <4 x float>, ptr %vacc0x1c4, align 16, !tbaa !11
  store <4 x float> %22, ptr %vacc1x1c4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x0c4) #4
  %23 = load <4 x float>, ptr %vacc0x0c4, align 16, !tbaa !11
  store <4 x float> %23, ptr %vacc2x0c4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x1c4) #4
  %24 = load <4 x float>, ptr %vacc0x1c4, align 16, !tbaa !11
  store <4 x float> %24, ptr %vacc2x1c4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc3x0c4) #4
  %25 = load <4 x float>, ptr %vacc0x0c4, align 16, !tbaa !11
  store <4 x float> %25, ptr %vacc3x0c4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc3x1c4) #4
  %26 = load <4 x float>, ptr %vacc0x1c4, align 16, !tbaa !11
  store <4 x float> %26, ptr %vacc3x1c4, align 16, !tbaa !11
  %27 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr25 = getelementptr inbounds float, ptr %27, i64 2
  store ptr %add.ptr25, ptr %w.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %28 = load i64, ptr %ks.addr, align 8, !tbaa !4
  store i64 %28, ptr %p, align 8, !tbaa !4
  br label %do.body26

do.body26:                                        ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %29, i64 0
  %30 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  store ptr %30, ptr %a0, align 8, !tbaa !8
  %31 = load ptr, ptr %a0, align 8, !tbaa !8
  %32 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp27 = icmp ne ptr %31, %32
  %lnot29 = xor i1 %cmp27, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end37, !unpredictable !10

if.then35:                                        ; preds = %do.body26
  %33 = load ptr, ptr %a0, align 8, !tbaa !8
  %34 = ptrtoint ptr %33 to i64
  %35 = load i64, ptr %a_offset.addr, align 8, !tbaa !4
  %add36 = add i64 %34, %35
  %36 = inttoptr i64 %add36 to ptr
  store ptr %36, ptr %a0, align 8, !tbaa !8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.body26
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #4
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %arrayidx38 = getelementptr inbounds ptr, ptr %37, i64 1
  %38 = load ptr, ptr %arrayidx38, align 8, !tbaa !8
  store ptr %38, ptr %a1, align 8, !tbaa !8
  %39 = load ptr, ptr %a1, align 8, !tbaa !8
  %40 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp39 = icmp ne ptr %39, %40
  %lnot41 = xor i1 %cmp39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %if.then47, label %if.end49, !unpredictable !10

if.then47:                                        ; preds = %if.end37
  %41 = load ptr, ptr %a1, align 8, !tbaa !8
  %42 = ptrtoint ptr %41 to i64
  %43 = load i64, ptr %a_offset.addr, align 8, !tbaa !4
  %add48 = add i64 %42, %43
  %44 = inttoptr i64 %add48 to ptr
  store ptr %44, ptr %a1, align 8, !tbaa !8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #4
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %arrayidx50 = getelementptr inbounds ptr, ptr %45, i64 2
  %46 = load ptr, ptr %arrayidx50, align 8, !tbaa !8
  store ptr %46, ptr %a2, align 8, !tbaa !8
  %47 = load ptr, ptr %a2, align 8, !tbaa !8
  %48 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp51 = icmp ne ptr %47, %48
  %lnot53 = xor i1 %cmp51, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.end61, !unpredictable !10

if.then59:                                        ; preds = %if.end49
  %49 = load ptr, ptr %a2, align 8, !tbaa !8
  %50 = ptrtoint ptr %49 to i64
  %51 = load i64, ptr %a_offset.addr, align 8, !tbaa !4
  %add60 = add i64 %50, %51
  %52 = inttoptr i64 %add60 to ptr
  store ptr %52, ptr %a2, align 8, !tbaa !8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3) #4
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %arrayidx62 = getelementptr inbounds ptr, ptr %53, i64 3
  %54 = load ptr, ptr %arrayidx62, align 8, !tbaa !8
  store ptr %54, ptr %a3, align 8, !tbaa !8
  %55 = load ptr, ptr %a3, align 8, !tbaa !8
  %56 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp63 = icmp ne ptr %55, %56
  %lnot65 = xor i1 %cmp63, true
  %lnot67 = xor i1 %lnot65, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %tobool70 = icmp ne i64 %conv69, 0
  br i1 %tobool70, label %if.then71, label %if.end73, !unpredictable !10

if.then71:                                        ; preds = %if.end61
  %57 = load ptr, ptr %a3, align 8, !tbaa !8
  %58 = ptrtoint ptr %57 to i64
  %59 = load i64, ptr %a_offset.addr, align 8, !tbaa !4
  %add72 = add i64 %58, %59
  %60 = inttoptr i64 %add72 to ptr
  store ptr %60, ptr %a3, align 8, !tbaa !8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end61
  %61 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %add.ptr74 = getelementptr inbounds ptr, ptr %61, i64 4
  store ptr %add.ptr74, ptr %a.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %62 = load i64, ptr %kc.addr, align 8, !tbaa !4
  store i64 %62, ptr %k, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end73
  %63 = load i64, ptr %k, align 8, !tbaa !4
  %cmp75 = icmp uge i64 %63, 16
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #4
  %64 = load ptr, ptr %a0, align 8, !tbaa !8
  %call77 = call <4 x float> @_mm_loadu_ps(ptr noundef %64)
  store <4 x float> %call77, ptr %va0, align 16, !tbaa !11
  %65 = load ptr, ptr %a0, align 8, !tbaa !8
  %add.ptr78 = getelementptr inbounds float, ptr %65, i64 4
  store ptr %add.ptr78, ptr %a0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #4
  %66 = load ptr, ptr %a1, align 8, !tbaa !8
  %call79 = call <4 x float> @_mm_loadu_ps(ptr noundef %66)
  store <4 x float> %call79, ptr %va1, align 16, !tbaa !11
  %67 = load ptr, ptr %a1, align 8, !tbaa !8
  %add.ptr80 = getelementptr inbounds float, ptr %67, i64 4
  store ptr %add.ptr80, ptr %a1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %va2) #4
  %68 = load ptr, ptr %a2, align 8, !tbaa !8
  %call81 = call <4 x float> @_mm_loadu_ps(ptr noundef %68)
  store <4 x float> %call81, ptr %va2, align 16, !tbaa !11
  %69 = load ptr, ptr %a2, align 8, !tbaa !8
  %add.ptr82 = getelementptr inbounds float, ptr %69, i64 4
  store ptr %add.ptr82, ptr %a2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %va3) #4
  %70 = load ptr, ptr %a3, align 8, !tbaa !8
  %call83 = call <4 x float> @_mm_loadu_ps(ptr noundef %70)
  store <4 x float> %call83, ptr %va3, align 16, !tbaa !11
  %71 = load ptr, ptr %a3, align 8, !tbaa !8
  %add.ptr84 = getelementptr inbounds float, ptr %71, i64 4
  store ptr %add.ptr84, ptr %a3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0) #4
  %72 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %call85 = call <4 x float> @_mm_loadu_ps(ptr noundef %72)
  store <4 x float> %call85, ptr %vb0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb1) #4
  %73 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr86 = getelementptr inbounds float, ptr %73, i64 4
  %call87 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr86)
  store <4 x float> %call87, ptr %vb1, align 16, !tbaa !11
  %74 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr88 = getelementptr inbounds float, ptr %74, i64 8
  store ptr %add.ptr88, ptr %w.addr, align 8, !tbaa !8
  %75 = load <4 x float>, ptr %vacc0x0c4, align 16, !tbaa !11
  %76 = load <4 x float>, ptr %va0, align 16, !tbaa !11
  %77 = load <4 x float>, ptr %vb0, align 16, !tbaa !11
  %call89 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %76, <4 x float> noundef %77)
  %call90 = call <4 x float> @_mm_add_ps(<4 x float> noundef %75, <4 x float> noundef %call89)
  store <4 x float> %call90, ptr %vacc0x0c4, align 16, !tbaa !11
  %78 = load <4 x float>, ptr %vacc0x1c4, align 16, !tbaa !11
  %79 = load <4 x float>, ptr %va0, align 16, !tbaa !11
  %80 = load <4 x float>, ptr %vb1, align 16, !tbaa !11
  %call91 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %79, <4 x float> noundef %80)
  %call92 = call <4 x float> @_mm_add_ps(<4 x float> noundef %78, <4 x float> noundef %call91)
  store <4 x float> %call92, ptr %vacc0x1c4, align 16, !tbaa !11
  %81 = load <4 x float>, ptr %vacc1x0c4, align 16, !tbaa !11
  %82 = load <4 x float>, ptr %va1, align 16, !tbaa !11
  %83 = load <4 x float>, ptr %vb0, align 16, !tbaa !11
  %call93 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %82, <4 x float> noundef %83)
  %call94 = call <4 x float> @_mm_add_ps(<4 x float> noundef %81, <4 x float> noundef %call93)
  store <4 x float> %call94, ptr %vacc1x0c4, align 16, !tbaa !11
  %84 = load <4 x float>, ptr %vacc1x1c4, align 16, !tbaa !11
  %85 = load <4 x float>, ptr %va1, align 16, !tbaa !11
  %86 = load <4 x float>, ptr %vb1, align 16, !tbaa !11
  %call95 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %85, <4 x float> noundef %86)
  %call96 = call <4 x float> @_mm_add_ps(<4 x float> noundef %84, <4 x float> noundef %call95)
  store <4 x float> %call96, ptr %vacc1x1c4, align 16, !tbaa !11
  %87 = load <4 x float>, ptr %vacc2x0c4, align 16, !tbaa !11
  %88 = load <4 x float>, ptr %va2, align 16, !tbaa !11
  %89 = load <4 x float>, ptr %vb0, align 16, !tbaa !11
  %call97 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %88, <4 x float> noundef %89)
  %call98 = call <4 x float> @_mm_add_ps(<4 x float> noundef %87, <4 x float> noundef %call97)
  store <4 x float> %call98, ptr %vacc2x0c4, align 16, !tbaa !11
  %90 = load <4 x float>, ptr %vacc2x1c4, align 16, !tbaa !11
  %91 = load <4 x float>, ptr %va2, align 16, !tbaa !11
  %92 = load <4 x float>, ptr %vb1, align 16, !tbaa !11
  %call99 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %91, <4 x float> noundef %92)
  %call100 = call <4 x float> @_mm_add_ps(<4 x float> noundef %90, <4 x float> noundef %call99)
  store <4 x float> %call100, ptr %vacc2x1c4, align 16, !tbaa !11
  %93 = load <4 x float>, ptr %vacc3x0c4, align 16, !tbaa !11
  %94 = load <4 x float>, ptr %va3, align 16, !tbaa !11
  %95 = load <4 x float>, ptr %vb0, align 16, !tbaa !11
  %call101 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %94, <4 x float> noundef %95)
  %call102 = call <4 x float> @_mm_add_ps(<4 x float> noundef %93, <4 x float> noundef %call101)
  store <4 x float> %call102, ptr %vacc3x0c4, align 16, !tbaa !11
  %96 = load <4 x float>, ptr %vacc3x1c4, align 16, !tbaa !11
  %97 = load <4 x float>, ptr %va3, align 16, !tbaa !11
  %98 = load <4 x float>, ptr %vb1, align 16, !tbaa !11
  %call103 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %97, <4 x float> noundef %98)
  %call104 = call <4 x float> @_mm_add_ps(<4 x float> noundef %96, <4 x float> noundef %call103)
  store <4 x float> %call104, ptr %vacc3x1c4, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va3) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %99 = load i64, ptr %k, align 8, !tbaa !4
  %sub = sub i64 %99, 16
  store i64 %sub, ptr %k, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load i64, ptr %k, align 8, !tbaa !4
  %cmp105 = icmp ne i64 %100, 0
  %lnot107 = xor i1 %cmp105, true
  %lnot109 = xor i1 %lnot107, true
  %lnot.ext110 = zext i1 %lnot109 to i32
  %conv111 = sext i32 %lnot.ext110 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv111, i64 0)
  %tobool112 = icmp ne i64 %expval, 0
  br i1 %tobool112, label %if.then113, label %if.end156

if.then113:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0114) #4
  %101 = load ptr, ptr %a0, align 8, !tbaa !8
  %call115 = call <4 x float> @_mm_loadu_ps(ptr noundef %101)
  store <4 x float> %call115, ptr %va0114, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1116) #4
  %102 = load ptr, ptr %a1, align 8, !tbaa !8
  %call117 = call <4 x float> @_mm_loadu_ps(ptr noundef %102)
  store <4 x float> %call117, ptr %va1116, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %va2118) #4
  %103 = load ptr, ptr %a2, align 8, !tbaa !8
  %call119 = call <4 x float> @_mm_loadu_ps(ptr noundef %103)
  store <4 x float> %call119, ptr %va2118, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %va3120) #4
  %104 = load ptr, ptr %a3, align 8, !tbaa !8
  %call121 = call <4 x float> @_mm_loadu_ps(ptr noundef %104)
  store <4 x float> %call121, ptr %va3120, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0122) #4
  %105 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %call123 = call <4 x float> @_mm_loadu_ps(ptr noundef %105)
  store <4 x float> %call123, ptr %vb0122, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb1124) #4
  %106 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr125 = getelementptr inbounds float, ptr %106, i64 4
  %call126 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr125)
  store <4 x float> %call126, ptr %vb1124, align 16, !tbaa !11
  %107 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr127 = getelementptr inbounds float, ptr %107, i64 8
  store ptr %add.ptr127, ptr %w.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmask0) #4
  %call128 = call <4 x float> @_mm_setzero_ps()
  %108 = load <4 x float>, ptr %vb0122, align 16, !tbaa !11
  %call129 = call <4 x float> @_mm_cmpeq_ps(<4 x float> noundef %call128, <4 x float> noundef %108)
  store <4 x float> %call129, ptr %vmask0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmask1) #4
  %call130 = call <4 x float> @_mm_setzero_ps()
  %109 = load <4 x float>, ptr %vb1124, align 16, !tbaa !11
  %call131 = call <4 x float> @_mm_cmpeq_ps(<4 x float> noundef %call130, <4 x float> noundef %109)
  store <4 x float> %call131, ptr %vmask1, align 16, !tbaa !11
  %110 = load <4 x float>, ptr %vacc0x0c4, align 16, !tbaa !11
  %111 = load <4 x float>, ptr %vmask0, align 16, !tbaa !11
  %112 = load <4 x float>, ptr %va0114, align 16, !tbaa !11
  %call132 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %111, <4 x float> noundef %112)
  %113 = load <4 x float>, ptr %vb0122, align 16, !tbaa !11
  %call133 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call132, <4 x float> noundef %113)
  %call134 = call <4 x float> @_mm_add_ps(<4 x float> noundef %110, <4 x float> noundef %call133)
  store <4 x float> %call134, ptr %vacc0x0c4, align 16, !tbaa !11
  %114 = load <4 x float>, ptr %vacc0x1c4, align 16, !tbaa !11
  %115 = load <4 x float>, ptr %vmask1, align 16, !tbaa !11
  %116 = load <4 x float>, ptr %va0114, align 16, !tbaa !11
  %call135 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %115, <4 x float> noundef %116)
  %117 = load <4 x float>, ptr %vb1124, align 16, !tbaa !11
  %call136 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call135, <4 x float> noundef %117)
  %call137 = call <4 x float> @_mm_add_ps(<4 x float> noundef %114, <4 x float> noundef %call136)
  store <4 x float> %call137, ptr %vacc0x1c4, align 16, !tbaa !11
  %118 = load <4 x float>, ptr %vacc1x0c4, align 16, !tbaa !11
  %119 = load <4 x float>, ptr %vmask0, align 16, !tbaa !11
  %120 = load <4 x float>, ptr %va1116, align 16, !tbaa !11
  %call138 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %119, <4 x float> noundef %120)
  %121 = load <4 x float>, ptr %vb0122, align 16, !tbaa !11
  %call139 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call138, <4 x float> noundef %121)
  %call140 = call <4 x float> @_mm_add_ps(<4 x float> noundef %118, <4 x float> noundef %call139)
  store <4 x float> %call140, ptr %vacc1x0c4, align 16, !tbaa !11
  %122 = load <4 x float>, ptr %vacc1x1c4, align 16, !tbaa !11
  %123 = load <4 x float>, ptr %vmask1, align 16, !tbaa !11
  %124 = load <4 x float>, ptr %va1116, align 16, !tbaa !11
  %call141 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %123, <4 x float> noundef %124)
  %125 = load <4 x float>, ptr %vb1124, align 16, !tbaa !11
  %call142 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call141, <4 x float> noundef %125)
  %call143 = call <4 x float> @_mm_add_ps(<4 x float> noundef %122, <4 x float> noundef %call142)
  store <4 x float> %call143, ptr %vacc1x1c4, align 16, !tbaa !11
  %126 = load <4 x float>, ptr %vacc2x0c4, align 16, !tbaa !11
  %127 = load <4 x float>, ptr %vmask0, align 16, !tbaa !11
  %128 = load <4 x float>, ptr %va2118, align 16, !tbaa !11
  %call144 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %127, <4 x float> noundef %128)
  %129 = load <4 x float>, ptr %vb0122, align 16, !tbaa !11
  %call145 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call144, <4 x float> noundef %129)
  %call146 = call <4 x float> @_mm_add_ps(<4 x float> noundef %126, <4 x float> noundef %call145)
  store <4 x float> %call146, ptr %vacc2x0c4, align 16, !tbaa !11
  %130 = load <4 x float>, ptr %vacc2x1c4, align 16, !tbaa !11
  %131 = load <4 x float>, ptr %vmask1, align 16, !tbaa !11
  %132 = load <4 x float>, ptr %va2118, align 16, !tbaa !11
  %call147 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %131, <4 x float> noundef %132)
  %133 = load <4 x float>, ptr %vb1124, align 16, !tbaa !11
  %call148 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call147, <4 x float> noundef %133)
  %call149 = call <4 x float> @_mm_add_ps(<4 x float> noundef %130, <4 x float> noundef %call148)
  store <4 x float> %call149, ptr %vacc2x1c4, align 16, !tbaa !11
  %134 = load <4 x float>, ptr %vacc3x0c4, align 16, !tbaa !11
  %135 = load <4 x float>, ptr %vmask0, align 16, !tbaa !11
  %136 = load <4 x float>, ptr %va3120, align 16, !tbaa !11
  %call150 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %135, <4 x float> noundef %136)
  %137 = load <4 x float>, ptr %vb0122, align 16, !tbaa !11
  %call151 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call150, <4 x float> noundef %137)
  %call152 = call <4 x float> @_mm_add_ps(<4 x float> noundef %134, <4 x float> noundef %call151)
  store <4 x float> %call152, ptr %vacc3x0c4, align 16, !tbaa !11
  %138 = load <4 x float>, ptr %vacc3x1c4, align 16, !tbaa !11
  %139 = load <4 x float>, ptr %vmask1, align 16, !tbaa !11
  %140 = load <4 x float>, ptr %va3120, align 16, !tbaa !11
  %call153 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %139, <4 x float> noundef %140)
  %141 = load <4 x float>, ptr %vb1124, align 16, !tbaa !11
  %call154 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %call153, <4 x float> noundef %141)
  %call155 = call <4 x float> @_mm_add_ps(<4 x float> noundef %138, <4 x float> noundef %call154)
  store <4 x float> %call155, ptr %vacc3x1c4, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmask1) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmask0) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb1124) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0122) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va3120) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va2118) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1116) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0114) #4
  br label %if.end156

if.end156:                                        ; preds = %if.then113, %for.end
  %142 = load i64, ptr %p, align 8, !tbaa !4
  %sub157 = sub i64 %142, 32
  store i64 %sub157, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #4
  br label %do.cond

do.cond:                                          ; preds = %if.end156
  %143 = load i64, ptr %p, align 8, !tbaa !4
  %cmp158 = icmp ne i64 %143, 0
  br i1 %cmp158, label %do.body26, label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x01c2) #4
  %144 = load <4 x float>, ptr %vacc0x0c4, align 16, !tbaa !11
  %145 = load <4 x float>, ptr %vacc0x1c4, align 16, !tbaa !11
  %call160 = call <4 x float> @_mm_unpacklo_ps(<4 x float> noundef %144, <4 x float> noundef %145)
  %146 = load <4 x float>, ptr %vacc0x0c4, align 16, !tbaa !11
  %147 = load <4 x float>, ptr %vacc0x1c4, align 16, !tbaa !11
  %call161 = call <4 x float> @_mm_unpackhi_ps(<4 x float> noundef %146, <4 x float> noundef %147)
  %call162 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call160, <4 x float> noundef %call161)
  store <4 x float> %call162, ptr %vacc0x01c2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x01c2) #4
  %148 = load <4 x float>, ptr %vacc1x0c4, align 16, !tbaa !11
  %149 = load <4 x float>, ptr %vacc1x1c4, align 16, !tbaa !11
  %call163 = call <4 x float> @_mm_unpacklo_ps(<4 x float> noundef %148, <4 x float> noundef %149)
  %150 = load <4 x float>, ptr %vacc1x0c4, align 16, !tbaa !11
  %151 = load <4 x float>, ptr %vacc1x1c4, align 16, !tbaa !11
  %call164 = call <4 x float> @_mm_unpackhi_ps(<4 x float> noundef %150, <4 x float> noundef %151)
  %call165 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call163, <4 x float> noundef %call164)
  store <4 x float> %call165, ptr %vacc1x01c2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x01c2) #4
  %152 = load <4 x float>, ptr %vacc2x0c4, align 16, !tbaa !11
  %153 = load <4 x float>, ptr %vacc2x1c4, align 16, !tbaa !11
  %call166 = call <4 x float> @_mm_unpacklo_ps(<4 x float> noundef %152, <4 x float> noundef %153)
  %154 = load <4 x float>, ptr %vacc2x0c4, align 16, !tbaa !11
  %155 = load <4 x float>, ptr %vacc2x1c4, align 16, !tbaa !11
  %call167 = call <4 x float> @_mm_unpackhi_ps(<4 x float> noundef %154, <4 x float> noundef %155)
  %call168 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call166, <4 x float> noundef %call167)
  store <4 x float> %call168, ptr %vacc2x01c2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc3x01c2) #4
  %156 = load <4 x float>, ptr %vacc3x0c4, align 16, !tbaa !11
  %157 = load <4 x float>, ptr %vacc3x1c4, align 16, !tbaa !11
  %call169 = call <4 x float> @_mm_unpacklo_ps(<4 x float> noundef %156, <4 x float> noundef %157)
  %158 = load <4 x float>, ptr %vacc3x0c4, align 16, !tbaa !11
  %159 = load <4 x float>, ptr %vacc3x1c4, align 16, !tbaa !11
  %call170 = call <4 x float> @_mm_unpackhi_ps(<4 x float> noundef %158, <4 x float> noundef %159)
  %call171 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call169, <4 x float> noundef %call170)
  store <4 x float> %call171, ptr %vacc3x01c2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x01) #4
  %160 = load <4 x float>, ptr %vacc0x01c2, align 16, !tbaa !11
  %161 = load <4 x float>, ptr %vacc1x01c2, align 16, !tbaa !11
  %call172 = call <4 x float> @_mm_movelh_ps(<4 x float> noundef %160, <4 x float> noundef %161)
  %162 = load <4 x float>, ptr %vacc1x01c2, align 16, !tbaa !11
  %163 = load <4 x float>, ptr %vacc0x01c2, align 16, !tbaa !11
  %call173 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %162, <4 x float> noundef %163)
  %call174 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call172, <4 x float> noundef %call173)
  store <4 x float> %call174, ptr %vacc01x01, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc23x01) #4
  %164 = load <4 x float>, ptr %vacc2x01c2, align 16, !tbaa !11
  %165 = load <4 x float>, ptr %vacc3x01c2, align 16, !tbaa !11
  %call175 = call <4 x float> @_mm_movelh_ps(<4 x float> noundef %164, <4 x float> noundef %165)
  %166 = load <4 x float>, ptr %vacc3x01c2, align 16, !tbaa !11
  %167 = load <4 x float>, ptr %vacc2x01c2, align 16, !tbaa !11
  %call176 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %166, <4 x float> noundef %167)
  %call177 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call175, <4 x float> noundef %call176)
  store <4 x float> %call177, ptr %vacc23x01, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmax) #4
  %168 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %max = getelementptr inbounds %struct.anon.0, ptr %168, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x float], ptr %max, i64 0, i64 0
  %call178 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call178, ptr %vmax, align 16, !tbaa !11
  %169 = load <4 x float>, ptr %vacc01x01, align 16, !tbaa !11
  %170 = load <4 x float>, ptr %vmax, align 16, !tbaa !11
  %call179 = call <4 x float> @_mm_min_ps(<4 x float> noundef %169, <4 x float> noundef %170)
  store <4 x float> %call179, ptr %vacc01x01, align 16, !tbaa !11
  %171 = load <4 x float>, ptr %vacc23x01, align 16, !tbaa !11
  %172 = load <4 x float>, ptr %vmax, align 16, !tbaa !11
  %call180 = call <4 x float> @_mm_min_ps(<4 x float> noundef %171, <4 x float> noundef %172)
  store <4 x float> %call180, ptr %vacc23x01, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmin) #4
  %173 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %min = getelementptr inbounds %struct.anon.0, ptr %173, i32 0, i32 0
  %arraydecay181 = getelementptr inbounds [4 x float], ptr %min, i64 0, i64 0
  %call182 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay181)
  store <4 x float> %call182, ptr %vmin, align 16, !tbaa !11
  %174 = load <4 x float>, ptr %vacc01x01, align 16, !tbaa !11
  %175 = load <4 x float>, ptr %vmin, align 16, !tbaa !11
  %call183 = call <4 x float> @_mm_max_ps(<4 x float> noundef %174, <4 x float> noundef %175)
  store <4 x float> %call183, ptr %vacc01x01, align 16, !tbaa !11
  %176 = load <4 x float>, ptr %vacc23x01, align 16, !tbaa !11
  %177 = load <4 x float>, ptr %vmin, align 16, !tbaa !11
  %call184 = call <4 x float> @_mm_max_ps(<4 x float> noundef %176, <4 x float> noundef %177)
  store <4 x float> %call184, ptr %vacc23x01, align 16, !tbaa !11
  %178 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %cmp185 = icmp uge i64 %178, 2
  %lnot187 = xor i1 %cmp185, true
  %lnot189 = xor i1 %lnot187, true
  %lnot.ext190 = zext i1 %lnot189 to i32
  %conv191 = sext i32 %lnot.ext190 to i64
  %expval192 = call i64 @llvm.expect.i64(i64 %conv191, i64 1)
  %tobool193 = icmp ne i64 %expval192, 0
  br i1 %tobool193, label %if.then194, label %if.else

if.then194:                                       ; preds = %do.end
  %179 = load ptr, ptr %c3, align 8, !tbaa !8
  %180 = load <4 x float>, ptr %vacc23x01, align 16, !tbaa !11
  call void @_mm_storeh_pi(ptr noundef %179, <4 x float> noundef %180)
  %181 = load ptr, ptr %c3, align 8, !tbaa !8
  %182 = ptrtoint ptr %181 to i64
  %183 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add195 = add i64 %182, %183
  %184 = inttoptr i64 %add195 to ptr
  store ptr %184, ptr %c3, align 8, !tbaa !8
  %185 = load ptr, ptr %c2, align 8, !tbaa !8
  %186 = load <4 x float>, ptr %vacc23x01, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %185, <4 x float> noundef %186)
  %187 = load ptr, ptr %c2, align 8, !tbaa !8
  %188 = ptrtoint ptr %187 to i64
  %189 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add196 = add i64 %188, %189
  %190 = inttoptr i64 %add196 to ptr
  store ptr %190, ptr %c2, align 8, !tbaa !8
  %191 = load ptr, ptr %c1, align 8, !tbaa !8
  %192 = load <4 x float>, ptr %vacc01x01, align 16, !tbaa !11
  call void @_mm_storeh_pi(ptr noundef %191, <4 x float> noundef %192)
  %193 = load ptr, ptr %c1, align 8, !tbaa !8
  %194 = ptrtoint ptr %193 to i64
  %195 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add197 = add i64 %194, %195
  %196 = inttoptr i64 %add197 to ptr
  store ptr %196, ptr %c1, align 8, !tbaa !8
  %197 = load ptr, ptr %c0, align 8, !tbaa !8
  %198 = load <4 x float>, ptr %vacc01x01, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %197, <4 x float> noundef %198)
  %199 = load ptr, ptr %c0, align 8, !tbaa !8
  %200 = ptrtoint ptr %199 to i64
  %201 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add198 = add i64 %200, %201
  %202 = inttoptr i64 %add198 to ptr
  store ptr %202, ptr %c0, align 8, !tbaa !8
  %203 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %204 = ptrtoint ptr %203 to i64
  %205 = load i64, ptr %ks.addr, align 8, !tbaa !4
  %sub199 = sub i64 %204, %205
  %206 = inttoptr i64 %sub199 to ptr
  store ptr %206, ptr %a.addr, align 8, !tbaa !8
  %207 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %sub200 = sub i64 %207, 2
  store i64 %sub200, ptr %nc.addr, align 8, !tbaa !4
  br label %if.end203

if.else:                                          ; preds = %do.end
  %208 = load ptr, ptr %c3, align 8, !tbaa !8
  %209 = load <4 x float>, ptr %vacc23x01, align 16, !tbaa !11
  %210 = load <4 x float>, ptr %vacc23x01, align 16, !tbaa !11
  %call201 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %209, <4 x float> noundef %210)
  call void @_mm_store_ss(ptr noundef %208, <4 x float> noundef %call201)
  %211 = load ptr, ptr %c2, align 8, !tbaa !8
  %212 = load <4 x float>, ptr %vacc23x01, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %211, <4 x float> noundef %212)
  %213 = load ptr, ptr %c1, align 8, !tbaa !8
  %214 = load <4 x float>, ptr %vacc01x01, align 16, !tbaa !11
  %215 = load <4 x float>, ptr %vacc01x01, align 16, !tbaa !11
  %call202 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %214, <4 x float> noundef %215)
  call void @_mm_store_ss(ptr noundef %213, <4 x float> noundef %call202)
  %216 = load ptr, ptr %c0, align 8, !tbaa !8
  %217 = load <4 x float>, ptr %vacc01x01, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %216, <4 x float> noundef %217)
  store i64 0, ptr %nc.addr, align 8, !tbaa !4
  br label %if.end203

if.end203:                                        ; preds = %if.else, %if.then194
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmin) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmax) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc23x01) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01x01) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc3x01c2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x01c2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x01c2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x01c2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc3x1c4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc3x0c4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x1c4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x0c4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x1c4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0c4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x1c4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0c4) #4
  br label %do.cond204

do.cond204:                                       ; preds = %if.end203
  %218 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %cmp205 = icmp ne i64 %218, 0
  br i1 %cmp205, label %do.body, label %do.end207

do.end207:                                        ; preds = %do.cond204
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ss(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__u = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__u) #4
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u1 = getelementptr inbounds %struct.__mm_load_ss_struct, ptr %0, i32 0, i32 0
  %1 = load float, ptr %__u1, align 1, !tbaa !11
  store float %1, ptr %__u, align 4, !tbaa !12
  %2 = load float, ptr %__u, align 4, !tbaa !12
  %vecinit = insertelement <4 x float> undef, float %2, i32 0
  %vecinit2 = insertelement <4 x float> %vecinit, float 0.000000e+00, i32 1
  %vecinit3 = insertelement <4 x float> %vecinit2, float 0.000000e+00, i32 2
  %vecinit4 = insertelement <4 x float> %vecinit3, float 0.000000e+00, i32 3
  store <4 x float> %vecinit4, ptr %.compoundliteral, align 16, !tbaa !11
  %3 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__u) #4
  ret <4 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <4 x float>, ptr %__v, align 1, !tbaa !11
  ret <4 x float> %1
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cmpeq_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %2 = fcmp oeq <4 x float> %0, %1
  %3 = sext <4 x i1> %2 to <4 x i32>
  %4 = bitcast <4 x i32> %3 to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <4 x float>, align 16
  store <4 x float> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <4 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_andnot_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %not = xor <4 x i32> %1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %not, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_unpacklo_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_unpackhi_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movelh_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  ret <4 x float> %shuffle
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
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !11
  ret <4 x float> %1
}

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

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeh_pi(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 2, i32 3>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct.2, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
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
!10 = !{}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !6, i64 0}

; ModuleID = 'samples/610.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-igemm/gen/3x4c2s4-minmax-fp32-sse2-ld64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x float], [4 x float], [8 x i16], [8 x i16] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_igemm_minmax_fp32_ukernel_3x4c2s4__sse2_ld64(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vacc0x0123 = alloca <2 x i64>, align 16
  %vacc1x0123 = alloca <2 x i64>, align 16
  %vacc2x0123 = alloca <2 x i64>, align 16
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca <2 x i64>, align 16
  %vxa0 = alloca <2 x i64>, align 16
  %va1 = alloca <2 x i64>, align 16
  %vxa1 = alloca <2 x i64>, align 16
  %va2 = alloca <2 x i64>, align 16
  %vxa2 = alloca <2 x i64>, align 16
  %vb0 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vb1 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vb2 = alloca <2 x i64>, align 16
  %vxb2 = alloca <2 x i64>, align 16
  %vb3 = alloca <2 x i64>, align 16
  %vxb3 = alloca <2 x i64>, align 16
  %vscaled0x0123 = alloca <4 x float>, align 16
  %vscaled1x0123 = alloca <4 x float>, align 16
  %vscaled2x0123 = alloca <4 x float>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vacc01x0123 = alloca <2 x i64>, align 16
  %vacc22x0123 = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vout = alloca <2 x i64>, align 16
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
  %0 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %call = call i64 @round_up_po2(i64 noundef %0, i64 noundef 8)
  store i64 %call, ptr %kc.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #6
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %1, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
  %2 = load ptr, ptr %c0, align 8, !tbaa !9
  %3 = ptrtoint ptr %2 to i64
  %4 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add = add i64 %3, %4
  %5 = inttoptr i64 %add to ptr
  store ptr %5, ptr %c1, align 8, !tbaa !9
  %6 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %6, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %c0, align 8, !tbaa !9
  store ptr %7, ptr %c1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #6
  %8 = load ptr, ptr %c1, align 8, !tbaa !9
  %9 = ptrtoint ptr %8 to i64
  %10 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add2 = add i64 %9, %10
  %11 = inttoptr i64 %add2 to ptr
  store ptr %11, ptr %c2, align 8, !tbaa !9
  %12 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp3 = icmp ule i64 %12, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %13 = load ptr, ptr %c1, align 8, !tbaa !9
  store ptr %13, ptr %c2, align 8, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond182, %if.end12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %14 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call13 = call <2 x i64> @_mm_loadu_si128(ptr noundef %14)
  store <2 x i64> %call13, ptr %vacc0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #6
  %15 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  store <2 x i64> %15, ptr %vacc1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x0123) #6
  %16 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  store <2 x i64> %16, ptr %vacc2x0123, align 16, !tbaa !12
  %17 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %17, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %18 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %18, ptr %p, align 8, !tbaa !5
  br label %do.body14

do.body14:                                        ; preds = %do.cond115, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %19 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %20, ptr %a0, align 8, !tbaa !9
  %21 = load ptr, ptr %a0, align 8, !tbaa !9
  %22 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp15 = icmp ne ptr %21, %22
  %lnot17 = xor i1 %cmp15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end25, !unpredictable !11

if.then23:                                        ; preds = %do.body14
  %23 = load ptr, ptr %a0, align 8, !tbaa !9
  %24 = ptrtoint ptr %23 to i64
  %25 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add24 = add i64 %24, %25
  %26 = inttoptr i64 %add24 to ptr
  store ptr %26, ptr %a0, align 8, !tbaa !9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #6
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx26 = getelementptr inbounds ptr, ptr %27, i64 1
  %28 = load ptr, ptr %arrayidx26, align 8, !tbaa !9
  store ptr %28, ptr %a1, align 8, !tbaa !9
  %29 = load ptr, ptr %a1, align 8, !tbaa !9
  %30 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp27 = icmp ne ptr %29, %30
  %lnot29 = xor i1 %cmp27, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end37, !unpredictable !11

if.then35:                                        ; preds = %if.end25
  %31 = load ptr, ptr %a1, align 8, !tbaa !9
  %32 = ptrtoint ptr %31 to i64
  %33 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add36 = add i64 %32, %33
  %34 = inttoptr i64 %add36 to ptr
  store ptr %34, ptr %a1, align 8, !tbaa !9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #6
  %35 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds ptr, ptr %35, i64 2
  %36 = load ptr, ptr %arrayidx38, align 8, !tbaa !9
  store ptr %36, ptr %a2, align 8, !tbaa !9
  %37 = load ptr, ptr %a2, align 8, !tbaa !9
  %38 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp39 = icmp ne ptr %37, %38
  %lnot41 = xor i1 %cmp39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %if.then47, label %if.end49, !unpredictable !11

if.then47:                                        ; preds = %if.end37
  %39 = load ptr, ptr %a2, align 8, !tbaa !9
  %40 = ptrtoint ptr %39 to i64
  %41 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add48 = add i64 %40, %41
  %42 = inttoptr i64 %add48 to ptr
  store ptr %42, ptr %a2, align 8, !tbaa !9
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end37
  %43 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr50 = getelementptr inbounds ptr, ptr %43, i64 3
  store ptr %add.ptr50, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %44 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %44, ptr %k, align 8, !tbaa !5
  br label %do.body51

do.body51:                                        ; preds = %do.cond, %if.end49
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %45 = load ptr, ptr %a0, align 8, !tbaa !9
  %call52 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %45)
  store <2 x i64> %call52, ptr %va0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %46 = load <2 x i64>, ptr %va0, align 16, !tbaa !12
  %47 = load <2 x i64>, ptr %va0, align 16, !tbaa !12
  %call53 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %46, <2 x i64> noundef %47)
  %call54 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call53, i32 noundef 8)
  store <2 x i64> %call54, ptr %vxa0, align 16, !tbaa !12
  %48 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr55 = getelementptr inbounds i8, ptr %48, i64 8
  store ptr %add.ptr55, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #6
  %49 = load ptr, ptr %a1, align 8, !tbaa !9
  %call56 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %49)
  store <2 x i64> %call56, ptr %va1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1) #6
  %50 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %51 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %call57 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %50, <2 x i64> noundef %51)
  %call58 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call57, i32 noundef 8)
  store <2 x i64> %call58, ptr %vxa1, align 16, !tbaa !12
  %52 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr59 = getelementptr inbounds i8, ptr %52, i64 8
  store ptr %add.ptr59, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va2) #6
  %53 = load ptr, ptr %a2, align 8, !tbaa !9
  %call60 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %53)
  store <2 x i64> %call60, ptr %va2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa2) #6
  %54 = load <2 x i64>, ptr %va2, align 16, !tbaa !12
  %55 = load <2 x i64>, ptr %va2, align 16, !tbaa !12
  %call61 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %54, <2 x i64> noundef %55)
  %call62 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call61, i32 noundef 8)
  store <2 x i64> %call62, ptr %vxa2, align 16, !tbaa !12
  %56 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr63 = getelementptr inbounds i8, ptr %56, i64 8
  store ptr %add.ptr63, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0) #6
  %57 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call64 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %57)
  store <2 x i64> %call64, ptr %vb0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %58 = load <2 x i64>, ptr %vb0, align 16, !tbaa !12
  %59 = load <2 x i64>, ptr %vb0, align 16, !tbaa !12
  %call65 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %58, <2 x i64> noundef %59)
  %call66 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call65, i32 noundef 8)
  store <2 x i64> %call66, ptr %vxb0, align 16, !tbaa !12
  %60 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %61 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %62 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call67 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %61, <2 x i64> noundef %62)
  %call68 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %60, <2 x i64> noundef %call67)
  store <2 x i64> %call68, ptr %vacc0x0123, align 16, !tbaa !12
  %63 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %64 = bitcast <2 x i64> %63 to <4 x i32>
  %permil = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %65 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %65, ptr %vxa0, align 16, !tbaa !12
  %66 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %67 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %68 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call69 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %67, <2 x i64> noundef %68)
  %call70 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %66, <2 x i64> noundef %call69)
  store <2 x i64> %call70, ptr %vacc1x0123, align 16, !tbaa !12
  %69 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %70 = bitcast <2 x i64> %69 to <4 x i32>
  %permil71 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %71 = bitcast <4 x i32> %permil71 to <2 x i64>
  store <2 x i64> %71, ptr %vxa1, align 16, !tbaa !12
  %72 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %73 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %74 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call72 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %73, <2 x i64> noundef %74)
  %call73 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %72, <2 x i64> noundef %call72)
  store <2 x i64> %call73, ptr %vacc2x0123, align 16, !tbaa !12
  %75 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %76 = bitcast <2 x i64> %75 to <4 x i32>
  %permil74 = shufflevector <4 x i32> %76, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %77 = bitcast <4 x i32> %permil74 to <2 x i64>
  store <2 x i64> %77, ptr %vxa2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb1) #6
  %78 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr75 = getelementptr inbounds i8, ptr %78, i64 8
  %call76 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr75)
  store <2 x i64> %call76, ptr %vb1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %79 = load <2 x i64>, ptr %vb1, align 16, !tbaa !12
  %80 = load <2 x i64>, ptr %vb1, align 16, !tbaa !12
  %call77 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %79, <2 x i64> noundef %80)
  %call78 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call77, i32 noundef 8)
  store <2 x i64> %call78, ptr %vxb1, align 16, !tbaa !12
  %81 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %82 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %83 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call79 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %82, <2 x i64> noundef %83)
  %call80 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %81, <2 x i64> noundef %call79)
  store <2 x i64> %call80, ptr %vacc0x0123, align 16, !tbaa !12
  %84 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %85 = bitcast <2 x i64> %84 to <4 x i32>
  %permil81 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %86 = bitcast <4 x i32> %permil81 to <2 x i64>
  store <2 x i64> %86, ptr %vxa0, align 16, !tbaa !12
  %87 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %88 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %89 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call82 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %88, <2 x i64> noundef %89)
  %call83 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %87, <2 x i64> noundef %call82)
  store <2 x i64> %call83, ptr %vacc1x0123, align 16, !tbaa !12
  %90 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %91 = bitcast <2 x i64> %90 to <4 x i32>
  %permil84 = shufflevector <4 x i32> %91, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %92 = bitcast <4 x i32> %permil84 to <2 x i64>
  store <2 x i64> %92, ptr %vxa1, align 16, !tbaa !12
  %93 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %94 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %95 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call85 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %94, <2 x i64> noundef %95)
  %call86 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %93, <2 x i64> noundef %call85)
  store <2 x i64> %call86, ptr %vacc2x0123, align 16, !tbaa !12
  %96 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %97 = bitcast <2 x i64> %96 to <4 x i32>
  %permil87 = shufflevector <4 x i32> %97, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %98 = bitcast <4 x i32> %permil87 to <2 x i64>
  store <2 x i64> %98, ptr %vxa2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb2) #6
  %99 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr88 = getelementptr inbounds i8, ptr %99, i64 16
  %call89 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr88)
  store <2 x i64> %call89, ptr %vb2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %100 = load <2 x i64>, ptr %vb2, align 16, !tbaa !12
  %101 = load <2 x i64>, ptr %vb2, align 16, !tbaa !12
  %call90 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %100, <2 x i64> noundef %101)
  %call91 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call90, i32 noundef 8)
  store <2 x i64> %call91, ptr %vxb2, align 16, !tbaa !12
  %102 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %103 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %104 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call92 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %103, <2 x i64> noundef %104)
  %call93 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %102, <2 x i64> noundef %call92)
  store <2 x i64> %call93, ptr %vacc0x0123, align 16, !tbaa !12
  %105 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %106 = bitcast <2 x i64> %105 to <4 x i32>
  %permil94 = shufflevector <4 x i32> %106, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %107 = bitcast <4 x i32> %permil94 to <2 x i64>
  store <2 x i64> %107, ptr %vxa0, align 16, !tbaa !12
  %108 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %109 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %110 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call95 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %109, <2 x i64> noundef %110)
  %call96 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %108, <2 x i64> noundef %call95)
  store <2 x i64> %call96, ptr %vacc1x0123, align 16, !tbaa !12
  %111 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %112 = bitcast <2 x i64> %111 to <4 x i32>
  %permil97 = shufflevector <4 x i32> %112, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %113 = bitcast <4 x i32> %permil97 to <2 x i64>
  store <2 x i64> %113, ptr %vxa1, align 16, !tbaa !12
  %114 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %115 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %116 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call98 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %115, <2 x i64> noundef %116)
  %call99 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %114, <2 x i64> noundef %call98)
  store <2 x i64> %call99, ptr %vacc2x0123, align 16, !tbaa !12
  %117 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %118 = bitcast <2 x i64> %117 to <4 x i32>
  %permil100 = shufflevector <4 x i32> %118, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %119 = bitcast <4 x i32> %permil100 to <2 x i64>
  store <2 x i64> %119, ptr %vxa2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb3) #6
  %120 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr101 = getelementptr inbounds i8, ptr %120, i64 24
  %call102 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr101)
  store <2 x i64> %call102, ptr %vb3, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %121 = load <2 x i64>, ptr %vb3, align 16, !tbaa !12
  %122 = load <2 x i64>, ptr %vb3, align 16, !tbaa !12
  %call103 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %121, <2 x i64> noundef %122)
  %call104 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call103, i32 noundef 8)
  store <2 x i64> %call104, ptr %vxb3, align 16, !tbaa !12
  %123 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %124 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %125 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call105 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %124, <2 x i64> noundef %125)
  %call106 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %123, <2 x i64> noundef %call105)
  store <2 x i64> %call106, ptr %vacc0x0123, align 16, !tbaa !12
  %126 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %127 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %128 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call107 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %127, <2 x i64> noundef %128)
  %call108 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %126, <2 x i64> noundef %call107)
  store <2 x i64> %call108, ptr %vacc1x0123, align 16, !tbaa !12
  %129 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %130 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %131 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call109 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %130, <2 x i64> noundef %131)
  %call110 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %129, <2 x i64> noundef %call109)
  store <2 x i64> %call110, ptr %vacc2x0123, align 16, !tbaa !12
  %132 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr111 = getelementptr inbounds i8, ptr %132, i64 32
  store ptr %add.ptr111, ptr %w.addr, align 8, !tbaa !9
  %133 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %133, 8
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #6
  br label %do.cond

do.cond:                                          ; preds = %do.body51
  %134 = load i64, ptr %k, align 8, !tbaa !5
  %cmp112 = icmp ne i64 %134, 0
  br i1 %cmp112, label %do.body51, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %135 = load i64, ptr %p, align 8, !tbaa !5
  %sub114 = sub i64 %135, 24
  store i64 %sub114, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond115

do.cond115:                                       ; preds = %do.end
  %136 = load i64, ptr %p, align 8, !tbaa !5
  %cmp116 = icmp ne i64 %136, 0
  br i1 %cmp116, label %do.body14, label %do.end118, !llvm.loop !15

do.end118:                                        ; preds = %do.cond115
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %137 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %call119 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %137)
  store <4 x float> %call119, ptr %vscaled0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled1x0123) #6
  %138 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call120 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %138)
  store <4 x float> %call120, ptr %vscaled1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled2x0123) #6
  %139 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %call121 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %139)
  store <4 x float> %call121, ptr %vscaled2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %140 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.2, ptr %140, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call122 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call122, ptr %vscale, align 16, !tbaa !12
  %141 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %142 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call123 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %141, <4 x float> noundef %142)
  store <4 x float> %call123, ptr %vscaled0x0123, align 16, !tbaa !12
  %143 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %144 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call124 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %143, <4 x float> noundef %144)
  store <4 x float> %call124, ptr %vscaled1x0123, align 16, !tbaa !12
  %145 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %146 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call125 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %145, <4 x float> noundef %146)
  store <4 x float> %call125, ptr %vscaled2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %147 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %147, i32 0, i32 1
  %arraydecay126 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call127 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay126)
  store <4 x float> %call127, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %148 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %149 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call128 = call <4 x float> @_mm_min_ps(<4 x float> noundef %148, <4 x float> noundef %149)
  store <4 x float> %call128, ptr %vscaled0x0123, align 16, !tbaa !12
  %150 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %151 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call129 = call <4 x float> @_mm_min_ps(<4 x float> noundef %150, <4 x float> noundef %151)
  store <4 x float> %call129, ptr %vscaled1x0123, align 16, !tbaa !12
  %152 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %153 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call130 = call <4 x float> @_mm_min_ps(<4 x float> noundef %152, <4 x float> noundef %153)
  store <4 x float> %call130, ptr %vscaled2x0123, align 16, !tbaa !12
  %154 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %call131 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %154)
  store <2 x i64> %call131, ptr %vacc0x0123, align 16, !tbaa !12
  %155 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %call132 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %155)
  store <2 x i64> %call132, ptr %vacc1x0123, align 16, !tbaa !12
  %156 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %call133 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %156)
  store <2 x i64> %call133, ptr %vacc2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %157 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %157, i32 0, i32 2
  %arraydecay134 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call135 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay134)
  store <2 x i64> %call135, ptr %voutput_zero_point, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x0123) #6
  %158 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %159 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call136 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %158, <2 x i64> noundef %159)
  %160 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call137 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call136, <2 x i64> noundef %160)
  store <2 x i64> %call137, ptr %vacc01x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc22x0123) #6
  %161 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %162 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %call138 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %161, <2 x i64> noundef %162)
  %163 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call139 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call138, <2 x i64> noundef %163)
  store <2 x i64> %call139, ptr %vacc22x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %164 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.2, ptr %164, i32 0, i32 3
  %arraydecay140 = getelementptr inbounds [8 x i16], ptr %output_min, i64 0, i64 0
  %call141 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay140)
  store <2 x i64> %call141, ptr %voutput_min, align 16, !tbaa !12
  %165 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %166 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call142 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %165, <2 x i64> noundef %166)
  store <2 x i64> %call142, ptr %vacc01x0123, align 16, !tbaa !12
  %167 = load <2 x i64>, ptr %vacc22x0123, align 16, !tbaa !12
  %168 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call143 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %167, <2 x i64> noundef %168)
  store <2 x i64> %call143, ptr %vacc22x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %169 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %170 = load <2 x i64>, ptr %vacc22x0123, align 16, !tbaa !12
  %call144 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %169, <2 x i64> noundef %170)
  store <2 x i64> %call144, ptr %vout, align 16, !tbaa !12
  %171 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp145 = icmp uge i64 %171, 4
  br i1 %cmp145, label %if.then147, label %if.else

if.then147:                                       ; preds = %do.end118
  %172 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %173 = bitcast <2 x i64> %172 to <4 x i32>
  %permil148 = shufflevector <4 x i32> %173, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %174 = bitcast <4 x i32> %permil148 to <2 x i64>
  %call149 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %174)
  %175 = load ptr, ptr %c2, align 8, !tbaa !9
  store i32 %call149, ptr %175, align 4, !tbaa !16
  %176 = load ptr, ptr %c2, align 8, !tbaa !9
  %177 = ptrtoint ptr %176 to i64
  %178 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add150 = add i64 %177, %178
  %179 = inttoptr i64 %add150 to ptr
  store ptr %179, ptr %c2, align 8, !tbaa !9
  %180 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %181 = bitcast <2 x i64> %180 to <4 x i32>
  %permil151 = shufflevector <4 x i32> %181, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %182 = bitcast <4 x i32> %permil151 to <2 x i64>
  %call152 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %182)
  %183 = load ptr, ptr %c1, align 8, !tbaa !9
  store i32 %call152, ptr %183, align 4, !tbaa !16
  %184 = load ptr, ptr %c1, align 8, !tbaa !9
  %185 = ptrtoint ptr %184 to i64
  %186 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add153 = add i64 %185, %186
  %187 = inttoptr i64 %add153 to ptr
  store ptr %187, ptr %c1, align 8, !tbaa !9
  %188 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call154 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %188)
  %189 = load ptr, ptr %c0, align 8, !tbaa !9
  store i32 %call154, ptr %189, align 4, !tbaa !16
  %190 = load ptr, ptr %c0, align 8, !tbaa !9
  %191 = ptrtoint ptr %190 to i64
  %192 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add155 = add i64 %191, %192
  %193 = inttoptr i64 %add155 to ptr
  store ptr %193, ptr %c0, align 8, !tbaa !9
  %194 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %195 = ptrtoint ptr %194 to i64
  %196 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub156 = sub i64 %195, %196
  %197 = inttoptr i64 %sub156 to ptr
  store ptr %197, ptr %a.addr, align 8, !tbaa !9
  %198 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub157 = sub i64 %198, 4
  store i64 %sub157, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end181

if.else:                                          ; preds = %do.end118
  %199 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %199, 2
  %tobool158 = icmp ne i64 %and, 0
  br i1 %tobool158, label %if.then159, label %if.end170

if.then159:                                       ; preds = %if.else
  %200 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %201 = bitcast <2 x i64> %200 to <8 x i16>
  %202 = extractelement <8 x i16> %201, i64 4
  %conv160 = zext i16 %202 to i32
  %conv161 = trunc i32 %conv160 to i16
  %203 = load ptr, ptr %c2, align 8, !tbaa !9
  store i16 %conv161, ptr %203, align 2, !tbaa !18
  %204 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr162 = getelementptr inbounds i8, ptr %204, i64 2
  store ptr %add.ptr162, ptr %c2, align 8, !tbaa !9
  %205 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %206 = bitcast <2 x i64> %205 to <8 x i16>
  %207 = extractelement <8 x i16> %206, i64 2
  %conv163 = zext i16 %207 to i32
  %conv164 = trunc i32 %conv163 to i16
  %208 = load ptr, ptr %c1, align 8, !tbaa !9
  store i16 %conv164, ptr %208, align 2, !tbaa !18
  %209 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr165 = getelementptr inbounds i8, ptr %209, i64 2
  store ptr %add.ptr165, ptr %c1, align 8, !tbaa !9
  %210 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %211 = bitcast <2 x i64> %210 to <8 x i16>
  %212 = extractelement <8 x i16> %211, i64 0
  %conv166 = zext i16 %212 to i32
  %conv167 = trunc i32 %conv166 to i16
  %213 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv167, ptr %213, align 2, !tbaa !18
  %214 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr168 = getelementptr inbounds i8, ptr %214, i64 2
  store ptr %add.ptr168, ptr %c0, align 8, !tbaa !9
  %215 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call169 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %215, i32 noundef 16)
  store <2 x i64> %call169, ptr %vout, align 16, !tbaa !12
  br label %if.end170

if.end170:                                        ; preds = %if.then159, %if.else
  %216 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and171 = and i64 %216, 1
  %tobool172 = icmp ne i64 %and171, 0
  br i1 %tobool172, label %if.then173, label %if.end180

if.then173:                                       ; preds = %if.end170
  %217 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %218 = bitcast <2 x i64> %217 to <8 x i16>
  %219 = extractelement <8 x i16> %218, i64 4
  %conv174 = zext i16 %219 to i32
  %conv175 = trunc i32 %conv174 to i8
  %220 = load ptr, ptr %c2, align 8, !tbaa !9
  store i8 %conv175, ptr %220, align 1, !tbaa !12
  %221 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %222 = bitcast <2 x i64> %221 to <8 x i16>
  %223 = extractelement <8 x i16> %222, i64 2
  %conv176 = zext i16 %223 to i32
  %conv177 = trunc i32 %conv176 to i8
  %224 = load ptr, ptr %c1, align 8, !tbaa !9
  store i8 %conv177, ptr %224, align 1, !tbaa !12
  %225 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call178 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %225)
  %conv179 = trunc i32 %call178 to i8
  %226 = load ptr, ptr %c0, align 8, !tbaa !9
  store i8 %conv179, ptr %226, align 1, !tbaa !12
  br label %if.end180

if.end180:                                        ; preds = %if.then173, %if.end170
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.then147
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc22x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled2x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0x0123) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  br label %do.cond182

do.cond182:                                       ; preds = %if.end181
  %227 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp183 = icmp ne i64 %227, 0
  br i1 %cmp183, label %do.body, label %do.end185, !llvm.loop !20

do.end185:                                        ; preds = %do.cond182
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_up_po2(i64 noundef %n, i64 noundef %q) #1 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  %2 = load i64, ptr %q.addr, align 8, !tbaa !5
  %call = call i64 @round_down_po2(i64 noundef %sub, i64 noundef %2)
  ret i64 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !12
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !12
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !12
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !16
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %add = add <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !12
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
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

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
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
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.sat = call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.max = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !12
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !12
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !16
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #1 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
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
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = distinct !{!20, !14}

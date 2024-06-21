; ModuleID = 'samples/803.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f16-igemm/gen/5x16-minmax-avx2-broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [8 x float], [8 x float], [8 x float] }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }
%struct.__storeu_si32 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f16_igemm_minmax_ukernel_5x16__avx2_broadcast(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(96) %params) #0 {
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
  %c4 = alloca ptr, align 8
  %vacc0x01234567 = alloca <8 x float>, align 32
  %vacc0x89ABCDEF = alloca <8 x float>, align 32
  %vacc1x01234567 = alloca <8 x float>, align 32
  %vacc1x89ABCDEF = alloca <8 x float>, align 32
  %vacc2x01234567 = alloca <8 x float>, align 32
  %vacc2x89ABCDEF = alloca <8 x float>, align 32
  %vacc3x01234567 = alloca <8 x float>, align 32
  %vacc3x89ABCDEF = alloca <8 x float>, align 32
  %vacc4x01234567 = alloca <8 x float>, align 32
  %vacc4x89ABCDEF = alloca <8 x float>, align 32
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %a3 = alloca ptr, align 8
  %a4 = alloca ptr, align 8
  %k = alloca i64, align 8
  %vb01234567 = alloca <8 x float>, align 32
  %vb89ABCDEF = alloca <8 x float>, align 32
  %va0 = alloca <8 x float>, align 32
  %va1 = alloca <8 x float>, align 32
  %va2 = alloca <8 x float>, align 32
  %va3 = alloca <8 x float>, align 32
  %va4 = alloca <8 x float>, align 32
  %vscale = alloca <8 x float>, align 32
  %vmin = alloca <8 x float>, align 32
  %vmax = alloca <8 x float>, align 32
  %vh4x01234567 = alloca <2 x i64>, align 16
  %vh3x01234567 = alloca <2 x i64>, align 16
  %vh2x01234567 = alloca <2 x i64>, align 16
  %vh1x01234567 = alloca <2 x i64>, align 16
  %vh0x01234567 = alloca <2 x i64>, align 16
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
  %cmp14 = icmp ult i64 %17, 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c4) #6
  %19 = load ptr, ptr %c3, align 8, !tbaa !9
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add24 = add i64 %20, %21
  %22 = inttoptr i64 %add24 to ptr
  store ptr %22, ptr %c4, align 8, !tbaa !9
  %23 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp25 = icmp ule i64 %23, 4
  %lnot27 = xor i1 %cmp25, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %if.then33, label %if.end34, !unpredictable !11

if.then33:                                        ; preds = %if.end23
  %24 = load ptr, ptr %c3, align 8, !tbaa !9
  store ptr %24, ptr %c4, align 8, !tbaa !9
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end23
  br label %do.body

do.body:                                          ; preds = %do.cond266, %if.end34
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc0x01234567) #6
  %25 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call = call <2 x i64> @_mm_load_si128(ptr noundef %25)
  %call35 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call)
  store <8 x float> %call35, ptr %vacc0x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc0x89ABCDEF) #6
  %26 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i16, ptr %26, i64 8
  %call36 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr)
  %call37 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call36)
  store <8 x float> %call37, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc1x01234567) #6
  %27 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %27, ptr %vacc1x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc1x89ABCDEF) #6
  %28 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %28, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc2x01234567) #6
  %29 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %29, ptr %vacc2x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc2x89ABCDEF) #6
  %30 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %30, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc3x01234567) #6
  %31 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %31, ptr %vacc3x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc3x89ABCDEF) #6
  %32 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %32, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc4x01234567) #6
  %33 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  store <8 x float> %33, ptr %vacc4x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc4x89ABCDEF) #6
  %34 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  store <8 x float> %34, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %35 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr38 = getelementptr inbounds i16, ptr %35, i64 16
  store ptr %add.ptr38, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %36 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %36, ptr %p, align 8, !tbaa !5
  br label %do.body39

do.body39:                                        ; preds = %do.cond145, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %37, i64 0
  %38 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %38, ptr %a0, align 8, !tbaa !9
  %39 = load ptr, ptr %a0, align 8, !tbaa !9
  %40 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp40 = icmp ne ptr %39, %40
  %lnot42 = xor i1 %cmp40, true
  %lnot44 = xor i1 %lnot42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %tobool47 = icmp ne i64 %conv46, 0
  br i1 %tobool47, label %if.then48, label %if.end50, !unpredictable !11

if.then48:                                        ; preds = %do.body39
  %41 = load ptr, ptr %a0, align 8, !tbaa !9
  %42 = ptrtoint ptr %41 to i64
  %43 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add49 = add i64 %42, %43
  %44 = inttoptr i64 %add49 to ptr
  store ptr %44, ptr %a0, align 8, !tbaa !9
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %do.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #6
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx51 = getelementptr inbounds ptr, ptr %45, i64 1
  %46 = load ptr, ptr %arrayidx51, align 8, !tbaa !9
  store ptr %46, ptr %a1, align 8, !tbaa !9
  %47 = load ptr, ptr %a1, align 8, !tbaa !9
  %48 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp52 = icmp ne ptr %47, %48
  %lnot54 = xor i1 %cmp52, true
  %lnot56 = xor i1 %lnot54, true
  %lnot.ext57 = zext i1 %lnot56 to i32
  %conv58 = sext i32 %lnot.ext57 to i64
  %tobool59 = icmp ne i64 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.end62, !unpredictable !11

if.then60:                                        ; preds = %if.end50
  %49 = load ptr, ptr %a1, align 8, !tbaa !9
  %50 = ptrtoint ptr %49 to i64
  %51 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add61 = add i64 %50, %51
  %52 = inttoptr i64 %add61 to ptr
  store ptr %52, ptr %a1, align 8, !tbaa !9
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #6
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx63 = getelementptr inbounds ptr, ptr %53, i64 2
  %54 = load ptr, ptr %arrayidx63, align 8, !tbaa !9
  store ptr %54, ptr %a2, align 8, !tbaa !9
  %55 = load ptr, ptr %a2, align 8, !tbaa !9
  %56 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp64 = icmp ne ptr %55, %56
  %lnot66 = xor i1 %cmp64, true
  %lnot68 = xor i1 %lnot66, true
  %lnot.ext69 = zext i1 %lnot68 to i32
  %conv70 = sext i32 %lnot.ext69 to i64
  %tobool71 = icmp ne i64 %conv70, 0
  br i1 %tobool71, label %if.then72, label %if.end74, !unpredictable !11

if.then72:                                        ; preds = %if.end62
  %57 = load ptr, ptr %a2, align 8, !tbaa !9
  %58 = ptrtoint ptr %57 to i64
  %59 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add73 = add i64 %58, %59
  %60 = inttoptr i64 %add73 to ptr
  store ptr %60, ptr %a2, align 8, !tbaa !9
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end62
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3) #6
  %61 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx75 = getelementptr inbounds ptr, ptr %61, i64 3
  %62 = load ptr, ptr %arrayidx75, align 8, !tbaa !9
  store ptr %62, ptr %a3, align 8, !tbaa !9
  %63 = load ptr, ptr %a3, align 8, !tbaa !9
  %64 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp76 = icmp ne ptr %63, %64
  %lnot78 = xor i1 %cmp76, true
  %lnot80 = xor i1 %lnot78, true
  %lnot.ext81 = zext i1 %lnot80 to i32
  %conv82 = sext i32 %lnot.ext81 to i64
  %tobool83 = icmp ne i64 %conv82, 0
  br i1 %tobool83, label %if.then84, label %if.end86, !unpredictable !11

if.then84:                                        ; preds = %if.end74
  %65 = load ptr, ptr %a3, align 8, !tbaa !9
  %66 = ptrtoint ptr %65 to i64
  %67 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add85 = add i64 %66, %67
  %68 = inttoptr i64 %add85 to ptr
  store ptr %68, ptr %a3, align 8, !tbaa !9
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end74
  call void @llvm.lifetime.start.p0(i64 8, ptr %a4) #6
  %69 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds ptr, ptr %69, i64 4
  %70 = load ptr, ptr %arrayidx87, align 8, !tbaa !9
  store ptr %70, ptr %a4, align 8, !tbaa !9
  %71 = load ptr, ptr %a4, align 8, !tbaa !9
  %72 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp88 = icmp ne ptr %71, %72
  %lnot90 = xor i1 %cmp88, true
  %lnot92 = xor i1 %lnot90, true
  %lnot.ext93 = zext i1 %lnot92 to i32
  %conv94 = sext i32 %lnot.ext93 to i64
  %tobool95 = icmp ne i64 %conv94, 0
  br i1 %tobool95, label %if.then96, label %if.end98, !unpredictable !11

if.then96:                                        ; preds = %if.end86
  %73 = load ptr, ptr %a4, align 8, !tbaa !9
  %74 = ptrtoint ptr %73 to i64
  %75 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add97 = add i64 %74, %75
  %76 = inttoptr i64 %add97 to ptr
  store ptr %76, ptr %a4, align 8, !tbaa !9
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end86
  %77 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr99 = getelementptr inbounds ptr, ptr %77, i64 5
  store ptr %add.ptr99, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %78 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %78, ptr %k, align 8, !tbaa !5
  br label %do.body100

do.body100:                                       ; preds = %do.cond, %if.end98
  call void @llvm.lifetime.start.p0(i64 32, ptr %vb01234567) #6
  %79 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call101 = call <2 x i64> @_mm_load_si128(ptr noundef %79)
  %call102 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call101)
  store <8 x float> %call102, ptr %vb01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vb89ABCDEF) #6
  %80 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr103 = getelementptr inbounds i16, ptr %80, i64 8
  %call104 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr103)
  %call105 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call104)
  store <8 x float> %call105, ptr %vb89ABCDEF, align 32, !tbaa !12
  %81 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr106 = getelementptr inbounds i16, ptr %81, i64 16
  store ptr %add.ptr106, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va0) #6
  %82 = load ptr, ptr %a0, align 8, !tbaa !9
  %83 = load i16, ptr %82, align 2, !tbaa !13
  %call107 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %83)
  %call108 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call107)
  store <8 x float> %call108, ptr %va0, align 32, !tbaa !12
  %84 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr109 = getelementptr inbounds i16, ptr %84, i64 1
  store ptr %add.ptr109, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va1) #6
  %85 = load ptr, ptr %a1, align 8, !tbaa !9
  %86 = load i16, ptr %85, align 2, !tbaa !13
  %call110 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %86)
  %call111 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call110)
  store <8 x float> %call111, ptr %va1, align 32, !tbaa !12
  %87 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr112 = getelementptr inbounds i16, ptr %87, i64 1
  store ptr %add.ptr112, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va2) #6
  %88 = load ptr, ptr %a2, align 8, !tbaa !9
  %89 = load i16, ptr %88, align 2, !tbaa !13
  %call113 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %89)
  %call114 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call113)
  store <8 x float> %call114, ptr %va2, align 32, !tbaa !12
  %90 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr115 = getelementptr inbounds i16, ptr %90, i64 1
  store ptr %add.ptr115, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va3) #6
  %91 = load ptr, ptr %a3, align 8, !tbaa !9
  %92 = load i16, ptr %91, align 2, !tbaa !13
  %call116 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %92)
  %call117 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call116)
  store <8 x float> %call117, ptr %va3, align 32, !tbaa !12
  %93 = load ptr, ptr %a3, align 8, !tbaa !9
  %add.ptr118 = getelementptr inbounds i16, ptr %93, i64 1
  store ptr %add.ptr118, ptr %a3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va4) #6
  %94 = load ptr, ptr %a4, align 8, !tbaa !9
  %95 = load i16, ptr %94, align 2, !tbaa !13
  %call119 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %95)
  %call120 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call119)
  store <8 x float> %call120, ptr %va4, align 32, !tbaa !12
  %96 = load ptr, ptr %a4, align 8, !tbaa !9
  %add.ptr121 = getelementptr inbounds i16, ptr %96, i64 1
  store ptr %add.ptr121, ptr %a4, align 8, !tbaa !9
  %97 = load <8 x float>, ptr %va0, align 32, !tbaa !12
  %98 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %99 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %call122 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %97, <8 x float> noundef %98, <8 x float> noundef %99)
  %100 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call122, i32 8)
  %101 = bitcast <8 x i16> %100 to <2 x i64>
  %call123 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %101)
  store <8 x float> %call123, ptr %vacc0x01234567, align 32, !tbaa !12
  %102 = load <8 x float>, ptr %va0, align 32, !tbaa !12
  %103 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %104 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %call124 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %102, <8 x float> noundef %103, <8 x float> noundef %104)
  %105 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call124, i32 8)
  %106 = bitcast <8 x i16> %105 to <2 x i64>
  %call125 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %106)
  store <8 x float> %call125, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %107 = load <8 x float>, ptr %va1, align 32, !tbaa !12
  %108 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %109 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %call126 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %107, <8 x float> noundef %108, <8 x float> noundef %109)
  %110 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call126, i32 8)
  %111 = bitcast <8 x i16> %110 to <2 x i64>
  %call127 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %111)
  store <8 x float> %call127, ptr %vacc1x01234567, align 32, !tbaa !12
  %112 = load <8 x float>, ptr %va1, align 32, !tbaa !12
  %113 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %114 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %call128 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %112, <8 x float> noundef %113, <8 x float> noundef %114)
  %115 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call128, i32 8)
  %116 = bitcast <8 x i16> %115 to <2 x i64>
  %call129 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %116)
  store <8 x float> %call129, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %117 = load <8 x float>, ptr %va2, align 32, !tbaa !12
  %118 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %119 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %call130 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %117, <8 x float> noundef %118, <8 x float> noundef %119)
  %120 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call130, i32 8)
  %121 = bitcast <8 x i16> %120 to <2 x i64>
  %call131 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %121)
  store <8 x float> %call131, ptr %vacc2x01234567, align 32, !tbaa !12
  %122 = load <8 x float>, ptr %va2, align 32, !tbaa !12
  %123 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %124 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %call132 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %122, <8 x float> noundef %123, <8 x float> noundef %124)
  %125 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call132, i32 8)
  %126 = bitcast <8 x i16> %125 to <2 x i64>
  %call133 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %126)
  store <8 x float> %call133, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %127 = load <8 x float>, ptr %va3, align 32, !tbaa !12
  %128 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %129 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %call134 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %127, <8 x float> noundef %128, <8 x float> noundef %129)
  %130 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call134, i32 8)
  %131 = bitcast <8 x i16> %130 to <2 x i64>
  %call135 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %131)
  store <8 x float> %call135, ptr %vacc3x01234567, align 32, !tbaa !12
  %132 = load <8 x float>, ptr %va3, align 32, !tbaa !12
  %133 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %134 = load <8 x float>, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %call136 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %132, <8 x float> noundef %133, <8 x float> noundef %134)
  %135 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call136, i32 8)
  %136 = bitcast <8 x i16> %135 to <2 x i64>
  %call137 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %136)
  store <8 x float> %call137, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %137 = load <8 x float>, ptr %va4, align 32, !tbaa !12
  %138 = load <8 x float>, ptr %vb01234567, align 32, !tbaa !12
  %139 = load <8 x float>, ptr %vacc4x01234567, align 32, !tbaa !12
  %call138 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %137, <8 x float> noundef %138, <8 x float> noundef %139)
  %140 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call138, i32 8)
  %141 = bitcast <8 x i16> %140 to <2 x i64>
  %call139 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %141)
  store <8 x float> %call139, ptr %vacc4x01234567, align 32, !tbaa !12
  %142 = load <8 x float>, ptr %va4, align 32, !tbaa !12
  %143 = load <8 x float>, ptr %vb89ABCDEF, align 32, !tbaa !12
  %144 = load <8 x float>, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %call140 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %142, <8 x float> noundef %143, <8 x float> noundef %144)
  %145 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call140, i32 8)
  %146 = bitcast <8 x i16> %145 to <2 x i64>
  %call141 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %146)
  store <8 x float> %call141, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %147 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %147, 2
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 32, ptr %va4) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va0) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vb89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vb01234567) #6
  br label %do.cond

do.cond:                                          ; preds = %do.body100
  %148 = load i64, ptr %k, align 8, !tbaa !5
  %cmp142 = icmp ne i64 %148, 0
  br i1 %cmp142, label %do.body100, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %149 = load i64, ptr %p, align 8, !tbaa !5
  %sub144 = sub i64 %149, 40
  store i64 %sub144, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond145

do.cond145:                                       ; preds = %do.end
  %150 = load i64, ptr %p, align 8, !tbaa !5
  %cmp146 = icmp ne i64 %150, 0
  br i1 %cmp146, label %do.body39, label %do.end148, !llvm.loop !17

do.end148:                                        ; preds = %do.cond145
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale) #6
  %151 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon, ptr %151, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %scale, i64 0, i64 0
  %call149 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call149, ptr %vscale, align 32, !tbaa !12
  %152 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %153 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call150 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %152, <8 x float> noundef %153)
  %154 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call150, i32 8)
  %155 = bitcast <8 x i16> %154 to <2 x i64>
  %call151 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %155)
  store <8 x float> %call151, ptr %vacc0x01234567, align 32, !tbaa !12
  %156 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %157 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call152 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %156, <8 x float> noundef %157)
  %158 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call152, i32 8)
  %159 = bitcast <8 x i16> %158 to <2 x i64>
  %call153 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %159)
  store <8 x float> %call153, ptr %vacc1x01234567, align 32, !tbaa !12
  %160 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %161 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call154 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %160, <8 x float> noundef %161)
  %162 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call154, i32 8)
  %163 = bitcast <8 x i16> %162 to <2 x i64>
  %call155 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %163)
  store <8 x float> %call155, ptr %vacc2x01234567, align 32, !tbaa !12
  %164 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %165 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call156 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %164, <8 x float> noundef %165)
  %166 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call156, i32 8)
  %167 = bitcast <8 x i16> %166 to <2 x i64>
  %call157 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %167)
  store <8 x float> %call157, ptr %vacc3x01234567, align 32, !tbaa !12
  %168 = load <8 x float>, ptr %vacc4x01234567, align 32, !tbaa !12
  %169 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call158 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %168, <8 x float> noundef %169)
  %170 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call158, i32 8)
  %171 = bitcast <8 x i16> %170 to <2 x i64>
  %call159 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %171)
  store <8 x float> %call159, ptr %vacc4x01234567, align 32, !tbaa !12
  %172 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %173 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call160 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %172, <8 x float> noundef %173)
  %174 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call160, i32 8)
  %175 = bitcast <8 x i16> %174 to <2 x i64>
  %call161 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %175)
  store <8 x float> %call161, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %176 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %177 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call162 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %176, <8 x float> noundef %177)
  %178 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call162, i32 8)
  %179 = bitcast <8 x i16> %178 to <2 x i64>
  %call163 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %179)
  store <8 x float> %call163, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %180 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %181 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call164 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %180, <8 x float> noundef %181)
  %182 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call164, i32 8)
  %183 = bitcast <8 x i16> %182 to <2 x i64>
  %call165 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %183)
  store <8 x float> %call165, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %184 = load <8 x float>, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %185 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call166 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %184, <8 x float> noundef %185)
  %186 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call166, i32 8)
  %187 = bitcast <8 x i16> %186 to <2 x i64>
  %call167 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %187)
  store <8 x float> %call167, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %188 = load <8 x float>, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %189 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call168 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %188, <8 x float> noundef %189)
  %190 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call168, i32 8)
  %191 = bitcast <8 x i16> %190 to <2 x i64>
  %call169 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %191)
  store <8 x float> %call169, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin) #6
  %192 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %192, i32 0, i32 1
  %arraydecay170 = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call171 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay170)
  store <8 x float> %call171, ptr %vmin, align 32, !tbaa !12
  %193 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %194 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call172 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %193, <8 x float> noundef %194)
  store <8 x float> %call172, ptr %vacc0x01234567, align 32, !tbaa !12
  %195 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %196 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call173 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %195, <8 x float> noundef %196)
  store <8 x float> %call173, ptr %vacc1x01234567, align 32, !tbaa !12
  %197 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %198 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call174 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %197, <8 x float> noundef %198)
  store <8 x float> %call174, ptr %vacc2x01234567, align 32, !tbaa !12
  %199 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %200 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call175 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %199, <8 x float> noundef %200)
  store <8 x float> %call175, ptr %vacc3x01234567, align 32, !tbaa !12
  %201 = load <8 x float>, ptr %vacc4x01234567, align 32, !tbaa !12
  %202 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call176 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %201, <8 x float> noundef %202)
  store <8 x float> %call176, ptr %vacc4x01234567, align 32, !tbaa !12
  %203 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %204 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call177 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %203, <8 x float> noundef %204)
  store <8 x float> %call177, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %205 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %206 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call178 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %205, <8 x float> noundef %206)
  store <8 x float> %call178, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %207 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %208 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call179 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %207, <8 x float> noundef %208)
  store <8 x float> %call179, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %209 = load <8 x float>, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %210 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call180 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %209, <8 x float> noundef %210)
  store <8 x float> %call180, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %211 = load <8 x float>, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %212 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call181 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %211, <8 x float> noundef %212)
  store <8 x float> %call181, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax) #6
  %213 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %213, i32 0, i32 2
  %arraydecay182 = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call183 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay182)
  store <8 x float> %call183, ptr %vmax, align 32, !tbaa !12
  %214 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %215 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call184 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %214, <8 x float> noundef %215)
  store <8 x float> %call184, ptr %vacc0x01234567, align 32, !tbaa !12
  %216 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %217 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call185 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %216, <8 x float> noundef %217)
  store <8 x float> %call185, ptr %vacc1x01234567, align 32, !tbaa !12
  %218 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %219 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call186 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %218, <8 x float> noundef %219)
  store <8 x float> %call186, ptr %vacc2x01234567, align 32, !tbaa !12
  %220 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %221 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call187 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %220, <8 x float> noundef %221)
  store <8 x float> %call187, ptr %vacc3x01234567, align 32, !tbaa !12
  %222 = load <8 x float>, ptr %vacc4x01234567, align 32, !tbaa !12
  %223 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call188 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %222, <8 x float> noundef %223)
  store <8 x float> %call188, ptr %vacc4x01234567, align 32, !tbaa !12
  %224 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %225 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call189 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %224, <8 x float> noundef %225)
  store <8 x float> %call189, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %226 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %227 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call190 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %226, <8 x float> noundef %227)
  store <8 x float> %call190, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %228 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %229 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call191 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %228, <8 x float> noundef %229)
  store <8 x float> %call191, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %230 = load <8 x float>, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %231 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call192 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %230, <8 x float> noundef %231)
  store <8 x float> %call192, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %232 = load <8 x float>, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %233 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call193 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %232, <8 x float> noundef %233)
  store <8 x float> %call193, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %234 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp194 = icmp uge i64 %234, 16
  %lnot196 = xor i1 %cmp194, true
  %lnot198 = xor i1 %lnot196, true
  %lnot.ext199 = zext i1 %lnot198 to i32
  %conv200 = sext i32 %lnot.ext199 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv200, i64 1)
  %tobool201 = icmp ne i64 %expval, 0
  br i1 %tobool201, label %if.then202, label %if.else

if.then202:                                       ; preds = %do.end148
  %235 = load ptr, ptr %c4, align 8, !tbaa !9
  %236 = load <8 x float>, ptr %vacc4x01234567, align 32, !tbaa !12
  %237 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %236, i32 8)
  %238 = bitcast <8 x i16> %237 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %235, <2 x i64> noundef %238)
  %239 = load ptr, ptr %c4, align 8, !tbaa !9
  %add.ptr203 = getelementptr inbounds i16, ptr %239, i64 8
  %240 = load <8 x float>, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %241 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %240, i32 8)
  %242 = bitcast <8 x i16> %241 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %add.ptr203, <2 x i64> noundef %242)
  %243 = load ptr, ptr %c4, align 8, !tbaa !9
  %244 = ptrtoint ptr %243 to i64
  %245 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add204 = add i64 %244, %245
  %246 = inttoptr i64 %add204 to ptr
  store ptr %246, ptr %c4, align 8, !tbaa !9
  %247 = load ptr, ptr %c3, align 8, !tbaa !9
  %248 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %249 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %248, i32 8)
  %250 = bitcast <8 x i16> %249 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %247, <2 x i64> noundef %250)
  %251 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr205 = getelementptr inbounds i16, ptr %251, i64 8
  %252 = load <8 x float>, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %253 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %252, i32 8)
  %254 = bitcast <8 x i16> %253 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %add.ptr205, <2 x i64> noundef %254)
  %255 = load ptr, ptr %c3, align 8, !tbaa !9
  %256 = ptrtoint ptr %255 to i64
  %257 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add206 = add i64 %256, %257
  %258 = inttoptr i64 %add206 to ptr
  store ptr %258, ptr %c3, align 8, !tbaa !9
  %259 = load ptr, ptr %c2, align 8, !tbaa !9
  %260 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %261 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %260, i32 8)
  %262 = bitcast <8 x i16> %261 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %259, <2 x i64> noundef %262)
  %263 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr207 = getelementptr inbounds i16, ptr %263, i64 8
  %264 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %265 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %264, i32 8)
  %266 = bitcast <8 x i16> %265 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %add.ptr207, <2 x i64> noundef %266)
  %267 = load ptr, ptr %c2, align 8, !tbaa !9
  %268 = ptrtoint ptr %267 to i64
  %269 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add208 = add i64 %268, %269
  %270 = inttoptr i64 %add208 to ptr
  store ptr %270, ptr %c2, align 8, !tbaa !9
  %271 = load ptr, ptr %c1, align 8, !tbaa !9
  %272 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %273 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %272, i32 8)
  %274 = bitcast <8 x i16> %273 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %271, <2 x i64> noundef %274)
  %275 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr209 = getelementptr inbounds i16, ptr %275, i64 8
  %276 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %277 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %276, i32 8)
  %278 = bitcast <8 x i16> %277 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %add.ptr209, <2 x i64> noundef %278)
  %279 = load ptr, ptr %c1, align 8, !tbaa !9
  %280 = ptrtoint ptr %279 to i64
  %281 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add210 = add i64 %280, %281
  %282 = inttoptr i64 %add210 to ptr
  store ptr %282, ptr %c1, align 8, !tbaa !9
  %283 = load ptr, ptr %c0, align 8, !tbaa !9
  %284 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %285 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %284, i32 8)
  %286 = bitcast <8 x i16> %285 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %283, <2 x i64> noundef %286)
  %287 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr211 = getelementptr inbounds i16, ptr %287, i64 8
  %288 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %289 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %288, i32 8)
  %290 = bitcast <8 x i16> %289 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %add.ptr211, <2 x i64> noundef %290)
  %291 = load ptr, ptr %c0, align 8, !tbaa !9
  %292 = ptrtoint ptr %291 to i64
  %293 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add212 = add i64 %292, %293
  %294 = inttoptr i64 %add212 to ptr
  store ptr %294, ptr %c0, align 8, !tbaa !9
  %295 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %296 = ptrtoint ptr %295 to i64
  %297 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub213 = sub i64 %296, %297
  %298 = inttoptr i64 %sub213 to ptr
  store ptr %298, ptr %a.addr, align 8, !tbaa !9
  %299 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub214 = sub i64 %299, 16
  store i64 %sub214, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end265

if.else:                                          ; preds = %do.end148
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh4x01234567) #6
  %300 = load <8 x float>, ptr %vacc4x01234567, align 32, !tbaa !12
  %301 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %300, i32 8)
  %302 = bitcast <8 x i16> %301 to <2 x i64>
  store <2 x i64> %302, ptr %vh4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh3x01234567) #6
  %303 = load <8 x float>, ptr %vacc3x01234567, align 32, !tbaa !12
  %304 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %303, i32 8)
  %305 = bitcast <8 x i16> %304 to <2 x i64>
  store <2 x i64> %305, ptr %vh3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh2x01234567) #6
  %306 = load <8 x float>, ptr %vacc2x01234567, align 32, !tbaa !12
  %307 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %306, i32 8)
  %308 = bitcast <8 x i16> %307 to <2 x i64>
  store <2 x i64> %308, ptr %vh2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh1x01234567) #6
  %309 = load <8 x float>, ptr %vacc1x01234567, align 32, !tbaa !12
  %310 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %309, i32 8)
  %311 = bitcast <8 x i16> %310 to <2 x i64>
  store <2 x i64> %311, ptr %vh1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh0x01234567) #6
  %312 = load <8 x float>, ptr %vacc0x01234567, align 32, !tbaa !12
  %313 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %312, i32 8)
  %314 = bitcast <8 x i16> %313 to <2 x i64>
  store <2 x i64> %314, ptr %vh0x01234567, align 16, !tbaa !12
  %315 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %315, 8
  %tobool215 = icmp ne i64 %and, 0
  br i1 %tobool215, label %if.then216, label %if.end222

if.then216:                                       ; preds = %if.else
  %316 = load ptr, ptr %c4, align 8, !tbaa !9
  %317 = load <2 x i64>, ptr %vh4x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %316, <2 x i64> noundef %317)
  %318 = load ptr, ptr %c3, align 8, !tbaa !9
  %319 = load <2 x i64>, ptr %vh3x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %318, <2 x i64> noundef %319)
  %320 = load ptr, ptr %c2, align 8, !tbaa !9
  %321 = load <2 x i64>, ptr %vh2x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %320, <2 x i64> noundef %321)
  %322 = load ptr, ptr %c1, align 8, !tbaa !9
  %323 = load <2 x i64>, ptr %vh1x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %322, <2 x i64> noundef %323)
  %324 = load ptr, ptr %c0, align 8, !tbaa !9
  %325 = load <2 x i64>, ptr %vh0x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %324, <2 x i64> noundef %325)
  %326 = load <8 x float>, ptr %vacc4x89ABCDEF, align 32, !tbaa !12
  %327 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %326, i32 8)
  %328 = bitcast <8 x i16> %327 to <2 x i64>
  store <2 x i64> %328, ptr %vh4x01234567, align 16, !tbaa !12
  %329 = load <8 x float>, ptr %vacc3x89ABCDEF, align 32, !tbaa !12
  %330 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %329, i32 8)
  %331 = bitcast <8 x i16> %330 to <2 x i64>
  store <2 x i64> %331, ptr %vh3x01234567, align 16, !tbaa !12
  %332 = load <8 x float>, ptr %vacc2x89ABCDEF, align 32, !tbaa !12
  %333 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %332, i32 8)
  %334 = bitcast <8 x i16> %333 to <2 x i64>
  store <2 x i64> %334, ptr %vh2x01234567, align 16, !tbaa !12
  %335 = load <8 x float>, ptr %vacc1x89ABCDEF, align 32, !tbaa !12
  %336 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %335, i32 8)
  %337 = bitcast <8 x i16> %336 to <2 x i64>
  store <2 x i64> %337, ptr %vh1x01234567, align 16, !tbaa !12
  %338 = load <8 x float>, ptr %vacc0x89ABCDEF, align 32, !tbaa !12
  %339 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %338, i32 8)
  %340 = bitcast <8 x i16> %339 to <2 x i64>
  store <2 x i64> %340, ptr %vh0x01234567, align 16, !tbaa !12
  %341 = load ptr, ptr %c4, align 8, !tbaa !9
  %add.ptr217 = getelementptr inbounds i16, ptr %341, i64 8
  store ptr %add.ptr217, ptr %c4, align 8, !tbaa !9
  %342 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr218 = getelementptr inbounds i16, ptr %342, i64 8
  store ptr %add.ptr218, ptr %c3, align 8, !tbaa !9
  %343 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr219 = getelementptr inbounds i16, ptr %343, i64 8
  store ptr %add.ptr219, ptr %c2, align 8, !tbaa !9
  %344 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr220 = getelementptr inbounds i16, ptr %344, i64 8
  store ptr %add.ptr220, ptr %c1, align 8, !tbaa !9
  %345 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr221 = getelementptr inbounds i16, ptr %345, i64 8
  store ptr %add.ptr221, ptr %c0, align 8, !tbaa !9
  br label %if.end222

if.end222:                                        ; preds = %if.then216, %if.else
  %346 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and223 = and i64 %346, 4
  %tobool224 = icmp ne i64 %and223, 0
  br i1 %tobool224, label %if.then225, label %if.end236

if.then225:                                       ; preds = %if.end222
  %347 = load ptr, ptr %c4, align 8, !tbaa !9
  %348 = load <2 x i64>, ptr %vh4x01234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %347, <2 x i64> noundef %348)
  %349 = load ptr, ptr %c3, align 8, !tbaa !9
  %350 = load <2 x i64>, ptr %vh3x01234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %349, <2 x i64> noundef %350)
  %351 = load ptr, ptr %c2, align 8, !tbaa !9
  %352 = load <2 x i64>, ptr %vh2x01234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %351, <2 x i64> noundef %352)
  %353 = load ptr, ptr %c1, align 8, !tbaa !9
  %354 = load <2 x i64>, ptr %vh1x01234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %353, <2 x i64> noundef %354)
  %355 = load ptr, ptr %c0, align 8, !tbaa !9
  %356 = load <2 x i64>, ptr %vh0x01234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %355, <2 x i64> noundef %356)
  %357 = load <2 x i64>, ptr %vh4x01234567, align 16, !tbaa !12
  %358 = load <2 x i64>, ptr %vh4x01234567, align 16, !tbaa !12
  %call226 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %357, <2 x i64> noundef %358)
  store <2 x i64> %call226, ptr %vh4x01234567, align 16, !tbaa !12
  %359 = load <2 x i64>, ptr %vh3x01234567, align 16, !tbaa !12
  %360 = load <2 x i64>, ptr %vh3x01234567, align 16, !tbaa !12
  %call227 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %359, <2 x i64> noundef %360)
  store <2 x i64> %call227, ptr %vh3x01234567, align 16, !tbaa !12
  %361 = load <2 x i64>, ptr %vh2x01234567, align 16, !tbaa !12
  %362 = load <2 x i64>, ptr %vh2x01234567, align 16, !tbaa !12
  %call228 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %361, <2 x i64> noundef %362)
  store <2 x i64> %call228, ptr %vh2x01234567, align 16, !tbaa !12
  %363 = load <2 x i64>, ptr %vh1x01234567, align 16, !tbaa !12
  %364 = load <2 x i64>, ptr %vh1x01234567, align 16, !tbaa !12
  %call229 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %363, <2 x i64> noundef %364)
  store <2 x i64> %call229, ptr %vh1x01234567, align 16, !tbaa !12
  %365 = load <2 x i64>, ptr %vh0x01234567, align 16, !tbaa !12
  %366 = load <2 x i64>, ptr %vh0x01234567, align 16, !tbaa !12
  %call230 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %365, <2 x i64> noundef %366)
  store <2 x i64> %call230, ptr %vh0x01234567, align 16, !tbaa !12
  %367 = load ptr, ptr %c4, align 8, !tbaa !9
  %add.ptr231 = getelementptr inbounds i16, ptr %367, i64 4
  store ptr %add.ptr231, ptr %c4, align 8, !tbaa !9
  %368 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr232 = getelementptr inbounds i16, ptr %368, i64 4
  store ptr %add.ptr232, ptr %c3, align 8, !tbaa !9
  %369 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr233 = getelementptr inbounds i16, ptr %369, i64 4
  store ptr %add.ptr233, ptr %c2, align 8, !tbaa !9
  %370 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr234 = getelementptr inbounds i16, ptr %370, i64 4
  store ptr %add.ptr234, ptr %c1, align 8, !tbaa !9
  %371 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr235 = getelementptr inbounds i16, ptr %371, i64 4
  store ptr %add.ptr235, ptr %c0, align 8, !tbaa !9
  br label %if.end236

if.end236:                                        ; preds = %if.then225, %if.end222
  %372 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and237 = and i64 %372, 2
  %tobool238 = icmp ne i64 %and237, 0
  br i1 %tobool238, label %if.then239, label %if.end250

if.then239:                                       ; preds = %if.end236
  %373 = load ptr, ptr %c4, align 8, !tbaa !9
  %374 = load <2 x i64>, ptr %vh4x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si32(ptr noundef %373, <2 x i64> noundef %374)
  %375 = load ptr, ptr %c3, align 8, !tbaa !9
  %376 = load <2 x i64>, ptr %vh3x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si32(ptr noundef %375, <2 x i64> noundef %376)
  %377 = load ptr, ptr %c2, align 8, !tbaa !9
  %378 = load <2 x i64>, ptr %vh2x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si32(ptr noundef %377, <2 x i64> noundef %378)
  %379 = load ptr, ptr %c1, align 8, !tbaa !9
  %380 = load <2 x i64>, ptr %vh1x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si32(ptr noundef %379, <2 x i64> noundef %380)
  %381 = load ptr, ptr %c0, align 8, !tbaa !9
  %382 = load <2 x i64>, ptr %vh0x01234567, align 16, !tbaa !12
  call void @_mm_storeu_si32(ptr noundef %381, <2 x i64> noundef %382)
  %383 = load <2 x i64>, ptr %vh4x01234567, align 16, !tbaa !12
  %call240 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %383, i32 noundef 32)
  store <2 x i64> %call240, ptr %vh4x01234567, align 16, !tbaa !12
  %384 = load <2 x i64>, ptr %vh3x01234567, align 16, !tbaa !12
  %call241 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %384, i32 noundef 32)
  store <2 x i64> %call241, ptr %vh3x01234567, align 16, !tbaa !12
  %385 = load <2 x i64>, ptr %vh2x01234567, align 16, !tbaa !12
  %call242 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %385, i32 noundef 32)
  store <2 x i64> %call242, ptr %vh2x01234567, align 16, !tbaa !12
  %386 = load <2 x i64>, ptr %vh1x01234567, align 16, !tbaa !12
  %call243 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %386, i32 noundef 32)
  store <2 x i64> %call243, ptr %vh1x01234567, align 16, !tbaa !12
  %387 = load <2 x i64>, ptr %vh0x01234567, align 16, !tbaa !12
  %call244 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %387, i32 noundef 32)
  store <2 x i64> %call244, ptr %vh0x01234567, align 16, !tbaa !12
  %388 = load ptr, ptr %c4, align 8, !tbaa !9
  %add.ptr245 = getelementptr inbounds i16, ptr %388, i64 2
  store ptr %add.ptr245, ptr %c4, align 8, !tbaa !9
  %389 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr246 = getelementptr inbounds i16, ptr %389, i64 2
  store ptr %add.ptr246, ptr %c3, align 8, !tbaa !9
  %390 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr247 = getelementptr inbounds i16, ptr %390, i64 2
  store ptr %add.ptr247, ptr %c2, align 8, !tbaa !9
  %391 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr248 = getelementptr inbounds i16, ptr %391, i64 2
  store ptr %add.ptr248, ptr %c1, align 8, !tbaa !9
  %392 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr249 = getelementptr inbounds i16, ptr %392, i64 2
  store ptr %add.ptr249, ptr %c0, align 8, !tbaa !9
  br label %if.end250

if.end250:                                        ; preds = %if.then239, %if.end236
  %393 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and251 = and i64 %393, 1
  %tobool252 = icmp ne i64 %and251, 0
  br i1 %tobool252, label %if.then253, label %if.end264

if.then253:                                       ; preds = %if.end250
  %394 = load <2 x i64>, ptr %vh4x01234567, align 16, !tbaa !12
  %395 = bitcast <2 x i64> %394 to <8 x i16>
  %396 = extractelement <8 x i16> %395, i64 0
  %conv254 = zext i16 %396 to i32
  %conv255 = trunc i32 %conv254 to i16
  %397 = load ptr, ptr %c4, align 8, !tbaa !9
  store i16 %conv255, ptr %397, align 2, !tbaa !13
  %398 = load <2 x i64>, ptr %vh3x01234567, align 16, !tbaa !12
  %399 = bitcast <2 x i64> %398 to <8 x i16>
  %400 = extractelement <8 x i16> %399, i64 0
  %conv256 = zext i16 %400 to i32
  %conv257 = trunc i32 %conv256 to i16
  %401 = load ptr, ptr %c3, align 8, !tbaa !9
  store i16 %conv257, ptr %401, align 2, !tbaa !13
  %402 = load <2 x i64>, ptr %vh2x01234567, align 16, !tbaa !12
  %403 = bitcast <2 x i64> %402 to <8 x i16>
  %404 = extractelement <8 x i16> %403, i64 0
  %conv258 = zext i16 %404 to i32
  %conv259 = trunc i32 %conv258 to i16
  %405 = load ptr, ptr %c2, align 8, !tbaa !9
  store i16 %conv259, ptr %405, align 2, !tbaa !13
  %406 = load <2 x i64>, ptr %vh1x01234567, align 16, !tbaa !12
  %407 = bitcast <2 x i64> %406 to <8 x i16>
  %408 = extractelement <8 x i16> %407, i64 0
  %conv260 = zext i16 %408 to i32
  %conv261 = trunc i32 %conv260 to i16
  %409 = load ptr, ptr %c1, align 8, !tbaa !9
  store i16 %conv261, ptr %409, align 2, !tbaa !13
  %410 = load <2 x i64>, ptr %vh0x01234567, align 16, !tbaa !12
  %411 = bitcast <2 x i64> %410 to <8 x i16>
  %412 = extractelement <8 x i16> %411, i64 0
  %conv262 = zext i16 %412 to i32
  %conv263 = trunc i32 %conv262 to i16
  %413 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv263, ptr %413, align 2, !tbaa !13
  br label %if.end264

if.end264:                                        ; preds = %if.then253, %if.end250
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh0x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh4x01234567) #6
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.then202
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmin) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc4x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc4x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc3x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc2x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc1x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc0x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc0x01234567) #6
  br label %do.cond266

do.cond266:                                       ; preds = %if.end265
  %414 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp267 = icmp ne i64 %414, 0
  br i1 %cmp267, label %do.body, label %do.end269, !llvm.loop !18

do.end269:                                        ; preds = %do.cond266
  call void @llvm.lifetime.end.p0(i64 8, ptr %c4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = bitcast <8 x i16> %1 to <8 x half>
  %cvtph2ps = fpext <8 x half> %2 to <8 x float>
  ret <8 x float> %cvtph2ps
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
define internal <2 x i64> @_mm_set1_epi16(i16 noundef signext %__w) #3 {
entry:
  %__w.addr = alloca i16, align 2
  store i16 %__w, ptr %__w.addr, align 2, !tbaa !13
  %0 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %1 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %2 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %3 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %4 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %5 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %6 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %7 = load i16, ptr %__w.addr, align 2, !tbaa !13
  %call = call <2 x i64> @_mm_set_epi16(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7)
  ret <2 x i64> %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #4

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
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !12
  ret <8 x float> %1
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
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si32(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %vecext = extractelement <4 x i32> %1, i32 0
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si32, ptr %2, i32 0, i32 0
  store i32 %vecext, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !19
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !19
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi16(i16 noundef signext %__w7, i16 noundef signext %__w6, i16 noundef signext %__w5, i16 noundef signext %__w4, i16 noundef signext %__w3, i16 noundef signext %__w2, i16 noundef signext %__w1, i16 noundef signext %__w0) #3 {
entry:
  %__w7.addr = alloca i16, align 2
  %__w6.addr = alloca i16, align 2
  %__w5.addr = alloca i16, align 2
  %__w4.addr = alloca i16, align 2
  %__w3.addr = alloca i16, align 2
  %__w2.addr = alloca i16, align 2
  %__w1.addr = alloca i16, align 2
  %__w0.addr = alloca i16, align 2
  %.compoundliteral = alloca <8 x i16>, align 16
  store i16 %__w7, ptr %__w7.addr, align 2, !tbaa !13
  store i16 %__w6, ptr %__w6.addr, align 2, !tbaa !13
  store i16 %__w5, ptr %__w5.addr, align 2, !tbaa !13
  store i16 %__w4, ptr %__w4.addr, align 2, !tbaa !13
  store i16 %__w3, ptr %__w3.addr, align 2, !tbaa !13
  store i16 %__w2, ptr %__w2.addr, align 2, !tbaa !13
  store i16 %__w1, ptr %__w1.addr, align 2, !tbaa !13
  store i16 %__w0, ptr %__w0.addr, align 2, !tbaa !13
  %0 = load i16, ptr %__w0.addr, align 2, !tbaa !13
  %vecinit = insertelement <8 x i16> undef, i16 %0, i32 0
  %1 = load i16, ptr %__w1.addr, align 2, !tbaa !13
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, ptr %__w2.addr, align 2, !tbaa !13
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, ptr %__w3.addr, align 2, !tbaa !13
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, ptr %__w4.addr, align 2, !tbaa !13
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, ptr %__w5.addr, align 2, !tbaa !13
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, ptr %__w6.addr, align 2, !tbaa !13
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, ptr %__w7.addr, align 2, !tbaa !13
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %7, i32 7
  store <8 x i16> %vecinit7, ptr %.compoundliteral, align 16, !tbaa !12
  %8 = load <8 x i16>, ptr %.compoundliteral, align 16, !tbaa !12
  %9 = bitcast <8 x i16> %8 to <2 x i64>
  ret <2 x i64> %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !7, i64 0}

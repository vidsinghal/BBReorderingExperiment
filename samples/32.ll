; ModuleID = 'samples/32.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-gavgpool/gen/7p7x-minmax-fp32-sse41-c8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [4 x i32], [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8(i64 noundef %rows, i64 noundef %channels, ptr noundef %input, i64 noundef %input_stride, ptr noundef %zero, ptr noundef %buffer, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(80) %params) #0 {
entry:
  %rows.addr = alloca i64, align 8
  %channels.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %input_increment = alloca i64, align 8
  %vinit_bias = alloca <2 x i64>, align 16
  %b = alloca ptr, align 8
  %c = alloca i64, align 8
  %vxi0x01234567 = alloca <2 x i64>, align 16
  %vxi1x01234567 = alloca <2 x i64>, align 16
  %vacc01234567 = alloca <2 x i64>, align 16
  %vxi2x01234567 = alloca <2 x i64>, align 16
  %vxi3x01234567 = alloca <2 x i64>, align 16
  %vxi4x01234567 = alloca <2 x i64>, align 16
  %vxi5x01234567 = alloca <2 x i64>, align 16
  %vxi6x01234567 = alloca <2 x i64>, align 16
  %vacc0123 = alloca <2 x i64>, align 16
  %vacc4567 = alloca <2 x i64>, align 16
  %b53 = alloca ptr, align 8
  %c54 = alloca i64, align 8
  %vxi0x0123456758 = alloca <2 x i64>, align 16
  %vxi1x0123456762 = alloca <2 x i64>, align 16
  %vacc0123456766 = alloca <2 x i64>, align 16
  %vxi2x0123456768 = alloca <2 x i64>, align 16
  %vxi3x0123456773 = alloca <2 x i64>, align 16
  %vxi4x0123456778 = alloca <2 x i64>, align 16
  %vxi5x0123456783 = alloca <2 x i64>, align 16
  %vxi6x0123456788 = alloca <2 x i64>, align 16
  %vacc012393 = alloca <2 x i64>, align 16
  %vacc456795 = alloca <2 x i64>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vxi0x01234567182 = alloca <2 x i64>, align 16
  %vxi1x01234567186 = alloca <2 x i64>, align 16
  %vacc01234567190 = alloca <2 x i64>, align 16
  %vxi2x01234567192 = alloca <2 x i64>, align 16
  %vxi3x01234567197 = alloca <2 x i64>, align 16
  %vxi4x01234567202 = alloca <2 x i64>, align 16
  %vxi5x01234567207 = alloca <2 x i64>, align 16
  %vxi6x01234567212 = alloca <2 x i64>, align 16
  %vacc0123217 = alloca <2 x i64>, align 16
  %vacc4567219 = alloca <2 x i64>, align 16
  %vfpacc0123 = alloca <4 x float>, align 16
  %vfpacc4567 = alloca <4 x float>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %vxi0x01234567253 = alloca <2 x i64>, align 16
  %vxi1x01234567257 = alloca <2 x i64>, align 16
  %vacc01234567261 = alloca <2 x i64>, align 16
  %vxi2x01234567263 = alloca <2 x i64>, align 16
  %vxi3x01234567268 = alloca <2 x i64>, align 16
  %vxi4x01234567273 = alloca <2 x i64>, align 16
  %vxi5x01234567278 = alloca <2 x i64>, align 16
  %vxi6x01234567283 = alloca <2 x i64>, align 16
  %vacc0123288 = alloca <2 x i64>, align 16
  %vacc4567290 = alloca <2 x i64>, align 16
  %vfpacc0123299 = alloca <4 x float>, align 16
  %vfpacc4567301 = alloca <4 x float>, align 16
  %vout01234567309 = alloca <2 x i64>, align 16
  %vout0123456701234567312 = alloca <2 x i64>, align 16
  store i64 %rows, ptr %rows.addr, align 8, !tbaa !4
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !8
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !4
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #6
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !8
  store ptr %0, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #6
  %1 = load ptr, ptr %i0, align 8, !tbaa !8
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #6
  %5 = load ptr, ptr %i1, align 8, !tbaa !8
  %6 = ptrtoint ptr %5 to i64
  %7 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add1 = add i64 %6, %7
  %8 = inttoptr i64 %add1 to ptr
  store ptr %8, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #6
  %9 = load ptr, ptr %i2, align 8, !tbaa !8
  %10 = ptrtoint ptr %9 to i64
  %11 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add2 = add i64 %10, %11
  %12 = inttoptr i64 %add2 to ptr
  store ptr %12, ptr %i3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #6
  %13 = load ptr, ptr %i3, align 8, !tbaa !8
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add3 = add i64 %14, %15
  %16 = inttoptr i64 %add3 to ptr
  store ptr %16, ptr %i4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #6
  %17 = load ptr, ptr %i4, align 8, !tbaa !8
  %18 = ptrtoint ptr %17 to i64
  %19 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add4 = add i64 %18, %19
  %20 = inttoptr i64 %add4 to ptr
  store ptr %20, ptr %i5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #6
  %21 = load ptr, ptr %i5, align 8, !tbaa !8
  %22 = ptrtoint ptr %21 to i64
  %23 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add5 = add i64 %22, %23
  %24 = inttoptr i64 %add5 to ptr
  store ptr %24, ptr %i6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_increment) #6
  %25 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %mul = mul i64 7, %25
  %26 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %call = call i64 @round_up_po2(i64 noundef %26, i64 noundef 8)
  %mul6 = mul i64 %call, 1
  %sub = sub i64 %mul, %mul6
  store i64 %sub, ptr %input_increment, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %vinit_bias) #6
  %27 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %init_bias = getelementptr inbounds %struct.anon.3, ptr %27, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %init_bias, i64 0, i64 0
  %call7 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay)
  store <2 x i64> %call7, ptr %vinit_bias, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %28 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  store ptr %28, ptr %b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  %29 = load i64, ptr %channels.addr, align 8, !tbaa !4
  store i64 %29, ptr %c, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %30 = load i64, ptr %c, align 8, !tbaa !4
  %cmp = icmp ne i64 %30, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567) #6
  %31 = load ptr, ptr %i0, align 8, !tbaa !8
  %call8 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %31)
  %call9 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call8)
  store <2 x i64> %call9, ptr %vxi0x01234567, align 16, !tbaa !10
  %32 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567) #6
  %33 = load ptr, ptr %i1, align 8, !tbaa !8
  %call10 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %33)
  %call11 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call10)
  store <2 x i64> %call11, ptr %vxi1x01234567, align 16, !tbaa !10
  %34 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr12 = getelementptr inbounds i8, ptr %34, i64 8
  store ptr %add.ptr12, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567) #6
  %35 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !10
  %36 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !10
  %call13 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %35, <2 x i64> noundef %36)
  store <2 x i64> %call13, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567) #6
  %37 = load ptr, ptr %i2, align 8, !tbaa !8
  %call14 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %37)
  %call15 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call14)
  store <2 x i64> %call15, ptr %vxi2x01234567, align 16, !tbaa !10
  %38 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr16 = getelementptr inbounds i8, ptr %38, i64 8
  store ptr %add.ptr16, ptr %i2, align 8, !tbaa !8
  %39 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %40 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !10
  %call17 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %39, <2 x i64> noundef %40)
  store <2 x i64> %call17, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567) #6
  %41 = load ptr, ptr %i3, align 8, !tbaa !8
  %call18 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %41)
  %call19 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call18)
  store <2 x i64> %call19, ptr %vxi3x01234567, align 16, !tbaa !10
  %42 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr20 = getelementptr inbounds i8, ptr %42, i64 8
  store ptr %add.ptr20, ptr %i3, align 8, !tbaa !8
  %43 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %44 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !10
  %call21 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %43, <2 x i64> noundef %44)
  store <2 x i64> %call21, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567) #6
  %45 = load ptr, ptr %i4, align 8, !tbaa !8
  %call22 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %45)
  %call23 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call22)
  store <2 x i64> %call23, ptr %vxi4x01234567, align 16, !tbaa !10
  %46 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr24 = getelementptr inbounds i8, ptr %46, i64 8
  store ptr %add.ptr24, ptr %i4, align 8, !tbaa !8
  %47 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %48 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !10
  %call25 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %47, <2 x i64> noundef %48)
  store <2 x i64> %call25, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567) #6
  %49 = load ptr, ptr %i5, align 8, !tbaa !8
  %call26 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %49)
  %call27 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call26)
  store <2 x i64> %call27, ptr %vxi5x01234567, align 16, !tbaa !10
  %50 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr28 = getelementptr inbounds i8, ptr %50, i64 8
  store ptr %add.ptr28, ptr %i5, align 8, !tbaa !8
  %51 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %52 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !10
  %call29 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %51, <2 x i64> noundef %52)
  store <2 x i64> %call29, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567) #6
  %53 = load ptr, ptr %i6, align 8, !tbaa !8
  %call30 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %53)
  %call31 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call30)
  store <2 x i64> %call31, ptr %vxi6x01234567, align 16, !tbaa !10
  %54 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr32 = getelementptr inbounds i8, ptr %54, i64 8
  store ptr %add.ptr32, ptr %i6, align 8, !tbaa !8
  %55 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %56 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !10
  %call33 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %55, <2 x i64> noundef %56)
  store <2 x i64> %call33, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #6
  %57 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %call34 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %57)
  store <2 x i64> %call34, ptr %vacc0123, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #6
  %58 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %59 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %call35 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %58, <2 x i64> noundef %59)
  %call36 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call35, i32 noundef 16)
  store <2 x i64> %call36, ptr %vacc4567, align 16, !tbaa !10
  %60 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !10
  %61 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !10
  %call37 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %60, <2 x i64> noundef %61)
  store <2 x i64> %call37, ptr %vacc0123, align 16, !tbaa !10
  %62 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !10
  %63 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !10
  %call38 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %62, <2 x i64> noundef %63)
  store <2 x i64> %call38, ptr %vacc4567, align 16, !tbaa !10
  %64 = load ptr, ptr %b, align 8, !tbaa !8
  %65 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %64, <2 x i64> noundef %65)
  %66 = load ptr, ptr %b, align 8, !tbaa !8
  %add.ptr39 = getelementptr inbounds i32, ptr %66, i64 4
  %67 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %add.ptr39, <2 x i64> noundef %67)
  %68 = load ptr, ptr %b, align 8, !tbaa !8
  %add.ptr40 = getelementptr inbounds i32, ptr %68, i64 8
  store ptr %add.ptr40, ptr %b, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i64, ptr %c, align 8, !tbaa !4
  %call41 = call i64 @doz(i64 noundef %69, i64 noundef 8)
  store i64 %call41, ptr %c, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %sub42 = sub i64 %70, 7
  store i64 %sub42, ptr %rows.addr, align 8, !tbaa !4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc108, %for.end
  %71 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp44 = icmp ugt i64 %71, 7
  br i1 %cmp44, label %for.body45, label %for.end110

for.body45:                                       ; preds = %for.cond43
  %72 = load ptr, ptr %i0, align 8, !tbaa !8
  %73 = ptrtoint ptr %72 to i64
  %74 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add46 = add i64 %73, %74
  %75 = inttoptr i64 %add46 to ptr
  store ptr %75, ptr %i0, align 8, !tbaa !8
  %76 = load ptr, ptr %i1, align 8, !tbaa !8
  %77 = ptrtoint ptr %76 to i64
  %78 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add47 = add i64 %77, %78
  %79 = inttoptr i64 %add47 to ptr
  store ptr %79, ptr %i1, align 8, !tbaa !8
  %80 = load ptr, ptr %i2, align 8, !tbaa !8
  %81 = ptrtoint ptr %80 to i64
  %82 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add48 = add i64 %81, %82
  %83 = inttoptr i64 %add48 to ptr
  store ptr %83, ptr %i2, align 8, !tbaa !8
  %84 = load ptr, ptr %i3, align 8, !tbaa !8
  %85 = ptrtoint ptr %84 to i64
  %86 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add49 = add i64 %85, %86
  %87 = inttoptr i64 %add49 to ptr
  store ptr %87, ptr %i3, align 8, !tbaa !8
  %88 = load ptr, ptr %i4, align 8, !tbaa !8
  %89 = ptrtoint ptr %88 to i64
  %90 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add50 = add i64 %89, %90
  %91 = inttoptr i64 %add50 to ptr
  store ptr %91, ptr %i4, align 8, !tbaa !8
  %92 = load ptr, ptr %i5, align 8, !tbaa !8
  %93 = ptrtoint ptr %92 to i64
  %94 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add51 = add i64 %93, %94
  %95 = inttoptr i64 %add51 to ptr
  store ptr %95, ptr %i5, align 8, !tbaa !8
  %96 = load ptr, ptr %i6, align 8, !tbaa !8
  %97 = ptrtoint ptr %96 to i64
  %98 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add52 = add i64 %97, %98
  %99 = inttoptr i64 %add52 to ptr
  store ptr %99, ptr %i6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b53) #6
  %100 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  store ptr %100, ptr %b53, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c54) #6
  %101 = load i64, ptr %channels.addr, align 8, !tbaa !4
  store i64 %101, ptr %c54, align 8, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc105, %for.body45
  %102 = load i64, ptr %c54, align 8, !tbaa !4
  %cmp56 = icmp ne i64 %102, 0
  br i1 %cmp56, label %for.body57, label %for.end107

for.body57:                                       ; preds = %for.cond55
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x0123456758) #6
  %103 = load ptr, ptr %i0, align 8, !tbaa !8
  %call59 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %103)
  %call60 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call59)
  store <2 x i64> %call60, ptr %vxi0x0123456758, align 16, !tbaa !10
  %104 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr61 = getelementptr inbounds i8, ptr %104, i64 8
  store ptr %add.ptr61, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x0123456762) #6
  %105 = load ptr, ptr %i1, align 8, !tbaa !8
  %call63 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %105)
  %call64 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call63)
  store <2 x i64> %call64, ptr %vxi1x0123456762, align 16, !tbaa !10
  %106 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr65 = getelementptr inbounds i8, ptr %106, i64 8
  store ptr %add.ptr65, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123456766) #6
  %107 = load <2 x i64>, ptr %vxi0x0123456758, align 16, !tbaa !10
  %108 = load <2 x i64>, ptr %vxi1x0123456762, align 16, !tbaa !10
  %call67 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %107, <2 x i64> noundef %108)
  store <2 x i64> %call67, ptr %vacc0123456766, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x0123456768) #6
  %109 = load ptr, ptr %i2, align 8, !tbaa !8
  %call69 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %109)
  %call70 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call69)
  store <2 x i64> %call70, ptr %vxi2x0123456768, align 16, !tbaa !10
  %110 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr71 = getelementptr inbounds i8, ptr %110, i64 8
  store ptr %add.ptr71, ptr %i2, align 8, !tbaa !8
  %111 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %112 = load <2 x i64>, ptr %vxi2x0123456768, align 16, !tbaa !10
  %call72 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %111, <2 x i64> noundef %112)
  store <2 x i64> %call72, ptr %vacc0123456766, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x0123456773) #6
  %113 = load ptr, ptr %i3, align 8, !tbaa !8
  %call74 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %113)
  %call75 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call74)
  store <2 x i64> %call75, ptr %vxi3x0123456773, align 16, !tbaa !10
  %114 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr76 = getelementptr inbounds i8, ptr %114, i64 8
  store ptr %add.ptr76, ptr %i3, align 8, !tbaa !8
  %115 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %116 = load <2 x i64>, ptr %vxi3x0123456773, align 16, !tbaa !10
  %call77 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %115, <2 x i64> noundef %116)
  store <2 x i64> %call77, ptr %vacc0123456766, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x0123456778) #6
  %117 = load ptr, ptr %i4, align 8, !tbaa !8
  %call79 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %117)
  %call80 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call79)
  store <2 x i64> %call80, ptr %vxi4x0123456778, align 16, !tbaa !10
  %118 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr81 = getelementptr inbounds i8, ptr %118, i64 8
  store ptr %add.ptr81, ptr %i4, align 8, !tbaa !8
  %119 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %120 = load <2 x i64>, ptr %vxi4x0123456778, align 16, !tbaa !10
  %call82 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %119, <2 x i64> noundef %120)
  store <2 x i64> %call82, ptr %vacc0123456766, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x0123456783) #6
  %121 = load ptr, ptr %i5, align 8, !tbaa !8
  %call84 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %121)
  %call85 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call84)
  store <2 x i64> %call85, ptr %vxi5x0123456783, align 16, !tbaa !10
  %122 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr86 = getelementptr inbounds i8, ptr %122, i64 8
  store ptr %add.ptr86, ptr %i5, align 8, !tbaa !8
  %123 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %124 = load <2 x i64>, ptr %vxi5x0123456783, align 16, !tbaa !10
  %call87 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %123, <2 x i64> noundef %124)
  store <2 x i64> %call87, ptr %vacc0123456766, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x0123456788) #6
  %125 = load ptr, ptr %i6, align 8, !tbaa !8
  %call89 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %125)
  %call90 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call89)
  store <2 x i64> %call90, ptr %vxi6x0123456788, align 16, !tbaa !10
  %126 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr91 = getelementptr inbounds i8, ptr %126, i64 8
  store ptr %add.ptr91, ptr %i6, align 8, !tbaa !8
  %127 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %128 = load <2 x i64>, ptr %vxi6x0123456788, align 16, !tbaa !10
  %call92 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %127, <2 x i64> noundef %128)
  store <2 x i64> %call92, ptr %vacc0123456766, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc012393) #6
  %129 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %call94 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %129)
  store <2 x i64> %call94, ptr %vacc012393, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc456795) #6
  %130 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %131 = load <2 x i64>, ptr %vacc0123456766, align 16, !tbaa !10
  %call96 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %130, <2 x i64> noundef %131)
  %call97 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call96, i32 noundef 16)
  store <2 x i64> %call97, ptr %vacc456795, align 16, !tbaa !10
  %132 = load <2 x i64>, ptr %vacc012393, align 16, !tbaa !10
  %133 = load ptr, ptr %b53, align 8, !tbaa !8
  %call98 = call <2 x i64> @_mm_load_si128(ptr noundef %133)
  %call99 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %132, <2 x i64> noundef %call98)
  store <2 x i64> %call99, ptr %vacc012393, align 16, !tbaa !10
  %134 = load <2 x i64>, ptr %vacc456795, align 16, !tbaa !10
  %135 = load ptr, ptr %b53, align 8, !tbaa !8
  %add.ptr100 = getelementptr inbounds i32, ptr %135, i64 4
  %call101 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr100)
  %call102 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %134, <2 x i64> noundef %call101)
  store <2 x i64> %call102, ptr %vacc456795, align 16, !tbaa !10
  %136 = load ptr, ptr %b53, align 8, !tbaa !8
  %137 = load <2 x i64>, ptr %vacc012393, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %136, <2 x i64> noundef %137)
  %138 = load ptr, ptr %b53, align 8, !tbaa !8
  %add.ptr103 = getelementptr inbounds i32, ptr %138, i64 4
  %139 = load <2 x i64>, ptr %vacc456795, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %add.ptr103, <2 x i64> noundef %139)
  %140 = load ptr, ptr %b53, align 8, !tbaa !8
  %add.ptr104 = getelementptr inbounds i32, ptr %140, i64 8
  store ptr %add.ptr104, ptr %b53, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc456795) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc012393) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x0123456788) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x0123456783) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x0123456778) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x0123456773) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x0123456768) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123456766) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x0123456762) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x0123456758) #6
  br label %for.inc105

for.inc105:                                       ; preds = %for.body57
  %141 = load i64, ptr %c54, align 8, !tbaa !4
  %call106 = call i64 @doz(i64 noundef %141, i64 noundef 8)
  store i64 %call106, ptr %c54, align 8, !tbaa !4
  br label %for.cond55

for.end107:                                       ; preds = %for.cond55
  call void @llvm.lifetime.end.p0(i64 8, ptr %c54) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b53) #6
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %142 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %sub109 = sub i64 %142, 7
  store i64 %sub109, ptr %rows.addr, align 8, !tbaa !4
  br label %for.cond43

for.end110:                                       ; preds = %for.cond43
  %143 = load ptr, ptr %i0, align 8, !tbaa !8
  %144 = ptrtoint ptr %143 to i64
  %145 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add111 = add i64 %144, %145
  %146 = inttoptr i64 %add111 to ptr
  store ptr %146, ptr %i0, align 8, !tbaa !8
  %147 = load ptr, ptr %i1, align 8, !tbaa !8
  %148 = ptrtoint ptr %147 to i64
  %149 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add112 = add i64 %148, %149
  %150 = inttoptr i64 %add112 to ptr
  store ptr %150, ptr %i1, align 8, !tbaa !8
  %151 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp113 = icmp ult i64 %151, 2
  %lnot = xor i1 %cmp113, true
  %lnot114 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot114 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %for.end110
  %152 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %152, ptr %i1, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end110
  %153 = load ptr, ptr %i2, align 8, !tbaa !8
  %154 = ptrtoint ptr %153 to i64
  %155 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add115 = add i64 %154, %155
  %156 = inttoptr i64 %add115 to ptr
  store ptr %156, ptr %i2, align 8, !tbaa !8
  %157 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp116 = icmp ule i64 %157, 2
  %lnot118 = xor i1 %cmp116, true
  %lnot120 = xor i1 %lnot118, true
  %lnot.ext121 = zext i1 %lnot120 to i32
  %conv122 = sext i32 %lnot.ext121 to i64
  %tobool123 = icmp ne i64 %conv122, 0
  br i1 %tobool123, label %if.then124, label %if.end125, !unpredictable !11

if.then124:                                       ; preds = %if.end
  %158 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %158, ptr %i2, align 8, !tbaa !8
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end
  %159 = load ptr, ptr %i3, align 8, !tbaa !8
  %160 = ptrtoint ptr %159 to i64
  %161 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add126 = add i64 %160, %161
  %162 = inttoptr i64 %add126 to ptr
  store ptr %162, ptr %i3, align 8, !tbaa !8
  %163 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp127 = icmp ult i64 %163, 4
  %lnot129 = xor i1 %cmp127, true
  %lnot131 = xor i1 %lnot129, true
  %lnot.ext132 = zext i1 %lnot131 to i32
  %conv133 = sext i32 %lnot.ext132 to i64
  %tobool134 = icmp ne i64 %conv133, 0
  br i1 %tobool134, label %if.then135, label %if.end136, !unpredictable !11

if.then135:                                       ; preds = %if.end125
  %164 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %164, ptr %i3, align 8, !tbaa !8
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end125
  %165 = load ptr, ptr %i4, align 8, !tbaa !8
  %166 = ptrtoint ptr %165 to i64
  %167 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add137 = add i64 %166, %167
  %168 = inttoptr i64 %add137 to ptr
  store ptr %168, ptr %i4, align 8, !tbaa !8
  %169 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp138 = icmp ule i64 %169, 4
  %lnot140 = xor i1 %cmp138, true
  %lnot142 = xor i1 %lnot140, true
  %lnot.ext143 = zext i1 %lnot142 to i32
  %conv144 = sext i32 %lnot.ext143 to i64
  %tobool145 = icmp ne i64 %conv144, 0
  br i1 %tobool145, label %if.then146, label %if.end147, !unpredictable !11

if.then146:                                       ; preds = %if.end136
  %170 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %170, ptr %i4, align 8, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.end136
  %171 = load ptr, ptr %i5, align 8, !tbaa !8
  %172 = ptrtoint ptr %171 to i64
  %173 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add148 = add i64 %172, %173
  %174 = inttoptr i64 %add148 to ptr
  store ptr %174, ptr %i5, align 8, !tbaa !8
  %175 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp149 = icmp ult i64 %175, 6
  %lnot151 = xor i1 %cmp149, true
  %lnot153 = xor i1 %lnot151, true
  %lnot.ext154 = zext i1 %lnot153 to i32
  %conv155 = sext i32 %lnot.ext154 to i64
  %tobool156 = icmp ne i64 %conv155, 0
  br i1 %tobool156, label %if.then157, label %if.end158, !unpredictable !11

if.then157:                                       ; preds = %if.end147
  %176 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %176, ptr %i5, align 8, !tbaa !8
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end147
  %177 = load ptr, ptr %i6, align 8, !tbaa !8
  %178 = ptrtoint ptr %177 to i64
  %179 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add159 = add i64 %178, %179
  %180 = inttoptr i64 %add159 to ptr
  store ptr %180, ptr %i6, align 8, !tbaa !8
  %181 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp160 = icmp ule i64 %181, 6
  %lnot162 = xor i1 %cmp160, true
  %lnot164 = xor i1 %lnot162, true
  %lnot.ext165 = zext i1 %lnot164 to i32
  %conv166 = sext i32 %lnot.ext165 to i64
  %tobool167 = icmp ne i64 %conv166, 0
  br i1 %tobool167, label %if.then168, label %if.end169, !unpredictable !11

if.then168:                                       ; preds = %if.end158
  %182 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %182, ptr %i6, align 8, !tbaa !8
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end158
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %183 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %scale = getelementptr inbounds %struct.anon.3, ptr %183, i32 0, i32 1
  %arraydecay170 = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call171 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay170)
  store <4 x float> %call171, ptr %vscale, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %184 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %184, i32 0, i32 2
  %arraydecay172 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call173 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay172)
  store <4 x float> %call173, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %185 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %185, i32 0, i32 3
  %arraydecay174 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call175 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay174)
  store <2 x i64> %call175, ptr %voutput_zero_point, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %186 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min = getelementptr inbounds %struct.anon.3, ptr %186, i32 0, i32 4
  %arraydecay176 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call177 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay176)
  store <2 x i64> %call177, ptr %voutput_min, align 16, !tbaa !10
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc241, %if.end169
  %187 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp179 = icmp uge i64 %187, 8
  br i1 %cmp179, label %for.body181, label %for.end243

for.body181:                                      ; preds = %for.cond178
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567182) #6
  %188 = load ptr, ptr %i0, align 8, !tbaa !8
  %call183 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %188)
  %call184 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call183)
  store <2 x i64> %call184, ptr %vxi0x01234567182, align 16, !tbaa !10
  %189 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr185 = getelementptr inbounds i8, ptr %189, i64 8
  store ptr %add.ptr185, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567186) #6
  %190 = load ptr, ptr %i1, align 8, !tbaa !8
  %call187 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %190)
  %call188 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call187)
  store <2 x i64> %call188, ptr %vxi1x01234567186, align 16, !tbaa !10
  %191 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr189 = getelementptr inbounds i8, ptr %191, i64 8
  store ptr %add.ptr189, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567190) #6
  %192 = load <2 x i64>, ptr %vxi0x01234567182, align 16, !tbaa !10
  %193 = load <2 x i64>, ptr %vxi1x01234567186, align 16, !tbaa !10
  %call191 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %192, <2 x i64> noundef %193)
  store <2 x i64> %call191, ptr %vacc01234567190, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567192) #6
  %194 = load ptr, ptr %i2, align 8, !tbaa !8
  %call193 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %194)
  %call194 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call193)
  store <2 x i64> %call194, ptr %vxi2x01234567192, align 16, !tbaa !10
  %195 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr195 = getelementptr inbounds i8, ptr %195, i64 8
  store ptr %add.ptr195, ptr %i2, align 8, !tbaa !8
  %196 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %197 = load <2 x i64>, ptr %vxi2x01234567192, align 16, !tbaa !10
  %call196 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %196, <2 x i64> noundef %197)
  store <2 x i64> %call196, ptr %vacc01234567190, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567197) #6
  %198 = load ptr, ptr %i3, align 8, !tbaa !8
  %call198 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %198)
  %call199 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call198)
  store <2 x i64> %call199, ptr %vxi3x01234567197, align 16, !tbaa !10
  %199 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr200 = getelementptr inbounds i8, ptr %199, i64 8
  store ptr %add.ptr200, ptr %i3, align 8, !tbaa !8
  %200 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %201 = load <2 x i64>, ptr %vxi3x01234567197, align 16, !tbaa !10
  %call201 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %200, <2 x i64> noundef %201)
  store <2 x i64> %call201, ptr %vacc01234567190, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567202) #6
  %202 = load ptr, ptr %i4, align 8, !tbaa !8
  %call203 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %202)
  %call204 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call203)
  store <2 x i64> %call204, ptr %vxi4x01234567202, align 16, !tbaa !10
  %203 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr205 = getelementptr inbounds i8, ptr %203, i64 8
  store ptr %add.ptr205, ptr %i4, align 8, !tbaa !8
  %204 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %205 = load <2 x i64>, ptr %vxi4x01234567202, align 16, !tbaa !10
  %call206 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %204, <2 x i64> noundef %205)
  store <2 x i64> %call206, ptr %vacc01234567190, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567207) #6
  %206 = load ptr, ptr %i5, align 8, !tbaa !8
  %call208 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %206)
  %call209 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call208)
  store <2 x i64> %call209, ptr %vxi5x01234567207, align 16, !tbaa !10
  %207 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr210 = getelementptr inbounds i8, ptr %207, i64 8
  store ptr %add.ptr210, ptr %i5, align 8, !tbaa !8
  %208 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %209 = load <2 x i64>, ptr %vxi5x01234567207, align 16, !tbaa !10
  %call211 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %208, <2 x i64> noundef %209)
  store <2 x i64> %call211, ptr %vacc01234567190, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567212) #6
  %210 = load ptr, ptr %i6, align 8, !tbaa !8
  %call213 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %210)
  %call214 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call213)
  store <2 x i64> %call214, ptr %vxi6x01234567212, align 16, !tbaa !10
  %211 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr215 = getelementptr inbounds i8, ptr %211, i64 8
  store ptr %add.ptr215, ptr %i6, align 8, !tbaa !8
  %212 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %213 = load <2 x i64>, ptr %vxi6x01234567212, align 16, !tbaa !10
  %call216 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %212, <2 x i64> noundef %213)
  store <2 x i64> %call216, ptr %vacc01234567190, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123217) #6
  %214 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %call218 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %214)
  store <2 x i64> %call218, ptr %vacc0123217, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567219) #6
  %215 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %216 = load <2 x i64>, ptr %vacc01234567190, align 16, !tbaa !10
  %call220 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %215, <2 x i64> noundef %216)
  %call221 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call220, i32 noundef 16)
  store <2 x i64> %call221, ptr %vacc4567219, align 16, !tbaa !10
  %217 = load <2 x i64>, ptr %vacc0123217, align 16, !tbaa !10
  %218 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %call222 = call <2 x i64> @_mm_load_si128(ptr noundef %218)
  %call223 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %217, <2 x i64> noundef %call222)
  store <2 x i64> %call223, ptr %vacc0123217, align 16, !tbaa !10
  %219 = load <2 x i64>, ptr %vacc4567219, align 16, !tbaa !10
  %220 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr224 = getelementptr inbounds i32, ptr %220, i64 4
  %call225 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr224)
  %call226 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %219, <2 x i64> noundef %call225)
  store <2 x i64> %call226, ptr %vacc4567219, align 16, !tbaa !10
  %221 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr227 = getelementptr inbounds i32, ptr %221, i64 8
  store ptr %add.ptr227, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123) #6
  %222 = load <2 x i64>, ptr %vacc0123217, align 16, !tbaa !10
  %call228 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %222)
  store <4 x float> %call228, ptr %vfpacc0123, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567) #6
  %223 = load <2 x i64>, ptr %vacc4567219, align 16, !tbaa !10
  %call229 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %223)
  store <4 x float> %call229, ptr %vfpacc4567, align 16, !tbaa !10
  %224 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !10
  %225 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call230 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %224, <4 x float> noundef %225)
  store <4 x float> %call230, ptr %vfpacc0123, align 16, !tbaa !10
  %226 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !10
  %227 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call231 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %226, <4 x float> noundef %227)
  store <4 x float> %call231, ptr %vfpacc4567, align 16, !tbaa !10
  %228 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !10
  %229 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call232 = call <4 x float> @_mm_min_ps(<4 x float> noundef %228, <4 x float> noundef %229)
  store <4 x float> %call232, ptr %vfpacc0123, align 16, !tbaa !10
  %230 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !10
  %231 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call233 = call <4 x float> @_mm_min_ps(<4 x float> noundef %230, <4 x float> noundef %231)
  store <4 x float> %call233, ptr %vfpacc4567, align 16, !tbaa !10
  %232 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !10
  %call234 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %232)
  store <2 x i64> %call234, ptr %vacc0123217, align 16, !tbaa !10
  %233 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !10
  %call235 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %233)
  store <2 x i64> %call235, ptr %vacc4567219, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #6
  %234 = load <2 x i64>, ptr %vacc0123217, align 16, !tbaa !10
  %235 = load <2 x i64>, ptr %vacc4567219, align 16, !tbaa !10
  %call236 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %234, <2 x i64> noundef %235)
  %236 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !10
  %call237 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call236, <2 x i64> noundef %236)
  store <2 x i64> %call237, ptr %vout01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #6
  %237 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !10
  %238 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !10
  %call238 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %237, <2 x i64> noundef %238)
  store <2 x i64> %call238, ptr %vout0123456701234567, align 16, !tbaa !10
  %239 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !10
  %240 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !10
  %call239 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %239, <2 x i64> noundef %240)
  store <2 x i64> %call239, ptr %vout0123456701234567, align 16, !tbaa !10
  %241 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %242 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !10
  call void @_mm_storel_epi64(ptr noundef %241, <2 x i64> noundef %242)
  %243 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr240 = getelementptr inbounds i8, ptr %243, i64 8
  store ptr %add.ptr240, ptr %output.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567219) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123217) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567212) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567207) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567202) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567197) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567192) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567190) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567186) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567182) #6
  br label %for.inc241

for.inc241:                                       ; preds = %for.body181
  %244 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %sub242 = sub i64 %244, 8
  store i64 %sub242, ptr %channels.addr, align 8, !tbaa !4
  br label %for.cond178

for.end243:                                       ; preds = %for.cond178
  %245 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp244 = icmp ne i64 %245, 0
  %lnot246 = xor i1 %cmp244, true
  %lnot248 = xor i1 %lnot246, true
  %lnot.ext249 = zext i1 %lnot248 to i32
  %conv250 = sext i32 %lnot.ext249 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv250, i64 0)
  %tobool251 = icmp ne i64 %expval, 0
  br i1 %tobool251, label %if.then252, label %if.end335

if.then252:                                       ; preds = %for.end243
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567253) #6
  %246 = load ptr, ptr %i0, align 8, !tbaa !8
  %call254 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %246)
  %call255 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call254)
  store <2 x i64> %call255, ptr %vxi0x01234567253, align 16, !tbaa !10
  %247 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr256 = getelementptr inbounds i8, ptr %247, i64 8
  store ptr %add.ptr256, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567257) #6
  %248 = load ptr, ptr %i1, align 8, !tbaa !8
  %call258 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %248)
  %call259 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call258)
  store <2 x i64> %call259, ptr %vxi1x01234567257, align 16, !tbaa !10
  %249 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr260 = getelementptr inbounds i8, ptr %249, i64 8
  store ptr %add.ptr260, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567261) #6
  %250 = load <2 x i64>, ptr %vxi0x01234567253, align 16, !tbaa !10
  %251 = load <2 x i64>, ptr %vxi1x01234567257, align 16, !tbaa !10
  %call262 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %250, <2 x i64> noundef %251)
  store <2 x i64> %call262, ptr %vacc01234567261, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567263) #6
  %252 = load ptr, ptr %i2, align 8, !tbaa !8
  %call264 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %252)
  %call265 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call264)
  store <2 x i64> %call265, ptr %vxi2x01234567263, align 16, !tbaa !10
  %253 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr266 = getelementptr inbounds i8, ptr %253, i64 8
  store ptr %add.ptr266, ptr %i2, align 8, !tbaa !8
  %254 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %255 = load <2 x i64>, ptr %vxi2x01234567263, align 16, !tbaa !10
  %call267 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %254, <2 x i64> noundef %255)
  store <2 x i64> %call267, ptr %vacc01234567261, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567268) #6
  %256 = load ptr, ptr %i3, align 8, !tbaa !8
  %call269 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %256)
  %call270 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call269)
  store <2 x i64> %call270, ptr %vxi3x01234567268, align 16, !tbaa !10
  %257 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr271 = getelementptr inbounds i8, ptr %257, i64 8
  store ptr %add.ptr271, ptr %i3, align 8, !tbaa !8
  %258 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %259 = load <2 x i64>, ptr %vxi3x01234567268, align 16, !tbaa !10
  %call272 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %258, <2 x i64> noundef %259)
  store <2 x i64> %call272, ptr %vacc01234567261, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567273) #6
  %260 = load ptr, ptr %i4, align 8, !tbaa !8
  %call274 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %260)
  %call275 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call274)
  store <2 x i64> %call275, ptr %vxi4x01234567273, align 16, !tbaa !10
  %261 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr276 = getelementptr inbounds i8, ptr %261, i64 8
  store ptr %add.ptr276, ptr %i4, align 8, !tbaa !8
  %262 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %263 = load <2 x i64>, ptr %vxi4x01234567273, align 16, !tbaa !10
  %call277 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %262, <2 x i64> noundef %263)
  store <2 x i64> %call277, ptr %vacc01234567261, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567278) #6
  %264 = load ptr, ptr %i5, align 8, !tbaa !8
  %call279 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %264)
  %call280 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call279)
  store <2 x i64> %call280, ptr %vxi5x01234567278, align 16, !tbaa !10
  %265 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr281 = getelementptr inbounds i8, ptr %265, i64 8
  store ptr %add.ptr281, ptr %i5, align 8, !tbaa !8
  %266 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %267 = load <2 x i64>, ptr %vxi5x01234567278, align 16, !tbaa !10
  %call282 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %266, <2 x i64> noundef %267)
  store <2 x i64> %call282, ptr %vacc01234567261, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567283) #6
  %268 = load ptr, ptr %i6, align 8, !tbaa !8
  %call284 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %268)
  %call285 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call284)
  store <2 x i64> %call285, ptr %vxi6x01234567283, align 16, !tbaa !10
  %269 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr286 = getelementptr inbounds i8, ptr %269, i64 8
  store ptr %add.ptr286, ptr %i6, align 8, !tbaa !8
  %270 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %271 = load <2 x i64>, ptr %vxi6x01234567283, align 16, !tbaa !10
  %call287 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %270, <2 x i64> noundef %271)
  store <2 x i64> %call287, ptr %vacc01234567261, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123288) #6
  %272 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %call289 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %272)
  store <2 x i64> %call289, ptr %vacc0123288, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567290) #6
  %273 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %274 = load <2 x i64>, ptr %vacc01234567261, align 16, !tbaa !10
  %call291 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %273, <2 x i64> noundef %274)
  %call292 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call291, i32 noundef 16)
  store <2 x i64> %call292, ptr %vacc4567290, align 16, !tbaa !10
  %275 = load <2 x i64>, ptr %vacc0123288, align 16, !tbaa !10
  %276 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %call293 = call <2 x i64> @_mm_load_si128(ptr noundef %276)
  %call294 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %275, <2 x i64> noundef %call293)
  store <2 x i64> %call294, ptr %vacc0123288, align 16, !tbaa !10
  %277 = load <2 x i64>, ptr %vacc4567290, align 16, !tbaa !10
  %278 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr295 = getelementptr inbounds i32, ptr %278, i64 4
  %call296 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr295)
  %call297 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %277, <2 x i64> noundef %call296)
  store <2 x i64> %call297, ptr %vacc4567290, align 16, !tbaa !10
  %279 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr298 = getelementptr inbounds i32, ptr %279, i64 8
  store ptr %add.ptr298, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123299) #6
  %280 = load <2 x i64>, ptr %vacc0123288, align 16, !tbaa !10
  %call300 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %280)
  store <4 x float> %call300, ptr %vfpacc0123299, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567301) #6
  %281 = load <2 x i64>, ptr %vacc4567290, align 16, !tbaa !10
  %call302 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %281)
  store <4 x float> %call302, ptr %vfpacc4567301, align 16, !tbaa !10
  %282 = load <4 x float>, ptr %vfpacc0123299, align 16, !tbaa !10
  %283 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call303 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %282, <4 x float> noundef %283)
  store <4 x float> %call303, ptr %vfpacc0123299, align 16, !tbaa !10
  %284 = load <4 x float>, ptr %vfpacc4567301, align 16, !tbaa !10
  %285 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call304 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %284, <4 x float> noundef %285)
  store <4 x float> %call304, ptr %vfpacc4567301, align 16, !tbaa !10
  %286 = load <4 x float>, ptr %vfpacc0123299, align 16, !tbaa !10
  %287 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call305 = call <4 x float> @_mm_min_ps(<4 x float> noundef %286, <4 x float> noundef %287)
  store <4 x float> %call305, ptr %vfpacc0123299, align 16, !tbaa !10
  %288 = load <4 x float>, ptr %vfpacc4567301, align 16, !tbaa !10
  %289 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call306 = call <4 x float> @_mm_min_ps(<4 x float> noundef %288, <4 x float> noundef %289)
  store <4 x float> %call306, ptr %vfpacc4567301, align 16, !tbaa !10
  %290 = load <4 x float>, ptr %vfpacc0123299, align 16, !tbaa !10
  %call307 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %290)
  store <2 x i64> %call307, ptr %vacc0123288, align 16, !tbaa !10
  %291 = load <4 x float>, ptr %vfpacc4567301, align 16, !tbaa !10
  %call308 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %291)
  store <2 x i64> %call308, ptr %vacc4567290, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567309) #6
  %292 = load <2 x i64>, ptr %vacc0123288, align 16, !tbaa !10
  %293 = load <2 x i64>, ptr %vacc4567290, align 16, !tbaa !10
  %call310 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %292, <2 x i64> noundef %293)
  %294 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !10
  %call311 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call310, <2 x i64> noundef %294)
  store <2 x i64> %call311, ptr %vout01234567309, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567312) #6
  %295 = load <2 x i64>, ptr %vout01234567309, align 16, !tbaa !10
  %296 = load <2 x i64>, ptr %vout01234567309, align 16, !tbaa !10
  %call313 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %295, <2 x i64> noundef %296)
  store <2 x i64> %call313, ptr %vout0123456701234567312, align 16, !tbaa !10
  %297 = load <2 x i64>, ptr %vout0123456701234567312, align 16, !tbaa !10
  %298 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !10
  %call314 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %297, <2 x i64> noundef %298)
  store <2 x i64> %call314, ptr %vout0123456701234567312, align 16, !tbaa !10
  %299 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and = and i64 %299, 4
  %tobool315 = icmp ne i64 %and, 0
  br i1 %tobool315, label %if.then316, label %if.end320

if.then316:                                       ; preds = %if.then252
  %300 = load <2 x i64>, ptr %vout0123456701234567312, align 16, !tbaa !10
  %call317 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %300)
  %301 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i32 %call317, ptr %301, align 4, !tbaa !12
  %302 = load <2 x i64>, ptr %vout0123456701234567312, align 16, !tbaa !10
  %call318 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %302, i32 noundef 32)
  store <2 x i64> %call318, ptr %vout0123456701234567312, align 16, !tbaa !10
  %303 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr319 = getelementptr inbounds i8, ptr %303, i64 4
  store ptr %add.ptr319, ptr %output.addr, align 8, !tbaa !8
  br label %if.end320

if.end320:                                        ; preds = %if.then316, %if.then252
  %304 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and321 = and i64 %304, 2
  %tobool322 = icmp ne i64 %and321, 0
  br i1 %tobool322, label %if.then323, label %if.end328

if.then323:                                       ; preds = %if.end320
  %305 = load <2 x i64>, ptr %vout0123456701234567312, align 16, !tbaa !10
  %306 = bitcast <2 x i64> %305 to <8 x i16>
  %307 = extractelement <8 x i16> %306, i64 0
  %conv324 = zext i16 %307 to i32
  %conv325 = trunc i32 %conv324 to i16
  %308 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i16 %conv325, ptr %308, align 2, !tbaa !14
  %309 = load <2 x i64>, ptr %vout0123456701234567312, align 16, !tbaa !10
  %call326 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %309, i32 noundef 16)
  store <2 x i64> %call326, ptr %vout0123456701234567312, align 16, !tbaa !10
  %310 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr327 = getelementptr inbounds i8, ptr %310, i64 2
  store ptr %add.ptr327, ptr %output.addr, align 8, !tbaa !8
  br label %if.end328

if.end328:                                        ; preds = %if.then323, %if.end320
  %311 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and329 = and i64 %311, 1
  %tobool330 = icmp ne i64 %and329, 0
  br i1 %tobool330, label %if.then331, label %if.end334

if.then331:                                       ; preds = %if.end328
  %312 = load <2 x i64>, ptr %vout0123456701234567312, align 16, !tbaa !10
  %313 = bitcast <2 x i64> %312 to <16 x i8>
  %314 = extractelement <16 x i8> %313, i64 0
  %conv332 = zext i8 %314 to i32
  %conv333 = trunc i32 %conv332 to i8
  %315 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i8 %conv333, ptr %315, align 1, !tbaa !10
  br label %if.end334

if.end334:                                        ; preds = %if.then331, %if.end328
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567312) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567309) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567301) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123299) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567290) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123288) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567283) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567278) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567273) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567268) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567263) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567261) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567257) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567253) #6
  br label %if.end335

if.end335:                                        ; preds = %if.end334, %for.end243
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vinit_bias) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_increment) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_up_po2(i64 noundef %n, i64 noundef %q) #2 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %q, ptr %q.addr, align 8, !tbaa !4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %1 = load i64, ptr %q.addr, align 8, !tbaa !4
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  %2 = load i64, ptr %q.addr, align 8, !tbaa !4
  %call = call i64 @round_down_po2(i64 noundef %sub, i64 noundef %2)
  ret i64 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !10
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #3 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !10
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !10
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !10
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %add = add <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %__V) #3 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %conv = sext <4 x i16> %shuffle to <4 x i32>
  %4 = bitcast <4 x i32> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %3 = call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %add = add <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %0, ptr %1, align 16, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @doz(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %b.addr, align 8, !tbaa !4
  %1 = load i64, ptr %a.addr, align 8, !tbaa !4
  %cmp = icmp ult i64 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !4
  %3 = load i64, ptr %b.addr, align 8, !tbaa !4
  %sub = sub i64 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !10
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !10
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !10
  %2 = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #3 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !10
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !10
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !10
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #2 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %q, ptr %q.addr, align 8, !tbaa !4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %1 = load i64, ptr %q.addr, align 8, !tbaa !4
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!10 = !{!6, !6, i64 0}
!11 = !{}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}

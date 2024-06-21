; ModuleID = 'samples/957.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-gavgpool/gen/7p7x-minmax-fp32-sse2-c8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x i32], [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__sse2_c8(i64 noundef %rows, i64 noundef %channels, ptr noundef %input, i64 noundef %input_stride, ptr noundef %zero, ptr noundef %buffer, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(112) %params) #0 {
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
  %vzero = alloca <2 x i64>, align 16
  %b = alloca ptr, align 8
  %c = alloca i64, align 8
  %vi0x01234567 = alloca <2 x i64>, align 16
  %vxi0x01234567 = alloca <2 x i64>, align 16
  %vi1x01234567 = alloca <2 x i64>, align 16
  %vxi1x01234567 = alloca <2 x i64>, align 16
  %vi2x01234567 = alloca <2 x i64>, align 16
  %vacc01234567 = alloca <2 x i64>, align 16
  %vxi2x01234567 = alloca <2 x i64>, align 16
  %vi3x01234567 = alloca <2 x i64>, align 16
  %vxi3x01234567 = alloca <2 x i64>, align 16
  %vi4x01234567 = alloca <2 x i64>, align 16
  %vxi4x01234567 = alloca <2 x i64>, align 16
  %vi5x01234567 = alloca <2 x i64>, align 16
  %vxi5x01234567 = alloca <2 x i64>, align 16
  %vi6x01234567 = alloca <2 x i64>, align 16
  %vxi6x01234567 = alloca <2 x i64>, align 16
  %vacc0123 = alloca <2 x i64>, align 16
  %vacc4567 = alloca <2 x i64>, align 16
  %b53 = alloca ptr, align 8
  %c54 = alloca i64, align 8
  %vi0x0123456758 = alloca <2 x i64>, align 16
  %vxi0x0123456761 = alloca <2 x i64>, align 16
  %vi1x0123456763 = alloca <2 x i64>, align 16
  %vxi1x0123456766 = alloca <2 x i64>, align 16
  %vi2x0123456768 = alloca <2 x i64>, align 16
  %vacc0123456771 = alloca <2 x i64>, align 16
  %vxi2x0123456773 = alloca <2 x i64>, align 16
  %vi3x0123456775 = alloca <2 x i64>, align 16
  %vxi3x0123456779 = alloca <2 x i64>, align 16
  %vi4x0123456781 = alloca <2 x i64>, align 16
  %vxi4x0123456785 = alloca <2 x i64>, align 16
  %vi5x0123456787 = alloca <2 x i64>, align 16
  %vxi5x0123456791 = alloca <2 x i64>, align 16
  %vi6x0123456793 = alloca <2 x i64>, align 16
  %vxi6x0123456797 = alloca <2 x i64>, align 16
  %vacc0123100 = alloca <2 x i64>, align 16
  %vacc4567102 = alloca <2 x i64>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vi0x01234567188 = alloca <2 x i64>, align 16
  %vxi0x01234567191 = alloca <2 x i64>, align 16
  %vi1x01234567193 = alloca <2 x i64>, align 16
  %vxi1x01234567196 = alloca <2 x i64>, align 16
  %vi2x01234567198 = alloca <2 x i64>, align 16
  %vacc01234567201 = alloca <2 x i64>, align 16
  %vxi2x01234567203 = alloca <2 x i64>, align 16
  %vi3x01234567205 = alloca <2 x i64>, align 16
  %vxi3x01234567209 = alloca <2 x i64>, align 16
  %vi4x01234567211 = alloca <2 x i64>, align 16
  %vxi4x01234567215 = alloca <2 x i64>, align 16
  %vi5x01234567217 = alloca <2 x i64>, align 16
  %vxi5x01234567221 = alloca <2 x i64>, align 16
  %vi6x01234567223 = alloca <2 x i64>, align 16
  %vxi6x01234567227 = alloca <2 x i64>, align 16
  %vacc0123230 = alloca <2 x i64>, align 16
  %vacc4567232 = alloca <2 x i64>, align 16
  %vfpacc0123 = alloca <4 x float>, align 16
  %vfpacc4567 = alloca <4 x float>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %vi0x01234567265 = alloca <2 x i64>, align 16
  %vi1x01234567268 = alloca <2 x i64>, align 16
  %vxi0x01234567271 = alloca <2 x i64>, align 16
  %vi2x01234567273 = alloca <2 x i64>, align 16
  %vxi1x01234567276 = alloca <2 x i64>, align 16
  %vi3x01234567278 = alloca <2 x i64>, align 16
  %vacc01234567281 = alloca <2 x i64>, align 16
  %vxi2x01234567283 = alloca <2 x i64>, align 16
  %vi4x01234567285 = alloca <2 x i64>, align 16
  %vxi3x01234567289 = alloca <2 x i64>, align 16
  %vi5x01234567291 = alloca <2 x i64>, align 16
  %vxi4x01234567295 = alloca <2 x i64>, align 16
  %vi6x01234567297 = alloca <2 x i64>, align 16
  %vxi5x01234567301 = alloca <2 x i64>, align 16
  %vxi6x01234567304 = alloca <2 x i64>, align 16
  %vacc0123307 = alloca <2 x i64>, align 16
  %vacc4567309 = alloca <2 x i64>, align 16
  %vfpacc0123317 = alloca <4 x float>, align 16
  %vfpacc4567319 = alloca <4 x float>, align 16
  %vout01234567327 = alloca <2 x i64>, align 16
  %vout0123456701234567330 = alloca <2 x i64>, align 16
  %vout0123 = alloca i32, align 4
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
  %init_bias = getelementptr inbounds %struct.anon.2, ptr %27, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %init_bias, i64 0, i64 0
  %call7 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay)
  store <2 x i64> %call7, ptr %vinit_bias, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vzero) #6
  %call8 = call <2 x i64> @_mm_setzero_si128()
  store <2 x i64> %call8, ptr %vzero, align 16, !tbaa !10
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567) #6
  %31 = load ptr, ptr %i0, align 8, !tbaa !8
  %call9 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %31)
  store <2 x i64> %call9, ptr %vi0x01234567, align 16, !tbaa !10
  %32 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567) #6
  %33 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !10
  %34 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call10 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %33, <2 x i64> noundef %34)
  store <2 x i64> %call10, ptr %vxi0x01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567) #6
  %35 = load ptr, ptr %i1, align 8, !tbaa !8
  %call11 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %35)
  store <2 x i64> %call11, ptr %vi1x01234567, align 16, !tbaa !10
  %36 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr12 = getelementptr inbounds i8, ptr %36, i64 8
  store ptr %add.ptr12, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567) #6
  %37 = load <2 x i64>, ptr %vi1x01234567, align 16, !tbaa !10
  %38 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call13 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %37, <2 x i64> noundef %38)
  store <2 x i64> %call13, ptr %vxi1x01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567) #6
  %39 = load ptr, ptr %i2, align 8, !tbaa !8
  %call14 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %39)
  store <2 x i64> %call14, ptr %vi2x01234567, align 16, !tbaa !10
  %40 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr15 = getelementptr inbounds i8, ptr %40, i64 8
  store ptr %add.ptr15, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567) #6
  %41 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !10
  %42 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !10
  %call16 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %41, <2 x i64> noundef %42)
  store <2 x i64> %call16, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567) #6
  %43 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !10
  %44 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call17 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %43, <2 x i64> noundef %44)
  store <2 x i64> %call17, ptr %vxi2x01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567) #6
  %45 = load ptr, ptr %i3, align 8, !tbaa !8
  %call18 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %45)
  store <2 x i64> %call18, ptr %vi3x01234567, align 16, !tbaa !10
  %46 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr19 = getelementptr inbounds i8, ptr %46, i64 8
  store ptr %add.ptr19, ptr %i3, align 8, !tbaa !8
  %47 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %48 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !10
  %call20 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %47, <2 x i64> noundef %48)
  store <2 x i64> %call20, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567) #6
  %49 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !10
  %50 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call21 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %49, <2 x i64> noundef %50)
  store <2 x i64> %call21, ptr %vxi3x01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567) #6
  %51 = load ptr, ptr %i4, align 8, !tbaa !8
  %call22 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %51)
  store <2 x i64> %call22, ptr %vi4x01234567, align 16, !tbaa !10
  %52 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr23 = getelementptr inbounds i8, ptr %52, i64 8
  store ptr %add.ptr23, ptr %i4, align 8, !tbaa !8
  %53 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %54 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !10
  %call24 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %53, <2 x i64> noundef %54)
  store <2 x i64> %call24, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567) #6
  %55 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !10
  %56 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call25 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %55, <2 x i64> noundef %56)
  store <2 x i64> %call25, ptr %vxi4x01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567) #6
  %57 = load ptr, ptr %i5, align 8, !tbaa !8
  %call26 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %57)
  store <2 x i64> %call26, ptr %vi5x01234567, align 16, !tbaa !10
  %58 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr27 = getelementptr inbounds i8, ptr %58, i64 8
  store ptr %add.ptr27, ptr %i5, align 8, !tbaa !8
  %59 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %60 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !10
  %call28 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %59, <2 x i64> noundef %60)
  store <2 x i64> %call28, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567) #6
  %61 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !10
  %62 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call29 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %61, <2 x i64> noundef %62)
  store <2 x i64> %call29, ptr %vxi5x01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567) #6
  %63 = load ptr, ptr %i6, align 8, !tbaa !8
  %call30 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %63)
  store <2 x i64> %call30, ptr %vi6x01234567, align 16, !tbaa !10
  %64 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr31 = getelementptr inbounds i8, ptr %64, i64 8
  store ptr %add.ptr31, ptr %i6, align 8, !tbaa !8
  %65 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %66 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !10
  %call32 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %65, <2 x i64> noundef %66)
  store <2 x i64> %call32, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567) #6
  %67 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !10
  %68 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call33 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %67, <2 x i64> noundef %68)
  store <2 x i64> %call33, ptr %vxi6x01234567, align 16, !tbaa !10
  %69 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %70 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !10
  %call34 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %69, <2 x i64> noundef %70)
  store <2 x i64> %call34, ptr %vacc01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #6
  %71 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %72 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call35 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %71, <2 x i64> noundef %72)
  store <2 x i64> %call35, ptr %vacc0123, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #6
  %73 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !10
  %74 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call36 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %73, <2 x i64> noundef %74)
  store <2 x i64> %call36, ptr %vacc4567, align 16, !tbaa !10
  %75 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !10
  %76 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !10
  %call37 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %75, <2 x i64> noundef %76)
  store <2 x i64> %call37, ptr %vacc0123, align 16, !tbaa !10
  %77 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !10
  %78 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !10
  %call38 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %77, <2 x i64> noundef %78)
  store <2 x i64> %call38, ptr %vacc4567, align 16, !tbaa !10
  %79 = load ptr, ptr %b, align 8, !tbaa !8
  %80 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %79, <2 x i64> noundef %80)
  %81 = load ptr, ptr %b, align 8, !tbaa !8
  %add.ptr39 = getelementptr inbounds i32, ptr %81, i64 4
  %82 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %add.ptr39, <2 x i64> noundef %82)
  %83 = load ptr, ptr %b, align 8, !tbaa !8
  %add.ptr40 = getelementptr inbounds i32, ptr %83, i64 8
  store ptr %add.ptr40, ptr %b, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i64, ptr %c, align 8, !tbaa !4
  %call41 = call i64 @doz(i64 noundef %84, i64 noundef 8)
  store i64 %call41, ptr %c, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %sub42 = sub i64 %85, 7
  store i64 %sub42, ptr %rows.addr, align 8, !tbaa !4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc114, %for.end
  %86 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp44 = icmp ugt i64 %86, 7
  br i1 %cmp44, label %for.body45, label %for.end116

for.body45:                                       ; preds = %for.cond43
  %87 = load ptr, ptr %i0, align 8, !tbaa !8
  %88 = ptrtoint ptr %87 to i64
  %89 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add46 = add i64 %88, %89
  %90 = inttoptr i64 %add46 to ptr
  store ptr %90, ptr %i0, align 8, !tbaa !8
  %91 = load ptr, ptr %i1, align 8, !tbaa !8
  %92 = ptrtoint ptr %91 to i64
  %93 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add47 = add i64 %92, %93
  %94 = inttoptr i64 %add47 to ptr
  store ptr %94, ptr %i1, align 8, !tbaa !8
  %95 = load ptr, ptr %i2, align 8, !tbaa !8
  %96 = ptrtoint ptr %95 to i64
  %97 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add48 = add i64 %96, %97
  %98 = inttoptr i64 %add48 to ptr
  store ptr %98, ptr %i2, align 8, !tbaa !8
  %99 = load ptr, ptr %i3, align 8, !tbaa !8
  %100 = ptrtoint ptr %99 to i64
  %101 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add49 = add i64 %100, %101
  %102 = inttoptr i64 %add49 to ptr
  store ptr %102, ptr %i3, align 8, !tbaa !8
  %103 = load ptr, ptr %i4, align 8, !tbaa !8
  %104 = ptrtoint ptr %103 to i64
  %105 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add50 = add i64 %104, %105
  %106 = inttoptr i64 %add50 to ptr
  store ptr %106, ptr %i4, align 8, !tbaa !8
  %107 = load ptr, ptr %i5, align 8, !tbaa !8
  %108 = ptrtoint ptr %107 to i64
  %109 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add51 = add i64 %108, %109
  %110 = inttoptr i64 %add51 to ptr
  store ptr %110, ptr %i5, align 8, !tbaa !8
  %111 = load ptr, ptr %i6, align 8, !tbaa !8
  %112 = ptrtoint ptr %111 to i64
  %113 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add52 = add i64 %112, %113
  %114 = inttoptr i64 %add52 to ptr
  store ptr %114, ptr %i6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %b53) #6
  %115 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  store ptr %115, ptr %b53, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c54) #6
  %116 = load i64, ptr %channels.addr, align 8, !tbaa !4
  store i64 %116, ptr %c54, align 8, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc111, %for.body45
  %117 = load i64, ptr %c54, align 8, !tbaa !4
  %cmp56 = icmp ne i64 %117, 0
  br i1 %cmp56, label %for.body57, label %for.end113

for.body57:                                       ; preds = %for.cond55
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x0123456758) #6
  %118 = load ptr, ptr %i0, align 8, !tbaa !8
  %call59 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %118)
  store <2 x i64> %call59, ptr %vi0x0123456758, align 16, !tbaa !10
  %119 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr60 = getelementptr inbounds i8, ptr %119, i64 8
  store ptr %add.ptr60, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x0123456761) #6
  %120 = load <2 x i64>, ptr %vi0x0123456758, align 16, !tbaa !10
  %121 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call62 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %120, <2 x i64> noundef %121)
  store <2 x i64> %call62, ptr %vxi0x0123456761, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x0123456763) #6
  %122 = load ptr, ptr %i1, align 8, !tbaa !8
  %call64 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %122)
  store <2 x i64> %call64, ptr %vi1x0123456763, align 16, !tbaa !10
  %123 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr65 = getelementptr inbounds i8, ptr %123, i64 8
  store ptr %add.ptr65, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x0123456766) #6
  %124 = load <2 x i64>, ptr %vi1x0123456763, align 16, !tbaa !10
  %125 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call67 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %124, <2 x i64> noundef %125)
  store <2 x i64> %call67, ptr %vxi1x0123456766, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x0123456768) #6
  %126 = load ptr, ptr %i2, align 8, !tbaa !8
  %call69 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %126)
  store <2 x i64> %call69, ptr %vi2x0123456768, align 16, !tbaa !10
  %127 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr70 = getelementptr inbounds i8, ptr %127, i64 8
  store ptr %add.ptr70, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123456771) #6
  %128 = load <2 x i64>, ptr %vxi0x0123456761, align 16, !tbaa !10
  %129 = load <2 x i64>, ptr %vxi1x0123456766, align 16, !tbaa !10
  %call72 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %128, <2 x i64> noundef %129)
  store <2 x i64> %call72, ptr %vacc0123456771, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x0123456773) #6
  %130 = load <2 x i64>, ptr %vi2x0123456768, align 16, !tbaa !10
  %131 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call74 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %130, <2 x i64> noundef %131)
  store <2 x i64> %call74, ptr %vxi2x0123456773, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x0123456775) #6
  %132 = load ptr, ptr %i3, align 8, !tbaa !8
  %call76 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %132)
  store <2 x i64> %call76, ptr %vi3x0123456775, align 16, !tbaa !10
  %133 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr77 = getelementptr inbounds i8, ptr %133, i64 8
  store ptr %add.ptr77, ptr %i3, align 8, !tbaa !8
  %134 = load <2 x i64>, ptr %vacc0123456771, align 16, !tbaa !10
  %135 = load <2 x i64>, ptr %vxi2x0123456773, align 16, !tbaa !10
  %call78 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %134, <2 x i64> noundef %135)
  store <2 x i64> %call78, ptr %vacc0123456771, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x0123456779) #6
  %136 = load <2 x i64>, ptr %vi3x0123456775, align 16, !tbaa !10
  %137 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call80 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %136, <2 x i64> noundef %137)
  store <2 x i64> %call80, ptr %vxi3x0123456779, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x0123456781) #6
  %138 = load ptr, ptr %i4, align 8, !tbaa !8
  %call82 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %138)
  store <2 x i64> %call82, ptr %vi4x0123456781, align 16, !tbaa !10
  %139 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr83 = getelementptr inbounds i8, ptr %139, i64 8
  store ptr %add.ptr83, ptr %i4, align 8, !tbaa !8
  %140 = load <2 x i64>, ptr %vacc0123456771, align 16, !tbaa !10
  %141 = load <2 x i64>, ptr %vxi3x0123456779, align 16, !tbaa !10
  %call84 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %140, <2 x i64> noundef %141)
  store <2 x i64> %call84, ptr %vacc0123456771, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x0123456785) #6
  %142 = load <2 x i64>, ptr %vi4x0123456781, align 16, !tbaa !10
  %143 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call86 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %142, <2 x i64> noundef %143)
  store <2 x i64> %call86, ptr %vxi4x0123456785, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x0123456787) #6
  %144 = load ptr, ptr %i5, align 8, !tbaa !8
  %call88 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %144)
  store <2 x i64> %call88, ptr %vi5x0123456787, align 16, !tbaa !10
  %145 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr89 = getelementptr inbounds i8, ptr %145, i64 8
  store ptr %add.ptr89, ptr %i5, align 8, !tbaa !8
  %146 = load <2 x i64>, ptr %vacc0123456771, align 16, !tbaa !10
  %147 = load <2 x i64>, ptr %vxi4x0123456785, align 16, !tbaa !10
  %call90 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %146, <2 x i64> noundef %147)
  store <2 x i64> %call90, ptr %vacc0123456771, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x0123456791) #6
  %148 = load <2 x i64>, ptr %vi5x0123456787, align 16, !tbaa !10
  %149 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call92 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %148, <2 x i64> noundef %149)
  store <2 x i64> %call92, ptr %vxi5x0123456791, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x0123456793) #6
  %150 = load ptr, ptr %i6, align 8, !tbaa !8
  %call94 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %150)
  store <2 x i64> %call94, ptr %vi6x0123456793, align 16, !tbaa !10
  %151 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr95 = getelementptr inbounds i8, ptr %151, i64 8
  store ptr %add.ptr95, ptr %i6, align 8, !tbaa !8
  %152 = load <2 x i64>, ptr %vacc0123456771, align 16, !tbaa !10
  %153 = load <2 x i64>, ptr %vxi5x0123456791, align 16, !tbaa !10
  %call96 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %152, <2 x i64> noundef %153)
  store <2 x i64> %call96, ptr %vacc0123456771, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x0123456797) #6
  %154 = load <2 x i64>, ptr %vi6x0123456793, align 16, !tbaa !10
  %155 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call98 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %154, <2 x i64> noundef %155)
  store <2 x i64> %call98, ptr %vxi6x0123456797, align 16, !tbaa !10
  %156 = load <2 x i64>, ptr %vacc0123456771, align 16, !tbaa !10
  %157 = load <2 x i64>, ptr %vxi6x0123456797, align 16, !tbaa !10
  %call99 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %156, <2 x i64> noundef %157)
  store <2 x i64> %call99, ptr %vacc0123456771, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123100) #6
  %158 = load <2 x i64>, ptr %vacc0123456771, align 16, !tbaa !10
  %159 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call101 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %158, <2 x i64> noundef %159)
  store <2 x i64> %call101, ptr %vacc0123100, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567102) #6
  %160 = load <2 x i64>, ptr %vacc0123456771, align 16, !tbaa !10
  %161 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call103 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %160, <2 x i64> noundef %161)
  store <2 x i64> %call103, ptr %vacc4567102, align 16, !tbaa !10
  %162 = load <2 x i64>, ptr %vacc0123100, align 16, !tbaa !10
  %163 = load ptr, ptr %b53, align 8, !tbaa !8
  %call104 = call <2 x i64> @_mm_load_si128(ptr noundef %163)
  %call105 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %162, <2 x i64> noundef %call104)
  store <2 x i64> %call105, ptr %vacc0123100, align 16, !tbaa !10
  %164 = load <2 x i64>, ptr %vacc4567102, align 16, !tbaa !10
  %165 = load ptr, ptr %b53, align 8, !tbaa !8
  %add.ptr106 = getelementptr inbounds i32, ptr %165, i64 4
  %call107 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr106)
  %call108 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %164, <2 x i64> noundef %call107)
  store <2 x i64> %call108, ptr %vacc4567102, align 16, !tbaa !10
  %166 = load ptr, ptr %b53, align 8, !tbaa !8
  %167 = load <2 x i64>, ptr %vacc0123100, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %166, <2 x i64> noundef %167)
  %168 = load ptr, ptr %b53, align 8, !tbaa !8
  %add.ptr109 = getelementptr inbounds i32, ptr %168, i64 4
  %169 = load <2 x i64>, ptr %vacc4567102, align 16, !tbaa !10
  call void @_mm_store_si128(ptr noundef %add.ptr109, <2 x i64> noundef %169)
  %170 = load ptr, ptr %b53, align 8, !tbaa !8
  %add.ptr110 = getelementptr inbounds i32, ptr %170, i64 8
  store ptr %add.ptr110, ptr %b53, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567102) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123100) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x0123456797) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x0123456793) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x0123456791) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x0123456787) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x0123456785) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x0123456781) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x0123456779) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x0123456775) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x0123456773) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123456771) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x0123456768) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x0123456766) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x0123456763) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x0123456761) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x0123456758) #6
  br label %for.inc111

for.inc111:                                       ; preds = %for.body57
  %171 = load i64, ptr %c54, align 8, !tbaa !4
  %call112 = call i64 @doz(i64 noundef %171, i64 noundef 8)
  store i64 %call112, ptr %c54, align 8, !tbaa !4
  br label %for.cond55

for.end113:                                       ; preds = %for.cond55
  call void @llvm.lifetime.end.p0(i64 8, ptr %c54) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b53) #6
  br label %for.inc114

for.inc114:                                       ; preds = %for.end113
  %172 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %sub115 = sub i64 %172, 7
  store i64 %sub115, ptr %rows.addr, align 8, !tbaa !4
  br label %for.cond43

for.end116:                                       ; preds = %for.cond43
  %173 = load ptr, ptr %i0, align 8, !tbaa !8
  %174 = ptrtoint ptr %173 to i64
  %175 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add117 = add i64 %174, %175
  %176 = inttoptr i64 %add117 to ptr
  store ptr %176, ptr %i0, align 8, !tbaa !8
  %177 = load ptr, ptr %i1, align 8, !tbaa !8
  %178 = ptrtoint ptr %177 to i64
  %179 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add118 = add i64 %178, %179
  %180 = inttoptr i64 %add118 to ptr
  store ptr %180, ptr %i1, align 8, !tbaa !8
  %181 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp119 = icmp ult i64 %181, 2
  %lnot = xor i1 %cmp119, true
  %lnot120 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot120 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %for.end116
  %182 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %182, ptr %i1, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end116
  %183 = load ptr, ptr %i2, align 8, !tbaa !8
  %184 = ptrtoint ptr %183 to i64
  %185 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add121 = add i64 %184, %185
  %186 = inttoptr i64 %add121 to ptr
  store ptr %186, ptr %i2, align 8, !tbaa !8
  %187 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp122 = icmp ule i64 %187, 2
  %lnot124 = xor i1 %cmp122, true
  %lnot126 = xor i1 %lnot124, true
  %lnot.ext127 = zext i1 %lnot126 to i32
  %conv128 = sext i32 %lnot.ext127 to i64
  %tobool129 = icmp ne i64 %conv128, 0
  br i1 %tobool129, label %if.then130, label %if.end131, !unpredictable !11

if.then130:                                       ; preds = %if.end
  %188 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %188, ptr %i2, align 8, !tbaa !8
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end
  %189 = load ptr, ptr %i3, align 8, !tbaa !8
  %190 = ptrtoint ptr %189 to i64
  %191 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add132 = add i64 %190, %191
  %192 = inttoptr i64 %add132 to ptr
  store ptr %192, ptr %i3, align 8, !tbaa !8
  %193 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp133 = icmp ult i64 %193, 4
  %lnot135 = xor i1 %cmp133, true
  %lnot137 = xor i1 %lnot135, true
  %lnot.ext138 = zext i1 %lnot137 to i32
  %conv139 = sext i32 %lnot.ext138 to i64
  %tobool140 = icmp ne i64 %conv139, 0
  br i1 %tobool140, label %if.then141, label %if.end142, !unpredictable !11

if.then141:                                       ; preds = %if.end131
  %194 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %194, ptr %i3, align 8, !tbaa !8
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end131
  %195 = load ptr, ptr %i4, align 8, !tbaa !8
  %196 = ptrtoint ptr %195 to i64
  %197 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add143 = add i64 %196, %197
  %198 = inttoptr i64 %add143 to ptr
  store ptr %198, ptr %i4, align 8, !tbaa !8
  %199 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp144 = icmp ule i64 %199, 4
  %lnot146 = xor i1 %cmp144, true
  %lnot148 = xor i1 %lnot146, true
  %lnot.ext149 = zext i1 %lnot148 to i32
  %conv150 = sext i32 %lnot.ext149 to i64
  %tobool151 = icmp ne i64 %conv150, 0
  br i1 %tobool151, label %if.then152, label %if.end153, !unpredictable !11

if.then152:                                       ; preds = %if.end142
  %200 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %200, ptr %i4, align 8, !tbaa !8
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end142
  %201 = load ptr, ptr %i5, align 8, !tbaa !8
  %202 = ptrtoint ptr %201 to i64
  %203 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add154 = add i64 %202, %203
  %204 = inttoptr i64 %add154 to ptr
  store ptr %204, ptr %i5, align 8, !tbaa !8
  %205 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp155 = icmp ult i64 %205, 6
  %lnot157 = xor i1 %cmp155, true
  %lnot159 = xor i1 %lnot157, true
  %lnot.ext160 = zext i1 %lnot159 to i32
  %conv161 = sext i32 %lnot.ext160 to i64
  %tobool162 = icmp ne i64 %conv161, 0
  br i1 %tobool162, label %if.then163, label %if.end164, !unpredictable !11

if.then163:                                       ; preds = %if.end153
  %206 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %206, ptr %i5, align 8, !tbaa !8
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.end153
  %207 = load ptr, ptr %i6, align 8, !tbaa !8
  %208 = ptrtoint ptr %207 to i64
  %209 = load i64, ptr %input_increment, align 8, !tbaa !4
  %add165 = add i64 %208, %209
  %210 = inttoptr i64 %add165 to ptr
  store ptr %210, ptr %i6, align 8, !tbaa !8
  %211 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp166 = icmp ule i64 %211, 6
  %lnot168 = xor i1 %cmp166, true
  %lnot170 = xor i1 %lnot168, true
  %lnot.ext171 = zext i1 %lnot170 to i32
  %conv172 = sext i32 %lnot.ext171 to i64
  %tobool173 = icmp ne i64 %conv172, 0
  br i1 %tobool173, label %if.then174, label %if.end175, !unpredictable !11

if.then174:                                       ; preds = %if.end164
  %212 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %212, ptr %i6, align 8, !tbaa !8
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.end164
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %213 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %scale = getelementptr inbounds %struct.anon.2, ptr %213, i32 0, i32 1
  %arraydecay176 = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call177 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay176)
  store <4 x float> %call177, ptr %vscale, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %214 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %214, i32 0, i32 2
  %arraydecay178 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call179 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay178)
  store <4 x float> %call179, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %215 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %215, i32 0, i32 3
  %arraydecay180 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call181 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay180)
  store <2 x i64> %call181, ptr %voutput_zero_point, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %216 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min = getelementptr inbounds %struct.anon.2, ptr %216, i32 0, i32 4
  %arraydecay182 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call183 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay182)
  store <2 x i64> %call183, ptr %voutput_min, align 16, !tbaa !10
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc253, %if.end175
  %217 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp185 = icmp uge i64 %217, 8
  br i1 %cmp185, label %for.body187, label %for.end255

for.body187:                                      ; preds = %for.cond184
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567188) #6
  %218 = load ptr, ptr %i0, align 8, !tbaa !8
  %call189 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %218)
  store <2 x i64> %call189, ptr %vi0x01234567188, align 16, !tbaa !10
  %219 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr190 = getelementptr inbounds i8, ptr %219, i64 8
  store ptr %add.ptr190, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567191) #6
  %220 = load <2 x i64>, ptr %vi0x01234567188, align 16, !tbaa !10
  %221 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call192 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %220, <2 x i64> noundef %221)
  store <2 x i64> %call192, ptr %vxi0x01234567191, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567193) #6
  %222 = load ptr, ptr %i1, align 8, !tbaa !8
  %call194 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %222)
  store <2 x i64> %call194, ptr %vi1x01234567193, align 16, !tbaa !10
  %223 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr195 = getelementptr inbounds i8, ptr %223, i64 8
  store ptr %add.ptr195, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567196) #6
  %224 = load <2 x i64>, ptr %vi1x01234567193, align 16, !tbaa !10
  %225 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call197 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %224, <2 x i64> noundef %225)
  store <2 x i64> %call197, ptr %vxi1x01234567196, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567198) #6
  %226 = load ptr, ptr %i2, align 8, !tbaa !8
  %call199 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %226)
  store <2 x i64> %call199, ptr %vi2x01234567198, align 16, !tbaa !10
  %227 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr200 = getelementptr inbounds i8, ptr %227, i64 8
  store ptr %add.ptr200, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567201) #6
  %228 = load <2 x i64>, ptr %vxi0x01234567191, align 16, !tbaa !10
  %229 = load <2 x i64>, ptr %vxi1x01234567196, align 16, !tbaa !10
  %call202 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %228, <2 x i64> noundef %229)
  store <2 x i64> %call202, ptr %vacc01234567201, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567203) #6
  %230 = load <2 x i64>, ptr %vi2x01234567198, align 16, !tbaa !10
  %231 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call204 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %230, <2 x i64> noundef %231)
  store <2 x i64> %call204, ptr %vxi2x01234567203, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567205) #6
  %232 = load ptr, ptr %i3, align 8, !tbaa !8
  %call206 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %232)
  store <2 x i64> %call206, ptr %vi3x01234567205, align 16, !tbaa !10
  %233 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr207 = getelementptr inbounds i8, ptr %233, i64 8
  store ptr %add.ptr207, ptr %i3, align 8, !tbaa !8
  %234 = load <2 x i64>, ptr %vacc01234567201, align 16, !tbaa !10
  %235 = load <2 x i64>, ptr %vxi2x01234567203, align 16, !tbaa !10
  %call208 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %234, <2 x i64> noundef %235)
  store <2 x i64> %call208, ptr %vacc01234567201, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567209) #6
  %236 = load <2 x i64>, ptr %vi3x01234567205, align 16, !tbaa !10
  %237 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call210 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %236, <2 x i64> noundef %237)
  store <2 x i64> %call210, ptr %vxi3x01234567209, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567211) #6
  %238 = load ptr, ptr %i4, align 8, !tbaa !8
  %call212 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %238)
  store <2 x i64> %call212, ptr %vi4x01234567211, align 16, !tbaa !10
  %239 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr213 = getelementptr inbounds i8, ptr %239, i64 8
  store ptr %add.ptr213, ptr %i4, align 8, !tbaa !8
  %240 = load <2 x i64>, ptr %vacc01234567201, align 16, !tbaa !10
  %241 = load <2 x i64>, ptr %vxi3x01234567209, align 16, !tbaa !10
  %call214 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %240, <2 x i64> noundef %241)
  store <2 x i64> %call214, ptr %vacc01234567201, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567215) #6
  %242 = load <2 x i64>, ptr %vi4x01234567211, align 16, !tbaa !10
  %243 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call216 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %242, <2 x i64> noundef %243)
  store <2 x i64> %call216, ptr %vxi4x01234567215, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567217) #6
  %244 = load ptr, ptr %i5, align 8, !tbaa !8
  %call218 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %244)
  store <2 x i64> %call218, ptr %vi5x01234567217, align 16, !tbaa !10
  %245 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr219 = getelementptr inbounds i8, ptr %245, i64 8
  store ptr %add.ptr219, ptr %i5, align 8, !tbaa !8
  %246 = load <2 x i64>, ptr %vacc01234567201, align 16, !tbaa !10
  %247 = load <2 x i64>, ptr %vxi4x01234567215, align 16, !tbaa !10
  %call220 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %246, <2 x i64> noundef %247)
  store <2 x i64> %call220, ptr %vacc01234567201, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567221) #6
  %248 = load <2 x i64>, ptr %vi5x01234567217, align 16, !tbaa !10
  %249 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call222 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %248, <2 x i64> noundef %249)
  store <2 x i64> %call222, ptr %vxi5x01234567221, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567223) #6
  %250 = load ptr, ptr %i6, align 8, !tbaa !8
  %call224 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %250)
  store <2 x i64> %call224, ptr %vi6x01234567223, align 16, !tbaa !10
  %251 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr225 = getelementptr inbounds i8, ptr %251, i64 8
  store ptr %add.ptr225, ptr %i6, align 8, !tbaa !8
  %252 = load <2 x i64>, ptr %vacc01234567201, align 16, !tbaa !10
  %253 = load <2 x i64>, ptr %vxi5x01234567221, align 16, !tbaa !10
  %call226 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %252, <2 x i64> noundef %253)
  store <2 x i64> %call226, ptr %vacc01234567201, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567227) #6
  %254 = load <2 x i64>, ptr %vi6x01234567223, align 16, !tbaa !10
  %255 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call228 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %254, <2 x i64> noundef %255)
  store <2 x i64> %call228, ptr %vxi6x01234567227, align 16, !tbaa !10
  %256 = load <2 x i64>, ptr %vacc01234567201, align 16, !tbaa !10
  %257 = load <2 x i64>, ptr %vxi6x01234567227, align 16, !tbaa !10
  %call229 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %256, <2 x i64> noundef %257)
  store <2 x i64> %call229, ptr %vacc01234567201, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123230) #6
  %258 = load <2 x i64>, ptr %vacc01234567201, align 16, !tbaa !10
  %259 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call231 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %258, <2 x i64> noundef %259)
  store <2 x i64> %call231, ptr %vacc0123230, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567232) #6
  %260 = load <2 x i64>, ptr %vacc01234567201, align 16, !tbaa !10
  %261 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call233 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %260, <2 x i64> noundef %261)
  store <2 x i64> %call233, ptr %vacc4567232, align 16, !tbaa !10
  %262 = load <2 x i64>, ptr %vacc0123230, align 16, !tbaa !10
  %263 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %call234 = call <2 x i64> @_mm_load_si128(ptr noundef %263)
  %call235 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %262, <2 x i64> noundef %call234)
  store <2 x i64> %call235, ptr %vacc0123230, align 16, !tbaa !10
  %264 = load <2 x i64>, ptr %vacc4567232, align 16, !tbaa !10
  %265 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr236 = getelementptr inbounds i32, ptr %265, i64 4
  %call237 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr236)
  %call238 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %264, <2 x i64> noundef %call237)
  store <2 x i64> %call238, ptr %vacc4567232, align 16, !tbaa !10
  %266 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr239 = getelementptr inbounds i32, ptr %266, i64 8
  store ptr %add.ptr239, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123) #6
  %267 = load <2 x i64>, ptr %vacc0123230, align 16, !tbaa !10
  %call240 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %267)
  store <4 x float> %call240, ptr %vfpacc0123, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567) #6
  %268 = load <2 x i64>, ptr %vacc4567232, align 16, !tbaa !10
  %call241 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %268)
  store <4 x float> %call241, ptr %vfpacc4567, align 16, !tbaa !10
  %269 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !10
  %270 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call242 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %269, <4 x float> noundef %270)
  store <4 x float> %call242, ptr %vfpacc0123, align 16, !tbaa !10
  %271 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !10
  %272 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call243 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %271, <4 x float> noundef %272)
  store <4 x float> %call243, ptr %vfpacc4567, align 16, !tbaa !10
  %273 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !10
  %274 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call244 = call <4 x float> @_mm_min_ps(<4 x float> noundef %273, <4 x float> noundef %274)
  store <4 x float> %call244, ptr %vfpacc0123, align 16, !tbaa !10
  %275 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !10
  %276 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call245 = call <4 x float> @_mm_min_ps(<4 x float> noundef %275, <4 x float> noundef %276)
  store <4 x float> %call245, ptr %vfpacc4567, align 16, !tbaa !10
  %277 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !10
  %call246 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %277)
  store <2 x i64> %call246, ptr %vacc0123230, align 16, !tbaa !10
  %278 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !10
  %call247 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %278)
  store <2 x i64> %call247, ptr %vacc4567232, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #6
  %279 = load <2 x i64>, ptr %vacc0123230, align 16, !tbaa !10
  %280 = load <2 x i64>, ptr %vacc4567232, align 16, !tbaa !10
  %call248 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %279, <2 x i64> noundef %280)
  %281 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !10
  %call249 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call248, <2 x i64> noundef %281)
  store <2 x i64> %call249, ptr %vout01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #6
  %282 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !10
  %283 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !10
  %call250 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %282, <2 x i64> noundef %283)
  store <2 x i64> %call250, ptr %vout0123456701234567, align 16, !tbaa !10
  %284 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !10
  %285 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !10
  %call251 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %284, <2 x i64> noundef %285)
  store <2 x i64> %call251, ptr %vout0123456701234567, align 16, !tbaa !10
  %286 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %287 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !10
  call void @_mm_storel_epi64(ptr noundef %286, <2 x i64> noundef %287)
  %288 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr252 = getelementptr inbounds i8, ptr %288, i64 8
  store ptr %add.ptr252, ptr %output.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567232) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123230) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567227) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567223) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567221) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567217) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567215) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567211) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567209) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567205) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567203) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567201) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567198) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567196) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567193) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567191) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567188) #6
  br label %for.inc253

for.inc253:                                       ; preds = %for.body187
  %289 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %sub254 = sub i64 %289, 8
  store i64 %sub254, ptr %channels.addr, align 8, !tbaa !4
  br label %for.cond184

for.end255:                                       ; preds = %for.cond184
  %290 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp256 = icmp ne i64 %290, 0
  %lnot258 = xor i1 %cmp256, true
  %lnot260 = xor i1 %lnot258, true
  %lnot.ext261 = zext i1 %lnot260 to i32
  %conv262 = sext i32 %lnot.ext261 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv262, i64 0)
  %tobool263 = icmp ne i64 %expval, 0
  br i1 %tobool263, label %if.then264, label %if.end351

if.then264:                                       ; preds = %for.end255
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567265) #6
  %291 = load ptr, ptr %i0, align 8, !tbaa !8
  %call266 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %291)
  store <2 x i64> %call266, ptr %vi0x01234567265, align 16, !tbaa !10
  %292 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr267 = getelementptr inbounds i8, ptr %292, i64 8
  store ptr %add.ptr267, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567268) #6
  %293 = load ptr, ptr %i1, align 8, !tbaa !8
  %call269 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %293)
  store <2 x i64> %call269, ptr %vi1x01234567268, align 16, !tbaa !10
  %294 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr270 = getelementptr inbounds i8, ptr %294, i64 8
  store ptr %add.ptr270, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567271) #6
  %295 = load <2 x i64>, ptr %vi0x01234567265, align 16, !tbaa !10
  %296 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call272 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %295, <2 x i64> noundef %296)
  store <2 x i64> %call272, ptr %vxi0x01234567271, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567273) #6
  %297 = load ptr, ptr %i2, align 8, !tbaa !8
  %call274 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %297)
  store <2 x i64> %call274, ptr %vi2x01234567273, align 16, !tbaa !10
  %298 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr275 = getelementptr inbounds i8, ptr %298, i64 8
  store ptr %add.ptr275, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567276) #6
  %299 = load <2 x i64>, ptr %vi1x01234567268, align 16, !tbaa !10
  %300 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call277 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %299, <2 x i64> noundef %300)
  store <2 x i64> %call277, ptr %vxi1x01234567276, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567278) #6
  %301 = load ptr, ptr %i3, align 8, !tbaa !8
  %call279 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %301)
  store <2 x i64> %call279, ptr %vi3x01234567278, align 16, !tbaa !10
  %302 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr280 = getelementptr inbounds i8, ptr %302, i64 8
  store ptr %add.ptr280, ptr %i3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567281) #6
  %303 = load <2 x i64>, ptr %vxi0x01234567271, align 16, !tbaa !10
  %304 = load <2 x i64>, ptr %vxi1x01234567276, align 16, !tbaa !10
  %call282 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %303, <2 x i64> noundef %304)
  store <2 x i64> %call282, ptr %vacc01234567281, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567283) #6
  %305 = load <2 x i64>, ptr %vi2x01234567273, align 16, !tbaa !10
  %306 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call284 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %305, <2 x i64> noundef %306)
  store <2 x i64> %call284, ptr %vxi2x01234567283, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567285) #6
  %307 = load ptr, ptr %i4, align 8, !tbaa !8
  %call286 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %307)
  store <2 x i64> %call286, ptr %vi4x01234567285, align 16, !tbaa !10
  %308 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr287 = getelementptr inbounds i8, ptr %308, i64 8
  store ptr %add.ptr287, ptr %i4, align 8, !tbaa !8
  %309 = load <2 x i64>, ptr %vacc01234567281, align 16, !tbaa !10
  %310 = load <2 x i64>, ptr %vxi2x01234567283, align 16, !tbaa !10
  %call288 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %309, <2 x i64> noundef %310)
  store <2 x i64> %call288, ptr %vacc01234567281, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567289) #6
  %311 = load <2 x i64>, ptr %vi3x01234567278, align 16, !tbaa !10
  %312 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call290 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %311, <2 x i64> noundef %312)
  store <2 x i64> %call290, ptr %vxi3x01234567289, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567291) #6
  %313 = load ptr, ptr %i5, align 8, !tbaa !8
  %call292 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %313)
  store <2 x i64> %call292, ptr %vi5x01234567291, align 16, !tbaa !10
  %314 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr293 = getelementptr inbounds i8, ptr %314, i64 8
  store ptr %add.ptr293, ptr %i5, align 8, !tbaa !8
  %315 = load <2 x i64>, ptr %vacc01234567281, align 16, !tbaa !10
  %316 = load <2 x i64>, ptr %vxi3x01234567289, align 16, !tbaa !10
  %call294 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %315, <2 x i64> noundef %316)
  store <2 x i64> %call294, ptr %vacc01234567281, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567295) #6
  %317 = load <2 x i64>, ptr %vi4x01234567285, align 16, !tbaa !10
  %318 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call296 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %317, <2 x i64> noundef %318)
  store <2 x i64> %call296, ptr %vxi4x01234567295, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567297) #6
  %319 = load ptr, ptr %i6, align 8, !tbaa !8
  %call298 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %319)
  store <2 x i64> %call298, ptr %vi6x01234567297, align 16, !tbaa !10
  %320 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr299 = getelementptr inbounds i8, ptr %320, i64 8
  store ptr %add.ptr299, ptr %i6, align 8, !tbaa !8
  %321 = load <2 x i64>, ptr %vacc01234567281, align 16, !tbaa !10
  %322 = load <2 x i64>, ptr %vxi4x01234567295, align 16, !tbaa !10
  %call300 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %321, <2 x i64> noundef %322)
  store <2 x i64> %call300, ptr %vacc01234567281, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567301) #6
  %323 = load <2 x i64>, ptr %vi5x01234567291, align 16, !tbaa !10
  %324 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call302 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %323, <2 x i64> noundef %324)
  store <2 x i64> %call302, ptr %vxi5x01234567301, align 16, !tbaa !10
  %325 = load <2 x i64>, ptr %vacc01234567281, align 16, !tbaa !10
  %326 = load <2 x i64>, ptr %vxi5x01234567301, align 16, !tbaa !10
  %call303 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %325, <2 x i64> noundef %326)
  store <2 x i64> %call303, ptr %vacc01234567281, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567304) #6
  %327 = load <2 x i64>, ptr %vi6x01234567297, align 16, !tbaa !10
  %328 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call305 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %327, <2 x i64> noundef %328)
  store <2 x i64> %call305, ptr %vxi6x01234567304, align 16, !tbaa !10
  %329 = load <2 x i64>, ptr %vacc01234567281, align 16, !tbaa !10
  %330 = load <2 x i64>, ptr %vxi6x01234567304, align 16, !tbaa !10
  %call306 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %329, <2 x i64> noundef %330)
  store <2 x i64> %call306, ptr %vacc01234567281, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123307) #6
  %331 = load <2 x i64>, ptr %vacc01234567281, align 16, !tbaa !10
  %332 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call308 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %331, <2 x i64> noundef %332)
  store <2 x i64> %call308, ptr %vacc0123307, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567309) #6
  %333 = load <2 x i64>, ptr %vacc01234567281, align 16, !tbaa !10
  %334 = load <2 x i64>, ptr %vzero, align 16, !tbaa !10
  %call310 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %333, <2 x i64> noundef %334)
  store <2 x i64> %call310, ptr %vacc4567309, align 16, !tbaa !10
  %335 = load <2 x i64>, ptr %vacc0123307, align 16, !tbaa !10
  %336 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %call311 = call <2 x i64> @_mm_load_si128(ptr noundef %336)
  %call312 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %335, <2 x i64> noundef %call311)
  store <2 x i64> %call312, ptr %vacc0123307, align 16, !tbaa !10
  %337 = load <2 x i64>, ptr %vacc4567309, align 16, !tbaa !10
  %338 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr313 = getelementptr inbounds i32, ptr %338, i64 4
  %call314 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr313)
  %call315 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %337, <2 x i64> noundef %call314)
  store <2 x i64> %call315, ptr %vacc4567309, align 16, !tbaa !10
  %339 = load ptr, ptr %buffer.addr, align 8, !tbaa !8
  %add.ptr316 = getelementptr inbounds i32, ptr %339, i64 8
  store ptr %add.ptr316, ptr %buffer.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123317) #6
  %340 = load <2 x i64>, ptr %vacc0123307, align 16, !tbaa !10
  %call318 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %340)
  store <4 x float> %call318, ptr %vfpacc0123317, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567319) #6
  %341 = load <2 x i64>, ptr %vacc4567309, align 16, !tbaa !10
  %call320 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %341)
  store <4 x float> %call320, ptr %vfpacc4567319, align 16, !tbaa !10
  %342 = load <4 x float>, ptr %vfpacc0123317, align 16, !tbaa !10
  %343 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call321 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %342, <4 x float> noundef %343)
  store <4 x float> %call321, ptr %vfpacc0123317, align 16, !tbaa !10
  %344 = load <4 x float>, ptr %vfpacc4567319, align 16, !tbaa !10
  %345 = load <4 x float>, ptr %vscale, align 16, !tbaa !10
  %call322 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %344, <4 x float> noundef %345)
  store <4 x float> %call322, ptr %vfpacc4567319, align 16, !tbaa !10
  %346 = load <4 x float>, ptr %vfpacc0123317, align 16, !tbaa !10
  %347 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call323 = call <4 x float> @_mm_min_ps(<4 x float> noundef %346, <4 x float> noundef %347)
  store <4 x float> %call323, ptr %vfpacc0123317, align 16, !tbaa !10
  %348 = load <4 x float>, ptr %vfpacc4567319, align 16, !tbaa !10
  %349 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !10
  %call324 = call <4 x float> @_mm_min_ps(<4 x float> noundef %348, <4 x float> noundef %349)
  store <4 x float> %call324, ptr %vfpacc4567319, align 16, !tbaa !10
  %350 = load <4 x float>, ptr %vfpacc0123317, align 16, !tbaa !10
  %call325 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %350)
  store <2 x i64> %call325, ptr %vacc0123307, align 16, !tbaa !10
  %351 = load <4 x float>, ptr %vfpacc4567319, align 16, !tbaa !10
  %call326 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %351)
  store <2 x i64> %call326, ptr %vacc4567309, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567327) #6
  %352 = load <2 x i64>, ptr %vacc0123307, align 16, !tbaa !10
  %353 = load <2 x i64>, ptr %vacc4567309, align 16, !tbaa !10
  %call328 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %352, <2 x i64> noundef %353)
  %354 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !10
  %call329 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call328, <2 x i64> noundef %354)
  store <2 x i64> %call329, ptr %vout01234567327, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567330) #6
  %355 = load <2 x i64>, ptr %vout01234567327, align 16, !tbaa !10
  %356 = load <2 x i64>, ptr %vout01234567327, align 16, !tbaa !10
  %call331 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %355, <2 x i64> noundef %356)
  store <2 x i64> %call331, ptr %vout0123456701234567330, align 16, !tbaa !10
  %357 = load <2 x i64>, ptr %vout0123456701234567330, align 16, !tbaa !10
  %358 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !10
  %call332 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %357, <2 x i64> noundef %358)
  store <2 x i64> %call332, ptr %vout0123456701234567330, align 16, !tbaa !10
  %359 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and = and i64 %359, 4
  %tobool333 = icmp ne i64 %and, 0
  br i1 %tobool333, label %if.then334, label %if.end338

if.then334:                                       ; preds = %if.then264
  %360 = load <2 x i64>, ptr %vout0123456701234567330, align 16, !tbaa !10
  %call335 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %360)
  %361 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i32 %call335, ptr %361, align 4, !tbaa !12
  %362 = load <2 x i64>, ptr %vout0123456701234567330, align 16, !tbaa !10
  %call336 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %362, i32 noundef 32)
  store <2 x i64> %call336, ptr %vout0123456701234567330, align 16, !tbaa !10
  %363 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr337 = getelementptr inbounds i8, ptr %363, i64 4
  store ptr %add.ptr337, ptr %output.addr, align 8, !tbaa !8
  br label %if.end338

if.end338:                                        ; preds = %if.then334, %if.then264
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0123) #6
  %364 = load <2 x i64>, ptr %vout0123456701234567330, align 16, !tbaa !10
  %call339 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %364)
  store i32 %call339, ptr %vout0123, align 4, !tbaa !12
  %365 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and340 = and i64 %365, 2
  %tobool341 = icmp ne i64 %and340, 0
  br i1 %tobool341, label %if.then342, label %if.end345

if.then342:                                       ; preds = %if.end338
  %366 = load i32, ptr %vout0123, align 4, !tbaa !12
  %conv343 = trunc i32 %366 to i16
  %367 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i16 %conv343, ptr %367, align 2, !tbaa !14
  %368 = load i32, ptr %vout0123, align 4, !tbaa !12
  %shr = lshr i32 %368, 16
  store i32 %shr, ptr %vout0123, align 4, !tbaa !12
  %369 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr344 = getelementptr inbounds i8, ptr %369, i64 2
  store ptr %add.ptr344, ptr %output.addr, align 8, !tbaa !8
  br label %if.end345

if.end345:                                        ; preds = %if.then342, %if.end338
  %370 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and346 = and i64 %370, 1
  %tobool347 = icmp ne i64 %and346, 0
  br i1 %tobool347, label %if.then348, label %if.end350

if.then348:                                       ; preds = %if.end345
  %371 = load i32, ptr %vout0123, align 4, !tbaa !12
  %conv349 = trunc i32 %371 to i8
  %372 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i8 %conv349, ptr %372, align 1, !tbaa !10
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %if.end345
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567330) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567327) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567319) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123317) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567309) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123307) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567304) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567301) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567297) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567295) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567291) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567289) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567285) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567283) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567281) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567278) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567276) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567273) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567271) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567268) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567265) #6
  br label %if.end351

if.end351:                                        ; preds = %if.end350, %for.end255
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vzero) #6
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
define internal <2 x i64> @_mm_setzero_si128() #3 {
entry:
  %.compoundliteral = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !10
  ret <2 x i64> %0
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
define internal <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
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
define internal <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
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
define internal <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %1, <16 x i8> %3)
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
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

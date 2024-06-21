; ModuleID = 'samples/221.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-dwconv/gen/up8x25-minmax-fp32-avx2-mul32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [16 x i16], [8 x float], [8 x float], [16 x i16], [32 x i8] }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
entry:
  %channels.addr = alloca i64, align 8
  %output_width.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %weights.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %output_increment.addr = alloca i64, align 8
  %input_offset.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vk_zero_point = alloca <4 x i64>, align 32
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %i7 = alloca ptr, align 8
  %i8 = alloca ptr, align 8
  %i9 = alloca ptr, align 8
  %i10 = alloca ptr, align 8
  %i11 = alloca ptr, align 8
  %i12 = alloca ptr, align 8
  %i13 = alloca ptr, align 8
  %i14 = alloca ptr, align 8
  %i15 = alloca ptr, align 8
  %i16 = alloca ptr, align 8
  %i17 = alloca ptr, align 8
  %i18 = alloca ptr, align 8
  %i19 = alloca ptr, align 8
  %i20 = alloca ptr, align 8
  %i21 = alloca ptr, align 8
  %i22 = alloca ptr, align 8
  %i23 = alloca ptr, align 8
  %i24 = alloca ptr, align 8
  %c = alloca i64, align 8
  %w = alloca ptr, align 8
  %vacc01234567 = alloca <4 x i64>, align 32
  %vi0x01234567 = alloca <4 x i64>, align 32
  %vk0x01234567 = alloca <4 x i64>, align 32
  %vi1x01234567 = alloca <4 x i64>, align 32
  %vk1x01234567 = alloca <4 x i64>, align 32
  %vi2x01234567 = alloca <4 x i64>, align 32
  %vk2x01234567 = alloca <4 x i64>, align 32
  %vi3x01234567 = alloca <4 x i64>, align 32
  %vk3x01234567 = alloca <4 x i64>, align 32
  %vi4x01234567 = alloca <4 x i64>, align 32
  %vk4x01234567 = alloca <4 x i64>, align 32
  %vi5x01234567 = alloca <4 x i64>, align 32
  %vk5x01234567 = alloca <4 x i64>, align 32
  %vi6x01234567 = alloca <4 x i64>, align 32
  %vk6x01234567 = alloca <4 x i64>, align 32
  %vi7x01234567 = alloca <4 x i64>, align 32
  %vk7x01234567 = alloca <4 x i64>, align 32
  %vi8x01234567 = alloca <4 x i64>, align 32
  %vk8x01234567 = alloca <4 x i64>, align 32
  %vi9x01234567 = alloca <4 x i64>, align 32
  %vk9x01234567 = alloca <4 x i64>, align 32
  %vi10x01234567 = alloca <4 x i64>, align 32
  %vk10x01234567 = alloca <4 x i64>, align 32
  %vi11x01234567 = alloca <4 x i64>, align 32
  %vk11x01234567 = alloca <4 x i64>, align 32
  %vi12x01234567 = alloca <4 x i64>, align 32
  %vk12x01234567 = alloca <4 x i64>, align 32
  %vi13x01234567 = alloca <4 x i64>, align 32
  %vk13x01234567 = alloca <4 x i64>, align 32
  %vi14x01234567 = alloca <4 x i64>, align 32
  %vk14x01234567 = alloca <4 x i64>, align 32
  %vi15x01234567 = alloca <4 x i64>, align 32
  %vk15x01234567 = alloca <4 x i64>, align 32
  %vi16x01234567 = alloca <4 x i64>, align 32
  %vk16x01234567 = alloca <4 x i64>, align 32
  %vi17x01234567 = alloca <4 x i64>, align 32
  %vk17x01234567 = alloca <4 x i64>, align 32
  %vi18x01234567 = alloca <4 x i64>, align 32
  %vk18x01234567 = alloca <4 x i64>, align 32
  %vi19x01234567 = alloca <4 x i64>, align 32
  %vk19x01234567 = alloca <4 x i64>, align 32
  %vi20x01234567 = alloca <4 x i64>, align 32
  %vk20x01234567 = alloca <4 x i64>, align 32
  %vi21x01234567 = alloca <4 x i64>, align 32
  %vk21x01234567 = alloca <4 x i64>, align 32
  %vi22x01234567 = alloca <4 x i64>, align 32
  %vk22x01234567 = alloca <4 x i64>, align 32
  %vi23x01234567 = alloca <4 x i64>, align 32
  %vk23x01234567 = alloca <4 x i64>, align 32
  %vi24x01234567 = alloca <4 x i64>, align 32
  %vk24x01234567 = alloca <4 x i64>, align 32
  %vscaled01234567 = alloca <8 x float>, align 32
  %vscale = alloca <8 x float>, align 32
  %voutput_max_less_zero_point = alloca <8 x float>, align 32
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vacc01234567573 = alloca <4 x i64>, align 32
  %vi0x01234567575 = alloca <4 x i64>, align 32
  %vk0x01234567578 = alloca <4 x i64>, align 32
  %vi1x01234567586 = alloca <4 x i64>, align 32
  %vk1x01234567589 = alloca <4 x i64>, align 32
  %vi2x01234567597 = alloca <4 x i64>, align 32
  %vk2x01234567600 = alloca <4 x i64>, align 32
  %vi3x01234567608 = alloca <4 x i64>, align 32
  %vk3x01234567611 = alloca <4 x i64>, align 32
  %vi4x01234567619 = alloca <4 x i64>, align 32
  %vk4x01234567622 = alloca <4 x i64>, align 32
  %vi5x01234567630 = alloca <4 x i64>, align 32
  %vk5x01234567633 = alloca <4 x i64>, align 32
  %vi6x01234567641 = alloca <4 x i64>, align 32
  %vk6x01234567644 = alloca <4 x i64>, align 32
  %vi7x01234567652 = alloca <4 x i64>, align 32
  %vk7x01234567655 = alloca <4 x i64>, align 32
  %vi8x01234567663 = alloca <4 x i64>, align 32
  %vk8x01234567666 = alloca <4 x i64>, align 32
  %vi9x01234567674 = alloca <4 x i64>, align 32
  %vk9x01234567677 = alloca <4 x i64>, align 32
  %vi10x01234567685 = alloca <4 x i64>, align 32
  %vk10x01234567688 = alloca <4 x i64>, align 32
  %vi11x01234567696 = alloca <4 x i64>, align 32
  %vk11x01234567699 = alloca <4 x i64>, align 32
  %vi12x01234567707 = alloca <4 x i64>, align 32
  %vk12x01234567710 = alloca <4 x i64>, align 32
  %vi13x01234567718 = alloca <4 x i64>, align 32
  %vk13x01234567721 = alloca <4 x i64>, align 32
  %vi14x01234567729 = alloca <4 x i64>, align 32
  %vk14x01234567732 = alloca <4 x i64>, align 32
  %vi15x01234567740 = alloca <4 x i64>, align 32
  %vk15x01234567743 = alloca <4 x i64>, align 32
  %vi16x01234567751 = alloca <4 x i64>, align 32
  %vk16x01234567754 = alloca <4 x i64>, align 32
  %vi17x01234567762 = alloca <4 x i64>, align 32
  %vk17x01234567765 = alloca <4 x i64>, align 32
  %vi18x01234567773 = alloca <4 x i64>, align 32
  %vk18x01234567776 = alloca <4 x i64>, align 32
  %vi19x01234567784 = alloca <4 x i64>, align 32
  %vk19x01234567787 = alloca <4 x i64>, align 32
  %vi20x01234567795 = alloca <4 x i64>, align 32
  %vk20x01234567798 = alloca <4 x i64>, align 32
  %vi21x01234567806 = alloca <4 x i64>, align 32
  %vk21x01234567809 = alloca <4 x i64>, align 32
  %vi22x01234567817 = alloca <4 x i64>, align 32
  %vk22x01234567820 = alloca <4 x i64>, align 32
  %vi23x01234567828 = alloca <4 x i64>, align 32
  %vk23x01234567831 = alloca <4 x i64>, align 32
  %vi24x01234567839 = alloca <4 x i64>, align 32
  %vk24x01234567842 = alloca <4 x i64>, align 32
  %vscaled01234567850 = alloca <8 x float>, align 32
  %voutput_zero_point861 = alloca <2 x i64>, align 16
  %vout01234567865 = alloca <2 x i64>, align 16
  %vout0123456701234567870 = alloca <2 x i64>, align 16
  %voutput_min872 = alloca <2 x i64>, align 16
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !5
  store i64 %output_width, ptr %output_width.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !5
  store i64 %output_increment, ptr %output_increment.addr, align 8, !tbaa !5
  store i64 %input_offset, ptr %input_offset.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk_zero_point) #6
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %kernel_zero_point = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], ptr %kernel_zero_point, i64 0, i64 0
  %call = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay)
  %call1 = call <4 x i64> @_mm256_cvtepu16_epi32(<2 x i64> noundef %call)
  store <4 x i64> %call1, ptr %vk_zero_point, align 32, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #6
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %2, ptr %i0, align 8, !tbaa !9
  %3 = load ptr, ptr %i0, align 8, !tbaa !9
  %4 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %3, %4
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !12

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %i0, align 8, !tbaa !9
  %6 = ptrtoint ptr %5 to i64
  %7 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add = add i64 %6, %7
  %8 = inttoptr i64 %add to ptr
  store ptr %8, ptr %i0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #6
  %9 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx3, align 8, !tbaa !9
  store ptr %10, ptr %i1, align 8, !tbaa !9
  %11 = load ptr, ptr %i1, align 8, !tbaa !9
  %12 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp4 = icmp ne ptr %11, %12
  %lnot6 = xor i1 %cmp4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.end14, !unpredictable !12

if.then12:                                        ; preds = %if.end
  %13 = load ptr, ptr %i1, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add13 = add i64 %14, %15
  %16 = inttoptr i64 %add13 to ptr
  store ptr %16, ptr %i1, align 8, !tbaa !9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #6
  %17 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx15, align 8, !tbaa !9
  store ptr %18, ptr %i2, align 8, !tbaa !9
  %19 = load ptr, ptr %i2, align 8, !tbaa !9
  %20 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp16 = icmp ne ptr %19, %20
  %lnot18 = xor i1 %cmp16, true
  %lnot20 = xor i1 %lnot18, true
  %lnot.ext21 = zext i1 %lnot20 to i32
  %conv22 = sext i32 %lnot.ext21 to i64
  %tobool23 = icmp ne i64 %conv22, 0
  br i1 %tobool23, label %if.then24, label %if.end26, !unpredictable !12

if.then24:                                        ; preds = %if.end14
  %21 = load ptr, ptr %i2, align 8, !tbaa !9
  %22 = ptrtoint ptr %21 to i64
  %23 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add25 = add i64 %22, %23
  %24 = inttoptr i64 %add25 to ptr
  store ptr %24, ptr %i2, align 8, !tbaa !9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #6
  %25 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds ptr, ptr %25, i64 3
  %26 = load ptr, ptr %arrayidx27, align 8, !tbaa !9
  store ptr %26, ptr %i3, align 8, !tbaa !9
  %27 = load ptr, ptr %i3, align 8, !tbaa !9
  %28 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp28 = icmp ne ptr %27, %28
  %lnot30 = xor i1 %cmp28, true
  %lnot32 = xor i1 %lnot30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %tobool35 = icmp ne i64 %conv34, 0
  br i1 %tobool35, label %if.then36, label %if.end38, !unpredictable !12

if.then36:                                        ; preds = %if.end26
  %29 = load ptr, ptr %i3, align 8, !tbaa !9
  %30 = ptrtoint ptr %29 to i64
  %31 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add37 = add i64 %30, %31
  %32 = inttoptr i64 %add37 to ptr
  store ptr %32, ptr %i3, align 8, !tbaa !9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #6
  %33 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx39 = getelementptr inbounds ptr, ptr %33, i64 4
  %34 = load ptr, ptr %arrayidx39, align 8, !tbaa !9
  store ptr %34, ptr %i4, align 8, !tbaa !9
  %35 = load ptr, ptr %i4, align 8, !tbaa !9
  %36 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp40 = icmp ne ptr %35, %36
  %lnot42 = xor i1 %cmp40, true
  %lnot44 = xor i1 %lnot42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %tobool47 = icmp ne i64 %conv46, 0
  br i1 %tobool47, label %if.then48, label %if.end50, !unpredictable !12

if.then48:                                        ; preds = %if.end38
  %37 = load ptr, ptr %i4, align 8, !tbaa !9
  %38 = ptrtoint ptr %37 to i64
  %39 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add49 = add i64 %38, %39
  %40 = inttoptr i64 %add49 to ptr
  store ptr %40, ptr %i4, align 8, !tbaa !9
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #6
  %41 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx51 = getelementptr inbounds ptr, ptr %41, i64 5
  %42 = load ptr, ptr %arrayidx51, align 8, !tbaa !9
  store ptr %42, ptr %i5, align 8, !tbaa !9
  %43 = load ptr, ptr %i5, align 8, !tbaa !9
  %44 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp52 = icmp ne ptr %43, %44
  %lnot54 = xor i1 %cmp52, true
  %lnot56 = xor i1 %lnot54, true
  %lnot.ext57 = zext i1 %lnot56 to i32
  %conv58 = sext i32 %lnot.ext57 to i64
  %tobool59 = icmp ne i64 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.end62, !unpredictable !12

if.then60:                                        ; preds = %if.end50
  %45 = load ptr, ptr %i5, align 8, !tbaa !9
  %46 = ptrtoint ptr %45 to i64
  %47 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add61 = add i64 %46, %47
  %48 = inttoptr i64 %add61 to ptr
  store ptr %48, ptr %i5, align 8, !tbaa !9
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #6
  %49 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx63 = getelementptr inbounds ptr, ptr %49, i64 6
  %50 = load ptr, ptr %arrayidx63, align 8, !tbaa !9
  store ptr %50, ptr %i6, align 8, !tbaa !9
  %51 = load ptr, ptr %i6, align 8, !tbaa !9
  %52 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp64 = icmp ne ptr %51, %52
  %lnot66 = xor i1 %cmp64, true
  %lnot68 = xor i1 %lnot66, true
  %lnot.ext69 = zext i1 %lnot68 to i32
  %conv70 = sext i32 %lnot.ext69 to i64
  %tobool71 = icmp ne i64 %conv70, 0
  br i1 %tobool71, label %if.then72, label %if.end74, !unpredictable !12

if.then72:                                        ; preds = %if.end62
  %53 = load ptr, ptr %i6, align 8, !tbaa !9
  %54 = ptrtoint ptr %53 to i64
  %55 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add73 = add i64 %54, %55
  %56 = inttoptr i64 %add73 to ptr
  store ptr %56, ptr %i6, align 8, !tbaa !9
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end62
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #6
  %57 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx75 = getelementptr inbounds ptr, ptr %57, i64 7
  %58 = load ptr, ptr %arrayidx75, align 8, !tbaa !9
  store ptr %58, ptr %i7, align 8, !tbaa !9
  %59 = load ptr, ptr %i7, align 8, !tbaa !9
  %60 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp76 = icmp ne ptr %59, %60
  %lnot78 = xor i1 %cmp76, true
  %lnot80 = xor i1 %lnot78, true
  %lnot.ext81 = zext i1 %lnot80 to i32
  %conv82 = sext i32 %lnot.ext81 to i64
  %tobool83 = icmp ne i64 %conv82, 0
  br i1 %tobool83, label %if.then84, label %if.end86, !unpredictable !12

if.then84:                                        ; preds = %if.end74
  %61 = load ptr, ptr %i7, align 8, !tbaa !9
  %62 = ptrtoint ptr %61 to i64
  %63 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add85 = add i64 %62, %63
  %64 = inttoptr i64 %add85 to ptr
  store ptr %64, ptr %i7, align 8, !tbaa !9
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end74
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #6
  %65 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds ptr, ptr %65, i64 8
  %66 = load ptr, ptr %arrayidx87, align 8, !tbaa !9
  store ptr %66, ptr %i8, align 8, !tbaa !9
  %67 = load ptr, ptr %i8, align 8, !tbaa !9
  %68 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp88 = icmp ne ptr %67, %68
  %lnot90 = xor i1 %cmp88, true
  %lnot92 = xor i1 %lnot90, true
  %lnot.ext93 = zext i1 %lnot92 to i32
  %conv94 = sext i32 %lnot.ext93 to i64
  %tobool95 = icmp ne i64 %conv94, 0
  br i1 %tobool95, label %if.then96, label %if.end98, !unpredictable !12

if.then96:                                        ; preds = %if.end86
  %69 = load ptr, ptr %i8, align 8, !tbaa !9
  %70 = ptrtoint ptr %69 to i64
  %71 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add97 = add i64 %70, %71
  %72 = inttoptr i64 %add97 to ptr
  store ptr %72, ptr %i8, align 8, !tbaa !9
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end86
  call void @llvm.lifetime.start.p0(i64 8, ptr %i9) #6
  %73 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx99 = getelementptr inbounds ptr, ptr %73, i64 9
  %74 = load ptr, ptr %arrayidx99, align 8, !tbaa !9
  store ptr %74, ptr %i9, align 8, !tbaa !9
  %75 = load ptr, ptr %i9, align 8, !tbaa !9
  %76 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp100 = icmp ne ptr %75, %76
  %lnot102 = xor i1 %cmp100, true
  %lnot104 = xor i1 %lnot102, true
  %lnot.ext105 = zext i1 %lnot104 to i32
  %conv106 = sext i32 %lnot.ext105 to i64
  %tobool107 = icmp ne i64 %conv106, 0
  br i1 %tobool107, label %if.then108, label %if.end110, !unpredictable !12

if.then108:                                       ; preds = %if.end98
  %77 = load ptr, ptr %i9, align 8, !tbaa !9
  %78 = ptrtoint ptr %77 to i64
  %79 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add109 = add i64 %78, %79
  %80 = inttoptr i64 %add109 to ptr
  store ptr %80, ptr %i9, align 8, !tbaa !9
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end98
  call void @llvm.lifetime.start.p0(i64 8, ptr %i10) #6
  %81 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx111 = getelementptr inbounds ptr, ptr %81, i64 10
  %82 = load ptr, ptr %arrayidx111, align 8, !tbaa !9
  store ptr %82, ptr %i10, align 8, !tbaa !9
  %83 = load ptr, ptr %i10, align 8, !tbaa !9
  %84 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp112 = icmp ne ptr %83, %84
  %lnot114 = xor i1 %cmp112, true
  %lnot116 = xor i1 %lnot114, true
  %lnot.ext117 = zext i1 %lnot116 to i32
  %conv118 = sext i32 %lnot.ext117 to i64
  %tobool119 = icmp ne i64 %conv118, 0
  br i1 %tobool119, label %if.then120, label %if.end122, !unpredictable !12

if.then120:                                       ; preds = %if.end110
  %85 = load ptr, ptr %i10, align 8, !tbaa !9
  %86 = ptrtoint ptr %85 to i64
  %87 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add121 = add i64 %86, %87
  %88 = inttoptr i64 %add121 to ptr
  store ptr %88, ptr %i10, align 8, !tbaa !9
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end110
  call void @llvm.lifetime.start.p0(i64 8, ptr %i11) #6
  %89 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx123 = getelementptr inbounds ptr, ptr %89, i64 11
  %90 = load ptr, ptr %arrayidx123, align 8, !tbaa !9
  store ptr %90, ptr %i11, align 8, !tbaa !9
  %91 = load ptr, ptr %i11, align 8, !tbaa !9
  %92 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp124 = icmp ne ptr %91, %92
  %lnot126 = xor i1 %cmp124, true
  %lnot128 = xor i1 %lnot126, true
  %lnot.ext129 = zext i1 %lnot128 to i32
  %conv130 = sext i32 %lnot.ext129 to i64
  %tobool131 = icmp ne i64 %conv130, 0
  br i1 %tobool131, label %if.then132, label %if.end134, !unpredictable !12

if.then132:                                       ; preds = %if.end122
  %93 = load ptr, ptr %i11, align 8, !tbaa !9
  %94 = ptrtoint ptr %93 to i64
  %95 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add133 = add i64 %94, %95
  %96 = inttoptr i64 %add133 to ptr
  store ptr %96, ptr %i11, align 8, !tbaa !9
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end122
  call void @llvm.lifetime.start.p0(i64 8, ptr %i12) #6
  %97 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx135 = getelementptr inbounds ptr, ptr %97, i64 12
  %98 = load ptr, ptr %arrayidx135, align 8, !tbaa !9
  store ptr %98, ptr %i12, align 8, !tbaa !9
  %99 = load ptr, ptr %i12, align 8, !tbaa !9
  %100 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp136 = icmp ne ptr %99, %100
  %lnot138 = xor i1 %cmp136, true
  %lnot140 = xor i1 %lnot138, true
  %lnot.ext141 = zext i1 %lnot140 to i32
  %conv142 = sext i32 %lnot.ext141 to i64
  %tobool143 = icmp ne i64 %conv142, 0
  br i1 %tobool143, label %if.then144, label %if.end146, !unpredictable !12

if.then144:                                       ; preds = %if.end134
  %101 = load ptr, ptr %i12, align 8, !tbaa !9
  %102 = ptrtoint ptr %101 to i64
  %103 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add145 = add i64 %102, %103
  %104 = inttoptr i64 %add145 to ptr
  store ptr %104, ptr %i12, align 8, !tbaa !9
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end134
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #6
  %105 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx147 = getelementptr inbounds ptr, ptr %105, i64 13
  %106 = load ptr, ptr %arrayidx147, align 8, !tbaa !9
  store ptr %106, ptr %i13, align 8, !tbaa !9
  %107 = load ptr, ptr %i13, align 8, !tbaa !9
  %108 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp148 = icmp ne ptr %107, %108
  %lnot150 = xor i1 %cmp148, true
  %lnot152 = xor i1 %lnot150, true
  %lnot.ext153 = zext i1 %lnot152 to i32
  %conv154 = sext i32 %lnot.ext153 to i64
  %tobool155 = icmp ne i64 %conv154, 0
  br i1 %tobool155, label %if.then156, label %if.end158, !unpredictable !12

if.then156:                                       ; preds = %if.end146
  %109 = load ptr, ptr %i13, align 8, !tbaa !9
  %110 = ptrtoint ptr %109 to i64
  %111 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add157 = add i64 %110, %111
  %112 = inttoptr i64 %add157 to ptr
  store ptr %112, ptr %i13, align 8, !tbaa !9
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end146
  call void @llvm.lifetime.start.p0(i64 8, ptr %i14) #6
  %113 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx159 = getelementptr inbounds ptr, ptr %113, i64 14
  %114 = load ptr, ptr %arrayidx159, align 8, !tbaa !9
  store ptr %114, ptr %i14, align 8, !tbaa !9
  %115 = load ptr, ptr %i14, align 8, !tbaa !9
  %116 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp160 = icmp ne ptr %115, %116
  %lnot162 = xor i1 %cmp160, true
  %lnot164 = xor i1 %lnot162, true
  %lnot.ext165 = zext i1 %lnot164 to i32
  %conv166 = sext i32 %lnot.ext165 to i64
  %tobool167 = icmp ne i64 %conv166, 0
  br i1 %tobool167, label %if.then168, label %if.end170, !unpredictable !12

if.then168:                                       ; preds = %if.end158
  %117 = load ptr, ptr %i14, align 8, !tbaa !9
  %118 = ptrtoint ptr %117 to i64
  %119 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add169 = add i64 %118, %119
  %120 = inttoptr i64 %add169 to ptr
  store ptr %120, ptr %i14, align 8, !tbaa !9
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.end158
  call void @llvm.lifetime.start.p0(i64 8, ptr %i15) #6
  %121 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx171 = getelementptr inbounds ptr, ptr %121, i64 15
  %122 = load ptr, ptr %arrayidx171, align 8, !tbaa !9
  store ptr %122, ptr %i15, align 8, !tbaa !9
  %123 = load ptr, ptr %i15, align 8, !tbaa !9
  %124 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp172 = icmp ne ptr %123, %124
  %lnot174 = xor i1 %cmp172, true
  %lnot176 = xor i1 %lnot174, true
  %lnot.ext177 = zext i1 %lnot176 to i32
  %conv178 = sext i32 %lnot.ext177 to i64
  %tobool179 = icmp ne i64 %conv178, 0
  br i1 %tobool179, label %if.then180, label %if.end182, !unpredictable !12

if.then180:                                       ; preds = %if.end170
  %125 = load ptr, ptr %i15, align 8, !tbaa !9
  %126 = ptrtoint ptr %125 to i64
  %127 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add181 = add i64 %126, %127
  %128 = inttoptr i64 %add181 to ptr
  store ptr %128, ptr %i15, align 8, !tbaa !9
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end170
  call void @llvm.lifetime.start.p0(i64 8, ptr %i16) #6
  %129 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx183 = getelementptr inbounds ptr, ptr %129, i64 16
  %130 = load ptr, ptr %arrayidx183, align 8, !tbaa !9
  store ptr %130, ptr %i16, align 8, !tbaa !9
  %131 = load ptr, ptr %i16, align 8, !tbaa !9
  %132 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp184 = icmp ne ptr %131, %132
  %lnot186 = xor i1 %cmp184, true
  %lnot188 = xor i1 %lnot186, true
  %lnot.ext189 = zext i1 %lnot188 to i32
  %conv190 = sext i32 %lnot.ext189 to i64
  %tobool191 = icmp ne i64 %conv190, 0
  br i1 %tobool191, label %if.then192, label %if.end194, !unpredictable !12

if.then192:                                       ; preds = %if.end182
  %133 = load ptr, ptr %i16, align 8, !tbaa !9
  %134 = ptrtoint ptr %133 to i64
  %135 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add193 = add i64 %134, %135
  %136 = inttoptr i64 %add193 to ptr
  store ptr %136, ptr %i16, align 8, !tbaa !9
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end182
  call void @llvm.lifetime.start.p0(i64 8, ptr %i17) #6
  %137 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx195 = getelementptr inbounds ptr, ptr %137, i64 17
  %138 = load ptr, ptr %arrayidx195, align 8, !tbaa !9
  store ptr %138, ptr %i17, align 8, !tbaa !9
  %139 = load ptr, ptr %i17, align 8, !tbaa !9
  %140 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp196 = icmp ne ptr %139, %140
  %lnot198 = xor i1 %cmp196, true
  %lnot200 = xor i1 %lnot198, true
  %lnot.ext201 = zext i1 %lnot200 to i32
  %conv202 = sext i32 %lnot.ext201 to i64
  %tobool203 = icmp ne i64 %conv202, 0
  br i1 %tobool203, label %if.then204, label %if.end206, !unpredictable !12

if.then204:                                       ; preds = %if.end194
  %141 = load ptr, ptr %i17, align 8, !tbaa !9
  %142 = ptrtoint ptr %141 to i64
  %143 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add205 = add i64 %142, %143
  %144 = inttoptr i64 %add205 to ptr
  store ptr %144, ptr %i17, align 8, !tbaa !9
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.end194
  call void @llvm.lifetime.start.p0(i64 8, ptr %i18) #6
  %145 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx207 = getelementptr inbounds ptr, ptr %145, i64 18
  %146 = load ptr, ptr %arrayidx207, align 8, !tbaa !9
  store ptr %146, ptr %i18, align 8, !tbaa !9
  %147 = load ptr, ptr %i18, align 8, !tbaa !9
  %148 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp208 = icmp ne ptr %147, %148
  %lnot210 = xor i1 %cmp208, true
  %lnot212 = xor i1 %lnot210, true
  %lnot.ext213 = zext i1 %lnot212 to i32
  %conv214 = sext i32 %lnot.ext213 to i64
  %tobool215 = icmp ne i64 %conv214, 0
  br i1 %tobool215, label %if.then216, label %if.end218, !unpredictable !12

if.then216:                                       ; preds = %if.end206
  %149 = load ptr, ptr %i18, align 8, !tbaa !9
  %150 = ptrtoint ptr %149 to i64
  %151 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add217 = add i64 %150, %151
  %152 = inttoptr i64 %add217 to ptr
  store ptr %152, ptr %i18, align 8, !tbaa !9
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.end206
  call void @llvm.lifetime.start.p0(i64 8, ptr %i19) #6
  %153 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx219 = getelementptr inbounds ptr, ptr %153, i64 19
  %154 = load ptr, ptr %arrayidx219, align 8, !tbaa !9
  store ptr %154, ptr %i19, align 8, !tbaa !9
  %155 = load ptr, ptr %i19, align 8, !tbaa !9
  %156 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp220 = icmp ne ptr %155, %156
  %lnot222 = xor i1 %cmp220, true
  %lnot224 = xor i1 %lnot222, true
  %lnot.ext225 = zext i1 %lnot224 to i32
  %conv226 = sext i32 %lnot.ext225 to i64
  %tobool227 = icmp ne i64 %conv226, 0
  br i1 %tobool227, label %if.then228, label %if.end230, !unpredictable !12

if.then228:                                       ; preds = %if.end218
  %157 = load ptr, ptr %i19, align 8, !tbaa !9
  %158 = ptrtoint ptr %157 to i64
  %159 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add229 = add i64 %158, %159
  %160 = inttoptr i64 %add229 to ptr
  store ptr %160, ptr %i19, align 8, !tbaa !9
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.end218
  call void @llvm.lifetime.start.p0(i64 8, ptr %i20) #6
  %161 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx231 = getelementptr inbounds ptr, ptr %161, i64 20
  %162 = load ptr, ptr %arrayidx231, align 8, !tbaa !9
  store ptr %162, ptr %i20, align 8, !tbaa !9
  %163 = load ptr, ptr %i20, align 8, !tbaa !9
  %164 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp232 = icmp ne ptr %163, %164
  %lnot234 = xor i1 %cmp232, true
  %lnot236 = xor i1 %lnot234, true
  %lnot.ext237 = zext i1 %lnot236 to i32
  %conv238 = sext i32 %lnot.ext237 to i64
  %tobool239 = icmp ne i64 %conv238, 0
  br i1 %tobool239, label %if.then240, label %if.end242, !unpredictable !12

if.then240:                                       ; preds = %if.end230
  %165 = load ptr, ptr %i20, align 8, !tbaa !9
  %166 = ptrtoint ptr %165 to i64
  %167 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add241 = add i64 %166, %167
  %168 = inttoptr i64 %add241 to ptr
  store ptr %168, ptr %i20, align 8, !tbaa !9
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %if.end230
  call void @llvm.lifetime.start.p0(i64 8, ptr %i21) #6
  %169 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx243 = getelementptr inbounds ptr, ptr %169, i64 21
  %170 = load ptr, ptr %arrayidx243, align 8, !tbaa !9
  store ptr %170, ptr %i21, align 8, !tbaa !9
  %171 = load ptr, ptr %i21, align 8, !tbaa !9
  %172 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp244 = icmp ne ptr %171, %172
  %lnot246 = xor i1 %cmp244, true
  %lnot248 = xor i1 %lnot246, true
  %lnot.ext249 = zext i1 %lnot248 to i32
  %conv250 = sext i32 %lnot.ext249 to i64
  %tobool251 = icmp ne i64 %conv250, 0
  br i1 %tobool251, label %if.then252, label %if.end254, !unpredictable !12

if.then252:                                       ; preds = %if.end242
  %173 = load ptr, ptr %i21, align 8, !tbaa !9
  %174 = ptrtoint ptr %173 to i64
  %175 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add253 = add i64 %174, %175
  %176 = inttoptr i64 %add253 to ptr
  store ptr %176, ptr %i21, align 8, !tbaa !9
  br label %if.end254

if.end254:                                        ; preds = %if.then252, %if.end242
  call void @llvm.lifetime.start.p0(i64 8, ptr %i22) #6
  %177 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx255 = getelementptr inbounds ptr, ptr %177, i64 22
  %178 = load ptr, ptr %arrayidx255, align 8, !tbaa !9
  store ptr %178, ptr %i22, align 8, !tbaa !9
  %179 = load ptr, ptr %i22, align 8, !tbaa !9
  %180 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp256 = icmp ne ptr %179, %180
  %lnot258 = xor i1 %cmp256, true
  %lnot260 = xor i1 %lnot258, true
  %lnot.ext261 = zext i1 %lnot260 to i32
  %conv262 = sext i32 %lnot.ext261 to i64
  %tobool263 = icmp ne i64 %conv262, 0
  br i1 %tobool263, label %if.then264, label %if.end266, !unpredictable !12

if.then264:                                       ; preds = %if.end254
  %181 = load ptr, ptr %i22, align 8, !tbaa !9
  %182 = ptrtoint ptr %181 to i64
  %183 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add265 = add i64 %182, %183
  %184 = inttoptr i64 %add265 to ptr
  store ptr %184, ptr %i22, align 8, !tbaa !9
  br label %if.end266

if.end266:                                        ; preds = %if.then264, %if.end254
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #6
  %185 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx267 = getelementptr inbounds ptr, ptr %185, i64 23
  %186 = load ptr, ptr %arrayidx267, align 8, !tbaa !9
  store ptr %186, ptr %i23, align 8, !tbaa !9
  %187 = load ptr, ptr %i23, align 8, !tbaa !9
  %188 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp268 = icmp ne ptr %187, %188
  %lnot270 = xor i1 %cmp268, true
  %lnot272 = xor i1 %lnot270, true
  %lnot.ext273 = zext i1 %lnot272 to i32
  %conv274 = sext i32 %lnot.ext273 to i64
  %tobool275 = icmp ne i64 %conv274, 0
  br i1 %tobool275, label %if.then276, label %if.end278, !unpredictable !12

if.then276:                                       ; preds = %if.end266
  %189 = load ptr, ptr %i23, align 8, !tbaa !9
  %190 = ptrtoint ptr %189 to i64
  %191 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add277 = add i64 %190, %191
  %192 = inttoptr i64 %add277 to ptr
  store ptr %192, ptr %i23, align 8, !tbaa !9
  br label %if.end278

if.end278:                                        ; preds = %if.then276, %if.end266
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #6
  %193 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx279 = getelementptr inbounds ptr, ptr %193, i64 24
  %194 = load ptr, ptr %arrayidx279, align 8, !tbaa !9
  store ptr %194, ptr %i24, align 8, !tbaa !9
  %195 = load ptr, ptr %i24, align 8, !tbaa !9
  %196 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp280 = icmp ne ptr %195, %196
  %lnot282 = xor i1 %cmp280, true
  %lnot284 = xor i1 %lnot282, true
  %lnot.ext285 = zext i1 %lnot284 to i32
  %conv286 = sext i32 %lnot.ext285 to i64
  %tobool287 = icmp ne i64 %conv286, 0
  br i1 %tobool287, label %if.then288, label %if.end290, !unpredictable !12

if.then288:                                       ; preds = %if.end278
  %197 = load ptr, ptr %i24, align 8, !tbaa !9
  %198 = ptrtoint ptr %197 to i64
  %199 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add289 = add i64 %198, %199
  %200 = inttoptr i64 %add289 to ptr
  store ptr %200, ptr %i24, align 8, !tbaa !9
  br label %if.end290

if.end290:                                        ; preds = %if.then288, %if.end278
  %201 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %202 = ptrtoint ptr %201 to i64
  %203 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add291 = add i64 %202, %203
  %204 = inttoptr i64 %add291 to ptr
  store ptr %204, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  %205 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %205, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #6
  %206 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %206, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end290
  %207 = load i64, ptr %c, align 8, !tbaa !5
  %cmp292 = icmp uge i64 %207, 8
  br i1 %cmp292, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567) #6
  %208 = load ptr, ptr %w, align 8, !tbaa !9
  %call294 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %208)
  store <4 x i64> %call294, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567) #6
  %209 = load ptr, ptr %i0, align 8, !tbaa !9
  %call295 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %209)
  %call296 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call295)
  store <4 x i64> %call296, ptr %vi0x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x01234567) #6
  %210 = load ptr, ptr %w, align 8, !tbaa !9
  %211 = ptrtoint ptr %210 to i64
  %add297 = add i64 %211, 32
  %add298 = add i64 %add297, 0
  %212 = inttoptr i64 %add298 to ptr
  %call299 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %212)
  %call300 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call299)
  %213 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call301 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call300, <4 x i64> noundef %213)
  store <4 x i64> %call301, ptr %vk0x01234567, align 32, !tbaa !11
  %214 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %214, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  %215 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %216 = load <4 x i64>, ptr %vi0x01234567, align 32, !tbaa !11
  %217 = load <4 x i64>, ptr %vk0x01234567, align 32, !tbaa !11
  %call302 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %216, <4 x i64> noundef %217)
  %call303 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %215, <4 x i64> noundef %call302)
  store <4 x i64> %call303, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567) #6
  %218 = load ptr, ptr %i1, align 8, !tbaa !9
  %call304 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %218)
  %call305 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call304)
  store <4 x i64> %call305, ptr %vi1x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x01234567) #6
  %219 = load ptr, ptr %w, align 8, !tbaa !9
  %220 = ptrtoint ptr %219 to i64
  %add306 = add i64 %220, 32
  %add307 = add i64 %add306, 8
  %221 = inttoptr i64 %add307 to ptr
  %call308 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %221)
  %call309 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call308)
  %222 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call310 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call309, <4 x i64> noundef %222)
  store <4 x i64> %call310, ptr %vk1x01234567, align 32, !tbaa !11
  %223 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr311 = getelementptr inbounds i8, ptr %223, i64 8
  store ptr %add.ptr311, ptr %i1, align 8, !tbaa !9
  %224 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %225 = load <4 x i64>, ptr %vi1x01234567, align 32, !tbaa !11
  %226 = load <4 x i64>, ptr %vk1x01234567, align 32, !tbaa !11
  %call312 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %225, <4 x i64> noundef %226)
  %call313 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %224, <4 x i64> noundef %call312)
  store <4 x i64> %call313, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567) #6
  %227 = load ptr, ptr %i2, align 8, !tbaa !9
  %call314 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %227)
  %call315 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call314)
  store <4 x i64> %call315, ptr %vi2x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x01234567) #6
  %228 = load ptr, ptr %w, align 8, !tbaa !9
  %229 = ptrtoint ptr %228 to i64
  %add316 = add i64 %229, 32
  %add317 = add i64 %add316, 16
  %230 = inttoptr i64 %add317 to ptr
  %call318 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %230)
  %call319 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call318)
  %231 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call320 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call319, <4 x i64> noundef %231)
  store <4 x i64> %call320, ptr %vk2x01234567, align 32, !tbaa !11
  %232 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr321 = getelementptr inbounds i8, ptr %232, i64 8
  store ptr %add.ptr321, ptr %i2, align 8, !tbaa !9
  %233 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %234 = load <4 x i64>, ptr %vi2x01234567, align 32, !tbaa !11
  %235 = load <4 x i64>, ptr %vk2x01234567, align 32, !tbaa !11
  %call322 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %234, <4 x i64> noundef %235)
  %call323 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %233, <4 x i64> noundef %call322)
  store <4 x i64> %call323, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567) #6
  %236 = load ptr, ptr %i3, align 8, !tbaa !9
  %call324 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %236)
  %call325 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call324)
  store <4 x i64> %call325, ptr %vi3x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x01234567) #6
  %237 = load ptr, ptr %w, align 8, !tbaa !9
  %238 = ptrtoint ptr %237 to i64
  %add326 = add i64 %238, 32
  %add327 = add i64 %add326, 24
  %239 = inttoptr i64 %add327 to ptr
  %call328 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %239)
  %call329 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call328)
  %240 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call330 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call329, <4 x i64> noundef %240)
  store <4 x i64> %call330, ptr %vk3x01234567, align 32, !tbaa !11
  %241 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr331 = getelementptr inbounds i8, ptr %241, i64 8
  store ptr %add.ptr331, ptr %i3, align 8, !tbaa !9
  %242 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %243 = load <4 x i64>, ptr %vi3x01234567, align 32, !tbaa !11
  %244 = load <4 x i64>, ptr %vk3x01234567, align 32, !tbaa !11
  %call332 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %243, <4 x i64> noundef %244)
  %call333 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %242, <4 x i64> noundef %call332)
  store <4 x i64> %call333, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567) #6
  %245 = load ptr, ptr %i4, align 8, !tbaa !9
  %call334 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %245)
  %call335 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call334)
  store <4 x i64> %call335, ptr %vi4x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x01234567) #6
  %246 = load ptr, ptr %w, align 8, !tbaa !9
  %247 = ptrtoint ptr %246 to i64
  %add336 = add i64 %247, 32
  %add337 = add i64 %add336, 32
  %248 = inttoptr i64 %add337 to ptr
  %call338 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %248)
  %call339 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call338)
  %249 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call340 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call339, <4 x i64> noundef %249)
  store <4 x i64> %call340, ptr %vk4x01234567, align 32, !tbaa !11
  %250 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr341 = getelementptr inbounds i8, ptr %250, i64 8
  store ptr %add.ptr341, ptr %i4, align 8, !tbaa !9
  %251 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %252 = load <4 x i64>, ptr %vi4x01234567, align 32, !tbaa !11
  %253 = load <4 x i64>, ptr %vk4x01234567, align 32, !tbaa !11
  %call342 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %252, <4 x i64> noundef %253)
  %call343 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %251, <4 x i64> noundef %call342)
  store <4 x i64> %call343, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567) #6
  %254 = load ptr, ptr %i5, align 8, !tbaa !9
  %call344 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %254)
  %call345 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call344)
  store <4 x i64> %call345, ptr %vi5x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x01234567) #6
  %255 = load ptr, ptr %w, align 8, !tbaa !9
  %256 = ptrtoint ptr %255 to i64
  %add346 = add i64 %256, 32
  %add347 = add i64 %add346, 40
  %257 = inttoptr i64 %add347 to ptr
  %call348 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %257)
  %call349 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call348)
  %258 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call350 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call349, <4 x i64> noundef %258)
  store <4 x i64> %call350, ptr %vk5x01234567, align 32, !tbaa !11
  %259 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr351 = getelementptr inbounds i8, ptr %259, i64 8
  store ptr %add.ptr351, ptr %i5, align 8, !tbaa !9
  %260 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %261 = load <4 x i64>, ptr %vi5x01234567, align 32, !tbaa !11
  %262 = load <4 x i64>, ptr %vk5x01234567, align 32, !tbaa !11
  %call352 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %261, <4 x i64> noundef %262)
  %call353 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %260, <4 x i64> noundef %call352)
  store <4 x i64> %call353, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567) #6
  %263 = load ptr, ptr %i6, align 8, !tbaa !9
  %call354 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %263)
  %call355 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call354)
  store <4 x i64> %call355, ptr %vi6x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x01234567) #6
  %264 = load ptr, ptr %w, align 8, !tbaa !9
  %265 = ptrtoint ptr %264 to i64
  %add356 = add i64 %265, 32
  %add357 = add i64 %add356, 48
  %266 = inttoptr i64 %add357 to ptr
  %call358 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %266)
  %call359 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call358)
  %267 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call360 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call359, <4 x i64> noundef %267)
  store <4 x i64> %call360, ptr %vk6x01234567, align 32, !tbaa !11
  %268 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr361 = getelementptr inbounds i8, ptr %268, i64 8
  store ptr %add.ptr361, ptr %i6, align 8, !tbaa !9
  %269 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %270 = load <4 x i64>, ptr %vi6x01234567, align 32, !tbaa !11
  %271 = load <4 x i64>, ptr %vk6x01234567, align 32, !tbaa !11
  %call362 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %270, <4 x i64> noundef %271)
  %call363 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %269, <4 x i64> noundef %call362)
  store <4 x i64> %call363, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x01234567) #6
  %272 = load ptr, ptr %i7, align 8, !tbaa !9
  %call364 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %272)
  %call365 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call364)
  store <4 x i64> %call365, ptr %vi7x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x01234567) #6
  %273 = load ptr, ptr %w, align 8, !tbaa !9
  %274 = ptrtoint ptr %273 to i64
  %add366 = add i64 %274, 32
  %add367 = add i64 %add366, 56
  %275 = inttoptr i64 %add367 to ptr
  %call368 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %275)
  %call369 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call368)
  %276 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call370 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call369, <4 x i64> noundef %276)
  store <4 x i64> %call370, ptr %vk7x01234567, align 32, !tbaa !11
  %277 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr371 = getelementptr inbounds i8, ptr %277, i64 8
  store ptr %add.ptr371, ptr %i7, align 8, !tbaa !9
  %278 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %279 = load <4 x i64>, ptr %vi7x01234567, align 32, !tbaa !11
  %280 = load <4 x i64>, ptr %vk7x01234567, align 32, !tbaa !11
  %call372 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %279, <4 x i64> noundef %280)
  %call373 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %278, <4 x i64> noundef %call372)
  store <4 x i64> %call373, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x01234567) #6
  %281 = load ptr, ptr %i8, align 8, !tbaa !9
  %call374 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %281)
  %call375 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call374)
  store <4 x i64> %call375, ptr %vi8x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x01234567) #6
  %282 = load ptr, ptr %w, align 8, !tbaa !9
  %283 = ptrtoint ptr %282 to i64
  %add376 = add i64 %283, 32
  %add377 = add i64 %add376, 64
  %284 = inttoptr i64 %add377 to ptr
  %call378 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %284)
  %call379 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call378)
  %285 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call380 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call379, <4 x i64> noundef %285)
  store <4 x i64> %call380, ptr %vk8x01234567, align 32, !tbaa !11
  %286 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr381 = getelementptr inbounds i8, ptr %286, i64 8
  store ptr %add.ptr381, ptr %i8, align 8, !tbaa !9
  %287 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %288 = load <4 x i64>, ptr %vi8x01234567, align 32, !tbaa !11
  %289 = load <4 x i64>, ptr %vk8x01234567, align 32, !tbaa !11
  %call382 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %288, <4 x i64> noundef %289)
  %call383 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %287, <4 x i64> noundef %call382)
  store <4 x i64> %call383, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x01234567) #6
  %290 = load ptr, ptr %i9, align 8, !tbaa !9
  %call384 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %290)
  %call385 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call384)
  store <4 x i64> %call385, ptr %vi9x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x01234567) #6
  %291 = load ptr, ptr %w, align 8, !tbaa !9
  %292 = ptrtoint ptr %291 to i64
  %add386 = add i64 %292, 32
  %add387 = add i64 %add386, 72
  %293 = inttoptr i64 %add387 to ptr
  %call388 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %293)
  %call389 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call388)
  %294 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call390 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call389, <4 x i64> noundef %294)
  store <4 x i64> %call390, ptr %vk9x01234567, align 32, !tbaa !11
  %295 = load ptr, ptr %i9, align 8, !tbaa !9
  %add.ptr391 = getelementptr inbounds i8, ptr %295, i64 8
  store ptr %add.ptr391, ptr %i9, align 8, !tbaa !9
  %296 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %297 = load <4 x i64>, ptr %vi9x01234567, align 32, !tbaa !11
  %298 = load <4 x i64>, ptr %vk9x01234567, align 32, !tbaa !11
  %call392 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %297, <4 x i64> noundef %298)
  %call393 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %296, <4 x i64> noundef %call392)
  store <4 x i64> %call393, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x01234567) #6
  %299 = load ptr, ptr %i10, align 8, !tbaa !9
  %call394 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %299)
  %call395 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call394)
  store <4 x i64> %call395, ptr %vi10x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x01234567) #6
  %300 = load ptr, ptr %w, align 8, !tbaa !9
  %301 = ptrtoint ptr %300 to i64
  %add396 = add i64 %301, 32
  %add397 = add i64 %add396, 80
  %302 = inttoptr i64 %add397 to ptr
  %call398 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %302)
  %call399 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call398)
  %303 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call400 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call399, <4 x i64> noundef %303)
  store <4 x i64> %call400, ptr %vk10x01234567, align 32, !tbaa !11
  %304 = load ptr, ptr %i10, align 8, !tbaa !9
  %add.ptr401 = getelementptr inbounds i8, ptr %304, i64 8
  store ptr %add.ptr401, ptr %i10, align 8, !tbaa !9
  %305 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %306 = load <4 x i64>, ptr %vi10x01234567, align 32, !tbaa !11
  %307 = load <4 x i64>, ptr %vk10x01234567, align 32, !tbaa !11
  %call402 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %306, <4 x i64> noundef %307)
  %call403 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %305, <4 x i64> noundef %call402)
  store <4 x i64> %call403, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x01234567) #6
  %308 = load ptr, ptr %i11, align 8, !tbaa !9
  %call404 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %308)
  %call405 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call404)
  store <4 x i64> %call405, ptr %vi11x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x01234567) #6
  %309 = load ptr, ptr %w, align 8, !tbaa !9
  %310 = ptrtoint ptr %309 to i64
  %add406 = add i64 %310, 32
  %add407 = add i64 %add406, 88
  %311 = inttoptr i64 %add407 to ptr
  %call408 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %311)
  %call409 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call408)
  %312 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call410 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call409, <4 x i64> noundef %312)
  store <4 x i64> %call410, ptr %vk11x01234567, align 32, !tbaa !11
  %313 = load ptr, ptr %i11, align 8, !tbaa !9
  %add.ptr411 = getelementptr inbounds i8, ptr %313, i64 8
  store ptr %add.ptr411, ptr %i11, align 8, !tbaa !9
  %314 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %315 = load <4 x i64>, ptr %vi11x01234567, align 32, !tbaa !11
  %316 = load <4 x i64>, ptr %vk11x01234567, align 32, !tbaa !11
  %call412 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %315, <4 x i64> noundef %316)
  %call413 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %314, <4 x i64> noundef %call412)
  store <4 x i64> %call413, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x01234567) #6
  %317 = load ptr, ptr %i12, align 8, !tbaa !9
  %call414 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %317)
  %call415 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call414)
  store <4 x i64> %call415, ptr %vi12x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x01234567) #6
  %318 = load ptr, ptr %w, align 8, !tbaa !9
  %319 = ptrtoint ptr %318 to i64
  %add416 = add i64 %319, 32
  %add417 = add i64 %add416, 96
  %320 = inttoptr i64 %add417 to ptr
  %call418 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %320)
  %call419 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call418)
  %321 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call420 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call419, <4 x i64> noundef %321)
  store <4 x i64> %call420, ptr %vk12x01234567, align 32, !tbaa !11
  %322 = load ptr, ptr %i12, align 8, !tbaa !9
  %add.ptr421 = getelementptr inbounds i8, ptr %322, i64 8
  store ptr %add.ptr421, ptr %i12, align 8, !tbaa !9
  %323 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %324 = load <4 x i64>, ptr %vi12x01234567, align 32, !tbaa !11
  %325 = load <4 x i64>, ptr %vk12x01234567, align 32, !tbaa !11
  %call422 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %324, <4 x i64> noundef %325)
  %call423 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %323, <4 x i64> noundef %call422)
  store <4 x i64> %call423, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x01234567) #6
  %326 = load ptr, ptr %i13, align 8, !tbaa !9
  %call424 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %326)
  %call425 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call424)
  store <4 x i64> %call425, ptr %vi13x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x01234567) #6
  %327 = load ptr, ptr %w, align 8, !tbaa !9
  %328 = ptrtoint ptr %327 to i64
  %add426 = add i64 %328, 32
  %add427 = add i64 %add426, 104
  %329 = inttoptr i64 %add427 to ptr
  %call428 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %329)
  %call429 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call428)
  %330 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call430 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call429, <4 x i64> noundef %330)
  store <4 x i64> %call430, ptr %vk13x01234567, align 32, !tbaa !11
  %331 = load ptr, ptr %i13, align 8, !tbaa !9
  %add.ptr431 = getelementptr inbounds i8, ptr %331, i64 8
  store ptr %add.ptr431, ptr %i13, align 8, !tbaa !9
  %332 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %333 = load <4 x i64>, ptr %vi13x01234567, align 32, !tbaa !11
  %334 = load <4 x i64>, ptr %vk13x01234567, align 32, !tbaa !11
  %call432 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %333, <4 x i64> noundef %334)
  %call433 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %332, <4 x i64> noundef %call432)
  store <4 x i64> %call433, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x01234567) #6
  %335 = load ptr, ptr %i14, align 8, !tbaa !9
  %call434 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %335)
  %call435 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call434)
  store <4 x i64> %call435, ptr %vi14x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x01234567) #6
  %336 = load ptr, ptr %w, align 8, !tbaa !9
  %337 = ptrtoint ptr %336 to i64
  %add436 = add i64 %337, 32
  %add437 = add i64 %add436, 112
  %338 = inttoptr i64 %add437 to ptr
  %call438 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %338)
  %call439 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call438)
  %339 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call440 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call439, <4 x i64> noundef %339)
  store <4 x i64> %call440, ptr %vk14x01234567, align 32, !tbaa !11
  %340 = load ptr, ptr %i14, align 8, !tbaa !9
  %add.ptr441 = getelementptr inbounds i8, ptr %340, i64 8
  store ptr %add.ptr441, ptr %i14, align 8, !tbaa !9
  %341 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %342 = load <4 x i64>, ptr %vi14x01234567, align 32, !tbaa !11
  %343 = load <4 x i64>, ptr %vk14x01234567, align 32, !tbaa !11
  %call442 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %342, <4 x i64> noundef %343)
  %call443 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %341, <4 x i64> noundef %call442)
  store <4 x i64> %call443, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x01234567) #6
  %344 = load ptr, ptr %i15, align 8, !tbaa !9
  %call444 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %344)
  %call445 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call444)
  store <4 x i64> %call445, ptr %vi15x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x01234567) #6
  %345 = load ptr, ptr %w, align 8, !tbaa !9
  %346 = ptrtoint ptr %345 to i64
  %add446 = add i64 %346, 32
  %add447 = add i64 %add446, 120
  %347 = inttoptr i64 %add447 to ptr
  %call448 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %347)
  %call449 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call448)
  %348 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call450 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call449, <4 x i64> noundef %348)
  store <4 x i64> %call450, ptr %vk15x01234567, align 32, !tbaa !11
  %349 = load ptr, ptr %i15, align 8, !tbaa !9
  %add.ptr451 = getelementptr inbounds i8, ptr %349, i64 8
  store ptr %add.ptr451, ptr %i15, align 8, !tbaa !9
  %350 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %351 = load <4 x i64>, ptr %vi15x01234567, align 32, !tbaa !11
  %352 = load <4 x i64>, ptr %vk15x01234567, align 32, !tbaa !11
  %call452 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %351, <4 x i64> noundef %352)
  %call453 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %350, <4 x i64> noundef %call452)
  store <4 x i64> %call453, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x01234567) #6
  %353 = load ptr, ptr %i16, align 8, !tbaa !9
  %call454 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %353)
  %call455 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call454)
  store <4 x i64> %call455, ptr %vi16x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x01234567) #6
  %354 = load ptr, ptr %w, align 8, !tbaa !9
  %355 = ptrtoint ptr %354 to i64
  %add456 = add i64 %355, 32
  %add457 = add i64 %add456, 128
  %356 = inttoptr i64 %add457 to ptr
  %call458 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %356)
  %call459 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call458)
  %357 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call460 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call459, <4 x i64> noundef %357)
  store <4 x i64> %call460, ptr %vk16x01234567, align 32, !tbaa !11
  %358 = load ptr, ptr %i16, align 8, !tbaa !9
  %add.ptr461 = getelementptr inbounds i8, ptr %358, i64 8
  store ptr %add.ptr461, ptr %i16, align 8, !tbaa !9
  %359 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %360 = load <4 x i64>, ptr %vi16x01234567, align 32, !tbaa !11
  %361 = load <4 x i64>, ptr %vk16x01234567, align 32, !tbaa !11
  %call462 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %360, <4 x i64> noundef %361)
  %call463 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %359, <4 x i64> noundef %call462)
  store <4 x i64> %call463, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x01234567) #6
  %362 = load ptr, ptr %i17, align 8, !tbaa !9
  %call464 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %362)
  %call465 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call464)
  store <4 x i64> %call465, ptr %vi17x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x01234567) #6
  %363 = load ptr, ptr %w, align 8, !tbaa !9
  %364 = ptrtoint ptr %363 to i64
  %add466 = add i64 %364, 32
  %add467 = add i64 %add466, 136
  %365 = inttoptr i64 %add467 to ptr
  %call468 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %365)
  %call469 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call468)
  %366 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call470 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call469, <4 x i64> noundef %366)
  store <4 x i64> %call470, ptr %vk17x01234567, align 32, !tbaa !11
  %367 = load ptr, ptr %i17, align 8, !tbaa !9
  %add.ptr471 = getelementptr inbounds i8, ptr %367, i64 8
  store ptr %add.ptr471, ptr %i17, align 8, !tbaa !9
  %368 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %369 = load <4 x i64>, ptr %vi17x01234567, align 32, !tbaa !11
  %370 = load <4 x i64>, ptr %vk17x01234567, align 32, !tbaa !11
  %call472 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %369, <4 x i64> noundef %370)
  %call473 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %368, <4 x i64> noundef %call472)
  store <4 x i64> %call473, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x01234567) #6
  %371 = load ptr, ptr %i18, align 8, !tbaa !9
  %call474 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %371)
  %call475 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call474)
  store <4 x i64> %call475, ptr %vi18x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x01234567) #6
  %372 = load ptr, ptr %w, align 8, !tbaa !9
  %373 = ptrtoint ptr %372 to i64
  %add476 = add i64 %373, 32
  %add477 = add i64 %add476, 144
  %374 = inttoptr i64 %add477 to ptr
  %call478 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %374)
  %call479 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call478)
  %375 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call480 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call479, <4 x i64> noundef %375)
  store <4 x i64> %call480, ptr %vk18x01234567, align 32, !tbaa !11
  %376 = load ptr, ptr %i18, align 8, !tbaa !9
  %add.ptr481 = getelementptr inbounds i8, ptr %376, i64 8
  store ptr %add.ptr481, ptr %i18, align 8, !tbaa !9
  %377 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %378 = load <4 x i64>, ptr %vi18x01234567, align 32, !tbaa !11
  %379 = load <4 x i64>, ptr %vk18x01234567, align 32, !tbaa !11
  %call482 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %378, <4 x i64> noundef %379)
  %call483 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %377, <4 x i64> noundef %call482)
  store <4 x i64> %call483, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x01234567) #6
  %380 = load ptr, ptr %i19, align 8, !tbaa !9
  %call484 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %380)
  %call485 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call484)
  store <4 x i64> %call485, ptr %vi19x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x01234567) #6
  %381 = load ptr, ptr %w, align 8, !tbaa !9
  %382 = ptrtoint ptr %381 to i64
  %add486 = add i64 %382, 32
  %add487 = add i64 %add486, 152
  %383 = inttoptr i64 %add487 to ptr
  %call488 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %383)
  %call489 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call488)
  %384 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call490 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call489, <4 x i64> noundef %384)
  store <4 x i64> %call490, ptr %vk19x01234567, align 32, !tbaa !11
  %385 = load ptr, ptr %i19, align 8, !tbaa !9
  %add.ptr491 = getelementptr inbounds i8, ptr %385, i64 8
  store ptr %add.ptr491, ptr %i19, align 8, !tbaa !9
  %386 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %387 = load <4 x i64>, ptr %vi19x01234567, align 32, !tbaa !11
  %388 = load <4 x i64>, ptr %vk19x01234567, align 32, !tbaa !11
  %call492 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %387, <4 x i64> noundef %388)
  %call493 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %386, <4 x i64> noundef %call492)
  store <4 x i64> %call493, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x01234567) #6
  %389 = load ptr, ptr %i20, align 8, !tbaa !9
  %call494 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %389)
  %call495 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call494)
  store <4 x i64> %call495, ptr %vi20x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x01234567) #6
  %390 = load ptr, ptr %w, align 8, !tbaa !9
  %391 = ptrtoint ptr %390 to i64
  %add496 = add i64 %391, 32
  %add497 = add i64 %add496, 160
  %392 = inttoptr i64 %add497 to ptr
  %call498 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %392)
  %call499 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call498)
  %393 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call500 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call499, <4 x i64> noundef %393)
  store <4 x i64> %call500, ptr %vk20x01234567, align 32, !tbaa !11
  %394 = load ptr, ptr %i20, align 8, !tbaa !9
  %add.ptr501 = getelementptr inbounds i8, ptr %394, i64 8
  store ptr %add.ptr501, ptr %i20, align 8, !tbaa !9
  %395 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %396 = load <4 x i64>, ptr %vi20x01234567, align 32, !tbaa !11
  %397 = load <4 x i64>, ptr %vk20x01234567, align 32, !tbaa !11
  %call502 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %396, <4 x i64> noundef %397)
  %call503 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %395, <4 x i64> noundef %call502)
  store <4 x i64> %call503, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x01234567) #6
  %398 = load ptr, ptr %i21, align 8, !tbaa !9
  %call504 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %398)
  %call505 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call504)
  store <4 x i64> %call505, ptr %vi21x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x01234567) #6
  %399 = load ptr, ptr %w, align 8, !tbaa !9
  %400 = ptrtoint ptr %399 to i64
  %add506 = add i64 %400, 32
  %add507 = add i64 %add506, 168
  %401 = inttoptr i64 %add507 to ptr
  %call508 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %401)
  %call509 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call508)
  %402 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call510 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call509, <4 x i64> noundef %402)
  store <4 x i64> %call510, ptr %vk21x01234567, align 32, !tbaa !11
  %403 = load ptr, ptr %i21, align 8, !tbaa !9
  %add.ptr511 = getelementptr inbounds i8, ptr %403, i64 8
  store ptr %add.ptr511, ptr %i21, align 8, !tbaa !9
  %404 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %405 = load <4 x i64>, ptr %vi21x01234567, align 32, !tbaa !11
  %406 = load <4 x i64>, ptr %vk21x01234567, align 32, !tbaa !11
  %call512 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %405, <4 x i64> noundef %406)
  %call513 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %404, <4 x i64> noundef %call512)
  store <4 x i64> %call513, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x01234567) #6
  %407 = load ptr, ptr %i22, align 8, !tbaa !9
  %call514 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %407)
  %call515 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call514)
  store <4 x i64> %call515, ptr %vi22x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x01234567) #6
  %408 = load ptr, ptr %w, align 8, !tbaa !9
  %409 = ptrtoint ptr %408 to i64
  %add516 = add i64 %409, 32
  %add517 = add i64 %add516, 176
  %410 = inttoptr i64 %add517 to ptr
  %call518 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %410)
  %call519 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call518)
  %411 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call520 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call519, <4 x i64> noundef %411)
  store <4 x i64> %call520, ptr %vk22x01234567, align 32, !tbaa !11
  %412 = load ptr, ptr %i22, align 8, !tbaa !9
  %add.ptr521 = getelementptr inbounds i8, ptr %412, i64 8
  store ptr %add.ptr521, ptr %i22, align 8, !tbaa !9
  %413 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %414 = load <4 x i64>, ptr %vi22x01234567, align 32, !tbaa !11
  %415 = load <4 x i64>, ptr %vk22x01234567, align 32, !tbaa !11
  %call522 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %414, <4 x i64> noundef %415)
  %call523 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %413, <4 x i64> noundef %call522)
  store <4 x i64> %call523, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x01234567) #6
  %416 = load ptr, ptr %i23, align 8, !tbaa !9
  %call524 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %416)
  %call525 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call524)
  store <4 x i64> %call525, ptr %vi23x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x01234567) #6
  %417 = load ptr, ptr %w, align 8, !tbaa !9
  %418 = ptrtoint ptr %417 to i64
  %add526 = add i64 %418, 32
  %add527 = add i64 %add526, 184
  %419 = inttoptr i64 %add527 to ptr
  %call528 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %419)
  %call529 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call528)
  %420 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call530 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call529, <4 x i64> noundef %420)
  store <4 x i64> %call530, ptr %vk23x01234567, align 32, !tbaa !11
  %421 = load ptr, ptr %i23, align 8, !tbaa !9
  %add.ptr531 = getelementptr inbounds i8, ptr %421, i64 8
  store ptr %add.ptr531, ptr %i23, align 8, !tbaa !9
  %422 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %423 = load <4 x i64>, ptr %vi23x01234567, align 32, !tbaa !11
  %424 = load <4 x i64>, ptr %vk23x01234567, align 32, !tbaa !11
  %call532 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %423, <4 x i64> noundef %424)
  %call533 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %422, <4 x i64> noundef %call532)
  store <4 x i64> %call533, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x01234567) #6
  %425 = load ptr, ptr %i24, align 8, !tbaa !9
  %call534 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %425)
  %call535 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call534)
  store <4 x i64> %call535, ptr %vi24x01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x01234567) #6
  %426 = load ptr, ptr %w, align 8, !tbaa !9
  %427 = ptrtoint ptr %426 to i64
  %add536 = add i64 %427, 32
  %add537 = add i64 %add536, 192
  %428 = inttoptr i64 %add537 to ptr
  %call538 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %428)
  %call539 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call538)
  %429 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call540 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call539, <4 x i64> noundef %429)
  store <4 x i64> %call540, ptr %vk24x01234567, align 32, !tbaa !11
  %430 = load ptr, ptr %i24, align 8, !tbaa !9
  %add.ptr541 = getelementptr inbounds i8, ptr %430, i64 8
  store ptr %add.ptr541, ptr %i24, align 8, !tbaa !9
  %431 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %432 = load <4 x i64>, ptr %vi24x01234567, align 32, !tbaa !11
  %433 = load <4 x i64>, ptr %vk24x01234567, align 32, !tbaa !11
  %call542 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %432, <4 x i64> noundef %433)
  %call543 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %431, <4 x i64> noundef %call542)
  store <4 x i64> %call543, ptr %vacc01234567, align 32, !tbaa !11
  %434 = load ptr, ptr %w, align 8, !tbaa !9
  %435 = ptrtoint ptr %434 to i64
  %add544 = add i64 %435, 32
  %add545 = add i64 %add544, 200
  %436 = inttoptr i64 %add545 to ptr
  store ptr %436, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscaled01234567) #6
  %437 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %call546 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %437)
  store <8 x float> %call546, ptr %vscaled01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale) #6
  %438 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.3, ptr %438, i32 0, i32 1
  %arraydecay547 = getelementptr inbounds [8 x float], ptr %scale, i64 0, i64 0
  %call548 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay547)
  store <8 x float> %call548, ptr %vscale, align 32, !tbaa !11
  %439 = load <8 x float>, ptr %vscaled01234567, align 32, !tbaa !11
  %440 = load <8 x float>, ptr %vscale, align 32, !tbaa !11
  %call549 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %439, <8 x float> noundef %440)
  store <8 x float> %call549, ptr %vscaled01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_max_less_zero_point) #6
  %441 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %441, i32 0, i32 2
  %arraydecay550 = getelementptr inbounds [8 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call551 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay550)
  store <8 x float> %call551, ptr %voutput_max_less_zero_point, align 32, !tbaa !11
  %442 = load <8 x float>, ptr %vscaled01234567, align 32, !tbaa !11
  %443 = load <8 x float>, ptr %voutput_max_less_zero_point, align 32, !tbaa !11
  %call552 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %442, <8 x float> noundef %443)
  store <8 x float> %call552, ptr %vscaled01234567, align 32, !tbaa !11
  %444 = load <8 x float>, ptr %vscaled01234567, align 32, !tbaa !11
  %call553 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %444)
  store <4 x i64> %call553, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %445 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %445, i32 0, i32 3
  %arraydecay554 = getelementptr inbounds [16 x i16], ptr %output_zero_point, i64 0, i64 0
  %call555 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay554)
  store <2 x i64> %call555, ptr %voutput_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #6
  %446 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %call556 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %446)
  %447 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %extract = shufflevector <4 x i64> %447, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call557 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call556, <2 x i64> noundef %extract)
  %448 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call558 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call557, <2 x i64> noundef %448)
  store <2 x i64> %call558, ptr %vout01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #6
  %449 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %450 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %call559 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %449, <2 x i64> noundef %450)
  store <2 x i64> %call559, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %451 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.3, ptr %451, i32 0, i32 4
  %arraydecay560 = getelementptr inbounds [32 x i8], ptr %output_min, i64 0, i64 0
  %call561 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay560)
  store <2 x i64> %call561, ptr %voutput_min, align 16, !tbaa !11
  %452 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %453 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call562 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %452, <2 x i64> noundef %453)
  store <2 x i64> %call562, ptr %vout0123456701234567, align 16, !tbaa !11
  %454 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %455 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %454, <2 x i64> noundef %455)
  %456 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr563 = getelementptr inbounds i8, ptr %456, i64 8
  store ptr %add.ptr563, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscaled01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %457 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %457, 8
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %458 = load i64, ptr %c, align 8, !tbaa !5
  %cmp564 = icmp ne i64 %458, 0
  %lnot566 = xor i1 %cmp564, true
  %lnot568 = xor i1 %lnot566, true
  %lnot.ext569 = zext i1 %lnot568 to i32
  %conv570 = sext i32 %lnot.ext569 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv570, i64 0)
  %tobool571 = icmp ne i64 %expval, 0
  br i1 %tobool571, label %if.then572, label %if.end898

if.then572:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567573) #6
  %459 = load ptr, ptr %w, align 8, !tbaa !9
  %call574 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %459)
  store <4 x i64> %call574, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567575) #6
  %460 = load ptr, ptr %i0, align 8, !tbaa !9
  %call576 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %460)
  %call577 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call576)
  store <4 x i64> %call577, ptr %vi0x01234567575, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x01234567578) #6
  %461 = load ptr, ptr %w, align 8, !tbaa !9
  %462 = ptrtoint ptr %461 to i64
  %add579 = add i64 %462, 32
  %add580 = add i64 %add579, 0
  %463 = inttoptr i64 %add580 to ptr
  %call581 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %463)
  %call582 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call581)
  %464 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call583 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call582, <4 x i64> noundef %464)
  store <4 x i64> %call583, ptr %vk0x01234567578, align 32, !tbaa !11
  %465 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %466 = load <4 x i64>, ptr %vi0x01234567575, align 32, !tbaa !11
  %467 = load <4 x i64>, ptr %vk0x01234567578, align 32, !tbaa !11
  %call584 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %466, <4 x i64> noundef %467)
  %call585 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %465, <4 x i64> noundef %call584)
  store <4 x i64> %call585, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567586) #6
  %468 = load ptr, ptr %i1, align 8, !tbaa !9
  %call587 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %468)
  %call588 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call587)
  store <4 x i64> %call588, ptr %vi1x01234567586, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x01234567589) #6
  %469 = load ptr, ptr %w, align 8, !tbaa !9
  %470 = ptrtoint ptr %469 to i64
  %add590 = add i64 %470, 32
  %add591 = add i64 %add590, 8
  %471 = inttoptr i64 %add591 to ptr
  %call592 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %471)
  %call593 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call592)
  %472 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call594 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call593, <4 x i64> noundef %472)
  store <4 x i64> %call594, ptr %vk1x01234567589, align 32, !tbaa !11
  %473 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %474 = load <4 x i64>, ptr %vi1x01234567586, align 32, !tbaa !11
  %475 = load <4 x i64>, ptr %vk1x01234567589, align 32, !tbaa !11
  %call595 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %474, <4 x i64> noundef %475)
  %call596 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %473, <4 x i64> noundef %call595)
  store <4 x i64> %call596, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567597) #6
  %476 = load ptr, ptr %i2, align 8, !tbaa !9
  %call598 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %476)
  %call599 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call598)
  store <4 x i64> %call599, ptr %vi2x01234567597, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x01234567600) #6
  %477 = load ptr, ptr %w, align 8, !tbaa !9
  %478 = ptrtoint ptr %477 to i64
  %add601 = add i64 %478, 32
  %add602 = add i64 %add601, 16
  %479 = inttoptr i64 %add602 to ptr
  %call603 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %479)
  %call604 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call603)
  %480 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call605 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call604, <4 x i64> noundef %480)
  store <4 x i64> %call605, ptr %vk2x01234567600, align 32, !tbaa !11
  %481 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %482 = load <4 x i64>, ptr %vi2x01234567597, align 32, !tbaa !11
  %483 = load <4 x i64>, ptr %vk2x01234567600, align 32, !tbaa !11
  %call606 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %482, <4 x i64> noundef %483)
  %call607 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %481, <4 x i64> noundef %call606)
  store <4 x i64> %call607, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567608) #6
  %484 = load ptr, ptr %i3, align 8, !tbaa !9
  %call609 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %484)
  %call610 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call609)
  store <4 x i64> %call610, ptr %vi3x01234567608, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x01234567611) #6
  %485 = load ptr, ptr %w, align 8, !tbaa !9
  %486 = ptrtoint ptr %485 to i64
  %add612 = add i64 %486, 32
  %add613 = add i64 %add612, 24
  %487 = inttoptr i64 %add613 to ptr
  %call614 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %487)
  %call615 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call614)
  %488 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call616 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call615, <4 x i64> noundef %488)
  store <4 x i64> %call616, ptr %vk3x01234567611, align 32, !tbaa !11
  %489 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %490 = load <4 x i64>, ptr %vi3x01234567608, align 32, !tbaa !11
  %491 = load <4 x i64>, ptr %vk3x01234567611, align 32, !tbaa !11
  %call617 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %490, <4 x i64> noundef %491)
  %call618 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %489, <4 x i64> noundef %call617)
  store <4 x i64> %call618, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567619) #6
  %492 = load ptr, ptr %i4, align 8, !tbaa !9
  %call620 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %492)
  %call621 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call620)
  store <4 x i64> %call621, ptr %vi4x01234567619, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x01234567622) #6
  %493 = load ptr, ptr %w, align 8, !tbaa !9
  %494 = ptrtoint ptr %493 to i64
  %add623 = add i64 %494, 32
  %add624 = add i64 %add623, 32
  %495 = inttoptr i64 %add624 to ptr
  %call625 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %495)
  %call626 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call625)
  %496 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call627 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call626, <4 x i64> noundef %496)
  store <4 x i64> %call627, ptr %vk4x01234567622, align 32, !tbaa !11
  %497 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %498 = load <4 x i64>, ptr %vi4x01234567619, align 32, !tbaa !11
  %499 = load <4 x i64>, ptr %vk4x01234567622, align 32, !tbaa !11
  %call628 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %498, <4 x i64> noundef %499)
  %call629 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %497, <4 x i64> noundef %call628)
  store <4 x i64> %call629, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567630) #6
  %500 = load ptr, ptr %i5, align 8, !tbaa !9
  %call631 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %500)
  %call632 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call631)
  store <4 x i64> %call632, ptr %vi5x01234567630, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x01234567633) #6
  %501 = load ptr, ptr %w, align 8, !tbaa !9
  %502 = ptrtoint ptr %501 to i64
  %add634 = add i64 %502, 32
  %add635 = add i64 %add634, 40
  %503 = inttoptr i64 %add635 to ptr
  %call636 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %503)
  %call637 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call636)
  %504 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call638 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call637, <4 x i64> noundef %504)
  store <4 x i64> %call638, ptr %vk5x01234567633, align 32, !tbaa !11
  %505 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %506 = load <4 x i64>, ptr %vi5x01234567630, align 32, !tbaa !11
  %507 = load <4 x i64>, ptr %vk5x01234567633, align 32, !tbaa !11
  %call639 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %506, <4 x i64> noundef %507)
  %call640 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %505, <4 x i64> noundef %call639)
  store <4 x i64> %call640, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567641) #6
  %508 = load ptr, ptr %i6, align 8, !tbaa !9
  %call642 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %508)
  %call643 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call642)
  store <4 x i64> %call643, ptr %vi6x01234567641, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x01234567644) #6
  %509 = load ptr, ptr %w, align 8, !tbaa !9
  %510 = ptrtoint ptr %509 to i64
  %add645 = add i64 %510, 32
  %add646 = add i64 %add645, 48
  %511 = inttoptr i64 %add646 to ptr
  %call647 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %511)
  %call648 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call647)
  %512 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call649 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call648, <4 x i64> noundef %512)
  store <4 x i64> %call649, ptr %vk6x01234567644, align 32, !tbaa !11
  %513 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %514 = load <4 x i64>, ptr %vi6x01234567641, align 32, !tbaa !11
  %515 = load <4 x i64>, ptr %vk6x01234567644, align 32, !tbaa !11
  %call650 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %514, <4 x i64> noundef %515)
  %call651 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %513, <4 x i64> noundef %call650)
  store <4 x i64> %call651, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x01234567652) #6
  %516 = load ptr, ptr %i7, align 8, !tbaa !9
  %call653 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %516)
  %call654 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call653)
  store <4 x i64> %call654, ptr %vi7x01234567652, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x01234567655) #6
  %517 = load ptr, ptr %w, align 8, !tbaa !9
  %518 = ptrtoint ptr %517 to i64
  %add656 = add i64 %518, 32
  %add657 = add i64 %add656, 56
  %519 = inttoptr i64 %add657 to ptr
  %call658 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %519)
  %call659 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call658)
  %520 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call660 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call659, <4 x i64> noundef %520)
  store <4 x i64> %call660, ptr %vk7x01234567655, align 32, !tbaa !11
  %521 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %522 = load <4 x i64>, ptr %vi7x01234567652, align 32, !tbaa !11
  %523 = load <4 x i64>, ptr %vk7x01234567655, align 32, !tbaa !11
  %call661 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %522, <4 x i64> noundef %523)
  %call662 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %521, <4 x i64> noundef %call661)
  store <4 x i64> %call662, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x01234567663) #6
  %524 = load ptr, ptr %i8, align 8, !tbaa !9
  %call664 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %524)
  %call665 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call664)
  store <4 x i64> %call665, ptr %vi8x01234567663, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x01234567666) #6
  %525 = load ptr, ptr %w, align 8, !tbaa !9
  %526 = ptrtoint ptr %525 to i64
  %add667 = add i64 %526, 32
  %add668 = add i64 %add667, 64
  %527 = inttoptr i64 %add668 to ptr
  %call669 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %527)
  %call670 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call669)
  %528 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call671 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call670, <4 x i64> noundef %528)
  store <4 x i64> %call671, ptr %vk8x01234567666, align 32, !tbaa !11
  %529 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %530 = load <4 x i64>, ptr %vi8x01234567663, align 32, !tbaa !11
  %531 = load <4 x i64>, ptr %vk8x01234567666, align 32, !tbaa !11
  %call672 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %530, <4 x i64> noundef %531)
  %call673 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %529, <4 x i64> noundef %call672)
  store <4 x i64> %call673, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x01234567674) #6
  %532 = load ptr, ptr %i9, align 8, !tbaa !9
  %call675 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %532)
  %call676 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call675)
  store <4 x i64> %call676, ptr %vi9x01234567674, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x01234567677) #6
  %533 = load ptr, ptr %w, align 8, !tbaa !9
  %534 = ptrtoint ptr %533 to i64
  %add678 = add i64 %534, 32
  %add679 = add i64 %add678, 72
  %535 = inttoptr i64 %add679 to ptr
  %call680 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %535)
  %call681 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call680)
  %536 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call682 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call681, <4 x i64> noundef %536)
  store <4 x i64> %call682, ptr %vk9x01234567677, align 32, !tbaa !11
  %537 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %538 = load <4 x i64>, ptr %vi9x01234567674, align 32, !tbaa !11
  %539 = load <4 x i64>, ptr %vk9x01234567677, align 32, !tbaa !11
  %call683 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %538, <4 x i64> noundef %539)
  %call684 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %537, <4 x i64> noundef %call683)
  store <4 x i64> %call684, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x01234567685) #6
  %540 = load ptr, ptr %i10, align 8, !tbaa !9
  %call686 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %540)
  %call687 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call686)
  store <4 x i64> %call687, ptr %vi10x01234567685, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x01234567688) #6
  %541 = load ptr, ptr %w, align 8, !tbaa !9
  %542 = ptrtoint ptr %541 to i64
  %add689 = add i64 %542, 32
  %add690 = add i64 %add689, 80
  %543 = inttoptr i64 %add690 to ptr
  %call691 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %543)
  %call692 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call691)
  %544 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call693 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call692, <4 x i64> noundef %544)
  store <4 x i64> %call693, ptr %vk10x01234567688, align 32, !tbaa !11
  %545 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %546 = load <4 x i64>, ptr %vi10x01234567685, align 32, !tbaa !11
  %547 = load <4 x i64>, ptr %vk10x01234567688, align 32, !tbaa !11
  %call694 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %546, <4 x i64> noundef %547)
  %call695 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %545, <4 x i64> noundef %call694)
  store <4 x i64> %call695, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x01234567696) #6
  %548 = load ptr, ptr %i11, align 8, !tbaa !9
  %call697 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %548)
  %call698 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call697)
  store <4 x i64> %call698, ptr %vi11x01234567696, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x01234567699) #6
  %549 = load ptr, ptr %w, align 8, !tbaa !9
  %550 = ptrtoint ptr %549 to i64
  %add700 = add i64 %550, 32
  %add701 = add i64 %add700, 88
  %551 = inttoptr i64 %add701 to ptr
  %call702 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %551)
  %call703 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call702)
  %552 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call704 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call703, <4 x i64> noundef %552)
  store <4 x i64> %call704, ptr %vk11x01234567699, align 32, !tbaa !11
  %553 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %554 = load <4 x i64>, ptr %vi11x01234567696, align 32, !tbaa !11
  %555 = load <4 x i64>, ptr %vk11x01234567699, align 32, !tbaa !11
  %call705 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %554, <4 x i64> noundef %555)
  %call706 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %553, <4 x i64> noundef %call705)
  store <4 x i64> %call706, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x01234567707) #6
  %556 = load ptr, ptr %i12, align 8, !tbaa !9
  %call708 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %556)
  %call709 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call708)
  store <4 x i64> %call709, ptr %vi12x01234567707, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x01234567710) #6
  %557 = load ptr, ptr %w, align 8, !tbaa !9
  %558 = ptrtoint ptr %557 to i64
  %add711 = add i64 %558, 32
  %add712 = add i64 %add711, 96
  %559 = inttoptr i64 %add712 to ptr
  %call713 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %559)
  %call714 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call713)
  %560 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call715 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call714, <4 x i64> noundef %560)
  store <4 x i64> %call715, ptr %vk12x01234567710, align 32, !tbaa !11
  %561 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %562 = load <4 x i64>, ptr %vi12x01234567707, align 32, !tbaa !11
  %563 = load <4 x i64>, ptr %vk12x01234567710, align 32, !tbaa !11
  %call716 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %562, <4 x i64> noundef %563)
  %call717 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %561, <4 x i64> noundef %call716)
  store <4 x i64> %call717, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x01234567718) #6
  %564 = load ptr, ptr %i13, align 8, !tbaa !9
  %call719 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %564)
  %call720 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call719)
  store <4 x i64> %call720, ptr %vi13x01234567718, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x01234567721) #6
  %565 = load ptr, ptr %w, align 8, !tbaa !9
  %566 = ptrtoint ptr %565 to i64
  %add722 = add i64 %566, 32
  %add723 = add i64 %add722, 104
  %567 = inttoptr i64 %add723 to ptr
  %call724 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %567)
  %call725 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call724)
  %568 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call726 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call725, <4 x i64> noundef %568)
  store <4 x i64> %call726, ptr %vk13x01234567721, align 32, !tbaa !11
  %569 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %570 = load <4 x i64>, ptr %vi13x01234567718, align 32, !tbaa !11
  %571 = load <4 x i64>, ptr %vk13x01234567721, align 32, !tbaa !11
  %call727 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %570, <4 x i64> noundef %571)
  %call728 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %569, <4 x i64> noundef %call727)
  store <4 x i64> %call728, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x01234567729) #6
  %572 = load ptr, ptr %i14, align 8, !tbaa !9
  %call730 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %572)
  %call731 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call730)
  store <4 x i64> %call731, ptr %vi14x01234567729, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x01234567732) #6
  %573 = load ptr, ptr %w, align 8, !tbaa !9
  %574 = ptrtoint ptr %573 to i64
  %add733 = add i64 %574, 32
  %add734 = add i64 %add733, 112
  %575 = inttoptr i64 %add734 to ptr
  %call735 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %575)
  %call736 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call735)
  %576 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call737 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call736, <4 x i64> noundef %576)
  store <4 x i64> %call737, ptr %vk14x01234567732, align 32, !tbaa !11
  %577 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %578 = load <4 x i64>, ptr %vi14x01234567729, align 32, !tbaa !11
  %579 = load <4 x i64>, ptr %vk14x01234567732, align 32, !tbaa !11
  %call738 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %578, <4 x i64> noundef %579)
  %call739 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %577, <4 x i64> noundef %call738)
  store <4 x i64> %call739, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x01234567740) #6
  %580 = load ptr, ptr %i15, align 8, !tbaa !9
  %call741 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %580)
  %call742 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call741)
  store <4 x i64> %call742, ptr %vi15x01234567740, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x01234567743) #6
  %581 = load ptr, ptr %w, align 8, !tbaa !9
  %582 = ptrtoint ptr %581 to i64
  %add744 = add i64 %582, 32
  %add745 = add i64 %add744, 120
  %583 = inttoptr i64 %add745 to ptr
  %call746 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %583)
  %call747 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call746)
  %584 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call748 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call747, <4 x i64> noundef %584)
  store <4 x i64> %call748, ptr %vk15x01234567743, align 32, !tbaa !11
  %585 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %586 = load <4 x i64>, ptr %vi15x01234567740, align 32, !tbaa !11
  %587 = load <4 x i64>, ptr %vk15x01234567743, align 32, !tbaa !11
  %call749 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %586, <4 x i64> noundef %587)
  %call750 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %585, <4 x i64> noundef %call749)
  store <4 x i64> %call750, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x01234567751) #6
  %588 = load ptr, ptr %i16, align 8, !tbaa !9
  %call752 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %588)
  %call753 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call752)
  store <4 x i64> %call753, ptr %vi16x01234567751, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x01234567754) #6
  %589 = load ptr, ptr %w, align 8, !tbaa !9
  %590 = ptrtoint ptr %589 to i64
  %add755 = add i64 %590, 32
  %add756 = add i64 %add755, 128
  %591 = inttoptr i64 %add756 to ptr
  %call757 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %591)
  %call758 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call757)
  %592 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call759 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call758, <4 x i64> noundef %592)
  store <4 x i64> %call759, ptr %vk16x01234567754, align 32, !tbaa !11
  %593 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %594 = load <4 x i64>, ptr %vi16x01234567751, align 32, !tbaa !11
  %595 = load <4 x i64>, ptr %vk16x01234567754, align 32, !tbaa !11
  %call760 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %594, <4 x i64> noundef %595)
  %call761 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %593, <4 x i64> noundef %call760)
  store <4 x i64> %call761, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x01234567762) #6
  %596 = load ptr, ptr %i17, align 8, !tbaa !9
  %call763 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %596)
  %call764 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call763)
  store <4 x i64> %call764, ptr %vi17x01234567762, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x01234567765) #6
  %597 = load ptr, ptr %w, align 8, !tbaa !9
  %598 = ptrtoint ptr %597 to i64
  %add766 = add i64 %598, 32
  %add767 = add i64 %add766, 136
  %599 = inttoptr i64 %add767 to ptr
  %call768 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %599)
  %call769 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call768)
  %600 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call770 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call769, <4 x i64> noundef %600)
  store <4 x i64> %call770, ptr %vk17x01234567765, align 32, !tbaa !11
  %601 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %602 = load <4 x i64>, ptr %vi17x01234567762, align 32, !tbaa !11
  %603 = load <4 x i64>, ptr %vk17x01234567765, align 32, !tbaa !11
  %call771 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %602, <4 x i64> noundef %603)
  %call772 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %601, <4 x i64> noundef %call771)
  store <4 x i64> %call772, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x01234567773) #6
  %604 = load ptr, ptr %i18, align 8, !tbaa !9
  %call774 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %604)
  %call775 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call774)
  store <4 x i64> %call775, ptr %vi18x01234567773, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x01234567776) #6
  %605 = load ptr, ptr %w, align 8, !tbaa !9
  %606 = ptrtoint ptr %605 to i64
  %add777 = add i64 %606, 32
  %add778 = add i64 %add777, 144
  %607 = inttoptr i64 %add778 to ptr
  %call779 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %607)
  %call780 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call779)
  %608 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call781 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call780, <4 x i64> noundef %608)
  store <4 x i64> %call781, ptr %vk18x01234567776, align 32, !tbaa !11
  %609 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %610 = load <4 x i64>, ptr %vi18x01234567773, align 32, !tbaa !11
  %611 = load <4 x i64>, ptr %vk18x01234567776, align 32, !tbaa !11
  %call782 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %610, <4 x i64> noundef %611)
  %call783 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %609, <4 x i64> noundef %call782)
  store <4 x i64> %call783, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x01234567784) #6
  %612 = load ptr, ptr %i19, align 8, !tbaa !9
  %call785 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %612)
  %call786 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call785)
  store <4 x i64> %call786, ptr %vi19x01234567784, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x01234567787) #6
  %613 = load ptr, ptr %w, align 8, !tbaa !9
  %614 = ptrtoint ptr %613 to i64
  %add788 = add i64 %614, 32
  %add789 = add i64 %add788, 152
  %615 = inttoptr i64 %add789 to ptr
  %call790 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %615)
  %call791 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call790)
  %616 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call792 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call791, <4 x i64> noundef %616)
  store <4 x i64> %call792, ptr %vk19x01234567787, align 32, !tbaa !11
  %617 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %618 = load <4 x i64>, ptr %vi19x01234567784, align 32, !tbaa !11
  %619 = load <4 x i64>, ptr %vk19x01234567787, align 32, !tbaa !11
  %call793 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %618, <4 x i64> noundef %619)
  %call794 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %617, <4 x i64> noundef %call793)
  store <4 x i64> %call794, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x01234567795) #6
  %620 = load ptr, ptr %i20, align 8, !tbaa !9
  %call796 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %620)
  %call797 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call796)
  store <4 x i64> %call797, ptr %vi20x01234567795, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x01234567798) #6
  %621 = load ptr, ptr %w, align 8, !tbaa !9
  %622 = ptrtoint ptr %621 to i64
  %add799 = add i64 %622, 32
  %add800 = add i64 %add799, 160
  %623 = inttoptr i64 %add800 to ptr
  %call801 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %623)
  %call802 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call801)
  %624 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call803 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call802, <4 x i64> noundef %624)
  store <4 x i64> %call803, ptr %vk20x01234567798, align 32, !tbaa !11
  %625 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %626 = load <4 x i64>, ptr %vi20x01234567795, align 32, !tbaa !11
  %627 = load <4 x i64>, ptr %vk20x01234567798, align 32, !tbaa !11
  %call804 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %626, <4 x i64> noundef %627)
  %call805 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %625, <4 x i64> noundef %call804)
  store <4 x i64> %call805, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x01234567806) #6
  %628 = load ptr, ptr %i21, align 8, !tbaa !9
  %call807 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %628)
  %call808 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call807)
  store <4 x i64> %call808, ptr %vi21x01234567806, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x01234567809) #6
  %629 = load ptr, ptr %w, align 8, !tbaa !9
  %630 = ptrtoint ptr %629 to i64
  %add810 = add i64 %630, 32
  %add811 = add i64 %add810, 168
  %631 = inttoptr i64 %add811 to ptr
  %call812 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %631)
  %call813 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call812)
  %632 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call814 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call813, <4 x i64> noundef %632)
  store <4 x i64> %call814, ptr %vk21x01234567809, align 32, !tbaa !11
  %633 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %634 = load <4 x i64>, ptr %vi21x01234567806, align 32, !tbaa !11
  %635 = load <4 x i64>, ptr %vk21x01234567809, align 32, !tbaa !11
  %call815 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %634, <4 x i64> noundef %635)
  %call816 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %633, <4 x i64> noundef %call815)
  store <4 x i64> %call816, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x01234567817) #6
  %636 = load ptr, ptr %i22, align 8, !tbaa !9
  %call818 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %636)
  %call819 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call818)
  store <4 x i64> %call819, ptr %vi22x01234567817, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x01234567820) #6
  %637 = load ptr, ptr %w, align 8, !tbaa !9
  %638 = ptrtoint ptr %637 to i64
  %add821 = add i64 %638, 32
  %add822 = add i64 %add821, 176
  %639 = inttoptr i64 %add822 to ptr
  %call823 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %639)
  %call824 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call823)
  %640 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call825 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call824, <4 x i64> noundef %640)
  store <4 x i64> %call825, ptr %vk22x01234567820, align 32, !tbaa !11
  %641 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %642 = load <4 x i64>, ptr %vi22x01234567817, align 32, !tbaa !11
  %643 = load <4 x i64>, ptr %vk22x01234567820, align 32, !tbaa !11
  %call826 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %642, <4 x i64> noundef %643)
  %call827 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %641, <4 x i64> noundef %call826)
  store <4 x i64> %call827, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x01234567828) #6
  %644 = load ptr, ptr %i23, align 8, !tbaa !9
  %call829 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %644)
  %call830 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call829)
  store <4 x i64> %call830, ptr %vi23x01234567828, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x01234567831) #6
  %645 = load ptr, ptr %w, align 8, !tbaa !9
  %646 = ptrtoint ptr %645 to i64
  %add832 = add i64 %646, 32
  %add833 = add i64 %add832, 184
  %647 = inttoptr i64 %add833 to ptr
  %call834 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %647)
  %call835 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call834)
  %648 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call836 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call835, <4 x i64> noundef %648)
  store <4 x i64> %call836, ptr %vk23x01234567831, align 32, !tbaa !11
  %649 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %650 = load <4 x i64>, ptr %vi23x01234567828, align 32, !tbaa !11
  %651 = load <4 x i64>, ptr %vk23x01234567831, align 32, !tbaa !11
  %call837 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %650, <4 x i64> noundef %651)
  %call838 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %649, <4 x i64> noundef %call837)
  store <4 x i64> %call838, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x01234567839) #6
  %652 = load ptr, ptr %i24, align 8, !tbaa !9
  %call840 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %652)
  %call841 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call840)
  store <4 x i64> %call841, ptr %vi24x01234567839, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x01234567842) #6
  %653 = load ptr, ptr %w, align 8, !tbaa !9
  %654 = ptrtoint ptr %653 to i64
  %add843 = add i64 %654, 32
  %add844 = add i64 %add843, 192
  %655 = inttoptr i64 %add844 to ptr
  %call845 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %655)
  %call846 = call <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %call845)
  %656 = load <4 x i64>, ptr %vk_zero_point, align 32, !tbaa !11
  %call847 = call <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %call846, <4 x i64> noundef %656)
  store <4 x i64> %call847, ptr %vk24x01234567842, align 32, !tbaa !11
  %657 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %658 = load <4 x i64>, ptr %vi24x01234567839, align 32, !tbaa !11
  %659 = load <4 x i64>, ptr %vk24x01234567842, align 32, !tbaa !11
  %call848 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %658, <4 x i64> noundef %659)
  %call849 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %657, <4 x i64> noundef %call848)
  store <4 x i64> %call849, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscaled01234567850) #6
  %660 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %call851 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %660)
  store <8 x float> %call851, ptr %vscaled01234567850, align 32, !tbaa !11
  %661 = load <8 x float>, ptr %vscaled01234567850, align 32, !tbaa !11
  %662 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale852 = getelementptr inbounds %struct.anon.3, ptr %662, i32 0, i32 1
  %arraydecay853 = getelementptr inbounds [8 x float], ptr %scale852, i64 0, i64 0
  %call854 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay853)
  %call855 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %661, <8 x float> noundef %call854)
  store <8 x float> %call855, ptr %vscaled01234567850, align 32, !tbaa !11
  %663 = load <8 x float>, ptr %vscaled01234567850, align 32, !tbaa !11
  %664 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point856 = getelementptr inbounds %struct.anon.3, ptr %664, i32 0, i32 2
  %arraydecay857 = getelementptr inbounds [8 x float], ptr %output_max_less_zero_point856, i64 0, i64 0
  %call858 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay857)
  %call859 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %663, <8 x float> noundef %call858)
  store <8 x float> %call859, ptr %vscaled01234567850, align 32, !tbaa !11
  %665 = load <8 x float>, ptr %vscaled01234567850, align 32, !tbaa !11
  %call860 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %665)
  store <4 x i64> %call860, ptr %vacc01234567573, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point861) #6
  %666 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point862 = getelementptr inbounds %struct.anon.3, ptr %666, i32 0, i32 3
  %arraydecay863 = getelementptr inbounds [16 x i16], ptr %output_zero_point862, i64 0, i64 0
  %call864 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay863)
  store <2 x i64> %call864, ptr %voutput_zero_point861, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567865) #6
  %667 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %call866 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %667)
  %668 = load <4 x i64>, ptr %vacc01234567573, align 32, !tbaa !11
  %extract867 = shufflevector <4 x i64> %668, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call868 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call866, <2 x i64> noundef %extract867)
  %669 = load <2 x i64>, ptr %voutput_zero_point861, align 16, !tbaa !11
  %call869 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call868, <2 x i64> noundef %669)
  store <2 x i64> %call869, ptr %vout01234567865, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567870) #6
  %670 = load <2 x i64>, ptr %vout01234567865, align 16, !tbaa !11
  %671 = load <2 x i64>, ptr %vout01234567865, align 16, !tbaa !11
  %call871 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %670, <2 x i64> noundef %671)
  store <2 x i64> %call871, ptr %vout0123456701234567870, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min872) #6
  %672 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min873 = getelementptr inbounds %struct.anon.3, ptr %672, i32 0, i32 4
  %arraydecay874 = getelementptr inbounds [32 x i8], ptr %output_min873, i64 0, i64 0
  %call875 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay874)
  store <2 x i64> %call875, ptr %voutput_min872, align 16, !tbaa !11
  %673 = load <2 x i64>, ptr %vout0123456701234567870, align 16, !tbaa !11
  %674 = load <2 x i64>, ptr %voutput_min872, align 16, !tbaa !11
  %call876 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %673, <2 x i64> noundef %674)
  store <2 x i64> %call876, ptr %vout0123456701234567870, align 16, !tbaa !11
  %675 = load i64, ptr %c, align 8, !tbaa !5
  %and = and i64 %675, 4
  %tobool877 = icmp ne i64 %and, 0
  br i1 %tobool877, label %if.then878, label %if.end882

if.then878:                                       ; preds = %if.then572
  %676 = load <2 x i64>, ptr %vout0123456701234567870, align 16, !tbaa !11
  %call879 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %676)
  %677 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call879, ptr %677, align 4, !tbaa !15
  %678 = load <2 x i64>, ptr %vout0123456701234567870, align 16, !tbaa !11
  %call880 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %678, i32 noundef 32)
  store <2 x i64> %call880, ptr %vout0123456701234567870, align 16, !tbaa !11
  %679 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr881 = getelementptr inbounds i8, ptr %679, i64 4
  store ptr %add.ptr881, ptr %output.addr, align 8, !tbaa !9
  br label %if.end882

if.end882:                                        ; preds = %if.then878, %if.then572
  %680 = load i64, ptr %c, align 8, !tbaa !5
  %and883 = and i64 %680, 2
  %tobool884 = icmp ne i64 %and883, 0
  br i1 %tobool884, label %if.then885, label %if.end890

if.then885:                                       ; preds = %if.end882
  %681 = load <2 x i64>, ptr %vout0123456701234567870, align 16, !tbaa !11
  %682 = bitcast <2 x i64> %681 to <8 x i16>
  %683 = extractelement <8 x i16> %682, i64 0
  %conv886 = zext i16 %683 to i32
  %conv887 = trunc i32 %conv886 to i16
  %684 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv887, ptr %684, align 2, !tbaa !17
  %685 = load <2 x i64>, ptr %vout0123456701234567870, align 16, !tbaa !11
  %call888 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %685, i32 noundef 16)
  store <2 x i64> %call888, ptr %vout0123456701234567870, align 16, !tbaa !11
  %686 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr889 = getelementptr inbounds i8, ptr %686, i64 2
  store ptr %add.ptr889, ptr %output.addr, align 8, !tbaa !9
  br label %if.end890

if.end890:                                        ; preds = %if.then885, %if.end882
  %687 = load i64, ptr %c, align 8, !tbaa !5
  %and891 = and i64 %687, 1
  %tobool892 = icmp ne i64 %and891, 0
  br i1 %tobool892, label %if.then893, label %if.end897

if.then893:                                       ; preds = %if.end890
  %688 = load <2 x i64>, ptr %vout0123456701234567870, align 16, !tbaa !11
  %689 = bitcast <2 x i64> %688 to <16 x i8>
  %690 = extractelement <16 x i8> %689, i64 0
  %conv894 = zext i8 %690 to i32
  %conv895 = trunc i32 %conv894 to i8
  %691 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv895, ptr %691, align 1, !tbaa !11
  %692 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr896 = getelementptr inbounds i8, ptr %692, i64 1
  store ptr %add.ptr896, ptr %output.addr, align 8, !tbaa !9
  br label %if.end897

if.end897:                                        ; preds = %if.then893, %if.end890
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min872) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567870) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567865) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point861) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscaled01234567850) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x01234567842) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x01234567839) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x01234567831) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x01234567828) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x01234567820) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x01234567817) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x01234567809) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x01234567806) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x01234567798) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x01234567795) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x01234567787) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x01234567784) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x01234567776) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x01234567773) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x01234567765) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x01234567762) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x01234567754) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x01234567751) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x01234567743) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x01234567740) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x01234567732) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x01234567729) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x01234567721) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x01234567718) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x01234567710) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x01234567707) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x01234567699) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x01234567696) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x01234567688) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x01234567685) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x01234567677) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x01234567674) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x01234567666) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x01234567663) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x01234567655) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x01234567652) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x01234567644) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x01234567641) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x01234567633) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x01234567630) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x01234567622) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x01234567619) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x01234567611) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x01234567608) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x01234567600) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x01234567597) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x01234567589) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567586) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x01234567578) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567575) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567573) #6
  br label %if.end898

if.end898:                                        ; preds = %if.end897, %for.end
  %693 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %694 = ptrtoint ptr %693 to i64
  %695 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add899 = add i64 %694, %695
  %696 = inttoptr i64 %add899 to ptr
  store ptr %696, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i24) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i23) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i19) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i18) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i16) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i15) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i14) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #6
  br label %do.cond

do.cond:                                          ; preds = %if.end898
  %697 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %697, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp900 = icmp ne i64 %dec, 0
  br i1 %cmp900, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk_zero_point) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_cvtepu16_epi32(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %conv = zext <8 x i16> %1 to <8 x i32>
  %2 = bitcast <8 x i32> %conv to <4 x i64>
  ret <4 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_loadu_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si256, ptr %0, i32 0, i32 0
  %1 = load <4 x i64>, ptr %__v, align 1, !tbaa !11
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_cvtepu8_epi32(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = zext <8 x i8> %shuffle to <8 x i32>
  %4 = bitcast <8 x i32> %conv to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !11
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !11
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_sub_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %sub = sub <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %sub to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %add = add <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %add to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %mul = mul <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %mul to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %conv = sitofp <8 x i32> %1 to <8 x float>
  ret <8 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !11
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_min_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %2 = call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %0)
  %2 = bitcast <8 x i32> %1 to <4 x i64>
  ret <4 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %shuffle = shufflevector <4 x i64> %0, <4 x i64> %1, <2 x i32> <i32 0, i32 1>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
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
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float>) #4

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

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
!11 = !{!7, !7, i64 0}
!12 = !{}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !14}

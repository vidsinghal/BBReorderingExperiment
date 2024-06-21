; ModuleID = 'samples/875.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-dwconv/gen/up4x25-minmax-fp32-scalar-imagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i32, float, float, i32, i32, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_dwconv_minmax_fp32_ukernel_up4x25__scalar_imagic(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
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
  %vscale = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_min = alloca i32, align 4
  %vmagic_max = alloca i32, align 4
  %vmagic_bias_less_zero_point = alloca i32, align 4
  %vkernel_zero_point = alloca i32, align 4
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
  %vacc0 = alloca i32, align 4
  %vacc1 = alloca i32, align 4
  %vacc2 = alloca i32, align 4
  %vacc3 = alloca i32, align 4
  %vi0x0 = alloca i32, align 4
  %vi0x1 = alloca i32, align 4
  %vi0x2 = alloca i32, align 4
  %vi0x3 = alloca i32, align 4
  %vk0x0 = alloca i32, align 4
  %vk0x1 = alloca i32, align 4
  %vk0x2 = alloca i32, align 4
  %vk0x3 = alloca i32, align 4
  %vi1x0 = alloca i32, align 4
  %vi1x1 = alloca i32, align 4
  %vi1x2 = alloca i32, align 4
  %vi1x3 = alloca i32, align 4
  %vk1x0 = alloca i32, align 4
  %vk1x1 = alloca i32, align 4
  %vk1x2 = alloca i32, align 4
  %vk1x3 = alloca i32, align 4
  %vi2x0 = alloca i32, align 4
  %vi2x1 = alloca i32, align 4
  %vi2x2 = alloca i32, align 4
  %vi2x3 = alloca i32, align 4
  %vk2x0 = alloca i32, align 4
  %vk2x1 = alloca i32, align 4
  %vk2x2 = alloca i32, align 4
  %vk2x3 = alloca i32, align 4
  %vi3x0 = alloca i32, align 4
  %vi3x1 = alloca i32, align 4
  %vi3x2 = alloca i32, align 4
  %vi3x3 = alloca i32, align 4
  %vk3x0 = alloca i32, align 4
  %vk3x1 = alloca i32, align 4
  %vk3x2 = alloca i32, align 4
  %vk3x3 = alloca i32, align 4
  %vi4x0 = alloca i32, align 4
  %vi4x1 = alloca i32, align 4
  %vi4x2 = alloca i32, align 4
  %vi4x3 = alloca i32, align 4
  %vk4x0 = alloca i32, align 4
  %vk4x1 = alloca i32, align 4
  %vk4x2 = alloca i32, align 4
  %vk4x3 = alloca i32, align 4
  %vi5x0 = alloca i32, align 4
  %vi5x1 = alloca i32, align 4
  %vi5x2 = alloca i32, align 4
  %vi5x3 = alloca i32, align 4
  %vk5x0 = alloca i32, align 4
  %vk5x1 = alloca i32, align 4
  %vk5x2 = alloca i32, align 4
  %vk5x3 = alloca i32, align 4
  %vi6x0 = alloca i32, align 4
  %vi6x1 = alloca i32, align 4
  %vi6x2 = alloca i32, align 4
  %vi6x3 = alloca i32, align 4
  %vk6x0 = alloca i32, align 4
  %vk6x1 = alloca i32, align 4
  %vk6x2 = alloca i32, align 4
  %vk6x3 = alloca i32, align 4
  %vi7x0 = alloca i32, align 4
  %vi7x1 = alloca i32, align 4
  %vi7x2 = alloca i32, align 4
  %vi7x3 = alloca i32, align 4
  %vk7x0 = alloca i32, align 4
  %vk7x1 = alloca i32, align 4
  %vk7x2 = alloca i32, align 4
  %vk7x3 = alloca i32, align 4
  %vi8x0 = alloca i32, align 4
  %vi8x1 = alloca i32, align 4
  %vi8x2 = alloca i32, align 4
  %vi8x3 = alloca i32, align 4
  %vk8x0 = alloca i32, align 4
  %vk8x1 = alloca i32, align 4
  %vk8x2 = alloca i32, align 4
  %vk8x3 = alloca i32, align 4
  %vi9x0 = alloca i32, align 4
  %vi9x1 = alloca i32, align 4
  %vi9x2 = alloca i32, align 4
  %vi9x3 = alloca i32, align 4
  %vk9x0 = alloca i32, align 4
  %vk9x1 = alloca i32, align 4
  %vk9x2 = alloca i32, align 4
  %vk9x3 = alloca i32, align 4
  %vi10x0 = alloca i32, align 4
  %vi10x1 = alloca i32, align 4
  %vi10x2 = alloca i32, align 4
  %vi10x3 = alloca i32, align 4
  %vk10x0 = alloca i32, align 4
  %vk10x1 = alloca i32, align 4
  %vk10x2 = alloca i32, align 4
  %vk10x3 = alloca i32, align 4
  %vi11x0 = alloca i32, align 4
  %vi11x1 = alloca i32, align 4
  %vi11x2 = alloca i32, align 4
  %vi11x3 = alloca i32, align 4
  %vk11x0 = alloca i32, align 4
  %vk11x1 = alloca i32, align 4
  %vk11x2 = alloca i32, align 4
  %vk11x3 = alloca i32, align 4
  %vi12x0 = alloca i32, align 4
  %vi12x1 = alloca i32, align 4
  %vi12x2 = alloca i32, align 4
  %vi12x3 = alloca i32, align 4
  %vk12x0 = alloca i32, align 4
  %vk12x1 = alloca i32, align 4
  %vk12x2 = alloca i32, align 4
  %vk12x3 = alloca i32, align 4
  %vi13x0 = alloca i32, align 4
  %vi13x1 = alloca i32, align 4
  %vi13x2 = alloca i32, align 4
  %vi13x3 = alloca i32, align 4
  %vk13x0 = alloca i32, align 4
  %vk13x1 = alloca i32, align 4
  %vk13x2 = alloca i32, align 4
  %vk13x3 = alloca i32, align 4
  %vi14x0 = alloca i32, align 4
  %vi14x1 = alloca i32, align 4
  %vi14x2 = alloca i32, align 4
  %vi14x3 = alloca i32, align 4
  %vk14x0 = alloca i32, align 4
  %vk14x1 = alloca i32, align 4
  %vk14x2 = alloca i32, align 4
  %vk14x3 = alloca i32, align 4
  %vi15x0 = alloca i32, align 4
  %vi15x1 = alloca i32, align 4
  %vi15x2 = alloca i32, align 4
  %vi15x3 = alloca i32, align 4
  %vk15x0 = alloca i32, align 4
  %vk15x1 = alloca i32, align 4
  %vk15x2 = alloca i32, align 4
  %vk15x3 = alloca i32, align 4
  %vi16x0 = alloca i32, align 4
  %vi16x1 = alloca i32, align 4
  %vi16x2 = alloca i32, align 4
  %vi16x3 = alloca i32, align 4
  %vk16x0 = alloca i32, align 4
  %vk16x1 = alloca i32, align 4
  %vk16x2 = alloca i32, align 4
  %vk16x3 = alloca i32, align 4
  %vi17x0 = alloca i32, align 4
  %vi17x1 = alloca i32, align 4
  %vi17x2 = alloca i32, align 4
  %vi17x3 = alloca i32, align 4
  %vk17x0 = alloca i32, align 4
  %vk17x1 = alloca i32, align 4
  %vk17x2 = alloca i32, align 4
  %vk17x3 = alloca i32, align 4
  %vi18x0 = alloca i32, align 4
  %vi18x1 = alloca i32, align 4
  %vi18x2 = alloca i32, align 4
  %vi18x3 = alloca i32, align 4
  %vk18x0 = alloca i32, align 4
  %vk18x1 = alloca i32, align 4
  %vk18x2 = alloca i32, align 4
  %vk18x3 = alloca i32, align 4
  %vi19x0 = alloca i32, align 4
  %vi19x1 = alloca i32, align 4
  %vi19x2 = alloca i32, align 4
  %vi19x3 = alloca i32, align 4
  %vk19x0 = alloca i32, align 4
  %vk19x1 = alloca i32, align 4
  %vk19x2 = alloca i32, align 4
  %vk19x3 = alloca i32, align 4
  %vi20x0 = alloca i32, align 4
  %vi20x1 = alloca i32, align 4
  %vi20x2 = alloca i32, align 4
  %vi20x3 = alloca i32, align 4
  %vk20x0 = alloca i32, align 4
  %vk20x1 = alloca i32, align 4
  %vk20x2 = alloca i32, align 4
  %vk20x3 = alloca i32, align 4
  %vi21x0 = alloca i32, align 4
  %vi21x1 = alloca i32, align 4
  %vi21x2 = alloca i32, align 4
  %vi21x3 = alloca i32, align 4
  %vk21x0 = alloca i32, align 4
  %vk21x1 = alloca i32, align 4
  %vk21x2 = alloca i32, align 4
  %vk21x3 = alloca i32, align 4
  %vi22x0 = alloca i32, align 4
  %vi22x1 = alloca i32, align 4
  %vi22x2 = alloca i32, align 4
  %vi22x3 = alloca i32, align 4
  %vk22x0 = alloca i32, align 4
  %vk22x1 = alloca i32, align 4
  %vk22x2 = alloca i32, align 4
  %vk22x3 = alloca i32, align 4
  %vi23x0 = alloca i32, align 4
  %vi23x1 = alloca i32, align 4
  %vi23x2 = alloca i32, align 4
  %vi23x3 = alloca i32, align 4
  %vk23x0 = alloca i32, align 4
  %vk23x1 = alloca i32, align 4
  %vk23x2 = alloca i32, align 4
  %vk23x3 = alloca i32, align 4
  %vi24x0 = alloca i32, align 4
  %vi24x1 = alloca i32, align 4
  %vi24x2 = alloca i32, align 4
  %vi24x3 = alloca i32, align 4
  %vk24x0 = alloca i32, align 4
  %vk24x1 = alloca i32, align 4
  %vk24x2 = alloca i32, align 4
  %vk24x3 = alloca i32, align 4
  %vfpacc0 = alloca float, align 4
  %vfpacc1 = alloca float, align 4
  %vfpacc2 = alloca float, align 4
  %vfpacc3 = alloca float, align 4
  %vout0 = alloca i32, align 4
  %vout1 = alloca i32, align 4
  %vout2 = alloca i32, align 4
  %vout3 = alloca i32, align 4
  %k = alloca ptr, align 8
  %vacc = alloca i32, align 4
  %vi0 = alloca i32, align 4
  %vk0 = alloca i32, align 4
  %vi1 = alloca i32, align 4
  %vk1 = alloca i32, align 4
  %vi2 = alloca i32, align 4
  %vk2 = alloca i32, align 4
  %vi3 = alloca i32, align 4
  %vk3 = alloca i32, align 4
  %vi4 = alloca i32, align 4
  %vk4 = alloca i32, align 4
  %vi5 = alloca i32, align 4
  %vk5 = alloca i32, align 4
  %vi6 = alloca i32, align 4
  %vk6 = alloca i32, align 4
  %vi7 = alloca i32, align 4
  %vk7 = alloca i32, align 4
  %vi8 = alloca i32, align 4
  %vk8 = alloca i32, align 4
  %vi9 = alloca i32, align 4
  %vk9 = alloca i32, align 4
  %vi10 = alloca i32, align 4
  %vk10 = alloca i32, align 4
  %vi11 = alloca i32, align 4
  %vk11 = alloca i32, align 4
  %vi12 = alloca i32, align 4
  %vk12 = alloca i32, align 4
  %vi13 = alloca i32, align 4
  %vk13 = alloca i32, align 4
  %vi14 = alloca i32, align 4
  %vk14 = alloca i32, align 4
  %vi15 = alloca i32, align 4
  %vk15 = alloca i32, align 4
  %vi16 = alloca i32, align 4
  %vk16 = alloca i32, align 4
  %vi17 = alloca i32, align 4
  %vk17 = alloca i32, align 4
  %vi18 = alloca i32, align 4
  %vk18 = alloca i32, align 4
  %vi19 = alloca i32, align 4
  %vk19 = alloca i32, align 4
  %vi20 = alloca i32, align 4
  %vk20 = alloca i32, align 4
  %vi21 = alloca i32, align 4
  %vk21 = alloca i32, align 4
  %vi22 = alloca i32, align 4
  %vk22 = alloca i32, align 4
  %vi23 = alloca i32, align 4
  %vk23 = alloca i32, align 4
  %vi24 = alloca i32, align 4
  %vk24 = alloca i32, align 4
  %vfpacc = alloca float, align 4
  %vout = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 1
  %1 = load float, ptr %scale, align 4, !tbaa !11
  store float %1, ptr %vscale, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 2
  %3 = load float, ptr %magic_bias, align 8, !tbaa !11
  store float %3, ptr %vmagic_bias, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_min) #4
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_min = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %magic_min, align 4, !tbaa !11
  store i32 %5, ptr %vmagic_min, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_max) #4
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_max = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %magic_max, align 16, !tbaa !11
  store i32 %7, ptr %vmagic_max, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %magic_bias_less_zero_point, align 4, !tbaa !11
  store i32 %9, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vkernel_zero_point) #4
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %kernel_zero_point = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %kernel_zero_point, align 64, !tbaa !11
  store i32 %11, ptr %vkernel_zero_point, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %do.cond1358, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #4
  %12 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %13, ptr %i0, align 8, !tbaa !9
  %14 = load ptr, ptr %i0, align 8, !tbaa !9
  %15 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %14, %15
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !16

if.then:                                          ; preds = %do.body
  %16 = load ptr, ptr %i0, align 8, !tbaa !9
  %17 = ptrtoint ptr %16 to i64
  %18 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add = add i64 %17, %18
  %19 = inttoptr i64 %add to ptr
  store ptr %19, ptr %i0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #4
  %20 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  store ptr %21, ptr %i1, align 8, !tbaa !9
  %22 = load ptr, ptr %i1, align 8, !tbaa !9
  %23 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp3 = icmp ne ptr %22, %23
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end13, !unpredictable !16

if.then11:                                        ; preds = %if.end
  %24 = load ptr, ptr %i1, align 8, !tbaa !9
  %25 = ptrtoint ptr %24 to i64
  %26 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add12 = add i64 %25, %26
  %27 = inttoptr i64 %add12 to ptr
  store ptr %27, ptr %i1, align 8, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #4
  %28 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds ptr, ptr %28, i64 2
  %29 = load ptr, ptr %arrayidx14, align 8, !tbaa !9
  store ptr %29, ptr %i2, align 8, !tbaa !9
  %30 = load ptr, ptr %i2, align 8, !tbaa !9
  %31 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp15 = icmp ne ptr %30, %31
  %lnot17 = xor i1 %cmp15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end25, !unpredictable !16

if.then23:                                        ; preds = %if.end13
  %32 = load ptr, ptr %i2, align 8, !tbaa !9
  %33 = ptrtoint ptr %32 to i64
  %34 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add24 = add i64 %33, %34
  %35 = inttoptr i64 %add24 to ptr
  store ptr %35, ptr %i2, align 8, !tbaa !9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #4
  %36 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx26 = getelementptr inbounds ptr, ptr %36, i64 3
  %37 = load ptr, ptr %arrayidx26, align 8, !tbaa !9
  store ptr %37, ptr %i3, align 8, !tbaa !9
  %38 = load ptr, ptr %i3, align 8, !tbaa !9
  %39 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp27 = icmp ne ptr %38, %39
  %lnot29 = xor i1 %cmp27, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end37, !unpredictable !16

if.then35:                                        ; preds = %if.end25
  %40 = load ptr, ptr %i3, align 8, !tbaa !9
  %41 = ptrtoint ptr %40 to i64
  %42 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add36 = add i64 %41, %42
  %43 = inttoptr i64 %add36 to ptr
  store ptr %43, ptr %i3, align 8, !tbaa !9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #4
  %44 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds ptr, ptr %44, i64 4
  %45 = load ptr, ptr %arrayidx38, align 8, !tbaa !9
  store ptr %45, ptr %i4, align 8, !tbaa !9
  %46 = load ptr, ptr %i4, align 8, !tbaa !9
  %47 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp39 = icmp ne ptr %46, %47
  %lnot41 = xor i1 %cmp39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %if.then47, label %if.end49, !unpredictable !16

if.then47:                                        ; preds = %if.end37
  %48 = load ptr, ptr %i4, align 8, !tbaa !9
  %49 = ptrtoint ptr %48 to i64
  %50 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add48 = add i64 %49, %50
  %51 = inttoptr i64 %add48 to ptr
  store ptr %51, ptr %i4, align 8, !tbaa !9
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #4
  %52 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx50 = getelementptr inbounds ptr, ptr %52, i64 5
  %53 = load ptr, ptr %arrayidx50, align 8, !tbaa !9
  store ptr %53, ptr %i5, align 8, !tbaa !9
  %54 = load ptr, ptr %i5, align 8, !tbaa !9
  %55 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp51 = icmp ne ptr %54, %55
  %lnot53 = xor i1 %cmp51, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.end61, !unpredictable !16

if.then59:                                        ; preds = %if.end49
  %56 = load ptr, ptr %i5, align 8, !tbaa !9
  %57 = ptrtoint ptr %56 to i64
  %58 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add60 = add i64 %57, %58
  %59 = inttoptr i64 %add60 to ptr
  store ptr %59, ptr %i5, align 8, !tbaa !9
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #4
  %60 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx62 = getelementptr inbounds ptr, ptr %60, i64 6
  %61 = load ptr, ptr %arrayidx62, align 8, !tbaa !9
  store ptr %61, ptr %i6, align 8, !tbaa !9
  %62 = load ptr, ptr %i6, align 8, !tbaa !9
  %63 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp63 = icmp ne ptr %62, %63
  %lnot65 = xor i1 %cmp63, true
  %lnot67 = xor i1 %lnot65, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %tobool70 = icmp ne i64 %conv69, 0
  br i1 %tobool70, label %if.then71, label %if.end73, !unpredictable !16

if.then71:                                        ; preds = %if.end61
  %64 = load ptr, ptr %i6, align 8, !tbaa !9
  %65 = ptrtoint ptr %64 to i64
  %66 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add72 = add i64 %65, %66
  %67 = inttoptr i64 %add72 to ptr
  store ptr %67, ptr %i6, align 8, !tbaa !9
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #4
  %68 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx74 = getelementptr inbounds ptr, ptr %68, i64 7
  %69 = load ptr, ptr %arrayidx74, align 8, !tbaa !9
  store ptr %69, ptr %i7, align 8, !tbaa !9
  %70 = load ptr, ptr %i7, align 8, !tbaa !9
  %71 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp75 = icmp ne ptr %70, %71
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %tobool82 = icmp ne i64 %conv81, 0
  br i1 %tobool82, label %if.then83, label %if.end85, !unpredictable !16

if.then83:                                        ; preds = %if.end73
  %72 = load ptr, ptr %i7, align 8, !tbaa !9
  %73 = ptrtoint ptr %72 to i64
  %74 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add84 = add i64 %73, %74
  %75 = inttoptr i64 %add84 to ptr
  store ptr %75, ptr %i7, align 8, !tbaa !9
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #4
  %76 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx86 = getelementptr inbounds ptr, ptr %76, i64 8
  %77 = load ptr, ptr %arrayidx86, align 8, !tbaa !9
  store ptr %77, ptr %i8, align 8, !tbaa !9
  %78 = load ptr, ptr %i8, align 8, !tbaa !9
  %79 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp87 = icmp ne ptr %78, %79
  %lnot89 = xor i1 %cmp87, true
  %lnot91 = xor i1 %lnot89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %tobool94 = icmp ne i64 %conv93, 0
  br i1 %tobool94, label %if.then95, label %if.end97, !unpredictable !16

if.then95:                                        ; preds = %if.end85
  %80 = load ptr, ptr %i8, align 8, !tbaa !9
  %81 = ptrtoint ptr %80 to i64
  %82 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add96 = add i64 %81, %82
  %83 = inttoptr i64 %add96 to ptr
  store ptr %83, ptr %i8, align 8, !tbaa !9
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %i9) #4
  %84 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx98 = getelementptr inbounds ptr, ptr %84, i64 9
  %85 = load ptr, ptr %arrayidx98, align 8, !tbaa !9
  store ptr %85, ptr %i9, align 8, !tbaa !9
  %86 = load ptr, ptr %i9, align 8, !tbaa !9
  %87 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp99 = icmp ne ptr %86, %87
  %lnot101 = xor i1 %cmp99, true
  %lnot103 = xor i1 %lnot101, true
  %lnot.ext104 = zext i1 %lnot103 to i32
  %conv105 = sext i32 %lnot.ext104 to i64
  %tobool106 = icmp ne i64 %conv105, 0
  br i1 %tobool106, label %if.then107, label %if.end109, !unpredictable !16

if.then107:                                       ; preds = %if.end97
  %88 = load ptr, ptr %i9, align 8, !tbaa !9
  %89 = ptrtoint ptr %88 to i64
  %90 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add108 = add i64 %89, %90
  %91 = inttoptr i64 %add108 to ptr
  store ptr %91, ptr %i9, align 8, !tbaa !9
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end97
  call void @llvm.lifetime.start.p0(i64 8, ptr %i10) #4
  %92 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx110 = getelementptr inbounds ptr, ptr %92, i64 10
  %93 = load ptr, ptr %arrayidx110, align 8, !tbaa !9
  store ptr %93, ptr %i10, align 8, !tbaa !9
  %94 = load ptr, ptr %i10, align 8, !tbaa !9
  %95 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp111 = icmp ne ptr %94, %95
  %lnot113 = xor i1 %cmp111, true
  %lnot115 = xor i1 %lnot113, true
  %lnot.ext116 = zext i1 %lnot115 to i32
  %conv117 = sext i32 %lnot.ext116 to i64
  %tobool118 = icmp ne i64 %conv117, 0
  br i1 %tobool118, label %if.then119, label %if.end121, !unpredictable !16

if.then119:                                       ; preds = %if.end109
  %96 = load ptr, ptr %i10, align 8, !tbaa !9
  %97 = ptrtoint ptr %96 to i64
  %98 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add120 = add i64 %97, %98
  %99 = inttoptr i64 %add120 to ptr
  store ptr %99, ptr %i10, align 8, !tbaa !9
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end109
  call void @llvm.lifetime.start.p0(i64 8, ptr %i11) #4
  %100 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx122 = getelementptr inbounds ptr, ptr %100, i64 11
  %101 = load ptr, ptr %arrayidx122, align 8, !tbaa !9
  store ptr %101, ptr %i11, align 8, !tbaa !9
  %102 = load ptr, ptr %i11, align 8, !tbaa !9
  %103 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp123 = icmp ne ptr %102, %103
  %lnot125 = xor i1 %cmp123, true
  %lnot127 = xor i1 %lnot125, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %tobool130 = icmp ne i64 %conv129, 0
  br i1 %tobool130, label %if.then131, label %if.end133, !unpredictable !16

if.then131:                                       ; preds = %if.end121
  %104 = load ptr, ptr %i11, align 8, !tbaa !9
  %105 = ptrtoint ptr %104 to i64
  %106 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add132 = add i64 %105, %106
  %107 = inttoptr i64 %add132 to ptr
  store ptr %107, ptr %i11, align 8, !tbaa !9
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end121
  call void @llvm.lifetime.start.p0(i64 8, ptr %i12) #4
  %108 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx134 = getelementptr inbounds ptr, ptr %108, i64 12
  %109 = load ptr, ptr %arrayidx134, align 8, !tbaa !9
  store ptr %109, ptr %i12, align 8, !tbaa !9
  %110 = load ptr, ptr %i12, align 8, !tbaa !9
  %111 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp135 = icmp ne ptr %110, %111
  %lnot137 = xor i1 %cmp135, true
  %lnot139 = xor i1 %lnot137, true
  %lnot.ext140 = zext i1 %lnot139 to i32
  %conv141 = sext i32 %lnot.ext140 to i64
  %tobool142 = icmp ne i64 %conv141, 0
  br i1 %tobool142, label %if.then143, label %if.end145, !unpredictable !16

if.then143:                                       ; preds = %if.end133
  %112 = load ptr, ptr %i12, align 8, !tbaa !9
  %113 = ptrtoint ptr %112 to i64
  %114 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add144 = add i64 %113, %114
  %115 = inttoptr i64 %add144 to ptr
  store ptr %115, ptr %i12, align 8, !tbaa !9
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end133
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #4
  %116 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx146 = getelementptr inbounds ptr, ptr %116, i64 13
  %117 = load ptr, ptr %arrayidx146, align 8, !tbaa !9
  store ptr %117, ptr %i13, align 8, !tbaa !9
  %118 = load ptr, ptr %i13, align 8, !tbaa !9
  %119 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp147 = icmp ne ptr %118, %119
  %lnot149 = xor i1 %cmp147, true
  %lnot151 = xor i1 %lnot149, true
  %lnot.ext152 = zext i1 %lnot151 to i32
  %conv153 = sext i32 %lnot.ext152 to i64
  %tobool154 = icmp ne i64 %conv153, 0
  br i1 %tobool154, label %if.then155, label %if.end157, !unpredictable !16

if.then155:                                       ; preds = %if.end145
  %120 = load ptr, ptr %i13, align 8, !tbaa !9
  %121 = ptrtoint ptr %120 to i64
  %122 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add156 = add i64 %121, %122
  %123 = inttoptr i64 %add156 to ptr
  store ptr %123, ptr %i13, align 8, !tbaa !9
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr %i14) #4
  %124 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx158 = getelementptr inbounds ptr, ptr %124, i64 14
  %125 = load ptr, ptr %arrayidx158, align 8, !tbaa !9
  store ptr %125, ptr %i14, align 8, !tbaa !9
  %126 = load ptr, ptr %i14, align 8, !tbaa !9
  %127 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp159 = icmp ne ptr %126, %127
  %lnot161 = xor i1 %cmp159, true
  %lnot163 = xor i1 %lnot161, true
  %lnot.ext164 = zext i1 %lnot163 to i32
  %conv165 = sext i32 %lnot.ext164 to i64
  %tobool166 = icmp ne i64 %conv165, 0
  br i1 %tobool166, label %if.then167, label %if.end169, !unpredictable !16

if.then167:                                       ; preds = %if.end157
  %128 = load ptr, ptr %i14, align 8, !tbaa !9
  %129 = ptrtoint ptr %128 to i64
  %130 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add168 = add i64 %129, %130
  %131 = inttoptr i64 %add168 to ptr
  store ptr %131, ptr %i14, align 8, !tbaa !9
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr %i15) #4
  %132 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx170 = getelementptr inbounds ptr, ptr %132, i64 15
  %133 = load ptr, ptr %arrayidx170, align 8, !tbaa !9
  store ptr %133, ptr %i15, align 8, !tbaa !9
  %134 = load ptr, ptr %i15, align 8, !tbaa !9
  %135 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp171 = icmp ne ptr %134, %135
  %lnot173 = xor i1 %cmp171, true
  %lnot175 = xor i1 %lnot173, true
  %lnot.ext176 = zext i1 %lnot175 to i32
  %conv177 = sext i32 %lnot.ext176 to i64
  %tobool178 = icmp ne i64 %conv177, 0
  br i1 %tobool178, label %if.then179, label %if.end181, !unpredictable !16

if.then179:                                       ; preds = %if.end169
  %136 = load ptr, ptr %i15, align 8, !tbaa !9
  %137 = ptrtoint ptr %136 to i64
  %138 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add180 = add i64 %137, %138
  %139 = inttoptr i64 %add180 to ptr
  store ptr %139, ptr %i15, align 8, !tbaa !9
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.end169
  call void @llvm.lifetime.start.p0(i64 8, ptr %i16) #4
  %140 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx182 = getelementptr inbounds ptr, ptr %140, i64 16
  %141 = load ptr, ptr %arrayidx182, align 8, !tbaa !9
  store ptr %141, ptr %i16, align 8, !tbaa !9
  %142 = load ptr, ptr %i16, align 8, !tbaa !9
  %143 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp183 = icmp ne ptr %142, %143
  %lnot185 = xor i1 %cmp183, true
  %lnot187 = xor i1 %lnot185, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  %conv189 = sext i32 %lnot.ext188 to i64
  %tobool190 = icmp ne i64 %conv189, 0
  br i1 %tobool190, label %if.then191, label %if.end193, !unpredictable !16

if.then191:                                       ; preds = %if.end181
  %144 = load ptr, ptr %i16, align 8, !tbaa !9
  %145 = ptrtoint ptr %144 to i64
  %146 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add192 = add i64 %145, %146
  %147 = inttoptr i64 %add192 to ptr
  store ptr %147, ptr %i16, align 8, !tbaa !9
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end181
  call void @llvm.lifetime.start.p0(i64 8, ptr %i17) #4
  %148 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx194 = getelementptr inbounds ptr, ptr %148, i64 17
  %149 = load ptr, ptr %arrayidx194, align 8, !tbaa !9
  store ptr %149, ptr %i17, align 8, !tbaa !9
  %150 = load ptr, ptr %i17, align 8, !tbaa !9
  %151 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp195 = icmp ne ptr %150, %151
  %lnot197 = xor i1 %cmp195, true
  %lnot199 = xor i1 %lnot197, true
  %lnot.ext200 = zext i1 %lnot199 to i32
  %conv201 = sext i32 %lnot.ext200 to i64
  %tobool202 = icmp ne i64 %conv201, 0
  br i1 %tobool202, label %if.then203, label %if.end205, !unpredictable !16

if.then203:                                       ; preds = %if.end193
  %152 = load ptr, ptr %i17, align 8, !tbaa !9
  %153 = ptrtoint ptr %152 to i64
  %154 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add204 = add i64 %153, %154
  %155 = inttoptr i64 %add204 to ptr
  store ptr %155, ptr %i17, align 8, !tbaa !9
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end193
  call void @llvm.lifetime.start.p0(i64 8, ptr %i18) #4
  %156 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx206 = getelementptr inbounds ptr, ptr %156, i64 18
  %157 = load ptr, ptr %arrayidx206, align 8, !tbaa !9
  store ptr %157, ptr %i18, align 8, !tbaa !9
  %158 = load ptr, ptr %i18, align 8, !tbaa !9
  %159 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp207 = icmp ne ptr %158, %159
  %lnot209 = xor i1 %cmp207, true
  %lnot211 = xor i1 %lnot209, true
  %lnot.ext212 = zext i1 %lnot211 to i32
  %conv213 = sext i32 %lnot.ext212 to i64
  %tobool214 = icmp ne i64 %conv213, 0
  br i1 %tobool214, label %if.then215, label %if.end217, !unpredictable !16

if.then215:                                       ; preds = %if.end205
  %160 = load ptr, ptr %i18, align 8, !tbaa !9
  %161 = ptrtoint ptr %160 to i64
  %162 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add216 = add i64 %161, %162
  %163 = inttoptr i64 %add216 to ptr
  store ptr %163, ptr %i18, align 8, !tbaa !9
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.end205
  call void @llvm.lifetime.start.p0(i64 8, ptr %i19) #4
  %164 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx218 = getelementptr inbounds ptr, ptr %164, i64 19
  %165 = load ptr, ptr %arrayidx218, align 8, !tbaa !9
  store ptr %165, ptr %i19, align 8, !tbaa !9
  %166 = load ptr, ptr %i19, align 8, !tbaa !9
  %167 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp219 = icmp ne ptr %166, %167
  %lnot221 = xor i1 %cmp219, true
  %lnot223 = xor i1 %lnot221, true
  %lnot.ext224 = zext i1 %lnot223 to i32
  %conv225 = sext i32 %lnot.ext224 to i64
  %tobool226 = icmp ne i64 %conv225, 0
  br i1 %tobool226, label %if.then227, label %if.end229, !unpredictable !16

if.then227:                                       ; preds = %if.end217
  %168 = load ptr, ptr %i19, align 8, !tbaa !9
  %169 = ptrtoint ptr %168 to i64
  %170 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add228 = add i64 %169, %170
  %171 = inttoptr i64 %add228 to ptr
  store ptr %171, ptr %i19, align 8, !tbaa !9
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %if.end217
  call void @llvm.lifetime.start.p0(i64 8, ptr %i20) #4
  %172 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx230 = getelementptr inbounds ptr, ptr %172, i64 20
  %173 = load ptr, ptr %arrayidx230, align 8, !tbaa !9
  store ptr %173, ptr %i20, align 8, !tbaa !9
  %174 = load ptr, ptr %i20, align 8, !tbaa !9
  %175 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp231 = icmp ne ptr %174, %175
  %lnot233 = xor i1 %cmp231, true
  %lnot235 = xor i1 %lnot233, true
  %lnot.ext236 = zext i1 %lnot235 to i32
  %conv237 = sext i32 %lnot.ext236 to i64
  %tobool238 = icmp ne i64 %conv237, 0
  br i1 %tobool238, label %if.then239, label %if.end241, !unpredictable !16

if.then239:                                       ; preds = %if.end229
  %176 = load ptr, ptr %i20, align 8, !tbaa !9
  %177 = ptrtoint ptr %176 to i64
  %178 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add240 = add i64 %177, %178
  %179 = inttoptr i64 %add240 to ptr
  store ptr %179, ptr %i20, align 8, !tbaa !9
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.end229
  call void @llvm.lifetime.start.p0(i64 8, ptr %i21) #4
  %180 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx242 = getelementptr inbounds ptr, ptr %180, i64 21
  %181 = load ptr, ptr %arrayidx242, align 8, !tbaa !9
  store ptr %181, ptr %i21, align 8, !tbaa !9
  %182 = load ptr, ptr %i21, align 8, !tbaa !9
  %183 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp243 = icmp ne ptr %182, %183
  %lnot245 = xor i1 %cmp243, true
  %lnot247 = xor i1 %lnot245, true
  %lnot.ext248 = zext i1 %lnot247 to i32
  %conv249 = sext i32 %lnot.ext248 to i64
  %tobool250 = icmp ne i64 %conv249, 0
  br i1 %tobool250, label %if.then251, label %if.end253, !unpredictable !16

if.then251:                                       ; preds = %if.end241
  %184 = load ptr, ptr %i21, align 8, !tbaa !9
  %185 = ptrtoint ptr %184 to i64
  %186 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add252 = add i64 %185, %186
  %187 = inttoptr i64 %add252 to ptr
  store ptr %187, ptr %i21, align 8, !tbaa !9
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end241
  call void @llvm.lifetime.start.p0(i64 8, ptr %i22) #4
  %188 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx254 = getelementptr inbounds ptr, ptr %188, i64 22
  %189 = load ptr, ptr %arrayidx254, align 8, !tbaa !9
  store ptr %189, ptr %i22, align 8, !tbaa !9
  %190 = load ptr, ptr %i22, align 8, !tbaa !9
  %191 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp255 = icmp ne ptr %190, %191
  %lnot257 = xor i1 %cmp255, true
  %lnot259 = xor i1 %lnot257, true
  %lnot.ext260 = zext i1 %lnot259 to i32
  %conv261 = sext i32 %lnot.ext260 to i64
  %tobool262 = icmp ne i64 %conv261, 0
  br i1 %tobool262, label %if.then263, label %if.end265, !unpredictable !16

if.then263:                                       ; preds = %if.end253
  %192 = load ptr, ptr %i22, align 8, !tbaa !9
  %193 = ptrtoint ptr %192 to i64
  %194 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add264 = add i64 %193, %194
  %195 = inttoptr i64 %add264 to ptr
  store ptr %195, ptr %i22, align 8, !tbaa !9
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end253
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #4
  %196 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx266 = getelementptr inbounds ptr, ptr %196, i64 23
  %197 = load ptr, ptr %arrayidx266, align 8, !tbaa !9
  store ptr %197, ptr %i23, align 8, !tbaa !9
  %198 = load ptr, ptr %i23, align 8, !tbaa !9
  %199 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp267 = icmp ne ptr %198, %199
  %lnot269 = xor i1 %cmp267, true
  %lnot271 = xor i1 %lnot269, true
  %lnot.ext272 = zext i1 %lnot271 to i32
  %conv273 = sext i32 %lnot.ext272 to i64
  %tobool274 = icmp ne i64 %conv273, 0
  br i1 %tobool274, label %if.then275, label %if.end277, !unpredictable !16

if.then275:                                       ; preds = %if.end265
  %200 = load ptr, ptr %i23, align 8, !tbaa !9
  %201 = ptrtoint ptr %200 to i64
  %202 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add276 = add i64 %201, %202
  %203 = inttoptr i64 %add276 to ptr
  store ptr %203, ptr %i23, align 8, !tbaa !9
  br label %if.end277

if.end277:                                        ; preds = %if.then275, %if.end265
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #4
  %204 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx278 = getelementptr inbounds ptr, ptr %204, i64 24
  %205 = load ptr, ptr %arrayidx278, align 8, !tbaa !9
  store ptr %205, ptr %i24, align 8, !tbaa !9
  %206 = load ptr, ptr %i24, align 8, !tbaa !9
  %207 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp279 = icmp ne ptr %206, %207
  %lnot281 = xor i1 %cmp279, true
  %lnot283 = xor i1 %lnot281, true
  %lnot.ext284 = zext i1 %lnot283 to i32
  %conv285 = sext i32 %lnot.ext284 to i64
  %tobool286 = icmp ne i64 %conv285, 0
  br i1 %tobool286, label %if.then287, label %if.end289, !unpredictable !16

if.then287:                                       ; preds = %if.end277
  %208 = load ptr, ptr %i24, align 8, !tbaa !9
  %209 = ptrtoint ptr %208 to i64
  %210 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add288 = add i64 %209, %210
  %211 = inttoptr i64 %add288 to ptr
  store ptr %211, ptr %i24, align 8, !tbaa !9
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %if.end277
  %212 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %213 = ptrtoint ptr %212 to i64
  %214 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add290 = add i64 %213, %214
  %215 = inttoptr i64 %add290 to ptr
  store ptr %215, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  %216 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %216, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #4
  %217 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %217, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end289
  %218 = load i64, ptr %c, align 8, !tbaa !5
  %cmp291 = icmp uge i64 %218, 4
  br i1 %cmp291, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0) #4
  %219 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx293 = getelementptr inbounds i32, ptr %219, i64 0
  %220 = load i32, ptr %arrayidx293, align 4, !tbaa !14
  store i32 %220, ptr %vacc0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1) #4
  %221 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx294 = getelementptr inbounds i32, ptr %221, i64 1
  %222 = load i32, ptr %arrayidx294, align 4, !tbaa !14
  store i32 %222, ptr %vacc1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2) #4
  %223 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx295 = getelementptr inbounds i32, ptr %223, i64 2
  %224 = load i32, ptr %arrayidx295, align 4, !tbaa !14
  store i32 %224, ptr %vacc2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3) #4
  %225 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx296 = getelementptr inbounds i32, ptr %225, i64 3
  %226 = load i32, ptr %arrayidx296, align 4, !tbaa !14
  store i32 %226, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x0) #4
  %227 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx297 = getelementptr inbounds i8, ptr %227, i64 0
  %228 = load i8, ptr %arrayidx297, align 1, !tbaa !11
  %conv298 = zext i8 %228 to i32
  store i32 %conv298, ptr %vi0x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x1) #4
  %229 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx299 = getelementptr inbounds i8, ptr %229, i64 1
  %230 = load i8, ptr %arrayidx299, align 1, !tbaa !11
  %conv300 = zext i8 %230 to i32
  store i32 %conv300, ptr %vi0x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x2) #4
  %231 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx301 = getelementptr inbounds i8, ptr %231, i64 2
  %232 = load i8, ptr %arrayidx301, align 1, !tbaa !11
  %conv302 = zext i8 %232 to i32
  store i32 %conv302, ptr %vi0x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x3) #4
  %233 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx303 = getelementptr inbounds i8, ptr %233, i64 3
  %234 = load i8, ptr %arrayidx303, align 1, !tbaa !11
  %conv304 = zext i8 %234 to i32
  store i32 %conv304, ptr %vi0x3, align 4, !tbaa !14
  %235 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %235, i64 4
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0x0) #4
  %236 = load ptr, ptr %w, align 8, !tbaa !9
  %237 = ptrtoint ptr %236 to i64
  %add305 = add i64 %237, 16
  %238 = inttoptr i64 %add305 to ptr
  %arrayidx306 = getelementptr inbounds i8, ptr %238, i64 0
  %239 = load i8, ptr %arrayidx306, align 1, !tbaa !11
  %conv307 = zext i8 %239 to i32
  %240 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub = sub nsw i32 %conv307, %240
  store i32 %sub, ptr %vk0x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0x1) #4
  %241 = load ptr, ptr %w, align 8, !tbaa !9
  %242 = ptrtoint ptr %241 to i64
  %add308 = add i64 %242, 16
  %243 = inttoptr i64 %add308 to ptr
  %arrayidx309 = getelementptr inbounds i8, ptr %243, i64 1
  %244 = load i8, ptr %arrayidx309, align 1, !tbaa !11
  %conv310 = zext i8 %244 to i32
  %245 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub311 = sub nsw i32 %conv310, %245
  store i32 %sub311, ptr %vk0x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0x2) #4
  %246 = load ptr, ptr %w, align 8, !tbaa !9
  %247 = ptrtoint ptr %246 to i64
  %add312 = add i64 %247, 16
  %248 = inttoptr i64 %add312 to ptr
  %arrayidx313 = getelementptr inbounds i8, ptr %248, i64 2
  %249 = load i8, ptr %arrayidx313, align 1, !tbaa !11
  %conv314 = zext i8 %249 to i32
  %250 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub315 = sub nsw i32 %conv314, %250
  store i32 %sub315, ptr %vk0x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0x3) #4
  %251 = load ptr, ptr %w, align 8, !tbaa !9
  %252 = ptrtoint ptr %251 to i64
  %add316 = add i64 %252, 16
  %253 = inttoptr i64 %add316 to ptr
  %arrayidx317 = getelementptr inbounds i8, ptr %253, i64 3
  %254 = load i8, ptr %arrayidx317, align 1, !tbaa !11
  %conv318 = zext i8 %254 to i32
  %255 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub319 = sub nsw i32 %conv318, %255
  store i32 %sub319, ptr %vk0x3, align 4, !tbaa !14
  %256 = load i32, ptr %vi0x0, align 4, !tbaa !14
  %257 = load i32, ptr %vk0x0, align 4, !tbaa !14
  %mul = mul nsw i32 %256, %257
  %258 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add320 = add nsw i32 %258, %mul
  store i32 %add320, ptr %vacc0, align 4, !tbaa !14
  %259 = load i32, ptr %vi0x1, align 4, !tbaa !14
  %260 = load i32, ptr %vk0x1, align 4, !tbaa !14
  %mul321 = mul nsw i32 %259, %260
  %261 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add322 = add nsw i32 %261, %mul321
  store i32 %add322, ptr %vacc1, align 4, !tbaa !14
  %262 = load i32, ptr %vi0x2, align 4, !tbaa !14
  %263 = load i32, ptr %vk0x2, align 4, !tbaa !14
  %mul323 = mul nsw i32 %262, %263
  %264 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add324 = add nsw i32 %264, %mul323
  store i32 %add324, ptr %vacc2, align 4, !tbaa !14
  %265 = load i32, ptr %vi0x3, align 4, !tbaa !14
  %266 = load i32, ptr %vk0x3, align 4, !tbaa !14
  %mul325 = mul nsw i32 %265, %266
  %267 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add326 = add nsw i32 %267, %mul325
  store i32 %add326, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x0) #4
  %268 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx327 = getelementptr inbounds i8, ptr %268, i64 0
  %269 = load i8, ptr %arrayidx327, align 1, !tbaa !11
  %conv328 = zext i8 %269 to i32
  store i32 %conv328, ptr %vi1x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x1) #4
  %270 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx329 = getelementptr inbounds i8, ptr %270, i64 1
  %271 = load i8, ptr %arrayidx329, align 1, !tbaa !11
  %conv330 = zext i8 %271 to i32
  store i32 %conv330, ptr %vi1x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x2) #4
  %272 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx331 = getelementptr inbounds i8, ptr %272, i64 2
  %273 = load i8, ptr %arrayidx331, align 1, !tbaa !11
  %conv332 = zext i8 %273 to i32
  store i32 %conv332, ptr %vi1x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x3) #4
  %274 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx333 = getelementptr inbounds i8, ptr %274, i64 3
  %275 = load i8, ptr %arrayidx333, align 1, !tbaa !11
  %conv334 = zext i8 %275 to i32
  store i32 %conv334, ptr %vi1x3, align 4, !tbaa !14
  %276 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr335 = getelementptr inbounds i8, ptr %276, i64 4
  store ptr %add.ptr335, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1x0) #4
  %277 = load ptr, ptr %w, align 8, !tbaa !9
  %278 = ptrtoint ptr %277 to i64
  %add336 = add i64 %278, 16
  %279 = inttoptr i64 %add336 to ptr
  %arrayidx337 = getelementptr inbounds i8, ptr %279, i64 4
  %280 = load i8, ptr %arrayidx337, align 1, !tbaa !11
  %conv338 = zext i8 %280 to i32
  %281 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub339 = sub nsw i32 %conv338, %281
  store i32 %sub339, ptr %vk1x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1x1) #4
  %282 = load ptr, ptr %w, align 8, !tbaa !9
  %283 = ptrtoint ptr %282 to i64
  %add340 = add i64 %283, 16
  %284 = inttoptr i64 %add340 to ptr
  %arrayidx341 = getelementptr inbounds i8, ptr %284, i64 5
  %285 = load i8, ptr %arrayidx341, align 1, !tbaa !11
  %conv342 = zext i8 %285 to i32
  %286 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub343 = sub nsw i32 %conv342, %286
  store i32 %sub343, ptr %vk1x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1x2) #4
  %287 = load ptr, ptr %w, align 8, !tbaa !9
  %288 = ptrtoint ptr %287 to i64
  %add344 = add i64 %288, 16
  %289 = inttoptr i64 %add344 to ptr
  %arrayidx345 = getelementptr inbounds i8, ptr %289, i64 6
  %290 = load i8, ptr %arrayidx345, align 1, !tbaa !11
  %conv346 = zext i8 %290 to i32
  %291 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub347 = sub nsw i32 %conv346, %291
  store i32 %sub347, ptr %vk1x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1x3) #4
  %292 = load ptr, ptr %w, align 8, !tbaa !9
  %293 = ptrtoint ptr %292 to i64
  %add348 = add i64 %293, 16
  %294 = inttoptr i64 %add348 to ptr
  %arrayidx349 = getelementptr inbounds i8, ptr %294, i64 7
  %295 = load i8, ptr %arrayidx349, align 1, !tbaa !11
  %conv350 = zext i8 %295 to i32
  %296 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub351 = sub nsw i32 %conv350, %296
  store i32 %sub351, ptr %vk1x3, align 4, !tbaa !14
  %297 = load i32, ptr %vi1x0, align 4, !tbaa !14
  %298 = load i32, ptr %vk1x0, align 4, !tbaa !14
  %mul352 = mul nsw i32 %297, %298
  %299 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add353 = add nsw i32 %299, %mul352
  store i32 %add353, ptr %vacc0, align 4, !tbaa !14
  %300 = load i32, ptr %vi1x1, align 4, !tbaa !14
  %301 = load i32, ptr %vk1x1, align 4, !tbaa !14
  %mul354 = mul nsw i32 %300, %301
  %302 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add355 = add nsw i32 %302, %mul354
  store i32 %add355, ptr %vacc1, align 4, !tbaa !14
  %303 = load i32, ptr %vi1x2, align 4, !tbaa !14
  %304 = load i32, ptr %vk1x2, align 4, !tbaa !14
  %mul356 = mul nsw i32 %303, %304
  %305 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add357 = add nsw i32 %305, %mul356
  store i32 %add357, ptr %vacc2, align 4, !tbaa !14
  %306 = load i32, ptr %vi1x3, align 4, !tbaa !14
  %307 = load i32, ptr %vk1x3, align 4, !tbaa !14
  %mul358 = mul nsw i32 %306, %307
  %308 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add359 = add nsw i32 %308, %mul358
  store i32 %add359, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x0) #4
  %309 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx360 = getelementptr inbounds i8, ptr %309, i64 0
  %310 = load i8, ptr %arrayidx360, align 1, !tbaa !11
  %conv361 = zext i8 %310 to i32
  store i32 %conv361, ptr %vi2x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x1) #4
  %311 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx362 = getelementptr inbounds i8, ptr %311, i64 1
  %312 = load i8, ptr %arrayidx362, align 1, !tbaa !11
  %conv363 = zext i8 %312 to i32
  store i32 %conv363, ptr %vi2x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x2) #4
  %313 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx364 = getelementptr inbounds i8, ptr %313, i64 2
  %314 = load i8, ptr %arrayidx364, align 1, !tbaa !11
  %conv365 = zext i8 %314 to i32
  store i32 %conv365, ptr %vi2x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x3) #4
  %315 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx366 = getelementptr inbounds i8, ptr %315, i64 3
  %316 = load i8, ptr %arrayidx366, align 1, !tbaa !11
  %conv367 = zext i8 %316 to i32
  store i32 %conv367, ptr %vi2x3, align 4, !tbaa !14
  %317 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr368 = getelementptr inbounds i8, ptr %317, i64 4
  store ptr %add.ptr368, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2x0) #4
  %318 = load ptr, ptr %w, align 8, !tbaa !9
  %319 = ptrtoint ptr %318 to i64
  %add369 = add i64 %319, 16
  %320 = inttoptr i64 %add369 to ptr
  %arrayidx370 = getelementptr inbounds i8, ptr %320, i64 8
  %321 = load i8, ptr %arrayidx370, align 1, !tbaa !11
  %conv371 = zext i8 %321 to i32
  %322 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub372 = sub nsw i32 %conv371, %322
  store i32 %sub372, ptr %vk2x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2x1) #4
  %323 = load ptr, ptr %w, align 8, !tbaa !9
  %324 = ptrtoint ptr %323 to i64
  %add373 = add i64 %324, 16
  %325 = inttoptr i64 %add373 to ptr
  %arrayidx374 = getelementptr inbounds i8, ptr %325, i64 9
  %326 = load i8, ptr %arrayidx374, align 1, !tbaa !11
  %conv375 = zext i8 %326 to i32
  %327 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub376 = sub nsw i32 %conv375, %327
  store i32 %sub376, ptr %vk2x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2x2) #4
  %328 = load ptr, ptr %w, align 8, !tbaa !9
  %329 = ptrtoint ptr %328 to i64
  %add377 = add i64 %329, 16
  %330 = inttoptr i64 %add377 to ptr
  %arrayidx378 = getelementptr inbounds i8, ptr %330, i64 10
  %331 = load i8, ptr %arrayidx378, align 1, !tbaa !11
  %conv379 = zext i8 %331 to i32
  %332 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub380 = sub nsw i32 %conv379, %332
  store i32 %sub380, ptr %vk2x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2x3) #4
  %333 = load ptr, ptr %w, align 8, !tbaa !9
  %334 = ptrtoint ptr %333 to i64
  %add381 = add i64 %334, 16
  %335 = inttoptr i64 %add381 to ptr
  %arrayidx382 = getelementptr inbounds i8, ptr %335, i64 11
  %336 = load i8, ptr %arrayidx382, align 1, !tbaa !11
  %conv383 = zext i8 %336 to i32
  %337 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub384 = sub nsw i32 %conv383, %337
  store i32 %sub384, ptr %vk2x3, align 4, !tbaa !14
  %338 = load i32, ptr %vi2x0, align 4, !tbaa !14
  %339 = load i32, ptr %vk2x0, align 4, !tbaa !14
  %mul385 = mul nsw i32 %338, %339
  %340 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add386 = add nsw i32 %340, %mul385
  store i32 %add386, ptr %vacc0, align 4, !tbaa !14
  %341 = load i32, ptr %vi2x1, align 4, !tbaa !14
  %342 = load i32, ptr %vk2x1, align 4, !tbaa !14
  %mul387 = mul nsw i32 %341, %342
  %343 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add388 = add nsw i32 %343, %mul387
  store i32 %add388, ptr %vacc1, align 4, !tbaa !14
  %344 = load i32, ptr %vi2x2, align 4, !tbaa !14
  %345 = load i32, ptr %vk2x2, align 4, !tbaa !14
  %mul389 = mul nsw i32 %344, %345
  %346 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add390 = add nsw i32 %346, %mul389
  store i32 %add390, ptr %vacc2, align 4, !tbaa !14
  %347 = load i32, ptr %vi2x3, align 4, !tbaa !14
  %348 = load i32, ptr %vk2x3, align 4, !tbaa !14
  %mul391 = mul nsw i32 %347, %348
  %349 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add392 = add nsw i32 %349, %mul391
  store i32 %add392, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x0) #4
  %350 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx393 = getelementptr inbounds i8, ptr %350, i64 0
  %351 = load i8, ptr %arrayidx393, align 1, !tbaa !11
  %conv394 = zext i8 %351 to i32
  store i32 %conv394, ptr %vi3x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x1) #4
  %352 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx395 = getelementptr inbounds i8, ptr %352, i64 1
  %353 = load i8, ptr %arrayidx395, align 1, !tbaa !11
  %conv396 = zext i8 %353 to i32
  store i32 %conv396, ptr %vi3x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x2) #4
  %354 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx397 = getelementptr inbounds i8, ptr %354, i64 2
  %355 = load i8, ptr %arrayidx397, align 1, !tbaa !11
  %conv398 = zext i8 %355 to i32
  store i32 %conv398, ptr %vi3x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x3) #4
  %356 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx399 = getelementptr inbounds i8, ptr %356, i64 3
  %357 = load i8, ptr %arrayidx399, align 1, !tbaa !11
  %conv400 = zext i8 %357 to i32
  store i32 %conv400, ptr %vi3x3, align 4, !tbaa !14
  %358 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr401 = getelementptr inbounds i8, ptr %358, i64 4
  store ptr %add.ptr401, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3x0) #4
  %359 = load ptr, ptr %w, align 8, !tbaa !9
  %360 = ptrtoint ptr %359 to i64
  %add402 = add i64 %360, 16
  %361 = inttoptr i64 %add402 to ptr
  %arrayidx403 = getelementptr inbounds i8, ptr %361, i64 12
  %362 = load i8, ptr %arrayidx403, align 1, !tbaa !11
  %conv404 = zext i8 %362 to i32
  %363 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub405 = sub nsw i32 %conv404, %363
  store i32 %sub405, ptr %vk3x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3x1) #4
  %364 = load ptr, ptr %w, align 8, !tbaa !9
  %365 = ptrtoint ptr %364 to i64
  %add406 = add i64 %365, 16
  %366 = inttoptr i64 %add406 to ptr
  %arrayidx407 = getelementptr inbounds i8, ptr %366, i64 13
  %367 = load i8, ptr %arrayidx407, align 1, !tbaa !11
  %conv408 = zext i8 %367 to i32
  %368 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub409 = sub nsw i32 %conv408, %368
  store i32 %sub409, ptr %vk3x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3x2) #4
  %369 = load ptr, ptr %w, align 8, !tbaa !9
  %370 = ptrtoint ptr %369 to i64
  %add410 = add i64 %370, 16
  %371 = inttoptr i64 %add410 to ptr
  %arrayidx411 = getelementptr inbounds i8, ptr %371, i64 14
  %372 = load i8, ptr %arrayidx411, align 1, !tbaa !11
  %conv412 = zext i8 %372 to i32
  %373 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub413 = sub nsw i32 %conv412, %373
  store i32 %sub413, ptr %vk3x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3x3) #4
  %374 = load ptr, ptr %w, align 8, !tbaa !9
  %375 = ptrtoint ptr %374 to i64
  %add414 = add i64 %375, 16
  %376 = inttoptr i64 %add414 to ptr
  %arrayidx415 = getelementptr inbounds i8, ptr %376, i64 15
  %377 = load i8, ptr %arrayidx415, align 1, !tbaa !11
  %conv416 = zext i8 %377 to i32
  %378 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub417 = sub nsw i32 %conv416, %378
  store i32 %sub417, ptr %vk3x3, align 4, !tbaa !14
  %379 = load i32, ptr %vi3x0, align 4, !tbaa !14
  %380 = load i32, ptr %vk3x0, align 4, !tbaa !14
  %mul418 = mul nsw i32 %379, %380
  %381 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add419 = add nsw i32 %381, %mul418
  store i32 %add419, ptr %vacc0, align 4, !tbaa !14
  %382 = load i32, ptr %vi3x1, align 4, !tbaa !14
  %383 = load i32, ptr %vk3x1, align 4, !tbaa !14
  %mul420 = mul nsw i32 %382, %383
  %384 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add421 = add nsw i32 %384, %mul420
  store i32 %add421, ptr %vacc1, align 4, !tbaa !14
  %385 = load i32, ptr %vi3x2, align 4, !tbaa !14
  %386 = load i32, ptr %vk3x2, align 4, !tbaa !14
  %mul422 = mul nsw i32 %385, %386
  %387 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add423 = add nsw i32 %387, %mul422
  store i32 %add423, ptr %vacc2, align 4, !tbaa !14
  %388 = load i32, ptr %vi3x3, align 4, !tbaa !14
  %389 = load i32, ptr %vk3x3, align 4, !tbaa !14
  %mul424 = mul nsw i32 %388, %389
  %390 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add425 = add nsw i32 %390, %mul424
  store i32 %add425, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x0) #4
  %391 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx426 = getelementptr inbounds i8, ptr %391, i64 0
  %392 = load i8, ptr %arrayidx426, align 1, !tbaa !11
  %conv427 = zext i8 %392 to i32
  store i32 %conv427, ptr %vi4x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x1) #4
  %393 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx428 = getelementptr inbounds i8, ptr %393, i64 1
  %394 = load i8, ptr %arrayidx428, align 1, !tbaa !11
  %conv429 = zext i8 %394 to i32
  store i32 %conv429, ptr %vi4x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x2) #4
  %395 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx430 = getelementptr inbounds i8, ptr %395, i64 2
  %396 = load i8, ptr %arrayidx430, align 1, !tbaa !11
  %conv431 = zext i8 %396 to i32
  store i32 %conv431, ptr %vi4x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x3) #4
  %397 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx432 = getelementptr inbounds i8, ptr %397, i64 3
  %398 = load i8, ptr %arrayidx432, align 1, !tbaa !11
  %conv433 = zext i8 %398 to i32
  store i32 %conv433, ptr %vi4x3, align 4, !tbaa !14
  %399 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr434 = getelementptr inbounds i8, ptr %399, i64 4
  store ptr %add.ptr434, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4x0) #4
  %400 = load ptr, ptr %w, align 8, !tbaa !9
  %401 = ptrtoint ptr %400 to i64
  %add435 = add i64 %401, 16
  %402 = inttoptr i64 %add435 to ptr
  %arrayidx436 = getelementptr inbounds i8, ptr %402, i64 16
  %403 = load i8, ptr %arrayidx436, align 1, !tbaa !11
  %conv437 = zext i8 %403 to i32
  %404 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub438 = sub nsw i32 %conv437, %404
  store i32 %sub438, ptr %vk4x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4x1) #4
  %405 = load ptr, ptr %w, align 8, !tbaa !9
  %406 = ptrtoint ptr %405 to i64
  %add439 = add i64 %406, 16
  %407 = inttoptr i64 %add439 to ptr
  %arrayidx440 = getelementptr inbounds i8, ptr %407, i64 17
  %408 = load i8, ptr %arrayidx440, align 1, !tbaa !11
  %conv441 = zext i8 %408 to i32
  %409 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub442 = sub nsw i32 %conv441, %409
  store i32 %sub442, ptr %vk4x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4x2) #4
  %410 = load ptr, ptr %w, align 8, !tbaa !9
  %411 = ptrtoint ptr %410 to i64
  %add443 = add i64 %411, 16
  %412 = inttoptr i64 %add443 to ptr
  %arrayidx444 = getelementptr inbounds i8, ptr %412, i64 18
  %413 = load i8, ptr %arrayidx444, align 1, !tbaa !11
  %conv445 = zext i8 %413 to i32
  %414 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub446 = sub nsw i32 %conv445, %414
  store i32 %sub446, ptr %vk4x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4x3) #4
  %415 = load ptr, ptr %w, align 8, !tbaa !9
  %416 = ptrtoint ptr %415 to i64
  %add447 = add i64 %416, 16
  %417 = inttoptr i64 %add447 to ptr
  %arrayidx448 = getelementptr inbounds i8, ptr %417, i64 19
  %418 = load i8, ptr %arrayidx448, align 1, !tbaa !11
  %conv449 = zext i8 %418 to i32
  %419 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub450 = sub nsw i32 %conv449, %419
  store i32 %sub450, ptr %vk4x3, align 4, !tbaa !14
  %420 = load i32, ptr %vi4x0, align 4, !tbaa !14
  %421 = load i32, ptr %vk4x0, align 4, !tbaa !14
  %mul451 = mul nsw i32 %420, %421
  %422 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add452 = add nsw i32 %422, %mul451
  store i32 %add452, ptr %vacc0, align 4, !tbaa !14
  %423 = load i32, ptr %vi4x1, align 4, !tbaa !14
  %424 = load i32, ptr %vk4x1, align 4, !tbaa !14
  %mul453 = mul nsw i32 %423, %424
  %425 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add454 = add nsw i32 %425, %mul453
  store i32 %add454, ptr %vacc1, align 4, !tbaa !14
  %426 = load i32, ptr %vi4x2, align 4, !tbaa !14
  %427 = load i32, ptr %vk4x2, align 4, !tbaa !14
  %mul455 = mul nsw i32 %426, %427
  %428 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add456 = add nsw i32 %428, %mul455
  store i32 %add456, ptr %vacc2, align 4, !tbaa !14
  %429 = load i32, ptr %vi4x3, align 4, !tbaa !14
  %430 = load i32, ptr %vk4x3, align 4, !tbaa !14
  %mul457 = mul nsw i32 %429, %430
  %431 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add458 = add nsw i32 %431, %mul457
  store i32 %add458, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x0) #4
  %432 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx459 = getelementptr inbounds i8, ptr %432, i64 0
  %433 = load i8, ptr %arrayidx459, align 1, !tbaa !11
  %conv460 = zext i8 %433 to i32
  store i32 %conv460, ptr %vi5x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x1) #4
  %434 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx461 = getelementptr inbounds i8, ptr %434, i64 1
  %435 = load i8, ptr %arrayidx461, align 1, !tbaa !11
  %conv462 = zext i8 %435 to i32
  store i32 %conv462, ptr %vi5x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x2) #4
  %436 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx463 = getelementptr inbounds i8, ptr %436, i64 2
  %437 = load i8, ptr %arrayidx463, align 1, !tbaa !11
  %conv464 = zext i8 %437 to i32
  store i32 %conv464, ptr %vi5x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x3) #4
  %438 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx465 = getelementptr inbounds i8, ptr %438, i64 3
  %439 = load i8, ptr %arrayidx465, align 1, !tbaa !11
  %conv466 = zext i8 %439 to i32
  store i32 %conv466, ptr %vi5x3, align 4, !tbaa !14
  %440 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr467 = getelementptr inbounds i8, ptr %440, i64 4
  store ptr %add.ptr467, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5x0) #4
  %441 = load ptr, ptr %w, align 8, !tbaa !9
  %442 = ptrtoint ptr %441 to i64
  %add468 = add i64 %442, 16
  %443 = inttoptr i64 %add468 to ptr
  %arrayidx469 = getelementptr inbounds i8, ptr %443, i64 20
  %444 = load i8, ptr %arrayidx469, align 1, !tbaa !11
  %conv470 = zext i8 %444 to i32
  %445 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub471 = sub nsw i32 %conv470, %445
  store i32 %sub471, ptr %vk5x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5x1) #4
  %446 = load ptr, ptr %w, align 8, !tbaa !9
  %447 = ptrtoint ptr %446 to i64
  %add472 = add i64 %447, 16
  %448 = inttoptr i64 %add472 to ptr
  %arrayidx473 = getelementptr inbounds i8, ptr %448, i64 21
  %449 = load i8, ptr %arrayidx473, align 1, !tbaa !11
  %conv474 = zext i8 %449 to i32
  %450 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub475 = sub nsw i32 %conv474, %450
  store i32 %sub475, ptr %vk5x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5x2) #4
  %451 = load ptr, ptr %w, align 8, !tbaa !9
  %452 = ptrtoint ptr %451 to i64
  %add476 = add i64 %452, 16
  %453 = inttoptr i64 %add476 to ptr
  %arrayidx477 = getelementptr inbounds i8, ptr %453, i64 22
  %454 = load i8, ptr %arrayidx477, align 1, !tbaa !11
  %conv478 = zext i8 %454 to i32
  %455 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub479 = sub nsw i32 %conv478, %455
  store i32 %sub479, ptr %vk5x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5x3) #4
  %456 = load ptr, ptr %w, align 8, !tbaa !9
  %457 = ptrtoint ptr %456 to i64
  %add480 = add i64 %457, 16
  %458 = inttoptr i64 %add480 to ptr
  %arrayidx481 = getelementptr inbounds i8, ptr %458, i64 23
  %459 = load i8, ptr %arrayidx481, align 1, !tbaa !11
  %conv482 = zext i8 %459 to i32
  %460 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub483 = sub nsw i32 %conv482, %460
  store i32 %sub483, ptr %vk5x3, align 4, !tbaa !14
  %461 = load i32, ptr %vi5x0, align 4, !tbaa !14
  %462 = load i32, ptr %vk5x0, align 4, !tbaa !14
  %mul484 = mul nsw i32 %461, %462
  %463 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add485 = add nsw i32 %463, %mul484
  store i32 %add485, ptr %vacc0, align 4, !tbaa !14
  %464 = load i32, ptr %vi5x1, align 4, !tbaa !14
  %465 = load i32, ptr %vk5x1, align 4, !tbaa !14
  %mul486 = mul nsw i32 %464, %465
  %466 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add487 = add nsw i32 %466, %mul486
  store i32 %add487, ptr %vacc1, align 4, !tbaa !14
  %467 = load i32, ptr %vi5x2, align 4, !tbaa !14
  %468 = load i32, ptr %vk5x2, align 4, !tbaa !14
  %mul488 = mul nsw i32 %467, %468
  %469 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add489 = add nsw i32 %469, %mul488
  store i32 %add489, ptr %vacc2, align 4, !tbaa !14
  %470 = load i32, ptr %vi5x3, align 4, !tbaa !14
  %471 = load i32, ptr %vk5x3, align 4, !tbaa !14
  %mul490 = mul nsw i32 %470, %471
  %472 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add491 = add nsw i32 %472, %mul490
  store i32 %add491, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x0) #4
  %473 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx492 = getelementptr inbounds i8, ptr %473, i64 0
  %474 = load i8, ptr %arrayidx492, align 1, !tbaa !11
  %conv493 = zext i8 %474 to i32
  store i32 %conv493, ptr %vi6x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x1) #4
  %475 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx494 = getelementptr inbounds i8, ptr %475, i64 1
  %476 = load i8, ptr %arrayidx494, align 1, !tbaa !11
  %conv495 = zext i8 %476 to i32
  store i32 %conv495, ptr %vi6x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x2) #4
  %477 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx496 = getelementptr inbounds i8, ptr %477, i64 2
  %478 = load i8, ptr %arrayidx496, align 1, !tbaa !11
  %conv497 = zext i8 %478 to i32
  store i32 %conv497, ptr %vi6x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x3) #4
  %479 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx498 = getelementptr inbounds i8, ptr %479, i64 3
  %480 = load i8, ptr %arrayidx498, align 1, !tbaa !11
  %conv499 = zext i8 %480 to i32
  store i32 %conv499, ptr %vi6x3, align 4, !tbaa !14
  %481 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr500 = getelementptr inbounds i8, ptr %481, i64 4
  store ptr %add.ptr500, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6x0) #4
  %482 = load ptr, ptr %w, align 8, !tbaa !9
  %483 = ptrtoint ptr %482 to i64
  %add501 = add i64 %483, 16
  %484 = inttoptr i64 %add501 to ptr
  %arrayidx502 = getelementptr inbounds i8, ptr %484, i64 24
  %485 = load i8, ptr %arrayidx502, align 1, !tbaa !11
  %conv503 = zext i8 %485 to i32
  %486 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub504 = sub nsw i32 %conv503, %486
  store i32 %sub504, ptr %vk6x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6x1) #4
  %487 = load ptr, ptr %w, align 8, !tbaa !9
  %488 = ptrtoint ptr %487 to i64
  %add505 = add i64 %488, 16
  %489 = inttoptr i64 %add505 to ptr
  %arrayidx506 = getelementptr inbounds i8, ptr %489, i64 25
  %490 = load i8, ptr %arrayidx506, align 1, !tbaa !11
  %conv507 = zext i8 %490 to i32
  %491 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub508 = sub nsw i32 %conv507, %491
  store i32 %sub508, ptr %vk6x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6x2) #4
  %492 = load ptr, ptr %w, align 8, !tbaa !9
  %493 = ptrtoint ptr %492 to i64
  %add509 = add i64 %493, 16
  %494 = inttoptr i64 %add509 to ptr
  %arrayidx510 = getelementptr inbounds i8, ptr %494, i64 26
  %495 = load i8, ptr %arrayidx510, align 1, !tbaa !11
  %conv511 = zext i8 %495 to i32
  %496 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub512 = sub nsw i32 %conv511, %496
  store i32 %sub512, ptr %vk6x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6x3) #4
  %497 = load ptr, ptr %w, align 8, !tbaa !9
  %498 = ptrtoint ptr %497 to i64
  %add513 = add i64 %498, 16
  %499 = inttoptr i64 %add513 to ptr
  %arrayidx514 = getelementptr inbounds i8, ptr %499, i64 27
  %500 = load i8, ptr %arrayidx514, align 1, !tbaa !11
  %conv515 = zext i8 %500 to i32
  %501 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub516 = sub nsw i32 %conv515, %501
  store i32 %sub516, ptr %vk6x3, align 4, !tbaa !14
  %502 = load i32, ptr %vi6x0, align 4, !tbaa !14
  %503 = load i32, ptr %vk6x0, align 4, !tbaa !14
  %mul517 = mul nsw i32 %502, %503
  %504 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add518 = add nsw i32 %504, %mul517
  store i32 %add518, ptr %vacc0, align 4, !tbaa !14
  %505 = load i32, ptr %vi6x1, align 4, !tbaa !14
  %506 = load i32, ptr %vk6x1, align 4, !tbaa !14
  %mul519 = mul nsw i32 %505, %506
  %507 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add520 = add nsw i32 %507, %mul519
  store i32 %add520, ptr %vacc1, align 4, !tbaa !14
  %508 = load i32, ptr %vi6x2, align 4, !tbaa !14
  %509 = load i32, ptr %vk6x2, align 4, !tbaa !14
  %mul521 = mul nsw i32 %508, %509
  %510 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add522 = add nsw i32 %510, %mul521
  store i32 %add522, ptr %vacc2, align 4, !tbaa !14
  %511 = load i32, ptr %vi6x3, align 4, !tbaa !14
  %512 = load i32, ptr %vk6x3, align 4, !tbaa !14
  %mul523 = mul nsw i32 %511, %512
  %513 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add524 = add nsw i32 %513, %mul523
  store i32 %add524, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7x0) #4
  %514 = load ptr, ptr %i7, align 8, !tbaa !9
  %arrayidx525 = getelementptr inbounds i8, ptr %514, i64 0
  %515 = load i8, ptr %arrayidx525, align 1, !tbaa !11
  %conv526 = zext i8 %515 to i32
  store i32 %conv526, ptr %vi7x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7x1) #4
  %516 = load ptr, ptr %i7, align 8, !tbaa !9
  %arrayidx527 = getelementptr inbounds i8, ptr %516, i64 1
  %517 = load i8, ptr %arrayidx527, align 1, !tbaa !11
  %conv528 = zext i8 %517 to i32
  store i32 %conv528, ptr %vi7x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7x2) #4
  %518 = load ptr, ptr %i7, align 8, !tbaa !9
  %arrayidx529 = getelementptr inbounds i8, ptr %518, i64 2
  %519 = load i8, ptr %arrayidx529, align 1, !tbaa !11
  %conv530 = zext i8 %519 to i32
  store i32 %conv530, ptr %vi7x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7x3) #4
  %520 = load ptr, ptr %i7, align 8, !tbaa !9
  %arrayidx531 = getelementptr inbounds i8, ptr %520, i64 3
  %521 = load i8, ptr %arrayidx531, align 1, !tbaa !11
  %conv532 = zext i8 %521 to i32
  store i32 %conv532, ptr %vi7x3, align 4, !tbaa !14
  %522 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr533 = getelementptr inbounds i8, ptr %522, i64 4
  store ptr %add.ptr533, ptr %i7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7x0) #4
  %523 = load ptr, ptr %w, align 8, !tbaa !9
  %524 = ptrtoint ptr %523 to i64
  %add534 = add i64 %524, 16
  %525 = inttoptr i64 %add534 to ptr
  %arrayidx535 = getelementptr inbounds i8, ptr %525, i64 28
  %526 = load i8, ptr %arrayidx535, align 1, !tbaa !11
  %conv536 = zext i8 %526 to i32
  %527 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub537 = sub nsw i32 %conv536, %527
  store i32 %sub537, ptr %vk7x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7x1) #4
  %528 = load ptr, ptr %w, align 8, !tbaa !9
  %529 = ptrtoint ptr %528 to i64
  %add538 = add i64 %529, 16
  %530 = inttoptr i64 %add538 to ptr
  %arrayidx539 = getelementptr inbounds i8, ptr %530, i64 29
  %531 = load i8, ptr %arrayidx539, align 1, !tbaa !11
  %conv540 = zext i8 %531 to i32
  %532 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub541 = sub nsw i32 %conv540, %532
  store i32 %sub541, ptr %vk7x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7x2) #4
  %533 = load ptr, ptr %w, align 8, !tbaa !9
  %534 = ptrtoint ptr %533 to i64
  %add542 = add i64 %534, 16
  %535 = inttoptr i64 %add542 to ptr
  %arrayidx543 = getelementptr inbounds i8, ptr %535, i64 30
  %536 = load i8, ptr %arrayidx543, align 1, !tbaa !11
  %conv544 = zext i8 %536 to i32
  %537 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub545 = sub nsw i32 %conv544, %537
  store i32 %sub545, ptr %vk7x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7x3) #4
  %538 = load ptr, ptr %w, align 8, !tbaa !9
  %539 = ptrtoint ptr %538 to i64
  %add546 = add i64 %539, 16
  %540 = inttoptr i64 %add546 to ptr
  %arrayidx547 = getelementptr inbounds i8, ptr %540, i64 31
  %541 = load i8, ptr %arrayidx547, align 1, !tbaa !11
  %conv548 = zext i8 %541 to i32
  %542 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub549 = sub nsw i32 %conv548, %542
  store i32 %sub549, ptr %vk7x3, align 4, !tbaa !14
  %543 = load i32, ptr %vi7x0, align 4, !tbaa !14
  %544 = load i32, ptr %vk7x0, align 4, !tbaa !14
  %mul550 = mul nsw i32 %543, %544
  %545 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add551 = add nsw i32 %545, %mul550
  store i32 %add551, ptr %vacc0, align 4, !tbaa !14
  %546 = load i32, ptr %vi7x1, align 4, !tbaa !14
  %547 = load i32, ptr %vk7x1, align 4, !tbaa !14
  %mul552 = mul nsw i32 %546, %547
  %548 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add553 = add nsw i32 %548, %mul552
  store i32 %add553, ptr %vacc1, align 4, !tbaa !14
  %549 = load i32, ptr %vi7x2, align 4, !tbaa !14
  %550 = load i32, ptr %vk7x2, align 4, !tbaa !14
  %mul554 = mul nsw i32 %549, %550
  %551 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add555 = add nsw i32 %551, %mul554
  store i32 %add555, ptr %vacc2, align 4, !tbaa !14
  %552 = load i32, ptr %vi7x3, align 4, !tbaa !14
  %553 = load i32, ptr %vk7x3, align 4, !tbaa !14
  %mul556 = mul nsw i32 %552, %553
  %554 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add557 = add nsw i32 %554, %mul556
  store i32 %add557, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8x0) #4
  %555 = load ptr, ptr %i8, align 8, !tbaa !9
  %arrayidx558 = getelementptr inbounds i8, ptr %555, i64 0
  %556 = load i8, ptr %arrayidx558, align 1, !tbaa !11
  %conv559 = zext i8 %556 to i32
  store i32 %conv559, ptr %vi8x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8x1) #4
  %557 = load ptr, ptr %i8, align 8, !tbaa !9
  %arrayidx560 = getelementptr inbounds i8, ptr %557, i64 1
  %558 = load i8, ptr %arrayidx560, align 1, !tbaa !11
  %conv561 = zext i8 %558 to i32
  store i32 %conv561, ptr %vi8x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8x2) #4
  %559 = load ptr, ptr %i8, align 8, !tbaa !9
  %arrayidx562 = getelementptr inbounds i8, ptr %559, i64 2
  %560 = load i8, ptr %arrayidx562, align 1, !tbaa !11
  %conv563 = zext i8 %560 to i32
  store i32 %conv563, ptr %vi8x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8x3) #4
  %561 = load ptr, ptr %i8, align 8, !tbaa !9
  %arrayidx564 = getelementptr inbounds i8, ptr %561, i64 3
  %562 = load i8, ptr %arrayidx564, align 1, !tbaa !11
  %conv565 = zext i8 %562 to i32
  store i32 %conv565, ptr %vi8x3, align 4, !tbaa !14
  %563 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr566 = getelementptr inbounds i8, ptr %563, i64 4
  store ptr %add.ptr566, ptr %i8, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8x0) #4
  %564 = load ptr, ptr %w, align 8, !tbaa !9
  %565 = ptrtoint ptr %564 to i64
  %add567 = add i64 %565, 16
  %566 = inttoptr i64 %add567 to ptr
  %arrayidx568 = getelementptr inbounds i8, ptr %566, i64 32
  %567 = load i8, ptr %arrayidx568, align 1, !tbaa !11
  %conv569 = zext i8 %567 to i32
  %568 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub570 = sub nsw i32 %conv569, %568
  store i32 %sub570, ptr %vk8x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8x1) #4
  %569 = load ptr, ptr %w, align 8, !tbaa !9
  %570 = ptrtoint ptr %569 to i64
  %add571 = add i64 %570, 16
  %571 = inttoptr i64 %add571 to ptr
  %arrayidx572 = getelementptr inbounds i8, ptr %571, i64 33
  %572 = load i8, ptr %arrayidx572, align 1, !tbaa !11
  %conv573 = zext i8 %572 to i32
  %573 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub574 = sub nsw i32 %conv573, %573
  store i32 %sub574, ptr %vk8x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8x2) #4
  %574 = load ptr, ptr %w, align 8, !tbaa !9
  %575 = ptrtoint ptr %574 to i64
  %add575 = add i64 %575, 16
  %576 = inttoptr i64 %add575 to ptr
  %arrayidx576 = getelementptr inbounds i8, ptr %576, i64 34
  %577 = load i8, ptr %arrayidx576, align 1, !tbaa !11
  %conv577 = zext i8 %577 to i32
  %578 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub578 = sub nsw i32 %conv577, %578
  store i32 %sub578, ptr %vk8x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8x3) #4
  %579 = load ptr, ptr %w, align 8, !tbaa !9
  %580 = ptrtoint ptr %579 to i64
  %add579 = add i64 %580, 16
  %581 = inttoptr i64 %add579 to ptr
  %arrayidx580 = getelementptr inbounds i8, ptr %581, i64 35
  %582 = load i8, ptr %arrayidx580, align 1, !tbaa !11
  %conv581 = zext i8 %582 to i32
  %583 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub582 = sub nsw i32 %conv581, %583
  store i32 %sub582, ptr %vk8x3, align 4, !tbaa !14
  %584 = load i32, ptr %vi8x0, align 4, !tbaa !14
  %585 = load i32, ptr %vk8x0, align 4, !tbaa !14
  %mul583 = mul nsw i32 %584, %585
  %586 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add584 = add nsw i32 %586, %mul583
  store i32 %add584, ptr %vacc0, align 4, !tbaa !14
  %587 = load i32, ptr %vi8x1, align 4, !tbaa !14
  %588 = load i32, ptr %vk8x1, align 4, !tbaa !14
  %mul585 = mul nsw i32 %587, %588
  %589 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add586 = add nsw i32 %589, %mul585
  store i32 %add586, ptr %vacc1, align 4, !tbaa !14
  %590 = load i32, ptr %vi8x2, align 4, !tbaa !14
  %591 = load i32, ptr %vk8x2, align 4, !tbaa !14
  %mul587 = mul nsw i32 %590, %591
  %592 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add588 = add nsw i32 %592, %mul587
  store i32 %add588, ptr %vacc2, align 4, !tbaa !14
  %593 = load i32, ptr %vi8x3, align 4, !tbaa !14
  %594 = load i32, ptr %vk8x3, align 4, !tbaa !14
  %mul589 = mul nsw i32 %593, %594
  %595 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add590 = add nsw i32 %595, %mul589
  store i32 %add590, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9x0) #4
  %596 = load ptr, ptr %i9, align 8, !tbaa !9
  %arrayidx591 = getelementptr inbounds i8, ptr %596, i64 0
  %597 = load i8, ptr %arrayidx591, align 1, !tbaa !11
  %conv592 = zext i8 %597 to i32
  store i32 %conv592, ptr %vi9x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9x1) #4
  %598 = load ptr, ptr %i9, align 8, !tbaa !9
  %arrayidx593 = getelementptr inbounds i8, ptr %598, i64 1
  %599 = load i8, ptr %arrayidx593, align 1, !tbaa !11
  %conv594 = zext i8 %599 to i32
  store i32 %conv594, ptr %vi9x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9x2) #4
  %600 = load ptr, ptr %i9, align 8, !tbaa !9
  %arrayidx595 = getelementptr inbounds i8, ptr %600, i64 2
  %601 = load i8, ptr %arrayidx595, align 1, !tbaa !11
  %conv596 = zext i8 %601 to i32
  store i32 %conv596, ptr %vi9x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9x3) #4
  %602 = load ptr, ptr %i9, align 8, !tbaa !9
  %arrayidx597 = getelementptr inbounds i8, ptr %602, i64 3
  %603 = load i8, ptr %arrayidx597, align 1, !tbaa !11
  %conv598 = zext i8 %603 to i32
  store i32 %conv598, ptr %vi9x3, align 4, !tbaa !14
  %604 = load ptr, ptr %i9, align 8, !tbaa !9
  %add.ptr599 = getelementptr inbounds i8, ptr %604, i64 4
  store ptr %add.ptr599, ptr %i9, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9x0) #4
  %605 = load ptr, ptr %w, align 8, !tbaa !9
  %606 = ptrtoint ptr %605 to i64
  %add600 = add i64 %606, 16
  %607 = inttoptr i64 %add600 to ptr
  %arrayidx601 = getelementptr inbounds i8, ptr %607, i64 36
  %608 = load i8, ptr %arrayidx601, align 1, !tbaa !11
  %conv602 = zext i8 %608 to i32
  %609 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub603 = sub nsw i32 %conv602, %609
  store i32 %sub603, ptr %vk9x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9x1) #4
  %610 = load ptr, ptr %w, align 8, !tbaa !9
  %611 = ptrtoint ptr %610 to i64
  %add604 = add i64 %611, 16
  %612 = inttoptr i64 %add604 to ptr
  %arrayidx605 = getelementptr inbounds i8, ptr %612, i64 37
  %613 = load i8, ptr %arrayidx605, align 1, !tbaa !11
  %conv606 = zext i8 %613 to i32
  %614 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub607 = sub nsw i32 %conv606, %614
  store i32 %sub607, ptr %vk9x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9x2) #4
  %615 = load ptr, ptr %w, align 8, !tbaa !9
  %616 = ptrtoint ptr %615 to i64
  %add608 = add i64 %616, 16
  %617 = inttoptr i64 %add608 to ptr
  %arrayidx609 = getelementptr inbounds i8, ptr %617, i64 38
  %618 = load i8, ptr %arrayidx609, align 1, !tbaa !11
  %conv610 = zext i8 %618 to i32
  %619 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub611 = sub nsw i32 %conv610, %619
  store i32 %sub611, ptr %vk9x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9x3) #4
  %620 = load ptr, ptr %w, align 8, !tbaa !9
  %621 = ptrtoint ptr %620 to i64
  %add612 = add i64 %621, 16
  %622 = inttoptr i64 %add612 to ptr
  %arrayidx613 = getelementptr inbounds i8, ptr %622, i64 39
  %623 = load i8, ptr %arrayidx613, align 1, !tbaa !11
  %conv614 = zext i8 %623 to i32
  %624 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub615 = sub nsw i32 %conv614, %624
  store i32 %sub615, ptr %vk9x3, align 4, !tbaa !14
  %625 = load i32, ptr %vi9x0, align 4, !tbaa !14
  %626 = load i32, ptr %vk9x0, align 4, !tbaa !14
  %mul616 = mul nsw i32 %625, %626
  %627 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add617 = add nsw i32 %627, %mul616
  store i32 %add617, ptr %vacc0, align 4, !tbaa !14
  %628 = load i32, ptr %vi9x1, align 4, !tbaa !14
  %629 = load i32, ptr %vk9x1, align 4, !tbaa !14
  %mul618 = mul nsw i32 %628, %629
  %630 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add619 = add nsw i32 %630, %mul618
  store i32 %add619, ptr %vacc1, align 4, !tbaa !14
  %631 = load i32, ptr %vi9x2, align 4, !tbaa !14
  %632 = load i32, ptr %vk9x2, align 4, !tbaa !14
  %mul620 = mul nsw i32 %631, %632
  %633 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add621 = add nsw i32 %633, %mul620
  store i32 %add621, ptr %vacc2, align 4, !tbaa !14
  %634 = load i32, ptr %vi9x3, align 4, !tbaa !14
  %635 = load i32, ptr %vk9x3, align 4, !tbaa !14
  %mul622 = mul nsw i32 %634, %635
  %636 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add623 = add nsw i32 %636, %mul622
  store i32 %add623, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10x0) #4
  %637 = load ptr, ptr %i10, align 8, !tbaa !9
  %arrayidx624 = getelementptr inbounds i8, ptr %637, i64 0
  %638 = load i8, ptr %arrayidx624, align 1, !tbaa !11
  %conv625 = zext i8 %638 to i32
  store i32 %conv625, ptr %vi10x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10x1) #4
  %639 = load ptr, ptr %i10, align 8, !tbaa !9
  %arrayidx626 = getelementptr inbounds i8, ptr %639, i64 1
  %640 = load i8, ptr %arrayidx626, align 1, !tbaa !11
  %conv627 = zext i8 %640 to i32
  store i32 %conv627, ptr %vi10x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10x2) #4
  %641 = load ptr, ptr %i10, align 8, !tbaa !9
  %arrayidx628 = getelementptr inbounds i8, ptr %641, i64 2
  %642 = load i8, ptr %arrayidx628, align 1, !tbaa !11
  %conv629 = zext i8 %642 to i32
  store i32 %conv629, ptr %vi10x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10x3) #4
  %643 = load ptr, ptr %i10, align 8, !tbaa !9
  %arrayidx630 = getelementptr inbounds i8, ptr %643, i64 3
  %644 = load i8, ptr %arrayidx630, align 1, !tbaa !11
  %conv631 = zext i8 %644 to i32
  store i32 %conv631, ptr %vi10x3, align 4, !tbaa !14
  %645 = load ptr, ptr %i10, align 8, !tbaa !9
  %add.ptr632 = getelementptr inbounds i8, ptr %645, i64 4
  store ptr %add.ptr632, ptr %i10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10x0) #4
  %646 = load ptr, ptr %w, align 8, !tbaa !9
  %647 = ptrtoint ptr %646 to i64
  %add633 = add i64 %647, 16
  %648 = inttoptr i64 %add633 to ptr
  %arrayidx634 = getelementptr inbounds i8, ptr %648, i64 40
  %649 = load i8, ptr %arrayidx634, align 1, !tbaa !11
  %conv635 = zext i8 %649 to i32
  %650 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub636 = sub nsw i32 %conv635, %650
  store i32 %sub636, ptr %vk10x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10x1) #4
  %651 = load ptr, ptr %w, align 8, !tbaa !9
  %652 = ptrtoint ptr %651 to i64
  %add637 = add i64 %652, 16
  %653 = inttoptr i64 %add637 to ptr
  %arrayidx638 = getelementptr inbounds i8, ptr %653, i64 41
  %654 = load i8, ptr %arrayidx638, align 1, !tbaa !11
  %conv639 = zext i8 %654 to i32
  %655 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub640 = sub nsw i32 %conv639, %655
  store i32 %sub640, ptr %vk10x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10x2) #4
  %656 = load ptr, ptr %w, align 8, !tbaa !9
  %657 = ptrtoint ptr %656 to i64
  %add641 = add i64 %657, 16
  %658 = inttoptr i64 %add641 to ptr
  %arrayidx642 = getelementptr inbounds i8, ptr %658, i64 42
  %659 = load i8, ptr %arrayidx642, align 1, !tbaa !11
  %conv643 = zext i8 %659 to i32
  %660 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub644 = sub nsw i32 %conv643, %660
  store i32 %sub644, ptr %vk10x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10x3) #4
  %661 = load ptr, ptr %w, align 8, !tbaa !9
  %662 = ptrtoint ptr %661 to i64
  %add645 = add i64 %662, 16
  %663 = inttoptr i64 %add645 to ptr
  %arrayidx646 = getelementptr inbounds i8, ptr %663, i64 43
  %664 = load i8, ptr %arrayidx646, align 1, !tbaa !11
  %conv647 = zext i8 %664 to i32
  %665 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub648 = sub nsw i32 %conv647, %665
  store i32 %sub648, ptr %vk10x3, align 4, !tbaa !14
  %666 = load i32, ptr %vi10x0, align 4, !tbaa !14
  %667 = load i32, ptr %vk10x0, align 4, !tbaa !14
  %mul649 = mul nsw i32 %666, %667
  %668 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add650 = add nsw i32 %668, %mul649
  store i32 %add650, ptr %vacc0, align 4, !tbaa !14
  %669 = load i32, ptr %vi10x1, align 4, !tbaa !14
  %670 = load i32, ptr %vk10x1, align 4, !tbaa !14
  %mul651 = mul nsw i32 %669, %670
  %671 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add652 = add nsw i32 %671, %mul651
  store i32 %add652, ptr %vacc1, align 4, !tbaa !14
  %672 = load i32, ptr %vi10x2, align 4, !tbaa !14
  %673 = load i32, ptr %vk10x2, align 4, !tbaa !14
  %mul653 = mul nsw i32 %672, %673
  %674 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add654 = add nsw i32 %674, %mul653
  store i32 %add654, ptr %vacc2, align 4, !tbaa !14
  %675 = load i32, ptr %vi10x3, align 4, !tbaa !14
  %676 = load i32, ptr %vk10x3, align 4, !tbaa !14
  %mul655 = mul nsw i32 %675, %676
  %677 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add656 = add nsw i32 %677, %mul655
  store i32 %add656, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11x0) #4
  %678 = load ptr, ptr %i11, align 8, !tbaa !9
  %arrayidx657 = getelementptr inbounds i8, ptr %678, i64 0
  %679 = load i8, ptr %arrayidx657, align 1, !tbaa !11
  %conv658 = zext i8 %679 to i32
  store i32 %conv658, ptr %vi11x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11x1) #4
  %680 = load ptr, ptr %i11, align 8, !tbaa !9
  %arrayidx659 = getelementptr inbounds i8, ptr %680, i64 1
  %681 = load i8, ptr %arrayidx659, align 1, !tbaa !11
  %conv660 = zext i8 %681 to i32
  store i32 %conv660, ptr %vi11x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11x2) #4
  %682 = load ptr, ptr %i11, align 8, !tbaa !9
  %arrayidx661 = getelementptr inbounds i8, ptr %682, i64 2
  %683 = load i8, ptr %arrayidx661, align 1, !tbaa !11
  %conv662 = zext i8 %683 to i32
  store i32 %conv662, ptr %vi11x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11x3) #4
  %684 = load ptr, ptr %i11, align 8, !tbaa !9
  %arrayidx663 = getelementptr inbounds i8, ptr %684, i64 3
  %685 = load i8, ptr %arrayidx663, align 1, !tbaa !11
  %conv664 = zext i8 %685 to i32
  store i32 %conv664, ptr %vi11x3, align 4, !tbaa !14
  %686 = load ptr, ptr %i11, align 8, !tbaa !9
  %add.ptr665 = getelementptr inbounds i8, ptr %686, i64 4
  store ptr %add.ptr665, ptr %i11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11x0) #4
  %687 = load ptr, ptr %w, align 8, !tbaa !9
  %688 = ptrtoint ptr %687 to i64
  %add666 = add i64 %688, 16
  %689 = inttoptr i64 %add666 to ptr
  %arrayidx667 = getelementptr inbounds i8, ptr %689, i64 44
  %690 = load i8, ptr %arrayidx667, align 1, !tbaa !11
  %conv668 = zext i8 %690 to i32
  %691 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub669 = sub nsw i32 %conv668, %691
  store i32 %sub669, ptr %vk11x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11x1) #4
  %692 = load ptr, ptr %w, align 8, !tbaa !9
  %693 = ptrtoint ptr %692 to i64
  %add670 = add i64 %693, 16
  %694 = inttoptr i64 %add670 to ptr
  %arrayidx671 = getelementptr inbounds i8, ptr %694, i64 45
  %695 = load i8, ptr %arrayidx671, align 1, !tbaa !11
  %conv672 = zext i8 %695 to i32
  %696 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub673 = sub nsw i32 %conv672, %696
  store i32 %sub673, ptr %vk11x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11x2) #4
  %697 = load ptr, ptr %w, align 8, !tbaa !9
  %698 = ptrtoint ptr %697 to i64
  %add674 = add i64 %698, 16
  %699 = inttoptr i64 %add674 to ptr
  %arrayidx675 = getelementptr inbounds i8, ptr %699, i64 46
  %700 = load i8, ptr %arrayidx675, align 1, !tbaa !11
  %conv676 = zext i8 %700 to i32
  %701 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub677 = sub nsw i32 %conv676, %701
  store i32 %sub677, ptr %vk11x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11x3) #4
  %702 = load ptr, ptr %w, align 8, !tbaa !9
  %703 = ptrtoint ptr %702 to i64
  %add678 = add i64 %703, 16
  %704 = inttoptr i64 %add678 to ptr
  %arrayidx679 = getelementptr inbounds i8, ptr %704, i64 47
  %705 = load i8, ptr %arrayidx679, align 1, !tbaa !11
  %conv680 = zext i8 %705 to i32
  %706 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub681 = sub nsw i32 %conv680, %706
  store i32 %sub681, ptr %vk11x3, align 4, !tbaa !14
  %707 = load i32, ptr %vi11x0, align 4, !tbaa !14
  %708 = load i32, ptr %vk11x0, align 4, !tbaa !14
  %mul682 = mul nsw i32 %707, %708
  %709 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add683 = add nsw i32 %709, %mul682
  store i32 %add683, ptr %vacc0, align 4, !tbaa !14
  %710 = load i32, ptr %vi11x1, align 4, !tbaa !14
  %711 = load i32, ptr %vk11x1, align 4, !tbaa !14
  %mul684 = mul nsw i32 %710, %711
  %712 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add685 = add nsw i32 %712, %mul684
  store i32 %add685, ptr %vacc1, align 4, !tbaa !14
  %713 = load i32, ptr %vi11x2, align 4, !tbaa !14
  %714 = load i32, ptr %vk11x2, align 4, !tbaa !14
  %mul686 = mul nsw i32 %713, %714
  %715 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add687 = add nsw i32 %715, %mul686
  store i32 %add687, ptr %vacc2, align 4, !tbaa !14
  %716 = load i32, ptr %vi11x3, align 4, !tbaa !14
  %717 = load i32, ptr %vk11x3, align 4, !tbaa !14
  %mul688 = mul nsw i32 %716, %717
  %718 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add689 = add nsw i32 %718, %mul688
  store i32 %add689, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12x0) #4
  %719 = load ptr, ptr %i12, align 8, !tbaa !9
  %arrayidx690 = getelementptr inbounds i8, ptr %719, i64 0
  %720 = load i8, ptr %arrayidx690, align 1, !tbaa !11
  %conv691 = zext i8 %720 to i32
  store i32 %conv691, ptr %vi12x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12x1) #4
  %721 = load ptr, ptr %i12, align 8, !tbaa !9
  %arrayidx692 = getelementptr inbounds i8, ptr %721, i64 1
  %722 = load i8, ptr %arrayidx692, align 1, !tbaa !11
  %conv693 = zext i8 %722 to i32
  store i32 %conv693, ptr %vi12x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12x2) #4
  %723 = load ptr, ptr %i12, align 8, !tbaa !9
  %arrayidx694 = getelementptr inbounds i8, ptr %723, i64 2
  %724 = load i8, ptr %arrayidx694, align 1, !tbaa !11
  %conv695 = zext i8 %724 to i32
  store i32 %conv695, ptr %vi12x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12x3) #4
  %725 = load ptr, ptr %i12, align 8, !tbaa !9
  %arrayidx696 = getelementptr inbounds i8, ptr %725, i64 3
  %726 = load i8, ptr %arrayidx696, align 1, !tbaa !11
  %conv697 = zext i8 %726 to i32
  store i32 %conv697, ptr %vi12x3, align 4, !tbaa !14
  %727 = load ptr, ptr %i12, align 8, !tbaa !9
  %add.ptr698 = getelementptr inbounds i8, ptr %727, i64 4
  store ptr %add.ptr698, ptr %i12, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12x0) #4
  %728 = load ptr, ptr %w, align 8, !tbaa !9
  %729 = ptrtoint ptr %728 to i64
  %add699 = add i64 %729, 16
  %730 = inttoptr i64 %add699 to ptr
  %arrayidx700 = getelementptr inbounds i8, ptr %730, i64 48
  %731 = load i8, ptr %arrayidx700, align 1, !tbaa !11
  %conv701 = zext i8 %731 to i32
  %732 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub702 = sub nsw i32 %conv701, %732
  store i32 %sub702, ptr %vk12x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12x1) #4
  %733 = load ptr, ptr %w, align 8, !tbaa !9
  %734 = ptrtoint ptr %733 to i64
  %add703 = add i64 %734, 16
  %735 = inttoptr i64 %add703 to ptr
  %arrayidx704 = getelementptr inbounds i8, ptr %735, i64 49
  %736 = load i8, ptr %arrayidx704, align 1, !tbaa !11
  %conv705 = zext i8 %736 to i32
  %737 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub706 = sub nsw i32 %conv705, %737
  store i32 %sub706, ptr %vk12x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12x2) #4
  %738 = load ptr, ptr %w, align 8, !tbaa !9
  %739 = ptrtoint ptr %738 to i64
  %add707 = add i64 %739, 16
  %740 = inttoptr i64 %add707 to ptr
  %arrayidx708 = getelementptr inbounds i8, ptr %740, i64 50
  %741 = load i8, ptr %arrayidx708, align 1, !tbaa !11
  %conv709 = zext i8 %741 to i32
  %742 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub710 = sub nsw i32 %conv709, %742
  store i32 %sub710, ptr %vk12x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12x3) #4
  %743 = load ptr, ptr %w, align 8, !tbaa !9
  %744 = ptrtoint ptr %743 to i64
  %add711 = add i64 %744, 16
  %745 = inttoptr i64 %add711 to ptr
  %arrayidx712 = getelementptr inbounds i8, ptr %745, i64 51
  %746 = load i8, ptr %arrayidx712, align 1, !tbaa !11
  %conv713 = zext i8 %746 to i32
  %747 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub714 = sub nsw i32 %conv713, %747
  store i32 %sub714, ptr %vk12x3, align 4, !tbaa !14
  %748 = load i32, ptr %vi12x0, align 4, !tbaa !14
  %749 = load i32, ptr %vk12x0, align 4, !tbaa !14
  %mul715 = mul nsw i32 %748, %749
  %750 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add716 = add nsw i32 %750, %mul715
  store i32 %add716, ptr %vacc0, align 4, !tbaa !14
  %751 = load i32, ptr %vi12x1, align 4, !tbaa !14
  %752 = load i32, ptr %vk12x1, align 4, !tbaa !14
  %mul717 = mul nsw i32 %751, %752
  %753 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add718 = add nsw i32 %753, %mul717
  store i32 %add718, ptr %vacc1, align 4, !tbaa !14
  %754 = load i32, ptr %vi12x2, align 4, !tbaa !14
  %755 = load i32, ptr %vk12x2, align 4, !tbaa !14
  %mul719 = mul nsw i32 %754, %755
  %756 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add720 = add nsw i32 %756, %mul719
  store i32 %add720, ptr %vacc2, align 4, !tbaa !14
  %757 = load i32, ptr %vi12x3, align 4, !tbaa !14
  %758 = load i32, ptr %vk12x3, align 4, !tbaa !14
  %mul721 = mul nsw i32 %757, %758
  %759 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add722 = add nsw i32 %759, %mul721
  store i32 %add722, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13x0) #4
  %760 = load ptr, ptr %i13, align 8, !tbaa !9
  %arrayidx723 = getelementptr inbounds i8, ptr %760, i64 0
  %761 = load i8, ptr %arrayidx723, align 1, !tbaa !11
  %conv724 = zext i8 %761 to i32
  store i32 %conv724, ptr %vi13x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13x1) #4
  %762 = load ptr, ptr %i13, align 8, !tbaa !9
  %arrayidx725 = getelementptr inbounds i8, ptr %762, i64 1
  %763 = load i8, ptr %arrayidx725, align 1, !tbaa !11
  %conv726 = zext i8 %763 to i32
  store i32 %conv726, ptr %vi13x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13x2) #4
  %764 = load ptr, ptr %i13, align 8, !tbaa !9
  %arrayidx727 = getelementptr inbounds i8, ptr %764, i64 2
  %765 = load i8, ptr %arrayidx727, align 1, !tbaa !11
  %conv728 = zext i8 %765 to i32
  store i32 %conv728, ptr %vi13x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13x3) #4
  %766 = load ptr, ptr %i13, align 8, !tbaa !9
  %arrayidx729 = getelementptr inbounds i8, ptr %766, i64 3
  %767 = load i8, ptr %arrayidx729, align 1, !tbaa !11
  %conv730 = zext i8 %767 to i32
  store i32 %conv730, ptr %vi13x3, align 4, !tbaa !14
  %768 = load ptr, ptr %i13, align 8, !tbaa !9
  %add.ptr731 = getelementptr inbounds i8, ptr %768, i64 4
  store ptr %add.ptr731, ptr %i13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13x0) #4
  %769 = load ptr, ptr %w, align 8, !tbaa !9
  %770 = ptrtoint ptr %769 to i64
  %add732 = add i64 %770, 16
  %771 = inttoptr i64 %add732 to ptr
  %arrayidx733 = getelementptr inbounds i8, ptr %771, i64 52
  %772 = load i8, ptr %arrayidx733, align 1, !tbaa !11
  %conv734 = zext i8 %772 to i32
  %773 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub735 = sub nsw i32 %conv734, %773
  store i32 %sub735, ptr %vk13x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13x1) #4
  %774 = load ptr, ptr %w, align 8, !tbaa !9
  %775 = ptrtoint ptr %774 to i64
  %add736 = add i64 %775, 16
  %776 = inttoptr i64 %add736 to ptr
  %arrayidx737 = getelementptr inbounds i8, ptr %776, i64 53
  %777 = load i8, ptr %arrayidx737, align 1, !tbaa !11
  %conv738 = zext i8 %777 to i32
  %778 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub739 = sub nsw i32 %conv738, %778
  store i32 %sub739, ptr %vk13x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13x2) #4
  %779 = load ptr, ptr %w, align 8, !tbaa !9
  %780 = ptrtoint ptr %779 to i64
  %add740 = add i64 %780, 16
  %781 = inttoptr i64 %add740 to ptr
  %arrayidx741 = getelementptr inbounds i8, ptr %781, i64 54
  %782 = load i8, ptr %arrayidx741, align 1, !tbaa !11
  %conv742 = zext i8 %782 to i32
  %783 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub743 = sub nsw i32 %conv742, %783
  store i32 %sub743, ptr %vk13x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13x3) #4
  %784 = load ptr, ptr %w, align 8, !tbaa !9
  %785 = ptrtoint ptr %784 to i64
  %add744 = add i64 %785, 16
  %786 = inttoptr i64 %add744 to ptr
  %arrayidx745 = getelementptr inbounds i8, ptr %786, i64 55
  %787 = load i8, ptr %arrayidx745, align 1, !tbaa !11
  %conv746 = zext i8 %787 to i32
  %788 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub747 = sub nsw i32 %conv746, %788
  store i32 %sub747, ptr %vk13x3, align 4, !tbaa !14
  %789 = load i32, ptr %vi13x0, align 4, !tbaa !14
  %790 = load i32, ptr %vk13x0, align 4, !tbaa !14
  %mul748 = mul nsw i32 %789, %790
  %791 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add749 = add nsw i32 %791, %mul748
  store i32 %add749, ptr %vacc0, align 4, !tbaa !14
  %792 = load i32, ptr %vi13x1, align 4, !tbaa !14
  %793 = load i32, ptr %vk13x1, align 4, !tbaa !14
  %mul750 = mul nsw i32 %792, %793
  %794 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add751 = add nsw i32 %794, %mul750
  store i32 %add751, ptr %vacc1, align 4, !tbaa !14
  %795 = load i32, ptr %vi13x2, align 4, !tbaa !14
  %796 = load i32, ptr %vk13x2, align 4, !tbaa !14
  %mul752 = mul nsw i32 %795, %796
  %797 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add753 = add nsw i32 %797, %mul752
  store i32 %add753, ptr %vacc2, align 4, !tbaa !14
  %798 = load i32, ptr %vi13x3, align 4, !tbaa !14
  %799 = load i32, ptr %vk13x3, align 4, !tbaa !14
  %mul754 = mul nsw i32 %798, %799
  %800 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add755 = add nsw i32 %800, %mul754
  store i32 %add755, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14x0) #4
  %801 = load ptr, ptr %i14, align 8, !tbaa !9
  %arrayidx756 = getelementptr inbounds i8, ptr %801, i64 0
  %802 = load i8, ptr %arrayidx756, align 1, !tbaa !11
  %conv757 = zext i8 %802 to i32
  store i32 %conv757, ptr %vi14x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14x1) #4
  %803 = load ptr, ptr %i14, align 8, !tbaa !9
  %arrayidx758 = getelementptr inbounds i8, ptr %803, i64 1
  %804 = load i8, ptr %arrayidx758, align 1, !tbaa !11
  %conv759 = zext i8 %804 to i32
  store i32 %conv759, ptr %vi14x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14x2) #4
  %805 = load ptr, ptr %i14, align 8, !tbaa !9
  %arrayidx760 = getelementptr inbounds i8, ptr %805, i64 2
  %806 = load i8, ptr %arrayidx760, align 1, !tbaa !11
  %conv761 = zext i8 %806 to i32
  store i32 %conv761, ptr %vi14x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14x3) #4
  %807 = load ptr, ptr %i14, align 8, !tbaa !9
  %arrayidx762 = getelementptr inbounds i8, ptr %807, i64 3
  %808 = load i8, ptr %arrayidx762, align 1, !tbaa !11
  %conv763 = zext i8 %808 to i32
  store i32 %conv763, ptr %vi14x3, align 4, !tbaa !14
  %809 = load ptr, ptr %i14, align 8, !tbaa !9
  %add.ptr764 = getelementptr inbounds i8, ptr %809, i64 4
  store ptr %add.ptr764, ptr %i14, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14x0) #4
  %810 = load ptr, ptr %w, align 8, !tbaa !9
  %811 = ptrtoint ptr %810 to i64
  %add765 = add i64 %811, 16
  %812 = inttoptr i64 %add765 to ptr
  %arrayidx766 = getelementptr inbounds i8, ptr %812, i64 56
  %813 = load i8, ptr %arrayidx766, align 1, !tbaa !11
  %conv767 = zext i8 %813 to i32
  %814 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub768 = sub nsw i32 %conv767, %814
  store i32 %sub768, ptr %vk14x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14x1) #4
  %815 = load ptr, ptr %w, align 8, !tbaa !9
  %816 = ptrtoint ptr %815 to i64
  %add769 = add i64 %816, 16
  %817 = inttoptr i64 %add769 to ptr
  %arrayidx770 = getelementptr inbounds i8, ptr %817, i64 57
  %818 = load i8, ptr %arrayidx770, align 1, !tbaa !11
  %conv771 = zext i8 %818 to i32
  %819 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub772 = sub nsw i32 %conv771, %819
  store i32 %sub772, ptr %vk14x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14x2) #4
  %820 = load ptr, ptr %w, align 8, !tbaa !9
  %821 = ptrtoint ptr %820 to i64
  %add773 = add i64 %821, 16
  %822 = inttoptr i64 %add773 to ptr
  %arrayidx774 = getelementptr inbounds i8, ptr %822, i64 58
  %823 = load i8, ptr %arrayidx774, align 1, !tbaa !11
  %conv775 = zext i8 %823 to i32
  %824 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub776 = sub nsw i32 %conv775, %824
  store i32 %sub776, ptr %vk14x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14x3) #4
  %825 = load ptr, ptr %w, align 8, !tbaa !9
  %826 = ptrtoint ptr %825 to i64
  %add777 = add i64 %826, 16
  %827 = inttoptr i64 %add777 to ptr
  %arrayidx778 = getelementptr inbounds i8, ptr %827, i64 59
  %828 = load i8, ptr %arrayidx778, align 1, !tbaa !11
  %conv779 = zext i8 %828 to i32
  %829 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub780 = sub nsw i32 %conv779, %829
  store i32 %sub780, ptr %vk14x3, align 4, !tbaa !14
  %830 = load i32, ptr %vi14x0, align 4, !tbaa !14
  %831 = load i32, ptr %vk14x0, align 4, !tbaa !14
  %mul781 = mul nsw i32 %830, %831
  %832 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add782 = add nsw i32 %832, %mul781
  store i32 %add782, ptr %vacc0, align 4, !tbaa !14
  %833 = load i32, ptr %vi14x1, align 4, !tbaa !14
  %834 = load i32, ptr %vk14x1, align 4, !tbaa !14
  %mul783 = mul nsw i32 %833, %834
  %835 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add784 = add nsw i32 %835, %mul783
  store i32 %add784, ptr %vacc1, align 4, !tbaa !14
  %836 = load i32, ptr %vi14x2, align 4, !tbaa !14
  %837 = load i32, ptr %vk14x2, align 4, !tbaa !14
  %mul785 = mul nsw i32 %836, %837
  %838 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add786 = add nsw i32 %838, %mul785
  store i32 %add786, ptr %vacc2, align 4, !tbaa !14
  %839 = load i32, ptr %vi14x3, align 4, !tbaa !14
  %840 = load i32, ptr %vk14x3, align 4, !tbaa !14
  %mul787 = mul nsw i32 %839, %840
  %841 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add788 = add nsw i32 %841, %mul787
  store i32 %add788, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15x0) #4
  %842 = load ptr, ptr %i15, align 8, !tbaa !9
  %arrayidx789 = getelementptr inbounds i8, ptr %842, i64 0
  %843 = load i8, ptr %arrayidx789, align 1, !tbaa !11
  %conv790 = zext i8 %843 to i32
  store i32 %conv790, ptr %vi15x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15x1) #4
  %844 = load ptr, ptr %i15, align 8, !tbaa !9
  %arrayidx791 = getelementptr inbounds i8, ptr %844, i64 1
  %845 = load i8, ptr %arrayidx791, align 1, !tbaa !11
  %conv792 = zext i8 %845 to i32
  store i32 %conv792, ptr %vi15x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15x2) #4
  %846 = load ptr, ptr %i15, align 8, !tbaa !9
  %arrayidx793 = getelementptr inbounds i8, ptr %846, i64 2
  %847 = load i8, ptr %arrayidx793, align 1, !tbaa !11
  %conv794 = zext i8 %847 to i32
  store i32 %conv794, ptr %vi15x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15x3) #4
  %848 = load ptr, ptr %i15, align 8, !tbaa !9
  %arrayidx795 = getelementptr inbounds i8, ptr %848, i64 3
  %849 = load i8, ptr %arrayidx795, align 1, !tbaa !11
  %conv796 = zext i8 %849 to i32
  store i32 %conv796, ptr %vi15x3, align 4, !tbaa !14
  %850 = load ptr, ptr %i15, align 8, !tbaa !9
  %add.ptr797 = getelementptr inbounds i8, ptr %850, i64 4
  store ptr %add.ptr797, ptr %i15, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15x0) #4
  %851 = load ptr, ptr %w, align 8, !tbaa !9
  %852 = ptrtoint ptr %851 to i64
  %add798 = add i64 %852, 16
  %853 = inttoptr i64 %add798 to ptr
  %arrayidx799 = getelementptr inbounds i8, ptr %853, i64 60
  %854 = load i8, ptr %arrayidx799, align 1, !tbaa !11
  %conv800 = zext i8 %854 to i32
  %855 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub801 = sub nsw i32 %conv800, %855
  store i32 %sub801, ptr %vk15x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15x1) #4
  %856 = load ptr, ptr %w, align 8, !tbaa !9
  %857 = ptrtoint ptr %856 to i64
  %add802 = add i64 %857, 16
  %858 = inttoptr i64 %add802 to ptr
  %arrayidx803 = getelementptr inbounds i8, ptr %858, i64 61
  %859 = load i8, ptr %arrayidx803, align 1, !tbaa !11
  %conv804 = zext i8 %859 to i32
  %860 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub805 = sub nsw i32 %conv804, %860
  store i32 %sub805, ptr %vk15x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15x2) #4
  %861 = load ptr, ptr %w, align 8, !tbaa !9
  %862 = ptrtoint ptr %861 to i64
  %add806 = add i64 %862, 16
  %863 = inttoptr i64 %add806 to ptr
  %arrayidx807 = getelementptr inbounds i8, ptr %863, i64 62
  %864 = load i8, ptr %arrayidx807, align 1, !tbaa !11
  %conv808 = zext i8 %864 to i32
  %865 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub809 = sub nsw i32 %conv808, %865
  store i32 %sub809, ptr %vk15x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15x3) #4
  %866 = load ptr, ptr %w, align 8, !tbaa !9
  %867 = ptrtoint ptr %866 to i64
  %add810 = add i64 %867, 16
  %868 = inttoptr i64 %add810 to ptr
  %arrayidx811 = getelementptr inbounds i8, ptr %868, i64 63
  %869 = load i8, ptr %arrayidx811, align 1, !tbaa !11
  %conv812 = zext i8 %869 to i32
  %870 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub813 = sub nsw i32 %conv812, %870
  store i32 %sub813, ptr %vk15x3, align 4, !tbaa !14
  %871 = load i32, ptr %vi15x0, align 4, !tbaa !14
  %872 = load i32, ptr %vk15x0, align 4, !tbaa !14
  %mul814 = mul nsw i32 %871, %872
  %873 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add815 = add nsw i32 %873, %mul814
  store i32 %add815, ptr %vacc0, align 4, !tbaa !14
  %874 = load i32, ptr %vi15x1, align 4, !tbaa !14
  %875 = load i32, ptr %vk15x1, align 4, !tbaa !14
  %mul816 = mul nsw i32 %874, %875
  %876 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add817 = add nsw i32 %876, %mul816
  store i32 %add817, ptr %vacc1, align 4, !tbaa !14
  %877 = load i32, ptr %vi15x2, align 4, !tbaa !14
  %878 = load i32, ptr %vk15x2, align 4, !tbaa !14
  %mul818 = mul nsw i32 %877, %878
  %879 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add819 = add nsw i32 %879, %mul818
  store i32 %add819, ptr %vacc2, align 4, !tbaa !14
  %880 = load i32, ptr %vi15x3, align 4, !tbaa !14
  %881 = load i32, ptr %vk15x3, align 4, !tbaa !14
  %mul820 = mul nsw i32 %880, %881
  %882 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add821 = add nsw i32 %882, %mul820
  store i32 %add821, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16x0) #4
  %883 = load ptr, ptr %i16, align 8, !tbaa !9
  %arrayidx822 = getelementptr inbounds i8, ptr %883, i64 0
  %884 = load i8, ptr %arrayidx822, align 1, !tbaa !11
  %conv823 = zext i8 %884 to i32
  store i32 %conv823, ptr %vi16x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16x1) #4
  %885 = load ptr, ptr %i16, align 8, !tbaa !9
  %arrayidx824 = getelementptr inbounds i8, ptr %885, i64 1
  %886 = load i8, ptr %arrayidx824, align 1, !tbaa !11
  %conv825 = zext i8 %886 to i32
  store i32 %conv825, ptr %vi16x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16x2) #4
  %887 = load ptr, ptr %i16, align 8, !tbaa !9
  %arrayidx826 = getelementptr inbounds i8, ptr %887, i64 2
  %888 = load i8, ptr %arrayidx826, align 1, !tbaa !11
  %conv827 = zext i8 %888 to i32
  store i32 %conv827, ptr %vi16x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16x3) #4
  %889 = load ptr, ptr %i16, align 8, !tbaa !9
  %arrayidx828 = getelementptr inbounds i8, ptr %889, i64 3
  %890 = load i8, ptr %arrayidx828, align 1, !tbaa !11
  %conv829 = zext i8 %890 to i32
  store i32 %conv829, ptr %vi16x3, align 4, !tbaa !14
  %891 = load ptr, ptr %i16, align 8, !tbaa !9
  %add.ptr830 = getelementptr inbounds i8, ptr %891, i64 4
  store ptr %add.ptr830, ptr %i16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16x0) #4
  %892 = load ptr, ptr %w, align 8, !tbaa !9
  %893 = ptrtoint ptr %892 to i64
  %add831 = add i64 %893, 16
  %894 = inttoptr i64 %add831 to ptr
  %arrayidx832 = getelementptr inbounds i8, ptr %894, i64 64
  %895 = load i8, ptr %arrayidx832, align 1, !tbaa !11
  %conv833 = zext i8 %895 to i32
  %896 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub834 = sub nsw i32 %conv833, %896
  store i32 %sub834, ptr %vk16x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16x1) #4
  %897 = load ptr, ptr %w, align 8, !tbaa !9
  %898 = ptrtoint ptr %897 to i64
  %add835 = add i64 %898, 16
  %899 = inttoptr i64 %add835 to ptr
  %arrayidx836 = getelementptr inbounds i8, ptr %899, i64 65
  %900 = load i8, ptr %arrayidx836, align 1, !tbaa !11
  %conv837 = zext i8 %900 to i32
  %901 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub838 = sub nsw i32 %conv837, %901
  store i32 %sub838, ptr %vk16x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16x2) #4
  %902 = load ptr, ptr %w, align 8, !tbaa !9
  %903 = ptrtoint ptr %902 to i64
  %add839 = add i64 %903, 16
  %904 = inttoptr i64 %add839 to ptr
  %arrayidx840 = getelementptr inbounds i8, ptr %904, i64 66
  %905 = load i8, ptr %arrayidx840, align 1, !tbaa !11
  %conv841 = zext i8 %905 to i32
  %906 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub842 = sub nsw i32 %conv841, %906
  store i32 %sub842, ptr %vk16x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16x3) #4
  %907 = load ptr, ptr %w, align 8, !tbaa !9
  %908 = ptrtoint ptr %907 to i64
  %add843 = add i64 %908, 16
  %909 = inttoptr i64 %add843 to ptr
  %arrayidx844 = getelementptr inbounds i8, ptr %909, i64 67
  %910 = load i8, ptr %arrayidx844, align 1, !tbaa !11
  %conv845 = zext i8 %910 to i32
  %911 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub846 = sub nsw i32 %conv845, %911
  store i32 %sub846, ptr %vk16x3, align 4, !tbaa !14
  %912 = load i32, ptr %vi16x0, align 4, !tbaa !14
  %913 = load i32, ptr %vk16x0, align 4, !tbaa !14
  %mul847 = mul nsw i32 %912, %913
  %914 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add848 = add nsw i32 %914, %mul847
  store i32 %add848, ptr %vacc0, align 4, !tbaa !14
  %915 = load i32, ptr %vi16x1, align 4, !tbaa !14
  %916 = load i32, ptr %vk16x1, align 4, !tbaa !14
  %mul849 = mul nsw i32 %915, %916
  %917 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add850 = add nsw i32 %917, %mul849
  store i32 %add850, ptr %vacc1, align 4, !tbaa !14
  %918 = load i32, ptr %vi16x2, align 4, !tbaa !14
  %919 = load i32, ptr %vk16x2, align 4, !tbaa !14
  %mul851 = mul nsw i32 %918, %919
  %920 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add852 = add nsw i32 %920, %mul851
  store i32 %add852, ptr %vacc2, align 4, !tbaa !14
  %921 = load i32, ptr %vi16x3, align 4, !tbaa !14
  %922 = load i32, ptr %vk16x3, align 4, !tbaa !14
  %mul853 = mul nsw i32 %921, %922
  %923 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add854 = add nsw i32 %923, %mul853
  store i32 %add854, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17x0) #4
  %924 = load ptr, ptr %i17, align 8, !tbaa !9
  %arrayidx855 = getelementptr inbounds i8, ptr %924, i64 0
  %925 = load i8, ptr %arrayidx855, align 1, !tbaa !11
  %conv856 = zext i8 %925 to i32
  store i32 %conv856, ptr %vi17x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17x1) #4
  %926 = load ptr, ptr %i17, align 8, !tbaa !9
  %arrayidx857 = getelementptr inbounds i8, ptr %926, i64 1
  %927 = load i8, ptr %arrayidx857, align 1, !tbaa !11
  %conv858 = zext i8 %927 to i32
  store i32 %conv858, ptr %vi17x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17x2) #4
  %928 = load ptr, ptr %i17, align 8, !tbaa !9
  %arrayidx859 = getelementptr inbounds i8, ptr %928, i64 2
  %929 = load i8, ptr %arrayidx859, align 1, !tbaa !11
  %conv860 = zext i8 %929 to i32
  store i32 %conv860, ptr %vi17x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17x3) #4
  %930 = load ptr, ptr %i17, align 8, !tbaa !9
  %arrayidx861 = getelementptr inbounds i8, ptr %930, i64 3
  %931 = load i8, ptr %arrayidx861, align 1, !tbaa !11
  %conv862 = zext i8 %931 to i32
  store i32 %conv862, ptr %vi17x3, align 4, !tbaa !14
  %932 = load ptr, ptr %i17, align 8, !tbaa !9
  %add.ptr863 = getelementptr inbounds i8, ptr %932, i64 4
  store ptr %add.ptr863, ptr %i17, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17x0) #4
  %933 = load ptr, ptr %w, align 8, !tbaa !9
  %934 = ptrtoint ptr %933 to i64
  %add864 = add i64 %934, 16
  %935 = inttoptr i64 %add864 to ptr
  %arrayidx865 = getelementptr inbounds i8, ptr %935, i64 68
  %936 = load i8, ptr %arrayidx865, align 1, !tbaa !11
  %conv866 = zext i8 %936 to i32
  %937 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub867 = sub nsw i32 %conv866, %937
  store i32 %sub867, ptr %vk17x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17x1) #4
  %938 = load ptr, ptr %w, align 8, !tbaa !9
  %939 = ptrtoint ptr %938 to i64
  %add868 = add i64 %939, 16
  %940 = inttoptr i64 %add868 to ptr
  %arrayidx869 = getelementptr inbounds i8, ptr %940, i64 69
  %941 = load i8, ptr %arrayidx869, align 1, !tbaa !11
  %conv870 = zext i8 %941 to i32
  %942 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub871 = sub nsw i32 %conv870, %942
  store i32 %sub871, ptr %vk17x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17x2) #4
  %943 = load ptr, ptr %w, align 8, !tbaa !9
  %944 = ptrtoint ptr %943 to i64
  %add872 = add i64 %944, 16
  %945 = inttoptr i64 %add872 to ptr
  %arrayidx873 = getelementptr inbounds i8, ptr %945, i64 70
  %946 = load i8, ptr %arrayidx873, align 1, !tbaa !11
  %conv874 = zext i8 %946 to i32
  %947 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub875 = sub nsw i32 %conv874, %947
  store i32 %sub875, ptr %vk17x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17x3) #4
  %948 = load ptr, ptr %w, align 8, !tbaa !9
  %949 = ptrtoint ptr %948 to i64
  %add876 = add i64 %949, 16
  %950 = inttoptr i64 %add876 to ptr
  %arrayidx877 = getelementptr inbounds i8, ptr %950, i64 71
  %951 = load i8, ptr %arrayidx877, align 1, !tbaa !11
  %conv878 = zext i8 %951 to i32
  %952 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub879 = sub nsw i32 %conv878, %952
  store i32 %sub879, ptr %vk17x3, align 4, !tbaa !14
  %953 = load i32, ptr %vi17x0, align 4, !tbaa !14
  %954 = load i32, ptr %vk17x0, align 4, !tbaa !14
  %mul880 = mul nsw i32 %953, %954
  %955 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add881 = add nsw i32 %955, %mul880
  store i32 %add881, ptr %vacc0, align 4, !tbaa !14
  %956 = load i32, ptr %vi17x1, align 4, !tbaa !14
  %957 = load i32, ptr %vk17x1, align 4, !tbaa !14
  %mul882 = mul nsw i32 %956, %957
  %958 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add883 = add nsw i32 %958, %mul882
  store i32 %add883, ptr %vacc1, align 4, !tbaa !14
  %959 = load i32, ptr %vi17x2, align 4, !tbaa !14
  %960 = load i32, ptr %vk17x2, align 4, !tbaa !14
  %mul884 = mul nsw i32 %959, %960
  %961 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add885 = add nsw i32 %961, %mul884
  store i32 %add885, ptr %vacc2, align 4, !tbaa !14
  %962 = load i32, ptr %vi17x3, align 4, !tbaa !14
  %963 = load i32, ptr %vk17x3, align 4, !tbaa !14
  %mul886 = mul nsw i32 %962, %963
  %964 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add887 = add nsw i32 %964, %mul886
  store i32 %add887, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18x0) #4
  %965 = load ptr, ptr %i18, align 8, !tbaa !9
  %arrayidx888 = getelementptr inbounds i8, ptr %965, i64 0
  %966 = load i8, ptr %arrayidx888, align 1, !tbaa !11
  %conv889 = zext i8 %966 to i32
  store i32 %conv889, ptr %vi18x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18x1) #4
  %967 = load ptr, ptr %i18, align 8, !tbaa !9
  %arrayidx890 = getelementptr inbounds i8, ptr %967, i64 1
  %968 = load i8, ptr %arrayidx890, align 1, !tbaa !11
  %conv891 = zext i8 %968 to i32
  store i32 %conv891, ptr %vi18x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18x2) #4
  %969 = load ptr, ptr %i18, align 8, !tbaa !9
  %arrayidx892 = getelementptr inbounds i8, ptr %969, i64 2
  %970 = load i8, ptr %arrayidx892, align 1, !tbaa !11
  %conv893 = zext i8 %970 to i32
  store i32 %conv893, ptr %vi18x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18x3) #4
  %971 = load ptr, ptr %i18, align 8, !tbaa !9
  %arrayidx894 = getelementptr inbounds i8, ptr %971, i64 3
  %972 = load i8, ptr %arrayidx894, align 1, !tbaa !11
  %conv895 = zext i8 %972 to i32
  store i32 %conv895, ptr %vi18x3, align 4, !tbaa !14
  %973 = load ptr, ptr %i18, align 8, !tbaa !9
  %add.ptr896 = getelementptr inbounds i8, ptr %973, i64 4
  store ptr %add.ptr896, ptr %i18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18x0) #4
  %974 = load ptr, ptr %w, align 8, !tbaa !9
  %975 = ptrtoint ptr %974 to i64
  %add897 = add i64 %975, 16
  %976 = inttoptr i64 %add897 to ptr
  %arrayidx898 = getelementptr inbounds i8, ptr %976, i64 72
  %977 = load i8, ptr %arrayidx898, align 1, !tbaa !11
  %conv899 = zext i8 %977 to i32
  %978 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub900 = sub nsw i32 %conv899, %978
  store i32 %sub900, ptr %vk18x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18x1) #4
  %979 = load ptr, ptr %w, align 8, !tbaa !9
  %980 = ptrtoint ptr %979 to i64
  %add901 = add i64 %980, 16
  %981 = inttoptr i64 %add901 to ptr
  %arrayidx902 = getelementptr inbounds i8, ptr %981, i64 73
  %982 = load i8, ptr %arrayidx902, align 1, !tbaa !11
  %conv903 = zext i8 %982 to i32
  %983 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub904 = sub nsw i32 %conv903, %983
  store i32 %sub904, ptr %vk18x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18x2) #4
  %984 = load ptr, ptr %w, align 8, !tbaa !9
  %985 = ptrtoint ptr %984 to i64
  %add905 = add i64 %985, 16
  %986 = inttoptr i64 %add905 to ptr
  %arrayidx906 = getelementptr inbounds i8, ptr %986, i64 74
  %987 = load i8, ptr %arrayidx906, align 1, !tbaa !11
  %conv907 = zext i8 %987 to i32
  %988 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub908 = sub nsw i32 %conv907, %988
  store i32 %sub908, ptr %vk18x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18x3) #4
  %989 = load ptr, ptr %w, align 8, !tbaa !9
  %990 = ptrtoint ptr %989 to i64
  %add909 = add i64 %990, 16
  %991 = inttoptr i64 %add909 to ptr
  %arrayidx910 = getelementptr inbounds i8, ptr %991, i64 75
  %992 = load i8, ptr %arrayidx910, align 1, !tbaa !11
  %conv911 = zext i8 %992 to i32
  %993 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub912 = sub nsw i32 %conv911, %993
  store i32 %sub912, ptr %vk18x3, align 4, !tbaa !14
  %994 = load i32, ptr %vi18x0, align 4, !tbaa !14
  %995 = load i32, ptr %vk18x0, align 4, !tbaa !14
  %mul913 = mul nsw i32 %994, %995
  %996 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add914 = add nsw i32 %996, %mul913
  store i32 %add914, ptr %vacc0, align 4, !tbaa !14
  %997 = load i32, ptr %vi18x1, align 4, !tbaa !14
  %998 = load i32, ptr %vk18x1, align 4, !tbaa !14
  %mul915 = mul nsw i32 %997, %998
  %999 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add916 = add nsw i32 %999, %mul915
  store i32 %add916, ptr %vacc1, align 4, !tbaa !14
  %1000 = load i32, ptr %vi18x2, align 4, !tbaa !14
  %1001 = load i32, ptr %vk18x2, align 4, !tbaa !14
  %mul917 = mul nsw i32 %1000, %1001
  %1002 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add918 = add nsw i32 %1002, %mul917
  store i32 %add918, ptr %vacc2, align 4, !tbaa !14
  %1003 = load i32, ptr %vi18x3, align 4, !tbaa !14
  %1004 = load i32, ptr %vk18x3, align 4, !tbaa !14
  %mul919 = mul nsw i32 %1003, %1004
  %1005 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add920 = add nsw i32 %1005, %mul919
  store i32 %add920, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19x0) #4
  %1006 = load ptr, ptr %i19, align 8, !tbaa !9
  %arrayidx921 = getelementptr inbounds i8, ptr %1006, i64 0
  %1007 = load i8, ptr %arrayidx921, align 1, !tbaa !11
  %conv922 = zext i8 %1007 to i32
  store i32 %conv922, ptr %vi19x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19x1) #4
  %1008 = load ptr, ptr %i19, align 8, !tbaa !9
  %arrayidx923 = getelementptr inbounds i8, ptr %1008, i64 1
  %1009 = load i8, ptr %arrayidx923, align 1, !tbaa !11
  %conv924 = zext i8 %1009 to i32
  store i32 %conv924, ptr %vi19x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19x2) #4
  %1010 = load ptr, ptr %i19, align 8, !tbaa !9
  %arrayidx925 = getelementptr inbounds i8, ptr %1010, i64 2
  %1011 = load i8, ptr %arrayidx925, align 1, !tbaa !11
  %conv926 = zext i8 %1011 to i32
  store i32 %conv926, ptr %vi19x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19x3) #4
  %1012 = load ptr, ptr %i19, align 8, !tbaa !9
  %arrayidx927 = getelementptr inbounds i8, ptr %1012, i64 3
  %1013 = load i8, ptr %arrayidx927, align 1, !tbaa !11
  %conv928 = zext i8 %1013 to i32
  store i32 %conv928, ptr %vi19x3, align 4, !tbaa !14
  %1014 = load ptr, ptr %i19, align 8, !tbaa !9
  %add.ptr929 = getelementptr inbounds i8, ptr %1014, i64 4
  store ptr %add.ptr929, ptr %i19, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19x0) #4
  %1015 = load ptr, ptr %w, align 8, !tbaa !9
  %1016 = ptrtoint ptr %1015 to i64
  %add930 = add i64 %1016, 16
  %1017 = inttoptr i64 %add930 to ptr
  %arrayidx931 = getelementptr inbounds i8, ptr %1017, i64 76
  %1018 = load i8, ptr %arrayidx931, align 1, !tbaa !11
  %conv932 = zext i8 %1018 to i32
  %1019 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub933 = sub nsw i32 %conv932, %1019
  store i32 %sub933, ptr %vk19x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19x1) #4
  %1020 = load ptr, ptr %w, align 8, !tbaa !9
  %1021 = ptrtoint ptr %1020 to i64
  %add934 = add i64 %1021, 16
  %1022 = inttoptr i64 %add934 to ptr
  %arrayidx935 = getelementptr inbounds i8, ptr %1022, i64 77
  %1023 = load i8, ptr %arrayidx935, align 1, !tbaa !11
  %conv936 = zext i8 %1023 to i32
  %1024 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub937 = sub nsw i32 %conv936, %1024
  store i32 %sub937, ptr %vk19x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19x2) #4
  %1025 = load ptr, ptr %w, align 8, !tbaa !9
  %1026 = ptrtoint ptr %1025 to i64
  %add938 = add i64 %1026, 16
  %1027 = inttoptr i64 %add938 to ptr
  %arrayidx939 = getelementptr inbounds i8, ptr %1027, i64 78
  %1028 = load i8, ptr %arrayidx939, align 1, !tbaa !11
  %conv940 = zext i8 %1028 to i32
  %1029 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub941 = sub nsw i32 %conv940, %1029
  store i32 %sub941, ptr %vk19x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19x3) #4
  %1030 = load ptr, ptr %w, align 8, !tbaa !9
  %1031 = ptrtoint ptr %1030 to i64
  %add942 = add i64 %1031, 16
  %1032 = inttoptr i64 %add942 to ptr
  %arrayidx943 = getelementptr inbounds i8, ptr %1032, i64 79
  %1033 = load i8, ptr %arrayidx943, align 1, !tbaa !11
  %conv944 = zext i8 %1033 to i32
  %1034 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub945 = sub nsw i32 %conv944, %1034
  store i32 %sub945, ptr %vk19x3, align 4, !tbaa !14
  %1035 = load i32, ptr %vi19x0, align 4, !tbaa !14
  %1036 = load i32, ptr %vk19x0, align 4, !tbaa !14
  %mul946 = mul nsw i32 %1035, %1036
  %1037 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add947 = add nsw i32 %1037, %mul946
  store i32 %add947, ptr %vacc0, align 4, !tbaa !14
  %1038 = load i32, ptr %vi19x1, align 4, !tbaa !14
  %1039 = load i32, ptr %vk19x1, align 4, !tbaa !14
  %mul948 = mul nsw i32 %1038, %1039
  %1040 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add949 = add nsw i32 %1040, %mul948
  store i32 %add949, ptr %vacc1, align 4, !tbaa !14
  %1041 = load i32, ptr %vi19x2, align 4, !tbaa !14
  %1042 = load i32, ptr %vk19x2, align 4, !tbaa !14
  %mul950 = mul nsw i32 %1041, %1042
  %1043 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add951 = add nsw i32 %1043, %mul950
  store i32 %add951, ptr %vacc2, align 4, !tbaa !14
  %1044 = load i32, ptr %vi19x3, align 4, !tbaa !14
  %1045 = load i32, ptr %vk19x3, align 4, !tbaa !14
  %mul952 = mul nsw i32 %1044, %1045
  %1046 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add953 = add nsw i32 %1046, %mul952
  store i32 %add953, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20x0) #4
  %1047 = load ptr, ptr %i20, align 8, !tbaa !9
  %arrayidx954 = getelementptr inbounds i8, ptr %1047, i64 0
  %1048 = load i8, ptr %arrayidx954, align 1, !tbaa !11
  %conv955 = zext i8 %1048 to i32
  store i32 %conv955, ptr %vi20x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20x1) #4
  %1049 = load ptr, ptr %i20, align 8, !tbaa !9
  %arrayidx956 = getelementptr inbounds i8, ptr %1049, i64 1
  %1050 = load i8, ptr %arrayidx956, align 1, !tbaa !11
  %conv957 = zext i8 %1050 to i32
  store i32 %conv957, ptr %vi20x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20x2) #4
  %1051 = load ptr, ptr %i20, align 8, !tbaa !9
  %arrayidx958 = getelementptr inbounds i8, ptr %1051, i64 2
  %1052 = load i8, ptr %arrayidx958, align 1, !tbaa !11
  %conv959 = zext i8 %1052 to i32
  store i32 %conv959, ptr %vi20x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20x3) #4
  %1053 = load ptr, ptr %i20, align 8, !tbaa !9
  %arrayidx960 = getelementptr inbounds i8, ptr %1053, i64 3
  %1054 = load i8, ptr %arrayidx960, align 1, !tbaa !11
  %conv961 = zext i8 %1054 to i32
  store i32 %conv961, ptr %vi20x3, align 4, !tbaa !14
  %1055 = load ptr, ptr %i20, align 8, !tbaa !9
  %add.ptr962 = getelementptr inbounds i8, ptr %1055, i64 4
  store ptr %add.ptr962, ptr %i20, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20x0) #4
  %1056 = load ptr, ptr %w, align 8, !tbaa !9
  %1057 = ptrtoint ptr %1056 to i64
  %add963 = add i64 %1057, 16
  %1058 = inttoptr i64 %add963 to ptr
  %arrayidx964 = getelementptr inbounds i8, ptr %1058, i64 80
  %1059 = load i8, ptr %arrayidx964, align 1, !tbaa !11
  %conv965 = zext i8 %1059 to i32
  %1060 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub966 = sub nsw i32 %conv965, %1060
  store i32 %sub966, ptr %vk20x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20x1) #4
  %1061 = load ptr, ptr %w, align 8, !tbaa !9
  %1062 = ptrtoint ptr %1061 to i64
  %add967 = add i64 %1062, 16
  %1063 = inttoptr i64 %add967 to ptr
  %arrayidx968 = getelementptr inbounds i8, ptr %1063, i64 81
  %1064 = load i8, ptr %arrayidx968, align 1, !tbaa !11
  %conv969 = zext i8 %1064 to i32
  %1065 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub970 = sub nsw i32 %conv969, %1065
  store i32 %sub970, ptr %vk20x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20x2) #4
  %1066 = load ptr, ptr %w, align 8, !tbaa !9
  %1067 = ptrtoint ptr %1066 to i64
  %add971 = add i64 %1067, 16
  %1068 = inttoptr i64 %add971 to ptr
  %arrayidx972 = getelementptr inbounds i8, ptr %1068, i64 82
  %1069 = load i8, ptr %arrayidx972, align 1, !tbaa !11
  %conv973 = zext i8 %1069 to i32
  %1070 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub974 = sub nsw i32 %conv973, %1070
  store i32 %sub974, ptr %vk20x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20x3) #4
  %1071 = load ptr, ptr %w, align 8, !tbaa !9
  %1072 = ptrtoint ptr %1071 to i64
  %add975 = add i64 %1072, 16
  %1073 = inttoptr i64 %add975 to ptr
  %arrayidx976 = getelementptr inbounds i8, ptr %1073, i64 83
  %1074 = load i8, ptr %arrayidx976, align 1, !tbaa !11
  %conv977 = zext i8 %1074 to i32
  %1075 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub978 = sub nsw i32 %conv977, %1075
  store i32 %sub978, ptr %vk20x3, align 4, !tbaa !14
  %1076 = load i32, ptr %vi20x0, align 4, !tbaa !14
  %1077 = load i32, ptr %vk20x0, align 4, !tbaa !14
  %mul979 = mul nsw i32 %1076, %1077
  %1078 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add980 = add nsw i32 %1078, %mul979
  store i32 %add980, ptr %vacc0, align 4, !tbaa !14
  %1079 = load i32, ptr %vi20x1, align 4, !tbaa !14
  %1080 = load i32, ptr %vk20x1, align 4, !tbaa !14
  %mul981 = mul nsw i32 %1079, %1080
  %1081 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add982 = add nsw i32 %1081, %mul981
  store i32 %add982, ptr %vacc1, align 4, !tbaa !14
  %1082 = load i32, ptr %vi20x2, align 4, !tbaa !14
  %1083 = load i32, ptr %vk20x2, align 4, !tbaa !14
  %mul983 = mul nsw i32 %1082, %1083
  %1084 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add984 = add nsw i32 %1084, %mul983
  store i32 %add984, ptr %vacc2, align 4, !tbaa !14
  %1085 = load i32, ptr %vi20x3, align 4, !tbaa !14
  %1086 = load i32, ptr %vk20x3, align 4, !tbaa !14
  %mul985 = mul nsw i32 %1085, %1086
  %1087 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add986 = add nsw i32 %1087, %mul985
  store i32 %add986, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21x0) #4
  %1088 = load ptr, ptr %i21, align 8, !tbaa !9
  %arrayidx987 = getelementptr inbounds i8, ptr %1088, i64 0
  %1089 = load i8, ptr %arrayidx987, align 1, !tbaa !11
  %conv988 = zext i8 %1089 to i32
  store i32 %conv988, ptr %vi21x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21x1) #4
  %1090 = load ptr, ptr %i21, align 8, !tbaa !9
  %arrayidx989 = getelementptr inbounds i8, ptr %1090, i64 1
  %1091 = load i8, ptr %arrayidx989, align 1, !tbaa !11
  %conv990 = zext i8 %1091 to i32
  store i32 %conv990, ptr %vi21x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21x2) #4
  %1092 = load ptr, ptr %i21, align 8, !tbaa !9
  %arrayidx991 = getelementptr inbounds i8, ptr %1092, i64 2
  %1093 = load i8, ptr %arrayidx991, align 1, !tbaa !11
  %conv992 = zext i8 %1093 to i32
  store i32 %conv992, ptr %vi21x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21x3) #4
  %1094 = load ptr, ptr %i21, align 8, !tbaa !9
  %arrayidx993 = getelementptr inbounds i8, ptr %1094, i64 3
  %1095 = load i8, ptr %arrayidx993, align 1, !tbaa !11
  %conv994 = zext i8 %1095 to i32
  store i32 %conv994, ptr %vi21x3, align 4, !tbaa !14
  %1096 = load ptr, ptr %i21, align 8, !tbaa !9
  %add.ptr995 = getelementptr inbounds i8, ptr %1096, i64 4
  store ptr %add.ptr995, ptr %i21, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21x0) #4
  %1097 = load ptr, ptr %w, align 8, !tbaa !9
  %1098 = ptrtoint ptr %1097 to i64
  %add996 = add i64 %1098, 16
  %1099 = inttoptr i64 %add996 to ptr
  %arrayidx997 = getelementptr inbounds i8, ptr %1099, i64 84
  %1100 = load i8, ptr %arrayidx997, align 1, !tbaa !11
  %conv998 = zext i8 %1100 to i32
  %1101 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub999 = sub nsw i32 %conv998, %1101
  store i32 %sub999, ptr %vk21x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21x1) #4
  %1102 = load ptr, ptr %w, align 8, !tbaa !9
  %1103 = ptrtoint ptr %1102 to i64
  %add1000 = add i64 %1103, 16
  %1104 = inttoptr i64 %add1000 to ptr
  %arrayidx1001 = getelementptr inbounds i8, ptr %1104, i64 85
  %1105 = load i8, ptr %arrayidx1001, align 1, !tbaa !11
  %conv1002 = zext i8 %1105 to i32
  %1106 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1003 = sub nsw i32 %conv1002, %1106
  store i32 %sub1003, ptr %vk21x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21x2) #4
  %1107 = load ptr, ptr %w, align 8, !tbaa !9
  %1108 = ptrtoint ptr %1107 to i64
  %add1004 = add i64 %1108, 16
  %1109 = inttoptr i64 %add1004 to ptr
  %arrayidx1005 = getelementptr inbounds i8, ptr %1109, i64 86
  %1110 = load i8, ptr %arrayidx1005, align 1, !tbaa !11
  %conv1006 = zext i8 %1110 to i32
  %1111 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1007 = sub nsw i32 %conv1006, %1111
  store i32 %sub1007, ptr %vk21x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21x3) #4
  %1112 = load ptr, ptr %w, align 8, !tbaa !9
  %1113 = ptrtoint ptr %1112 to i64
  %add1008 = add i64 %1113, 16
  %1114 = inttoptr i64 %add1008 to ptr
  %arrayidx1009 = getelementptr inbounds i8, ptr %1114, i64 87
  %1115 = load i8, ptr %arrayidx1009, align 1, !tbaa !11
  %conv1010 = zext i8 %1115 to i32
  %1116 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1011 = sub nsw i32 %conv1010, %1116
  store i32 %sub1011, ptr %vk21x3, align 4, !tbaa !14
  %1117 = load i32, ptr %vi21x0, align 4, !tbaa !14
  %1118 = load i32, ptr %vk21x0, align 4, !tbaa !14
  %mul1012 = mul nsw i32 %1117, %1118
  %1119 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add1013 = add nsw i32 %1119, %mul1012
  store i32 %add1013, ptr %vacc0, align 4, !tbaa !14
  %1120 = load i32, ptr %vi21x1, align 4, !tbaa !14
  %1121 = load i32, ptr %vk21x1, align 4, !tbaa !14
  %mul1014 = mul nsw i32 %1120, %1121
  %1122 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add1015 = add nsw i32 %1122, %mul1014
  store i32 %add1015, ptr %vacc1, align 4, !tbaa !14
  %1123 = load i32, ptr %vi21x2, align 4, !tbaa !14
  %1124 = load i32, ptr %vk21x2, align 4, !tbaa !14
  %mul1016 = mul nsw i32 %1123, %1124
  %1125 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add1017 = add nsw i32 %1125, %mul1016
  store i32 %add1017, ptr %vacc2, align 4, !tbaa !14
  %1126 = load i32, ptr %vi21x3, align 4, !tbaa !14
  %1127 = load i32, ptr %vk21x3, align 4, !tbaa !14
  %mul1018 = mul nsw i32 %1126, %1127
  %1128 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add1019 = add nsw i32 %1128, %mul1018
  store i32 %add1019, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22x0) #4
  %1129 = load ptr, ptr %i22, align 8, !tbaa !9
  %arrayidx1020 = getelementptr inbounds i8, ptr %1129, i64 0
  %1130 = load i8, ptr %arrayidx1020, align 1, !tbaa !11
  %conv1021 = zext i8 %1130 to i32
  store i32 %conv1021, ptr %vi22x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22x1) #4
  %1131 = load ptr, ptr %i22, align 8, !tbaa !9
  %arrayidx1022 = getelementptr inbounds i8, ptr %1131, i64 1
  %1132 = load i8, ptr %arrayidx1022, align 1, !tbaa !11
  %conv1023 = zext i8 %1132 to i32
  store i32 %conv1023, ptr %vi22x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22x2) #4
  %1133 = load ptr, ptr %i22, align 8, !tbaa !9
  %arrayidx1024 = getelementptr inbounds i8, ptr %1133, i64 2
  %1134 = load i8, ptr %arrayidx1024, align 1, !tbaa !11
  %conv1025 = zext i8 %1134 to i32
  store i32 %conv1025, ptr %vi22x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22x3) #4
  %1135 = load ptr, ptr %i22, align 8, !tbaa !9
  %arrayidx1026 = getelementptr inbounds i8, ptr %1135, i64 3
  %1136 = load i8, ptr %arrayidx1026, align 1, !tbaa !11
  %conv1027 = zext i8 %1136 to i32
  store i32 %conv1027, ptr %vi22x3, align 4, !tbaa !14
  %1137 = load ptr, ptr %i22, align 8, !tbaa !9
  %add.ptr1028 = getelementptr inbounds i8, ptr %1137, i64 4
  store ptr %add.ptr1028, ptr %i22, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22x0) #4
  %1138 = load ptr, ptr %w, align 8, !tbaa !9
  %1139 = ptrtoint ptr %1138 to i64
  %add1029 = add i64 %1139, 16
  %1140 = inttoptr i64 %add1029 to ptr
  %arrayidx1030 = getelementptr inbounds i8, ptr %1140, i64 88
  %1141 = load i8, ptr %arrayidx1030, align 1, !tbaa !11
  %conv1031 = zext i8 %1141 to i32
  %1142 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1032 = sub nsw i32 %conv1031, %1142
  store i32 %sub1032, ptr %vk22x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22x1) #4
  %1143 = load ptr, ptr %w, align 8, !tbaa !9
  %1144 = ptrtoint ptr %1143 to i64
  %add1033 = add i64 %1144, 16
  %1145 = inttoptr i64 %add1033 to ptr
  %arrayidx1034 = getelementptr inbounds i8, ptr %1145, i64 89
  %1146 = load i8, ptr %arrayidx1034, align 1, !tbaa !11
  %conv1035 = zext i8 %1146 to i32
  %1147 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1036 = sub nsw i32 %conv1035, %1147
  store i32 %sub1036, ptr %vk22x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22x2) #4
  %1148 = load ptr, ptr %w, align 8, !tbaa !9
  %1149 = ptrtoint ptr %1148 to i64
  %add1037 = add i64 %1149, 16
  %1150 = inttoptr i64 %add1037 to ptr
  %arrayidx1038 = getelementptr inbounds i8, ptr %1150, i64 90
  %1151 = load i8, ptr %arrayidx1038, align 1, !tbaa !11
  %conv1039 = zext i8 %1151 to i32
  %1152 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1040 = sub nsw i32 %conv1039, %1152
  store i32 %sub1040, ptr %vk22x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22x3) #4
  %1153 = load ptr, ptr %w, align 8, !tbaa !9
  %1154 = ptrtoint ptr %1153 to i64
  %add1041 = add i64 %1154, 16
  %1155 = inttoptr i64 %add1041 to ptr
  %arrayidx1042 = getelementptr inbounds i8, ptr %1155, i64 91
  %1156 = load i8, ptr %arrayidx1042, align 1, !tbaa !11
  %conv1043 = zext i8 %1156 to i32
  %1157 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1044 = sub nsw i32 %conv1043, %1157
  store i32 %sub1044, ptr %vk22x3, align 4, !tbaa !14
  %1158 = load i32, ptr %vi22x0, align 4, !tbaa !14
  %1159 = load i32, ptr %vk22x0, align 4, !tbaa !14
  %mul1045 = mul nsw i32 %1158, %1159
  %1160 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add1046 = add nsw i32 %1160, %mul1045
  store i32 %add1046, ptr %vacc0, align 4, !tbaa !14
  %1161 = load i32, ptr %vi22x1, align 4, !tbaa !14
  %1162 = load i32, ptr %vk22x1, align 4, !tbaa !14
  %mul1047 = mul nsw i32 %1161, %1162
  %1163 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add1048 = add nsw i32 %1163, %mul1047
  store i32 %add1048, ptr %vacc1, align 4, !tbaa !14
  %1164 = load i32, ptr %vi22x2, align 4, !tbaa !14
  %1165 = load i32, ptr %vk22x2, align 4, !tbaa !14
  %mul1049 = mul nsw i32 %1164, %1165
  %1166 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add1050 = add nsw i32 %1166, %mul1049
  store i32 %add1050, ptr %vacc2, align 4, !tbaa !14
  %1167 = load i32, ptr %vi22x3, align 4, !tbaa !14
  %1168 = load i32, ptr %vk22x3, align 4, !tbaa !14
  %mul1051 = mul nsw i32 %1167, %1168
  %1169 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add1052 = add nsw i32 %1169, %mul1051
  store i32 %add1052, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23x0) #4
  %1170 = load ptr, ptr %i23, align 8, !tbaa !9
  %arrayidx1053 = getelementptr inbounds i8, ptr %1170, i64 0
  %1171 = load i8, ptr %arrayidx1053, align 1, !tbaa !11
  %conv1054 = zext i8 %1171 to i32
  store i32 %conv1054, ptr %vi23x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23x1) #4
  %1172 = load ptr, ptr %i23, align 8, !tbaa !9
  %arrayidx1055 = getelementptr inbounds i8, ptr %1172, i64 1
  %1173 = load i8, ptr %arrayidx1055, align 1, !tbaa !11
  %conv1056 = zext i8 %1173 to i32
  store i32 %conv1056, ptr %vi23x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23x2) #4
  %1174 = load ptr, ptr %i23, align 8, !tbaa !9
  %arrayidx1057 = getelementptr inbounds i8, ptr %1174, i64 2
  %1175 = load i8, ptr %arrayidx1057, align 1, !tbaa !11
  %conv1058 = zext i8 %1175 to i32
  store i32 %conv1058, ptr %vi23x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23x3) #4
  %1176 = load ptr, ptr %i23, align 8, !tbaa !9
  %arrayidx1059 = getelementptr inbounds i8, ptr %1176, i64 3
  %1177 = load i8, ptr %arrayidx1059, align 1, !tbaa !11
  %conv1060 = zext i8 %1177 to i32
  store i32 %conv1060, ptr %vi23x3, align 4, !tbaa !14
  %1178 = load ptr, ptr %i23, align 8, !tbaa !9
  %add.ptr1061 = getelementptr inbounds i8, ptr %1178, i64 4
  store ptr %add.ptr1061, ptr %i23, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23x0) #4
  %1179 = load ptr, ptr %w, align 8, !tbaa !9
  %1180 = ptrtoint ptr %1179 to i64
  %add1062 = add i64 %1180, 16
  %1181 = inttoptr i64 %add1062 to ptr
  %arrayidx1063 = getelementptr inbounds i8, ptr %1181, i64 92
  %1182 = load i8, ptr %arrayidx1063, align 1, !tbaa !11
  %conv1064 = zext i8 %1182 to i32
  %1183 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1065 = sub nsw i32 %conv1064, %1183
  store i32 %sub1065, ptr %vk23x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23x1) #4
  %1184 = load ptr, ptr %w, align 8, !tbaa !9
  %1185 = ptrtoint ptr %1184 to i64
  %add1066 = add i64 %1185, 16
  %1186 = inttoptr i64 %add1066 to ptr
  %arrayidx1067 = getelementptr inbounds i8, ptr %1186, i64 93
  %1187 = load i8, ptr %arrayidx1067, align 1, !tbaa !11
  %conv1068 = zext i8 %1187 to i32
  %1188 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1069 = sub nsw i32 %conv1068, %1188
  store i32 %sub1069, ptr %vk23x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23x2) #4
  %1189 = load ptr, ptr %w, align 8, !tbaa !9
  %1190 = ptrtoint ptr %1189 to i64
  %add1070 = add i64 %1190, 16
  %1191 = inttoptr i64 %add1070 to ptr
  %arrayidx1071 = getelementptr inbounds i8, ptr %1191, i64 94
  %1192 = load i8, ptr %arrayidx1071, align 1, !tbaa !11
  %conv1072 = zext i8 %1192 to i32
  %1193 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1073 = sub nsw i32 %conv1072, %1193
  store i32 %sub1073, ptr %vk23x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23x3) #4
  %1194 = load ptr, ptr %w, align 8, !tbaa !9
  %1195 = ptrtoint ptr %1194 to i64
  %add1074 = add i64 %1195, 16
  %1196 = inttoptr i64 %add1074 to ptr
  %arrayidx1075 = getelementptr inbounds i8, ptr %1196, i64 95
  %1197 = load i8, ptr %arrayidx1075, align 1, !tbaa !11
  %conv1076 = zext i8 %1197 to i32
  %1198 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1077 = sub nsw i32 %conv1076, %1198
  store i32 %sub1077, ptr %vk23x3, align 4, !tbaa !14
  %1199 = load i32, ptr %vi23x0, align 4, !tbaa !14
  %1200 = load i32, ptr %vk23x0, align 4, !tbaa !14
  %mul1078 = mul nsw i32 %1199, %1200
  %1201 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add1079 = add nsw i32 %1201, %mul1078
  store i32 %add1079, ptr %vacc0, align 4, !tbaa !14
  %1202 = load i32, ptr %vi23x1, align 4, !tbaa !14
  %1203 = load i32, ptr %vk23x1, align 4, !tbaa !14
  %mul1080 = mul nsw i32 %1202, %1203
  %1204 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add1081 = add nsw i32 %1204, %mul1080
  store i32 %add1081, ptr %vacc1, align 4, !tbaa !14
  %1205 = load i32, ptr %vi23x2, align 4, !tbaa !14
  %1206 = load i32, ptr %vk23x2, align 4, !tbaa !14
  %mul1082 = mul nsw i32 %1205, %1206
  %1207 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add1083 = add nsw i32 %1207, %mul1082
  store i32 %add1083, ptr %vacc2, align 4, !tbaa !14
  %1208 = load i32, ptr %vi23x3, align 4, !tbaa !14
  %1209 = load i32, ptr %vk23x3, align 4, !tbaa !14
  %mul1084 = mul nsw i32 %1208, %1209
  %1210 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add1085 = add nsw i32 %1210, %mul1084
  store i32 %add1085, ptr %vacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24x0) #4
  %1211 = load ptr, ptr %i24, align 8, !tbaa !9
  %arrayidx1086 = getelementptr inbounds i8, ptr %1211, i64 0
  %1212 = load i8, ptr %arrayidx1086, align 1, !tbaa !11
  %conv1087 = zext i8 %1212 to i32
  store i32 %conv1087, ptr %vi24x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24x1) #4
  %1213 = load ptr, ptr %i24, align 8, !tbaa !9
  %arrayidx1088 = getelementptr inbounds i8, ptr %1213, i64 1
  %1214 = load i8, ptr %arrayidx1088, align 1, !tbaa !11
  %conv1089 = zext i8 %1214 to i32
  store i32 %conv1089, ptr %vi24x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24x2) #4
  %1215 = load ptr, ptr %i24, align 8, !tbaa !9
  %arrayidx1090 = getelementptr inbounds i8, ptr %1215, i64 2
  %1216 = load i8, ptr %arrayidx1090, align 1, !tbaa !11
  %conv1091 = zext i8 %1216 to i32
  store i32 %conv1091, ptr %vi24x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24x3) #4
  %1217 = load ptr, ptr %i24, align 8, !tbaa !9
  %arrayidx1092 = getelementptr inbounds i8, ptr %1217, i64 3
  %1218 = load i8, ptr %arrayidx1092, align 1, !tbaa !11
  %conv1093 = zext i8 %1218 to i32
  store i32 %conv1093, ptr %vi24x3, align 4, !tbaa !14
  %1219 = load ptr, ptr %i24, align 8, !tbaa !9
  %add.ptr1094 = getelementptr inbounds i8, ptr %1219, i64 4
  store ptr %add.ptr1094, ptr %i24, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24x0) #4
  %1220 = load ptr, ptr %w, align 8, !tbaa !9
  %1221 = ptrtoint ptr %1220 to i64
  %add1095 = add i64 %1221, 16
  %1222 = inttoptr i64 %add1095 to ptr
  %arrayidx1096 = getelementptr inbounds i8, ptr %1222, i64 96
  %1223 = load i8, ptr %arrayidx1096, align 1, !tbaa !11
  %conv1097 = zext i8 %1223 to i32
  %1224 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1098 = sub nsw i32 %conv1097, %1224
  store i32 %sub1098, ptr %vk24x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24x1) #4
  %1225 = load ptr, ptr %w, align 8, !tbaa !9
  %1226 = ptrtoint ptr %1225 to i64
  %add1099 = add i64 %1226, 16
  %1227 = inttoptr i64 %add1099 to ptr
  %arrayidx1100 = getelementptr inbounds i8, ptr %1227, i64 97
  %1228 = load i8, ptr %arrayidx1100, align 1, !tbaa !11
  %conv1101 = zext i8 %1228 to i32
  %1229 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1102 = sub nsw i32 %conv1101, %1229
  store i32 %sub1102, ptr %vk24x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24x2) #4
  %1230 = load ptr, ptr %w, align 8, !tbaa !9
  %1231 = ptrtoint ptr %1230 to i64
  %add1103 = add i64 %1231, 16
  %1232 = inttoptr i64 %add1103 to ptr
  %arrayidx1104 = getelementptr inbounds i8, ptr %1232, i64 98
  %1233 = load i8, ptr %arrayidx1104, align 1, !tbaa !11
  %conv1105 = zext i8 %1233 to i32
  %1234 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1106 = sub nsw i32 %conv1105, %1234
  store i32 %sub1106, ptr %vk24x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24x3) #4
  %1235 = load ptr, ptr %w, align 8, !tbaa !9
  %1236 = ptrtoint ptr %1235 to i64
  %add1107 = add i64 %1236, 16
  %1237 = inttoptr i64 %add1107 to ptr
  %arrayidx1108 = getelementptr inbounds i8, ptr %1237, i64 99
  %1238 = load i8, ptr %arrayidx1108, align 1, !tbaa !11
  %conv1109 = zext i8 %1238 to i32
  %1239 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1110 = sub nsw i32 %conv1109, %1239
  store i32 %sub1110, ptr %vk24x3, align 4, !tbaa !14
  %1240 = load i32, ptr %vi24x0, align 4, !tbaa !14
  %1241 = load i32, ptr %vk24x0, align 4, !tbaa !14
  %mul1111 = mul nsw i32 %1240, %1241
  %1242 = load i32, ptr %vacc0, align 4, !tbaa !14
  %add1112 = add nsw i32 %1242, %mul1111
  store i32 %add1112, ptr %vacc0, align 4, !tbaa !14
  %1243 = load i32, ptr %vi24x1, align 4, !tbaa !14
  %1244 = load i32, ptr %vk24x1, align 4, !tbaa !14
  %mul1113 = mul nsw i32 %1243, %1244
  %1245 = load i32, ptr %vacc1, align 4, !tbaa !14
  %add1114 = add nsw i32 %1245, %mul1113
  store i32 %add1114, ptr %vacc1, align 4, !tbaa !14
  %1246 = load i32, ptr %vi24x2, align 4, !tbaa !14
  %1247 = load i32, ptr %vk24x2, align 4, !tbaa !14
  %mul1115 = mul nsw i32 %1246, %1247
  %1248 = load i32, ptr %vacc2, align 4, !tbaa !14
  %add1116 = add nsw i32 %1248, %mul1115
  store i32 %add1116, ptr %vacc2, align 4, !tbaa !14
  %1249 = load i32, ptr %vi24x3, align 4, !tbaa !14
  %1250 = load i32, ptr %vk24x3, align 4, !tbaa !14
  %mul1117 = mul nsw i32 %1249, %1250
  %1251 = load i32, ptr %vacc3, align 4, !tbaa !14
  %add1118 = add nsw i32 %1251, %mul1117
  store i32 %add1118, ptr %vacc3, align 4, !tbaa !14
  %1252 = load ptr, ptr %w, align 8, !tbaa !9
  %1253 = ptrtoint ptr %1252 to i64
  %add1119 = add i64 %1253, 16
  %add1120 = add i64 %add1119, 100
  %1254 = inttoptr i64 %add1120 to ptr
  store ptr %1254, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0) #4
  %1255 = load i32, ptr %vacc0, align 4, !tbaa !14
  %conv1121 = sitofp i32 %1255 to float
  store float %conv1121, ptr %vfpacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1) #4
  %1256 = load i32, ptr %vacc1, align 4, !tbaa !14
  %conv1122 = sitofp i32 %1256 to float
  store float %conv1122, ptr %vfpacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2) #4
  %1257 = load i32, ptr %vacc2, align 4, !tbaa !14
  %conv1123 = sitofp i32 %1257 to float
  store float %conv1123, ptr %vfpacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc3) #4
  %1258 = load i32, ptr %vacc3, align 4, !tbaa !14
  %conv1124 = sitofp i32 %1258 to float
  store float %conv1124, ptr %vfpacc3, align 4, !tbaa !12
  %1259 = load float, ptr %vscale, align 4, !tbaa !12
  %1260 = load float, ptr %vfpacc0, align 4, !tbaa !12
  %mul1125 = fmul float %1260, %1259
  store float %mul1125, ptr %vfpacc0, align 4, !tbaa !12
  %1261 = load float, ptr %vscale, align 4, !tbaa !12
  %1262 = load float, ptr %vfpacc1, align 4, !tbaa !12
  %mul1126 = fmul float %1262, %1261
  store float %mul1126, ptr %vfpacc1, align 4, !tbaa !12
  %1263 = load float, ptr %vscale, align 4, !tbaa !12
  %1264 = load float, ptr %vfpacc2, align 4, !tbaa !12
  %mul1127 = fmul float %1264, %1263
  store float %mul1127, ptr %vfpacc2, align 4, !tbaa !12
  %1265 = load float, ptr %vscale, align 4, !tbaa !12
  %1266 = load float, ptr %vfpacc3, align 4, !tbaa !12
  %mul1128 = fmul float %1266, %1265
  store float %mul1128, ptr %vfpacc3, align 4, !tbaa !12
  %1267 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %1268 = load float, ptr %vfpacc0, align 4, !tbaa !12
  %add1129 = fadd float %1268, %1267
  store float %add1129, ptr %vfpacc0, align 4, !tbaa !12
  %1269 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %1270 = load float, ptr %vfpacc1, align 4, !tbaa !12
  %add1130 = fadd float %1270, %1269
  store float %add1130, ptr %vfpacc1, align 4, !tbaa !12
  %1271 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %1272 = load float, ptr %vfpacc2, align 4, !tbaa !12
  %add1131 = fadd float %1272, %1271
  store float %add1131, ptr %vfpacc2, align 4, !tbaa !12
  %1273 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %1274 = load float, ptr %vfpacc3, align 4, !tbaa !12
  %add1132 = fadd float %1274, %1273
  store float %add1132, ptr %vfpacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0) #4
  %1275 = load float, ptr %vfpacc0, align 4, !tbaa !12
  %call = call i32 @fp32_to_bits(float noundef %1275)
  store i32 %call, ptr %vout0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1) #4
  %1276 = load float, ptr %vfpacc1, align 4, !tbaa !12
  %call1133 = call i32 @fp32_to_bits(float noundef %1276)
  store i32 %call1133, ptr %vout1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2) #4
  %1277 = load float, ptr %vfpacc2, align 4, !tbaa !12
  %call1134 = call i32 @fp32_to_bits(float noundef %1277)
  store i32 %call1134, ptr %vout2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout3) #4
  %1278 = load float, ptr %vfpacc3, align 4, !tbaa !12
  %call1135 = call i32 @fp32_to_bits(float noundef %1278)
  store i32 %call1135, ptr %vout3, align 4, !tbaa !14
  %1279 = load i32, ptr %vout0, align 4, !tbaa !14
  %1280 = load i32, ptr %vmagic_min, align 4, !tbaa !14
  %call1136 = call i32 @math_max_s32(i32 noundef %1279, i32 noundef %1280)
  store i32 %call1136, ptr %vout0, align 4, !tbaa !14
  %1281 = load i32, ptr %vout1, align 4, !tbaa !14
  %1282 = load i32, ptr %vmagic_min, align 4, !tbaa !14
  %call1137 = call i32 @math_max_s32(i32 noundef %1281, i32 noundef %1282)
  store i32 %call1137, ptr %vout1, align 4, !tbaa !14
  %1283 = load i32, ptr %vout2, align 4, !tbaa !14
  %1284 = load i32, ptr %vmagic_min, align 4, !tbaa !14
  %call1138 = call i32 @math_max_s32(i32 noundef %1283, i32 noundef %1284)
  store i32 %call1138, ptr %vout2, align 4, !tbaa !14
  %1285 = load i32, ptr %vout3, align 4, !tbaa !14
  %1286 = load i32, ptr %vmagic_min, align 4, !tbaa !14
  %call1139 = call i32 @math_max_s32(i32 noundef %1285, i32 noundef %1286)
  store i32 %call1139, ptr %vout3, align 4, !tbaa !14
  %1287 = load i32, ptr %vout0, align 4, !tbaa !14
  %1288 = load i32, ptr %vmagic_max, align 4, !tbaa !14
  %call1140 = call i32 @math_min_s32(i32 noundef %1287, i32 noundef %1288)
  store i32 %call1140, ptr %vout0, align 4, !tbaa !14
  %1289 = load i32, ptr %vout1, align 4, !tbaa !14
  %1290 = load i32, ptr %vmagic_max, align 4, !tbaa !14
  %call1141 = call i32 @math_min_s32(i32 noundef %1289, i32 noundef %1290)
  store i32 %call1141, ptr %vout1, align 4, !tbaa !14
  %1291 = load i32, ptr %vout2, align 4, !tbaa !14
  %1292 = load i32, ptr %vmagic_max, align 4, !tbaa !14
  %call1142 = call i32 @math_min_s32(i32 noundef %1291, i32 noundef %1292)
  store i32 %call1142, ptr %vout2, align 4, !tbaa !14
  %1293 = load i32, ptr %vout3, align 4, !tbaa !14
  %1294 = load i32, ptr %vmagic_max, align 4, !tbaa !14
  %call1143 = call i32 @math_min_s32(i32 noundef %1293, i32 noundef %1294)
  store i32 %call1143, ptr %vout3, align 4, !tbaa !14
  %1295 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %1296 = load i32, ptr %vout0, align 4, !tbaa !14
  %sub1144 = sub nsw i32 %1296, %1295
  store i32 %sub1144, ptr %vout0, align 4, !tbaa !14
  %1297 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %1298 = load i32, ptr %vout1, align 4, !tbaa !14
  %sub1145 = sub nsw i32 %1298, %1297
  store i32 %sub1145, ptr %vout1, align 4, !tbaa !14
  %1299 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %1300 = load i32, ptr %vout2, align 4, !tbaa !14
  %sub1146 = sub nsw i32 %1300, %1299
  store i32 %sub1146, ptr %vout2, align 4, !tbaa !14
  %1301 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %1302 = load i32, ptr %vout3, align 4, !tbaa !14
  %sub1147 = sub nsw i32 %1302, %1301
  store i32 %sub1147, ptr %vout3, align 4, !tbaa !14
  %1303 = load i32, ptr %vout0, align 4, !tbaa !14
  %conv1148 = trunc i32 %1303 to i8
  %1304 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx1149 = getelementptr inbounds i8, ptr %1304, i64 0
  store i8 %conv1148, ptr %arrayidx1149, align 1, !tbaa !11
  %1305 = load i32, ptr %vout1, align 4, !tbaa !14
  %conv1150 = trunc i32 %1305 to i8
  %1306 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx1151 = getelementptr inbounds i8, ptr %1306, i64 1
  store i8 %conv1150, ptr %arrayidx1151, align 1, !tbaa !11
  %1307 = load i32, ptr %vout2, align 4, !tbaa !14
  %conv1152 = trunc i32 %1307 to i8
  %1308 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx1153 = getelementptr inbounds i8, ptr %1308, i64 2
  store i8 %conv1152, ptr %arrayidx1153, align 1, !tbaa !11
  %1309 = load i32, ptr %vout3, align 4, !tbaa !14
  %conv1154 = trunc i32 %1309 to i8
  %1310 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx1155 = getelementptr inbounds i8, ptr %1310, i64 3
  store i8 %conv1154, ptr %arrayidx1155, align 1, !tbaa !11
  %1311 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1156 = getelementptr inbounds i8, ptr %1311, i64 4
  store ptr %add.ptr1156, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1312 = load i64, ptr %c, align 8, !tbaa !5
  %sub1157 = sub i64 %1312, 4
  store i64 %sub1157, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %1313 = load i64, ptr %c, align 8, !tbaa !5
  %cmp1158 = icmp ne i64 %1313, 0
  %lnot1160 = xor i1 %cmp1158, true
  %lnot1162 = xor i1 %lnot1160, true
  %lnot.ext1163 = zext i1 %lnot1162 to i32
  %conv1164 = sext i32 %lnot.ext1163 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv1164, i64 0)
  %tobool1165 = icmp ne i64 %expval, 0
  br i1 %tobool1165, label %if.then1166, label %if.end1356

if.then1166:                                      ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %1314 = load ptr, ptr %w, align 8, !tbaa !9
  %1315 = ptrtoint ptr %1314 to i64
  %add1167 = add i64 %1315, 16
  %1316 = inttoptr i64 %add1167 to ptr
  store ptr %1316, ptr %k, align 8, !tbaa !9
  br label %do.body1168

do.body1168:                                      ; preds = %do.cond, %if.then1166
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #4
  %1317 = load ptr, ptr %w, align 8, !tbaa !9
  %1318 = load i32, ptr %1317, align 4, !tbaa !14
  store i32 %1318, ptr %vacc, align 4, !tbaa !14
  %1319 = load ptr, ptr %w, align 8, !tbaa !9
  %1320 = ptrtoint ptr %1319 to i64
  %add1169 = add i64 %1320, 4
  %1321 = inttoptr i64 %add1169 to ptr
  store ptr %1321, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0) #4
  %1322 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %1322, i32 1
  store ptr %incdec.ptr, ptr %i0, align 8, !tbaa !9
  %1323 = load i8, ptr %1322, align 1, !tbaa !11
  %conv1170 = zext i8 %1323 to i32
  store i32 %conv1170, ptr %vi0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0) #4
  %1324 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1171 = getelementptr inbounds i8, ptr %1324, i64 0
  %1325 = load i8, ptr %arrayidx1171, align 1, !tbaa !11
  %conv1172 = zext i8 %1325 to i32
  %1326 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1173 = sub nsw i32 %conv1172, %1326
  store i32 %sub1173, ptr %vk0, align 4, !tbaa !14
  %1327 = load i32, ptr %vi0, align 4, !tbaa !14
  %1328 = load i32, ptr %vk0, align 4, !tbaa !14
  %mul1174 = mul nsw i32 %1327, %1328
  %1329 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1175 = add nsw i32 %1329, %mul1174
  store i32 %add1175, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1) #4
  %1330 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr1176 = getelementptr inbounds i8, ptr %1330, i32 1
  store ptr %incdec.ptr1176, ptr %i1, align 8, !tbaa !9
  %1331 = load i8, ptr %1330, align 1, !tbaa !11
  %conv1177 = zext i8 %1331 to i32
  store i32 %conv1177, ptr %vi1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1) #4
  %1332 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1178 = getelementptr inbounds i8, ptr %1332, i64 4
  %1333 = load i8, ptr %arrayidx1178, align 1, !tbaa !11
  %conv1179 = zext i8 %1333 to i32
  %1334 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1180 = sub nsw i32 %conv1179, %1334
  store i32 %sub1180, ptr %vk1, align 4, !tbaa !14
  %1335 = load i32, ptr %vi1, align 4, !tbaa !14
  %1336 = load i32, ptr %vk1, align 4, !tbaa !14
  %mul1181 = mul nsw i32 %1335, %1336
  %1337 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1182 = add nsw i32 %1337, %mul1181
  store i32 %add1182, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2) #4
  %1338 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr1183 = getelementptr inbounds i8, ptr %1338, i32 1
  store ptr %incdec.ptr1183, ptr %i2, align 8, !tbaa !9
  %1339 = load i8, ptr %1338, align 1, !tbaa !11
  %conv1184 = zext i8 %1339 to i32
  store i32 %conv1184, ptr %vi2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2) #4
  %1340 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1185 = getelementptr inbounds i8, ptr %1340, i64 8
  %1341 = load i8, ptr %arrayidx1185, align 1, !tbaa !11
  %conv1186 = zext i8 %1341 to i32
  %1342 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1187 = sub nsw i32 %conv1186, %1342
  store i32 %sub1187, ptr %vk2, align 4, !tbaa !14
  %1343 = load i32, ptr %vi2, align 4, !tbaa !14
  %1344 = load i32, ptr %vk2, align 4, !tbaa !14
  %mul1188 = mul nsw i32 %1343, %1344
  %1345 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1189 = add nsw i32 %1345, %mul1188
  store i32 %add1189, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3) #4
  %1346 = load ptr, ptr %i3, align 8, !tbaa !9
  %incdec.ptr1190 = getelementptr inbounds i8, ptr %1346, i32 1
  store ptr %incdec.ptr1190, ptr %i3, align 8, !tbaa !9
  %1347 = load i8, ptr %1346, align 1, !tbaa !11
  %conv1191 = zext i8 %1347 to i32
  store i32 %conv1191, ptr %vi3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3) #4
  %1348 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1192 = getelementptr inbounds i8, ptr %1348, i64 12
  %1349 = load i8, ptr %arrayidx1192, align 1, !tbaa !11
  %conv1193 = zext i8 %1349 to i32
  %1350 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1194 = sub nsw i32 %conv1193, %1350
  store i32 %sub1194, ptr %vk3, align 4, !tbaa !14
  %1351 = load i32, ptr %vi3, align 4, !tbaa !14
  %1352 = load i32, ptr %vk3, align 4, !tbaa !14
  %mul1195 = mul nsw i32 %1351, %1352
  %1353 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1196 = add nsw i32 %1353, %mul1195
  store i32 %add1196, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4) #4
  %1354 = load ptr, ptr %i4, align 8, !tbaa !9
  %incdec.ptr1197 = getelementptr inbounds i8, ptr %1354, i32 1
  store ptr %incdec.ptr1197, ptr %i4, align 8, !tbaa !9
  %1355 = load i8, ptr %1354, align 1, !tbaa !11
  %conv1198 = zext i8 %1355 to i32
  store i32 %conv1198, ptr %vi4, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4) #4
  %1356 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1199 = getelementptr inbounds i8, ptr %1356, i64 16
  %1357 = load i8, ptr %arrayidx1199, align 1, !tbaa !11
  %conv1200 = zext i8 %1357 to i32
  %1358 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1201 = sub nsw i32 %conv1200, %1358
  store i32 %sub1201, ptr %vk4, align 4, !tbaa !14
  %1359 = load i32, ptr %vi4, align 4, !tbaa !14
  %1360 = load i32, ptr %vk4, align 4, !tbaa !14
  %mul1202 = mul nsw i32 %1359, %1360
  %1361 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1203 = add nsw i32 %1361, %mul1202
  store i32 %add1203, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5) #4
  %1362 = load ptr, ptr %i5, align 8, !tbaa !9
  %incdec.ptr1204 = getelementptr inbounds i8, ptr %1362, i32 1
  store ptr %incdec.ptr1204, ptr %i5, align 8, !tbaa !9
  %1363 = load i8, ptr %1362, align 1, !tbaa !11
  %conv1205 = zext i8 %1363 to i32
  store i32 %conv1205, ptr %vi5, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5) #4
  %1364 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1206 = getelementptr inbounds i8, ptr %1364, i64 20
  %1365 = load i8, ptr %arrayidx1206, align 1, !tbaa !11
  %conv1207 = zext i8 %1365 to i32
  %1366 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1208 = sub nsw i32 %conv1207, %1366
  store i32 %sub1208, ptr %vk5, align 4, !tbaa !14
  %1367 = load i32, ptr %vi5, align 4, !tbaa !14
  %1368 = load i32, ptr %vk5, align 4, !tbaa !14
  %mul1209 = mul nsw i32 %1367, %1368
  %1369 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1210 = add nsw i32 %1369, %mul1209
  store i32 %add1210, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6) #4
  %1370 = load ptr, ptr %i6, align 8, !tbaa !9
  %incdec.ptr1211 = getelementptr inbounds i8, ptr %1370, i32 1
  store ptr %incdec.ptr1211, ptr %i6, align 8, !tbaa !9
  %1371 = load i8, ptr %1370, align 1, !tbaa !11
  %conv1212 = zext i8 %1371 to i32
  store i32 %conv1212, ptr %vi6, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6) #4
  %1372 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1213 = getelementptr inbounds i8, ptr %1372, i64 24
  %1373 = load i8, ptr %arrayidx1213, align 1, !tbaa !11
  %conv1214 = zext i8 %1373 to i32
  %1374 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1215 = sub nsw i32 %conv1214, %1374
  store i32 %sub1215, ptr %vk6, align 4, !tbaa !14
  %1375 = load i32, ptr %vi6, align 4, !tbaa !14
  %1376 = load i32, ptr %vk6, align 4, !tbaa !14
  %mul1216 = mul nsw i32 %1375, %1376
  %1377 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1217 = add nsw i32 %1377, %mul1216
  store i32 %add1217, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7) #4
  %1378 = load ptr, ptr %i7, align 8, !tbaa !9
  %incdec.ptr1218 = getelementptr inbounds i8, ptr %1378, i32 1
  store ptr %incdec.ptr1218, ptr %i7, align 8, !tbaa !9
  %1379 = load i8, ptr %1378, align 1, !tbaa !11
  %conv1219 = zext i8 %1379 to i32
  store i32 %conv1219, ptr %vi7, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7) #4
  %1380 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1220 = getelementptr inbounds i8, ptr %1380, i64 28
  %1381 = load i8, ptr %arrayidx1220, align 1, !tbaa !11
  %conv1221 = zext i8 %1381 to i32
  %1382 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1222 = sub nsw i32 %conv1221, %1382
  store i32 %sub1222, ptr %vk7, align 4, !tbaa !14
  %1383 = load i32, ptr %vi7, align 4, !tbaa !14
  %1384 = load i32, ptr %vk7, align 4, !tbaa !14
  %mul1223 = mul nsw i32 %1383, %1384
  %1385 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1224 = add nsw i32 %1385, %mul1223
  store i32 %add1224, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8) #4
  %1386 = load ptr, ptr %i8, align 8, !tbaa !9
  %incdec.ptr1225 = getelementptr inbounds i8, ptr %1386, i32 1
  store ptr %incdec.ptr1225, ptr %i8, align 8, !tbaa !9
  %1387 = load i8, ptr %1386, align 1, !tbaa !11
  %conv1226 = zext i8 %1387 to i32
  store i32 %conv1226, ptr %vi8, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8) #4
  %1388 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1227 = getelementptr inbounds i8, ptr %1388, i64 32
  %1389 = load i8, ptr %arrayidx1227, align 1, !tbaa !11
  %conv1228 = zext i8 %1389 to i32
  %1390 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1229 = sub nsw i32 %conv1228, %1390
  store i32 %sub1229, ptr %vk8, align 4, !tbaa !14
  %1391 = load i32, ptr %vi8, align 4, !tbaa !14
  %1392 = load i32, ptr %vk8, align 4, !tbaa !14
  %mul1230 = mul nsw i32 %1391, %1392
  %1393 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1231 = add nsw i32 %1393, %mul1230
  store i32 %add1231, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9) #4
  %1394 = load ptr, ptr %i9, align 8, !tbaa !9
  %incdec.ptr1232 = getelementptr inbounds i8, ptr %1394, i32 1
  store ptr %incdec.ptr1232, ptr %i9, align 8, !tbaa !9
  %1395 = load i8, ptr %1394, align 1, !tbaa !11
  %conv1233 = zext i8 %1395 to i32
  store i32 %conv1233, ptr %vi9, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9) #4
  %1396 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1234 = getelementptr inbounds i8, ptr %1396, i64 36
  %1397 = load i8, ptr %arrayidx1234, align 1, !tbaa !11
  %conv1235 = zext i8 %1397 to i32
  %1398 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1236 = sub nsw i32 %conv1235, %1398
  store i32 %sub1236, ptr %vk9, align 4, !tbaa !14
  %1399 = load i32, ptr %vi9, align 4, !tbaa !14
  %1400 = load i32, ptr %vk9, align 4, !tbaa !14
  %mul1237 = mul nsw i32 %1399, %1400
  %1401 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1238 = add nsw i32 %1401, %mul1237
  store i32 %add1238, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10) #4
  %1402 = load ptr, ptr %i10, align 8, !tbaa !9
  %incdec.ptr1239 = getelementptr inbounds i8, ptr %1402, i32 1
  store ptr %incdec.ptr1239, ptr %i10, align 8, !tbaa !9
  %1403 = load i8, ptr %1402, align 1, !tbaa !11
  %conv1240 = zext i8 %1403 to i32
  store i32 %conv1240, ptr %vi10, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10) #4
  %1404 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1241 = getelementptr inbounds i8, ptr %1404, i64 40
  %1405 = load i8, ptr %arrayidx1241, align 1, !tbaa !11
  %conv1242 = zext i8 %1405 to i32
  %1406 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1243 = sub nsw i32 %conv1242, %1406
  store i32 %sub1243, ptr %vk10, align 4, !tbaa !14
  %1407 = load i32, ptr %vi10, align 4, !tbaa !14
  %1408 = load i32, ptr %vk10, align 4, !tbaa !14
  %mul1244 = mul nsw i32 %1407, %1408
  %1409 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1245 = add nsw i32 %1409, %mul1244
  store i32 %add1245, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11) #4
  %1410 = load ptr, ptr %i11, align 8, !tbaa !9
  %incdec.ptr1246 = getelementptr inbounds i8, ptr %1410, i32 1
  store ptr %incdec.ptr1246, ptr %i11, align 8, !tbaa !9
  %1411 = load i8, ptr %1410, align 1, !tbaa !11
  %conv1247 = zext i8 %1411 to i32
  store i32 %conv1247, ptr %vi11, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11) #4
  %1412 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1248 = getelementptr inbounds i8, ptr %1412, i64 44
  %1413 = load i8, ptr %arrayidx1248, align 1, !tbaa !11
  %conv1249 = zext i8 %1413 to i32
  %1414 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1250 = sub nsw i32 %conv1249, %1414
  store i32 %sub1250, ptr %vk11, align 4, !tbaa !14
  %1415 = load i32, ptr %vi11, align 4, !tbaa !14
  %1416 = load i32, ptr %vk11, align 4, !tbaa !14
  %mul1251 = mul nsw i32 %1415, %1416
  %1417 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1252 = add nsw i32 %1417, %mul1251
  store i32 %add1252, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12) #4
  %1418 = load ptr, ptr %i12, align 8, !tbaa !9
  %incdec.ptr1253 = getelementptr inbounds i8, ptr %1418, i32 1
  store ptr %incdec.ptr1253, ptr %i12, align 8, !tbaa !9
  %1419 = load i8, ptr %1418, align 1, !tbaa !11
  %conv1254 = zext i8 %1419 to i32
  store i32 %conv1254, ptr %vi12, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12) #4
  %1420 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1255 = getelementptr inbounds i8, ptr %1420, i64 48
  %1421 = load i8, ptr %arrayidx1255, align 1, !tbaa !11
  %conv1256 = zext i8 %1421 to i32
  %1422 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1257 = sub nsw i32 %conv1256, %1422
  store i32 %sub1257, ptr %vk12, align 4, !tbaa !14
  %1423 = load i32, ptr %vi12, align 4, !tbaa !14
  %1424 = load i32, ptr %vk12, align 4, !tbaa !14
  %mul1258 = mul nsw i32 %1423, %1424
  %1425 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1259 = add nsw i32 %1425, %mul1258
  store i32 %add1259, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13) #4
  %1426 = load ptr, ptr %i13, align 8, !tbaa !9
  %incdec.ptr1260 = getelementptr inbounds i8, ptr %1426, i32 1
  store ptr %incdec.ptr1260, ptr %i13, align 8, !tbaa !9
  %1427 = load i8, ptr %1426, align 1, !tbaa !11
  %conv1261 = zext i8 %1427 to i32
  store i32 %conv1261, ptr %vi13, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13) #4
  %1428 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1262 = getelementptr inbounds i8, ptr %1428, i64 52
  %1429 = load i8, ptr %arrayidx1262, align 1, !tbaa !11
  %conv1263 = zext i8 %1429 to i32
  %1430 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1264 = sub nsw i32 %conv1263, %1430
  store i32 %sub1264, ptr %vk13, align 4, !tbaa !14
  %1431 = load i32, ptr %vi13, align 4, !tbaa !14
  %1432 = load i32, ptr %vk13, align 4, !tbaa !14
  %mul1265 = mul nsw i32 %1431, %1432
  %1433 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1266 = add nsw i32 %1433, %mul1265
  store i32 %add1266, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14) #4
  %1434 = load ptr, ptr %i14, align 8, !tbaa !9
  %incdec.ptr1267 = getelementptr inbounds i8, ptr %1434, i32 1
  store ptr %incdec.ptr1267, ptr %i14, align 8, !tbaa !9
  %1435 = load i8, ptr %1434, align 1, !tbaa !11
  %conv1268 = zext i8 %1435 to i32
  store i32 %conv1268, ptr %vi14, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14) #4
  %1436 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1269 = getelementptr inbounds i8, ptr %1436, i64 56
  %1437 = load i8, ptr %arrayidx1269, align 1, !tbaa !11
  %conv1270 = zext i8 %1437 to i32
  %1438 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1271 = sub nsw i32 %conv1270, %1438
  store i32 %sub1271, ptr %vk14, align 4, !tbaa !14
  %1439 = load i32, ptr %vi14, align 4, !tbaa !14
  %1440 = load i32, ptr %vk14, align 4, !tbaa !14
  %mul1272 = mul nsw i32 %1439, %1440
  %1441 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1273 = add nsw i32 %1441, %mul1272
  store i32 %add1273, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15) #4
  %1442 = load ptr, ptr %i15, align 8, !tbaa !9
  %incdec.ptr1274 = getelementptr inbounds i8, ptr %1442, i32 1
  store ptr %incdec.ptr1274, ptr %i15, align 8, !tbaa !9
  %1443 = load i8, ptr %1442, align 1, !tbaa !11
  %conv1275 = zext i8 %1443 to i32
  store i32 %conv1275, ptr %vi15, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15) #4
  %1444 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1276 = getelementptr inbounds i8, ptr %1444, i64 60
  %1445 = load i8, ptr %arrayidx1276, align 1, !tbaa !11
  %conv1277 = zext i8 %1445 to i32
  %1446 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1278 = sub nsw i32 %conv1277, %1446
  store i32 %sub1278, ptr %vk15, align 4, !tbaa !14
  %1447 = load i32, ptr %vi15, align 4, !tbaa !14
  %1448 = load i32, ptr %vk15, align 4, !tbaa !14
  %mul1279 = mul nsw i32 %1447, %1448
  %1449 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1280 = add nsw i32 %1449, %mul1279
  store i32 %add1280, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16) #4
  %1450 = load ptr, ptr %i16, align 8, !tbaa !9
  %incdec.ptr1281 = getelementptr inbounds i8, ptr %1450, i32 1
  store ptr %incdec.ptr1281, ptr %i16, align 8, !tbaa !9
  %1451 = load i8, ptr %1450, align 1, !tbaa !11
  %conv1282 = zext i8 %1451 to i32
  store i32 %conv1282, ptr %vi16, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16) #4
  %1452 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1283 = getelementptr inbounds i8, ptr %1452, i64 64
  %1453 = load i8, ptr %arrayidx1283, align 1, !tbaa !11
  %conv1284 = zext i8 %1453 to i32
  %1454 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1285 = sub nsw i32 %conv1284, %1454
  store i32 %sub1285, ptr %vk16, align 4, !tbaa !14
  %1455 = load i32, ptr %vi16, align 4, !tbaa !14
  %1456 = load i32, ptr %vk16, align 4, !tbaa !14
  %mul1286 = mul nsw i32 %1455, %1456
  %1457 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1287 = add nsw i32 %1457, %mul1286
  store i32 %add1287, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17) #4
  %1458 = load ptr, ptr %i17, align 8, !tbaa !9
  %incdec.ptr1288 = getelementptr inbounds i8, ptr %1458, i32 1
  store ptr %incdec.ptr1288, ptr %i17, align 8, !tbaa !9
  %1459 = load i8, ptr %1458, align 1, !tbaa !11
  %conv1289 = zext i8 %1459 to i32
  store i32 %conv1289, ptr %vi17, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17) #4
  %1460 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1290 = getelementptr inbounds i8, ptr %1460, i64 68
  %1461 = load i8, ptr %arrayidx1290, align 1, !tbaa !11
  %conv1291 = zext i8 %1461 to i32
  %1462 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1292 = sub nsw i32 %conv1291, %1462
  store i32 %sub1292, ptr %vk17, align 4, !tbaa !14
  %1463 = load i32, ptr %vi17, align 4, !tbaa !14
  %1464 = load i32, ptr %vk17, align 4, !tbaa !14
  %mul1293 = mul nsw i32 %1463, %1464
  %1465 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1294 = add nsw i32 %1465, %mul1293
  store i32 %add1294, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18) #4
  %1466 = load ptr, ptr %i18, align 8, !tbaa !9
  %incdec.ptr1295 = getelementptr inbounds i8, ptr %1466, i32 1
  store ptr %incdec.ptr1295, ptr %i18, align 8, !tbaa !9
  %1467 = load i8, ptr %1466, align 1, !tbaa !11
  %conv1296 = zext i8 %1467 to i32
  store i32 %conv1296, ptr %vi18, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18) #4
  %1468 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1297 = getelementptr inbounds i8, ptr %1468, i64 72
  %1469 = load i8, ptr %arrayidx1297, align 1, !tbaa !11
  %conv1298 = zext i8 %1469 to i32
  %1470 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1299 = sub nsw i32 %conv1298, %1470
  store i32 %sub1299, ptr %vk18, align 4, !tbaa !14
  %1471 = load i32, ptr %vi18, align 4, !tbaa !14
  %1472 = load i32, ptr %vk18, align 4, !tbaa !14
  %mul1300 = mul nsw i32 %1471, %1472
  %1473 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1301 = add nsw i32 %1473, %mul1300
  store i32 %add1301, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19) #4
  %1474 = load ptr, ptr %i19, align 8, !tbaa !9
  %incdec.ptr1302 = getelementptr inbounds i8, ptr %1474, i32 1
  store ptr %incdec.ptr1302, ptr %i19, align 8, !tbaa !9
  %1475 = load i8, ptr %1474, align 1, !tbaa !11
  %conv1303 = zext i8 %1475 to i32
  store i32 %conv1303, ptr %vi19, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19) #4
  %1476 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1304 = getelementptr inbounds i8, ptr %1476, i64 76
  %1477 = load i8, ptr %arrayidx1304, align 1, !tbaa !11
  %conv1305 = zext i8 %1477 to i32
  %1478 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1306 = sub nsw i32 %conv1305, %1478
  store i32 %sub1306, ptr %vk19, align 4, !tbaa !14
  %1479 = load i32, ptr %vi19, align 4, !tbaa !14
  %1480 = load i32, ptr %vk19, align 4, !tbaa !14
  %mul1307 = mul nsw i32 %1479, %1480
  %1481 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1308 = add nsw i32 %1481, %mul1307
  store i32 %add1308, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20) #4
  %1482 = load ptr, ptr %i20, align 8, !tbaa !9
  %incdec.ptr1309 = getelementptr inbounds i8, ptr %1482, i32 1
  store ptr %incdec.ptr1309, ptr %i20, align 8, !tbaa !9
  %1483 = load i8, ptr %1482, align 1, !tbaa !11
  %conv1310 = zext i8 %1483 to i32
  store i32 %conv1310, ptr %vi20, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20) #4
  %1484 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1311 = getelementptr inbounds i8, ptr %1484, i64 80
  %1485 = load i8, ptr %arrayidx1311, align 1, !tbaa !11
  %conv1312 = zext i8 %1485 to i32
  %1486 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1313 = sub nsw i32 %conv1312, %1486
  store i32 %sub1313, ptr %vk20, align 4, !tbaa !14
  %1487 = load i32, ptr %vi20, align 4, !tbaa !14
  %1488 = load i32, ptr %vk20, align 4, !tbaa !14
  %mul1314 = mul nsw i32 %1487, %1488
  %1489 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1315 = add nsw i32 %1489, %mul1314
  store i32 %add1315, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21) #4
  %1490 = load ptr, ptr %i21, align 8, !tbaa !9
  %incdec.ptr1316 = getelementptr inbounds i8, ptr %1490, i32 1
  store ptr %incdec.ptr1316, ptr %i21, align 8, !tbaa !9
  %1491 = load i8, ptr %1490, align 1, !tbaa !11
  %conv1317 = zext i8 %1491 to i32
  store i32 %conv1317, ptr %vi21, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21) #4
  %1492 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1318 = getelementptr inbounds i8, ptr %1492, i64 84
  %1493 = load i8, ptr %arrayidx1318, align 1, !tbaa !11
  %conv1319 = zext i8 %1493 to i32
  %1494 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1320 = sub nsw i32 %conv1319, %1494
  store i32 %sub1320, ptr %vk21, align 4, !tbaa !14
  %1495 = load i32, ptr %vi21, align 4, !tbaa !14
  %1496 = load i32, ptr %vk21, align 4, !tbaa !14
  %mul1321 = mul nsw i32 %1495, %1496
  %1497 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1322 = add nsw i32 %1497, %mul1321
  store i32 %add1322, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22) #4
  %1498 = load ptr, ptr %i22, align 8, !tbaa !9
  %incdec.ptr1323 = getelementptr inbounds i8, ptr %1498, i32 1
  store ptr %incdec.ptr1323, ptr %i22, align 8, !tbaa !9
  %1499 = load i8, ptr %1498, align 1, !tbaa !11
  %conv1324 = zext i8 %1499 to i32
  store i32 %conv1324, ptr %vi22, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22) #4
  %1500 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1325 = getelementptr inbounds i8, ptr %1500, i64 88
  %1501 = load i8, ptr %arrayidx1325, align 1, !tbaa !11
  %conv1326 = zext i8 %1501 to i32
  %1502 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1327 = sub nsw i32 %conv1326, %1502
  store i32 %sub1327, ptr %vk22, align 4, !tbaa !14
  %1503 = load i32, ptr %vi22, align 4, !tbaa !14
  %1504 = load i32, ptr %vk22, align 4, !tbaa !14
  %mul1328 = mul nsw i32 %1503, %1504
  %1505 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1329 = add nsw i32 %1505, %mul1328
  store i32 %add1329, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23) #4
  %1506 = load ptr, ptr %i23, align 8, !tbaa !9
  %incdec.ptr1330 = getelementptr inbounds i8, ptr %1506, i32 1
  store ptr %incdec.ptr1330, ptr %i23, align 8, !tbaa !9
  %1507 = load i8, ptr %1506, align 1, !tbaa !11
  %conv1331 = zext i8 %1507 to i32
  store i32 %conv1331, ptr %vi23, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23) #4
  %1508 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1332 = getelementptr inbounds i8, ptr %1508, i64 92
  %1509 = load i8, ptr %arrayidx1332, align 1, !tbaa !11
  %conv1333 = zext i8 %1509 to i32
  %1510 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1334 = sub nsw i32 %conv1333, %1510
  store i32 %sub1334, ptr %vk23, align 4, !tbaa !14
  %1511 = load i32, ptr %vi23, align 4, !tbaa !14
  %1512 = load i32, ptr %vk23, align 4, !tbaa !14
  %mul1335 = mul nsw i32 %1511, %1512
  %1513 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1336 = add nsw i32 %1513, %mul1335
  store i32 %add1336, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24) #4
  %1514 = load ptr, ptr %i24, align 8, !tbaa !9
  %incdec.ptr1337 = getelementptr inbounds i8, ptr %1514, i32 1
  store ptr %incdec.ptr1337, ptr %i24, align 8, !tbaa !9
  %1515 = load i8, ptr %1514, align 1, !tbaa !11
  %conv1338 = zext i8 %1515 to i32
  store i32 %conv1338, ptr %vi24, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24) #4
  %1516 = load ptr, ptr %k, align 8, !tbaa !9
  %arrayidx1339 = getelementptr inbounds i8, ptr %1516, i64 96
  %1517 = load i8, ptr %arrayidx1339, align 1, !tbaa !11
  %conv1340 = zext i8 %1517 to i32
  %1518 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub1341 = sub nsw i32 %conv1340, %1518
  store i32 %sub1341, ptr %vk24, align 4, !tbaa !14
  %1519 = load i32, ptr %vi24, align 4, !tbaa !14
  %1520 = load i32, ptr %vk24, align 4, !tbaa !14
  %mul1342 = mul nsw i32 %1519, %1520
  %1521 = load i32, ptr %vacc, align 4, !tbaa !14
  %add1343 = add nsw i32 %1521, %mul1342
  store i32 %add1343, ptr %vacc, align 4, !tbaa !14
  %1522 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1344 = getelementptr inbounds i8, ptr %1522, i64 1
  store ptr %add.ptr1344, ptr %k, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc) #4
  %1523 = load i32, ptr %vacc, align 4, !tbaa !14
  %conv1345 = sitofp i32 %1523 to float
  %1524 = load float, ptr %vscale, align 4, !tbaa !12
  %mul1346 = fmul float %conv1345, %1524
  store float %mul1346, ptr %vfpacc, align 4, !tbaa !12
  %1525 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %1526 = load float, ptr %vfpacc, align 4, !tbaa !12
  %add1347 = fadd float %1526, %1525
  store float %add1347, ptr %vfpacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout) #4
  %1527 = load float, ptr %vfpacc, align 4, !tbaa !12
  %call1348 = call i32 @fp32_to_bits(float noundef %1527)
  store i32 %call1348, ptr %vout, align 4, !tbaa !14
  %1528 = load i32, ptr %vout, align 4, !tbaa !14
  %1529 = load i32, ptr %vmagic_min, align 4, !tbaa !14
  %call1349 = call i32 @math_max_s32(i32 noundef %1528, i32 noundef %1529)
  store i32 %call1349, ptr %vout, align 4, !tbaa !14
  %1530 = load i32, ptr %vout, align 4, !tbaa !14
  %1531 = load i32, ptr %vmagic_max, align 4, !tbaa !14
  %call1350 = call i32 @math_min_s32(i32 noundef %1530, i32 noundef %1531)
  store i32 %call1350, ptr %vout, align 4, !tbaa !14
  %1532 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %1533 = load i32, ptr %vout, align 4, !tbaa !14
  %sub1351 = sub nsw i32 %1533, %1532
  store i32 %sub1351, ptr %vout, align 4, !tbaa !14
  %1534 = load i32, ptr %vout, align 4, !tbaa !14
  %conv1352 = trunc i32 %1534 to i8
  %1535 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %incdec.ptr1353 = getelementptr inbounds i8, ptr %1535, i32 1
  store ptr %incdec.ptr1353, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv1352, ptr %1535, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body1168
  %1536 = load i64, ptr %c, align 8, !tbaa !5
  %dec = add i64 %1536, -1
  store i64 %dec, ptr %c, align 8, !tbaa !5
  %cmp1354 = icmp ne i64 %dec, 0
  br i1 %cmp1354, label %do.body1168, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  br label %if.end1356

if.end1356:                                       ; preds = %do.end, %for.end
  %1537 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %1538 = ptrtoint ptr %1537 to i64
  %1539 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add1357 = add i64 %1538, %1539
  %1540 = inttoptr i64 %add1357 to ptr
  store ptr %1540, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i24) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i23) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i22) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i21) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i20) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i19) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #4
  br label %do.cond1358

do.cond1358:                                      ; preds = %if.end1356
  %1541 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec1359 = add i64 %1541, -1
  store i64 %dec1359, ptr %output_width.addr, align 8, !tbaa !5
  %cmp1360 = icmp ne i64 %dec1359, 0
  br i1 %cmp1360, label %do.body, label %do.end1362, !llvm.loop !20

do.end1362:                                       ; preds = %do.cond1358
  call void @llvm.lifetime.end.p0(i64 4, ptr %vkernel_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #2 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !12
  store float %0, ptr %fp32, align 4, !tbaa !11
  %1 = load i32, ptr %fp32, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_max_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !14
  store i32 %b, ptr %b.addr, align 4, !tbaa !14
  %0 = load i32, ptr %a.addr, align 4, !tbaa !14
  %1 = load i32, ptr %b.addr, align 4, !tbaa !14
  %cmp = icmp sgt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_min_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !14
  store i32 %b, ptr %b.addr, align 4, !tbaa !14
  %0 = load i32, ptr %a.addr, align 4, !tbaa !14
  %1 = load i32, ptr %b.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}

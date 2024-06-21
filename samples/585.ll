; ModuleID = 'samples/585.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-dwconv/gen/up16x9-minmax-fp32-avx-mul16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_dwconv_minmax_fp32_ukernel_up16x9__avx_mul16(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %i7 = alloca ptr, align 8
  %i8 = alloca ptr, align 8
  %c = alloca i64, align 8
  %w = alloca ptr, align 8
  %vacc0123 = alloca <2 x i64>, align 16
  %vacc4567 = alloca <2 x i64>, align 16
  %vacc89AB = alloca <2 x i64>, align 16
  %vaccCDEF = alloca <2 x i64>, align 16
  %vi0x01234567 = alloca <2 x i64>, align 16
  %vxi0x01234567 = alloca <2 x i64>, align 16
  %vk0x01234567 = alloca <2 x i64>, align 16
  %vxk0x01234567 = alloca <2 x i64>, align 16
  %vi0x89ABCDEF = alloca <2 x i64>, align 16
  %vxi0x89ABCDEF = alloca <2 x i64>, align 16
  %vk0x89ABCDEF = alloca <2 x i64>, align 16
  %vxk0x89ABCDEF = alloca <2 x i64>, align 16
  %vprod01234567 = alloca <2 x i64>, align 16
  %vprod89ABCDEF = alloca <2 x i64>, align 16
  %vi1x01234567 = alloca <2 x i64>, align 16
  %vxi1x01234567 = alloca <2 x i64>, align 16
  %vk1x01234567 = alloca <2 x i64>, align 16
  %vxk1x01234567 = alloca <2 x i64>, align 16
  %vi1x89ABCDEF = alloca <2 x i64>, align 16
  %vxi1x89ABCDEF = alloca <2 x i64>, align 16
  %vk1x89ABCDEF = alloca <2 x i64>, align 16
  %vxk1x89ABCDEF = alloca <2 x i64>, align 16
  %vi2x01234567 = alloca <2 x i64>, align 16
  %vxi2x01234567 = alloca <2 x i64>, align 16
  %vk2x01234567 = alloca <2 x i64>, align 16
  %vxk2x01234567 = alloca <2 x i64>, align 16
  %vi2x89ABCDEF = alloca <2 x i64>, align 16
  %vxi2x89ABCDEF = alloca <2 x i64>, align 16
  %vk2x89ABCDEF = alloca <2 x i64>, align 16
  %vxk2x89ABCDEF = alloca <2 x i64>, align 16
  %vi3x01234567 = alloca <2 x i64>, align 16
  %vxi3x01234567 = alloca <2 x i64>, align 16
  %vk3x01234567 = alloca <2 x i64>, align 16
  %vxk3x01234567 = alloca <2 x i64>, align 16
  %vi3x89ABCDEF = alloca <2 x i64>, align 16
  %vxi3x89ABCDEF = alloca <2 x i64>, align 16
  %vk3x89ABCDEF = alloca <2 x i64>, align 16
  %vxk3x89ABCDEF = alloca <2 x i64>, align 16
  %vi4x01234567 = alloca <2 x i64>, align 16
  %vxi4x01234567 = alloca <2 x i64>, align 16
  %vk4x01234567 = alloca <2 x i64>, align 16
  %vxk4x01234567 = alloca <2 x i64>, align 16
  %vi4x89ABCDEF = alloca <2 x i64>, align 16
  %vxi4x89ABCDEF = alloca <2 x i64>, align 16
  %vk4x89ABCDEF = alloca <2 x i64>, align 16
  %vxk4x89ABCDEF = alloca <2 x i64>, align 16
  %vi5x01234567 = alloca <2 x i64>, align 16
  %vxi5x01234567 = alloca <2 x i64>, align 16
  %vk5x01234567 = alloca <2 x i64>, align 16
  %vxk5x01234567 = alloca <2 x i64>, align 16
  %vi5x89ABCDEF = alloca <2 x i64>, align 16
  %vxi5x89ABCDEF = alloca <2 x i64>, align 16
  %vk5x89ABCDEF = alloca <2 x i64>, align 16
  %vxk5x89ABCDEF = alloca <2 x i64>, align 16
  %vi6x01234567 = alloca <2 x i64>, align 16
  %vxi6x01234567 = alloca <2 x i64>, align 16
  %vk6x01234567 = alloca <2 x i64>, align 16
  %vxk6x01234567 = alloca <2 x i64>, align 16
  %vi6x89ABCDEF = alloca <2 x i64>, align 16
  %vxi6x89ABCDEF = alloca <2 x i64>, align 16
  %vk6x89ABCDEF = alloca <2 x i64>, align 16
  %vxk6x89ABCDEF = alloca <2 x i64>, align 16
  %vi7x01234567 = alloca <2 x i64>, align 16
  %vxi7x01234567 = alloca <2 x i64>, align 16
  %vk7x01234567 = alloca <2 x i64>, align 16
  %vxk7x01234567 = alloca <2 x i64>, align 16
  %vi7x89ABCDEF = alloca <2 x i64>, align 16
  %vxi7x89ABCDEF = alloca <2 x i64>, align 16
  %vk7x89ABCDEF = alloca <2 x i64>, align 16
  %vxk7x89ABCDEF = alloca <2 x i64>, align 16
  %vi8x01234567 = alloca <2 x i64>, align 16
  %vxi8x01234567 = alloca <2 x i64>, align 16
  %vk8x01234567 = alloca <2 x i64>, align 16
  %vxk8x01234567 = alloca <2 x i64>, align 16
  %vi8x89ABCDEF = alloca <2 x i64>, align 16
  %vxi8x89ABCDEF = alloca <2 x i64>, align 16
  %vk8x89ABCDEF = alloca <2 x i64>, align 16
  %vxk8x89ABCDEF = alloca <2 x i64>, align 16
  %vscaled0123 = alloca <4 x float>, align 16
  %vscaled4567 = alloca <4 x float>, align 16
  %vscaled89AB = alloca <4 x float>, align 16
  %vscaledCDEF = alloca <4 x float>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout89ABCDEF = alloca <2 x i64>, align 16
  %vout0123456789ABCDEF = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %k = alloca ptr, align 8
  %vacc0123383 = alloca <2 x i64>, align 16
  %vacc4567385 = alloca <2 x i64>, align 16
  %vi0x01234567388 = alloca <2 x i64>, align 16
  %vxi0x01234567390 = alloca <2 x i64>, align 16
  %vk0x01234567392 = alloca <2 x i64>, align 16
  %vxk0x01234567394 = alloca <2 x i64>, align 16
  %vprod01234567397 = alloca <2 x i64>, align 16
  %vi1x01234567404 = alloca <2 x i64>, align 16
  %vxi1x01234567406 = alloca <2 x i64>, align 16
  %vk1x01234567408 = alloca <2 x i64>, align 16
  %vxk1x01234567411 = alloca <2 x i64>, align 16
  %vi2x01234567420 = alloca <2 x i64>, align 16
  %vxi2x01234567422 = alloca <2 x i64>, align 16
  %vk2x01234567424 = alloca <2 x i64>, align 16
  %vxk2x01234567427 = alloca <2 x i64>, align 16
  %vi3x01234567436 = alloca <2 x i64>, align 16
  %vxi3x01234567438 = alloca <2 x i64>, align 16
  %vk3x01234567440 = alloca <2 x i64>, align 16
  %vxk3x01234567443 = alloca <2 x i64>, align 16
  %vi4x01234567452 = alloca <2 x i64>, align 16
  %vxi4x01234567454 = alloca <2 x i64>, align 16
  %vk4x01234567456 = alloca <2 x i64>, align 16
  %vxk4x01234567459 = alloca <2 x i64>, align 16
  %vi5x01234567468 = alloca <2 x i64>, align 16
  %vxi5x01234567470 = alloca <2 x i64>, align 16
  %vk5x01234567472 = alloca <2 x i64>, align 16
  %vxk5x01234567475 = alloca <2 x i64>, align 16
  %vi6x01234567484 = alloca <2 x i64>, align 16
  %vxi6x01234567486 = alloca <2 x i64>, align 16
  %vk6x01234567488 = alloca <2 x i64>, align 16
  %vxk6x01234567491 = alloca <2 x i64>, align 16
  %vi7x01234567500 = alloca <2 x i64>, align 16
  %vxi7x01234567502 = alloca <2 x i64>, align 16
  %vk7x01234567504 = alloca <2 x i64>, align 16
  %vxk7x01234567507 = alloca <2 x i64>, align 16
  %vi8x01234567516 = alloca <2 x i64>, align 16
  %vxi8x01234567518 = alloca <2 x i64>, align 16
  %vk8x01234567520 = alloca <2 x i64>, align 16
  %vxk8x01234567523 = alloca <2 x i64>, align 16
  %vscaled0123533 = alloca <4 x float>, align 16
  %vscaled4567535 = alloca <4 x float>, align 16
  %vscale537 = alloca <4 x float>, align 16
  %voutput_max_less_zero_point543 = alloca <4 x float>, align 16
  %voutput_zero_point552 = alloca <2 x i64>, align 16
  %vout01234567556 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
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
  br label %do.body

do.body:                                          ; preds = %do.cond602, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #5
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %1, ptr %i0, align 8, !tbaa !9
  %2 = load ptr, ptr %i0, align 8, !tbaa !9
  %3 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %2, %3
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr %i0, align 8, !tbaa !9
  %5 = ptrtoint ptr %4 to i64
  %6 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add = add i64 %5, %6
  %7 = inttoptr i64 %add to ptr
  store ptr %7, ptr %i0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #5
  %8 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  store ptr %9, ptr %i1, align 8, !tbaa !9
  %10 = load ptr, ptr %i1, align 8, !tbaa !9
  %11 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp3 = icmp ne ptr %10, %11
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end13, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %i1, align 8, !tbaa !9
  %13 = ptrtoint ptr %12 to i64
  %14 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add12 = add i64 %13, %14
  %15 = inttoptr i64 %add12 to ptr
  store ptr %15, ptr %i1, align 8, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #5
  %16 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx14, align 8, !tbaa !9
  store ptr %17, ptr %i2, align 8, !tbaa !9
  %18 = load ptr, ptr %i2, align 8, !tbaa !9
  %19 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp15 = icmp ne ptr %18, %19
  %lnot17 = xor i1 %cmp15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end25, !unpredictable !11

if.then23:                                        ; preds = %if.end13
  %20 = load ptr, ptr %i2, align 8, !tbaa !9
  %21 = ptrtoint ptr %20 to i64
  %22 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add24 = add i64 %21, %22
  %23 = inttoptr i64 %add24 to ptr
  store ptr %23, ptr %i2, align 8, !tbaa !9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #5
  %24 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx26 = getelementptr inbounds ptr, ptr %24, i64 3
  %25 = load ptr, ptr %arrayidx26, align 8, !tbaa !9
  store ptr %25, ptr %i3, align 8, !tbaa !9
  %26 = load ptr, ptr %i3, align 8, !tbaa !9
  %27 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp27 = icmp ne ptr %26, %27
  %lnot29 = xor i1 %cmp27, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end37, !unpredictable !11

if.then35:                                        ; preds = %if.end25
  %28 = load ptr, ptr %i3, align 8, !tbaa !9
  %29 = ptrtoint ptr %28 to i64
  %30 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add36 = add i64 %29, %30
  %31 = inttoptr i64 %add36 to ptr
  store ptr %31, ptr %i3, align 8, !tbaa !9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #5
  %32 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds ptr, ptr %32, i64 4
  %33 = load ptr, ptr %arrayidx38, align 8, !tbaa !9
  store ptr %33, ptr %i4, align 8, !tbaa !9
  %34 = load ptr, ptr %i4, align 8, !tbaa !9
  %35 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp39 = icmp ne ptr %34, %35
  %lnot41 = xor i1 %cmp39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %if.then47, label %if.end49, !unpredictable !11

if.then47:                                        ; preds = %if.end37
  %36 = load ptr, ptr %i4, align 8, !tbaa !9
  %37 = ptrtoint ptr %36 to i64
  %38 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add48 = add i64 %37, %38
  %39 = inttoptr i64 %add48 to ptr
  store ptr %39, ptr %i4, align 8, !tbaa !9
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #5
  %40 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx50 = getelementptr inbounds ptr, ptr %40, i64 5
  %41 = load ptr, ptr %arrayidx50, align 8, !tbaa !9
  store ptr %41, ptr %i5, align 8, !tbaa !9
  %42 = load ptr, ptr %i5, align 8, !tbaa !9
  %43 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp51 = icmp ne ptr %42, %43
  %lnot53 = xor i1 %cmp51, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.end61, !unpredictable !11

if.then59:                                        ; preds = %if.end49
  %44 = load ptr, ptr %i5, align 8, !tbaa !9
  %45 = ptrtoint ptr %44 to i64
  %46 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add60 = add i64 %45, %46
  %47 = inttoptr i64 %add60 to ptr
  store ptr %47, ptr %i5, align 8, !tbaa !9
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #5
  %48 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx62 = getelementptr inbounds ptr, ptr %48, i64 6
  %49 = load ptr, ptr %arrayidx62, align 8, !tbaa !9
  store ptr %49, ptr %i6, align 8, !tbaa !9
  %50 = load ptr, ptr %i6, align 8, !tbaa !9
  %51 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp63 = icmp ne ptr %50, %51
  %lnot65 = xor i1 %cmp63, true
  %lnot67 = xor i1 %lnot65, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %tobool70 = icmp ne i64 %conv69, 0
  br i1 %tobool70, label %if.then71, label %if.end73, !unpredictable !11

if.then71:                                        ; preds = %if.end61
  %52 = load ptr, ptr %i6, align 8, !tbaa !9
  %53 = ptrtoint ptr %52 to i64
  %54 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add72 = add i64 %53, %54
  %55 = inttoptr i64 %add72 to ptr
  store ptr %55, ptr %i6, align 8, !tbaa !9
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #5
  %56 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx74 = getelementptr inbounds ptr, ptr %56, i64 7
  %57 = load ptr, ptr %arrayidx74, align 8, !tbaa !9
  store ptr %57, ptr %i7, align 8, !tbaa !9
  %58 = load ptr, ptr %i7, align 8, !tbaa !9
  %59 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp75 = icmp ne ptr %58, %59
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %tobool82 = icmp ne i64 %conv81, 0
  br i1 %tobool82, label %if.then83, label %if.end85, !unpredictable !11

if.then83:                                        ; preds = %if.end73
  %60 = load ptr, ptr %i7, align 8, !tbaa !9
  %61 = ptrtoint ptr %60 to i64
  %62 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add84 = add i64 %61, %62
  %63 = inttoptr i64 %add84 to ptr
  store ptr %63, ptr %i7, align 8, !tbaa !9
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #5
  %64 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx86 = getelementptr inbounds ptr, ptr %64, i64 8
  %65 = load ptr, ptr %arrayidx86, align 8, !tbaa !9
  store ptr %65, ptr %i8, align 8, !tbaa !9
  %66 = load ptr, ptr %i8, align 8, !tbaa !9
  %67 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp87 = icmp ne ptr %66, %67
  %lnot89 = xor i1 %cmp87, true
  %lnot91 = xor i1 %lnot89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %tobool94 = icmp ne i64 %conv93, 0
  br i1 %tobool94, label %if.then95, label %if.end97, !unpredictable !11

if.then95:                                        ; preds = %if.end85
  %68 = load ptr, ptr %i8, align 8, !tbaa !9
  %69 = ptrtoint ptr %68 to i64
  %70 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add96 = add i64 %69, %70
  %71 = inttoptr i64 %add96 to ptr
  store ptr %71, ptr %i8, align 8, !tbaa !9
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end85
  %72 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %73 = ptrtoint ptr %72 to i64
  %74 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add98 = add i64 %73, %74
  %75 = inttoptr i64 %add98 to ptr
  store ptr %75, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  %76 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %76, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #5
  %77 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %77, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end97
  %78 = load i64, ptr %c, align 8, !tbaa !5
  %cmp99 = icmp uge i64 %78, 16
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #5
  %79 = load ptr, ptr %w, align 8, !tbaa !9
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %79)
  store <2 x i64> %call, ptr %vacc0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #5
  %80 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %80, i64 4
  %call101 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr)
  store <2 x i64> %call101, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc89AB) #5
  %81 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr102 = getelementptr inbounds i32, ptr %81, i64 8
  %call103 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr102)
  store <2 x i64> %call103, ptr %vacc89AB, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccCDEF) #5
  %82 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr104 = getelementptr inbounds i32, ptr %82, i64 12
  %call105 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr104)
  store <2 x i64> %call105, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567) #5
  %83 = load ptr, ptr %i0, align 8, !tbaa !9
  %call106 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %83)
  store <2 x i64> %call106, ptr %vi0x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567) #5
  %84 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !12
  %call107 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %84)
  store <2 x i64> %call107, ptr %vxi0x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk0x01234567) #5
  %85 = load ptr, ptr %w, align 8, !tbaa !9
  %86 = ptrtoint ptr %85 to i64
  %add108 = add i64 %86, 64
  %add109 = add i64 %add108, 0
  %87 = inttoptr i64 %add109 to ptr
  %call110 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %87)
  store <2 x i64> %call110, ptr %vk0x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk0x01234567) #5
  %88 = load <2 x i64>, ptr %vk0x01234567, align 16, !tbaa !12
  %call111 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %88)
  store <2 x i64> %call111, ptr %vxk0x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x89ABCDEF) #5
  %89 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr112 = getelementptr inbounds i8, ptr %89, i64 8
  %call113 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr112)
  store <2 x i64> %call113, ptr %vi0x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x89ABCDEF) #5
  %90 = load <2 x i64>, ptr %vi0x89ABCDEF, align 16, !tbaa !12
  %call114 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %90)
  store <2 x i64> %call114, ptr %vxi0x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk0x89ABCDEF) #5
  %91 = load ptr, ptr %w, align 8, !tbaa !9
  %92 = ptrtoint ptr %91 to i64
  %add115 = add i64 %92, 64
  %add116 = add i64 %add115, 8
  %93 = inttoptr i64 %add116 to ptr
  %call117 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %93)
  store <2 x i64> %call117, ptr %vk0x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk0x89ABCDEF) #5
  %94 = load <2 x i64>, ptr %vk0x89ABCDEF, align 16, !tbaa !12
  %call118 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %94)
  store <2 x i64> %call118, ptr %vxk0x89ABCDEF, align 16, !tbaa !12
  %95 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr119 = getelementptr inbounds i8, ptr %95, i64 16
  store ptr %add.ptr119, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod01234567) #5
  %96 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !12
  %97 = load <2 x i64>, ptr %vxk0x01234567, align 16, !tbaa !12
  %call120 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %96, <2 x i64> noundef %97)
  store <2 x i64> %call120, ptr %vprod01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod89ABCDEF) #5
  %98 = load <2 x i64>, ptr %vxi0x89ABCDEF, align 16, !tbaa !12
  %99 = load <2 x i64>, ptr %vxk0x89ABCDEF, align 16, !tbaa !12
  %call121 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %98, <2 x i64> noundef %99)
  store <2 x i64> %call121, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %100 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %101 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call122 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %101)
  %call123 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %100, <2 x i64> noundef %call122)
  store <2 x i64> %call123, ptr %vacc0123, align 16, !tbaa !12
  %102 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %103 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %104 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call124 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %103, <2 x i64> noundef %104)
  %call125 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call124, i32 noundef 16)
  %call126 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %102, <2 x i64> noundef %call125)
  store <2 x i64> %call126, ptr %vacc4567, align 16, !tbaa !12
  %105 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %106 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call127 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %106)
  %call128 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %105, <2 x i64> noundef %call127)
  store <2 x i64> %call128, ptr %vacc89AB, align 16, !tbaa !12
  %107 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %108 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %109 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call129 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %108, <2 x i64> noundef %109)
  %call130 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call129, i32 noundef 16)
  %call131 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %107, <2 x i64> noundef %call130)
  store <2 x i64> %call131, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567) #5
  %110 = load ptr, ptr %i1, align 8, !tbaa !9
  %call132 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %110)
  store <2 x i64> %call132, ptr %vi1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567) #5
  %111 = load <2 x i64>, ptr %vi1x01234567, align 16, !tbaa !12
  %call133 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %111)
  store <2 x i64> %call133, ptr %vxi1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk1x01234567) #5
  %112 = load ptr, ptr %w, align 8, !tbaa !9
  %113 = ptrtoint ptr %112 to i64
  %add134 = add i64 %113, 64
  %add135 = add i64 %add134, 16
  %114 = inttoptr i64 %add135 to ptr
  %call136 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %114)
  store <2 x i64> %call136, ptr %vk1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk1x01234567) #5
  %115 = load <2 x i64>, ptr %vk1x01234567, align 16, !tbaa !12
  %call137 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %115)
  store <2 x i64> %call137, ptr %vxk1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x89ABCDEF) #5
  %116 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr138 = getelementptr inbounds i8, ptr %116, i64 8
  %call139 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr138)
  store <2 x i64> %call139, ptr %vi1x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x89ABCDEF) #5
  %117 = load <2 x i64>, ptr %vi1x89ABCDEF, align 16, !tbaa !12
  %call140 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %117)
  store <2 x i64> %call140, ptr %vxi1x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk1x89ABCDEF) #5
  %118 = load ptr, ptr %w, align 8, !tbaa !9
  %119 = ptrtoint ptr %118 to i64
  %add141 = add i64 %119, 64
  %add142 = add i64 %add141, 24
  %120 = inttoptr i64 %add142 to ptr
  %call143 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %120)
  store <2 x i64> %call143, ptr %vk1x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk1x89ABCDEF) #5
  %121 = load <2 x i64>, ptr %vk1x89ABCDEF, align 16, !tbaa !12
  %call144 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %121)
  store <2 x i64> %call144, ptr %vxk1x89ABCDEF, align 16, !tbaa !12
  %122 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr145 = getelementptr inbounds i8, ptr %122, i64 16
  store ptr %add.ptr145, ptr %i1, align 8, !tbaa !9
  %123 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !12
  %124 = load <2 x i64>, ptr %vxk1x01234567, align 16, !tbaa !12
  %call146 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %123, <2 x i64> noundef %124)
  store <2 x i64> %call146, ptr %vprod01234567, align 16, !tbaa !12
  %125 = load <2 x i64>, ptr %vxi1x89ABCDEF, align 16, !tbaa !12
  %126 = load <2 x i64>, ptr %vxk1x89ABCDEF, align 16, !tbaa !12
  %call147 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %125, <2 x i64> noundef %126)
  store <2 x i64> %call147, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %127 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %128 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call148 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %128)
  %call149 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %127, <2 x i64> noundef %call148)
  store <2 x i64> %call149, ptr %vacc0123, align 16, !tbaa !12
  %129 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %130 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %131 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call150 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %130, <2 x i64> noundef %131)
  %call151 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call150, i32 noundef 16)
  %call152 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %129, <2 x i64> noundef %call151)
  store <2 x i64> %call152, ptr %vacc4567, align 16, !tbaa !12
  %132 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %133 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call153 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %133)
  %call154 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %132, <2 x i64> noundef %call153)
  store <2 x i64> %call154, ptr %vacc89AB, align 16, !tbaa !12
  %134 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %135 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %136 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call155 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %135, <2 x i64> noundef %136)
  %call156 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call155, i32 noundef 16)
  %call157 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %134, <2 x i64> noundef %call156)
  store <2 x i64> %call157, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567) #5
  %137 = load ptr, ptr %i2, align 8, !tbaa !9
  %call158 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %137)
  store <2 x i64> %call158, ptr %vi2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567) #5
  %138 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !12
  %call159 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %138)
  store <2 x i64> %call159, ptr %vxi2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk2x01234567) #5
  %139 = load ptr, ptr %w, align 8, !tbaa !9
  %140 = ptrtoint ptr %139 to i64
  %add160 = add i64 %140, 64
  %add161 = add i64 %add160, 32
  %141 = inttoptr i64 %add161 to ptr
  %call162 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %141)
  store <2 x i64> %call162, ptr %vk2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk2x01234567) #5
  %142 = load <2 x i64>, ptr %vk2x01234567, align 16, !tbaa !12
  %call163 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %142)
  store <2 x i64> %call163, ptr %vxk2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x89ABCDEF) #5
  %143 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr164 = getelementptr inbounds i8, ptr %143, i64 8
  %call165 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr164)
  store <2 x i64> %call165, ptr %vi2x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x89ABCDEF) #5
  %144 = load <2 x i64>, ptr %vi2x89ABCDEF, align 16, !tbaa !12
  %call166 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %144)
  store <2 x i64> %call166, ptr %vxi2x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk2x89ABCDEF) #5
  %145 = load ptr, ptr %w, align 8, !tbaa !9
  %146 = ptrtoint ptr %145 to i64
  %add167 = add i64 %146, 64
  %add168 = add i64 %add167, 40
  %147 = inttoptr i64 %add168 to ptr
  %call169 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %147)
  store <2 x i64> %call169, ptr %vk2x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk2x89ABCDEF) #5
  %148 = load <2 x i64>, ptr %vk2x89ABCDEF, align 16, !tbaa !12
  %call170 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %148)
  store <2 x i64> %call170, ptr %vxk2x89ABCDEF, align 16, !tbaa !12
  %149 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr171 = getelementptr inbounds i8, ptr %149, i64 16
  store ptr %add.ptr171, ptr %i2, align 8, !tbaa !9
  %150 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !12
  %151 = load <2 x i64>, ptr %vxk2x01234567, align 16, !tbaa !12
  %call172 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %150, <2 x i64> noundef %151)
  store <2 x i64> %call172, ptr %vprod01234567, align 16, !tbaa !12
  %152 = load <2 x i64>, ptr %vxi2x89ABCDEF, align 16, !tbaa !12
  %153 = load <2 x i64>, ptr %vxk2x89ABCDEF, align 16, !tbaa !12
  %call173 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %152, <2 x i64> noundef %153)
  store <2 x i64> %call173, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %154 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %155 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call174 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %155)
  %call175 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %154, <2 x i64> noundef %call174)
  store <2 x i64> %call175, ptr %vacc0123, align 16, !tbaa !12
  %156 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %157 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %158 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call176 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %157, <2 x i64> noundef %158)
  %call177 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call176, i32 noundef 16)
  %call178 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %156, <2 x i64> noundef %call177)
  store <2 x i64> %call178, ptr %vacc4567, align 16, !tbaa !12
  %159 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %160 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call179 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %160)
  %call180 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %159, <2 x i64> noundef %call179)
  store <2 x i64> %call180, ptr %vacc89AB, align 16, !tbaa !12
  %161 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %162 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %163 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call181 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %162, <2 x i64> noundef %163)
  %call182 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call181, i32 noundef 16)
  %call183 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %161, <2 x i64> noundef %call182)
  store <2 x i64> %call183, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567) #5
  %164 = load ptr, ptr %i3, align 8, !tbaa !9
  %call184 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %164)
  store <2 x i64> %call184, ptr %vi3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567) #5
  %165 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !12
  %call185 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %165)
  store <2 x i64> %call185, ptr %vxi3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk3x01234567) #5
  %166 = load ptr, ptr %w, align 8, !tbaa !9
  %167 = ptrtoint ptr %166 to i64
  %add186 = add i64 %167, 64
  %add187 = add i64 %add186, 48
  %168 = inttoptr i64 %add187 to ptr
  %call188 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %168)
  store <2 x i64> %call188, ptr %vk3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk3x01234567) #5
  %169 = load <2 x i64>, ptr %vk3x01234567, align 16, !tbaa !12
  %call189 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %169)
  store <2 x i64> %call189, ptr %vxk3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x89ABCDEF) #5
  %170 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr190 = getelementptr inbounds i8, ptr %170, i64 8
  %call191 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr190)
  store <2 x i64> %call191, ptr %vi3x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x89ABCDEF) #5
  %171 = load <2 x i64>, ptr %vi3x89ABCDEF, align 16, !tbaa !12
  %call192 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %171)
  store <2 x i64> %call192, ptr %vxi3x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk3x89ABCDEF) #5
  %172 = load ptr, ptr %w, align 8, !tbaa !9
  %173 = ptrtoint ptr %172 to i64
  %add193 = add i64 %173, 64
  %add194 = add i64 %add193, 56
  %174 = inttoptr i64 %add194 to ptr
  %call195 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %174)
  store <2 x i64> %call195, ptr %vk3x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk3x89ABCDEF) #5
  %175 = load <2 x i64>, ptr %vk3x89ABCDEF, align 16, !tbaa !12
  %call196 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %175)
  store <2 x i64> %call196, ptr %vxk3x89ABCDEF, align 16, !tbaa !12
  %176 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr197 = getelementptr inbounds i8, ptr %176, i64 16
  store ptr %add.ptr197, ptr %i3, align 8, !tbaa !9
  %177 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !12
  %178 = load <2 x i64>, ptr %vxk3x01234567, align 16, !tbaa !12
  %call198 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %177, <2 x i64> noundef %178)
  store <2 x i64> %call198, ptr %vprod01234567, align 16, !tbaa !12
  %179 = load <2 x i64>, ptr %vxi3x89ABCDEF, align 16, !tbaa !12
  %180 = load <2 x i64>, ptr %vxk3x89ABCDEF, align 16, !tbaa !12
  %call199 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %179, <2 x i64> noundef %180)
  store <2 x i64> %call199, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %181 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %182 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call200 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %182)
  %call201 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %181, <2 x i64> noundef %call200)
  store <2 x i64> %call201, ptr %vacc0123, align 16, !tbaa !12
  %183 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %184 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %185 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call202 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %184, <2 x i64> noundef %185)
  %call203 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call202, i32 noundef 16)
  %call204 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %183, <2 x i64> noundef %call203)
  store <2 x i64> %call204, ptr %vacc4567, align 16, !tbaa !12
  %186 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %187 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call205 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %187)
  %call206 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %186, <2 x i64> noundef %call205)
  store <2 x i64> %call206, ptr %vacc89AB, align 16, !tbaa !12
  %188 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %189 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %190 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call207 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %189, <2 x i64> noundef %190)
  %call208 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call207, i32 noundef 16)
  %call209 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %188, <2 x i64> noundef %call208)
  store <2 x i64> %call209, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567) #5
  %191 = load ptr, ptr %i4, align 8, !tbaa !9
  %call210 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %191)
  store <2 x i64> %call210, ptr %vi4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567) #5
  %192 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !12
  %call211 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %192)
  store <2 x i64> %call211, ptr %vxi4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk4x01234567) #5
  %193 = load ptr, ptr %w, align 8, !tbaa !9
  %194 = ptrtoint ptr %193 to i64
  %add212 = add i64 %194, 64
  %add213 = add i64 %add212, 64
  %195 = inttoptr i64 %add213 to ptr
  %call214 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %195)
  store <2 x i64> %call214, ptr %vk4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk4x01234567) #5
  %196 = load <2 x i64>, ptr %vk4x01234567, align 16, !tbaa !12
  %call215 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %196)
  store <2 x i64> %call215, ptr %vxk4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x89ABCDEF) #5
  %197 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr216 = getelementptr inbounds i8, ptr %197, i64 8
  %call217 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr216)
  store <2 x i64> %call217, ptr %vi4x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x89ABCDEF) #5
  %198 = load <2 x i64>, ptr %vi4x89ABCDEF, align 16, !tbaa !12
  %call218 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %198)
  store <2 x i64> %call218, ptr %vxi4x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk4x89ABCDEF) #5
  %199 = load ptr, ptr %w, align 8, !tbaa !9
  %200 = ptrtoint ptr %199 to i64
  %add219 = add i64 %200, 64
  %add220 = add i64 %add219, 72
  %201 = inttoptr i64 %add220 to ptr
  %call221 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %201)
  store <2 x i64> %call221, ptr %vk4x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk4x89ABCDEF) #5
  %202 = load <2 x i64>, ptr %vk4x89ABCDEF, align 16, !tbaa !12
  %call222 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %202)
  store <2 x i64> %call222, ptr %vxk4x89ABCDEF, align 16, !tbaa !12
  %203 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr223 = getelementptr inbounds i8, ptr %203, i64 16
  store ptr %add.ptr223, ptr %i4, align 8, !tbaa !9
  %204 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !12
  %205 = load <2 x i64>, ptr %vxk4x01234567, align 16, !tbaa !12
  %call224 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %204, <2 x i64> noundef %205)
  store <2 x i64> %call224, ptr %vprod01234567, align 16, !tbaa !12
  %206 = load <2 x i64>, ptr %vxi4x89ABCDEF, align 16, !tbaa !12
  %207 = load <2 x i64>, ptr %vxk4x89ABCDEF, align 16, !tbaa !12
  %call225 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %206, <2 x i64> noundef %207)
  store <2 x i64> %call225, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %208 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %209 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call226 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %209)
  %call227 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %208, <2 x i64> noundef %call226)
  store <2 x i64> %call227, ptr %vacc0123, align 16, !tbaa !12
  %210 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %211 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %212 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call228 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %211, <2 x i64> noundef %212)
  %call229 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call228, i32 noundef 16)
  %call230 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %210, <2 x i64> noundef %call229)
  store <2 x i64> %call230, ptr %vacc4567, align 16, !tbaa !12
  %213 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %214 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call231 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %214)
  %call232 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %213, <2 x i64> noundef %call231)
  store <2 x i64> %call232, ptr %vacc89AB, align 16, !tbaa !12
  %215 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %216 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %217 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call233 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %216, <2 x i64> noundef %217)
  %call234 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call233, i32 noundef 16)
  %call235 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %215, <2 x i64> noundef %call234)
  store <2 x i64> %call235, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567) #5
  %218 = load ptr, ptr %i5, align 8, !tbaa !9
  %call236 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %218)
  store <2 x i64> %call236, ptr %vi5x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567) #5
  %219 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !12
  %call237 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %219)
  store <2 x i64> %call237, ptr %vxi5x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk5x01234567) #5
  %220 = load ptr, ptr %w, align 8, !tbaa !9
  %221 = ptrtoint ptr %220 to i64
  %add238 = add i64 %221, 64
  %add239 = add i64 %add238, 80
  %222 = inttoptr i64 %add239 to ptr
  %call240 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %222)
  store <2 x i64> %call240, ptr %vk5x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk5x01234567) #5
  %223 = load <2 x i64>, ptr %vk5x01234567, align 16, !tbaa !12
  %call241 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %223)
  store <2 x i64> %call241, ptr %vxk5x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x89ABCDEF) #5
  %224 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr242 = getelementptr inbounds i8, ptr %224, i64 8
  %call243 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr242)
  store <2 x i64> %call243, ptr %vi5x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x89ABCDEF) #5
  %225 = load <2 x i64>, ptr %vi5x89ABCDEF, align 16, !tbaa !12
  %call244 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %225)
  store <2 x i64> %call244, ptr %vxi5x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk5x89ABCDEF) #5
  %226 = load ptr, ptr %w, align 8, !tbaa !9
  %227 = ptrtoint ptr %226 to i64
  %add245 = add i64 %227, 64
  %add246 = add i64 %add245, 88
  %228 = inttoptr i64 %add246 to ptr
  %call247 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %228)
  store <2 x i64> %call247, ptr %vk5x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk5x89ABCDEF) #5
  %229 = load <2 x i64>, ptr %vk5x89ABCDEF, align 16, !tbaa !12
  %call248 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %229)
  store <2 x i64> %call248, ptr %vxk5x89ABCDEF, align 16, !tbaa !12
  %230 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr249 = getelementptr inbounds i8, ptr %230, i64 16
  store ptr %add.ptr249, ptr %i5, align 8, !tbaa !9
  %231 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !12
  %232 = load <2 x i64>, ptr %vxk5x01234567, align 16, !tbaa !12
  %call250 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %231, <2 x i64> noundef %232)
  store <2 x i64> %call250, ptr %vprod01234567, align 16, !tbaa !12
  %233 = load <2 x i64>, ptr %vxi5x89ABCDEF, align 16, !tbaa !12
  %234 = load <2 x i64>, ptr %vxk5x89ABCDEF, align 16, !tbaa !12
  %call251 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %233, <2 x i64> noundef %234)
  store <2 x i64> %call251, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %235 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %236 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call252 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %236)
  %call253 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %235, <2 x i64> noundef %call252)
  store <2 x i64> %call253, ptr %vacc0123, align 16, !tbaa !12
  %237 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %238 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %239 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call254 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %238, <2 x i64> noundef %239)
  %call255 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call254, i32 noundef 16)
  %call256 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %237, <2 x i64> noundef %call255)
  store <2 x i64> %call256, ptr %vacc4567, align 16, !tbaa !12
  %240 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %241 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call257 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %241)
  %call258 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %240, <2 x i64> noundef %call257)
  store <2 x i64> %call258, ptr %vacc89AB, align 16, !tbaa !12
  %242 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %243 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %244 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call259 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %243, <2 x i64> noundef %244)
  %call260 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call259, i32 noundef 16)
  %call261 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %242, <2 x i64> noundef %call260)
  store <2 x i64> %call261, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567) #5
  %245 = load ptr, ptr %i6, align 8, !tbaa !9
  %call262 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %245)
  store <2 x i64> %call262, ptr %vi6x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567) #5
  %246 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !12
  %call263 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %246)
  store <2 x i64> %call263, ptr %vxi6x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk6x01234567) #5
  %247 = load ptr, ptr %w, align 8, !tbaa !9
  %248 = ptrtoint ptr %247 to i64
  %add264 = add i64 %248, 64
  %add265 = add i64 %add264, 96
  %249 = inttoptr i64 %add265 to ptr
  %call266 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %249)
  store <2 x i64> %call266, ptr %vk6x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk6x01234567) #5
  %250 = load <2 x i64>, ptr %vk6x01234567, align 16, !tbaa !12
  %call267 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %250)
  store <2 x i64> %call267, ptr %vxk6x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x89ABCDEF) #5
  %251 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr268 = getelementptr inbounds i8, ptr %251, i64 8
  %call269 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr268)
  store <2 x i64> %call269, ptr %vi6x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x89ABCDEF) #5
  %252 = load <2 x i64>, ptr %vi6x89ABCDEF, align 16, !tbaa !12
  %call270 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %252)
  store <2 x i64> %call270, ptr %vxi6x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk6x89ABCDEF) #5
  %253 = load ptr, ptr %w, align 8, !tbaa !9
  %254 = ptrtoint ptr %253 to i64
  %add271 = add i64 %254, 64
  %add272 = add i64 %add271, 104
  %255 = inttoptr i64 %add272 to ptr
  %call273 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %255)
  store <2 x i64> %call273, ptr %vk6x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk6x89ABCDEF) #5
  %256 = load <2 x i64>, ptr %vk6x89ABCDEF, align 16, !tbaa !12
  %call274 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %256)
  store <2 x i64> %call274, ptr %vxk6x89ABCDEF, align 16, !tbaa !12
  %257 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr275 = getelementptr inbounds i8, ptr %257, i64 16
  store ptr %add.ptr275, ptr %i6, align 8, !tbaa !9
  %258 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !12
  %259 = load <2 x i64>, ptr %vxk6x01234567, align 16, !tbaa !12
  %call276 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %258, <2 x i64> noundef %259)
  store <2 x i64> %call276, ptr %vprod01234567, align 16, !tbaa !12
  %260 = load <2 x i64>, ptr %vxi6x89ABCDEF, align 16, !tbaa !12
  %261 = load <2 x i64>, ptr %vxk6x89ABCDEF, align 16, !tbaa !12
  %call277 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %260, <2 x i64> noundef %261)
  store <2 x i64> %call277, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %262 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %263 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call278 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %263)
  %call279 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %262, <2 x i64> noundef %call278)
  store <2 x i64> %call279, ptr %vacc0123, align 16, !tbaa !12
  %264 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %265 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %266 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call280 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %265, <2 x i64> noundef %266)
  %call281 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call280, i32 noundef 16)
  %call282 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %264, <2 x i64> noundef %call281)
  store <2 x i64> %call282, ptr %vacc4567, align 16, !tbaa !12
  %267 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %268 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call283 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %268)
  %call284 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %267, <2 x i64> noundef %call283)
  store <2 x i64> %call284, ptr %vacc89AB, align 16, !tbaa !12
  %269 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %270 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %271 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call285 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %270, <2 x i64> noundef %271)
  %call286 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call285, i32 noundef 16)
  %call287 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %269, <2 x i64> noundef %call286)
  store <2 x i64> %call287, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi7x01234567) #5
  %272 = load ptr, ptr %i7, align 8, !tbaa !9
  %call288 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %272)
  store <2 x i64> %call288, ptr %vi7x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi7x01234567) #5
  %273 = load <2 x i64>, ptr %vi7x01234567, align 16, !tbaa !12
  %call289 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %273)
  store <2 x i64> %call289, ptr %vxi7x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk7x01234567) #5
  %274 = load ptr, ptr %w, align 8, !tbaa !9
  %275 = ptrtoint ptr %274 to i64
  %add290 = add i64 %275, 64
  %add291 = add i64 %add290, 112
  %276 = inttoptr i64 %add291 to ptr
  %call292 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %276)
  store <2 x i64> %call292, ptr %vk7x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk7x01234567) #5
  %277 = load <2 x i64>, ptr %vk7x01234567, align 16, !tbaa !12
  %call293 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %277)
  store <2 x i64> %call293, ptr %vxk7x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi7x89ABCDEF) #5
  %278 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr294 = getelementptr inbounds i8, ptr %278, i64 8
  %call295 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr294)
  store <2 x i64> %call295, ptr %vi7x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi7x89ABCDEF) #5
  %279 = load <2 x i64>, ptr %vi7x89ABCDEF, align 16, !tbaa !12
  %call296 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %279)
  store <2 x i64> %call296, ptr %vxi7x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk7x89ABCDEF) #5
  %280 = load ptr, ptr %w, align 8, !tbaa !9
  %281 = ptrtoint ptr %280 to i64
  %add297 = add i64 %281, 64
  %add298 = add i64 %add297, 120
  %282 = inttoptr i64 %add298 to ptr
  %call299 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %282)
  store <2 x i64> %call299, ptr %vk7x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk7x89ABCDEF) #5
  %283 = load <2 x i64>, ptr %vk7x89ABCDEF, align 16, !tbaa !12
  %call300 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %283)
  store <2 x i64> %call300, ptr %vxk7x89ABCDEF, align 16, !tbaa !12
  %284 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr301 = getelementptr inbounds i8, ptr %284, i64 16
  store ptr %add.ptr301, ptr %i7, align 8, !tbaa !9
  %285 = load <2 x i64>, ptr %vxi7x01234567, align 16, !tbaa !12
  %286 = load <2 x i64>, ptr %vxk7x01234567, align 16, !tbaa !12
  %call302 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %285, <2 x i64> noundef %286)
  store <2 x i64> %call302, ptr %vprod01234567, align 16, !tbaa !12
  %287 = load <2 x i64>, ptr %vxi7x89ABCDEF, align 16, !tbaa !12
  %288 = load <2 x i64>, ptr %vxk7x89ABCDEF, align 16, !tbaa !12
  %call303 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %287, <2 x i64> noundef %288)
  store <2 x i64> %call303, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %289 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %290 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call304 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %290)
  %call305 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %289, <2 x i64> noundef %call304)
  store <2 x i64> %call305, ptr %vacc0123, align 16, !tbaa !12
  %291 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %292 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %293 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call306 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %292, <2 x i64> noundef %293)
  %call307 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call306, i32 noundef 16)
  %call308 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %291, <2 x i64> noundef %call307)
  store <2 x i64> %call308, ptr %vacc4567, align 16, !tbaa !12
  %294 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %295 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call309 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %295)
  %call310 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %294, <2 x i64> noundef %call309)
  store <2 x i64> %call310, ptr %vacc89AB, align 16, !tbaa !12
  %296 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %297 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %298 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call311 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %297, <2 x i64> noundef %298)
  %call312 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call311, i32 noundef 16)
  %call313 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %296, <2 x i64> noundef %call312)
  store <2 x i64> %call313, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi8x01234567) #5
  %299 = load ptr, ptr %i8, align 8, !tbaa !9
  %call314 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %299)
  store <2 x i64> %call314, ptr %vi8x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi8x01234567) #5
  %300 = load <2 x i64>, ptr %vi8x01234567, align 16, !tbaa !12
  %call315 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %300)
  store <2 x i64> %call315, ptr %vxi8x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk8x01234567) #5
  %301 = load ptr, ptr %w, align 8, !tbaa !9
  %302 = ptrtoint ptr %301 to i64
  %add316 = add i64 %302, 64
  %add317 = add i64 %add316, 128
  %303 = inttoptr i64 %add317 to ptr
  %call318 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %303)
  store <2 x i64> %call318, ptr %vk8x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk8x01234567) #5
  %304 = load <2 x i64>, ptr %vk8x01234567, align 16, !tbaa !12
  %call319 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %304)
  store <2 x i64> %call319, ptr %vxk8x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi8x89ABCDEF) #5
  %305 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr320 = getelementptr inbounds i8, ptr %305, i64 8
  %call321 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr320)
  store <2 x i64> %call321, ptr %vi8x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi8x89ABCDEF) #5
  %306 = load <2 x i64>, ptr %vi8x89ABCDEF, align 16, !tbaa !12
  %call322 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %306)
  store <2 x i64> %call322, ptr %vxi8x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk8x89ABCDEF) #5
  %307 = load ptr, ptr %w, align 8, !tbaa !9
  %308 = ptrtoint ptr %307 to i64
  %add323 = add i64 %308, 64
  %add324 = add i64 %add323, 136
  %309 = inttoptr i64 %add324 to ptr
  %call325 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %309)
  store <2 x i64> %call325, ptr %vk8x89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk8x89ABCDEF) #5
  %310 = load <2 x i64>, ptr %vk8x89ABCDEF, align 16, !tbaa !12
  %call326 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %310)
  store <2 x i64> %call326, ptr %vxk8x89ABCDEF, align 16, !tbaa !12
  %311 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr327 = getelementptr inbounds i8, ptr %311, i64 16
  store ptr %add.ptr327, ptr %i8, align 8, !tbaa !9
  %312 = load <2 x i64>, ptr %vxi8x01234567, align 16, !tbaa !12
  %313 = load <2 x i64>, ptr %vxk8x01234567, align 16, !tbaa !12
  %call328 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %312, <2 x i64> noundef %313)
  store <2 x i64> %call328, ptr %vprod01234567, align 16, !tbaa !12
  %314 = load <2 x i64>, ptr %vxi8x89ABCDEF, align 16, !tbaa !12
  %315 = load <2 x i64>, ptr %vxk8x89ABCDEF, align 16, !tbaa !12
  %call329 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %314, <2 x i64> noundef %315)
  store <2 x i64> %call329, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %316 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %317 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call330 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %317)
  %call331 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %316, <2 x i64> noundef %call330)
  store <2 x i64> %call331, ptr %vacc0123, align 16, !tbaa !12
  %318 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %319 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %320 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !12
  %call332 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %319, <2 x i64> noundef %320)
  %call333 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call332, i32 noundef 16)
  %call334 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %318, <2 x i64> noundef %call333)
  store <2 x i64> %call334, ptr %vacc4567, align 16, !tbaa !12
  %321 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %322 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call335 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %322)
  %call336 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %321, <2 x i64> noundef %call335)
  store <2 x i64> %call336, ptr %vacc89AB, align 16, !tbaa !12
  %323 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %324 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %325 = load <2 x i64>, ptr %vprod89ABCDEF, align 16, !tbaa !12
  %call337 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %324, <2 x i64> noundef %325)
  %call338 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call337, i32 noundef 16)
  %call339 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %323, <2 x i64> noundef %call338)
  store <2 x i64> %call339, ptr %vaccCDEF, align 16, !tbaa !12
  %326 = load ptr, ptr %w, align 8, !tbaa !9
  %327 = ptrtoint ptr %326 to i64
  %add340 = add i64 %327, 64
  %add341 = add i64 %add340, 144
  %328 = inttoptr i64 %add341 to ptr
  store ptr %328, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0123) #5
  %329 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %call342 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %329)
  store <4 x float> %call342, ptr %vscaled0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled4567) #5
  %330 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %call343 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %330)
  store <4 x float> %call343, ptr %vscaled4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled89AB) #5
  %331 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %call344 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %331)
  store <4 x float> %call344, ptr %vscaled89AB, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaledCDEF) #5
  %332 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %call345 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %332)
  store <4 x float> %call345, ptr %vscaledCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #5
  %333 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.3, ptr %333, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call346 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call346, ptr %vscale, align 16, !tbaa !12
  %334 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !12
  %335 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call347 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %334, <4 x float> noundef %335)
  store <4 x float> %call347, ptr %vscaled0123, align 16, !tbaa !12
  %336 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !12
  %337 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call348 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %336, <4 x float> noundef %337)
  store <4 x float> %call348, ptr %vscaled4567, align 16, !tbaa !12
  %338 = load <4 x float>, ptr %vscaled89AB, align 16, !tbaa !12
  %339 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call349 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %338, <4 x float> noundef %339)
  store <4 x float> %call349, ptr %vscaled89AB, align 16, !tbaa !12
  %340 = load <4 x float>, ptr %vscaledCDEF, align 16, !tbaa !12
  %341 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call350 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %340, <4 x float> noundef %341)
  store <4 x float> %call350, ptr %vscaledCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  %342 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %342, i32 0, i32 1
  %arraydecay351 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call352 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay351)
  store <4 x float> %call352, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %343 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !12
  %344 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call353 = call <4 x float> @_mm_min_ps(<4 x float> noundef %343, <4 x float> noundef %344)
  store <4 x float> %call353, ptr %vscaled0123, align 16, !tbaa !12
  %345 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !12
  %346 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call354 = call <4 x float> @_mm_min_ps(<4 x float> noundef %345, <4 x float> noundef %346)
  store <4 x float> %call354, ptr %vscaled4567, align 16, !tbaa !12
  %347 = load <4 x float>, ptr %vscaled89AB, align 16, !tbaa !12
  %348 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call355 = call <4 x float> @_mm_min_ps(<4 x float> noundef %347, <4 x float> noundef %348)
  store <4 x float> %call355, ptr %vscaled89AB, align 16, !tbaa !12
  %349 = load <4 x float>, ptr %vscaledCDEF, align 16, !tbaa !12
  %350 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call356 = call <4 x float> @_mm_min_ps(<4 x float> noundef %349, <4 x float> noundef %350)
  store <4 x float> %call356, ptr %vscaledCDEF, align 16, !tbaa !12
  %351 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !12
  %call357 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %351)
  store <2 x i64> %call357, ptr %vacc0123, align 16, !tbaa !12
  %352 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !12
  %call358 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %352)
  store <2 x i64> %call358, ptr %vacc4567, align 16, !tbaa !12
  %353 = load <4 x float>, ptr %vscaled89AB, align 16, !tbaa !12
  %call359 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %353)
  store <2 x i64> %call359, ptr %vacc89AB, align 16, !tbaa !12
  %354 = load <4 x float>, ptr %vscaledCDEF, align 16, !tbaa !12
  %call360 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %354)
  store <2 x i64> %call360, ptr %vaccCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #5
  %355 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %355, i32 0, i32 2
  %arraydecay361 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call362 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay361)
  store <2 x i64> %call362, ptr %voutput_zero_point, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #5
  %356 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %357 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %call363 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %356, <2 x i64> noundef %357)
  %358 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call364 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call363, <2 x i64> noundef %358)
  store <2 x i64> %call364, ptr %vout01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout89ABCDEF) #5
  %359 = load <2 x i64>, ptr %vacc89AB, align 16, !tbaa !12
  %360 = load <2 x i64>, ptr %vaccCDEF, align 16, !tbaa !12
  %call365 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %359, <2 x i64> noundef %360)
  %361 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call366 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call365, <2 x i64> noundef %361)
  store <2 x i64> %call366, ptr %vout89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456789ABCDEF) #5
  %362 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !12
  %363 = load <2 x i64>, ptr %vout89ABCDEF, align 16, !tbaa !12
  %call367 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %362, <2 x i64> noundef %363)
  store <2 x i64> %call367, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #5
  %364 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.3, ptr %364, i32 0, i32 3
  %arraydecay368 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call369 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay368)
  store <2 x i64> %call369, ptr %voutput_min, align 16, !tbaa !12
  %365 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  %366 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call370 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %365, <2 x i64> noundef %366)
  store <2 x i64> %call370, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  %367 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %368 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %367, <2 x i64> noundef %368)
  %369 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr371 = getelementptr inbounds i8, ptr %369, i64 16
  store ptr %add.ptr371, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456789ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaledCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk8x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk8x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi8x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi8x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk7x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk7x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi7x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi7x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk6x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk6x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk5x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk5x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk4x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk4x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk3x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk3x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk2x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk2x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk1x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk1x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk0x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk0x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc89AB) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %370 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %370, 16
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %371 = load i64, ptr %c, align 8, !tbaa !5
  %cmp372 = icmp ne i64 %371, 0
  %lnot374 = xor i1 %cmp372, true
  %lnot376 = xor i1 %lnot374, true
  %lnot.ext377 = zext i1 %lnot376 to i32
  %conv378 = sext i32 %lnot.ext377 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv378, i64 0)
  %tobool379 = icmp ne i64 %expval, 0
  br i1 %tobool379, label %if.then380, label %if.end600

if.then380:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #5
  %372 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr381 = getelementptr inbounds i32, ptr %372, i64 16
  store ptr %add.ptr381, ptr %k, align 8, !tbaa !9
  br label %do.body382

do.body382:                                       ; preds = %do.cond, %if.then380
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123383) #5
  %373 = load ptr, ptr %w, align 8, !tbaa !9
  %call384 = call <2 x i64> @_mm_loadu_si128(ptr noundef %373)
  store <2 x i64> %call384, ptr %vacc0123383, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567385) #5
  %374 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr386 = getelementptr inbounds i32, ptr %374, i64 4
  %call387 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr386)
  store <2 x i64> %call387, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567388) #5
  %375 = load ptr, ptr %i0, align 8, !tbaa !9
  %call389 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %375)
  store <2 x i64> %call389, ptr %vi0x01234567388, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567390) #5
  %376 = load <2 x i64>, ptr %vi0x01234567388, align 16, !tbaa !12
  %call391 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %376)
  store <2 x i64> %call391, ptr %vxi0x01234567390, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk0x01234567392) #5
  %377 = load ptr, ptr %k, align 8, !tbaa !9
  %call393 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %377)
  store <2 x i64> %call393, ptr %vk0x01234567392, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk0x01234567394) #5
  %378 = load <2 x i64>, ptr %vk0x01234567392, align 16, !tbaa !12
  %call395 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %378)
  store <2 x i64> %call395, ptr %vxk0x01234567394, align 16, !tbaa !12
  %379 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr396 = getelementptr inbounds i8, ptr %379, i64 8
  store ptr %add.ptr396, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod01234567397) #5
  %380 = load <2 x i64>, ptr %vxi0x01234567390, align 16, !tbaa !12
  %381 = load <2 x i64>, ptr %vxk0x01234567394, align 16, !tbaa !12
  %call398 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %380, <2 x i64> noundef %381)
  store <2 x i64> %call398, ptr %vprod01234567397, align 16, !tbaa !12
  %382 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %383 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call399 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %383)
  %call400 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %382, <2 x i64> noundef %call399)
  store <2 x i64> %call400, ptr %vacc0123383, align 16, !tbaa !12
  %384 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %385 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %386 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call401 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %385, <2 x i64> noundef %386)
  %call402 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call401, i32 noundef 16)
  %call403 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %384, <2 x i64> noundef %call402)
  store <2 x i64> %call403, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567404) #5
  %387 = load ptr, ptr %i1, align 8, !tbaa !9
  %call405 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %387)
  store <2 x i64> %call405, ptr %vi1x01234567404, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567406) #5
  %388 = load <2 x i64>, ptr %vi1x01234567404, align 16, !tbaa !12
  %call407 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %388)
  store <2 x i64> %call407, ptr %vxi1x01234567406, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk1x01234567408) #5
  %389 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr409 = getelementptr inbounds i8, ptr %389, i64 16
  %call410 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr409)
  store <2 x i64> %call410, ptr %vk1x01234567408, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk1x01234567411) #5
  %390 = load <2 x i64>, ptr %vk1x01234567408, align 16, !tbaa !12
  %call412 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %390)
  store <2 x i64> %call412, ptr %vxk1x01234567411, align 16, !tbaa !12
  %391 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr413 = getelementptr inbounds i8, ptr %391, i64 8
  store ptr %add.ptr413, ptr %i1, align 8, !tbaa !9
  %392 = load <2 x i64>, ptr %vxi1x01234567406, align 16, !tbaa !12
  %393 = load <2 x i64>, ptr %vxk1x01234567411, align 16, !tbaa !12
  %call414 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %392, <2 x i64> noundef %393)
  store <2 x i64> %call414, ptr %vprod01234567397, align 16, !tbaa !12
  %394 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %395 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call415 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %395)
  %call416 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %394, <2 x i64> noundef %call415)
  store <2 x i64> %call416, ptr %vacc0123383, align 16, !tbaa !12
  %396 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %397 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %398 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call417 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %397, <2 x i64> noundef %398)
  %call418 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call417, i32 noundef 16)
  %call419 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %396, <2 x i64> noundef %call418)
  store <2 x i64> %call419, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567420) #5
  %399 = load ptr, ptr %i2, align 8, !tbaa !9
  %call421 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %399)
  store <2 x i64> %call421, ptr %vi2x01234567420, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567422) #5
  %400 = load <2 x i64>, ptr %vi2x01234567420, align 16, !tbaa !12
  %call423 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %400)
  store <2 x i64> %call423, ptr %vxi2x01234567422, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk2x01234567424) #5
  %401 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr425 = getelementptr inbounds i8, ptr %401, i64 32
  %call426 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr425)
  store <2 x i64> %call426, ptr %vk2x01234567424, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk2x01234567427) #5
  %402 = load <2 x i64>, ptr %vk2x01234567424, align 16, !tbaa !12
  %call428 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %402)
  store <2 x i64> %call428, ptr %vxk2x01234567427, align 16, !tbaa !12
  %403 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr429 = getelementptr inbounds i8, ptr %403, i64 8
  store ptr %add.ptr429, ptr %i2, align 8, !tbaa !9
  %404 = load <2 x i64>, ptr %vxi2x01234567422, align 16, !tbaa !12
  %405 = load <2 x i64>, ptr %vxk2x01234567427, align 16, !tbaa !12
  %call430 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %404, <2 x i64> noundef %405)
  store <2 x i64> %call430, ptr %vprod01234567397, align 16, !tbaa !12
  %406 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %407 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call431 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %407)
  %call432 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %406, <2 x i64> noundef %call431)
  store <2 x i64> %call432, ptr %vacc0123383, align 16, !tbaa !12
  %408 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %409 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %410 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call433 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %409, <2 x i64> noundef %410)
  %call434 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call433, i32 noundef 16)
  %call435 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %408, <2 x i64> noundef %call434)
  store <2 x i64> %call435, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567436) #5
  %411 = load ptr, ptr %i3, align 8, !tbaa !9
  %call437 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %411)
  store <2 x i64> %call437, ptr %vi3x01234567436, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567438) #5
  %412 = load <2 x i64>, ptr %vi3x01234567436, align 16, !tbaa !12
  %call439 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %412)
  store <2 x i64> %call439, ptr %vxi3x01234567438, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk3x01234567440) #5
  %413 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr441 = getelementptr inbounds i8, ptr %413, i64 48
  %call442 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr441)
  store <2 x i64> %call442, ptr %vk3x01234567440, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk3x01234567443) #5
  %414 = load <2 x i64>, ptr %vk3x01234567440, align 16, !tbaa !12
  %call444 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %414)
  store <2 x i64> %call444, ptr %vxk3x01234567443, align 16, !tbaa !12
  %415 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr445 = getelementptr inbounds i8, ptr %415, i64 8
  store ptr %add.ptr445, ptr %i3, align 8, !tbaa !9
  %416 = load <2 x i64>, ptr %vxi3x01234567438, align 16, !tbaa !12
  %417 = load <2 x i64>, ptr %vxk3x01234567443, align 16, !tbaa !12
  %call446 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %416, <2 x i64> noundef %417)
  store <2 x i64> %call446, ptr %vprod01234567397, align 16, !tbaa !12
  %418 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %419 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call447 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %419)
  %call448 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %418, <2 x i64> noundef %call447)
  store <2 x i64> %call448, ptr %vacc0123383, align 16, !tbaa !12
  %420 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %421 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %422 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call449 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %421, <2 x i64> noundef %422)
  %call450 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call449, i32 noundef 16)
  %call451 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %420, <2 x i64> noundef %call450)
  store <2 x i64> %call451, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567452) #5
  %423 = load ptr, ptr %i4, align 8, !tbaa !9
  %call453 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %423)
  store <2 x i64> %call453, ptr %vi4x01234567452, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567454) #5
  %424 = load <2 x i64>, ptr %vi4x01234567452, align 16, !tbaa !12
  %call455 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %424)
  store <2 x i64> %call455, ptr %vxi4x01234567454, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk4x01234567456) #5
  %425 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr457 = getelementptr inbounds i8, ptr %425, i64 64
  %call458 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr457)
  store <2 x i64> %call458, ptr %vk4x01234567456, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk4x01234567459) #5
  %426 = load <2 x i64>, ptr %vk4x01234567456, align 16, !tbaa !12
  %call460 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %426)
  store <2 x i64> %call460, ptr %vxk4x01234567459, align 16, !tbaa !12
  %427 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr461 = getelementptr inbounds i8, ptr %427, i64 8
  store ptr %add.ptr461, ptr %i4, align 8, !tbaa !9
  %428 = load <2 x i64>, ptr %vxi4x01234567454, align 16, !tbaa !12
  %429 = load <2 x i64>, ptr %vxk4x01234567459, align 16, !tbaa !12
  %call462 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %428, <2 x i64> noundef %429)
  store <2 x i64> %call462, ptr %vprod01234567397, align 16, !tbaa !12
  %430 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %431 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call463 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %431)
  %call464 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %430, <2 x i64> noundef %call463)
  store <2 x i64> %call464, ptr %vacc0123383, align 16, !tbaa !12
  %432 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %433 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %434 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call465 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %433, <2 x i64> noundef %434)
  %call466 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call465, i32 noundef 16)
  %call467 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %432, <2 x i64> noundef %call466)
  store <2 x i64> %call467, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567468) #5
  %435 = load ptr, ptr %i5, align 8, !tbaa !9
  %call469 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %435)
  store <2 x i64> %call469, ptr %vi5x01234567468, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567470) #5
  %436 = load <2 x i64>, ptr %vi5x01234567468, align 16, !tbaa !12
  %call471 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %436)
  store <2 x i64> %call471, ptr %vxi5x01234567470, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk5x01234567472) #5
  %437 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr473 = getelementptr inbounds i8, ptr %437, i64 80
  %call474 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr473)
  store <2 x i64> %call474, ptr %vk5x01234567472, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk5x01234567475) #5
  %438 = load <2 x i64>, ptr %vk5x01234567472, align 16, !tbaa !12
  %call476 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %438)
  store <2 x i64> %call476, ptr %vxk5x01234567475, align 16, !tbaa !12
  %439 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr477 = getelementptr inbounds i8, ptr %439, i64 8
  store ptr %add.ptr477, ptr %i5, align 8, !tbaa !9
  %440 = load <2 x i64>, ptr %vxi5x01234567470, align 16, !tbaa !12
  %441 = load <2 x i64>, ptr %vxk5x01234567475, align 16, !tbaa !12
  %call478 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %440, <2 x i64> noundef %441)
  store <2 x i64> %call478, ptr %vprod01234567397, align 16, !tbaa !12
  %442 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %443 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call479 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %443)
  %call480 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %442, <2 x i64> noundef %call479)
  store <2 x i64> %call480, ptr %vacc0123383, align 16, !tbaa !12
  %444 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %445 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %446 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call481 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %445, <2 x i64> noundef %446)
  %call482 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call481, i32 noundef 16)
  %call483 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %444, <2 x i64> noundef %call482)
  store <2 x i64> %call483, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567484) #5
  %447 = load ptr, ptr %i6, align 8, !tbaa !9
  %call485 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %447)
  store <2 x i64> %call485, ptr %vi6x01234567484, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567486) #5
  %448 = load <2 x i64>, ptr %vi6x01234567484, align 16, !tbaa !12
  %call487 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %448)
  store <2 x i64> %call487, ptr %vxi6x01234567486, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk6x01234567488) #5
  %449 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr489 = getelementptr inbounds i8, ptr %449, i64 96
  %call490 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr489)
  store <2 x i64> %call490, ptr %vk6x01234567488, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk6x01234567491) #5
  %450 = load <2 x i64>, ptr %vk6x01234567488, align 16, !tbaa !12
  %call492 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %450)
  store <2 x i64> %call492, ptr %vxk6x01234567491, align 16, !tbaa !12
  %451 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr493 = getelementptr inbounds i8, ptr %451, i64 8
  store ptr %add.ptr493, ptr %i6, align 8, !tbaa !9
  %452 = load <2 x i64>, ptr %vxi6x01234567486, align 16, !tbaa !12
  %453 = load <2 x i64>, ptr %vxk6x01234567491, align 16, !tbaa !12
  %call494 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %452, <2 x i64> noundef %453)
  store <2 x i64> %call494, ptr %vprod01234567397, align 16, !tbaa !12
  %454 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %455 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call495 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %455)
  %call496 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %454, <2 x i64> noundef %call495)
  store <2 x i64> %call496, ptr %vacc0123383, align 16, !tbaa !12
  %456 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %457 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %458 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call497 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %457, <2 x i64> noundef %458)
  %call498 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call497, i32 noundef 16)
  %call499 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %456, <2 x i64> noundef %call498)
  store <2 x i64> %call499, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi7x01234567500) #5
  %459 = load ptr, ptr %i7, align 8, !tbaa !9
  %call501 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %459)
  store <2 x i64> %call501, ptr %vi7x01234567500, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi7x01234567502) #5
  %460 = load <2 x i64>, ptr %vi7x01234567500, align 16, !tbaa !12
  %call503 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %460)
  store <2 x i64> %call503, ptr %vxi7x01234567502, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk7x01234567504) #5
  %461 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr505 = getelementptr inbounds i8, ptr %461, i64 112
  %call506 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr505)
  store <2 x i64> %call506, ptr %vk7x01234567504, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk7x01234567507) #5
  %462 = load <2 x i64>, ptr %vk7x01234567504, align 16, !tbaa !12
  %call508 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %462)
  store <2 x i64> %call508, ptr %vxk7x01234567507, align 16, !tbaa !12
  %463 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr509 = getelementptr inbounds i8, ptr %463, i64 8
  store ptr %add.ptr509, ptr %i7, align 8, !tbaa !9
  %464 = load <2 x i64>, ptr %vxi7x01234567502, align 16, !tbaa !12
  %465 = load <2 x i64>, ptr %vxk7x01234567507, align 16, !tbaa !12
  %call510 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %464, <2 x i64> noundef %465)
  store <2 x i64> %call510, ptr %vprod01234567397, align 16, !tbaa !12
  %466 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %467 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call511 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %467)
  %call512 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %466, <2 x i64> noundef %call511)
  store <2 x i64> %call512, ptr %vacc0123383, align 16, !tbaa !12
  %468 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %469 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %470 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call513 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %469, <2 x i64> noundef %470)
  %call514 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call513, i32 noundef 16)
  %call515 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %468, <2 x i64> noundef %call514)
  store <2 x i64> %call515, ptr %vacc4567385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi8x01234567516) #5
  %471 = load ptr, ptr %i8, align 8, !tbaa !9
  %call517 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %471)
  store <2 x i64> %call517, ptr %vi8x01234567516, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi8x01234567518) #5
  %472 = load <2 x i64>, ptr %vi8x01234567516, align 16, !tbaa !12
  %call519 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %472)
  store <2 x i64> %call519, ptr %vxi8x01234567518, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk8x01234567520) #5
  %473 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr521 = getelementptr inbounds i8, ptr %473, i64 128
  %call522 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr521)
  store <2 x i64> %call522, ptr %vk8x01234567520, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk8x01234567523) #5
  %474 = load <2 x i64>, ptr %vk8x01234567520, align 16, !tbaa !12
  %call524 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %474)
  store <2 x i64> %call524, ptr %vxk8x01234567523, align 16, !tbaa !12
  %475 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr525 = getelementptr inbounds i8, ptr %475, i64 8
  store ptr %add.ptr525, ptr %i8, align 8, !tbaa !9
  %476 = load <2 x i64>, ptr %vxi8x01234567518, align 16, !tbaa !12
  %477 = load <2 x i64>, ptr %vxk8x01234567523, align 16, !tbaa !12
  %call526 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %476, <2 x i64> noundef %477)
  store <2 x i64> %call526, ptr %vprod01234567397, align 16, !tbaa !12
  %478 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %479 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call527 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %479)
  %call528 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %478, <2 x i64> noundef %call527)
  store <2 x i64> %call528, ptr %vacc0123383, align 16, !tbaa !12
  %480 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %481 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %482 = load <2 x i64>, ptr %vprod01234567397, align 16, !tbaa !12
  %call529 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %481, <2 x i64> noundef %482)
  %call530 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call529, i32 noundef 16)
  %call531 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %480, <2 x i64> noundef %call530)
  store <2 x i64> %call531, ptr %vacc4567385, align 16, !tbaa !12
  %483 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr532 = getelementptr inbounds i8, ptr %483, i64 8
  store ptr %add.ptr532, ptr %k, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0123533) #5
  %484 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %call534 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %484)
  store <4 x float> %call534, ptr %vscaled0123533, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled4567535) #5
  %485 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %call536 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %485)
  store <4 x float> %call536, ptr %vscaled4567535, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale537) #5
  %486 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale538 = getelementptr inbounds %struct.anon.3, ptr %486, i32 0, i32 0
  %arraydecay539 = getelementptr inbounds [4 x float], ptr %scale538, i64 0, i64 0
  %call540 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay539)
  store <4 x float> %call540, ptr %vscale537, align 16, !tbaa !12
  %487 = load <4 x float>, ptr %vscaled0123533, align 16, !tbaa !12
  %488 = load <4 x float>, ptr %vscale537, align 16, !tbaa !12
  %call541 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %487, <4 x float> noundef %488)
  store <4 x float> %call541, ptr %vscaled0123533, align 16, !tbaa !12
  %489 = load <4 x float>, ptr %vscaled4567535, align 16, !tbaa !12
  %490 = load <4 x float>, ptr %vscale537, align 16, !tbaa !12
  %call542 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %489, <4 x float> noundef %490)
  store <4 x float> %call542, ptr %vscaled4567535, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point543) #5
  %491 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point544 = getelementptr inbounds %struct.anon.3, ptr %491, i32 0, i32 1
  %arraydecay545 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point544, i64 0, i64 0
  %call546 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay545)
  store <4 x float> %call546, ptr %voutput_max_less_zero_point543, align 16, !tbaa !12
  %492 = load <4 x float>, ptr %vscaled0123533, align 16, !tbaa !12
  %493 = load <4 x float>, ptr %voutput_max_less_zero_point543, align 16, !tbaa !12
  %call547 = call <4 x float> @_mm_min_ps(<4 x float> noundef %492, <4 x float> noundef %493)
  store <4 x float> %call547, ptr %vscaled0123533, align 16, !tbaa !12
  %494 = load <4 x float>, ptr %vscaled4567535, align 16, !tbaa !12
  %495 = load <4 x float>, ptr %voutput_max_less_zero_point543, align 16, !tbaa !12
  %call548 = call <4 x float> @_mm_min_ps(<4 x float> noundef %494, <4 x float> noundef %495)
  store <4 x float> %call548, ptr %vscaled4567535, align 16, !tbaa !12
  %496 = load <4 x float>, ptr %vscaled0123533, align 16, !tbaa !12
  %call549 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %496)
  store <2 x i64> %call549, ptr %vacc0123383, align 16, !tbaa !12
  %497 = load <4 x float>, ptr %vscaled4567535, align 16, !tbaa !12
  %call550 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %497)
  store <2 x i64> %call550, ptr %vacc4567385, align 16, !tbaa !12
  %498 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr551 = getelementptr inbounds i32, ptr %498, i64 8
  store ptr %add.ptr551, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point552) #5
  %499 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point553 = getelementptr inbounds %struct.anon.3, ptr %499, i32 0, i32 2
  %arraydecay554 = getelementptr inbounds [8 x i16], ptr %output_zero_point553, i64 0, i64 0
  %call555 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay554)
  store <2 x i64> %call555, ptr %voutput_zero_point552, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567556) #5
  %500 = load <2 x i64>, ptr %vacc0123383, align 16, !tbaa !12
  %501 = load <2 x i64>, ptr %vacc4567385, align 16, !tbaa !12
  %call557 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %500, <2 x i64> noundef %501)
  %502 = load <2 x i64>, ptr %voutput_zero_point552, align 16, !tbaa !12
  %call558 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call557, <2 x i64> noundef %502)
  store <2 x i64> %call558, ptr %vout01234567556, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #5
  %503 = load <2 x i64>, ptr %vout01234567556, align 16, !tbaa !12
  %504 = load <2 x i64>, ptr %vout01234567556, align 16, !tbaa !12
  %call559 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %503, <2 x i64> noundef %504)
  store <2 x i64> %call559, ptr %vout0123456701234567, align 16, !tbaa !12
  %505 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  %506 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min560 = getelementptr inbounds %struct.anon.3, ptr %506, i32 0, i32 3
  %arraydecay561 = getelementptr inbounds [16 x i8], ptr %output_min560, i64 0, i64 0
  %call562 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay561)
  %call563 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %505, <2 x i64> noundef %call562)
  store <2 x i64> %call563, ptr %vout0123456701234567, align 16, !tbaa !12
  %507 = load i64, ptr %c, align 8, !tbaa !5
  %cmp564 = icmp uge i64 %507, 8
  %lnot566 = xor i1 %cmp564, true
  %lnot568 = xor i1 %lnot566, true
  %lnot.ext569 = zext i1 %lnot568 to i32
  %conv570 = sext i32 %lnot.ext569 to i64
  %expval571 = call i64 @llvm.expect.i64(i64 %conv570, i64 1)
  %tobool572 = icmp ne i64 %expval571, 0
  br i1 %tobool572, label %if.then573, label %if.else

if.then573:                                       ; preds = %do.body382
  %508 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %509 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %508, <2 x i64> noundef %509)
  %510 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr574 = getelementptr inbounds i8, ptr %510, i64 8
  store ptr %add.ptr574, ptr %output.addr, align 8, !tbaa !9
  %511 = load i64, ptr %c, align 8, !tbaa !5
  %sub575 = sub i64 %511, 8
  store i64 %sub575, ptr %c, align 8, !tbaa !5
  br label %if.end597

if.else:                                          ; preds = %do.body382
  %512 = load i64, ptr %c, align 8, !tbaa !5
  %and = and i64 %512, 4
  %tobool576 = icmp ne i64 %and, 0
  br i1 %tobool576, label %if.then577, label %if.end581

if.then577:                                       ; preds = %if.else
  %513 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  %call578 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %513)
  %514 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call578, ptr %514, align 4, !tbaa !15
  %515 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  %call579 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %515, i32 noundef 32)
  store <2 x i64> %call579, ptr %vout0123456701234567, align 16, !tbaa !12
  %516 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr580 = getelementptr inbounds i8, ptr %516, i64 4
  store ptr %add.ptr580, ptr %output.addr, align 8, !tbaa !9
  br label %if.end581

if.end581:                                        ; preds = %if.then577, %if.else
  %517 = load i64, ptr %c, align 8, !tbaa !5
  %and582 = and i64 %517, 2
  %tobool583 = icmp ne i64 %and582, 0
  br i1 %tobool583, label %if.then584, label %if.end589

if.then584:                                       ; preds = %if.end581
  %518 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  %519 = bitcast <2 x i64> %518 to <8 x i16>
  %520 = extractelement <8 x i16> %519, i64 0
  %conv585 = zext i16 %520 to i32
  %conv586 = trunc i32 %conv585 to i16
  %521 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv586, ptr %521, align 2, !tbaa !17
  %522 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  %call587 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %522, i32 noundef 16)
  store <2 x i64> %call587, ptr %vout0123456701234567, align 16, !tbaa !12
  %523 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr588 = getelementptr inbounds i8, ptr %523, i64 2
  store ptr %add.ptr588, ptr %output.addr, align 8, !tbaa !9
  br label %if.end589

if.end589:                                        ; preds = %if.then584, %if.end581
  %524 = load i64, ptr %c, align 8, !tbaa !5
  %and590 = and i64 %524, 1
  %tobool591 = icmp ne i64 %and590, 0
  br i1 %tobool591, label %if.then592, label %if.end596

if.then592:                                       ; preds = %if.end589
  %525 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  %526 = bitcast <2 x i64> %525 to <16 x i8>
  %527 = extractelement <16 x i8> %526, i64 0
  %conv593 = zext i8 %527 to i32
  %conv594 = trunc i32 %conv593 to i8
  %528 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv594, ptr %528, align 1, !tbaa !12
  %529 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr595 = getelementptr inbounds i8, ptr %529, i64 1
  store ptr %add.ptr595, ptr %output.addr, align 8, !tbaa !9
  br label %if.end596

if.end596:                                        ; preds = %if.then592, %if.end589
  store i64 0, ptr %c, align 8, !tbaa !5
  br label %if.end597

if.end597:                                        ; preds = %if.end596, %if.then573
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567556) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point552) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point543) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale537) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled4567535) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0123533) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk8x01234567523) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk8x01234567520) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi8x01234567518) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi8x01234567516) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk7x01234567507) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk7x01234567504) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi7x01234567502) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi7x01234567500) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk6x01234567491) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk6x01234567488) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567486) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567484) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk5x01234567475) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk5x01234567472) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567470) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567468) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk4x01234567459) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk4x01234567456) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567454) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567452) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk3x01234567443) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk3x01234567440) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567438) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567436) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk2x01234567427) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk2x01234567424) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567422) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567420) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk1x01234567411) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk1x01234567408) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567406) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567404) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod01234567397) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk0x01234567394) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk0x01234567392) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567390) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567388) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567385) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123383) #5
  br label %do.cond

do.cond:                                          ; preds = %if.end597
  %530 = load i64, ptr %c, align 8, !tbaa !5
  %cmp598 = icmp ne i64 %530, 0
  br i1 %cmp598, label %do.body382, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #5
  br label %if.end600

if.end600:                                        ; preds = %do.end, %for.end
  %531 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %532 = ptrtoint ptr %531 to i64
  %533 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add601 = add i64 %532, %533
  %534 = inttoptr i64 %add601 to ptr
  store ptr %534, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #5
  br label %do.cond602

do.cond602:                                       ; preds = %if.end600
  %535 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %535, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp603 = icmp ne i64 %dec, 0
  br i1 %cmp603, label %do.body, label %do.end605, !llvm.loop !20

do.end605:                                        ; preds = %do.cond602
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #2 {
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
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %mul = mul <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %mul to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %conv = sext <4 x i16> %shuffle to <4 x i32>
  %4 = bitcast <4 x i32> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !12
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
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
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #2 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !12
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #2 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #2 {
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
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !12
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !12
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}

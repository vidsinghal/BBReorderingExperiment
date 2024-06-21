; ModuleID = 'samples/624.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-dwconv/gen/up8x9-minmax-fp32-sse2-mul16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x float], [4 x float], [8 x i16], [8 x i16] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse2_mul16(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vi0x01234567 = alloca <2 x i64>, align 16
  %vk0x01234567 = alloca <2 x i64>, align 16
  %vxi0x01234567 = alloca <2 x i64>, align 16
  %vxk0x01234567 = alloca <2 x i64>, align 16
  %vprod0x01234567lo = alloca <2 x i64>, align 16
  %vprod0x01234567hi = alloca <2 x i64>, align 16
  %vi1x01234567 = alloca <2 x i64>, align 16
  %vk1x01234567 = alloca <2 x i64>, align 16
  %vxi1x01234567 = alloca <2 x i64>, align 16
  %vxk1x01234567 = alloca <2 x i64>, align 16
  %vprod1x01234567lo = alloca <2 x i64>, align 16
  %vprod1x01234567hi = alloca <2 x i64>, align 16
  %vi2x01234567 = alloca <2 x i64>, align 16
  %vk2x01234567 = alloca <2 x i64>, align 16
  %vxi2x01234567 = alloca <2 x i64>, align 16
  %vxk2x01234567 = alloca <2 x i64>, align 16
  %vprod2x01234567lo = alloca <2 x i64>, align 16
  %vprod2x01234567hi = alloca <2 x i64>, align 16
  %vi3x01234567 = alloca <2 x i64>, align 16
  %vk3x01234567 = alloca <2 x i64>, align 16
  %vxi3x01234567 = alloca <2 x i64>, align 16
  %vxk3x01234567 = alloca <2 x i64>, align 16
  %vprod3x01234567lo = alloca <2 x i64>, align 16
  %vprod3x01234567hi = alloca <2 x i64>, align 16
  %vi4x01234567 = alloca <2 x i64>, align 16
  %vk4x01234567 = alloca <2 x i64>, align 16
  %vxi4x01234567 = alloca <2 x i64>, align 16
  %vxk4x01234567 = alloca <2 x i64>, align 16
  %vprod4x01234567lo = alloca <2 x i64>, align 16
  %vprod4x01234567hi = alloca <2 x i64>, align 16
  %vi5x01234567 = alloca <2 x i64>, align 16
  %vk5x01234567 = alloca <2 x i64>, align 16
  %vxi5x01234567 = alloca <2 x i64>, align 16
  %vxk5x01234567 = alloca <2 x i64>, align 16
  %vprod5x01234567lo = alloca <2 x i64>, align 16
  %vprod5x01234567hi = alloca <2 x i64>, align 16
  %vi6x01234567 = alloca <2 x i64>, align 16
  %vk6x01234567 = alloca <2 x i64>, align 16
  %vxi6x01234567 = alloca <2 x i64>, align 16
  %vxk6x01234567 = alloca <2 x i64>, align 16
  %vprod6x01234567lo = alloca <2 x i64>, align 16
  %vprod6x01234567hi = alloca <2 x i64>, align 16
  %vi7x01234567 = alloca <2 x i64>, align 16
  %vk7x01234567 = alloca <2 x i64>, align 16
  %vxi7x01234567 = alloca <2 x i64>, align 16
  %vxk7x01234567 = alloca <2 x i64>, align 16
  %vprod7x01234567lo = alloca <2 x i64>, align 16
  %vprod7x01234567hi = alloca <2 x i64>, align 16
  %vi8x01234567 = alloca <2 x i64>, align 16
  %vk8x01234567 = alloca <2 x i64>, align 16
  %vxi8x01234567 = alloca <2 x i64>, align 16
  %vxk8x01234567 = alloca <2 x i64>, align 16
  %vprod8x01234567lo = alloca <2 x i64>, align 16
  %vprod8x01234567hi = alloca <2 x i64>, align 16
  %vscaled0123 = alloca <4 x float>, align 16
  %vscaled4567 = alloca <4 x float>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %vacc0123268 = alloca <2 x i64>, align 16
  %vacc4567270 = alloca <2 x i64>, align 16
  %vi0x01234567273 = alloca <2 x i64>, align 16
  %vk0x01234567275 = alloca <2 x i64>, align 16
  %vxi0x01234567279 = alloca <2 x i64>, align 16
  %vxk0x01234567282 = alloca <2 x i64>, align 16
  %vprod0x01234567lo285 = alloca <2 x i64>, align 16
  %vprod0x01234567hi287 = alloca <2 x i64>, align 16
  %vi1x01234567293 = alloca <2 x i64>, align 16
  %vk1x01234567295 = alloca <2 x i64>, align 16
  %vxi1x01234567299 = alloca <2 x i64>, align 16
  %vxk1x01234567302 = alloca <2 x i64>, align 16
  %vprod1x01234567lo305 = alloca <2 x i64>, align 16
  %vprod1x01234567hi307 = alloca <2 x i64>, align 16
  %vi2x01234567313 = alloca <2 x i64>, align 16
  %vk2x01234567315 = alloca <2 x i64>, align 16
  %vxi2x01234567319 = alloca <2 x i64>, align 16
  %vxk2x01234567322 = alloca <2 x i64>, align 16
  %vprod2x01234567lo325 = alloca <2 x i64>, align 16
  %vprod2x01234567hi327 = alloca <2 x i64>, align 16
  %vi3x01234567333 = alloca <2 x i64>, align 16
  %vk3x01234567335 = alloca <2 x i64>, align 16
  %vxi3x01234567339 = alloca <2 x i64>, align 16
  %vxk3x01234567342 = alloca <2 x i64>, align 16
  %vprod3x01234567lo345 = alloca <2 x i64>, align 16
  %vprod3x01234567hi347 = alloca <2 x i64>, align 16
  %vi4x01234567353 = alloca <2 x i64>, align 16
  %vk4x01234567355 = alloca <2 x i64>, align 16
  %vxi4x01234567359 = alloca <2 x i64>, align 16
  %vxk4x01234567362 = alloca <2 x i64>, align 16
  %vprod4x01234567lo365 = alloca <2 x i64>, align 16
  %vprod4x01234567hi367 = alloca <2 x i64>, align 16
  %vi5x01234567373 = alloca <2 x i64>, align 16
  %vk5x01234567375 = alloca <2 x i64>, align 16
  %vxi5x01234567379 = alloca <2 x i64>, align 16
  %vxk5x01234567382 = alloca <2 x i64>, align 16
  %vprod5x01234567lo385 = alloca <2 x i64>, align 16
  %vprod5x01234567hi387 = alloca <2 x i64>, align 16
  %vi6x01234567393 = alloca <2 x i64>, align 16
  %vk6x01234567395 = alloca <2 x i64>, align 16
  %vxi6x01234567399 = alloca <2 x i64>, align 16
  %vxk6x01234567402 = alloca <2 x i64>, align 16
  %vprod6x01234567lo405 = alloca <2 x i64>, align 16
  %vprod6x01234567hi407 = alloca <2 x i64>, align 16
  %vi7x01234567413 = alloca <2 x i64>, align 16
  %vk7x01234567415 = alloca <2 x i64>, align 16
  %vxi7x01234567419 = alloca <2 x i64>, align 16
  %vxk7x01234567422 = alloca <2 x i64>, align 16
  %vprod7x01234567lo425 = alloca <2 x i64>, align 16
  %vprod7x01234567hi427 = alloca <2 x i64>, align 16
  %vi8x01234567433 = alloca <2 x i64>, align 16
  %vk8x01234567435 = alloca <2 x i64>, align 16
  %vxi8x01234567439 = alloca <2 x i64>, align 16
  %vxk8x01234567442 = alloca <2 x i64>, align 16
  %vprod8x01234567lo445 = alloca <2 x i64>, align 16
  %vprod8x01234567hi447 = alloca <2 x i64>, align 16
  %vscaled0123453 = alloca <4 x float>, align 16
  %vscaled4567455 = alloca <4 x float>, align 16
  %vscale457 = alloca <4 x float>, align 16
  %voutput_max_less_zero_point463 = alloca <4 x float>, align 16
  %voutput_zero_point471 = alloca <2 x i64>, align 16
  %vout01234567475 = alloca <2 x i64>, align 16
  %vout0123456701234567482 = alloca <2 x i64>, align 16
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

do.body:                                          ; preds = %do.cond, %entry
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
  %cmp99 = icmp uge i64 %78, 8
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567) #5
  %81 = load ptr, ptr %i0, align 8, !tbaa !9
  %call102 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %81)
  store <2 x i64> %call102, ptr %vi0x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk0x01234567) #5
  %82 = load ptr, ptr %w, align 8, !tbaa !9
  %83 = ptrtoint ptr %82 to i64
  %add103 = add i64 %83, 32
  %add104 = add i64 %add103, 0
  %84 = inttoptr i64 %add104 to ptr
  %call105 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %84)
  store <2 x i64> %call105, ptr %vk0x01234567, align 16, !tbaa !12
  %85 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr106 = getelementptr inbounds i8, ptr %85, i64 8
  store ptr %add.ptr106, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567) #5
  %86 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !12
  %87 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !12
  %call107 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %86, <2 x i64> noundef %87)
  %call108 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call107, i32 noundef 8)
  store <2 x i64> %call108, ptr %vxi0x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk0x01234567) #5
  %88 = load <2 x i64>, ptr %vk0x01234567, align 16, !tbaa !12
  %89 = load <2 x i64>, ptr %vk0x01234567, align 16, !tbaa !12
  %call109 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %88, <2 x i64> noundef %89)
  %call110 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call109, i32 noundef 8)
  store <2 x i64> %call110, ptr %vxk0x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x01234567lo) #5
  %90 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !12
  %91 = load <2 x i64>, ptr %vxk0x01234567, align 16, !tbaa !12
  %call111 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %90, <2 x i64> noundef %91)
  store <2 x i64> %call111, ptr %vprod0x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x01234567hi) #5
  %92 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !12
  %93 = load <2 x i64>, ptr %vxk0x01234567, align 16, !tbaa !12
  %call112 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %92, <2 x i64> noundef %93)
  store <2 x i64> %call112, ptr %vprod0x01234567hi, align 16, !tbaa !12
  %94 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %95 = load <2 x i64>, ptr %vprod0x01234567lo, align 16, !tbaa !12
  %96 = load <2 x i64>, ptr %vprod0x01234567hi, align 16, !tbaa !12
  %call113 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %95, <2 x i64> noundef %96)
  %call114 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %94, <2 x i64> noundef %call113)
  store <2 x i64> %call114, ptr %vacc0123, align 16, !tbaa !12
  %97 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %98 = load <2 x i64>, ptr %vprod0x01234567lo, align 16, !tbaa !12
  %99 = load <2 x i64>, ptr %vprod0x01234567hi, align 16, !tbaa !12
  %call115 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %98, <2 x i64> noundef %99)
  %call116 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %97, <2 x i64> noundef %call115)
  store <2 x i64> %call116, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567) #5
  %100 = load ptr, ptr %i1, align 8, !tbaa !9
  %call117 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %100)
  store <2 x i64> %call117, ptr %vi1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk1x01234567) #5
  %101 = load ptr, ptr %w, align 8, !tbaa !9
  %102 = ptrtoint ptr %101 to i64
  %add118 = add i64 %102, 32
  %add119 = add i64 %add118, 8
  %103 = inttoptr i64 %add119 to ptr
  %call120 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %103)
  store <2 x i64> %call120, ptr %vk1x01234567, align 16, !tbaa !12
  %104 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr121 = getelementptr inbounds i8, ptr %104, i64 8
  store ptr %add.ptr121, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567) #5
  %105 = load <2 x i64>, ptr %vi1x01234567, align 16, !tbaa !12
  %106 = load <2 x i64>, ptr %vi1x01234567, align 16, !tbaa !12
  %call122 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %105, <2 x i64> noundef %106)
  %call123 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call122, i32 noundef 8)
  store <2 x i64> %call123, ptr %vxi1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk1x01234567) #5
  %107 = load <2 x i64>, ptr %vk1x01234567, align 16, !tbaa !12
  %108 = load <2 x i64>, ptr %vk1x01234567, align 16, !tbaa !12
  %call124 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %107, <2 x i64> noundef %108)
  %call125 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call124, i32 noundef 8)
  store <2 x i64> %call125, ptr %vxk1x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x01234567lo) #5
  %109 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !12
  %110 = load <2 x i64>, ptr %vxk1x01234567, align 16, !tbaa !12
  %call126 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %109, <2 x i64> noundef %110)
  store <2 x i64> %call126, ptr %vprod1x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x01234567hi) #5
  %111 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !12
  %112 = load <2 x i64>, ptr %vxk1x01234567, align 16, !tbaa !12
  %call127 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %111, <2 x i64> noundef %112)
  store <2 x i64> %call127, ptr %vprod1x01234567hi, align 16, !tbaa !12
  %113 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %114 = load <2 x i64>, ptr %vprod1x01234567lo, align 16, !tbaa !12
  %115 = load <2 x i64>, ptr %vprod1x01234567hi, align 16, !tbaa !12
  %call128 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %114, <2 x i64> noundef %115)
  %call129 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %113, <2 x i64> noundef %call128)
  store <2 x i64> %call129, ptr %vacc0123, align 16, !tbaa !12
  %116 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %117 = load <2 x i64>, ptr %vprod1x01234567lo, align 16, !tbaa !12
  %118 = load <2 x i64>, ptr %vprod1x01234567hi, align 16, !tbaa !12
  %call130 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %117, <2 x i64> noundef %118)
  %call131 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %116, <2 x i64> noundef %call130)
  store <2 x i64> %call131, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567) #5
  %119 = load ptr, ptr %i2, align 8, !tbaa !9
  %call132 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %119)
  store <2 x i64> %call132, ptr %vi2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk2x01234567) #5
  %120 = load ptr, ptr %w, align 8, !tbaa !9
  %121 = ptrtoint ptr %120 to i64
  %add133 = add i64 %121, 32
  %add134 = add i64 %add133, 16
  %122 = inttoptr i64 %add134 to ptr
  %call135 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %122)
  store <2 x i64> %call135, ptr %vk2x01234567, align 16, !tbaa !12
  %123 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr136 = getelementptr inbounds i8, ptr %123, i64 8
  store ptr %add.ptr136, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567) #5
  %124 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !12
  %125 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !12
  %call137 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %124, <2 x i64> noundef %125)
  %call138 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call137, i32 noundef 8)
  store <2 x i64> %call138, ptr %vxi2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk2x01234567) #5
  %126 = load <2 x i64>, ptr %vk2x01234567, align 16, !tbaa !12
  %127 = load <2 x i64>, ptr %vk2x01234567, align 16, !tbaa !12
  %call139 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %126, <2 x i64> noundef %127)
  %call140 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call139, i32 noundef 8)
  store <2 x i64> %call140, ptr %vxk2x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x01234567lo) #5
  %128 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !12
  %129 = load <2 x i64>, ptr %vxk2x01234567, align 16, !tbaa !12
  %call141 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %128, <2 x i64> noundef %129)
  store <2 x i64> %call141, ptr %vprod2x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x01234567hi) #5
  %130 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !12
  %131 = load <2 x i64>, ptr %vxk2x01234567, align 16, !tbaa !12
  %call142 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %130, <2 x i64> noundef %131)
  store <2 x i64> %call142, ptr %vprod2x01234567hi, align 16, !tbaa !12
  %132 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %133 = load <2 x i64>, ptr %vprod2x01234567lo, align 16, !tbaa !12
  %134 = load <2 x i64>, ptr %vprod2x01234567hi, align 16, !tbaa !12
  %call143 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %133, <2 x i64> noundef %134)
  %call144 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %132, <2 x i64> noundef %call143)
  store <2 x i64> %call144, ptr %vacc0123, align 16, !tbaa !12
  %135 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %136 = load <2 x i64>, ptr %vprod2x01234567lo, align 16, !tbaa !12
  %137 = load <2 x i64>, ptr %vprod2x01234567hi, align 16, !tbaa !12
  %call145 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %136, <2 x i64> noundef %137)
  %call146 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %135, <2 x i64> noundef %call145)
  store <2 x i64> %call146, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567) #5
  %138 = load ptr, ptr %i3, align 8, !tbaa !9
  %call147 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %138)
  store <2 x i64> %call147, ptr %vi3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk3x01234567) #5
  %139 = load ptr, ptr %w, align 8, !tbaa !9
  %140 = ptrtoint ptr %139 to i64
  %add148 = add i64 %140, 32
  %add149 = add i64 %add148, 24
  %141 = inttoptr i64 %add149 to ptr
  %call150 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %141)
  store <2 x i64> %call150, ptr %vk3x01234567, align 16, !tbaa !12
  %142 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr151 = getelementptr inbounds i8, ptr %142, i64 8
  store ptr %add.ptr151, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567) #5
  %143 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !12
  %144 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !12
  %call152 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %143, <2 x i64> noundef %144)
  %call153 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call152, i32 noundef 8)
  store <2 x i64> %call153, ptr %vxi3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk3x01234567) #5
  %145 = load <2 x i64>, ptr %vk3x01234567, align 16, !tbaa !12
  %146 = load <2 x i64>, ptr %vk3x01234567, align 16, !tbaa !12
  %call154 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %145, <2 x i64> noundef %146)
  %call155 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call154, i32 noundef 8)
  store <2 x i64> %call155, ptr %vxk3x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x01234567lo) #5
  %147 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !12
  %148 = load <2 x i64>, ptr %vxk3x01234567, align 16, !tbaa !12
  %call156 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %147, <2 x i64> noundef %148)
  store <2 x i64> %call156, ptr %vprod3x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x01234567hi) #5
  %149 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !12
  %150 = load <2 x i64>, ptr %vxk3x01234567, align 16, !tbaa !12
  %call157 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %149, <2 x i64> noundef %150)
  store <2 x i64> %call157, ptr %vprod3x01234567hi, align 16, !tbaa !12
  %151 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %152 = load <2 x i64>, ptr %vprod3x01234567lo, align 16, !tbaa !12
  %153 = load <2 x i64>, ptr %vprod3x01234567hi, align 16, !tbaa !12
  %call158 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %152, <2 x i64> noundef %153)
  %call159 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %151, <2 x i64> noundef %call158)
  store <2 x i64> %call159, ptr %vacc0123, align 16, !tbaa !12
  %154 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %155 = load <2 x i64>, ptr %vprod3x01234567lo, align 16, !tbaa !12
  %156 = load <2 x i64>, ptr %vprod3x01234567hi, align 16, !tbaa !12
  %call160 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %155, <2 x i64> noundef %156)
  %call161 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %154, <2 x i64> noundef %call160)
  store <2 x i64> %call161, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567) #5
  %157 = load ptr, ptr %i4, align 8, !tbaa !9
  %call162 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %157)
  store <2 x i64> %call162, ptr %vi4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk4x01234567) #5
  %158 = load ptr, ptr %w, align 8, !tbaa !9
  %159 = ptrtoint ptr %158 to i64
  %add163 = add i64 %159, 32
  %add164 = add i64 %add163, 32
  %160 = inttoptr i64 %add164 to ptr
  %call165 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %160)
  store <2 x i64> %call165, ptr %vk4x01234567, align 16, !tbaa !12
  %161 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr166 = getelementptr inbounds i8, ptr %161, i64 8
  store ptr %add.ptr166, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567) #5
  %162 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !12
  %163 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !12
  %call167 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %162, <2 x i64> noundef %163)
  %call168 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call167, i32 noundef 8)
  store <2 x i64> %call168, ptr %vxi4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk4x01234567) #5
  %164 = load <2 x i64>, ptr %vk4x01234567, align 16, !tbaa !12
  %165 = load <2 x i64>, ptr %vk4x01234567, align 16, !tbaa !12
  %call169 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %164, <2 x i64> noundef %165)
  %call170 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call169, i32 noundef 8)
  store <2 x i64> %call170, ptr %vxk4x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x01234567lo) #5
  %166 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !12
  %167 = load <2 x i64>, ptr %vxk4x01234567, align 16, !tbaa !12
  %call171 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %166, <2 x i64> noundef %167)
  store <2 x i64> %call171, ptr %vprod4x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x01234567hi) #5
  %168 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !12
  %169 = load <2 x i64>, ptr %vxk4x01234567, align 16, !tbaa !12
  %call172 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %168, <2 x i64> noundef %169)
  store <2 x i64> %call172, ptr %vprod4x01234567hi, align 16, !tbaa !12
  %170 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %171 = load <2 x i64>, ptr %vprod4x01234567lo, align 16, !tbaa !12
  %172 = load <2 x i64>, ptr %vprod4x01234567hi, align 16, !tbaa !12
  %call173 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %171, <2 x i64> noundef %172)
  %call174 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %170, <2 x i64> noundef %call173)
  store <2 x i64> %call174, ptr %vacc0123, align 16, !tbaa !12
  %173 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %174 = load <2 x i64>, ptr %vprod4x01234567lo, align 16, !tbaa !12
  %175 = load <2 x i64>, ptr %vprod4x01234567hi, align 16, !tbaa !12
  %call175 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %174, <2 x i64> noundef %175)
  %call176 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %173, <2 x i64> noundef %call175)
  store <2 x i64> %call176, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567) #5
  %176 = load ptr, ptr %i5, align 8, !tbaa !9
  %call177 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %176)
  store <2 x i64> %call177, ptr %vi5x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk5x01234567) #5
  %177 = load ptr, ptr %w, align 8, !tbaa !9
  %178 = ptrtoint ptr %177 to i64
  %add178 = add i64 %178, 32
  %add179 = add i64 %add178, 40
  %179 = inttoptr i64 %add179 to ptr
  %call180 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %179)
  store <2 x i64> %call180, ptr %vk5x01234567, align 16, !tbaa !12
  %180 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr181 = getelementptr inbounds i8, ptr %180, i64 8
  store ptr %add.ptr181, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567) #5
  %181 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !12
  %182 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !12
  %call182 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %181, <2 x i64> noundef %182)
  %call183 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call182, i32 noundef 8)
  store <2 x i64> %call183, ptr %vxi5x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk5x01234567) #5
  %183 = load <2 x i64>, ptr %vk5x01234567, align 16, !tbaa !12
  %184 = load <2 x i64>, ptr %vk5x01234567, align 16, !tbaa !12
  %call184 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %183, <2 x i64> noundef %184)
  %call185 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call184, i32 noundef 8)
  store <2 x i64> %call185, ptr %vxk5x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x01234567lo) #5
  %185 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !12
  %186 = load <2 x i64>, ptr %vxk5x01234567, align 16, !tbaa !12
  %call186 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %185, <2 x i64> noundef %186)
  store <2 x i64> %call186, ptr %vprod5x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x01234567hi) #5
  %187 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !12
  %188 = load <2 x i64>, ptr %vxk5x01234567, align 16, !tbaa !12
  %call187 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %187, <2 x i64> noundef %188)
  store <2 x i64> %call187, ptr %vprod5x01234567hi, align 16, !tbaa !12
  %189 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %190 = load <2 x i64>, ptr %vprod5x01234567lo, align 16, !tbaa !12
  %191 = load <2 x i64>, ptr %vprod5x01234567hi, align 16, !tbaa !12
  %call188 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %190, <2 x i64> noundef %191)
  %call189 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %189, <2 x i64> noundef %call188)
  store <2 x i64> %call189, ptr %vacc0123, align 16, !tbaa !12
  %192 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %193 = load <2 x i64>, ptr %vprod5x01234567lo, align 16, !tbaa !12
  %194 = load <2 x i64>, ptr %vprod5x01234567hi, align 16, !tbaa !12
  %call190 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %193, <2 x i64> noundef %194)
  %call191 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %192, <2 x i64> noundef %call190)
  store <2 x i64> %call191, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567) #5
  %195 = load ptr, ptr %i6, align 8, !tbaa !9
  %call192 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %195)
  store <2 x i64> %call192, ptr %vi6x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk6x01234567) #5
  %196 = load ptr, ptr %w, align 8, !tbaa !9
  %197 = ptrtoint ptr %196 to i64
  %add193 = add i64 %197, 32
  %add194 = add i64 %add193, 48
  %198 = inttoptr i64 %add194 to ptr
  %call195 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %198)
  store <2 x i64> %call195, ptr %vk6x01234567, align 16, !tbaa !12
  %199 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr196 = getelementptr inbounds i8, ptr %199, i64 8
  store ptr %add.ptr196, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567) #5
  %200 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !12
  %201 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !12
  %call197 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %200, <2 x i64> noundef %201)
  %call198 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call197, i32 noundef 8)
  store <2 x i64> %call198, ptr %vxi6x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk6x01234567) #5
  %202 = load <2 x i64>, ptr %vk6x01234567, align 16, !tbaa !12
  %203 = load <2 x i64>, ptr %vk6x01234567, align 16, !tbaa !12
  %call199 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %202, <2 x i64> noundef %203)
  %call200 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call199, i32 noundef 8)
  store <2 x i64> %call200, ptr %vxk6x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x01234567lo) #5
  %204 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !12
  %205 = load <2 x i64>, ptr %vxk6x01234567, align 16, !tbaa !12
  %call201 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %204, <2 x i64> noundef %205)
  store <2 x i64> %call201, ptr %vprod6x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x01234567hi) #5
  %206 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !12
  %207 = load <2 x i64>, ptr %vxk6x01234567, align 16, !tbaa !12
  %call202 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %206, <2 x i64> noundef %207)
  store <2 x i64> %call202, ptr %vprod6x01234567hi, align 16, !tbaa !12
  %208 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %209 = load <2 x i64>, ptr %vprod6x01234567lo, align 16, !tbaa !12
  %210 = load <2 x i64>, ptr %vprod6x01234567hi, align 16, !tbaa !12
  %call203 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %209, <2 x i64> noundef %210)
  %call204 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %208, <2 x i64> noundef %call203)
  store <2 x i64> %call204, ptr %vacc0123, align 16, !tbaa !12
  %211 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %212 = load <2 x i64>, ptr %vprod6x01234567lo, align 16, !tbaa !12
  %213 = load <2 x i64>, ptr %vprod6x01234567hi, align 16, !tbaa !12
  %call205 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %212, <2 x i64> noundef %213)
  %call206 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %211, <2 x i64> noundef %call205)
  store <2 x i64> %call206, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi7x01234567) #5
  %214 = load ptr, ptr %i7, align 8, !tbaa !9
  %call207 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %214)
  store <2 x i64> %call207, ptr %vi7x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk7x01234567) #5
  %215 = load ptr, ptr %w, align 8, !tbaa !9
  %216 = ptrtoint ptr %215 to i64
  %add208 = add i64 %216, 32
  %add209 = add i64 %add208, 56
  %217 = inttoptr i64 %add209 to ptr
  %call210 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %217)
  store <2 x i64> %call210, ptr %vk7x01234567, align 16, !tbaa !12
  %218 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr211 = getelementptr inbounds i8, ptr %218, i64 8
  store ptr %add.ptr211, ptr %i7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi7x01234567) #5
  %219 = load <2 x i64>, ptr %vi7x01234567, align 16, !tbaa !12
  %220 = load <2 x i64>, ptr %vi7x01234567, align 16, !tbaa !12
  %call212 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %219, <2 x i64> noundef %220)
  %call213 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call212, i32 noundef 8)
  store <2 x i64> %call213, ptr %vxi7x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk7x01234567) #5
  %221 = load <2 x i64>, ptr %vk7x01234567, align 16, !tbaa !12
  %222 = load <2 x i64>, ptr %vk7x01234567, align 16, !tbaa !12
  %call214 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %221, <2 x i64> noundef %222)
  %call215 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call214, i32 noundef 8)
  store <2 x i64> %call215, ptr %vxk7x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x01234567lo) #5
  %223 = load <2 x i64>, ptr %vxi7x01234567, align 16, !tbaa !12
  %224 = load <2 x i64>, ptr %vxk7x01234567, align 16, !tbaa !12
  %call216 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %223, <2 x i64> noundef %224)
  store <2 x i64> %call216, ptr %vprod7x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x01234567hi) #5
  %225 = load <2 x i64>, ptr %vxi7x01234567, align 16, !tbaa !12
  %226 = load <2 x i64>, ptr %vxk7x01234567, align 16, !tbaa !12
  %call217 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %225, <2 x i64> noundef %226)
  store <2 x i64> %call217, ptr %vprod7x01234567hi, align 16, !tbaa !12
  %227 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %228 = load <2 x i64>, ptr %vprod7x01234567lo, align 16, !tbaa !12
  %229 = load <2 x i64>, ptr %vprod7x01234567hi, align 16, !tbaa !12
  %call218 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %228, <2 x i64> noundef %229)
  %call219 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %227, <2 x i64> noundef %call218)
  store <2 x i64> %call219, ptr %vacc0123, align 16, !tbaa !12
  %230 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %231 = load <2 x i64>, ptr %vprod7x01234567lo, align 16, !tbaa !12
  %232 = load <2 x i64>, ptr %vprod7x01234567hi, align 16, !tbaa !12
  %call220 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %231, <2 x i64> noundef %232)
  %call221 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %230, <2 x i64> noundef %call220)
  store <2 x i64> %call221, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi8x01234567) #5
  %233 = load ptr, ptr %i8, align 8, !tbaa !9
  %call222 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %233)
  store <2 x i64> %call222, ptr %vi8x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk8x01234567) #5
  %234 = load ptr, ptr %w, align 8, !tbaa !9
  %235 = ptrtoint ptr %234 to i64
  %add223 = add i64 %235, 32
  %add224 = add i64 %add223, 64
  %236 = inttoptr i64 %add224 to ptr
  %call225 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %236)
  store <2 x i64> %call225, ptr %vk8x01234567, align 16, !tbaa !12
  %237 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr226 = getelementptr inbounds i8, ptr %237, i64 8
  store ptr %add.ptr226, ptr %i8, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi8x01234567) #5
  %238 = load <2 x i64>, ptr %vi8x01234567, align 16, !tbaa !12
  %239 = load <2 x i64>, ptr %vi8x01234567, align 16, !tbaa !12
  %call227 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %238, <2 x i64> noundef %239)
  %call228 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call227, i32 noundef 8)
  store <2 x i64> %call228, ptr %vxi8x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk8x01234567) #5
  %240 = load <2 x i64>, ptr %vk8x01234567, align 16, !tbaa !12
  %241 = load <2 x i64>, ptr %vk8x01234567, align 16, !tbaa !12
  %call229 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %240, <2 x i64> noundef %241)
  %call230 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call229, i32 noundef 8)
  store <2 x i64> %call230, ptr %vxk8x01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x01234567lo) #5
  %242 = load <2 x i64>, ptr %vxi8x01234567, align 16, !tbaa !12
  %243 = load <2 x i64>, ptr %vxk8x01234567, align 16, !tbaa !12
  %call231 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %242, <2 x i64> noundef %243)
  store <2 x i64> %call231, ptr %vprod8x01234567lo, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x01234567hi) #5
  %244 = load <2 x i64>, ptr %vxi8x01234567, align 16, !tbaa !12
  %245 = load <2 x i64>, ptr %vxk8x01234567, align 16, !tbaa !12
  %call232 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %244, <2 x i64> noundef %245)
  store <2 x i64> %call232, ptr %vprod8x01234567hi, align 16, !tbaa !12
  %246 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %247 = load <2 x i64>, ptr %vprod8x01234567lo, align 16, !tbaa !12
  %248 = load <2 x i64>, ptr %vprod8x01234567hi, align 16, !tbaa !12
  %call233 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %247, <2 x i64> noundef %248)
  %call234 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %246, <2 x i64> noundef %call233)
  store <2 x i64> %call234, ptr %vacc0123, align 16, !tbaa !12
  %249 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %250 = load <2 x i64>, ptr %vprod8x01234567lo, align 16, !tbaa !12
  %251 = load <2 x i64>, ptr %vprod8x01234567hi, align 16, !tbaa !12
  %call235 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %250, <2 x i64> noundef %251)
  %call236 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %249, <2 x i64> noundef %call235)
  store <2 x i64> %call236, ptr %vacc4567, align 16, !tbaa !12
  %252 = load ptr, ptr %w, align 8, !tbaa !9
  %253 = ptrtoint ptr %252 to i64
  %add237 = add i64 %253, 32
  %add238 = add i64 %add237, 72
  %254 = inttoptr i64 %add238 to ptr
  store ptr %254, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0123) #5
  %255 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %call239 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %255)
  store <4 x float> %call239, ptr %vscaled0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled4567) #5
  %256 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %call240 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %256)
  store <4 x float> %call240, ptr %vscaled4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #5
  %257 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.2, ptr %257, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call241 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call241, ptr %vscale, align 16, !tbaa !12
  %258 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !12
  %259 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call242 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %258, <4 x float> noundef %259)
  store <4 x float> %call242, ptr %vscaled0123, align 16, !tbaa !12
  %260 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !12
  %261 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call243 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %260, <4 x float> noundef %261)
  store <4 x float> %call243, ptr %vscaled4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  %262 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %262, i32 0, i32 1
  %arraydecay244 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call245 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay244)
  store <4 x float> %call245, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %263 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !12
  %264 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call246 = call <4 x float> @_mm_min_ps(<4 x float> noundef %263, <4 x float> noundef %264)
  store <4 x float> %call246, ptr %vscaled0123, align 16, !tbaa !12
  %265 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !12
  %266 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call247 = call <4 x float> @_mm_min_ps(<4 x float> noundef %265, <4 x float> noundef %266)
  store <4 x float> %call247, ptr %vscaled4567, align 16, !tbaa !12
  %267 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !12
  %call248 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %267)
  store <2 x i64> %call248, ptr %vacc0123, align 16, !tbaa !12
  %268 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !12
  %call249 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %268)
  store <2 x i64> %call249, ptr %vacc4567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #5
  %269 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %269, i32 0, i32 2
  %arraydecay250 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call251 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay250)
  store <2 x i64> %call251, ptr %voutput_zero_point, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #5
  %270 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !12
  %271 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !12
  %call252 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %270, <2 x i64> noundef %271)
  %272 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call253 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call252, <2 x i64> noundef %272)
  store <2 x i64> %call253, ptr %vout01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #5
  %273 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.2, ptr %273, i32 0, i32 3
  %arraydecay254 = getelementptr inbounds [8 x i16], ptr %output_min, i64 0, i64 0
  %call255 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay254)
  store <2 x i64> %call255, ptr %voutput_min, align 16, !tbaa !12
  %274 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !12
  %275 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call256 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %274, <2 x i64> noundef %275)
  store <2 x i64> %call256, ptr %vout01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #5
  %276 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !12
  %277 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !12
  %call257 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %276, <2 x i64> noundef %277)
  store <2 x i64> %call257, ptr %vout0123456701234567, align 16, !tbaa !12
  %278 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %279 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %278, <2 x i64> noundef %279)
  %280 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr258 = getelementptr inbounds i8, ptr %280, i64 8
  store ptr %add.ptr258, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x01234567hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x01234567lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %281 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %281, 8
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %282 = load i64, ptr %c, align 8, !tbaa !5
  %cmp259 = icmp ne i64 %282, 0
  %lnot261 = xor i1 %cmp259, true
  %lnot263 = xor i1 %lnot261, true
  %lnot.ext264 = zext i1 %lnot263 to i32
  %conv265 = sext i32 %lnot.ext264 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv265, i64 0)
  %tobool266 = icmp ne i64 %expval, 0
  br i1 %tobool266, label %if.then267, label %if.end505

if.then267:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123268) #5
  %283 = load ptr, ptr %w, align 8, !tbaa !9
  %call269 = call <2 x i64> @_mm_loadu_si128(ptr noundef %283)
  store <2 x i64> %call269, ptr %vacc0123268, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567270) #5
  %284 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr271 = getelementptr inbounds i32, ptr %284, i64 4
  %call272 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr271)
  store <2 x i64> %call272, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567273) #5
  %285 = load ptr, ptr %i0, align 8, !tbaa !9
  %call274 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %285)
  store <2 x i64> %call274, ptr %vi0x01234567273, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk0x01234567275) #5
  %286 = load ptr, ptr %w, align 8, !tbaa !9
  %287 = ptrtoint ptr %286 to i64
  %add276 = add i64 %287, 32
  %add277 = add i64 %add276, 0
  %288 = inttoptr i64 %add277 to ptr
  %call278 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %288)
  store <2 x i64> %call278, ptr %vk0x01234567275, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567279) #5
  %289 = load <2 x i64>, ptr %vi0x01234567273, align 16, !tbaa !12
  %290 = load <2 x i64>, ptr %vi0x01234567273, align 16, !tbaa !12
  %call280 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %289, <2 x i64> noundef %290)
  %call281 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call280, i32 noundef 8)
  store <2 x i64> %call281, ptr %vxi0x01234567279, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk0x01234567282) #5
  %291 = load <2 x i64>, ptr %vk0x01234567275, align 16, !tbaa !12
  %292 = load <2 x i64>, ptr %vk0x01234567275, align 16, !tbaa !12
  %call283 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %291, <2 x i64> noundef %292)
  %call284 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call283, i32 noundef 8)
  store <2 x i64> %call284, ptr %vxk0x01234567282, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x01234567lo285) #5
  %293 = load <2 x i64>, ptr %vxi0x01234567279, align 16, !tbaa !12
  %294 = load <2 x i64>, ptr %vxk0x01234567282, align 16, !tbaa !12
  %call286 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %293, <2 x i64> noundef %294)
  store <2 x i64> %call286, ptr %vprod0x01234567lo285, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x01234567hi287) #5
  %295 = load <2 x i64>, ptr %vxi0x01234567279, align 16, !tbaa !12
  %296 = load <2 x i64>, ptr %vxk0x01234567282, align 16, !tbaa !12
  %call288 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %295, <2 x i64> noundef %296)
  store <2 x i64> %call288, ptr %vprod0x01234567hi287, align 16, !tbaa !12
  %297 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %298 = load <2 x i64>, ptr %vprod0x01234567lo285, align 16, !tbaa !12
  %299 = load <2 x i64>, ptr %vprod0x01234567hi287, align 16, !tbaa !12
  %call289 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %298, <2 x i64> noundef %299)
  %call290 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %297, <2 x i64> noundef %call289)
  store <2 x i64> %call290, ptr %vacc0123268, align 16, !tbaa !12
  %300 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %301 = load <2 x i64>, ptr %vprod0x01234567lo285, align 16, !tbaa !12
  %302 = load <2 x i64>, ptr %vprod0x01234567hi287, align 16, !tbaa !12
  %call291 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %301, <2 x i64> noundef %302)
  %call292 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %300, <2 x i64> noundef %call291)
  store <2 x i64> %call292, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567293) #5
  %303 = load ptr, ptr %i1, align 8, !tbaa !9
  %call294 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %303)
  store <2 x i64> %call294, ptr %vi1x01234567293, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk1x01234567295) #5
  %304 = load ptr, ptr %w, align 8, !tbaa !9
  %305 = ptrtoint ptr %304 to i64
  %add296 = add i64 %305, 32
  %add297 = add i64 %add296, 8
  %306 = inttoptr i64 %add297 to ptr
  %call298 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %306)
  store <2 x i64> %call298, ptr %vk1x01234567295, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567299) #5
  %307 = load <2 x i64>, ptr %vi1x01234567293, align 16, !tbaa !12
  %308 = load <2 x i64>, ptr %vi1x01234567293, align 16, !tbaa !12
  %call300 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %307, <2 x i64> noundef %308)
  %call301 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call300, i32 noundef 8)
  store <2 x i64> %call301, ptr %vxi1x01234567299, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk1x01234567302) #5
  %309 = load <2 x i64>, ptr %vk1x01234567295, align 16, !tbaa !12
  %310 = load <2 x i64>, ptr %vk1x01234567295, align 16, !tbaa !12
  %call303 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %309, <2 x i64> noundef %310)
  %call304 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call303, i32 noundef 8)
  store <2 x i64> %call304, ptr %vxk1x01234567302, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x01234567lo305) #5
  %311 = load <2 x i64>, ptr %vxi1x01234567299, align 16, !tbaa !12
  %312 = load <2 x i64>, ptr %vxk1x01234567302, align 16, !tbaa !12
  %call306 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %311, <2 x i64> noundef %312)
  store <2 x i64> %call306, ptr %vprod1x01234567lo305, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x01234567hi307) #5
  %313 = load <2 x i64>, ptr %vxi1x01234567299, align 16, !tbaa !12
  %314 = load <2 x i64>, ptr %vxk1x01234567302, align 16, !tbaa !12
  %call308 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %313, <2 x i64> noundef %314)
  store <2 x i64> %call308, ptr %vprod1x01234567hi307, align 16, !tbaa !12
  %315 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %316 = load <2 x i64>, ptr %vprod1x01234567lo305, align 16, !tbaa !12
  %317 = load <2 x i64>, ptr %vprod1x01234567hi307, align 16, !tbaa !12
  %call309 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %316, <2 x i64> noundef %317)
  %call310 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %315, <2 x i64> noundef %call309)
  store <2 x i64> %call310, ptr %vacc0123268, align 16, !tbaa !12
  %318 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %319 = load <2 x i64>, ptr %vprod1x01234567lo305, align 16, !tbaa !12
  %320 = load <2 x i64>, ptr %vprod1x01234567hi307, align 16, !tbaa !12
  %call311 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %319, <2 x i64> noundef %320)
  %call312 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %318, <2 x i64> noundef %call311)
  store <2 x i64> %call312, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567313) #5
  %321 = load ptr, ptr %i2, align 8, !tbaa !9
  %call314 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %321)
  store <2 x i64> %call314, ptr %vi2x01234567313, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk2x01234567315) #5
  %322 = load ptr, ptr %w, align 8, !tbaa !9
  %323 = ptrtoint ptr %322 to i64
  %add316 = add i64 %323, 32
  %add317 = add i64 %add316, 16
  %324 = inttoptr i64 %add317 to ptr
  %call318 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %324)
  store <2 x i64> %call318, ptr %vk2x01234567315, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567319) #5
  %325 = load <2 x i64>, ptr %vi2x01234567313, align 16, !tbaa !12
  %326 = load <2 x i64>, ptr %vi2x01234567313, align 16, !tbaa !12
  %call320 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %325, <2 x i64> noundef %326)
  %call321 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call320, i32 noundef 8)
  store <2 x i64> %call321, ptr %vxi2x01234567319, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk2x01234567322) #5
  %327 = load <2 x i64>, ptr %vk2x01234567315, align 16, !tbaa !12
  %328 = load <2 x i64>, ptr %vk2x01234567315, align 16, !tbaa !12
  %call323 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %327, <2 x i64> noundef %328)
  %call324 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call323, i32 noundef 8)
  store <2 x i64> %call324, ptr %vxk2x01234567322, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x01234567lo325) #5
  %329 = load <2 x i64>, ptr %vxi2x01234567319, align 16, !tbaa !12
  %330 = load <2 x i64>, ptr %vxk2x01234567322, align 16, !tbaa !12
  %call326 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %329, <2 x i64> noundef %330)
  store <2 x i64> %call326, ptr %vprod2x01234567lo325, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x01234567hi327) #5
  %331 = load <2 x i64>, ptr %vxi2x01234567319, align 16, !tbaa !12
  %332 = load <2 x i64>, ptr %vxk2x01234567322, align 16, !tbaa !12
  %call328 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %331, <2 x i64> noundef %332)
  store <2 x i64> %call328, ptr %vprod2x01234567hi327, align 16, !tbaa !12
  %333 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %334 = load <2 x i64>, ptr %vprod2x01234567lo325, align 16, !tbaa !12
  %335 = load <2 x i64>, ptr %vprod2x01234567hi327, align 16, !tbaa !12
  %call329 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %334, <2 x i64> noundef %335)
  %call330 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %333, <2 x i64> noundef %call329)
  store <2 x i64> %call330, ptr %vacc0123268, align 16, !tbaa !12
  %336 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %337 = load <2 x i64>, ptr %vprod2x01234567lo325, align 16, !tbaa !12
  %338 = load <2 x i64>, ptr %vprod2x01234567hi327, align 16, !tbaa !12
  %call331 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %337, <2 x i64> noundef %338)
  %call332 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %336, <2 x i64> noundef %call331)
  store <2 x i64> %call332, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567333) #5
  %339 = load ptr, ptr %i3, align 8, !tbaa !9
  %call334 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %339)
  store <2 x i64> %call334, ptr %vi3x01234567333, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk3x01234567335) #5
  %340 = load ptr, ptr %w, align 8, !tbaa !9
  %341 = ptrtoint ptr %340 to i64
  %add336 = add i64 %341, 32
  %add337 = add i64 %add336, 24
  %342 = inttoptr i64 %add337 to ptr
  %call338 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %342)
  store <2 x i64> %call338, ptr %vk3x01234567335, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567339) #5
  %343 = load <2 x i64>, ptr %vi3x01234567333, align 16, !tbaa !12
  %344 = load <2 x i64>, ptr %vi3x01234567333, align 16, !tbaa !12
  %call340 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %343, <2 x i64> noundef %344)
  %call341 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call340, i32 noundef 8)
  store <2 x i64> %call341, ptr %vxi3x01234567339, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk3x01234567342) #5
  %345 = load <2 x i64>, ptr %vk3x01234567335, align 16, !tbaa !12
  %346 = load <2 x i64>, ptr %vk3x01234567335, align 16, !tbaa !12
  %call343 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %345, <2 x i64> noundef %346)
  %call344 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call343, i32 noundef 8)
  store <2 x i64> %call344, ptr %vxk3x01234567342, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x01234567lo345) #5
  %347 = load <2 x i64>, ptr %vxi3x01234567339, align 16, !tbaa !12
  %348 = load <2 x i64>, ptr %vxk3x01234567342, align 16, !tbaa !12
  %call346 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %347, <2 x i64> noundef %348)
  store <2 x i64> %call346, ptr %vprod3x01234567lo345, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x01234567hi347) #5
  %349 = load <2 x i64>, ptr %vxi3x01234567339, align 16, !tbaa !12
  %350 = load <2 x i64>, ptr %vxk3x01234567342, align 16, !tbaa !12
  %call348 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %349, <2 x i64> noundef %350)
  store <2 x i64> %call348, ptr %vprod3x01234567hi347, align 16, !tbaa !12
  %351 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %352 = load <2 x i64>, ptr %vprod3x01234567lo345, align 16, !tbaa !12
  %353 = load <2 x i64>, ptr %vprod3x01234567hi347, align 16, !tbaa !12
  %call349 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %352, <2 x i64> noundef %353)
  %call350 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %351, <2 x i64> noundef %call349)
  store <2 x i64> %call350, ptr %vacc0123268, align 16, !tbaa !12
  %354 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %355 = load <2 x i64>, ptr %vprod3x01234567lo345, align 16, !tbaa !12
  %356 = load <2 x i64>, ptr %vprod3x01234567hi347, align 16, !tbaa !12
  %call351 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %355, <2 x i64> noundef %356)
  %call352 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %354, <2 x i64> noundef %call351)
  store <2 x i64> %call352, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567353) #5
  %357 = load ptr, ptr %i4, align 8, !tbaa !9
  %call354 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %357)
  store <2 x i64> %call354, ptr %vi4x01234567353, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk4x01234567355) #5
  %358 = load ptr, ptr %w, align 8, !tbaa !9
  %359 = ptrtoint ptr %358 to i64
  %add356 = add i64 %359, 32
  %add357 = add i64 %add356, 32
  %360 = inttoptr i64 %add357 to ptr
  %call358 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %360)
  store <2 x i64> %call358, ptr %vk4x01234567355, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567359) #5
  %361 = load <2 x i64>, ptr %vi4x01234567353, align 16, !tbaa !12
  %362 = load <2 x i64>, ptr %vi4x01234567353, align 16, !tbaa !12
  %call360 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %361, <2 x i64> noundef %362)
  %call361 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call360, i32 noundef 8)
  store <2 x i64> %call361, ptr %vxi4x01234567359, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk4x01234567362) #5
  %363 = load <2 x i64>, ptr %vk4x01234567355, align 16, !tbaa !12
  %364 = load <2 x i64>, ptr %vk4x01234567355, align 16, !tbaa !12
  %call363 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %363, <2 x i64> noundef %364)
  %call364 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call363, i32 noundef 8)
  store <2 x i64> %call364, ptr %vxk4x01234567362, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x01234567lo365) #5
  %365 = load <2 x i64>, ptr %vxi4x01234567359, align 16, !tbaa !12
  %366 = load <2 x i64>, ptr %vxk4x01234567362, align 16, !tbaa !12
  %call366 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %365, <2 x i64> noundef %366)
  store <2 x i64> %call366, ptr %vprod4x01234567lo365, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x01234567hi367) #5
  %367 = load <2 x i64>, ptr %vxi4x01234567359, align 16, !tbaa !12
  %368 = load <2 x i64>, ptr %vxk4x01234567362, align 16, !tbaa !12
  %call368 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %367, <2 x i64> noundef %368)
  store <2 x i64> %call368, ptr %vprod4x01234567hi367, align 16, !tbaa !12
  %369 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %370 = load <2 x i64>, ptr %vprod4x01234567lo365, align 16, !tbaa !12
  %371 = load <2 x i64>, ptr %vprod4x01234567hi367, align 16, !tbaa !12
  %call369 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %370, <2 x i64> noundef %371)
  %call370 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %369, <2 x i64> noundef %call369)
  store <2 x i64> %call370, ptr %vacc0123268, align 16, !tbaa !12
  %372 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %373 = load <2 x i64>, ptr %vprod4x01234567lo365, align 16, !tbaa !12
  %374 = load <2 x i64>, ptr %vprod4x01234567hi367, align 16, !tbaa !12
  %call371 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %373, <2 x i64> noundef %374)
  %call372 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %372, <2 x i64> noundef %call371)
  store <2 x i64> %call372, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567373) #5
  %375 = load ptr, ptr %i5, align 8, !tbaa !9
  %call374 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %375)
  store <2 x i64> %call374, ptr %vi5x01234567373, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk5x01234567375) #5
  %376 = load ptr, ptr %w, align 8, !tbaa !9
  %377 = ptrtoint ptr %376 to i64
  %add376 = add i64 %377, 32
  %add377 = add i64 %add376, 40
  %378 = inttoptr i64 %add377 to ptr
  %call378 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %378)
  store <2 x i64> %call378, ptr %vk5x01234567375, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567379) #5
  %379 = load <2 x i64>, ptr %vi5x01234567373, align 16, !tbaa !12
  %380 = load <2 x i64>, ptr %vi5x01234567373, align 16, !tbaa !12
  %call380 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %379, <2 x i64> noundef %380)
  %call381 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call380, i32 noundef 8)
  store <2 x i64> %call381, ptr %vxi5x01234567379, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk5x01234567382) #5
  %381 = load <2 x i64>, ptr %vk5x01234567375, align 16, !tbaa !12
  %382 = load <2 x i64>, ptr %vk5x01234567375, align 16, !tbaa !12
  %call383 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %381, <2 x i64> noundef %382)
  %call384 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call383, i32 noundef 8)
  store <2 x i64> %call384, ptr %vxk5x01234567382, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x01234567lo385) #5
  %383 = load <2 x i64>, ptr %vxi5x01234567379, align 16, !tbaa !12
  %384 = load <2 x i64>, ptr %vxk5x01234567382, align 16, !tbaa !12
  %call386 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %383, <2 x i64> noundef %384)
  store <2 x i64> %call386, ptr %vprod5x01234567lo385, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x01234567hi387) #5
  %385 = load <2 x i64>, ptr %vxi5x01234567379, align 16, !tbaa !12
  %386 = load <2 x i64>, ptr %vxk5x01234567382, align 16, !tbaa !12
  %call388 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %385, <2 x i64> noundef %386)
  store <2 x i64> %call388, ptr %vprod5x01234567hi387, align 16, !tbaa !12
  %387 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %388 = load <2 x i64>, ptr %vprod5x01234567lo385, align 16, !tbaa !12
  %389 = load <2 x i64>, ptr %vprod5x01234567hi387, align 16, !tbaa !12
  %call389 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %388, <2 x i64> noundef %389)
  %call390 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %387, <2 x i64> noundef %call389)
  store <2 x i64> %call390, ptr %vacc0123268, align 16, !tbaa !12
  %390 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %391 = load <2 x i64>, ptr %vprod5x01234567lo385, align 16, !tbaa !12
  %392 = load <2 x i64>, ptr %vprod5x01234567hi387, align 16, !tbaa !12
  %call391 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %391, <2 x i64> noundef %392)
  %call392 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %390, <2 x i64> noundef %call391)
  store <2 x i64> %call392, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567393) #5
  %393 = load ptr, ptr %i6, align 8, !tbaa !9
  %call394 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %393)
  store <2 x i64> %call394, ptr %vi6x01234567393, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk6x01234567395) #5
  %394 = load ptr, ptr %w, align 8, !tbaa !9
  %395 = ptrtoint ptr %394 to i64
  %add396 = add i64 %395, 32
  %add397 = add i64 %add396, 48
  %396 = inttoptr i64 %add397 to ptr
  %call398 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %396)
  store <2 x i64> %call398, ptr %vk6x01234567395, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567399) #5
  %397 = load <2 x i64>, ptr %vi6x01234567393, align 16, !tbaa !12
  %398 = load <2 x i64>, ptr %vi6x01234567393, align 16, !tbaa !12
  %call400 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %397, <2 x i64> noundef %398)
  %call401 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call400, i32 noundef 8)
  store <2 x i64> %call401, ptr %vxi6x01234567399, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk6x01234567402) #5
  %399 = load <2 x i64>, ptr %vk6x01234567395, align 16, !tbaa !12
  %400 = load <2 x i64>, ptr %vk6x01234567395, align 16, !tbaa !12
  %call403 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %399, <2 x i64> noundef %400)
  %call404 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call403, i32 noundef 8)
  store <2 x i64> %call404, ptr %vxk6x01234567402, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x01234567lo405) #5
  %401 = load <2 x i64>, ptr %vxi6x01234567399, align 16, !tbaa !12
  %402 = load <2 x i64>, ptr %vxk6x01234567402, align 16, !tbaa !12
  %call406 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %401, <2 x i64> noundef %402)
  store <2 x i64> %call406, ptr %vprod6x01234567lo405, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x01234567hi407) #5
  %403 = load <2 x i64>, ptr %vxi6x01234567399, align 16, !tbaa !12
  %404 = load <2 x i64>, ptr %vxk6x01234567402, align 16, !tbaa !12
  %call408 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %403, <2 x i64> noundef %404)
  store <2 x i64> %call408, ptr %vprod6x01234567hi407, align 16, !tbaa !12
  %405 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %406 = load <2 x i64>, ptr %vprod6x01234567lo405, align 16, !tbaa !12
  %407 = load <2 x i64>, ptr %vprod6x01234567hi407, align 16, !tbaa !12
  %call409 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %406, <2 x i64> noundef %407)
  %call410 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %405, <2 x i64> noundef %call409)
  store <2 x i64> %call410, ptr %vacc0123268, align 16, !tbaa !12
  %408 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %409 = load <2 x i64>, ptr %vprod6x01234567lo405, align 16, !tbaa !12
  %410 = load <2 x i64>, ptr %vprod6x01234567hi407, align 16, !tbaa !12
  %call411 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %409, <2 x i64> noundef %410)
  %call412 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %408, <2 x i64> noundef %call411)
  store <2 x i64> %call412, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi7x01234567413) #5
  %411 = load ptr, ptr %i7, align 8, !tbaa !9
  %call414 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %411)
  store <2 x i64> %call414, ptr %vi7x01234567413, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk7x01234567415) #5
  %412 = load ptr, ptr %w, align 8, !tbaa !9
  %413 = ptrtoint ptr %412 to i64
  %add416 = add i64 %413, 32
  %add417 = add i64 %add416, 56
  %414 = inttoptr i64 %add417 to ptr
  %call418 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %414)
  store <2 x i64> %call418, ptr %vk7x01234567415, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi7x01234567419) #5
  %415 = load <2 x i64>, ptr %vi7x01234567413, align 16, !tbaa !12
  %416 = load <2 x i64>, ptr %vi7x01234567413, align 16, !tbaa !12
  %call420 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %415, <2 x i64> noundef %416)
  %call421 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call420, i32 noundef 8)
  store <2 x i64> %call421, ptr %vxi7x01234567419, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk7x01234567422) #5
  %417 = load <2 x i64>, ptr %vk7x01234567415, align 16, !tbaa !12
  %418 = load <2 x i64>, ptr %vk7x01234567415, align 16, !tbaa !12
  %call423 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %417, <2 x i64> noundef %418)
  %call424 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call423, i32 noundef 8)
  store <2 x i64> %call424, ptr %vxk7x01234567422, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x01234567lo425) #5
  %419 = load <2 x i64>, ptr %vxi7x01234567419, align 16, !tbaa !12
  %420 = load <2 x i64>, ptr %vxk7x01234567422, align 16, !tbaa !12
  %call426 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %419, <2 x i64> noundef %420)
  store <2 x i64> %call426, ptr %vprod7x01234567lo425, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x01234567hi427) #5
  %421 = load <2 x i64>, ptr %vxi7x01234567419, align 16, !tbaa !12
  %422 = load <2 x i64>, ptr %vxk7x01234567422, align 16, !tbaa !12
  %call428 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %421, <2 x i64> noundef %422)
  store <2 x i64> %call428, ptr %vprod7x01234567hi427, align 16, !tbaa !12
  %423 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %424 = load <2 x i64>, ptr %vprod7x01234567lo425, align 16, !tbaa !12
  %425 = load <2 x i64>, ptr %vprod7x01234567hi427, align 16, !tbaa !12
  %call429 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %424, <2 x i64> noundef %425)
  %call430 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %423, <2 x i64> noundef %call429)
  store <2 x i64> %call430, ptr %vacc0123268, align 16, !tbaa !12
  %426 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %427 = load <2 x i64>, ptr %vprod7x01234567lo425, align 16, !tbaa !12
  %428 = load <2 x i64>, ptr %vprod7x01234567hi427, align 16, !tbaa !12
  %call431 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %427, <2 x i64> noundef %428)
  %call432 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %426, <2 x i64> noundef %call431)
  store <2 x i64> %call432, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi8x01234567433) #5
  %429 = load ptr, ptr %i8, align 8, !tbaa !9
  %call434 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %429)
  store <2 x i64> %call434, ptr %vi8x01234567433, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk8x01234567435) #5
  %430 = load ptr, ptr %w, align 8, !tbaa !9
  %431 = ptrtoint ptr %430 to i64
  %add436 = add i64 %431, 32
  %add437 = add i64 %add436, 64
  %432 = inttoptr i64 %add437 to ptr
  %call438 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %432)
  store <2 x i64> %call438, ptr %vk8x01234567435, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi8x01234567439) #5
  %433 = load <2 x i64>, ptr %vi8x01234567433, align 16, !tbaa !12
  %434 = load <2 x i64>, ptr %vi8x01234567433, align 16, !tbaa !12
  %call440 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %433, <2 x i64> noundef %434)
  %call441 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call440, i32 noundef 8)
  store <2 x i64> %call441, ptr %vxi8x01234567439, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk8x01234567442) #5
  %435 = load <2 x i64>, ptr %vk8x01234567435, align 16, !tbaa !12
  %436 = load <2 x i64>, ptr %vk8x01234567435, align 16, !tbaa !12
  %call443 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %435, <2 x i64> noundef %436)
  %call444 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call443, i32 noundef 8)
  store <2 x i64> %call444, ptr %vxk8x01234567442, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x01234567lo445) #5
  %437 = load <2 x i64>, ptr %vxi8x01234567439, align 16, !tbaa !12
  %438 = load <2 x i64>, ptr %vxk8x01234567442, align 16, !tbaa !12
  %call446 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %437, <2 x i64> noundef %438)
  store <2 x i64> %call446, ptr %vprod8x01234567lo445, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x01234567hi447) #5
  %439 = load <2 x i64>, ptr %vxi8x01234567439, align 16, !tbaa !12
  %440 = load <2 x i64>, ptr %vxk8x01234567442, align 16, !tbaa !12
  %call448 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %439, <2 x i64> noundef %440)
  store <2 x i64> %call448, ptr %vprod8x01234567hi447, align 16, !tbaa !12
  %441 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %442 = load <2 x i64>, ptr %vprod8x01234567lo445, align 16, !tbaa !12
  %443 = load <2 x i64>, ptr %vprod8x01234567hi447, align 16, !tbaa !12
  %call449 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %442, <2 x i64> noundef %443)
  %call450 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %441, <2 x i64> noundef %call449)
  store <2 x i64> %call450, ptr %vacc0123268, align 16, !tbaa !12
  %444 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %445 = load <2 x i64>, ptr %vprod8x01234567lo445, align 16, !tbaa !12
  %446 = load <2 x i64>, ptr %vprod8x01234567hi447, align 16, !tbaa !12
  %call451 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %445, <2 x i64> noundef %446)
  %call452 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %444, <2 x i64> noundef %call451)
  store <2 x i64> %call452, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0123453) #5
  %447 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %call454 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %447)
  store <4 x float> %call454, ptr %vscaled0123453, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled4567455) #5
  %448 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %call456 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %448)
  store <4 x float> %call456, ptr %vscaled4567455, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale457) #5
  %449 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale458 = getelementptr inbounds %struct.anon.2, ptr %449, i32 0, i32 0
  %arraydecay459 = getelementptr inbounds [4 x float], ptr %scale458, i64 0, i64 0
  %call460 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay459)
  store <4 x float> %call460, ptr %vscale457, align 16, !tbaa !12
  %450 = load <4 x float>, ptr %vscaled0123453, align 16, !tbaa !12
  %451 = load <4 x float>, ptr %vscale457, align 16, !tbaa !12
  %call461 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %450, <4 x float> noundef %451)
  store <4 x float> %call461, ptr %vscaled0123453, align 16, !tbaa !12
  %452 = load <4 x float>, ptr %vscaled4567455, align 16, !tbaa !12
  %453 = load <4 x float>, ptr %vscale457, align 16, !tbaa !12
  %call462 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %452, <4 x float> noundef %453)
  store <4 x float> %call462, ptr %vscaled4567455, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point463) #5
  %454 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point464 = getelementptr inbounds %struct.anon.2, ptr %454, i32 0, i32 1
  %arraydecay465 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point464, i64 0, i64 0
  %call466 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay465)
  store <4 x float> %call466, ptr %voutput_max_less_zero_point463, align 16, !tbaa !12
  %455 = load <4 x float>, ptr %vscaled0123453, align 16, !tbaa !12
  %456 = load <4 x float>, ptr %voutput_max_less_zero_point463, align 16, !tbaa !12
  %call467 = call <4 x float> @_mm_min_ps(<4 x float> noundef %455, <4 x float> noundef %456)
  store <4 x float> %call467, ptr %vscaled0123453, align 16, !tbaa !12
  %457 = load <4 x float>, ptr %vscaled4567455, align 16, !tbaa !12
  %458 = load <4 x float>, ptr %voutput_max_less_zero_point463, align 16, !tbaa !12
  %call468 = call <4 x float> @_mm_min_ps(<4 x float> noundef %457, <4 x float> noundef %458)
  store <4 x float> %call468, ptr %vscaled4567455, align 16, !tbaa !12
  %459 = load <4 x float>, ptr %vscaled0123453, align 16, !tbaa !12
  %call469 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %459)
  store <2 x i64> %call469, ptr %vacc0123268, align 16, !tbaa !12
  %460 = load <4 x float>, ptr %vscaled4567455, align 16, !tbaa !12
  %call470 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %460)
  store <2 x i64> %call470, ptr %vacc4567270, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point471) #5
  %461 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point472 = getelementptr inbounds %struct.anon.2, ptr %461, i32 0, i32 2
  %arraydecay473 = getelementptr inbounds [8 x i16], ptr %output_zero_point472, i64 0, i64 0
  %call474 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay473)
  store <2 x i64> %call474, ptr %voutput_zero_point471, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567475) #5
  %462 = load <2 x i64>, ptr %vacc0123268, align 16, !tbaa !12
  %463 = load <2 x i64>, ptr %vacc4567270, align 16, !tbaa !12
  %call476 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %462, <2 x i64> noundef %463)
  %464 = load <2 x i64>, ptr %voutput_zero_point471, align 16, !tbaa !12
  %call477 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call476, <2 x i64> noundef %464)
  store <2 x i64> %call477, ptr %vout01234567475, align 16, !tbaa !12
  %465 = load <2 x i64>, ptr %vout01234567475, align 16, !tbaa !12
  %466 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min478 = getelementptr inbounds %struct.anon.2, ptr %466, i32 0, i32 3
  %arraydecay479 = getelementptr inbounds [8 x i16], ptr %output_min478, i64 0, i64 0
  %call480 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay479)
  %call481 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %465, <2 x i64> noundef %call480)
  store <2 x i64> %call481, ptr %vout01234567475, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567482) #5
  %467 = load <2 x i64>, ptr %vout01234567475, align 16, !tbaa !12
  %468 = load <2 x i64>, ptr %vout01234567475, align 16, !tbaa !12
  %call483 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %467, <2 x i64> noundef %468)
  store <2 x i64> %call483, ptr %vout0123456701234567482, align 16, !tbaa !12
  %469 = load i64, ptr %c, align 8, !tbaa !5
  %and = and i64 %469, 4
  %tobool484 = icmp ne i64 %and, 0
  br i1 %tobool484, label %if.then485, label %if.end489

if.then485:                                       ; preds = %if.then267
  %470 = load <2 x i64>, ptr %vout0123456701234567482, align 16, !tbaa !12
  %call486 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %470)
  %471 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call486, ptr %471, align 4, !tbaa !15
  %472 = load <2 x i64>, ptr %vout0123456701234567482, align 16, !tbaa !12
  %call487 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %472, i32 noundef 32)
  store <2 x i64> %call487, ptr %vout0123456701234567482, align 16, !tbaa !12
  %473 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr488 = getelementptr inbounds i8, ptr %473, i64 4
  store ptr %add.ptr488, ptr %output.addr, align 8, !tbaa !9
  br label %if.end489

if.end489:                                        ; preds = %if.then485, %if.then267
  %474 = load i64, ptr %c, align 8, !tbaa !5
  %and490 = and i64 %474, 2
  %tobool491 = icmp ne i64 %and490, 0
  br i1 %tobool491, label %if.then492, label %if.end497

if.then492:                                       ; preds = %if.end489
  %475 = load <2 x i64>, ptr %vout0123456701234567482, align 16, !tbaa !12
  %476 = bitcast <2 x i64> %475 to <8 x i16>
  %477 = extractelement <8 x i16> %476, i64 0
  %conv493 = zext i16 %477 to i32
  %conv494 = trunc i32 %conv493 to i16
  %478 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv494, ptr %478, align 2, !tbaa !17
  %479 = load <2 x i64>, ptr %vout0123456701234567482, align 16, !tbaa !12
  %call495 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %479, i32 noundef 16)
  store <2 x i64> %call495, ptr %vout0123456701234567482, align 16, !tbaa !12
  %480 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr496 = getelementptr inbounds i8, ptr %480, i64 2
  store ptr %add.ptr496, ptr %output.addr, align 8, !tbaa !9
  br label %if.end497

if.end497:                                        ; preds = %if.then492, %if.end489
  %481 = load i64, ptr %c, align 8, !tbaa !5
  %and498 = and i64 %481, 1
  %tobool499 = icmp ne i64 %and498, 0
  br i1 %tobool499, label %if.then500, label %if.end504

if.then500:                                       ; preds = %if.end497
  %482 = load <2 x i64>, ptr %vout0123456701234567482, align 16, !tbaa !12
  %call501 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %482)
  %conv502 = trunc i32 %call501 to i8
  %483 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv502, ptr %483, align 1, !tbaa !12
  %484 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr503 = getelementptr inbounds i8, ptr %484, i64 1
  store ptr %add.ptr503, ptr %output.addr, align 8, !tbaa !9
  br label %if.end504

if.end504:                                        ; preds = %if.then500, %if.end497
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567482) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567475) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point471) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point463) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale457) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled4567455) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0123453) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x01234567hi447) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x01234567lo445) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk8x01234567442) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi8x01234567439) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk8x01234567435) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi8x01234567433) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x01234567hi427) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x01234567lo425) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk7x01234567422) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi7x01234567419) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk7x01234567415) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi7x01234567413) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x01234567hi407) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x01234567lo405) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk6x01234567402) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567399) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk6x01234567395) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567393) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x01234567hi387) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x01234567lo385) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk5x01234567382) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567379) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk5x01234567375) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567373) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x01234567hi367) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x01234567lo365) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk4x01234567362) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567359) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk4x01234567355) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567353) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x01234567hi347) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x01234567lo345) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk3x01234567342) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567339) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk3x01234567335) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567333) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x01234567hi327) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x01234567lo325) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk2x01234567322) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567319) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk2x01234567315) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567313) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x01234567hi307) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x01234567lo305) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk1x01234567302) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567299) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk1x01234567295) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567293) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x01234567hi287) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x01234567lo285) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk0x01234567282) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567279) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk0x01234567275) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567273) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567270) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123268) #5
  br label %if.end505

if.end505:                                        ; preds = %if.end504, %for.end
  %485 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %486 = ptrtoint ptr %485 to i64
  %487 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add506 = add i64 %486, %487
  %488 = inttoptr i64 %add506 to ptr
  store ptr %488, ptr %output.addr, align 8, !tbaa !9
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
  br label %do.cond

do.cond:                                          ; preds = %if.end505
  %489 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %489, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp507 = icmp ne i64 %dec, 0
  br i1 %cmp507, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
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
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
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
define internal <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
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
define internal <2 x i64> @_mm_max_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

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
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

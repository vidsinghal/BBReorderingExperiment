; ModuleID = 'samples/548.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-dwconv/gen/up8x9-minmax-fp32-sse41-mul16-add16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vxi0x01234567 = alloca <2 x i64>, align 16
  %vk0x01234567 = alloca <2 x i64>, align 16
  %vxk0x01234567 = alloca <2 x i64>, align 16
  %vprod01234567 = alloca <2 x i64>, align 16
  %vi1x01234567 = alloca <2 x i64>, align 16
  %vxi1x01234567 = alloca <2 x i64>, align 16
  %vk1x01234567 = alloca <2 x i64>, align 16
  %vxk1x01234567 = alloca <2 x i64>, align 16
  %vi2x01234567 = alloca <2 x i64>, align 16
  %vxi2x01234567 = alloca <2 x i64>, align 16
  %vk2x01234567 = alloca <2 x i64>, align 16
  %vxk2x01234567 = alloca <2 x i64>, align 16
  %vi3x01234567 = alloca <2 x i64>, align 16
  %vxi3x01234567 = alloca <2 x i64>, align 16
  %vk3x01234567 = alloca <2 x i64>, align 16
  %vxk3x01234567 = alloca <2 x i64>, align 16
  %vi4x01234567 = alloca <2 x i64>, align 16
  %vxi4x01234567 = alloca <2 x i64>, align 16
  %vk4x01234567 = alloca <2 x i64>, align 16
  %vxk4x01234567 = alloca <2 x i64>, align 16
  %vi5x01234567 = alloca <2 x i64>, align 16
  %vxi5x01234567 = alloca <2 x i64>, align 16
  %vk5x01234567 = alloca <2 x i64>, align 16
  %vxk5x01234567 = alloca <2 x i64>, align 16
  %vi6x01234567 = alloca <2 x i64>, align 16
  %vxi6x01234567 = alloca <2 x i64>, align 16
  %vk6x01234567 = alloca <2 x i64>, align 16
  %vxk6x01234567 = alloca <2 x i64>, align 16
  %vi7x01234567 = alloca <2 x i64>, align 16
  %vxi7x01234567 = alloca <2 x i64>, align 16
  %vk7x01234567 = alloca <2 x i64>, align 16
  %vxk7x01234567 = alloca <2 x i64>, align 16
  %vi8x01234567 = alloca <2 x i64>, align 16
  %vxi8x01234567 = alloca <2 x i64>, align 16
  %vk8x01234567 = alloca <2 x i64>, align 16
  %vxk8x01234567 = alloca <2 x i64>, align 16
  %vscaled0123 = alloca <4 x float>, align 16
  %vscaled4567 = alloca <4 x float>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vacc0123234 = alloca <2 x i64>, align 16
  %vacc4567236 = alloca <2 x i64>, align 16
  %vi0x01234567239 = alloca <2 x i64>, align 16
  %vxi0x01234567241 = alloca <2 x i64>, align 16
  %vk0x01234567243 = alloca <2 x i64>, align 16
  %vxk0x01234567247 = alloca <2 x i64>, align 16
  %vprod01234567249 = alloca <2 x i64>, align 16
  %vi1x01234567251 = alloca <2 x i64>, align 16
  %vxi1x01234567253 = alloca <2 x i64>, align 16
  %vk1x01234567255 = alloca <2 x i64>, align 16
  %vxk1x01234567259 = alloca <2 x i64>, align 16
  %vi2x01234567268 = alloca <2 x i64>, align 16
  %vxi2x01234567270 = alloca <2 x i64>, align 16
  %vk2x01234567272 = alloca <2 x i64>, align 16
  %vxk2x01234567276 = alloca <2 x i64>, align 16
  %vi3x01234567279 = alloca <2 x i64>, align 16
  %vxi3x01234567281 = alloca <2 x i64>, align 16
  %vk3x01234567283 = alloca <2 x i64>, align 16
  %vxk3x01234567287 = alloca <2 x i64>, align 16
  %vi4x01234567296 = alloca <2 x i64>, align 16
  %vxi4x01234567298 = alloca <2 x i64>, align 16
  %vk4x01234567300 = alloca <2 x i64>, align 16
  %vxk4x01234567304 = alloca <2 x i64>, align 16
  %vi5x01234567307 = alloca <2 x i64>, align 16
  %vxi5x01234567309 = alloca <2 x i64>, align 16
  %vk5x01234567311 = alloca <2 x i64>, align 16
  %vxk5x01234567315 = alloca <2 x i64>, align 16
  %vi6x01234567324 = alloca <2 x i64>, align 16
  %vxi6x01234567326 = alloca <2 x i64>, align 16
  %vk6x01234567328 = alloca <2 x i64>, align 16
  %vxk6x01234567332 = alloca <2 x i64>, align 16
  %vi7x01234567335 = alloca <2 x i64>, align 16
  %vxi7x01234567337 = alloca <2 x i64>, align 16
  %vk7x01234567339 = alloca <2 x i64>, align 16
  %vxk7x01234567343 = alloca <2 x i64>, align 16
  %vi8x01234567352 = alloca <2 x i64>, align 16
  %vxi8x01234567354 = alloca <2 x i64>, align 16
  %vk8x01234567356 = alloca <2 x i64>, align 16
  %vxk8x01234567360 = alloca <2 x i64>, align 16
  %vscaled0123368 = alloca <4 x float>, align 16
  %vscaled4567370 = alloca <4 x float>, align 16
  %vscale372 = alloca <4 x float>, align 16
  %voutput_max_less_zero_point378 = alloca <4 x float>, align 16
  %voutput_zero_point386 = alloca <2 x i64>, align 16
  %vout01234567390 = alloca <2 x i64>, align 16
  %vout0123456701234567393 = alloca <2 x i64>, align 16
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !4
  store i64 %output_width, ptr %output_width.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !8
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !8
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !4
  store i64 %output_increment, ptr %output_increment.addr, align 8, !tbaa !4
  store i64 %input_offset, ptr %input_offset.addr, align 8, !tbaa !4
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #5
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  store ptr %1, ptr %i0, align 8, !tbaa !8
  %2 = load ptr, ptr %i0, align 8, !tbaa !8
  %3 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %2, %3
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !10

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr %i0, align 8, !tbaa !8
  %5 = ptrtoint ptr %4 to i64
  %6 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add = add i64 %5, %6
  %7 = inttoptr i64 %add to ptr
  store ptr %7, ptr %i0, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #5
  %8 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx2, align 8, !tbaa !8
  store ptr %9, ptr %i1, align 8, !tbaa !8
  %10 = load ptr, ptr %i1, align 8, !tbaa !8
  %11 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp3 = icmp ne ptr %10, %11
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end13, !unpredictable !10

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %i1, align 8, !tbaa !8
  %13 = ptrtoint ptr %12 to i64
  %14 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add12 = add i64 %13, %14
  %15 = inttoptr i64 %add12 to ptr
  store ptr %15, ptr %i1, align 8, !tbaa !8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #5
  %16 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx14, align 8, !tbaa !8
  store ptr %17, ptr %i2, align 8, !tbaa !8
  %18 = load ptr, ptr %i2, align 8, !tbaa !8
  %19 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp15 = icmp ne ptr %18, %19
  %lnot17 = xor i1 %cmp15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end25, !unpredictable !10

if.then23:                                        ; preds = %if.end13
  %20 = load ptr, ptr %i2, align 8, !tbaa !8
  %21 = ptrtoint ptr %20 to i64
  %22 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add24 = add i64 %21, %22
  %23 = inttoptr i64 %add24 to ptr
  store ptr %23, ptr %i2, align 8, !tbaa !8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #5
  %24 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx26 = getelementptr inbounds ptr, ptr %24, i64 3
  %25 = load ptr, ptr %arrayidx26, align 8, !tbaa !8
  store ptr %25, ptr %i3, align 8, !tbaa !8
  %26 = load ptr, ptr %i3, align 8, !tbaa !8
  %27 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp27 = icmp ne ptr %26, %27
  %lnot29 = xor i1 %cmp27, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end37, !unpredictable !10

if.then35:                                        ; preds = %if.end25
  %28 = load ptr, ptr %i3, align 8, !tbaa !8
  %29 = ptrtoint ptr %28 to i64
  %30 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add36 = add i64 %29, %30
  %31 = inttoptr i64 %add36 to ptr
  store ptr %31, ptr %i3, align 8, !tbaa !8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #5
  %32 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx38 = getelementptr inbounds ptr, ptr %32, i64 4
  %33 = load ptr, ptr %arrayidx38, align 8, !tbaa !8
  store ptr %33, ptr %i4, align 8, !tbaa !8
  %34 = load ptr, ptr %i4, align 8, !tbaa !8
  %35 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp39 = icmp ne ptr %34, %35
  %lnot41 = xor i1 %cmp39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %if.then47, label %if.end49, !unpredictable !10

if.then47:                                        ; preds = %if.end37
  %36 = load ptr, ptr %i4, align 8, !tbaa !8
  %37 = ptrtoint ptr %36 to i64
  %38 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add48 = add i64 %37, %38
  %39 = inttoptr i64 %add48 to ptr
  store ptr %39, ptr %i4, align 8, !tbaa !8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #5
  %40 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx50 = getelementptr inbounds ptr, ptr %40, i64 5
  %41 = load ptr, ptr %arrayidx50, align 8, !tbaa !8
  store ptr %41, ptr %i5, align 8, !tbaa !8
  %42 = load ptr, ptr %i5, align 8, !tbaa !8
  %43 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp51 = icmp ne ptr %42, %43
  %lnot53 = xor i1 %cmp51, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.end61, !unpredictable !10

if.then59:                                        ; preds = %if.end49
  %44 = load ptr, ptr %i5, align 8, !tbaa !8
  %45 = ptrtoint ptr %44 to i64
  %46 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add60 = add i64 %45, %46
  %47 = inttoptr i64 %add60 to ptr
  store ptr %47, ptr %i5, align 8, !tbaa !8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #5
  %48 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx62 = getelementptr inbounds ptr, ptr %48, i64 6
  %49 = load ptr, ptr %arrayidx62, align 8, !tbaa !8
  store ptr %49, ptr %i6, align 8, !tbaa !8
  %50 = load ptr, ptr %i6, align 8, !tbaa !8
  %51 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp63 = icmp ne ptr %50, %51
  %lnot65 = xor i1 %cmp63, true
  %lnot67 = xor i1 %lnot65, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %tobool70 = icmp ne i64 %conv69, 0
  br i1 %tobool70, label %if.then71, label %if.end73, !unpredictable !10

if.then71:                                        ; preds = %if.end61
  %52 = load ptr, ptr %i6, align 8, !tbaa !8
  %53 = ptrtoint ptr %52 to i64
  %54 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add72 = add i64 %53, %54
  %55 = inttoptr i64 %add72 to ptr
  store ptr %55, ptr %i6, align 8, !tbaa !8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #5
  %56 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx74 = getelementptr inbounds ptr, ptr %56, i64 7
  %57 = load ptr, ptr %arrayidx74, align 8, !tbaa !8
  store ptr %57, ptr %i7, align 8, !tbaa !8
  %58 = load ptr, ptr %i7, align 8, !tbaa !8
  %59 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp75 = icmp ne ptr %58, %59
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %tobool82 = icmp ne i64 %conv81, 0
  br i1 %tobool82, label %if.then83, label %if.end85, !unpredictable !10

if.then83:                                        ; preds = %if.end73
  %60 = load ptr, ptr %i7, align 8, !tbaa !8
  %61 = ptrtoint ptr %60 to i64
  %62 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add84 = add i64 %61, %62
  %63 = inttoptr i64 %add84 to ptr
  store ptr %63, ptr %i7, align 8, !tbaa !8
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #5
  %64 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx86 = getelementptr inbounds ptr, ptr %64, i64 8
  %65 = load ptr, ptr %arrayidx86, align 8, !tbaa !8
  store ptr %65, ptr %i8, align 8, !tbaa !8
  %66 = load ptr, ptr %i8, align 8, !tbaa !8
  %67 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp87 = icmp ne ptr %66, %67
  %lnot89 = xor i1 %cmp87, true
  %lnot91 = xor i1 %lnot89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %tobool94 = icmp ne i64 %conv93, 0
  br i1 %tobool94, label %if.then95, label %if.end97, !unpredictable !10

if.then95:                                        ; preds = %if.end85
  %68 = load ptr, ptr %i8, align 8, !tbaa !8
  %69 = ptrtoint ptr %68 to i64
  %70 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add96 = add i64 %69, %70
  %71 = inttoptr i64 %add96 to ptr
  store ptr %71, ptr %i8, align 8, !tbaa !8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end85
  %72 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %73 = ptrtoint ptr %72 to i64
  %74 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add98 = add i64 %73, %74
  %75 = inttoptr i64 %add98 to ptr
  store ptr %75, ptr %input.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  %76 = load i64, ptr %channels.addr, align 8, !tbaa !4
  store i64 %76, ptr %c, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #5
  %77 = load ptr, ptr %weights.addr, align 8, !tbaa !8
  store ptr %77, ptr %w, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end97
  %78 = load i64, ptr %c, align 8, !tbaa !4
  %cmp99 = icmp uge i64 %78, 8
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #5
  %79 = load ptr, ptr %w, align 8, !tbaa !8
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %79)
  store <2 x i64> %call, ptr %vacc0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #5
  %80 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i32, ptr %80, i64 4
  %call101 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr)
  store <2 x i64> %call101, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567) #5
  %81 = load ptr, ptr %i0, align 8, !tbaa !8
  %call102 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %81)
  store <2 x i64> %call102, ptr %vi0x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567) #5
  %82 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !11
  %call103 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %82)
  store <2 x i64> %call103, ptr %vxi0x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk0x01234567) #5
  %83 = load ptr, ptr %w, align 8, !tbaa !8
  %84 = ptrtoint ptr %83 to i64
  %add104 = add i64 %84, 32
  %add105 = add i64 %add104, 0
  %85 = inttoptr i64 %add105 to ptr
  %call106 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %85)
  store <2 x i64> %call106, ptr %vk0x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk0x01234567) #5
  %86 = load <2 x i64>, ptr %vk0x01234567, align 16, !tbaa !11
  %call107 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %86)
  store <2 x i64> %call107, ptr %vxk0x01234567, align 16, !tbaa !11
  %87 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr108 = getelementptr inbounds i8, ptr %87, i64 8
  store ptr %add.ptr108, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod01234567) #5
  %88 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !11
  %89 = load <2 x i64>, ptr %vxk0x01234567, align 16, !tbaa !11
  %call109 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %88, <2 x i64> noundef %89)
  store <2 x i64> %call109, ptr %vprod01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567) #5
  %90 = load ptr, ptr %i1, align 8, !tbaa !8
  %call110 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %90)
  store <2 x i64> %call110, ptr %vi1x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567) #5
  %91 = load <2 x i64>, ptr %vi1x01234567, align 16, !tbaa !11
  %call111 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %91)
  store <2 x i64> %call111, ptr %vxi1x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk1x01234567) #5
  %92 = load ptr, ptr %w, align 8, !tbaa !8
  %93 = ptrtoint ptr %92 to i64
  %add112 = add i64 %93, 32
  %add113 = add i64 %add112, 8
  %94 = inttoptr i64 %add113 to ptr
  %call114 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %94)
  store <2 x i64> %call114, ptr %vk1x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk1x01234567) #5
  %95 = load <2 x i64>, ptr %vk1x01234567, align 16, !tbaa !11
  %call115 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %95)
  store <2 x i64> %call115, ptr %vxk1x01234567, align 16, !tbaa !11
  %96 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr116 = getelementptr inbounds i8, ptr %96, i64 8
  store ptr %add.ptr116, ptr %i1, align 8, !tbaa !8
  %97 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %98 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !11
  %99 = load <2 x i64>, ptr %vxk1x01234567, align 16, !tbaa !11
  %call117 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %98, <2 x i64> noundef %99)
  %call118 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %97, <2 x i64> noundef %call117)
  store <2 x i64> %call118, ptr %vprod01234567, align 16, !tbaa !11
  %100 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %101 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call119 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %101)
  %call120 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %100, <2 x i64> noundef %call119)
  store <2 x i64> %call120, ptr %vacc0123, align 16, !tbaa !11
  %102 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %103 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %104 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call121 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %103, <2 x i64> noundef %104)
  %call122 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call121, i32 noundef 16)
  %call123 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %102, <2 x i64> noundef %call122)
  store <2 x i64> %call123, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567) #5
  %105 = load ptr, ptr %i2, align 8, !tbaa !8
  %call124 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %105)
  store <2 x i64> %call124, ptr %vi2x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567) #5
  %106 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !11
  %call125 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %106)
  store <2 x i64> %call125, ptr %vxi2x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk2x01234567) #5
  %107 = load ptr, ptr %w, align 8, !tbaa !8
  %108 = ptrtoint ptr %107 to i64
  %add126 = add i64 %108, 32
  %add127 = add i64 %add126, 16
  %109 = inttoptr i64 %add127 to ptr
  %call128 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %109)
  store <2 x i64> %call128, ptr %vk2x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk2x01234567) #5
  %110 = load <2 x i64>, ptr %vk2x01234567, align 16, !tbaa !11
  %call129 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %110)
  store <2 x i64> %call129, ptr %vxk2x01234567, align 16, !tbaa !11
  %111 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr130 = getelementptr inbounds i8, ptr %111, i64 8
  store ptr %add.ptr130, ptr %i2, align 8, !tbaa !8
  %112 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !11
  %113 = load <2 x i64>, ptr %vxk2x01234567, align 16, !tbaa !11
  %call131 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %112, <2 x i64> noundef %113)
  store <2 x i64> %call131, ptr %vprod01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567) #5
  %114 = load ptr, ptr %i3, align 8, !tbaa !8
  %call132 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %114)
  store <2 x i64> %call132, ptr %vi3x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567) #5
  %115 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !11
  %call133 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %115)
  store <2 x i64> %call133, ptr %vxi3x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk3x01234567) #5
  %116 = load ptr, ptr %w, align 8, !tbaa !8
  %117 = ptrtoint ptr %116 to i64
  %add134 = add i64 %117, 32
  %add135 = add i64 %add134, 24
  %118 = inttoptr i64 %add135 to ptr
  %call136 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %118)
  store <2 x i64> %call136, ptr %vk3x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk3x01234567) #5
  %119 = load <2 x i64>, ptr %vk3x01234567, align 16, !tbaa !11
  %call137 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %119)
  store <2 x i64> %call137, ptr %vxk3x01234567, align 16, !tbaa !11
  %120 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr138 = getelementptr inbounds i8, ptr %120, i64 8
  store ptr %add.ptr138, ptr %i3, align 8, !tbaa !8
  %121 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %122 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !11
  %123 = load <2 x i64>, ptr %vxk3x01234567, align 16, !tbaa !11
  %call139 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %122, <2 x i64> noundef %123)
  %call140 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %121, <2 x i64> noundef %call139)
  store <2 x i64> %call140, ptr %vprod01234567, align 16, !tbaa !11
  %124 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %125 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call141 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %125)
  %call142 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %124, <2 x i64> noundef %call141)
  store <2 x i64> %call142, ptr %vacc0123, align 16, !tbaa !11
  %126 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %127 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %128 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call143 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %127, <2 x i64> noundef %128)
  %call144 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call143, i32 noundef 16)
  %call145 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %126, <2 x i64> noundef %call144)
  store <2 x i64> %call145, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567) #5
  %129 = load ptr, ptr %i4, align 8, !tbaa !8
  %call146 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %129)
  store <2 x i64> %call146, ptr %vi4x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567) #5
  %130 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !11
  %call147 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %130)
  store <2 x i64> %call147, ptr %vxi4x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk4x01234567) #5
  %131 = load ptr, ptr %w, align 8, !tbaa !8
  %132 = ptrtoint ptr %131 to i64
  %add148 = add i64 %132, 32
  %add149 = add i64 %add148, 32
  %133 = inttoptr i64 %add149 to ptr
  %call150 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %133)
  store <2 x i64> %call150, ptr %vk4x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk4x01234567) #5
  %134 = load <2 x i64>, ptr %vk4x01234567, align 16, !tbaa !11
  %call151 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %134)
  store <2 x i64> %call151, ptr %vxk4x01234567, align 16, !tbaa !11
  %135 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr152 = getelementptr inbounds i8, ptr %135, i64 8
  store ptr %add.ptr152, ptr %i4, align 8, !tbaa !8
  %136 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !11
  %137 = load <2 x i64>, ptr %vxk4x01234567, align 16, !tbaa !11
  %call153 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %136, <2 x i64> noundef %137)
  store <2 x i64> %call153, ptr %vprod01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567) #5
  %138 = load ptr, ptr %i5, align 8, !tbaa !8
  %call154 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %138)
  store <2 x i64> %call154, ptr %vi5x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567) #5
  %139 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !11
  %call155 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %139)
  store <2 x i64> %call155, ptr %vxi5x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk5x01234567) #5
  %140 = load ptr, ptr %w, align 8, !tbaa !8
  %141 = ptrtoint ptr %140 to i64
  %add156 = add i64 %141, 32
  %add157 = add i64 %add156, 40
  %142 = inttoptr i64 %add157 to ptr
  %call158 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %142)
  store <2 x i64> %call158, ptr %vk5x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk5x01234567) #5
  %143 = load <2 x i64>, ptr %vk5x01234567, align 16, !tbaa !11
  %call159 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %143)
  store <2 x i64> %call159, ptr %vxk5x01234567, align 16, !tbaa !11
  %144 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr160 = getelementptr inbounds i8, ptr %144, i64 8
  store ptr %add.ptr160, ptr %i5, align 8, !tbaa !8
  %145 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %146 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !11
  %147 = load <2 x i64>, ptr %vxk5x01234567, align 16, !tbaa !11
  %call161 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %146, <2 x i64> noundef %147)
  %call162 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %145, <2 x i64> noundef %call161)
  store <2 x i64> %call162, ptr %vprod01234567, align 16, !tbaa !11
  %148 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %149 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call163 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %149)
  %call164 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %148, <2 x i64> noundef %call163)
  store <2 x i64> %call164, ptr %vacc0123, align 16, !tbaa !11
  %150 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %151 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %152 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call165 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %151, <2 x i64> noundef %152)
  %call166 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call165, i32 noundef 16)
  %call167 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %150, <2 x i64> noundef %call166)
  store <2 x i64> %call167, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567) #5
  %153 = load ptr, ptr %i6, align 8, !tbaa !8
  %call168 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %153)
  store <2 x i64> %call168, ptr %vi6x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567) #5
  %154 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !11
  %call169 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %154)
  store <2 x i64> %call169, ptr %vxi6x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk6x01234567) #5
  %155 = load ptr, ptr %w, align 8, !tbaa !8
  %156 = ptrtoint ptr %155 to i64
  %add170 = add i64 %156, 32
  %add171 = add i64 %add170, 48
  %157 = inttoptr i64 %add171 to ptr
  %call172 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %157)
  store <2 x i64> %call172, ptr %vk6x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk6x01234567) #5
  %158 = load <2 x i64>, ptr %vk6x01234567, align 16, !tbaa !11
  %call173 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %158)
  store <2 x i64> %call173, ptr %vxk6x01234567, align 16, !tbaa !11
  %159 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr174 = getelementptr inbounds i8, ptr %159, i64 8
  store ptr %add.ptr174, ptr %i6, align 8, !tbaa !8
  %160 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !11
  %161 = load <2 x i64>, ptr %vxk6x01234567, align 16, !tbaa !11
  %call175 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %160, <2 x i64> noundef %161)
  store <2 x i64> %call175, ptr %vprod01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi7x01234567) #5
  %162 = load ptr, ptr %i7, align 8, !tbaa !8
  %call176 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %162)
  store <2 x i64> %call176, ptr %vi7x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi7x01234567) #5
  %163 = load <2 x i64>, ptr %vi7x01234567, align 16, !tbaa !11
  %call177 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %163)
  store <2 x i64> %call177, ptr %vxi7x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk7x01234567) #5
  %164 = load ptr, ptr %w, align 8, !tbaa !8
  %165 = ptrtoint ptr %164 to i64
  %add178 = add i64 %165, 32
  %add179 = add i64 %add178, 56
  %166 = inttoptr i64 %add179 to ptr
  %call180 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %166)
  store <2 x i64> %call180, ptr %vk7x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk7x01234567) #5
  %167 = load <2 x i64>, ptr %vk7x01234567, align 16, !tbaa !11
  %call181 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %167)
  store <2 x i64> %call181, ptr %vxk7x01234567, align 16, !tbaa !11
  %168 = load ptr, ptr %i7, align 8, !tbaa !8
  %add.ptr182 = getelementptr inbounds i8, ptr %168, i64 8
  store ptr %add.ptr182, ptr %i7, align 8, !tbaa !8
  %169 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %170 = load <2 x i64>, ptr %vxi7x01234567, align 16, !tbaa !11
  %171 = load <2 x i64>, ptr %vxk7x01234567, align 16, !tbaa !11
  %call183 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %170, <2 x i64> noundef %171)
  %call184 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %169, <2 x i64> noundef %call183)
  store <2 x i64> %call184, ptr %vprod01234567, align 16, !tbaa !11
  %172 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %173 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call185 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %173)
  %call186 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %172, <2 x i64> noundef %call185)
  store <2 x i64> %call186, ptr %vacc0123, align 16, !tbaa !11
  %174 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %175 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %176 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call187 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %175, <2 x i64> noundef %176)
  %call188 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call187, i32 noundef 16)
  %call189 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %174, <2 x i64> noundef %call188)
  store <2 x i64> %call189, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi8x01234567) #5
  %177 = load ptr, ptr %i8, align 8, !tbaa !8
  %call190 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %177)
  store <2 x i64> %call190, ptr %vi8x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi8x01234567) #5
  %178 = load <2 x i64>, ptr %vi8x01234567, align 16, !tbaa !11
  %call191 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %178)
  store <2 x i64> %call191, ptr %vxi8x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk8x01234567) #5
  %179 = load ptr, ptr %w, align 8, !tbaa !8
  %180 = ptrtoint ptr %179 to i64
  %add192 = add i64 %180, 32
  %add193 = add i64 %add192, 64
  %181 = inttoptr i64 %add193 to ptr
  %call194 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %181)
  store <2 x i64> %call194, ptr %vk8x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk8x01234567) #5
  %182 = load <2 x i64>, ptr %vk8x01234567, align 16, !tbaa !11
  %call195 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %182)
  store <2 x i64> %call195, ptr %vxk8x01234567, align 16, !tbaa !11
  %183 = load ptr, ptr %i8, align 8, !tbaa !8
  %add.ptr196 = getelementptr inbounds i8, ptr %183, i64 8
  store ptr %add.ptr196, ptr %i8, align 8, !tbaa !8
  %184 = load <2 x i64>, ptr %vxi8x01234567, align 16, !tbaa !11
  %185 = load <2 x i64>, ptr %vxk8x01234567, align 16, !tbaa !11
  %call197 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %184, <2 x i64> noundef %185)
  store <2 x i64> %call197, ptr %vprod01234567, align 16, !tbaa !11
  %186 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %187 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call198 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %187)
  %call199 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %186, <2 x i64> noundef %call198)
  store <2 x i64> %call199, ptr %vacc0123, align 16, !tbaa !11
  %188 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %189 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %190 = load <2 x i64>, ptr %vprod01234567, align 16, !tbaa !11
  %call200 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %189, <2 x i64> noundef %190)
  %call201 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call200, i32 noundef 16)
  %call202 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %188, <2 x i64> noundef %call201)
  store <2 x i64> %call202, ptr %vacc4567, align 16, !tbaa !11
  %191 = load ptr, ptr %w, align 8, !tbaa !8
  %192 = ptrtoint ptr %191 to i64
  %add203 = add i64 %192, 32
  %add204 = add i64 %add203, 72
  %193 = inttoptr i64 %add204 to ptr
  store ptr %193, ptr %w, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0123) #5
  %194 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %call205 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %194)
  store <4 x float> %call205, ptr %vscaled0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled4567) #5
  %195 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %call206 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %195)
  store <4 x float> %call206, ptr %vscaled4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #5
  %196 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %scale = getelementptr inbounds %struct.anon.3, ptr %196, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call207 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call207, ptr %vscale, align 16, !tbaa !11
  %197 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !11
  %198 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call208 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %197, <4 x float> noundef %198)
  store <4 x float> %call208, ptr %vscaled0123, align 16, !tbaa !11
  %199 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !11
  %200 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call209 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %199, <4 x float> noundef %200)
  store <4 x float> %call209, ptr %vscaled4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  %201 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %201, i32 0, i32 1
  %arraydecay210 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call211 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay210)
  store <4 x float> %call211, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %202 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !11
  %203 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call212 = call <4 x float> @_mm_min_ps(<4 x float> noundef %202, <4 x float> noundef %203)
  store <4 x float> %call212, ptr %vscaled0123, align 16, !tbaa !11
  %204 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !11
  %205 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call213 = call <4 x float> @_mm_min_ps(<4 x float> noundef %204, <4 x float> noundef %205)
  store <4 x float> %call213, ptr %vscaled4567, align 16, !tbaa !11
  %206 = load <4 x float>, ptr %vscaled0123, align 16, !tbaa !11
  %call214 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %206)
  store <2 x i64> %call214, ptr %vacc0123, align 16, !tbaa !11
  %207 = load <4 x float>, ptr %vscaled4567, align 16, !tbaa !11
  %call215 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %207)
  store <2 x i64> %call215, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #5
  %208 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %208, i32 0, i32 2
  %arraydecay216 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call217 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay216)
  store <2 x i64> %call217, ptr %voutput_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #5
  %209 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %210 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %call218 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %209, <2 x i64> noundef %210)
  %211 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call219 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call218, <2 x i64> noundef %211)
  store <2 x i64> %call219, ptr %vout01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #5
  %212 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %213 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %call220 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %212, <2 x i64> noundef %213)
  store <2 x i64> %call220, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #5
  %214 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min = getelementptr inbounds %struct.anon.3, ptr %214, i32 0, i32 3
  %arraydecay221 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call222 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay221)
  store <2 x i64> %call222, ptr %voutput_min, align 16, !tbaa !11
  %215 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %216 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call223 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %215, <2 x i64> noundef %216)
  store <2 x i64> %call223, ptr %vout0123456701234567, align 16, !tbaa !11
  %217 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %218 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %217, <2 x i64> noundef %218)
  %219 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr224 = getelementptr inbounds i8, ptr %219, i64 8
  store ptr %add.ptr224, ptr %output.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi8x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi7x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %220 = load i64, ptr %c, align 8, !tbaa !4
  %sub = sub i64 %220, 8
  store i64 %sub, ptr %c, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %221 = load i64, ptr %c, align 8, !tbaa !4
  %cmp225 = icmp ne i64 %221, 0
  %lnot227 = xor i1 %cmp225, true
  %lnot229 = xor i1 %lnot227, true
  %lnot.ext230 = zext i1 %lnot229 to i32
  %conv231 = sext i32 %lnot.ext230 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv231, i64 0)
  %tobool232 = icmp ne i64 %expval, 0
  br i1 %tobool232, label %if.then233, label %if.end420

if.then233:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123234) #5
  %222 = load ptr, ptr %w, align 8, !tbaa !8
  %call235 = call <2 x i64> @_mm_loadu_si128(ptr noundef %222)
  store <2 x i64> %call235, ptr %vacc0123234, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567236) #5
  %223 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr237 = getelementptr inbounds i32, ptr %223, i64 4
  %call238 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr237)
  store <2 x i64> %call238, ptr %vacc4567236, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567239) #5
  %224 = load ptr, ptr %i0, align 8, !tbaa !8
  %call240 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %224)
  store <2 x i64> %call240, ptr %vi0x01234567239, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567241) #5
  %225 = load <2 x i64>, ptr %vi0x01234567239, align 16, !tbaa !11
  %call242 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %225)
  store <2 x i64> %call242, ptr %vxi0x01234567241, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk0x01234567243) #5
  %226 = load ptr, ptr %w, align 8, !tbaa !8
  %227 = ptrtoint ptr %226 to i64
  %add244 = add i64 %227, 32
  %add245 = add i64 %add244, 0
  %228 = inttoptr i64 %add245 to ptr
  %call246 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %228)
  store <2 x i64> %call246, ptr %vk0x01234567243, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk0x01234567247) #5
  %229 = load <2 x i64>, ptr %vk0x01234567243, align 16, !tbaa !11
  %call248 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %229)
  store <2 x i64> %call248, ptr %vxk0x01234567247, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod01234567249) #5
  %230 = load <2 x i64>, ptr %vxi0x01234567241, align 16, !tbaa !11
  %231 = load <2 x i64>, ptr %vxk0x01234567247, align 16, !tbaa !11
  %call250 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %230, <2 x i64> noundef %231)
  store <2 x i64> %call250, ptr %vprod01234567249, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567251) #5
  %232 = load ptr, ptr %i1, align 8, !tbaa !8
  %call252 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %232)
  store <2 x i64> %call252, ptr %vi1x01234567251, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567253) #5
  %233 = load <2 x i64>, ptr %vi1x01234567251, align 16, !tbaa !11
  %call254 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %233)
  store <2 x i64> %call254, ptr %vxi1x01234567253, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk1x01234567255) #5
  %234 = load ptr, ptr %w, align 8, !tbaa !8
  %235 = ptrtoint ptr %234 to i64
  %add256 = add i64 %235, 32
  %add257 = add i64 %add256, 8
  %236 = inttoptr i64 %add257 to ptr
  %call258 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %236)
  store <2 x i64> %call258, ptr %vk1x01234567255, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk1x01234567259) #5
  %237 = load <2 x i64>, ptr %vk1x01234567255, align 16, !tbaa !11
  %call260 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %237)
  store <2 x i64> %call260, ptr %vxk1x01234567259, align 16, !tbaa !11
  %238 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %239 = load <2 x i64>, ptr %vxi1x01234567253, align 16, !tbaa !11
  %240 = load <2 x i64>, ptr %vxk1x01234567259, align 16, !tbaa !11
  %call261 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %239, <2 x i64> noundef %240)
  %call262 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %238, <2 x i64> noundef %call261)
  store <2 x i64> %call262, ptr %vprod01234567249, align 16, !tbaa !11
  %241 = load <2 x i64>, ptr %vacc0123234, align 16, !tbaa !11
  %242 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call263 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %242)
  %call264 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %241, <2 x i64> noundef %call263)
  store <2 x i64> %call264, ptr %vacc0123234, align 16, !tbaa !11
  %243 = load <2 x i64>, ptr %vacc4567236, align 16, !tbaa !11
  %244 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %245 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call265 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %244, <2 x i64> noundef %245)
  %call266 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call265, i32 noundef 16)
  %call267 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %243, <2 x i64> noundef %call266)
  store <2 x i64> %call267, ptr %vacc4567236, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567268) #5
  %246 = load ptr, ptr %i2, align 8, !tbaa !8
  %call269 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %246)
  store <2 x i64> %call269, ptr %vi2x01234567268, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567270) #5
  %247 = load <2 x i64>, ptr %vi2x01234567268, align 16, !tbaa !11
  %call271 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %247)
  store <2 x i64> %call271, ptr %vxi2x01234567270, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk2x01234567272) #5
  %248 = load ptr, ptr %w, align 8, !tbaa !8
  %249 = ptrtoint ptr %248 to i64
  %add273 = add i64 %249, 32
  %add274 = add i64 %add273, 16
  %250 = inttoptr i64 %add274 to ptr
  %call275 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %250)
  store <2 x i64> %call275, ptr %vk2x01234567272, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk2x01234567276) #5
  %251 = load <2 x i64>, ptr %vk2x01234567272, align 16, !tbaa !11
  %call277 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %251)
  store <2 x i64> %call277, ptr %vxk2x01234567276, align 16, !tbaa !11
  %252 = load <2 x i64>, ptr %vxi2x01234567270, align 16, !tbaa !11
  %253 = load <2 x i64>, ptr %vxk2x01234567276, align 16, !tbaa !11
  %call278 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %252, <2 x i64> noundef %253)
  store <2 x i64> %call278, ptr %vprod01234567249, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567279) #5
  %254 = load ptr, ptr %i3, align 8, !tbaa !8
  %call280 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %254)
  store <2 x i64> %call280, ptr %vi3x01234567279, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567281) #5
  %255 = load <2 x i64>, ptr %vi3x01234567279, align 16, !tbaa !11
  %call282 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %255)
  store <2 x i64> %call282, ptr %vxi3x01234567281, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk3x01234567283) #5
  %256 = load ptr, ptr %w, align 8, !tbaa !8
  %257 = ptrtoint ptr %256 to i64
  %add284 = add i64 %257, 32
  %add285 = add i64 %add284, 24
  %258 = inttoptr i64 %add285 to ptr
  %call286 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %258)
  store <2 x i64> %call286, ptr %vk3x01234567283, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk3x01234567287) #5
  %259 = load <2 x i64>, ptr %vk3x01234567283, align 16, !tbaa !11
  %call288 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %259)
  store <2 x i64> %call288, ptr %vxk3x01234567287, align 16, !tbaa !11
  %260 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %261 = load <2 x i64>, ptr %vxi3x01234567281, align 16, !tbaa !11
  %262 = load <2 x i64>, ptr %vxk3x01234567287, align 16, !tbaa !11
  %call289 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %261, <2 x i64> noundef %262)
  %call290 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %260, <2 x i64> noundef %call289)
  store <2 x i64> %call290, ptr %vprod01234567249, align 16, !tbaa !11
  %263 = load <2 x i64>, ptr %vacc0123234, align 16, !tbaa !11
  %264 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call291 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %264)
  %call292 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %263, <2 x i64> noundef %call291)
  store <2 x i64> %call292, ptr %vacc0123234, align 16, !tbaa !11
  %265 = load <2 x i64>, ptr %vacc4567236, align 16, !tbaa !11
  %266 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %267 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call293 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %266, <2 x i64> noundef %267)
  %call294 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call293, i32 noundef 16)
  %call295 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %265, <2 x i64> noundef %call294)
  store <2 x i64> %call295, ptr %vacc4567236, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567296) #5
  %268 = load ptr, ptr %i4, align 8, !tbaa !8
  %call297 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %268)
  store <2 x i64> %call297, ptr %vi4x01234567296, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567298) #5
  %269 = load <2 x i64>, ptr %vi4x01234567296, align 16, !tbaa !11
  %call299 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %269)
  store <2 x i64> %call299, ptr %vxi4x01234567298, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk4x01234567300) #5
  %270 = load ptr, ptr %w, align 8, !tbaa !8
  %271 = ptrtoint ptr %270 to i64
  %add301 = add i64 %271, 32
  %add302 = add i64 %add301, 32
  %272 = inttoptr i64 %add302 to ptr
  %call303 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %272)
  store <2 x i64> %call303, ptr %vk4x01234567300, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk4x01234567304) #5
  %273 = load <2 x i64>, ptr %vk4x01234567300, align 16, !tbaa !11
  %call305 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %273)
  store <2 x i64> %call305, ptr %vxk4x01234567304, align 16, !tbaa !11
  %274 = load <2 x i64>, ptr %vxi4x01234567298, align 16, !tbaa !11
  %275 = load <2 x i64>, ptr %vxk4x01234567304, align 16, !tbaa !11
  %call306 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %274, <2 x i64> noundef %275)
  store <2 x i64> %call306, ptr %vprod01234567249, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567307) #5
  %276 = load ptr, ptr %i5, align 8, !tbaa !8
  %call308 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %276)
  store <2 x i64> %call308, ptr %vi5x01234567307, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567309) #5
  %277 = load <2 x i64>, ptr %vi5x01234567307, align 16, !tbaa !11
  %call310 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %277)
  store <2 x i64> %call310, ptr %vxi5x01234567309, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk5x01234567311) #5
  %278 = load ptr, ptr %w, align 8, !tbaa !8
  %279 = ptrtoint ptr %278 to i64
  %add312 = add i64 %279, 32
  %add313 = add i64 %add312, 40
  %280 = inttoptr i64 %add313 to ptr
  %call314 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %280)
  store <2 x i64> %call314, ptr %vk5x01234567311, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk5x01234567315) #5
  %281 = load <2 x i64>, ptr %vk5x01234567311, align 16, !tbaa !11
  %call316 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %281)
  store <2 x i64> %call316, ptr %vxk5x01234567315, align 16, !tbaa !11
  %282 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %283 = load <2 x i64>, ptr %vxi5x01234567309, align 16, !tbaa !11
  %284 = load <2 x i64>, ptr %vxk5x01234567315, align 16, !tbaa !11
  %call317 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %283, <2 x i64> noundef %284)
  %call318 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %282, <2 x i64> noundef %call317)
  store <2 x i64> %call318, ptr %vprod01234567249, align 16, !tbaa !11
  %285 = load <2 x i64>, ptr %vacc0123234, align 16, !tbaa !11
  %286 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call319 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %286)
  %call320 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %285, <2 x i64> noundef %call319)
  store <2 x i64> %call320, ptr %vacc0123234, align 16, !tbaa !11
  %287 = load <2 x i64>, ptr %vacc4567236, align 16, !tbaa !11
  %288 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %289 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call321 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %288, <2 x i64> noundef %289)
  %call322 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call321, i32 noundef 16)
  %call323 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %287, <2 x i64> noundef %call322)
  store <2 x i64> %call323, ptr %vacc4567236, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567324) #5
  %290 = load ptr, ptr %i6, align 8, !tbaa !8
  %call325 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %290)
  store <2 x i64> %call325, ptr %vi6x01234567324, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567326) #5
  %291 = load <2 x i64>, ptr %vi6x01234567324, align 16, !tbaa !11
  %call327 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %291)
  store <2 x i64> %call327, ptr %vxi6x01234567326, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk6x01234567328) #5
  %292 = load ptr, ptr %w, align 8, !tbaa !8
  %293 = ptrtoint ptr %292 to i64
  %add329 = add i64 %293, 32
  %add330 = add i64 %add329, 48
  %294 = inttoptr i64 %add330 to ptr
  %call331 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %294)
  store <2 x i64> %call331, ptr %vk6x01234567328, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk6x01234567332) #5
  %295 = load <2 x i64>, ptr %vk6x01234567328, align 16, !tbaa !11
  %call333 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %295)
  store <2 x i64> %call333, ptr %vxk6x01234567332, align 16, !tbaa !11
  %296 = load <2 x i64>, ptr %vxi6x01234567326, align 16, !tbaa !11
  %297 = load <2 x i64>, ptr %vxk6x01234567332, align 16, !tbaa !11
  %call334 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %296, <2 x i64> noundef %297)
  store <2 x i64> %call334, ptr %vprod01234567249, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi7x01234567335) #5
  %298 = load ptr, ptr %i7, align 8, !tbaa !8
  %call336 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %298)
  store <2 x i64> %call336, ptr %vi7x01234567335, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi7x01234567337) #5
  %299 = load <2 x i64>, ptr %vi7x01234567335, align 16, !tbaa !11
  %call338 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %299)
  store <2 x i64> %call338, ptr %vxi7x01234567337, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk7x01234567339) #5
  %300 = load ptr, ptr %w, align 8, !tbaa !8
  %301 = ptrtoint ptr %300 to i64
  %add340 = add i64 %301, 32
  %add341 = add i64 %add340, 56
  %302 = inttoptr i64 %add341 to ptr
  %call342 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %302)
  store <2 x i64> %call342, ptr %vk7x01234567339, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk7x01234567343) #5
  %303 = load <2 x i64>, ptr %vk7x01234567339, align 16, !tbaa !11
  %call344 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %303)
  store <2 x i64> %call344, ptr %vxk7x01234567343, align 16, !tbaa !11
  %304 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %305 = load <2 x i64>, ptr %vxi7x01234567337, align 16, !tbaa !11
  %306 = load <2 x i64>, ptr %vxk7x01234567343, align 16, !tbaa !11
  %call345 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %305, <2 x i64> noundef %306)
  %call346 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %304, <2 x i64> noundef %call345)
  store <2 x i64> %call346, ptr %vprod01234567249, align 16, !tbaa !11
  %307 = load <2 x i64>, ptr %vacc0123234, align 16, !tbaa !11
  %308 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call347 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %308)
  %call348 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %307, <2 x i64> noundef %call347)
  store <2 x i64> %call348, ptr %vacc0123234, align 16, !tbaa !11
  %309 = load <2 x i64>, ptr %vacc4567236, align 16, !tbaa !11
  %310 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %311 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call349 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %310, <2 x i64> noundef %311)
  %call350 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call349, i32 noundef 16)
  %call351 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %309, <2 x i64> noundef %call350)
  store <2 x i64> %call351, ptr %vacc4567236, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi8x01234567352) #5
  %312 = load ptr, ptr %i8, align 8, !tbaa !8
  %call353 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %312)
  store <2 x i64> %call353, ptr %vi8x01234567352, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi8x01234567354) #5
  %313 = load <2 x i64>, ptr %vi8x01234567352, align 16, !tbaa !11
  %call355 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %313)
  store <2 x i64> %call355, ptr %vxi8x01234567354, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vk8x01234567356) #5
  %314 = load ptr, ptr %w, align 8, !tbaa !8
  %315 = ptrtoint ptr %314 to i64
  %add357 = add i64 %315, 32
  %add358 = add i64 %add357, 64
  %316 = inttoptr i64 %add358 to ptr
  %call359 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %316)
  store <2 x i64> %call359, ptr %vk8x01234567356, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxk8x01234567360) #5
  %317 = load <2 x i64>, ptr %vk8x01234567356, align 16, !tbaa !11
  %call361 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %317)
  store <2 x i64> %call361, ptr %vxk8x01234567360, align 16, !tbaa !11
  %318 = load <2 x i64>, ptr %vxi8x01234567354, align 16, !tbaa !11
  %319 = load <2 x i64>, ptr %vxk8x01234567360, align 16, !tbaa !11
  %call362 = call <2 x i64> @_mm_mullo_epi16(<2 x i64> noundef %318, <2 x i64> noundef %319)
  store <2 x i64> %call362, ptr %vprod01234567249, align 16, !tbaa !11
  %320 = load <2 x i64>, ptr %vacc0123234, align 16, !tbaa !11
  %321 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call363 = call <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %321)
  %call364 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %320, <2 x i64> noundef %call363)
  store <2 x i64> %call364, ptr %vacc0123234, align 16, !tbaa !11
  %322 = load <2 x i64>, ptr %vacc4567236, align 16, !tbaa !11
  %323 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %324 = load <2 x i64>, ptr %vprod01234567249, align 16, !tbaa !11
  %call365 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %323, <2 x i64> noundef %324)
  %call366 = call <2 x i64> @_mm_srai_epi32(<2 x i64> noundef %call365, i32 noundef 16)
  %call367 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %322, <2 x i64> noundef %call366)
  store <2 x i64> %call367, ptr %vacc4567236, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0123368) #5
  %325 = load <2 x i64>, ptr %vacc0123234, align 16, !tbaa !11
  %call369 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %325)
  store <4 x float> %call369, ptr %vscaled0123368, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled4567370) #5
  %326 = load <2 x i64>, ptr %vacc4567236, align 16, !tbaa !11
  %call371 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %326)
  store <4 x float> %call371, ptr %vscaled4567370, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale372) #5
  %327 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %scale373 = getelementptr inbounds %struct.anon.3, ptr %327, i32 0, i32 0
  %arraydecay374 = getelementptr inbounds [4 x float], ptr %scale373, i64 0, i64 0
  %call375 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay374)
  store <4 x float> %call375, ptr %vscale372, align 16, !tbaa !11
  %328 = load <4 x float>, ptr %vscaled0123368, align 16, !tbaa !11
  %329 = load <4 x float>, ptr %vscale372, align 16, !tbaa !11
  %call376 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %328, <4 x float> noundef %329)
  store <4 x float> %call376, ptr %vscaled0123368, align 16, !tbaa !11
  %330 = load <4 x float>, ptr %vscaled4567370, align 16, !tbaa !11
  %331 = load <4 x float>, ptr %vscale372, align 16, !tbaa !11
  %call377 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %330, <4 x float> noundef %331)
  store <4 x float> %call377, ptr %vscaled4567370, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point378) #5
  %332 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max_less_zero_point379 = getelementptr inbounds %struct.anon.3, ptr %332, i32 0, i32 1
  %arraydecay380 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point379, i64 0, i64 0
  %call381 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay380)
  store <4 x float> %call381, ptr %voutput_max_less_zero_point378, align 16, !tbaa !11
  %333 = load <4 x float>, ptr %vscaled0123368, align 16, !tbaa !11
  %334 = load <4 x float>, ptr %voutput_max_less_zero_point378, align 16, !tbaa !11
  %call382 = call <4 x float> @_mm_min_ps(<4 x float> noundef %333, <4 x float> noundef %334)
  store <4 x float> %call382, ptr %vscaled0123368, align 16, !tbaa !11
  %335 = load <4 x float>, ptr %vscaled4567370, align 16, !tbaa !11
  %336 = load <4 x float>, ptr %voutput_max_less_zero_point378, align 16, !tbaa !11
  %call383 = call <4 x float> @_mm_min_ps(<4 x float> noundef %335, <4 x float> noundef %336)
  store <4 x float> %call383, ptr %vscaled4567370, align 16, !tbaa !11
  %337 = load <4 x float>, ptr %vscaled0123368, align 16, !tbaa !11
  %call384 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %337)
  store <2 x i64> %call384, ptr %vacc0123234, align 16, !tbaa !11
  %338 = load <4 x float>, ptr %vscaled4567370, align 16, !tbaa !11
  %call385 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %338)
  store <2 x i64> %call385, ptr %vacc4567236, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point386) #5
  %339 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point387 = getelementptr inbounds %struct.anon.3, ptr %339, i32 0, i32 2
  %arraydecay388 = getelementptr inbounds [8 x i16], ptr %output_zero_point387, i64 0, i64 0
  %call389 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay388)
  store <2 x i64> %call389, ptr %voutput_zero_point386, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567390) #5
  %340 = load <2 x i64>, ptr %vacc0123234, align 16, !tbaa !11
  %341 = load <2 x i64>, ptr %vacc4567236, align 16, !tbaa !11
  %call391 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %340, <2 x i64> noundef %341)
  %342 = load <2 x i64>, ptr %voutput_zero_point386, align 16, !tbaa !11
  %call392 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call391, <2 x i64> noundef %342)
  store <2 x i64> %call392, ptr %vout01234567390, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567393) #5
  %343 = load <2 x i64>, ptr %vout01234567390, align 16, !tbaa !11
  %344 = load <2 x i64>, ptr %vout01234567390, align 16, !tbaa !11
  %call394 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %343, <2 x i64> noundef %344)
  store <2 x i64> %call394, ptr %vout0123456701234567393, align 16, !tbaa !11
  %345 = load <2 x i64>, ptr %vout0123456701234567393, align 16, !tbaa !11
  %346 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min395 = getelementptr inbounds %struct.anon.3, ptr %346, i32 0, i32 3
  %arraydecay396 = getelementptr inbounds [16 x i8], ptr %output_min395, i64 0, i64 0
  %call397 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay396)
  %call398 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %345, <2 x i64> noundef %call397)
  store <2 x i64> %call398, ptr %vout0123456701234567393, align 16, !tbaa !11
  %347 = load i64, ptr %c, align 8, !tbaa !4
  %and = and i64 %347, 4
  %tobool399 = icmp ne i64 %and, 0
  br i1 %tobool399, label %if.then400, label %if.end404

if.then400:                                       ; preds = %if.then233
  %348 = load <2 x i64>, ptr %vout0123456701234567393, align 16, !tbaa !11
  %call401 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %348)
  %349 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i32 %call401, ptr %349, align 4, !tbaa !12
  %350 = load <2 x i64>, ptr %vout0123456701234567393, align 16, !tbaa !11
  %call402 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %350, i32 noundef 32)
  store <2 x i64> %call402, ptr %vout0123456701234567393, align 16, !tbaa !11
  %351 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr403 = getelementptr inbounds i8, ptr %351, i64 4
  store ptr %add.ptr403, ptr %output.addr, align 8, !tbaa !8
  br label %if.end404

if.end404:                                        ; preds = %if.then400, %if.then233
  %352 = load i64, ptr %c, align 8, !tbaa !4
  %and405 = and i64 %352, 2
  %tobool406 = icmp ne i64 %and405, 0
  br i1 %tobool406, label %if.then407, label %if.end412

if.then407:                                       ; preds = %if.end404
  %353 = load <2 x i64>, ptr %vout0123456701234567393, align 16, !tbaa !11
  %354 = bitcast <2 x i64> %353 to <8 x i16>
  %355 = extractelement <8 x i16> %354, i64 0
  %conv408 = zext i16 %355 to i32
  %conv409 = trunc i32 %conv408 to i16
  %356 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i16 %conv409, ptr %356, align 2, !tbaa !14
  %357 = load <2 x i64>, ptr %vout0123456701234567393, align 16, !tbaa !11
  %call410 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %357, i32 noundef 16)
  store <2 x i64> %call410, ptr %vout0123456701234567393, align 16, !tbaa !11
  %358 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr411 = getelementptr inbounds i8, ptr %358, i64 2
  store ptr %add.ptr411, ptr %output.addr, align 8, !tbaa !8
  br label %if.end412

if.end412:                                        ; preds = %if.then407, %if.end404
  %359 = load i64, ptr %c, align 8, !tbaa !4
  %and413 = and i64 %359, 1
  %tobool414 = icmp ne i64 %and413, 0
  br i1 %tobool414, label %if.then415, label %if.end419

if.then415:                                       ; preds = %if.end412
  %360 = load <2 x i64>, ptr %vout0123456701234567393, align 16, !tbaa !11
  %361 = bitcast <2 x i64> %360 to <16 x i8>
  %362 = extractelement <16 x i8> %361, i64 0
  %conv416 = zext i8 %362 to i32
  %conv417 = trunc i32 %conv416 to i8
  %363 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i8 %conv417, ptr %363, align 1, !tbaa !11
  %364 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr418 = getelementptr inbounds i8, ptr %364, i64 1
  store ptr %add.ptr418, ptr %output.addr, align 8, !tbaa !8
  br label %if.end419

if.end419:                                        ; preds = %if.then415, %if.end412
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567393) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567390) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point386) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point378) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale372) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled4567370) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0123368) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk8x01234567360) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk8x01234567356) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi8x01234567354) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi8x01234567352) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk7x01234567343) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk7x01234567339) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi7x01234567337) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi7x01234567335) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk6x01234567332) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk6x01234567328) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567326) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567324) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk5x01234567315) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk5x01234567311) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567309) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567307) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk4x01234567304) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk4x01234567300) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567298) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567296) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk3x01234567287) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk3x01234567283) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567281) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567279) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk2x01234567276) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk2x01234567272) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567270) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567268) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk1x01234567259) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk1x01234567255) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567253) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567251) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod01234567249) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxk0x01234567247) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vk0x01234567243) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567241) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567239) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567236) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123234) #5
  br label %if.end420

if.end420:                                        ; preds = %if.end419, %for.end
  %365 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %366 = ptrtoint ptr %365 to i64
  %367 = load i64, ptr %output_increment.addr, align 8, !tbaa !4
  %add421 = add i64 %366, %367
  %368 = inttoptr i64 %add421 to ptr
  store ptr %368, ptr %output.addr, align 8, !tbaa !8
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

do.cond:                                          ; preds = %if.end420
  %369 = load i64, ptr %output_width.addr, align 8, !tbaa !4
  %dec = add i64 %369, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !4
  %cmp422 = icmp ne i64 %dec, 0
  br i1 %cmp422, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !11
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !11
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %mul = mul <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %mul to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %add = add <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %add = add <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi16_epi32(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %3 = call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
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
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
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
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !11
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !12
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}

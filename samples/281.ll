; ModuleID = 'samples/281.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-dwconv/gen/up1x25-minmax-fp32-scalar-imagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i32, float, float, i32, i32, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #3
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 1
  %1 = load float, ptr %scale, align 4, !tbaa !11
  store float %1, ptr %vscale, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #3
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 2
  %3 = load float, ptr %magic_bias, align 8, !tbaa !11
  store float %3, ptr %vmagic_bias, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_min) #3
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_min = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %magic_min, align 4, !tbaa !11
  store i32 %5, ptr %vmagic_min, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_max) #3
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_max = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %magic_max, align 16, !tbaa !11
  store i32 %7, ptr %vmagic_max, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_zero_point) #3
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %magic_bias_less_zero_point, align 4, !tbaa !11
  store i32 %9, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vkernel_zero_point) #3
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %kernel_zero_point = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %kernel_zero_point, align 64, !tbaa !11
  store i32 %11, ptr %vkernel_zero_point, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %do.cond502, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i9) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i10) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i11) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i12) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i14) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i15) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i16) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i17) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i18) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i19) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i20) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i21) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i22) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #3
  %216 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %216, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #3
  %217 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %217, ptr %w, align 8, !tbaa !9
  br label %do.body291

do.body291:                                       ; preds = %do.cond, %if.end289
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #3
  %218 = load ptr, ptr %w, align 8, !tbaa !9
  %219 = load i32, ptr %218, align 4, !tbaa !14
  store i32 %219, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0) #3
  %220 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %220, i32 1
  store ptr %incdec.ptr, ptr %i0, align 8, !tbaa !9
  %221 = load i8, ptr %220, align 1, !tbaa !11
  %conv292 = zext i8 %221 to i32
  store i32 %conv292, ptr %vi0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0) #3
  %222 = load ptr, ptr %w, align 8, !tbaa !9
  %223 = ptrtoint ptr %222 to i64
  %add293 = add i64 %223, 4
  %224 = inttoptr i64 %add293 to ptr
  %arrayidx294 = getelementptr inbounds i8, ptr %224, i64 0
  %225 = load i8, ptr %arrayidx294, align 1, !tbaa !11
  %conv295 = zext i8 %225 to i32
  %226 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub = sub nsw i32 %conv295, %226
  store i32 %sub, ptr %vk0, align 4, !tbaa !14
  %227 = load i32, ptr %vi0, align 4, !tbaa !14
  %228 = load i32, ptr %vk0, align 4, !tbaa !14
  %mul = mul nsw i32 %227, %228
  %229 = load i32, ptr %vacc, align 4, !tbaa !14
  %add296 = add nsw i32 %229, %mul
  store i32 %add296, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1) #3
  %230 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr297 = getelementptr inbounds i8, ptr %230, i32 1
  store ptr %incdec.ptr297, ptr %i1, align 8, !tbaa !9
  %231 = load i8, ptr %230, align 1, !tbaa !11
  %conv298 = zext i8 %231 to i32
  store i32 %conv298, ptr %vi1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1) #3
  %232 = load ptr, ptr %w, align 8, !tbaa !9
  %233 = ptrtoint ptr %232 to i64
  %add299 = add i64 %233, 4
  %234 = inttoptr i64 %add299 to ptr
  %arrayidx300 = getelementptr inbounds i8, ptr %234, i64 1
  %235 = load i8, ptr %arrayidx300, align 1, !tbaa !11
  %conv301 = zext i8 %235 to i32
  %236 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub302 = sub nsw i32 %conv301, %236
  store i32 %sub302, ptr %vk1, align 4, !tbaa !14
  %237 = load i32, ptr %vi1, align 4, !tbaa !14
  %238 = load i32, ptr %vk1, align 4, !tbaa !14
  %mul303 = mul nsw i32 %237, %238
  %239 = load i32, ptr %vacc, align 4, !tbaa !14
  %add304 = add nsw i32 %239, %mul303
  store i32 %add304, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2) #3
  %240 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr305 = getelementptr inbounds i8, ptr %240, i32 1
  store ptr %incdec.ptr305, ptr %i2, align 8, !tbaa !9
  %241 = load i8, ptr %240, align 1, !tbaa !11
  %conv306 = zext i8 %241 to i32
  store i32 %conv306, ptr %vi2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2) #3
  %242 = load ptr, ptr %w, align 8, !tbaa !9
  %243 = ptrtoint ptr %242 to i64
  %add307 = add i64 %243, 4
  %244 = inttoptr i64 %add307 to ptr
  %arrayidx308 = getelementptr inbounds i8, ptr %244, i64 2
  %245 = load i8, ptr %arrayidx308, align 1, !tbaa !11
  %conv309 = zext i8 %245 to i32
  %246 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub310 = sub nsw i32 %conv309, %246
  store i32 %sub310, ptr %vk2, align 4, !tbaa !14
  %247 = load i32, ptr %vi2, align 4, !tbaa !14
  %248 = load i32, ptr %vk2, align 4, !tbaa !14
  %mul311 = mul nsw i32 %247, %248
  %249 = load i32, ptr %vacc, align 4, !tbaa !14
  %add312 = add nsw i32 %249, %mul311
  store i32 %add312, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3) #3
  %250 = load ptr, ptr %i3, align 8, !tbaa !9
  %incdec.ptr313 = getelementptr inbounds i8, ptr %250, i32 1
  store ptr %incdec.ptr313, ptr %i3, align 8, !tbaa !9
  %251 = load i8, ptr %250, align 1, !tbaa !11
  %conv314 = zext i8 %251 to i32
  store i32 %conv314, ptr %vi3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3) #3
  %252 = load ptr, ptr %w, align 8, !tbaa !9
  %253 = ptrtoint ptr %252 to i64
  %add315 = add i64 %253, 4
  %254 = inttoptr i64 %add315 to ptr
  %arrayidx316 = getelementptr inbounds i8, ptr %254, i64 3
  %255 = load i8, ptr %arrayidx316, align 1, !tbaa !11
  %conv317 = zext i8 %255 to i32
  %256 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub318 = sub nsw i32 %conv317, %256
  store i32 %sub318, ptr %vk3, align 4, !tbaa !14
  %257 = load i32, ptr %vi3, align 4, !tbaa !14
  %258 = load i32, ptr %vk3, align 4, !tbaa !14
  %mul319 = mul nsw i32 %257, %258
  %259 = load i32, ptr %vacc, align 4, !tbaa !14
  %add320 = add nsw i32 %259, %mul319
  store i32 %add320, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4) #3
  %260 = load ptr, ptr %i4, align 8, !tbaa !9
  %incdec.ptr321 = getelementptr inbounds i8, ptr %260, i32 1
  store ptr %incdec.ptr321, ptr %i4, align 8, !tbaa !9
  %261 = load i8, ptr %260, align 1, !tbaa !11
  %conv322 = zext i8 %261 to i32
  store i32 %conv322, ptr %vi4, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4) #3
  %262 = load ptr, ptr %w, align 8, !tbaa !9
  %263 = ptrtoint ptr %262 to i64
  %add323 = add i64 %263, 4
  %264 = inttoptr i64 %add323 to ptr
  %arrayidx324 = getelementptr inbounds i8, ptr %264, i64 4
  %265 = load i8, ptr %arrayidx324, align 1, !tbaa !11
  %conv325 = zext i8 %265 to i32
  %266 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub326 = sub nsw i32 %conv325, %266
  store i32 %sub326, ptr %vk4, align 4, !tbaa !14
  %267 = load i32, ptr %vi4, align 4, !tbaa !14
  %268 = load i32, ptr %vk4, align 4, !tbaa !14
  %mul327 = mul nsw i32 %267, %268
  %269 = load i32, ptr %vacc, align 4, !tbaa !14
  %add328 = add nsw i32 %269, %mul327
  store i32 %add328, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5) #3
  %270 = load ptr, ptr %i5, align 8, !tbaa !9
  %incdec.ptr329 = getelementptr inbounds i8, ptr %270, i32 1
  store ptr %incdec.ptr329, ptr %i5, align 8, !tbaa !9
  %271 = load i8, ptr %270, align 1, !tbaa !11
  %conv330 = zext i8 %271 to i32
  store i32 %conv330, ptr %vi5, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5) #3
  %272 = load ptr, ptr %w, align 8, !tbaa !9
  %273 = ptrtoint ptr %272 to i64
  %add331 = add i64 %273, 4
  %274 = inttoptr i64 %add331 to ptr
  %arrayidx332 = getelementptr inbounds i8, ptr %274, i64 5
  %275 = load i8, ptr %arrayidx332, align 1, !tbaa !11
  %conv333 = zext i8 %275 to i32
  %276 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub334 = sub nsw i32 %conv333, %276
  store i32 %sub334, ptr %vk5, align 4, !tbaa !14
  %277 = load i32, ptr %vi5, align 4, !tbaa !14
  %278 = load i32, ptr %vk5, align 4, !tbaa !14
  %mul335 = mul nsw i32 %277, %278
  %279 = load i32, ptr %vacc, align 4, !tbaa !14
  %add336 = add nsw i32 %279, %mul335
  store i32 %add336, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6) #3
  %280 = load ptr, ptr %i6, align 8, !tbaa !9
  %incdec.ptr337 = getelementptr inbounds i8, ptr %280, i32 1
  store ptr %incdec.ptr337, ptr %i6, align 8, !tbaa !9
  %281 = load i8, ptr %280, align 1, !tbaa !11
  %conv338 = zext i8 %281 to i32
  store i32 %conv338, ptr %vi6, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6) #3
  %282 = load ptr, ptr %w, align 8, !tbaa !9
  %283 = ptrtoint ptr %282 to i64
  %add339 = add i64 %283, 4
  %284 = inttoptr i64 %add339 to ptr
  %arrayidx340 = getelementptr inbounds i8, ptr %284, i64 6
  %285 = load i8, ptr %arrayidx340, align 1, !tbaa !11
  %conv341 = zext i8 %285 to i32
  %286 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub342 = sub nsw i32 %conv341, %286
  store i32 %sub342, ptr %vk6, align 4, !tbaa !14
  %287 = load i32, ptr %vi6, align 4, !tbaa !14
  %288 = load i32, ptr %vk6, align 4, !tbaa !14
  %mul343 = mul nsw i32 %287, %288
  %289 = load i32, ptr %vacc, align 4, !tbaa !14
  %add344 = add nsw i32 %289, %mul343
  store i32 %add344, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7) #3
  %290 = load ptr, ptr %i7, align 8, !tbaa !9
  %incdec.ptr345 = getelementptr inbounds i8, ptr %290, i32 1
  store ptr %incdec.ptr345, ptr %i7, align 8, !tbaa !9
  %291 = load i8, ptr %290, align 1, !tbaa !11
  %conv346 = zext i8 %291 to i32
  store i32 %conv346, ptr %vi7, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7) #3
  %292 = load ptr, ptr %w, align 8, !tbaa !9
  %293 = ptrtoint ptr %292 to i64
  %add347 = add i64 %293, 4
  %294 = inttoptr i64 %add347 to ptr
  %arrayidx348 = getelementptr inbounds i8, ptr %294, i64 7
  %295 = load i8, ptr %arrayidx348, align 1, !tbaa !11
  %conv349 = zext i8 %295 to i32
  %296 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub350 = sub nsw i32 %conv349, %296
  store i32 %sub350, ptr %vk7, align 4, !tbaa !14
  %297 = load i32, ptr %vi7, align 4, !tbaa !14
  %298 = load i32, ptr %vk7, align 4, !tbaa !14
  %mul351 = mul nsw i32 %297, %298
  %299 = load i32, ptr %vacc, align 4, !tbaa !14
  %add352 = add nsw i32 %299, %mul351
  store i32 %add352, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8) #3
  %300 = load ptr, ptr %i8, align 8, !tbaa !9
  %incdec.ptr353 = getelementptr inbounds i8, ptr %300, i32 1
  store ptr %incdec.ptr353, ptr %i8, align 8, !tbaa !9
  %301 = load i8, ptr %300, align 1, !tbaa !11
  %conv354 = zext i8 %301 to i32
  store i32 %conv354, ptr %vi8, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8) #3
  %302 = load ptr, ptr %w, align 8, !tbaa !9
  %303 = ptrtoint ptr %302 to i64
  %add355 = add i64 %303, 4
  %304 = inttoptr i64 %add355 to ptr
  %arrayidx356 = getelementptr inbounds i8, ptr %304, i64 8
  %305 = load i8, ptr %arrayidx356, align 1, !tbaa !11
  %conv357 = zext i8 %305 to i32
  %306 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub358 = sub nsw i32 %conv357, %306
  store i32 %sub358, ptr %vk8, align 4, !tbaa !14
  %307 = load i32, ptr %vi8, align 4, !tbaa !14
  %308 = load i32, ptr %vk8, align 4, !tbaa !14
  %mul359 = mul nsw i32 %307, %308
  %309 = load i32, ptr %vacc, align 4, !tbaa !14
  %add360 = add nsw i32 %309, %mul359
  store i32 %add360, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9) #3
  %310 = load ptr, ptr %i9, align 8, !tbaa !9
  %incdec.ptr361 = getelementptr inbounds i8, ptr %310, i32 1
  store ptr %incdec.ptr361, ptr %i9, align 8, !tbaa !9
  %311 = load i8, ptr %310, align 1, !tbaa !11
  %conv362 = zext i8 %311 to i32
  store i32 %conv362, ptr %vi9, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9) #3
  %312 = load ptr, ptr %w, align 8, !tbaa !9
  %313 = ptrtoint ptr %312 to i64
  %add363 = add i64 %313, 4
  %314 = inttoptr i64 %add363 to ptr
  %arrayidx364 = getelementptr inbounds i8, ptr %314, i64 9
  %315 = load i8, ptr %arrayidx364, align 1, !tbaa !11
  %conv365 = zext i8 %315 to i32
  %316 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub366 = sub nsw i32 %conv365, %316
  store i32 %sub366, ptr %vk9, align 4, !tbaa !14
  %317 = load i32, ptr %vi9, align 4, !tbaa !14
  %318 = load i32, ptr %vk9, align 4, !tbaa !14
  %mul367 = mul nsw i32 %317, %318
  %319 = load i32, ptr %vacc, align 4, !tbaa !14
  %add368 = add nsw i32 %319, %mul367
  store i32 %add368, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10) #3
  %320 = load ptr, ptr %i10, align 8, !tbaa !9
  %incdec.ptr369 = getelementptr inbounds i8, ptr %320, i32 1
  store ptr %incdec.ptr369, ptr %i10, align 8, !tbaa !9
  %321 = load i8, ptr %320, align 1, !tbaa !11
  %conv370 = zext i8 %321 to i32
  store i32 %conv370, ptr %vi10, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10) #3
  %322 = load ptr, ptr %w, align 8, !tbaa !9
  %323 = ptrtoint ptr %322 to i64
  %add371 = add i64 %323, 4
  %324 = inttoptr i64 %add371 to ptr
  %arrayidx372 = getelementptr inbounds i8, ptr %324, i64 10
  %325 = load i8, ptr %arrayidx372, align 1, !tbaa !11
  %conv373 = zext i8 %325 to i32
  %326 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub374 = sub nsw i32 %conv373, %326
  store i32 %sub374, ptr %vk10, align 4, !tbaa !14
  %327 = load i32, ptr %vi10, align 4, !tbaa !14
  %328 = load i32, ptr %vk10, align 4, !tbaa !14
  %mul375 = mul nsw i32 %327, %328
  %329 = load i32, ptr %vacc, align 4, !tbaa !14
  %add376 = add nsw i32 %329, %mul375
  store i32 %add376, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11) #3
  %330 = load ptr, ptr %i11, align 8, !tbaa !9
  %incdec.ptr377 = getelementptr inbounds i8, ptr %330, i32 1
  store ptr %incdec.ptr377, ptr %i11, align 8, !tbaa !9
  %331 = load i8, ptr %330, align 1, !tbaa !11
  %conv378 = zext i8 %331 to i32
  store i32 %conv378, ptr %vi11, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11) #3
  %332 = load ptr, ptr %w, align 8, !tbaa !9
  %333 = ptrtoint ptr %332 to i64
  %add379 = add i64 %333, 4
  %334 = inttoptr i64 %add379 to ptr
  %arrayidx380 = getelementptr inbounds i8, ptr %334, i64 11
  %335 = load i8, ptr %arrayidx380, align 1, !tbaa !11
  %conv381 = zext i8 %335 to i32
  %336 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub382 = sub nsw i32 %conv381, %336
  store i32 %sub382, ptr %vk11, align 4, !tbaa !14
  %337 = load i32, ptr %vi11, align 4, !tbaa !14
  %338 = load i32, ptr %vk11, align 4, !tbaa !14
  %mul383 = mul nsw i32 %337, %338
  %339 = load i32, ptr %vacc, align 4, !tbaa !14
  %add384 = add nsw i32 %339, %mul383
  store i32 %add384, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12) #3
  %340 = load ptr, ptr %i12, align 8, !tbaa !9
  %incdec.ptr385 = getelementptr inbounds i8, ptr %340, i32 1
  store ptr %incdec.ptr385, ptr %i12, align 8, !tbaa !9
  %341 = load i8, ptr %340, align 1, !tbaa !11
  %conv386 = zext i8 %341 to i32
  store i32 %conv386, ptr %vi12, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12) #3
  %342 = load ptr, ptr %w, align 8, !tbaa !9
  %343 = ptrtoint ptr %342 to i64
  %add387 = add i64 %343, 4
  %344 = inttoptr i64 %add387 to ptr
  %arrayidx388 = getelementptr inbounds i8, ptr %344, i64 12
  %345 = load i8, ptr %arrayidx388, align 1, !tbaa !11
  %conv389 = zext i8 %345 to i32
  %346 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub390 = sub nsw i32 %conv389, %346
  store i32 %sub390, ptr %vk12, align 4, !tbaa !14
  %347 = load i32, ptr %vi12, align 4, !tbaa !14
  %348 = load i32, ptr %vk12, align 4, !tbaa !14
  %mul391 = mul nsw i32 %347, %348
  %349 = load i32, ptr %vacc, align 4, !tbaa !14
  %add392 = add nsw i32 %349, %mul391
  store i32 %add392, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13) #3
  %350 = load ptr, ptr %i13, align 8, !tbaa !9
  %incdec.ptr393 = getelementptr inbounds i8, ptr %350, i32 1
  store ptr %incdec.ptr393, ptr %i13, align 8, !tbaa !9
  %351 = load i8, ptr %350, align 1, !tbaa !11
  %conv394 = zext i8 %351 to i32
  store i32 %conv394, ptr %vi13, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13) #3
  %352 = load ptr, ptr %w, align 8, !tbaa !9
  %353 = ptrtoint ptr %352 to i64
  %add395 = add i64 %353, 4
  %354 = inttoptr i64 %add395 to ptr
  %arrayidx396 = getelementptr inbounds i8, ptr %354, i64 13
  %355 = load i8, ptr %arrayidx396, align 1, !tbaa !11
  %conv397 = zext i8 %355 to i32
  %356 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub398 = sub nsw i32 %conv397, %356
  store i32 %sub398, ptr %vk13, align 4, !tbaa !14
  %357 = load i32, ptr %vi13, align 4, !tbaa !14
  %358 = load i32, ptr %vk13, align 4, !tbaa !14
  %mul399 = mul nsw i32 %357, %358
  %359 = load i32, ptr %vacc, align 4, !tbaa !14
  %add400 = add nsw i32 %359, %mul399
  store i32 %add400, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14) #3
  %360 = load ptr, ptr %i14, align 8, !tbaa !9
  %incdec.ptr401 = getelementptr inbounds i8, ptr %360, i32 1
  store ptr %incdec.ptr401, ptr %i14, align 8, !tbaa !9
  %361 = load i8, ptr %360, align 1, !tbaa !11
  %conv402 = zext i8 %361 to i32
  store i32 %conv402, ptr %vi14, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14) #3
  %362 = load ptr, ptr %w, align 8, !tbaa !9
  %363 = ptrtoint ptr %362 to i64
  %add403 = add i64 %363, 4
  %364 = inttoptr i64 %add403 to ptr
  %arrayidx404 = getelementptr inbounds i8, ptr %364, i64 14
  %365 = load i8, ptr %arrayidx404, align 1, !tbaa !11
  %conv405 = zext i8 %365 to i32
  %366 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub406 = sub nsw i32 %conv405, %366
  store i32 %sub406, ptr %vk14, align 4, !tbaa !14
  %367 = load i32, ptr %vi14, align 4, !tbaa !14
  %368 = load i32, ptr %vk14, align 4, !tbaa !14
  %mul407 = mul nsw i32 %367, %368
  %369 = load i32, ptr %vacc, align 4, !tbaa !14
  %add408 = add nsw i32 %369, %mul407
  store i32 %add408, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15) #3
  %370 = load ptr, ptr %i15, align 8, !tbaa !9
  %incdec.ptr409 = getelementptr inbounds i8, ptr %370, i32 1
  store ptr %incdec.ptr409, ptr %i15, align 8, !tbaa !9
  %371 = load i8, ptr %370, align 1, !tbaa !11
  %conv410 = zext i8 %371 to i32
  store i32 %conv410, ptr %vi15, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15) #3
  %372 = load ptr, ptr %w, align 8, !tbaa !9
  %373 = ptrtoint ptr %372 to i64
  %add411 = add i64 %373, 4
  %374 = inttoptr i64 %add411 to ptr
  %arrayidx412 = getelementptr inbounds i8, ptr %374, i64 15
  %375 = load i8, ptr %arrayidx412, align 1, !tbaa !11
  %conv413 = zext i8 %375 to i32
  %376 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub414 = sub nsw i32 %conv413, %376
  store i32 %sub414, ptr %vk15, align 4, !tbaa !14
  %377 = load i32, ptr %vi15, align 4, !tbaa !14
  %378 = load i32, ptr %vk15, align 4, !tbaa !14
  %mul415 = mul nsw i32 %377, %378
  %379 = load i32, ptr %vacc, align 4, !tbaa !14
  %add416 = add nsw i32 %379, %mul415
  store i32 %add416, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16) #3
  %380 = load ptr, ptr %i16, align 8, !tbaa !9
  %incdec.ptr417 = getelementptr inbounds i8, ptr %380, i32 1
  store ptr %incdec.ptr417, ptr %i16, align 8, !tbaa !9
  %381 = load i8, ptr %380, align 1, !tbaa !11
  %conv418 = zext i8 %381 to i32
  store i32 %conv418, ptr %vi16, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16) #3
  %382 = load ptr, ptr %w, align 8, !tbaa !9
  %383 = ptrtoint ptr %382 to i64
  %add419 = add i64 %383, 4
  %384 = inttoptr i64 %add419 to ptr
  %arrayidx420 = getelementptr inbounds i8, ptr %384, i64 16
  %385 = load i8, ptr %arrayidx420, align 1, !tbaa !11
  %conv421 = zext i8 %385 to i32
  %386 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub422 = sub nsw i32 %conv421, %386
  store i32 %sub422, ptr %vk16, align 4, !tbaa !14
  %387 = load i32, ptr %vi16, align 4, !tbaa !14
  %388 = load i32, ptr %vk16, align 4, !tbaa !14
  %mul423 = mul nsw i32 %387, %388
  %389 = load i32, ptr %vacc, align 4, !tbaa !14
  %add424 = add nsw i32 %389, %mul423
  store i32 %add424, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17) #3
  %390 = load ptr, ptr %i17, align 8, !tbaa !9
  %incdec.ptr425 = getelementptr inbounds i8, ptr %390, i32 1
  store ptr %incdec.ptr425, ptr %i17, align 8, !tbaa !9
  %391 = load i8, ptr %390, align 1, !tbaa !11
  %conv426 = zext i8 %391 to i32
  store i32 %conv426, ptr %vi17, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17) #3
  %392 = load ptr, ptr %w, align 8, !tbaa !9
  %393 = ptrtoint ptr %392 to i64
  %add427 = add i64 %393, 4
  %394 = inttoptr i64 %add427 to ptr
  %arrayidx428 = getelementptr inbounds i8, ptr %394, i64 17
  %395 = load i8, ptr %arrayidx428, align 1, !tbaa !11
  %conv429 = zext i8 %395 to i32
  %396 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub430 = sub nsw i32 %conv429, %396
  store i32 %sub430, ptr %vk17, align 4, !tbaa !14
  %397 = load i32, ptr %vi17, align 4, !tbaa !14
  %398 = load i32, ptr %vk17, align 4, !tbaa !14
  %mul431 = mul nsw i32 %397, %398
  %399 = load i32, ptr %vacc, align 4, !tbaa !14
  %add432 = add nsw i32 %399, %mul431
  store i32 %add432, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18) #3
  %400 = load ptr, ptr %i18, align 8, !tbaa !9
  %incdec.ptr433 = getelementptr inbounds i8, ptr %400, i32 1
  store ptr %incdec.ptr433, ptr %i18, align 8, !tbaa !9
  %401 = load i8, ptr %400, align 1, !tbaa !11
  %conv434 = zext i8 %401 to i32
  store i32 %conv434, ptr %vi18, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18) #3
  %402 = load ptr, ptr %w, align 8, !tbaa !9
  %403 = ptrtoint ptr %402 to i64
  %add435 = add i64 %403, 4
  %404 = inttoptr i64 %add435 to ptr
  %arrayidx436 = getelementptr inbounds i8, ptr %404, i64 18
  %405 = load i8, ptr %arrayidx436, align 1, !tbaa !11
  %conv437 = zext i8 %405 to i32
  %406 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub438 = sub nsw i32 %conv437, %406
  store i32 %sub438, ptr %vk18, align 4, !tbaa !14
  %407 = load i32, ptr %vi18, align 4, !tbaa !14
  %408 = load i32, ptr %vk18, align 4, !tbaa !14
  %mul439 = mul nsw i32 %407, %408
  %409 = load i32, ptr %vacc, align 4, !tbaa !14
  %add440 = add nsw i32 %409, %mul439
  store i32 %add440, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19) #3
  %410 = load ptr, ptr %i19, align 8, !tbaa !9
  %incdec.ptr441 = getelementptr inbounds i8, ptr %410, i32 1
  store ptr %incdec.ptr441, ptr %i19, align 8, !tbaa !9
  %411 = load i8, ptr %410, align 1, !tbaa !11
  %conv442 = zext i8 %411 to i32
  store i32 %conv442, ptr %vi19, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19) #3
  %412 = load ptr, ptr %w, align 8, !tbaa !9
  %413 = ptrtoint ptr %412 to i64
  %add443 = add i64 %413, 4
  %414 = inttoptr i64 %add443 to ptr
  %arrayidx444 = getelementptr inbounds i8, ptr %414, i64 19
  %415 = load i8, ptr %arrayidx444, align 1, !tbaa !11
  %conv445 = zext i8 %415 to i32
  %416 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub446 = sub nsw i32 %conv445, %416
  store i32 %sub446, ptr %vk19, align 4, !tbaa !14
  %417 = load i32, ptr %vi19, align 4, !tbaa !14
  %418 = load i32, ptr %vk19, align 4, !tbaa !14
  %mul447 = mul nsw i32 %417, %418
  %419 = load i32, ptr %vacc, align 4, !tbaa !14
  %add448 = add nsw i32 %419, %mul447
  store i32 %add448, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20) #3
  %420 = load ptr, ptr %i20, align 8, !tbaa !9
  %incdec.ptr449 = getelementptr inbounds i8, ptr %420, i32 1
  store ptr %incdec.ptr449, ptr %i20, align 8, !tbaa !9
  %421 = load i8, ptr %420, align 1, !tbaa !11
  %conv450 = zext i8 %421 to i32
  store i32 %conv450, ptr %vi20, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20) #3
  %422 = load ptr, ptr %w, align 8, !tbaa !9
  %423 = ptrtoint ptr %422 to i64
  %add451 = add i64 %423, 4
  %424 = inttoptr i64 %add451 to ptr
  %arrayidx452 = getelementptr inbounds i8, ptr %424, i64 20
  %425 = load i8, ptr %arrayidx452, align 1, !tbaa !11
  %conv453 = zext i8 %425 to i32
  %426 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub454 = sub nsw i32 %conv453, %426
  store i32 %sub454, ptr %vk20, align 4, !tbaa !14
  %427 = load i32, ptr %vi20, align 4, !tbaa !14
  %428 = load i32, ptr %vk20, align 4, !tbaa !14
  %mul455 = mul nsw i32 %427, %428
  %429 = load i32, ptr %vacc, align 4, !tbaa !14
  %add456 = add nsw i32 %429, %mul455
  store i32 %add456, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21) #3
  %430 = load ptr, ptr %i21, align 8, !tbaa !9
  %incdec.ptr457 = getelementptr inbounds i8, ptr %430, i32 1
  store ptr %incdec.ptr457, ptr %i21, align 8, !tbaa !9
  %431 = load i8, ptr %430, align 1, !tbaa !11
  %conv458 = zext i8 %431 to i32
  store i32 %conv458, ptr %vi21, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21) #3
  %432 = load ptr, ptr %w, align 8, !tbaa !9
  %433 = ptrtoint ptr %432 to i64
  %add459 = add i64 %433, 4
  %434 = inttoptr i64 %add459 to ptr
  %arrayidx460 = getelementptr inbounds i8, ptr %434, i64 21
  %435 = load i8, ptr %arrayidx460, align 1, !tbaa !11
  %conv461 = zext i8 %435 to i32
  %436 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub462 = sub nsw i32 %conv461, %436
  store i32 %sub462, ptr %vk21, align 4, !tbaa !14
  %437 = load i32, ptr %vi21, align 4, !tbaa !14
  %438 = load i32, ptr %vk21, align 4, !tbaa !14
  %mul463 = mul nsw i32 %437, %438
  %439 = load i32, ptr %vacc, align 4, !tbaa !14
  %add464 = add nsw i32 %439, %mul463
  store i32 %add464, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22) #3
  %440 = load ptr, ptr %i22, align 8, !tbaa !9
  %incdec.ptr465 = getelementptr inbounds i8, ptr %440, i32 1
  store ptr %incdec.ptr465, ptr %i22, align 8, !tbaa !9
  %441 = load i8, ptr %440, align 1, !tbaa !11
  %conv466 = zext i8 %441 to i32
  store i32 %conv466, ptr %vi22, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22) #3
  %442 = load ptr, ptr %w, align 8, !tbaa !9
  %443 = ptrtoint ptr %442 to i64
  %add467 = add i64 %443, 4
  %444 = inttoptr i64 %add467 to ptr
  %arrayidx468 = getelementptr inbounds i8, ptr %444, i64 22
  %445 = load i8, ptr %arrayidx468, align 1, !tbaa !11
  %conv469 = zext i8 %445 to i32
  %446 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub470 = sub nsw i32 %conv469, %446
  store i32 %sub470, ptr %vk22, align 4, !tbaa !14
  %447 = load i32, ptr %vi22, align 4, !tbaa !14
  %448 = load i32, ptr %vk22, align 4, !tbaa !14
  %mul471 = mul nsw i32 %447, %448
  %449 = load i32, ptr %vacc, align 4, !tbaa !14
  %add472 = add nsw i32 %449, %mul471
  store i32 %add472, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23) #3
  %450 = load ptr, ptr %i23, align 8, !tbaa !9
  %incdec.ptr473 = getelementptr inbounds i8, ptr %450, i32 1
  store ptr %incdec.ptr473, ptr %i23, align 8, !tbaa !9
  %451 = load i8, ptr %450, align 1, !tbaa !11
  %conv474 = zext i8 %451 to i32
  store i32 %conv474, ptr %vi23, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23) #3
  %452 = load ptr, ptr %w, align 8, !tbaa !9
  %453 = ptrtoint ptr %452 to i64
  %add475 = add i64 %453, 4
  %454 = inttoptr i64 %add475 to ptr
  %arrayidx476 = getelementptr inbounds i8, ptr %454, i64 23
  %455 = load i8, ptr %arrayidx476, align 1, !tbaa !11
  %conv477 = zext i8 %455 to i32
  %456 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub478 = sub nsw i32 %conv477, %456
  store i32 %sub478, ptr %vk23, align 4, !tbaa !14
  %457 = load i32, ptr %vi23, align 4, !tbaa !14
  %458 = load i32, ptr %vk23, align 4, !tbaa !14
  %mul479 = mul nsw i32 %457, %458
  %459 = load i32, ptr %vacc, align 4, !tbaa !14
  %add480 = add nsw i32 %459, %mul479
  store i32 %add480, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24) #3
  %460 = load ptr, ptr %i24, align 8, !tbaa !9
  %incdec.ptr481 = getelementptr inbounds i8, ptr %460, i32 1
  store ptr %incdec.ptr481, ptr %i24, align 8, !tbaa !9
  %461 = load i8, ptr %460, align 1, !tbaa !11
  %conv482 = zext i8 %461 to i32
  store i32 %conv482, ptr %vi24, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24) #3
  %462 = load ptr, ptr %w, align 8, !tbaa !9
  %463 = ptrtoint ptr %462 to i64
  %add483 = add i64 %463, 4
  %464 = inttoptr i64 %add483 to ptr
  %arrayidx484 = getelementptr inbounds i8, ptr %464, i64 24
  %465 = load i8, ptr %arrayidx484, align 1, !tbaa !11
  %conv485 = zext i8 %465 to i32
  %466 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub486 = sub nsw i32 %conv485, %466
  store i32 %sub486, ptr %vk24, align 4, !tbaa !14
  %467 = load i32, ptr %vi24, align 4, !tbaa !14
  %468 = load i32, ptr %vk24, align 4, !tbaa !14
  %mul487 = mul nsw i32 %467, %468
  %469 = load i32, ptr %vacc, align 4, !tbaa !14
  %add488 = add nsw i32 %469, %mul487
  store i32 %add488, ptr %vacc, align 4, !tbaa !14
  %470 = load ptr, ptr %w, align 8, !tbaa !9
  %471 = ptrtoint ptr %470 to i64
  %add489 = add i64 %471, 4
  %add490 = add i64 %add489, 25
  %472 = inttoptr i64 %add490 to ptr
  store ptr %472, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc) #3
  %473 = load i32, ptr %vacc, align 4, !tbaa !14
  %conv491 = sitofp i32 %473 to float
  %474 = load float, ptr %vscale, align 4, !tbaa !12
  %mul492 = fmul float %conv491, %474
  store float %mul492, ptr %vfpacc, align 4, !tbaa !12
  %475 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %476 = load float, ptr %vfpacc, align 4, !tbaa !12
  %add493 = fadd float %476, %475
  store float %add493, ptr %vfpacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout) #3
  %477 = load float, ptr %vfpacc, align 4, !tbaa !12
  %call = call i32 @fp32_to_bits(float noundef %477)
  store i32 %call, ptr %vout, align 4, !tbaa !14
  %478 = load i32, ptr %vout, align 4, !tbaa !14
  %479 = load i32, ptr %vmagic_min, align 4, !tbaa !14
  %call494 = call i32 @math_max_s32(i32 noundef %478, i32 noundef %479)
  store i32 %call494, ptr %vout, align 4, !tbaa !14
  %480 = load i32, ptr %vout, align 4, !tbaa !14
  %481 = load i32, ptr %vmagic_max, align 4, !tbaa !14
  %call495 = call i32 @math_min_s32(i32 noundef %480, i32 noundef %481)
  store i32 %call495, ptr %vout, align 4, !tbaa !14
  %482 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %483 = load i32, ptr %vout, align 4, !tbaa !14
  %sub496 = sub nsw i32 %483, %482
  store i32 %sub496, ptr %vout, align 4, !tbaa !14
  %484 = load i32, ptr %vout, align 4, !tbaa !14
  %conv497 = trunc i32 %484 to i8
  %485 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %incdec.ptr498 = getelementptr inbounds i8, ptr %485, i32 1
  store ptr %incdec.ptr498, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv497, ptr %485, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body291
  %486 = load i64, ptr %c, align 8, !tbaa !5
  %dec = add i64 %486, -1
  store i64 %dec, ptr %c, align 8, !tbaa !5
  %cmp499 = icmp ne i64 %dec, 0
  br i1 %cmp499, label %do.body291, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  %487 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %488 = ptrtoint ptr %487 to i64
  %489 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add501 = add i64 %488, %489
  %490 = inttoptr i64 %add501 to ptr
  store ptr %490, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i24) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i23) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i21) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i20) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i19) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i18) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i17) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i16) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i15) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i14) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i13) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i12) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i10) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i9) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #3
  br label %do.cond502

do.cond502:                                       ; preds = %do.end
  %491 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec503 = add i64 %491, -1
  store i64 %dec503, ptr %output_width.addr, align 8, !tbaa !5
  %cmp504 = icmp ne i64 %dec503, 0
  br i1 %cmp504, label %do.body, label %do.end506, !llvm.loop !19

do.end506:                                        ; preds = %do.cond502
  call void @llvm.lifetime.end.p0(i64 4, ptr %vkernel_zero_point) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_zero_point) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_min) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #3
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #3
  %0 = load float, ptr %f.addr, align 4, !tbaa !12
  store float %0, ptr %fp32, align 4, !tbaa !11
  %1 = load i32, ptr %fp32, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #3
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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

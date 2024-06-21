; ModuleID = 'samples/828.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-dwconv/gen/up1x25-minmax-fp32-scalar-lrintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { i32, float, float, float, i32 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_lrintf(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
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
  %voutput_min_less_zero_point = alloca float, align 4
  %voutput_max_less_zero_point = alloca float, align 4
  %voutput_zero_point = alloca i32, align 4
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
  %vrndacc = alloca i32, align 4
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
  %scale = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %1 = load float, ptr %scale, align 4, !tbaa !11
  store float %1, ptr %vscale, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min_less_zero_point = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 2
  %3 = load float, ptr %output_min_less_zero_point, align 8, !tbaa !11
  store float %3, ptr %voutput_min_less_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 3
  %5 = load float, ptr %output_max_less_zero_point, align 4, !tbaa !11
  store float %5, ptr %voutput_max_less_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_zero_point) #4
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %output_zero_point, align 16, !tbaa !11
  store i32 %7, ptr %voutput_zero_point, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vkernel_zero_point) #4
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %kernel_zero_point = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %kernel_zero_point, align 64, !tbaa !11
  store i32 %9, ptr %vkernel_zero_point, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %do.cond502, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #4
  %10 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 0
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %11, ptr %i0, align 8, !tbaa !9
  %12 = load ptr, ptr %i0, align 8, !tbaa !9
  %13 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %12, %13
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !16

if.then:                                          ; preds = %do.body
  %14 = load ptr, ptr %i0, align 8, !tbaa !9
  %15 = ptrtoint ptr %14 to i64
  %16 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add = add i64 %15, %16
  %17 = inttoptr i64 %add to ptr
  store ptr %17, ptr %i0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #4
  %18 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds ptr, ptr %18, i64 1
  %19 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  store ptr %19, ptr %i1, align 8, !tbaa !9
  %20 = load ptr, ptr %i1, align 8, !tbaa !9
  %21 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp3 = icmp ne ptr %20, %21
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end13, !unpredictable !16

if.then11:                                        ; preds = %if.end
  %22 = load ptr, ptr %i1, align 8, !tbaa !9
  %23 = ptrtoint ptr %22 to i64
  %24 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add12 = add i64 %23, %24
  %25 = inttoptr i64 %add12 to ptr
  store ptr %25, ptr %i1, align 8, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #4
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds ptr, ptr %26, i64 2
  %27 = load ptr, ptr %arrayidx14, align 8, !tbaa !9
  store ptr %27, ptr %i2, align 8, !tbaa !9
  %28 = load ptr, ptr %i2, align 8, !tbaa !9
  %29 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp15 = icmp ne ptr %28, %29
  %lnot17 = xor i1 %cmp15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end25, !unpredictable !16

if.then23:                                        ; preds = %if.end13
  %30 = load ptr, ptr %i2, align 8, !tbaa !9
  %31 = ptrtoint ptr %30 to i64
  %32 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add24 = add i64 %31, %32
  %33 = inttoptr i64 %add24 to ptr
  store ptr %33, ptr %i2, align 8, !tbaa !9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #4
  %34 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx26 = getelementptr inbounds ptr, ptr %34, i64 3
  %35 = load ptr, ptr %arrayidx26, align 8, !tbaa !9
  store ptr %35, ptr %i3, align 8, !tbaa !9
  %36 = load ptr, ptr %i3, align 8, !tbaa !9
  %37 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp27 = icmp ne ptr %36, %37
  %lnot29 = xor i1 %cmp27, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end37, !unpredictable !16

if.then35:                                        ; preds = %if.end25
  %38 = load ptr, ptr %i3, align 8, !tbaa !9
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add36 = add i64 %39, %40
  %41 = inttoptr i64 %add36 to ptr
  store ptr %41, ptr %i3, align 8, !tbaa !9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #4
  %42 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds ptr, ptr %42, i64 4
  %43 = load ptr, ptr %arrayidx38, align 8, !tbaa !9
  store ptr %43, ptr %i4, align 8, !tbaa !9
  %44 = load ptr, ptr %i4, align 8, !tbaa !9
  %45 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp39 = icmp ne ptr %44, %45
  %lnot41 = xor i1 %cmp39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %if.then47, label %if.end49, !unpredictable !16

if.then47:                                        ; preds = %if.end37
  %46 = load ptr, ptr %i4, align 8, !tbaa !9
  %47 = ptrtoint ptr %46 to i64
  %48 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add48 = add i64 %47, %48
  %49 = inttoptr i64 %add48 to ptr
  store ptr %49, ptr %i4, align 8, !tbaa !9
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #4
  %50 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx50 = getelementptr inbounds ptr, ptr %50, i64 5
  %51 = load ptr, ptr %arrayidx50, align 8, !tbaa !9
  store ptr %51, ptr %i5, align 8, !tbaa !9
  %52 = load ptr, ptr %i5, align 8, !tbaa !9
  %53 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp51 = icmp ne ptr %52, %53
  %lnot53 = xor i1 %cmp51, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.end61, !unpredictable !16

if.then59:                                        ; preds = %if.end49
  %54 = load ptr, ptr %i5, align 8, !tbaa !9
  %55 = ptrtoint ptr %54 to i64
  %56 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add60 = add i64 %55, %56
  %57 = inttoptr i64 %add60 to ptr
  store ptr %57, ptr %i5, align 8, !tbaa !9
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #4
  %58 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx62 = getelementptr inbounds ptr, ptr %58, i64 6
  %59 = load ptr, ptr %arrayidx62, align 8, !tbaa !9
  store ptr %59, ptr %i6, align 8, !tbaa !9
  %60 = load ptr, ptr %i6, align 8, !tbaa !9
  %61 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp63 = icmp ne ptr %60, %61
  %lnot65 = xor i1 %cmp63, true
  %lnot67 = xor i1 %lnot65, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %tobool70 = icmp ne i64 %conv69, 0
  br i1 %tobool70, label %if.then71, label %if.end73, !unpredictable !16

if.then71:                                        ; preds = %if.end61
  %62 = load ptr, ptr %i6, align 8, !tbaa !9
  %63 = ptrtoint ptr %62 to i64
  %64 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add72 = add i64 %63, %64
  %65 = inttoptr i64 %add72 to ptr
  store ptr %65, ptr %i6, align 8, !tbaa !9
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #4
  %66 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx74 = getelementptr inbounds ptr, ptr %66, i64 7
  %67 = load ptr, ptr %arrayidx74, align 8, !tbaa !9
  store ptr %67, ptr %i7, align 8, !tbaa !9
  %68 = load ptr, ptr %i7, align 8, !tbaa !9
  %69 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp75 = icmp ne ptr %68, %69
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %tobool82 = icmp ne i64 %conv81, 0
  br i1 %tobool82, label %if.then83, label %if.end85, !unpredictable !16

if.then83:                                        ; preds = %if.end73
  %70 = load ptr, ptr %i7, align 8, !tbaa !9
  %71 = ptrtoint ptr %70 to i64
  %72 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add84 = add i64 %71, %72
  %73 = inttoptr i64 %add84 to ptr
  store ptr %73, ptr %i7, align 8, !tbaa !9
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #4
  %74 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx86 = getelementptr inbounds ptr, ptr %74, i64 8
  %75 = load ptr, ptr %arrayidx86, align 8, !tbaa !9
  store ptr %75, ptr %i8, align 8, !tbaa !9
  %76 = load ptr, ptr %i8, align 8, !tbaa !9
  %77 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp87 = icmp ne ptr %76, %77
  %lnot89 = xor i1 %cmp87, true
  %lnot91 = xor i1 %lnot89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %tobool94 = icmp ne i64 %conv93, 0
  br i1 %tobool94, label %if.then95, label %if.end97, !unpredictable !16

if.then95:                                        ; preds = %if.end85
  %78 = load ptr, ptr %i8, align 8, !tbaa !9
  %79 = ptrtoint ptr %78 to i64
  %80 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add96 = add i64 %79, %80
  %81 = inttoptr i64 %add96 to ptr
  store ptr %81, ptr %i8, align 8, !tbaa !9
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %i9) #4
  %82 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx98 = getelementptr inbounds ptr, ptr %82, i64 9
  %83 = load ptr, ptr %arrayidx98, align 8, !tbaa !9
  store ptr %83, ptr %i9, align 8, !tbaa !9
  %84 = load ptr, ptr %i9, align 8, !tbaa !9
  %85 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp99 = icmp ne ptr %84, %85
  %lnot101 = xor i1 %cmp99, true
  %lnot103 = xor i1 %lnot101, true
  %lnot.ext104 = zext i1 %lnot103 to i32
  %conv105 = sext i32 %lnot.ext104 to i64
  %tobool106 = icmp ne i64 %conv105, 0
  br i1 %tobool106, label %if.then107, label %if.end109, !unpredictable !16

if.then107:                                       ; preds = %if.end97
  %86 = load ptr, ptr %i9, align 8, !tbaa !9
  %87 = ptrtoint ptr %86 to i64
  %88 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add108 = add i64 %87, %88
  %89 = inttoptr i64 %add108 to ptr
  store ptr %89, ptr %i9, align 8, !tbaa !9
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end97
  call void @llvm.lifetime.start.p0(i64 8, ptr %i10) #4
  %90 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx110 = getelementptr inbounds ptr, ptr %90, i64 10
  %91 = load ptr, ptr %arrayidx110, align 8, !tbaa !9
  store ptr %91, ptr %i10, align 8, !tbaa !9
  %92 = load ptr, ptr %i10, align 8, !tbaa !9
  %93 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp111 = icmp ne ptr %92, %93
  %lnot113 = xor i1 %cmp111, true
  %lnot115 = xor i1 %lnot113, true
  %lnot.ext116 = zext i1 %lnot115 to i32
  %conv117 = sext i32 %lnot.ext116 to i64
  %tobool118 = icmp ne i64 %conv117, 0
  br i1 %tobool118, label %if.then119, label %if.end121, !unpredictable !16

if.then119:                                       ; preds = %if.end109
  %94 = load ptr, ptr %i10, align 8, !tbaa !9
  %95 = ptrtoint ptr %94 to i64
  %96 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add120 = add i64 %95, %96
  %97 = inttoptr i64 %add120 to ptr
  store ptr %97, ptr %i10, align 8, !tbaa !9
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end109
  call void @llvm.lifetime.start.p0(i64 8, ptr %i11) #4
  %98 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx122 = getelementptr inbounds ptr, ptr %98, i64 11
  %99 = load ptr, ptr %arrayidx122, align 8, !tbaa !9
  store ptr %99, ptr %i11, align 8, !tbaa !9
  %100 = load ptr, ptr %i11, align 8, !tbaa !9
  %101 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp123 = icmp ne ptr %100, %101
  %lnot125 = xor i1 %cmp123, true
  %lnot127 = xor i1 %lnot125, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %tobool130 = icmp ne i64 %conv129, 0
  br i1 %tobool130, label %if.then131, label %if.end133, !unpredictable !16

if.then131:                                       ; preds = %if.end121
  %102 = load ptr, ptr %i11, align 8, !tbaa !9
  %103 = ptrtoint ptr %102 to i64
  %104 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add132 = add i64 %103, %104
  %105 = inttoptr i64 %add132 to ptr
  store ptr %105, ptr %i11, align 8, !tbaa !9
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end121
  call void @llvm.lifetime.start.p0(i64 8, ptr %i12) #4
  %106 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx134 = getelementptr inbounds ptr, ptr %106, i64 12
  %107 = load ptr, ptr %arrayidx134, align 8, !tbaa !9
  store ptr %107, ptr %i12, align 8, !tbaa !9
  %108 = load ptr, ptr %i12, align 8, !tbaa !9
  %109 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp135 = icmp ne ptr %108, %109
  %lnot137 = xor i1 %cmp135, true
  %lnot139 = xor i1 %lnot137, true
  %lnot.ext140 = zext i1 %lnot139 to i32
  %conv141 = sext i32 %lnot.ext140 to i64
  %tobool142 = icmp ne i64 %conv141, 0
  br i1 %tobool142, label %if.then143, label %if.end145, !unpredictable !16

if.then143:                                       ; preds = %if.end133
  %110 = load ptr, ptr %i12, align 8, !tbaa !9
  %111 = ptrtoint ptr %110 to i64
  %112 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add144 = add i64 %111, %112
  %113 = inttoptr i64 %add144 to ptr
  store ptr %113, ptr %i12, align 8, !tbaa !9
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end133
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #4
  %114 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx146 = getelementptr inbounds ptr, ptr %114, i64 13
  %115 = load ptr, ptr %arrayidx146, align 8, !tbaa !9
  store ptr %115, ptr %i13, align 8, !tbaa !9
  %116 = load ptr, ptr %i13, align 8, !tbaa !9
  %117 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp147 = icmp ne ptr %116, %117
  %lnot149 = xor i1 %cmp147, true
  %lnot151 = xor i1 %lnot149, true
  %lnot.ext152 = zext i1 %lnot151 to i32
  %conv153 = sext i32 %lnot.ext152 to i64
  %tobool154 = icmp ne i64 %conv153, 0
  br i1 %tobool154, label %if.then155, label %if.end157, !unpredictable !16

if.then155:                                       ; preds = %if.end145
  %118 = load ptr, ptr %i13, align 8, !tbaa !9
  %119 = ptrtoint ptr %118 to i64
  %120 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add156 = add i64 %119, %120
  %121 = inttoptr i64 %add156 to ptr
  store ptr %121, ptr %i13, align 8, !tbaa !9
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr %i14) #4
  %122 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx158 = getelementptr inbounds ptr, ptr %122, i64 14
  %123 = load ptr, ptr %arrayidx158, align 8, !tbaa !9
  store ptr %123, ptr %i14, align 8, !tbaa !9
  %124 = load ptr, ptr %i14, align 8, !tbaa !9
  %125 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp159 = icmp ne ptr %124, %125
  %lnot161 = xor i1 %cmp159, true
  %lnot163 = xor i1 %lnot161, true
  %lnot.ext164 = zext i1 %lnot163 to i32
  %conv165 = sext i32 %lnot.ext164 to i64
  %tobool166 = icmp ne i64 %conv165, 0
  br i1 %tobool166, label %if.then167, label %if.end169, !unpredictable !16

if.then167:                                       ; preds = %if.end157
  %126 = load ptr, ptr %i14, align 8, !tbaa !9
  %127 = ptrtoint ptr %126 to i64
  %128 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add168 = add i64 %127, %128
  %129 = inttoptr i64 %add168 to ptr
  store ptr %129, ptr %i14, align 8, !tbaa !9
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr %i15) #4
  %130 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx170 = getelementptr inbounds ptr, ptr %130, i64 15
  %131 = load ptr, ptr %arrayidx170, align 8, !tbaa !9
  store ptr %131, ptr %i15, align 8, !tbaa !9
  %132 = load ptr, ptr %i15, align 8, !tbaa !9
  %133 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp171 = icmp ne ptr %132, %133
  %lnot173 = xor i1 %cmp171, true
  %lnot175 = xor i1 %lnot173, true
  %lnot.ext176 = zext i1 %lnot175 to i32
  %conv177 = sext i32 %lnot.ext176 to i64
  %tobool178 = icmp ne i64 %conv177, 0
  br i1 %tobool178, label %if.then179, label %if.end181, !unpredictable !16

if.then179:                                       ; preds = %if.end169
  %134 = load ptr, ptr %i15, align 8, !tbaa !9
  %135 = ptrtoint ptr %134 to i64
  %136 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add180 = add i64 %135, %136
  %137 = inttoptr i64 %add180 to ptr
  store ptr %137, ptr %i15, align 8, !tbaa !9
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.end169
  call void @llvm.lifetime.start.p0(i64 8, ptr %i16) #4
  %138 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx182 = getelementptr inbounds ptr, ptr %138, i64 16
  %139 = load ptr, ptr %arrayidx182, align 8, !tbaa !9
  store ptr %139, ptr %i16, align 8, !tbaa !9
  %140 = load ptr, ptr %i16, align 8, !tbaa !9
  %141 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp183 = icmp ne ptr %140, %141
  %lnot185 = xor i1 %cmp183, true
  %lnot187 = xor i1 %lnot185, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  %conv189 = sext i32 %lnot.ext188 to i64
  %tobool190 = icmp ne i64 %conv189, 0
  br i1 %tobool190, label %if.then191, label %if.end193, !unpredictable !16

if.then191:                                       ; preds = %if.end181
  %142 = load ptr, ptr %i16, align 8, !tbaa !9
  %143 = ptrtoint ptr %142 to i64
  %144 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add192 = add i64 %143, %144
  %145 = inttoptr i64 %add192 to ptr
  store ptr %145, ptr %i16, align 8, !tbaa !9
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end181
  call void @llvm.lifetime.start.p0(i64 8, ptr %i17) #4
  %146 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx194 = getelementptr inbounds ptr, ptr %146, i64 17
  %147 = load ptr, ptr %arrayidx194, align 8, !tbaa !9
  store ptr %147, ptr %i17, align 8, !tbaa !9
  %148 = load ptr, ptr %i17, align 8, !tbaa !9
  %149 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp195 = icmp ne ptr %148, %149
  %lnot197 = xor i1 %cmp195, true
  %lnot199 = xor i1 %lnot197, true
  %lnot.ext200 = zext i1 %lnot199 to i32
  %conv201 = sext i32 %lnot.ext200 to i64
  %tobool202 = icmp ne i64 %conv201, 0
  br i1 %tobool202, label %if.then203, label %if.end205, !unpredictable !16

if.then203:                                       ; preds = %if.end193
  %150 = load ptr, ptr %i17, align 8, !tbaa !9
  %151 = ptrtoint ptr %150 to i64
  %152 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add204 = add i64 %151, %152
  %153 = inttoptr i64 %add204 to ptr
  store ptr %153, ptr %i17, align 8, !tbaa !9
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end193
  call void @llvm.lifetime.start.p0(i64 8, ptr %i18) #4
  %154 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx206 = getelementptr inbounds ptr, ptr %154, i64 18
  %155 = load ptr, ptr %arrayidx206, align 8, !tbaa !9
  store ptr %155, ptr %i18, align 8, !tbaa !9
  %156 = load ptr, ptr %i18, align 8, !tbaa !9
  %157 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp207 = icmp ne ptr %156, %157
  %lnot209 = xor i1 %cmp207, true
  %lnot211 = xor i1 %lnot209, true
  %lnot.ext212 = zext i1 %lnot211 to i32
  %conv213 = sext i32 %lnot.ext212 to i64
  %tobool214 = icmp ne i64 %conv213, 0
  br i1 %tobool214, label %if.then215, label %if.end217, !unpredictable !16

if.then215:                                       ; preds = %if.end205
  %158 = load ptr, ptr %i18, align 8, !tbaa !9
  %159 = ptrtoint ptr %158 to i64
  %160 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add216 = add i64 %159, %160
  %161 = inttoptr i64 %add216 to ptr
  store ptr %161, ptr %i18, align 8, !tbaa !9
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.end205
  call void @llvm.lifetime.start.p0(i64 8, ptr %i19) #4
  %162 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx218 = getelementptr inbounds ptr, ptr %162, i64 19
  %163 = load ptr, ptr %arrayidx218, align 8, !tbaa !9
  store ptr %163, ptr %i19, align 8, !tbaa !9
  %164 = load ptr, ptr %i19, align 8, !tbaa !9
  %165 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp219 = icmp ne ptr %164, %165
  %lnot221 = xor i1 %cmp219, true
  %lnot223 = xor i1 %lnot221, true
  %lnot.ext224 = zext i1 %lnot223 to i32
  %conv225 = sext i32 %lnot.ext224 to i64
  %tobool226 = icmp ne i64 %conv225, 0
  br i1 %tobool226, label %if.then227, label %if.end229, !unpredictable !16

if.then227:                                       ; preds = %if.end217
  %166 = load ptr, ptr %i19, align 8, !tbaa !9
  %167 = ptrtoint ptr %166 to i64
  %168 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add228 = add i64 %167, %168
  %169 = inttoptr i64 %add228 to ptr
  store ptr %169, ptr %i19, align 8, !tbaa !9
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %if.end217
  call void @llvm.lifetime.start.p0(i64 8, ptr %i20) #4
  %170 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx230 = getelementptr inbounds ptr, ptr %170, i64 20
  %171 = load ptr, ptr %arrayidx230, align 8, !tbaa !9
  store ptr %171, ptr %i20, align 8, !tbaa !9
  %172 = load ptr, ptr %i20, align 8, !tbaa !9
  %173 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp231 = icmp ne ptr %172, %173
  %lnot233 = xor i1 %cmp231, true
  %lnot235 = xor i1 %lnot233, true
  %lnot.ext236 = zext i1 %lnot235 to i32
  %conv237 = sext i32 %lnot.ext236 to i64
  %tobool238 = icmp ne i64 %conv237, 0
  br i1 %tobool238, label %if.then239, label %if.end241, !unpredictable !16

if.then239:                                       ; preds = %if.end229
  %174 = load ptr, ptr %i20, align 8, !tbaa !9
  %175 = ptrtoint ptr %174 to i64
  %176 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add240 = add i64 %175, %176
  %177 = inttoptr i64 %add240 to ptr
  store ptr %177, ptr %i20, align 8, !tbaa !9
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.end229
  call void @llvm.lifetime.start.p0(i64 8, ptr %i21) #4
  %178 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx242 = getelementptr inbounds ptr, ptr %178, i64 21
  %179 = load ptr, ptr %arrayidx242, align 8, !tbaa !9
  store ptr %179, ptr %i21, align 8, !tbaa !9
  %180 = load ptr, ptr %i21, align 8, !tbaa !9
  %181 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp243 = icmp ne ptr %180, %181
  %lnot245 = xor i1 %cmp243, true
  %lnot247 = xor i1 %lnot245, true
  %lnot.ext248 = zext i1 %lnot247 to i32
  %conv249 = sext i32 %lnot.ext248 to i64
  %tobool250 = icmp ne i64 %conv249, 0
  br i1 %tobool250, label %if.then251, label %if.end253, !unpredictable !16

if.then251:                                       ; preds = %if.end241
  %182 = load ptr, ptr %i21, align 8, !tbaa !9
  %183 = ptrtoint ptr %182 to i64
  %184 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add252 = add i64 %183, %184
  %185 = inttoptr i64 %add252 to ptr
  store ptr %185, ptr %i21, align 8, !tbaa !9
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end241
  call void @llvm.lifetime.start.p0(i64 8, ptr %i22) #4
  %186 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx254 = getelementptr inbounds ptr, ptr %186, i64 22
  %187 = load ptr, ptr %arrayidx254, align 8, !tbaa !9
  store ptr %187, ptr %i22, align 8, !tbaa !9
  %188 = load ptr, ptr %i22, align 8, !tbaa !9
  %189 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp255 = icmp ne ptr %188, %189
  %lnot257 = xor i1 %cmp255, true
  %lnot259 = xor i1 %lnot257, true
  %lnot.ext260 = zext i1 %lnot259 to i32
  %conv261 = sext i32 %lnot.ext260 to i64
  %tobool262 = icmp ne i64 %conv261, 0
  br i1 %tobool262, label %if.then263, label %if.end265, !unpredictable !16

if.then263:                                       ; preds = %if.end253
  %190 = load ptr, ptr %i22, align 8, !tbaa !9
  %191 = ptrtoint ptr %190 to i64
  %192 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add264 = add i64 %191, %192
  %193 = inttoptr i64 %add264 to ptr
  store ptr %193, ptr %i22, align 8, !tbaa !9
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end253
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #4
  %194 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx266 = getelementptr inbounds ptr, ptr %194, i64 23
  %195 = load ptr, ptr %arrayidx266, align 8, !tbaa !9
  store ptr %195, ptr %i23, align 8, !tbaa !9
  %196 = load ptr, ptr %i23, align 8, !tbaa !9
  %197 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp267 = icmp ne ptr %196, %197
  %lnot269 = xor i1 %cmp267, true
  %lnot271 = xor i1 %lnot269, true
  %lnot.ext272 = zext i1 %lnot271 to i32
  %conv273 = sext i32 %lnot.ext272 to i64
  %tobool274 = icmp ne i64 %conv273, 0
  br i1 %tobool274, label %if.then275, label %if.end277, !unpredictable !16

if.then275:                                       ; preds = %if.end265
  %198 = load ptr, ptr %i23, align 8, !tbaa !9
  %199 = ptrtoint ptr %198 to i64
  %200 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add276 = add i64 %199, %200
  %201 = inttoptr i64 %add276 to ptr
  store ptr %201, ptr %i23, align 8, !tbaa !9
  br label %if.end277

if.end277:                                        ; preds = %if.then275, %if.end265
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #4
  %202 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx278 = getelementptr inbounds ptr, ptr %202, i64 24
  %203 = load ptr, ptr %arrayidx278, align 8, !tbaa !9
  store ptr %203, ptr %i24, align 8, !tbaa !9
  %204 = load ptr, ptr %i24, align 8, !tbaa !9
  %205 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp279 = icmp ne ptr %204, %205
  %lnot281 = xor i1 %cmp279, true
  %lnot283 = xor i1 %lnot281, true
  %lnot.ext284 = zext i1 %lnot283 to i32
  %conv285 = sext i32 %lnot.ext284 to i64
  %tobool286 = icmp ne i64 %conv285, 0
  br i1 %tobool286, label %if.then287, label %if.end289, !unpredictable !16

if.then287:                                       ; preds = %if.end277
  %206 = load ptr, ptr %i24, align 8, !tbaa !9
  %207 = ptrtoint ptr %206 to i64
  %208 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add288 = add i64 %207, %208
  %209 = inttoptr i64 %add288 to ptr
  store ptr %209, ptr %i24, align 8, !tbaa !9
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %if.end277
  %210 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %211 = ptrtoint ptr %210 to i64
  %212 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add290 = add i64 %211, %212
  %213 = inttoptr i64 %add290 to ptr
  store ptr %213, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  %214 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %214, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #4
  %215 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %215, ptr %w, align 8, !tbaa !9
  br label %do.body291

do.body291:                                       ; preds = %do.cond, %if.end289
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #4
  %216 = load ptr, ptr %w, align 8, !tbaa !9
  %217 = load i32, ptr %216, align 4, !tbaa !14
  store i32 %217, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0) #4
  %218 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %218, i32 1
  store ptr %incdec.ptr, ptr %i0, align 8, !tbaa !9
  %219 = load i8, ptr %218, align 1, !tbaa !11
  %conv292 = zext i8 %219 to i32
  store i32 %conv292, ptr %vi0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0) #4
  %220 = load ptr, ptr %w, align 8, !tbaa !9
  %221 = ptrtoint ptr %220 to i64
  %add293 = add i64 %221, 4
  %222 = inttoptr i64 %add293 to ptr
  %arrayidx294 = getelementptr inbounds i8, ptr %222, i64 0
  %223 = load i8, ptr %arrayidx294, align 1, !tbaa !11
  %conv295 = zext i8 %223 to i32
  %224 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub = sub nsw i32 %conv295, %224
  store i32 %sub, ptr %vk0, align 4, !tbaa !14
  %225 = load i32, ptr %vi0, align 4, !tbaa !14
  %226 = load i32, ptr %vk0, align 4, !tbaa !14
  %mul = mul nsw i32 %225, %226
  %227 = load i32, ptr %vacc, align 4, !tbaa !14
  %add296 = add nsw i32 %227, %mul
  store i32 %add296, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1) #4
  %228 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr297 = getelementptr inbounds i8, ptr %228, i32 1
  store ptr %incdec.ptr297, ptr %i1, align 8, !tbaa !9
  %229 = load i8, ptr %228, align 1, !tbaa !11
  %conv298 = zext i8 %229 to i32
  store i32 %conv298, ptr %vi1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1) #4
  %230 = load ptr, ptr %w, align 8, !tbaa !9
  %231 = ptrtoint ptr %230 to i64
  %add299 = add i64 %231, 4
  %232 = inttoptr i64 %add299 to ptr
  %arrayidx300 = getelementptr inbounds i8, ptr %232, i64 1
  %233 = load i8, ptr %arrayidx300, align 1, !tbaa !11
  %conv301 = zext i8 %233 to i32
  %234 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub302 = sub nsw i32 %conv301, %234
  store i32 %sub302, ptr %vk1, align 4, !tbaa !14
  %235 = load i32, ptr %vi1, align 4, !tbaa !14
  %236 = load i32, ptr %vk1, align 4, !tbaa !14
  %mul303 = mul nsw i32 %235, %236
  %237 = load i32, ptr %vacc, align 4, !tbaa !14
  %add304 = add nsw i32 %237, %mul303
  store i32 %add304, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2) #4
  %238 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr305 = getelementptr inbounds i8, ptr %238, i32 1
  store ptr %incdec.ptr305, ptr %i2, align 8, !tbaa !9
  %239 = load i8, ptr %238, align 1, !tbaa !11
  %conv306 = zext i8 %239 to i32
  store i32 %conv306, ptr %vi2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2) #4
  %240 = load ptr, ptr %w, align 8, !tbaa !9
  %241 = ptrtoint ptr %240 to i64
  %add307 = add i64 %241, 4
  %242 = inttoptr i64 %add307 to ptr
  %arrayidx308 = getelementptr inbounds i8, ptr %242, i64 2
  %243 = load i8, ptr %arrayidx308, align 1, !tbaa !11
  %conv309 = zext i8 %243 to i32
  %244 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub310 = sub nsw i32 %conv309, %244
  store i32 %sub310, ptr %vk2, align 4, !tbaa !14
  %245 = load i32, ptr %vi2, align 4, !tbaa !14
  %246 = load i32, ptr %vk2, align 4, !tbaa !14
  %mul311 = mul nsw i32 %245, %246
  %247 = load i32, ptr %vacc, align 4, !tbaa !14
  %add312 = add nsw i32 %247, %mul311
  store i32 %add312, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3) #4
  %248 = load ptr, ptr %i3, align 8, !tbaa !9
  %incdec.ptr313 = getelementptr inbounds i8, ptr %248, i32 1
  store ptr %incdec.ptr313, ptr %i3, align 8, !tbaa !9
  %249 = load i8, ptr %248, align 1, !tbaa !11
  %conv314 = zext i8 %249 to i32
  store i32 %conv314, ptr %vi3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3) #4
  %250 = load ptr, ptr %w, align 8, !tbaa !9
  %251 = ptrtoint ptr %250 to i64
  %add315 = add i64 %251, 4
  %252 = inttoptr i64 %add315 to ptr
  %arrayidx316 = getelementptr inbounds i8, ptr %252, i64 3
  %253 = load i8, ptr %arrayidx316, align 1, !tbaa !11
  %conv317 = zext i8 %253 to i32
  %254 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub318 = sub nsw i32 %conv317, %254
  store i32 %sub318, ptr %vk3, align 4, !tbaa !14
  %255 = load i32, ptr %vi3, align 4, !tbaa !14
  %256 = load i32, ptr %vk3, align 4, !tbaa !14
  %mul319 = mul nsw i32 %255, %256
  %257 = load i32, ptr %vacc, align 4, !tbaa !14
  %add320 = add nsw i32 %257, %mul319
  store i32 %add320, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4) #4
  %258 = load ptr, ptr %i4, align 8, !tbaa !9
  %incdec.ptr321 = getelementptr inbounds i8, ptr %258, i32 1
  store ptr %incdec.ptr321, ptr %i4, align 8, !tbaa !9
  %259 = load i8, ptr %258, align 1, !tbaa !11
  %conv322 = zext i8 %259 to i32
  store i32 %conv322, ptr %vi4, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4) #4
  %260 = load ptr, ptr %w, align 8, !tbaa !9
  %261 = ptrtoint ptr %260 to i64
  %add323 = add i64 %261, 4
  %262 = inttoptr i64 %add323 to ptr
  %arrayidx324 = getelementptr inbounds i8, ptr %262, i64 4
  %263 = load i8, ptr %arrayidx324, align 1, !tbaa !11
  %conv325 = zext i8 %263 to i32
  %264 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub326 = sub nsw i32 %conv325, %264
  store i32 %sub326, ptr %vk4, align 4, !tbaa !14
  %265 = load i32, ptr %vi4, align 4, !tbaa !14
  %266 = load i32, ptr %vk4, align 4, !tbaa !14
  %mul327 = mul nsw i32 %265, %266
  %267 = load i32, ptr %vacc, align 4, !tbaa !14
  %add328 = add nsw i32 %267, %mul327
  store i32 %add328, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5) #4
  %268 = load ptr, ptr %i5, align 8, !tbaa !9
  %incdec.ptr329 = getelementptr inbounds i8, ptr %268, i32 1
  store ptr %incdec.ptr329, ptr %i5, align 8, !tbaa !9
  %269 = load i8, ptr %268, align 1, !tbaa !11
  %conv330 = zext i8 %269 to i32
  store i32 %conv330, ptr %vi5, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5) #4
  %270 = load ptr, ptr %w, align 8, !tbaa !9
  %271 = ptrtoint ptr %270 to i64
  %add331 = add i64 %271, 4
  %272 = inttoptr i64 %add331 to ptr
  %arrayidx332 = getelementptr inbounds i8, ptr %272, i64 5
  %273 = load i8, ptr %arrayidx332, align 1, !tbaa !11
  %conv333 = zext i8 %273 to i32
  %274 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub334 = sub nsw i32 %conv333, %274
  store i32 %sub334, ptr %vk5, align 4, !tbaa !14
  %275 = load i32, ptr %vi5, align 4, !tbaa !14
  %276 = load i32, ptr %vk5, align 4, !tbaa !14
  %mul335 = mul nsw i32 %275, %276
  %277 = load i32, ptr %vacc, align 4, !tbaa !14
  %add336 = add nsw i32 %277, %mul335
  store i32 %add336, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6) #4
  %278 = load ptr, ptr %i6, align 8, !tbaa !9
  %incdec.ptr337 = getelementptr inbounds i8, ptr %278, i32 1
  store ptr %incdec.ptr337, ptr %i6, align 8, !tbaa !9
  %279 = load i8, ptr %278, align 1, !tbaa !11
  %conv338 = zext i8 %279 to i32
  store i32 %conv338, ptr %vi6, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6) #4
  %280 = load ptr, ptr %w, align 8, !tbaa !9
  %281 = ptrtoint ptr %280 to i64
  %add339 = add i64 %281, 4
  %282 = inttoptr i64 %add339 to ptr
  %arrayidx340 = getelementptr inbounds i8, ptr %282, i64 6
  %283 = load i8, ptr %arrayidx340, align 1, !tbaa !11
  %conv341 = zext i8 %283 to i32
  %284 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub342 = sub nsw i32 %conv341, %284
  store i32 %sub342, ptr %vk6, align 4, !tbaa !14
  %285 = load i32, ptr %vi6, align 4, !tbaa !14
  %286 = load i32, ptr %vk6, align 4, !tbaa !14
  %mul343 = mul nsw i32 %285, %286
  %287 = load i32, ptr %vacc, align 4, !tbaa !14
  %add344 = add nsw i32 %287, %mul343
  store i32 %add344, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7) #4
  %288 = load ptr, ptr %i7, align 8, !tbaa !9
  %incdec.ptr345 = getelementptr inbounds i8, ptr %288, i32 1
  store ptr %incdec.ptr345, ptr %i7, align 8, !tbaa !9
  %289 = load i8, ptr %288, align 1, !tbaa !11
  %conv346 = zext i8 %289 to i32
  store i32 %conv346, ptr %vi7, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7) #4
  %290 = load ptr, ptr %w, align 8, !tbaa !9
  %291 = ptrtoint ptr %290 to i64
  %add347 = add i64 %291, 4
  %292 = inttoptr i64 %add347 to ptr
  %arrayidx348 = getelementptr inbounds i8, ptr %292, i64 7
  %293 = load i8, ptr %arrayidx348, align 1, !tbaa !11
  %conv349 = zext i8 %293 to i32
  %294 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub350 = sub nsw i32 %conv349, %294
  store i32 %sub350, ptr %vk7, align 4, !tbaa !14
  %295 = load i32, ptr %vi7, align 4, !tbaa !14
  %296 = load i32, ptr %vk7, align 4, !tbaa !14
  %mul351 = mul nsw i32 %295, %296
  %297 = load i32, ptr %vacc, align 4, !tbaa !14
  %add352 = add nsw i32 %297, %mul351
  store i32 %add352, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8) #4
  %298 = load ptr, ptr %i8, align 8, !tbaa !9
  %incdec.ptr353 = getelementptr inbounds i8, ptr %298, i32 1
  store ptr %incdec.ptr353, ptr %i8, align 8, !tbaa !9
  %299 = load i8, ptr %298, align 1, !tbaa !11
  %conv354 = zext i8 %299 to i32
  store i32 %conv354, ptr %vi8, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8) #4
  %300 = load ptr, ptr %w, align 8, !tbaa !9
  %301 = ptrtoint ptr %300 to i64
  %add355 = add i64 %301, 4
  %302 = inttoptr i64 %add355 to ptr
  %arrayidx356 = getelementptr inbounds i8, ptr %302, i64 8
  %303 = load i8, ptr %arrayidx356, align 1, !tbaa !11
  %conv357 = zext i8 %303 to i32
  %304 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub358 = sub nsw i32 %conv357, %304
  store i32 %sub358, ptr %vk8, align 4, !tbaa !14
  %305 = load i32, ptr %vi8, align 4, !tbaa !14
  %306 = load i32, ptr %vk8, align 4, !tbaa !14
  %mul359 = mul nsw i32 %305, %306
  %307 = load i32, ptr %vacc, align 4, !tbaa !14
  %add360 = add nsw i32 %307, %mul359
  store i32 %add360, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9) #4
  %308 = load ptr, ptr %i9, align 8, !tbaa !9
  %incdec.ptr361 = getelementptr inbounds i8, ptr %308, i32 1
  store ptr %incdec.ptr361, ptr %i9, align 8, !tbaa !9
  %309 = load i8, ptr %308, align 1, !tbaa !11
  %conv362 = zext i8 %309 to i32
  store i32 %conv362, ptr %vi9, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9) #4
  %310 = load ptr, ptr %w, align 8, !tbaa !9
  %311 = ptrtoint ptr %310 to i64
  %add363 = add i64 %311, 4
  %312 = inttoptr i64 %add363 to ptr
  %arrayidx364 = getelementptr inbounds i8, ptr %312, i64 9
  %313 = load i8, ptr %arrayidx364, align 1, !tbaa !11
  %conv365 = zext i8 %313 to i32
  %314 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub366 = sub nsw i32 %conv365, %314
  store i32 %sub366, ptr %vk9, align 4, !tbaa !14
  %315 = load i32, ptr %vi9, align 4, !tbaa !14
  %316 = load i32, ptr %vk9, align 4, !tbaa !14
  %mul367 = mul nsw i32 %315, %316
  %317 = load i32, ptr %vacc, align 4, !tbaa !14
  %add368 = add nsw i32 %317, %mul367
  store i32 %add368, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10) #4
  %318 = load ptr, ptr %i10, align 8, !tbaa !9
  %incdec.ptr369 = getelementptr inbounds i8, ptr %318, i32 1
  store ptr %incdec.ptr369, ptr %i10, align 8, !tbaa !9
  %319 = load i8, ptr %318, align 1, !tbaa !11
  %conv370 = zext i8 %319 to i32
  store i32 %conv370, ptr %vi10, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10) #4
  %320 = load ptr, ptr %w, align 8, !tbaa !9
  %321 = ptrtoint ptr %320 to i64
  %add371 = add i64 %321, 4
  %322 = inttoptr i64 %add371 to ptr
  %arrayidx372 = getelementptr inbounds i8, ptr %322, i64 10
  %323 = load i8, ptr %arrayidx372, align 1, !tbaa !11
  %conv373 = zext i8 %323 to i32
  %324 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub374 = sub nsw i32 %conv373, %324
  store i32 %sub374, ptr %vk10, align 4, !tbaa !14
  %325 = load i32, ptr %vi10, align 4, !tbaa !14
  %326 = load i32, ptr %vk10, align 4, !tbaa !14
  %mul375 = mul nsw i32 %325, %326
  %327 = load i32, ptr %vacc, align 4, !tbaa !14
  %add376 = add nsw i32 %327, %mul375
  store i32 %add376, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11) #4
  %328 = load ptr, ptr %i11, align 8, !tbaa !9
  %incdec.ptr377 = getelementptr inbounds i8, ptr %328, i32 1
  store ptr %incdec.ptr377, ptr %i11, align 8, !tbaa !9
  %329 = load i8, ptr %328, align 1, !tbaa !11
  %conv378 = zext i8 %329 to i32
  store i32 %conv378, ptr %vi11, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11) #4
  %330 = load ptr, ptr %w, align 8, !tbaa !9
  %331 = ptrtoint ptr %330 to i64
  %add379 = add i64 %331, 4
  %332 = inttoptr i64 %add379 to ptr
  %arrayidx380 = getelementptr inbounds i8, ptr %332, i64 11
  %333 = load i8, ptr %arrayidx380, align 1, !tbaa !11
  %conv381 = zext i8 %333 to i32
  %334 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub382 = sub nsw i32 %conv381, %334
  store i32 %sub382, ptr %vk11, align 4, !tbaa !14
  %335 = load i32, ptr %vi11, align 4, !tbaa !14
  %336 = load i32, ptr %vk11, align 4, !tbaa !14
  %mul383 = mul nsw i32 %335, %336
  %337 = load i32, ptr %vacc, align 4, !tbaa !14
  %add384 = add nsw i32 %337, %mul383
  store i32 %add384, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12) #4
  %338 = load ptr, ptr %i12, align 8, !tbaa !9
  %incdec.ptr385 = getelementptr inbounds i8, ptr %338, i32 1
  store ptr %incdec.ptr385, ptr %i12, align 8, !tbaa !9
  %339 = load i8, ptr %338, align 1, !tbaa !11
  %conv386 = zext i8 %339 to i32
  store i32 %conv386, ptr %vi12, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12) #4
  %340 = load ptr, ptr %w, align 8, !tbaa !9
  %341 = ptrtoint ptr %340 to i64
  %add387 = add i64 %341, 4
  %342 = inttoptr i64 %add387 to ptr
  %arrayidx388 = getelementptr inbounds i8, ptr %342, i64 12
  %343 = load i8, ptr %arrayidx388, align 1, !tbaa !11
  %conv389 = zext i8 %343 to i32
  %344 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub390 = sub nsw i32 %conv389, %344
  store i32 %sub390, ptr %vk12, align 4, !tbaa !14
  %345 = load i32, ptr %vi12, align 4, !tbaa !14
  %346 = load i32, ptr %vk12, align 4, !tbaa !14
  %mul391 = mul nsw i32 %345, %346
  %347 = load i32, ptr %vacc, align 4, !tbaa !14
  %add392 = add nsw i32 %347, %mul391
  store i32 %add392, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13) #4
  %348 = load ptr, ptr %i13, align 8, !tbaa !9
  %incdec.ptr393 = getelementptr inbounds i8, ptr %348, i32 1
  store ptr %incdec.ptr393, ptr %i13, align 8, !tbaa !9
  %349 = load i8, ptr %348, align 1, !tbaa !11
  %conv394 = zext i8 %349 to i32
  store i32 %conv394, ptr %vi13, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13) #4
  %350 = load ptr, ptr %w, align 8, !tbaa !9
  %351 = ptrtoint ptr %350 to i64
  %add395 = add i64 %351, 4
  %352 = inttoptr i64 %add395 to ptr
  %arrayidx396 = getelementptr inbounds i8, ptr %352, i64 13
  %353 = load i8, ptr %arrayidx396, align 1, !tbaa !11
  %conv397 = zext i8 %353 to i32
  %354 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub398 = sub nsw i32 %conv397, %354
  store i32 %sub398, ptr %vk13, align 4, !tbaa !14
  %355 = load i32, ptr %vi13, align 4, !tbaa !14
  %356 = load i32, ptr %vk13, align 4, !tbaa !14
  %mul399 = mul nsw i32 %355, %356
  %357 = load i32, ptr %vacc, align 4, !tbaa !14
  %add400 = add nsw i32 %357, %mul399
  store i32 %add400, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14) #4
  %358 = load ptr, ptr %i14, align 8, !tbaa !9
  %incdec.ptr401 = getelementptr inbounds i8, ptr %358, i32 1
  store ptr %incdec.ptr401, ptr %i14, align 8, !tbaa !9
  %359 = load i8, ptr %358, align 1, !tbaa !11
  %conv402 = zext i8 %359 to i32
  store i32 %conv402, ptr %vi14, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14) #4
  %360 = load ptr, ptr %w, align 8, !tbaa !9
  %361 = ptrtoint ptr %360 to i64
  %add403 = add i64 %361, 4
  %362 = inttoptr i64 %add403 to ptr
  %arrayidx404 = getelementptr inbounds i8, ptr %362, i64 14
  %363 = load i8, ptr %arrayidx404, align 1, !tbaa !11
  %conv405 = zext i8 %363 to i32
  %364 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub406 = sub nsw i32 %conv405, %364
  store i32 %sub406, ptr %vk14, align 4, !tbaa !14
  %365 = load i32, ptr %vi14, align 4, !tbaa !14
  %366 = load i32, ptr %vk14, align 4, !tbaa !14
  %mul407 = mul nsw i32 %365, %366
  %367 = load i32, ptr %vacc, align 4, !tbaa !14
  %add408 = add nsw i32 %367, %mul407
  store i32 %add408, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15) #4
  %368 = load ptr, ptr %i15, align 8, !tbaa !9
  %incdec.ptr409 = getelementptr inbounds i8, ptr %368, i32 1
  store ptr %incdec.ptr409, ptr %i15, align 8, !tbaa !9
  %369 = load i8, ptr %368, align 1, !tbaa !11
  %conv410 = zext i8 %369 to i32
  store i32 %conv410, ptr %vi15, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15) #4
  %370 = load ptr, ptr %w, align 8, !tbaa !9
  %371 = ptrtoint ptr %370 to i64
  %add411 = add i64 %371, 4
  %372 = inttoptr i64 %add411 to ptr
  %arrayidx412 = getelementptr inbounds i8, ptr %372, i64 15
  %373 = load i8, ptr %arrayidx412, align 1, !tbaa !11
  %conv413 = zext i8 %373 to i32
  %374 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub414 = sub nsw i32 %conv413, %374
  store i32 %sub414, ptr %vk15, align 4, !tbaa !14
  %375 = load i32, ptr %vi15, align 4, !tbaa !14
  %376 = load i32, ptr %vk15, align 4, !tbaa !14
  %mul415 = mul nsw i32 %375, %376
  %377 = load i32, ptr %vacc, align 4, !tbaa !14
  %add416 = add nsw i32 %377, %mul415
  store i32 %add416, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16) #4
  %378 = load ptr, ptr %i16, align 8, !tbaa !9
  %incdec.ptr417 = getelementptr inbounds i8, ptr %378, i32 1
  store ptr %incdec.ptr417, ptr %i16, align 8, !tbaa !9
  %379 = load i8, ptr %378, align 1, !tbaa !11
  %conv418 = zext i8 %379 to i32
  store i32 %conv418, ptr %vi16, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16) #4
  %380 = load ptr, ptr %w, align 8, !tbaa !9
  %381 = ptrtoint ptr %380 to i64
  %add419 = add i64 %381, 4
  %382 = inttoptr i64 %add419 to ptr
  %arrayidx420 = getelementptr inbounds i8, ptr %382, i64 16
  %383 = load i8, ptr %arrayidx420, align 1, !tbaa !11
  %conv421 = zext i8 %383 to i32
  %384 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub422 = sub nsw i32 %conv421, %384
  store i32 %sub422, ptr %vk16, align 4, !tbaa !14
  %385 = load i32, ptr %vi16, align 4, !tbaa !14
  %386 = load i32, ptr %vk16, align 4, !tbaa !14
  %mul423 = mul nsw i32 %385, %386
  %387 = load i32, ptr %vacc, align 4, !tbaa !14
  %add424 = add nsw i32 %387, %mul423
  store i32 %add424, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17) #4
  %388 = load ptr, ptr %i17, align 8, !tbaa !9
  %incdec.ptr425 = getelementptr inbounds i8, ptr %388, i32 1
  store ptr %incdec.ptr425, ptr %i17, align 8, !tbaa !9
  %389 = load i8, ptr %388, align 1, !tbaa !11
  %conv426 = zext i8 %389 to i32
  store i32 %conv426, ptr %vi17, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17) #4
  %390 = load ptr, ptr %w, align 8, !tbaa !9
  %391 = ptrtoint ptr %390 to i64
  %add427 = add i64 %391, 4
  %392 = inttoptr i64 %add427 to ptr
  %arrayidx428 = getelementptr inbounds i8, ptr %392, i64 17
  %393 = load i8, ptr %arrayidx428, align 1, !tbaa !11
  %conv429 = zext i8 %393 to i32
  %394 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub430 = sub nsw i32 %conv429, %394
  store i32 %sub430, ptr %vk17, align 4, !tbaa !14
  %395 = load i32, ptr %vi17, align 4, !tbaa !14
  %396 = load i32, ptr %vk17, align 4, !tbaa !14
  %mul431 = mul nsw i32 %395, %396
  %397 = load i32, ptr %vacc, align 4, !tbaa !14
  %add432 = add nsw i32 %397, %mul431
  store i32 %add432, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18) #4
  %398 = load ptr, ptr %i18, align 8, !tbaa !9
  %incdec.ptr433 = getelementptr inbounds i8, ptr %398, i32 1
  store ptr %incdec.ptr433, ptr %i18, align 8, !tbaa !9
  %399 = load i8, ptr %398, align 1, !tbaa !11
  %conv434 = zext i8 %399 to i32
  store i32 %conv434, ptr %vi18, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18) #4
  %400 = load ptr, ptr %w, align 8, !tbaa !9
  %401 = ptrtoint ptr %400 to i64
  %add435 = add i64 %401, 4
  %402 = inttoptr i64 %add435 to ptr
  %arrayidx436 = getelementptr inbounds i8, ptr %402, i64 18
  %403 = load i8, ptr %arrayidx436, align 1, !tbaa !11
  %conv437 = zext i8 %403 to i32
  %404 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub438 = sub nsw i32 %conv437, %404
  store i32 %sub438, ptr %vk18, align 4, !tbaa !14
  %405 = load i32, ptr %vi18, align 4, !tbaa !14
  %406 = load i32, ptr %vk18, align 4, !tbaa !14
  %mul439 = mul nsw i32 %405, %406
  %407 = load i32, ptr %vacc, align 4, !tbaa !14
  %add440 = add nsw i32 %407, %mul439
  store i32 %add440, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19) #4
  %408 = load ptr, ptr %i19, align 8, !tbaa !9
  %incdec.ptr441 = getelementptr inbounds i8, ptr %408, i32 1
  store ptr %incdec.ptr441, ptr %i19, align 8, !tbaa !9
  %409 = load i8, ptr %408, align 1, !tbaa !11
  %conv442 = zext i8 %409 to i32
  store i32 %conv442, ptr %vi19, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19) #4
  %410 = load ptr, ptr %w, align 8, !tbaa !9
  %411 = ptrtoint ptr %410 to i64
  %add443 = add i64 %411, 4
  %412 = inttoptr i64 %add443 to ptr
  %arrayidx444 = getelementptr inbounds i8, ptr %412, i64 19
  %413 = load i8, ptr %arrayidx444, align 1, !tbaa !11
  %conv445 = zext i8 %413 to i32
  %414 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub446 = sub nsw i32 %conv445, %414
  store i32 %sub446, ptr %vk19, align 4, !tbaa !14
  %415 = load i32, ptr %vi19, align 4, !tbaa !14
  %416 = load i32, ptr %vk19, align 4, !tbaa !14
  %mul447 = mul nsw i32 %415, %416
  %417 = load i32, ptr %vacc, align 4, !tbaa !14
  %add448 = add nsw i32 %417, %mul447
  store i32 %add448, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20) #4
  %418 = load ptr, ptr %i20, align 8, !tbaa !9
  %incdec.ptr449 = getelementptr inbounds i8, ptr %418, i32 1
  store ptr %incdec.ptr449, ptr %i20, align 8, !tbaa !9
  %419 = load i8, ptr %418, align 1, !tbaa !11
  %conv450 = zext i8 %419 to i32
  store i32 %conv450, ptr %vi20, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20) #4
  %420 = load ptr, ptr %w, align 8, !tbaa !9
  %421 = ptrtoint ptr %420 to i64
  %add451 = add i64 %421, 4
  %422 = inttoptr i64 %add451 to ptr
  %arrayidx452 = getelementptr inbounds i8, ptr %422, i64 20
  %423 = load i8, ptr %arrayidx452, align 1, !tbaa !11
  %conv453 = zext i8 %423 to i32
  %424 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub454 = sub nsw i32 %conv453, %424
  store i32 %sub454, ptr %vk20, align 4, !tbaa !14
  %425 = load i32, ptr %vi20, align 4, !tbaa !14
  %426 = load i32, ptr %vk20, align 4, !tbaa !14
  %mul455 = mul nsw i32 %425, %426
  %427 = load i32, ptr %vacc, align 4, !tbaa !14
  %add456 = add nsw i32 %427, %mul455
  store i32 %add456, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21) #4
  %428 = load ptr, ptr %i21, align 8, !tbaa !9
  %incdec.ptr457 = getelementptr inbounds i8, ptr %428, i32 1
  store ptr %incdec.ptr457, ptr %i21, align 8, !tbaa !9
  %429 = load i8, ptr %428, align 1, !tbaa !11
  %conv458 = zext i8 %429 to i32
  store i32 %conv458, ptr %vi21, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21) #4
  %430 = load ptr, ptr %w, align 8, !tbaa !9
  %431 = ptrtoint ptr %430 to i64
  %add459 = add i64 %431, 4
  %432 = inttoptr i64 %add459 to ptr
  %arrayidx460 = getelementptr inbounds i8, ptr %432, i64 21
  %433 = load i8, ptr %arrayidx460, align 1, !tbaa !11
  %conv461 = zext i8 %433 to i32
  %434 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub462 = sub nsw i32 %conv461, %434
  store i32 %sub462, ptr %vk21, align 4, !tbaa !14
  %435 = load i32, ptr %vi21, align 4, !tbaa !14
  %436 = load i32, ptr %vk21, align 4, !tbaa !14
  %mul463 = mul nsw i32 %435, %436
  %437 = load i32, ptr %vacc, align 4, !tbaa !14
  %add464 = add nsw i32 %437, %mul463
  store i32 %add464, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22) #4
  %438 = load ptr, ptr %i22, align 8, !tbaa !9
  %incdec.ptr465 = getelementptr inbounds i8, ptr %438, i32 1
  store ptr %incdec.ptr465, ptr %i22, align 8, !tbaa !9
  %439 = load i8, ptr %438, align 1, !tbaa !11
  %conv466 = zext i8 %439 to i32
  store i32 %conv466, ptr %vi22, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22) #4
  %440 = load ptr, ptr %w, align 8, !tbaa !9
  %441 = ptrtoint ptr %440 to i64
  %add467 = add i64 %441, 4
  %442 = inttoptr i64 %add467 to ptr
  %arrayidx468 = getelementptr inbounds i8, ptr %442, i64 22
  %443 = load i8, ptr %arrayidx468, align 1, !tbaa !11
  %conv469 = zext i8 %443 to i32
  %444 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub470 = sub nsw i32 %conv469, %444
  store i32 %sub470, ptr %vk22, align 4, !tbaa !14
  %445 = load i32, ptr %vi22, align 4, !tbaa !14
  %446 = load i32, ptr %vk22, align 4, !tbaa !14
  %mul471 = mul nsw i32 %445, %446
  %447 = load i32, ptr %vacc, align 4, !tbaa !14
  %add472 = add nsw i32 %447, %mul471
  store i32 %add472, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23) #4
  %448 = load ptr, ptr %i23, align 8, !tbaa !9
  %incdec.ptr473 = getelementptr inbounds i8, ptr %448, i32 1
  store ptr %incdec.ptr473, ptr %i23, align 8, !tbaa !9
  %449 = load i8, ptr %448, align 1, !tbaa !11
  %conv474 = zext i8 %449 to i32
  store i32 %conv474, ptr %vi23, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23) #4
  %450 = load ptr, ptr %w, align 8, !tbaa !9
  %451 = ptrtoint ptr %450 to i64
  %add475 = add i64 %451, 4
  %452 = inttoptr i64 %add475 to ptr
  %arrayidx476 = getelementptr inbounds i8, ptr %452, i64 23
  %453 = load i8, ptr %arrayidx476, align 1, !tbaa !11
  %conv477 = zext i8 %453 to i32
  %454 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub478 = sub nsw i32 %conv477, %454
  store i32 %sub478, ptr %vk23, align 4, !tbaa !14
  %455 = load i32, ptr %vi23, align 4, !tbaa !14
  %456 = load i32, ptr %vk23, align 4, !tbaa !14
  %mul479 = mul nsw i32 %455, %456
  %457 = load i32, ptr %vacc, align 4, !tbaa !14
  %add480 = add nsw i32 %457, %mul479
  store i32 %add480, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24) #4
  %458 = load ptr, ptr %i24, align 8, !tbaa !9
  %incdec.ptr481 = getelementptr inbounds i8, ptr %458, i32 1
  store ptr %incdec.ptr481, ptr %i24, align 8, !tbaa !9
  %459 = load i8, ptr %458, align 1, !tbaa !11
  %conv482 = zext i8 %459 to i32
  store i32 %conv482, ptr %vi24, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24) #4
  %460 = load ptr, ptr %w, align 8, !tbaa !9
  %461 = ptrtoint ptr %460 to i64
  %add483 = add i64 %461, 4
  %462 = inttoptr i64 %add483 to ptr
  %arrayidx484 = getelementptr inbounds i8, ptr %462, i64 24
  %463 = load i8, ptr %arrayidx484, align 1, !tbaa !11
  %conv485 = zext i8 %463 to i32
  %464 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub486 = sub nsw i32 %conv485, %464
  store i32 %sub486, ptr %vk24, align 4, !tbaa !14
  %465 = load i32, ptr %vi24, align 4, !tbaa !14
  %466 = load i32, ptr %vk24, align 4, !tbaa !14
  %mul487 = mul nsw i32 %465, %466
  %467 = load i32, ptr %vacc, align 4, !tbaa !14
  %add488 = add nsw i32 %467, %mul487
  store i32 %add488, ptr %vacc, align 4, !tbaa !14
  %468 = load ptr, ptr %w, align 8, !tbaa !9
  %469 = ptrtoint ptr %468 to i64
  %add489 = add i64 %469, 4
  %add490 = add i64 %add489, 25
  %470 = inttoptr i64 %add490 to ptr
  store ptr %470, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc) #4
  %471 = load i32, ptr %vacc, align 4, !tbaa !14
  %conv491 = sitofp i32 %471 to float
  %472 = load float, ptr %vscale, align 4, !tbaa !12
  %mul492 = fmul float %conv491, %472
  store float %mul492, ptr %vfpacc, align 4, !tbaa !12
  %473 = load float, ptr %vfpacc, align 4, !tbaa !12
  %474 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !12
  %call = call float @math_max_f32(float noundef %473, float noundef %474)
  store float %call, ptr %vfpacc, align 4, !tbaa !12
  %475 = load float, ptr %vfpacc, align 4, !tbaa !12
  %476 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !12
  %call493 = call float @math_min_f32(float noundef %475, float noundef %476)
  store float %call493, ptr %vfpacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrndacc) #4
  %477 = load float, ptr %vfpacc, align 4, !tbaa !12
  %call494 = call i64 @lrintf(float noundef %477) #4
  %conv495 = trunc i64 %call494 to i32
  store i32 %conv495, ptr %vrndacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout) #4
  %478 = load i32, ptr %vrndacc, align 4, !tbaa !14
  %479 = load i32, ptr %voutput_zero_point, align 4, !tbaa !14
  %add496 = add nsw i32 %478, %479
  store i32 %add496, ptr %vout, align 4, !tbaa !14
  %480 = load i32, ptr %vout, align 4, !tbaa !14
  %conv497 = trunc i32 %480 to i8
  %481 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %incdec.ptr498 = getelementptr inbounds i8, ptr %481, i32 1
  store ptr %incdec.ptr498, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv497, ptr %481, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrndacc) #4
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

do.cond:                                          ; preds = %do.body291
  %482 = load i64, ptr %c, align 8, !tbaa !5
  %dec = add i64 %482, -1
  store i64 %dec, ptr %c, align 8, !tbaa !5
  %cmp499 = icmp ne i64 %dec, 0
  br i1 %cmp499, label %do.body291, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  %483 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %484 = ptrtoint ptr %483 to i64
  %485 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add501 = add i64 %484, %485
  %486 = inttoptr i64 %add501 to ptr
  store ptr %486, ptr %output.addr, align 8, !tbaa !9
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
  br label %do.cond502

do.cond502:                                       ; preds = %do.end
  %487 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec503 = add i64 %487, -1
  store i64 %dec503, ptr %output_width.addr, align 8, !tbaa !5
  %cmp504 = icmp ne i64 %dec503, 0
  br i1 %cmp504, label %do.body, label %do.end506, !llvm.loop !19

do.end506:                                        ; preds = %do.cond502
  call void @llvm.lifetime.end.p0(i64 4, ptr %vkernel_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !12
  store float %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load float, ptr %b.addr, align 4, !tbaa !12
  %1 = load float, ptr %a.addr, align 4, !tbaa !12
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_min_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !12
  store float %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load float, ptr %b.addr, align 4, !tbaa !12
  %1 = load float, ptr %a.addr, align 4, !tbaa !12
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: nounwind
declare i64 @lrintf(float noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

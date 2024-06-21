; ModuleID = 'samples/138.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-dwconv/gen/up1x9-minmax-fp32-scalar-lrintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { i32, float, float, float, i32 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
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

do.body:                                          ; preds = %do.cond182, %entry
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
  %82 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %83 = ptrtoint ptr %82 to i64
  %84 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add98 = add i64 %83, %84
  %85 = inttoptr i64 %add98 to ptr
  store ptr %85, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  %86 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %86, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #4
  %87 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %87, ptr %w, align 8, !tbaa !9
  br label %do.body99

do.body99:                                        ; preds = %do.cond, %if.end97
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #4
  %88 = load ptr, ptr %w, align 8, !tbaa !9
  %89 = load i32, ptr %88, align 4, !tbaa !14
  store i32 %89, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0) #4
  %90 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr, ptr %i0, align 8, !tbaa !9
  %91 = load i8, ptr %90, align 1, !tbaa !11
  %conv100 = zext i8 %91 to i32
  store i32 %conv100, ptr %vi0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0) #4
  %92 = load ptr, ptr %w, align 8, !tbaa !9
  %93 = ptrtoint ptr %92 to i64
  %add101 = add i64 %93, 4
  %94 = inttoptr i64 %add101 to ptr
  %arrayidx102 = getelementptr inbounds i8, ptr %94, i64 0
  %95 = load i8, ptr %arrayidx102, align 1, !tbaa !11
  %conv103 = zext i8 %95 to i32
  %96 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub = sub nsw i32 %conv103, %96
  store i32 %sub, ptr %vk0, align 4, !tbaa !14
  %97 = load i32, ptr %vi0, align 4, !tbaa !14
  %98 = load i32, ptr %vk0, align 4, !tbaa !14
  %mul = mul nsw i32 %97, %98
  %99 = load i32, ptr %vacc, align 4, !tbaa !14
  %add104 = add nsw i32 %99, %mul
  store i32 %add104, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1) #4
  %100 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr105 = getelementptr inbounds i8, ptr %100, i32 1
  store ptr %incdec.ptr105, ptr %i1, align 8, !tbaa !9
  %101 = load i8, ptr %100, align 1, !tbaa !11
  %conv106 = zext i8 %101 to i32
  store i32 %conv106, ptr %vi1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1) #4
  %102 = load ptr, ptr %w, align 8, !tbaa !9
  %103 = ptrtoint ptr %102 to i64
  %add107 = add i64 %103, 4
  %104 = inttoptr i64 %add107 to ptr
  %arrayidx108 = getelementptr inbounds i8, ptr %104, i64 1
  %105 = load i8, ptr %arrayidx108, align 1, !tbaa !11
  %conv109 = zext i8 %105 to i32
  %106 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub110 = sub nsw i32 %conv109, %106
  store i32 %sub110, ptr %vk1, align 4, !tbaa !14
  %107 = load i32, ptr %vi1, align 4, !tbaa !14
  %108 = load i32, ptr %vk1, align 4, !tbaa !14
  %mul111 = mul nsw i32 %107, %108
  %109 = load i32, ptr %vacc, align 4, !tbaa !14
  %add112 = add nsw i32 %109, %mul111
  store i32 %add112, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2) #4
  %110 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr113 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr113, ptr %i2, align 8, !tbaa !9
  %111 = load i8, ptr %110, align 1, !tbaa !11
  %conv114 = zext i8 %111 to i32
  store i32 %conv114, ptr %vi2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2) #4
  %112 = load ptr, ptr %w, align 8, !tbaa !9
  %113 = ptrtoint ptr %112 to i64
  %add115 = add i64 %113, 4
  %114 = inttoptr i64 %add115 to ptr
  %arrayidx116 = getelementptr inbounds i8, ptr %114, i64 2
  %115 = load i8, ptr %arrayidx116, align 1, !tbaa !11
  %conv117 = zext i8 %115 to i32
  %116 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub118 = sub nsw i32 %conv117, %116
  store i32 %sub118, ptr %vk2, align 4, !tbaa !14
  %117 = load i32, ptr %vi2, align 4, !tbaa !14
  %118 = load i32, ptr %vk2, align 4, !tbaa !14
  %mul119 = mul nsw i32 %117, %118
  %119 = load i32, ptr %vacc, align 4, !tbaa !14
  %add120 = add nsw i32 %119, %mul119
  store i32 %add120, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3) #4
  %120 = load ptr, ptr %i3, align 8, !tbaa !9
  %incdec.ptr121 = getelementptr inbounds i8, ptr %120, i32 1
  store ptr %incdec.ptr121, ptr %i3, align 8, !tbaa !9
  %121 = load i8, ptr %120, align 1, !tbaa !11
  %conv122 = zext i8 %121 to i32
  store i32 %conv122, ptr %vi3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3) #4
  %122 = load ptr, ptr %w, align 8, !tbaa !9
  %123 = ptrtoint ptr %122 to i64
  %add123 = add i64 %123, 4
  %124 = inttoptr i64 %add123 to ptr
  %arrayidx124 = getelementptr inbounds i8, ptr %124, i64 3
  %125 = load i8, ptr %arrayidx124, align 1, !tbaa !11
  %conv125 = zext i8 %125 to i32
  %126 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub126 = sub nsw i32 %conv125, %126
  store i32 %sub126, ptr %vk3, align 4, !tbaa !14
  %127 = load i32, ptr %vi3, align 4, !tbaa !14
  %128 = load i32, ptr %vk3, align 4, !tbaa !14
  %mul127 = mul nsw i32 %127, %128
  %129 = load i32, ptr %vacc, align 4, !tbaa !14
  %add128 = add nsw i32 %129, %mul127
  store i32 %add128, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4) #4
  %130 = load ptr, ptr %i4, align 8, !tbaa !9
  %incdec.ptr129 = getelementptr inbounds i8, ptr %130, i32 1
  store ptr %incdec.ptr129, ptr %i4, align 8, !tbaa !9
  %131 = load i8, ptr %130, align 1, !tbaa !11
  %conv130 = zext i8 %131 to i32
  store i32 %conv130, ptr %vi4, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4) #4
  %132 = load ptr, ptr %w, align 8, !tbaa !9
  %133 = ptrtoint ptr %132 to i64
  %add131 = add i64 %133, 4
  %134 = inttoptr i64 %add131 to ptr
  %arrayidx132 = getelementptr inbounds i8, ptr %134, i64 4
  %135 = load i8, ptr %arrayidx132, align 1, !tbaa !11
  %conv133 = zext i8 %135 to i32
  %136 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub134 = sub nsw i32 %conv133, %136
  store i32 %sub134, ptr %vk4, align 4, !tbaa !14
  %137 = load i32, ptr %vi4, align 4, !tbaa !14
  %138 = load i32, ptr %vk4, align 4, !tbaa !14
  %mul135 = mul nsw i32 %137, %138
  %139 = load i32, ptr %vacc, align 4, !tbaa !14
  %add136 = add nsw i32 %139, %mul135
  store i32 %add136, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5) #4
  %140 = load ptr, ptr %i5, align 8, !tbaa !9
  %incdec.ptr137 = getelementptr inbounds i8, ptr %140, i32 1
  store ptr %incdec.ptr137, ptr %i5, align 8, !tbaa !9
  %141 = load i8, ptr %140, align 1, !tbaa !11
  %conv138 = zext i8 %141 to i32
  store i32 %conv138, ptr %vi5, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5) #4
  %142 = load ptr, ptr %w, align 8, !tbaa !9
  %143 = ptrtoint ptr %142 to i64
  %add139 = add i64 %143, 4
  %144 = inttoptr i64 %add139 to ptr
  %arrayidx140 = getelementptr inbounds i8, ptr %144, i64 5
  %145 = load i8, ptr %arrayidx140, align 1, !tbaa !11
  %conv141 = zext i8 %145 to i32
  %146 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub142 = sub nsw i32 %conv141, %146
  store i32 %sub142, ptr %vk5, align 4, !tbaa !14
  %147 = load i32, ptr %vi5, align 4, !tbaa !14
  %148 = load i32, ptr %vk5, align 4, !tbaa !14
  %mul143 = mul nsw i32 %147, %148
  %149 = load i32, ptr %vacc, align 4, !tbaa !14
  %add144 = add nsw i32 %149, %mul143
  store i32 %add144, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6) #4
  %150 = load ptr, ptr %i6, align 8, !tbaa !9
  %incdec.ptr145 = getelementptr inbounds i8, ptr %150, i32 1
  store ptr %incdec.ptr145, ptr %i6, align 8, !tbaa !9
  %151 = load i8, ptr %150, align 1, !tbaa !11
  %conv146 = zext i8 %151 to i32
  store i32 %conv146, ptr %vi6, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6) #4
  %152 = load ptr, ptr %w, align 8, !tbaa !9
  %153 = ptrtoint ptr %152 to i64
  %add147 = add i64 %153, 4
  %154 = inttoptr i64 %add147 to ptr
  %arrayidx148 = getelementptr inbounds i8, ptr %154, i64 6
  %155 = load i8, ptr %arrayidx148, align 1, !tbaa !11
  %conv149 = zext i8 %155 to i32
  %156 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub150 = sub nsw i32 %conv149, %156
  store i32 %sub150, ptr %vk6, align 4, !tbaa !14
  %157 = load i32, ptr %vi6, align 4, !tbaa !14
  %158 = load i32, ptr %vk6, align 4, !tbaa !14
  %mul151 = mul nsw i32 %157, %158
  %159 = load i32, ptr %vacc, align 4, !tbaa !14
  %add152 = add nsw i32 %159, %mul151
  store i32 %add152, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7) #4
  %160 = load ptr, ptr %i7, align 8, !tbaa !9
  %incdec.ptr153 = getelementptr inbounds i8, ptr %160, i32 1
  store ptr %incdec.ptr153, ptr %i7, align 8, !tbaa !9
  %161 = load i8, ptr %160, align 1, !tbaa !11
  %conv154 = zext i8 %161 to i32
  store i32 %conv154, ptr %vi7, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7) #4
  %162 = load ptr, ptr %w, align 8, !tbaa !9
  %163 = ptrtoint ptr %162 to i64
  %add155 = add i64 %163, 4
  %164 = inttoptr i64 %add155 to ptr
  %arrayidx156 = getelementptr inbounds i8, ptr %164, i64 7
  %165 = load i8, ptr %arrayidx156, align 1, !tbaa !11
  %conv157 = zext i8 %165 to i32
  %166 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub158 = sub nsw i32 %conv157, %166
  store i32 %sub158, ptr %vk7, align 4, !tbaa !14
  %167 = load i32, ptr %vi7, align 4, !tbaa !14
  %168 = load i32, ptr %vk7, align 4, !tbaa !14
  %mul159 = mul nsw i32 %167, %168
  %169 = load i32, ptr %vacc, align 4, !tbaa !14
  %add160 = add nsw i32 %169, %mul159
  store i32 %add160, ptr %vacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8) #4
  %170 = load ptr, ptr %i8, align 8, !tbaa !9
  %incdec.ptr161 = getelementptr inbounds i8, ptr %170, i32 1
  store ptr %incdec.ptr161, ptr %i8, align 8, !tbaa !9
  %171 = load i8, ptr %170, align 1, !tbaa !11
  %conv162 = zext i8 %171 to i32
  store i32 %conv162, ptr %vi8, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8) #4
  %172 = load ptr, ptr %w, align 8, !tbaa !9
  %173 = ptrtoint ptr %172 to i64
  %add163 = add i64 %173, 4
  %174 = inttoptr i64 %add163 to ptr
  %arrayidx164 = getelementptr inbounds i8, ptr %174, i64 8
  %175 = load i8, ptr %arrayidx164, align 1, !tbaa !11
  %conv165 = zext i8 %175 to i32
  %176 = load i32, ptr %vkernel_zero_point, align 4, !tbaa !14
  %sub166 = sub nsw i32 %conv165, %176
  store i32 %sub166, ptr %vk8, align 4, !tbaa !14
  %177 = load i32, ptr %vi8, align 4, !tbaa !14
  %178 = load i32, ptr %vk8, align 4, !tbaa !14
  %mul167 = mul nsw i32 %177, %178
  %179 = load i32, ptr %vacc, align 4, !tbaa !14
  %add168 = add nsw i32 %179, %mul167
  store i32 %add168, ptr %vacc, align 4, !tbaa !14
  %180 = load ptr, ptr %w, align 8, !tbaa !9
  %181 = ptrtoint ptr %180 to i64
  %add169 = add i64 %181, 4
  %add170 = add i64 %add169, 9
  %182 = inttoptr i64 %add170 to ptr
  store ptr %182, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc) #4
  %183 = load i32, ptr %vacc, align 4, !tbaa !14
  %conv171 = sitofp i32 %183 to float
  %184 = load float, ptr %vscale, align 4, !tbaa !12
  %mul172 = fmul float %conv171, %184
  store float %mul172, ptr %vfpacc, align 4, !tbaa !12
  %185 = load float, ptr %vfpacc, align 4, !tbaa !12
  %186 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !12
  %call = call float @math_max_f32(float noundef %185, float noundef %186)
  store float %call, ptr %vfpacc, align 4, !tbaa !12
  %187 = load float, ptr %vfpacc, align 4, !tbaa !12
  %188 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !12
  %call173 = call float @math_min_f32(float noundef %187, float noundef %188)
  store float %call173, ptr %vfpacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrndacc) #4
  %189 = load float, ptr %vfpacc, align 4, !tbaa !12
  %call174 = call i64 @lrintf(float noundef %189) #4
  %conv175 = trunc i64 %call174 to i32
  store i32 %conv175, ptr %vrndacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout) #4
  %190 = load i32, ptr %vrndacc, align 4, !tbaa !14
  %191 = load i32, ptr %voutput_zero_point, align 4, !tbaa !14
  %add176 = add nsw i32 %190, %191
  store i32 %add176, ptr %vout, align 4, !tbaa !14
  %192 = load i32, ptr %vout, align 4, !tbaa !14
  %conv177 = trunc i32 %192 to i8
  %193 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %incdec.ptr178 = getelementptr inbounds i8, ptr %193, i32 1
  store ptr %incdec.ptr178, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv177, ptr %193, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrndacc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc) #4
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

do.cond:                                          ; preds = %do.body99
  %194 = load i64, ptr %c, align 8, !tbaa !5
  %dec = add i64 %194, -1
  store i64 %dec, ptr %c, align 8, !tbaa !5
  %cmp179 = icmp ne i64 %dec, 0
  br i1 %cmp179, label %do.body99, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  %195 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %196 = ptrtoint ptr %195 to i64
  %197 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add181 = add i64 %196, %197
  %198 = inttoptr i64 %add181 to ptr
  store ptr %198, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #4
  br label %do.cond182

do.cond182:                                       ; preds = %do.end
  %199 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec183 = add i64 %199, -1
  store i64 %dec183, ptr %output_width.addr, align 8, !tbaa !5
  %cmp184 = icmp ne i64 %dec183, 0
  br i1 %cmp184, label %do.body, label %do.end186, !llvm.loop !19

do.end186:                                        ; preds = %do.cond182
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

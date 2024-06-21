; ModuleID = 'samples/859.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-gavgpool/gen/7x-minmax-fp32-scalar-fmagic-c2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, float, float, float, float, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_gavgpool_minmax_fp32_ukernel_7x__scalar_fmagic_c2(i64 noundef %rows, i64 noundef %channels, ptr noundef %input, i64 noundef %input_stride, ptr noundef %zero, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(112) %params) #0 {
entry:
  %rows.addr = alloca i64, align 8
  %channels.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %vinit_bias = alloca i32, align 4
  %vscale = alloca float, align 4
  %voutput_min_less_zero_point = alloca float, align 4
  %voutput_max_less_zero_point = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_bias_less_output_zero_point = alloca i32, align 4
  %vi0x0 = alloca i32, align 4
  %vi0x1 = alloca i32, align 4
  %vacc0 = alloca i32, align 4
  %vi1x0 = alloca i32, align 4
  %vacc1 = alloca i32, align 4
  %vi1x1 = alloca i32, align 4
  %vi2x0 = alloca i32, align 4
  %vi2x1 = alloca i32, align 4
  %vi3x0 = alloca i32, align 4
  %vi3x1 = alloca i32, align 4
  %vi4x0 = alloca i32, align 4
  %vi4x1 = alloca i32, align 4
  %vi5x0 = alloca i32, align 4
  %vi5x1 = alloca i32, align 4
  %vi6x0 = alloca i32, align 4
  %vi6x1 = alloca i32, align 4
  %vfpacc0 = alloca float, align 4
  %vfpacc1 = alloca float, align 4
  %vout0 = alloca i32, align 4
  %vout1 = alloca i32, align 4
  %vacc = alloca i32, align 4
  %vi0 = alloca i32, align 4
  %vi1 = alloca i32, align 4
  %vi2 = alloca i32, align 4
  %vi3 = alloca i32, align 4
  %vi4 = alloca i32, align 4
  %vi5 = alloca i32, align 4
  %vi6 = alloca i32, align 4
  %vfpacc = alloca float, align 4
  %vout = alloca i32, align 4
  store i64 %rows, ptr %rows.addr, align 8, !tbaa !5
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #4
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  store ptr %0, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #4
  %1 = load ptr, ptr %i0, align 8, !tbaa !9
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %i1, align 8, !tbaa !9
  %5 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %5, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %6, ptr %i1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #4
  %7 = load ptr, ptr %i1, align 8, !tbaa !9
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add2 = add i64 %8, %9
  %10 = inttoptr i64 %add2 to ptr
  store ptr %10, ptr %i2, align 8, !tbaa !9
  %11 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp3 = icmp ule i64 %11, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %12, ptr %i2, align 8, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #4
  %13 = load ptr, ptr %i2, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add13 = add i64 %14, %15
  %16 = inttoptr i64 %add13 to ptr
  store ptr %16, ptr %i3, align 8, !tbaa !9
  %17 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp14 = icmp ult i64 %17, 4
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !11

if.then22:                                        ; preds = %if.end12
  %18 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %18, ptr %i3, align 8, !tbaa !9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #4
  %19 = load ptr, ptr %i3, align 8, !tbaa !9
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add24 = add i64 %20, %21
  %22 = inttoptr i64 %add24 to ptr
  store ptr %22, ptr %i4, align 8, !tbaa !9
  %23 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp25 = icmp ule i64 %23, 4
  %lnot27 = xor i1 %cmp25, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %if.then33, label %if.end34, !unpredictable !11

if.then33:                                        ; preds = %if.end23
  %24 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %24, ptr %i4, align 8, !tbaa !9
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #4
  %25 = load ptr, ptr %i4, align 8, !tbaa !9
  %26 = ptrtoint ptr %25 to i64
  %27 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add35 = add i64 %26, %27
  %28 = inttoptr i64 %add35 to ptr
  store ptr %28, ptr %i5, align 8, !tbaa !9
  %29 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp36 = icmp ult i64 %29, 6
  %lnot38 = xor i1 %cmp36, true
  %lnot40 = xor i1 %lnot38, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = sext i32 %lnot.ext41 to i64
  %tobool43 = icmp ne i64 %conv42, 0
  br i1 %tobool43, label %if.then44, label %if.end45, !unpredictable !11

if.then44:                                        ; preds = %if.end34
  %30 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %30, ptr %i5, align 8, !tbaa !9
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #4
  %31 = load ptr, ptr %i5, align 8, !tbaa !9
  %32 = ptrtoint ptr %31 to i64
  %33 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add46 = add i64 %32, %33
  %34 = inttoptr i64 %add46 to ptr
  store ptr %34, ptr %i6, align 8, !tbaa !9
  %35 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp47 = icmp ule i64 %35, 6
  %lnot49 = xor i1 %cmp47, true
  %lnot51 = xor i1 %lnot49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %conv53 = sext i32 %lnot.ext52 to i64
  %tobool54 = icmp ne i64 %conv53, 0
  br i1 %tobool54, label %if.then55, label %if.end56, !unpredictable !11

if.then55:                                        ; preds = %if.end45
  %36 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %36, ptr %i6, align 8, !tbaa !9
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr %vinit_bias) #4
  %37 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %init_bias = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %init_bias, align 16, !tbaa !12
  store i32 %38, ptr %vinit_bias, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %39 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1
  %40 = load float, ptr %scale, align 4, !tbaa !12
  store float %40, ptr %vscale, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  %41 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min_less_zero_point = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 2
  %42 = load float, ptr %output_min_less_zero_point, align 8, !tbaa !12
  store float %42, ptr %voutput_min_less_zero_point, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  %43 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 3
  %44 = load float, ptr %output_max_less_zero_point, align 4, !tbaa !12
  store float %44, ptr %voutput_max_less_zero_point, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %45 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 4
  %46 = load float, ptr %magic_bias, align 16, !tbaa !12
  store float %46, ptr %vmagic_bias, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  %47 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_output_zero_point = getelementptr inbounds %struct.anon, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %magic_bias_less_output_zero_point, align 4, !tbaa !12
  store i32 %48, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %49 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp57 = icmp uge i64 %49, 2
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x0) #4
  %50 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv59 = zext i8 %51 to i32
  store i32 %conv59, ptr %vi0x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x1) #4
  %52 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx60 = getelementptr inbounds i8, ptr %52, i64 1
  %53 = load i8, ptr %arrayidx60, align 1, !tbaa !12
  %conv61 = zext i8 %53 to i32
  store i32 %conv61, ptr %vi0x1, align 4, !tbaa !13
  %54 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %54, i64 2
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0) #4
  %55 = load i32, ptr %vi0x0, align 4, !tbaa !13
  %56 = load i32, ptr %vinit_bias, align 4, !tbaa !13
  %add62 = add nsw i32 %55, %56
  store i32 %add62, ptr %vacc0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x0) #4
  %57 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx63 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx63, align 1, !tbaa !12
  %conv64 = zext i8 %58 to i32
  store i32 %conv64, ptr %vi1x0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1) #4
  %59 = load i32, ptr %vi0x1, align 4, !tbaa !13
  %60 = load i32, ptr %vinit_bias, align 4, !tbaa !13
  %add65 = add nsw i32 %59, %60
  store i32 %add65, ptr %vacc1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x1) #4
  %61 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx66 = getelementptr inbounds i8, ptr %61, i64 1
  %62 = load i8, ptr %arrayidx66, align 1, !tbaa !12
  %conv67 = zext i8 %62 to i32
  store i32 %conv67, ptr %vi1x1, align 4, !tbaa !13
  %63 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr68 = getelementptr inbounds i8, ptr %63, i64 2
  store ptr %add.ptr68, ptr %i1, align 8, !tbaa !9
  %64 = load i32, ptr %vi1x0, align 4, !tbaa !13
  %65 = load i32, ptr %vacc0, align 4, !tbaa !13
  %add69 = add nsw i32 %65, %64
  store i32 %add69, ptr %vacc0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x0) #4
  %66 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx70 = getelementptr inbounds i8, ptr %66, i64 0
  %67 = load i8, ptr %arrayidx70, align 1, !tbaa !12
  %conv71 = zext i8 %67 to i32
  store i32 %conv71, ptr %vi2x0, align 4, !tbaa !13
  %68 = load i32, ptr %vi1x1, align 4, !tbaa !13
  %69 = load i32, ptr %vacc1, align 4, !tbaa !13
  %add72 = add nsw i32 %69, %68
  store i32 %add72, ptr %vacc1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x1) #4
  %70 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx73 = getelementptr inbounds i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx73, align 1, !tbaa !12
  %conv74 = zext i8 %71 to i32
  store i32 %conv74, ptr %vi2x1, align 4, !tbaa !13
  %72 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr75 = getelementptr inbounds i8, ptr %72, i64 2
  store ptr %add.ptr75, ptr %i2, align 8, !tbaa !9
  %73 = load i32, ptr %vi2x0, align 4, !tbaa !13
  %74 = load i32, ptr %vacc0, align 4, !tbaa !13
  %add76 = add nsw i32 %74, %73
  store i32 %add76, ptr %vacc0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x0) #4
  %75 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx77 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx77, align 1, !tbaa !12
  %conv78 = zext i8 %76 to i32
  store i32 %conv78, ptr %vi3x0, align 4, !tbaa !13
  %77 = load i32, ptr %vi2x1, align 4, !tbaa !13
  %78 = load i32, ptr %vacc1, align 4, !tbaa !13
  %add79 = add nsw i32 %78, %77
  store i32 %add79, ptr %vacc1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x1) #4
  %79 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx80 = getelementptr inbounds i8, ptr %79, i64 1
  %80 = load i8, ptr %arrayidx80, align 1, !tbaa !12
  %conv81 = zext i8 %80 to i32
  store i32 %conv81, ptr %vi3x1, align 4, !tbaa !13
  %81 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr82 = getelementptr inbounds i8, ptr %81, i64 2
  store ptr %add.ptr82, ptr %i3, align 8, !tbaa !9
  %82 = load i32, ptr %vi3x0, align 4, !tbaa !13
  %83 = load i32, ptr %vacc0, align 4, !tbaa !13
  %add83 = add nsw i32 %83, %82
  store i32 %add83, ptr %vacc0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x0) #4
  %84 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx84 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx84, align 1, !tbaa !12
  %conv85 = zext i8 %85 to i32
  store i32 %conv85, ptr %vi4x0, align 4, !tbaa !13
  %86 = load i32, ptr %vi3x1, align 4, !tbaa !13
  %87 = load i32, ptr %vacc1, align 4, !tbaa !13
  %add86 = add nsw i32 %87, %86
  store i32 %add86, ptr %vacc1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x1) #4
  %88 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds i8, ptr %88, i64 1
  %89 = load i8, ptr %arrayidx87, align 1, !tbaa !12
  %conv88 = zext i8 %89 to i32
  store i32 %conv88, ptr %vi4x1, align 4, !tbaa !13
  %90 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr89 = getelementptr inbounds i8, ptr %90, i64 2
  store ptr %add.ptr89, ptr %i4, align 8, !tbaa !9
  %91 = load i32, ptr %vi4x0, align 4, !tbaa !13
  %92 = load i32, ptr %vacc0, align 4, !tbaa !13
  %add90 = add nsw i32 %92, %91
  store i32 %add90, ptr %vacc0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x0) #4
  %93 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx91 = getelementptr inbounds i8, ptr %93, i64 0
  %94 = load i8, ptr %arrayidx91, align 1, !tbaa !12
  %conv92 = zext i8 %94 to i32
  store i32 %conv92, ptr %vi5x0, align 4, !tbaa !13
  %95 = load i32, ptr %vi4x1, align 4, !tbaa !13
  %96 = load i32, ptr %vacc1, align 4, !tbaa !13
  %add93 = add nsw i32 %96, %95
  store i32 %add93, ptr %vacc1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x1) #4
  %97 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx94 = getelementptr inbounds i8, ptr %97, i64 1
  %98 = load i8, ptr %arrayidx94, align 1, !tbaa !12
  %conv95 = zext i8 %98 to i32
  store i32 %conv95, ptr %vi5x1, align 4, !tbaa !13
  %99 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr96 = getelementptr inbounds i8, ptr %99, i64 2
  store ptr %add.ptr96, ptr %i5, align 8, !tbaa !9
  %100 = load i32, ptr %vi5x0, align 4, !tbaa !13
  %101 = load i32, ptr %vacc0, align 4, !tbaa !13
  %add97 = add nsw i32 %101, %100
  store i32 %add97, ptr %vacc0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x0) #4
  %102 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx98 = getelementptr inbounds i8, ptr %102, i64 0
  %103 = load i8, ptr %arrayidx98, align 1, !tbaa !12
  %conv99 = zext i8 %103 to i32
  store i32 %conv99, ptr %vi6x0, align 4, !tbaa !13
  %104 = load i32, ptr %vi5x1, align 4, !tbaa !13
  %105 = load i32, ptr %vacc1, align 4, !tbaa !13
  %add100 = add nsw i32 %105, %104
  store i32 %add100, ptr %vacc1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x1) #4
  %106 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx101 = getelementptr inbounds i8, ptr %106, i64 1
  %107 = load i8, ptr %arrayidx101, align 1, !tbaa !12
  %conv102 = zext i8 %107 to i32
  store i32 %conv102, ptr %vi6x1, align 4, !tbaa !13
  %108 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr103 = getelementptr inbounds i8, ptr %108, i64 2
  store ptr %add.ptr103, ptr %i6, align 8, !tbaa !9
  %109 = load i32, ptr %vi6x0, align 4, !tbaa !13
  %110 = load i32, ptr %vacc0, align 4, !tbaa !13
  %add104 = add nsw i32 %110, %109
  store i32 %add104, ptr %vacc0, align 4, !tbaa !13
  %111 = load i32, ptr %vi6x1, align 4, !tbaa !13
  %112 = load i32, ptr %vacc1, align 4, !tbaa !13
  %add105 = add nsw i32 %112, %111
  store i32 %add105, ptr %vacc1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0) #4
  %113 = load i32, ptr %vacc0, align 4, !tbaa !13
  %conv106 = sitofp i32 %113 to float
  %114 = load float, ptr %vscale, align 4, !tbaa !15
  %mul = fmul float %conv106, %114
  store float %mul, ptr %vfpacc0, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1) #4
  %115 = load i32, ptr %vacc1, align 4, !tbaa !13
  %conv107 = sitofp i32 %115 to float
  %116 = load float, ptr %vscale, align 4, !tbaa !15
  %mul108 = fmul float %conv107, %116
  store float %mul108, ptr %vfpacc1, align 4, !tbaa !15
  %117 = load float, ptr %vfpacc0, align 4, !tbaa !15
  %118 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !15
  %call = call float @math_max_f32(float noundef %117, float noundef %118)
  store float %call, ptr %vfpacc0, align 4, !tbaa !15
  %119 = load float, ptr %vfpacc1, align 4, !tbaa !15
  %120 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !15
  %call109 = call float @math_max_f32(float noundef %119, float noundef %120)
  store float %call109, ptr %vfpacc1, align 4, !tbaa !15
  %121 = load float, ptr %vfpacc0, align 4, !tbaa !15
  %122 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !15
  %call110 = call float @math_min_f32(float noundef %121, float noundef %122)
  store float %call110, ptr %vfpacc0, align 4, !tbaa !15
  %123 = load float, ptr %vfpacc1, align 4, !tbaa !15
  %124 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !15
  %call111 = call float @math_min_f32(float noundef %123, float noundef %124)
  store float %call111, ptr %vfpacc1, align 4, !tbaa !15
  %125 = load float, ptr %vmagic_bias, align 4, !tbaa !15
  %126 = load float, ptr %vfpacc0, align 4, !tbaa !15
  %add112 = fadd float %126, %125
  store float %add112, ptr %vfpacc0, align 4, !tbaa !15
  %127 = load float, ptr %vmagic_bias, align 4, !tbaa !15
  %128 = load float, ptr %vfpacc1, align 4, !tbaa !15
  %add113 = fadd float %128, %127
  store float %add113, ptr %vfpacc1, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0) #4
  %129 = load float, ptr %vfpacc0, align 4, !tbaa !15
  %call114 = call i32 @fp32_to_bits(float noundef %129)
  %130 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !13
  %sub = sub nsw i32 %call114, %130
  store i32 %sub, ptr %vout0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1) #4
  %131 = load float, ptr %vfpacc1, align 4, !tbaa !15
  %call115 = call i32 @fp32_to_bits(float noundef %131)
  %132 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !13
  %sub116 = sub nsw i32 %call115, %132
  store i32 %sub116, ptr %vout1, align 4, !tbaa !13
  %133 = load i32, ptr %vout0, align 4, !tbaa !13
  %conv117 = trunc i32 %133 to i8
  %134 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx118 = getelementptr inbounds i8, ptr %134, i64 0
  store i8 %conv117, ptr %arrayidx118, align 1, !tbaa !12
  %135 = load i32, ptr %vout1, align 4, !tbaa !13
  %conv119 = trunc i32 %135 to i8
  %136 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx120 = getelementptr inbounds i8, ptr %136, i64 1
  store i8 %conv119, ptr %arrayidx120, align 1, !tbaa !12
  %137 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr121 = getelementptr inbounds i8, ptr %137, i64 2
  store ptr %add.ptr121, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %138 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %sub122 = sub i64 %138, 2
  store i64 %sub122, ptr %channels.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %139 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp123 = icmp ne i64 %139, 0
  %lnot125 = xor i1 %cmp123, true
  %lnot127 = xor i1 %lnot125, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv129, i64 0)
  %tobool130 = icmp ne i64 %expval, 0
  br i1 %tobool130, label %if.then131, label %if.end154

if.then131:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #4
  %140 = load i32, ptr %vinit_bias, align 4, !tbaa !13
  store i32 %140, ptr %vacc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0) #4
  %141 = load ptr, ptr %i0, align 8, !tbaa !9
  %142 = load i8, ptr %141, align 1, !tbaa !12
  %conv132 = zext i8 %142 to i32
  store i32 %conv132, ptr %vi0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1) #4
  %143 = load ptr, ptr %i1, align 8, !tbaa !9
  %144 = load i8, ptr %143, align 1, !tbaa !12
  %conv133 = zext i8 %144 to i32
  store i32 %conv133, ptr %vi1, align 4, !tbaa !13
  %145 = load i32, ptr %vi0, align 4, !tbaa !13
  %146 = load i32, ptr %vacc, align 4, !tbaa !13
  %add134 = add nsw i32 %146, %145
  store i32 %add134, ptr %vacc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2) #4
  %147 = load ptr, ptr %i2, align 8, !tbaa !9
  %148 = load i8, ptr %147, align 1, !tbaa !12
  %conv135 = zext i8 %148 to i32
  store i32 %conv135, ptr %vi2, align 4, !tbaa !13
  %149 = load i32, ptr %vi1, align 4, !tbaa !13
  %150 = load i32, ptr %vacc, align 4, !tbaa !13
  %add136 = add nsw i32 %150, %149
  store i32 %add136, ptr %vacc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3) #4
  %151 = load ptr, ptr %i3, align 8, !tbaa !9
  %152 = load i8, ptr %151, align 1, !tbaa !12
  %conv137 = zext i8 %152 to i32
  store i32 %conv137, ptr %vi3, align 4, !tbaa !13
  %153 = load i32, ptr %vi2, align 4, !tbaa !13
  %154 = load i32, ptr %vacc, align 4, !tbaa !13
  %add138 = add nsw i32 %154, %153
  store i32 %add138, ptr %vacc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4) #4
  %155 = load ptr, ptr %i4, align 8, !tbaa !9
  %156 = load i8, ptr %155, align 1, !tbaa !12
  %conv139 = zext i8 %156 to i32
  store i32 %conv139, ptr %vi4, align 4, !tbaa !13
  %157 = load i32, ptr %vi3, align 4, !tbaa !13
  %158 = load i32, ptr %vacc, align 4, !tbaa !13
  %add140 = add nsw i32 %158, %157
  store i32 %add140, ptr %vacc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5) #4
  %159 = load ptr, ptr %i5, align 8, !tbaa !9
  %160 = load i8, ptr %159, align 1, !tbaa !12
  %conv141 = zext i8 %160 to i32
  store i32 %conv141, ptr %vi5, align 4, !tbaa !13
  %161 = load i32, ptr %vi4, align 4, !tbaa !13
  %162 = load i32, ptr %vacc, align 4, !tbaa !13
  %add142 = add nsw i32 %162, %161
  store i32 %add142, ptr %vacc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6) #4
  %163 = load ptr, ptr %i6, align 8, !tbaa !9
  %164 = load i8, ptr %163, align 1, !tbaa !12
  %conv143 = zext i8 %164 to i32
  store i32 %conv143, ptr %vi6, align 4, !tbaa !13
  %165 = load i32, ptr %vi5, align 4, !tbaa !13
  %166 = load i32, ptr %vacc, align 4, !tbaa !13
  %add144 = add nsw i32 %166, %165
  store i32 %add144, ptr %vacc, align 4, !tbaa !13
  %167 = load i32, ptr %vi6, align 4, !tbaa !13
  %168 = load i32, ptr %vacc, align 4, !tbaa !13
  %add145 = add nsw i32 %168, %167
  store i32 %add145, ptr %vacc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc) #4
  %169 = load i32, ptr %vacc, align 4, !tbaa !13
  %conv146 = sitofp i32 %169 to float
  %170 = load float, ptr %vscale, align 4, !tbaa !15
  %mul147 = fmul float %conv146, %170
  store float %mul147, ptr %vfpacc, align 4, !tbaa !15
  %171 = load float, ptr %vfpacc, align 4, !tbaa !15
  %172 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !15
  %call148 = call float @math_max_f32(float noundef %171, float noundef %172)
  store float %call148, ptr %vfpacc, align 4, !tbaa !15
  %173 = load float, ptr %vfpacc, align 4, !tbaa !15
  %174 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !15
  %call149 = call float @math_min_f32(float noundef %173, float noundef %174)
  store float %call149, ptr %vfpacc, align 4, !tbaa !15
  %175 = load float, ptr %vmagic_bias, align 4, !tbaa !15
  %176 = load float, ptr %vfpacc, align 4, !tbaa !15
  %add150 = fadd float %176, %175
  store float %add150, ptr %vfpacc, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout) #4
  %177 = load float, ptr %vfpacc, align 4, !tbaa !15
  %call151 = call i32 @fp32_to_bits(float noundef %177)
  %178 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !13
  %sub152 = sub nsw i32 %call151, %178
  store i32 %sub152, ptr %vout, align 4, !tbaa !13
  %179 = load i32, ptr %vout, align 4, !tbaa !13
  %conv153 = trunc i32 %179 to i8
  %180 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv153, ptr %180, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc) #4
  br label %if.end154

if.end154:                                        ; preds = %if.then131, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vinit_bias) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !15
  store float %b, ptr %b.addr, align 4, !tbaa !15
  %0 = load float, ptr %b.addr, align 4, !tbaa !15
  %1 = load float, ptr %a.addr, align 4, !tbaa !15
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !15
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
  store float %a, ptr %a.addr, align 4, !tbaa !15
  store float %b, ptr %b.addr, align 4, !tbaa !15
  %0 = load float, ptr %b.addr, align 4, !tbaa !15
  %1 = load float, ptr %a.addr, align 4, !tbaa !15
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !11

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #2 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !15
  store float %0, ptr %fp32, align 4, !tbaa !12
  %1 = load i32, ptr %fp32, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #4
  ret i32 %1
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
!11 = !{}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}

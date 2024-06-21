; ModuleID = 'samples/376.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-dwconv/gen/up8x3-minmax-fma3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { [8 x float], [8 x float], [14 x i32], [8 x i8] }
%struct.__loadu_ps = type { <8 x float> }
%struct.__storeu_ps = type { <8 x float> }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__storeu_ps.2 = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_dwconv_minmax_ukernel_up8x3__fma3(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
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
  %vmax = alloca <8 x float>, align 32
  %vmin = alloca <8 x float>, align 32
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %c = alloca i64, align 8
  %w = alloca ptr, align 8
  %vacc01234567p0 = alloca <8 x float>, align 32
  %vi0x01234567 = alloca <8 x float>, align 32
  %vk0x01234567 = alloca <8 x float>, align 32
  %vi1x01234567 = alloca <8 x float>, align 32
  %vk1x01234567 = alloca <8 x float>, align 32
  %vi2x01234567 = alloca <8 x float>, align 32
  %vk2x01234567 = alloca <8 x float>, align 32
  %vacc01234567 = alloca <8 x float>, align 32
  %vmask = alloca <4 x i64>, align 32
  %vacc01234567p062 = alloca <8 x float>, align 32
  %vi0x0123456764 = alloca <8 x float>, align 32
  %vk0x0123456766 = alloca <8 x float>, align 32
  %vi1x0123456770 = alloca <8 x float>, align 32
  %vk1x0123456772 = alloca <8 x float>, align 32
  %vi2x0123456776 = alloca <8 x float>, align 32
  %vk2x0123456778 = alloca <8 x float>, align 32
  %vacc0123456782 = alloca <8 x float>, align 32
  %vacc0123 = alloca <4 x float>, align 16
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax) #7
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vmax, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin) #7
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call2 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1)
  store <8 x float> %call2, ptr %vmin, align 32, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #7
  %2 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %3, ptr %i0, align 8, !tbaa !9
  %4 = load ptr, ptr %i0, align 8, !tbaa !9
  %5 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %4, %5
  %lnot = xor i1 %cmp, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !12

if.then:                                          ; preds = %do.body
  %6 = load ptr, ptr %i0, align 8, !tbaa !9
  %7 = ptrtoint ptr %6 to i64
  %8 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add = add i64 %7, %8
  %9 = inttoptr i64 %add to ptr
  store ptr %9, ptr %i0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #7
  %10 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx4, align 8, !tbaa !9
  store ptr %11, ptr %i1, align 8, !tbaa !9
  %12 = load ptr, ptr %i1, align 8, !tbaa !9
  %13 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp5 = icmp ne ptr %12, %13
  %lnot7 = xor i1 %cmp5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.end15, !unpredictable !12

if.then13:                                        ; preds = %if.end
  %14 = load ptr, ptr %i1, align 8, !tbaa !9
  %15 = ptrtoint ptr %14 to i64
  %16 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add14 = add i64 %15, %16
  %17 = inttoptr i64 %add14 to ptr
  store ptr %17, ptr %i1, align 8, !tbaa !9
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #7
  %18 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx16 = getelementptr inbounds ptr, ptr %18, i64 2
  %19 = load ptr, ptr %arrayidx16, align 8, !tbaa !9
  store ptr %19, ptr %i2, align 8, !tbaa !9
  %20 = load ptr, ptr %i2, align 8, !tbaa !9
  %21 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp17 = icmp ne ptr %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then25, label %if.end27, !unpredictable !12

if.then25:                                        ; preds = %if.end15
  %22 = load ptr, ptr %i2, align 8, !tbaa !9
  %23 = ptrtoint ptr %22 to i64
  %24 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add26 = add i64 %23, %24
  %25 = inttoptr i64 %add26 to ptr
  store ptr %25, ptr %i2, align 8, !tbaa !9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end15
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %27 = ptrtoint ptr %26 to i64
  %28 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add28 = add i64 %27, %28
  %29 = inttoptr i64 %add28 to ptr
  store ptr %29, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  %30 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %30, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7
  %31 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %31, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end27
  %32 = load i64, ptr %c, align 8, !tbaa !5
  %cmp29 = icmp uge i64 %32, 8
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p0) #7
  %33 = load ptr, ptr %w, align 8, !tbaa !9
  %call31 = call <8 x float> @_mm256_load_ps(ptr noundef %33)
  store <8 x float> %call31, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567) #7
  %34 = load ptr, ptr %i0, align 8, !tbaa !9
  %call32 = call <8 x float> @_mm256_loadu_ps(ptr noundef %34)
  store <8 x float> %call32, ptr %vi0x01234567, align 32, !tbaa !11
  %35 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %35, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x01234567) #7
  %36 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr33 = getelementptr inbounds float, ptr %36, i64 8
  %call34 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr33)
  store <8 x float> %call34, ptr %vk0x01234567, align 32, !tbaa !11
  %37 = load <8 x float>, ptr %vi0x01234567, align 32, !tbaa !11
  %38 = load <8 x float>, ptr %vk0x01234567, align 32, !tbaa !11
  %39 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %call35 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %37, <8 x float> noundef %38, <8 x float> noundef %39)
  store <8 x float> %call35, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567) #7
  %40 = load ptr, ptr %i1, align 8, !tbaa !9
  %call36 = call <8 x float> @_mm256_loadu_ps(ptr noundef %40)
  store <8 x float> %call36, ptr %vi1x01234567, align 32, !tbaa !11
  %41 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds float, ptr %41, i64 8
  store ptr %add.ptr37, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x01234567) #7
  %42 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr38 = getelementptr inbounds float, ptr %42, i64 16
  %call39 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr38)
  store <8 x float> %call39, ptr %vk1x01234567, align 32, !tbaa !11
  %43 = load <8 x float>, ptr %vi1x01234567, align 32, !tbaa !11
  %44 = load <8 x float>, ptr %vk1x01234567, align 32, !tbaa !11
  %45 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %call40 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %43, <8 x float> noundef %44, <8 x float> noundef %45)
  store <8 x float> %call40, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567) #7
  %46 = load ptr, ptr %i2, align 8, !tbaa !9
  %call41 = call <8 x float> @_mm256_loadu_ps(ptr noundef %46)
  store <8 x float> %call41, ptr %vi2x01234567, align 32, !tbaa !11
  %47 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr42 = getelementptr inbounds float, ptr %47, i64 8
  store ptr %add.ptr42, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x01234567) #7
  %48 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr43 = getelementptr inbounds float, ptr %48, i64 24
  %call44 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr43)
  store <8 x float> %call44, ptr %vk2x01234567, align 32, !tbaa !11
  %49 = load <8 x float>, ptr %vi2x01234567, align 32, !tbaa !11
  %50 = load <8 x float>, ptr %vk2x01234567, align 32, !tbaa !11
  %51 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %call45 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %49, <8 x float> noundef %50, <8 x float> noundef %51)
  store <8 x float> %call45, ptr %vacc01234567p0, align 32, !tbaa !11
  %52 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr46 = getelementptr inbounds float, ptr %52, i64 32
  store ptr %add.ptr46, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567) #7
  %53 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %54 = load <8 x float>, ptr %vmin, align 32, !tbaa !11
  %call47 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %53, <8 x float> noundef %54)
  store <8 x float> %call47, ptr %vacc01234567, align 32, !tbaa !11
  %55 = load <8 x float>, ptr %vacc01234567, align 32, !tbaa !11
  %56 = load <8 x float>, ptr %vmax, align 32, !tbaa !11
  %call48 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %55, <8 x float> noundef %56)
  store <8 x float> %call48, ptr %vacc01234567, align 32, !tbaa !11
  %57 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %58 = load <8 x float>, ptr %vacc01234567, align 32, !tbaa !11
  call void @_mm256_storeu_ps(ptr noundef %57, <8 x float> noundef %58)
  %59 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr49 = getelementptr inbounds float, ptr %59, i64 8
  store ptr %add.ptr49, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x01234567) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x01234567) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x01234567) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x01234567) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p0) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %60, 8
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %61 = load i64, ptr %c, align 8, !tbaa !5
  %cmp50 = icmp ne i64 %61, 0
  %lnot52 = xor i1 %cmp50, true
  %lnot54 = xor i1 %lnot52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %conv56 = sext i32 %lnot.ext55 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv56, i64 0)
  %tobool57 = icmp ne i64 %expval, 0
  br i1 %tobool57, label %if.then58, label %if.end101

if.then58:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmask) #7
  %62 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %mask_table = getelementptr inbounds %struct.anon.1, ptr %62, i32 0, i32 2
  %63 = load i64, ptr %c, align 8, !tbaa !5
  %sub59 = sub i64 7, %63
  %arrayidx60 = getelementptr inbounds [14 x i32], ptr %mask_table, i64 0, i64 %sub59
  %call61 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %arrayidx60)
  store <4 x i64> %call61, ptr %vmask, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p062) #7
  %64 = load ptr, ptr %w, align 8, !tbaa !9
  %call63 = call <8 x float> @_mm256_load_ps(ptr noundef %64)
  store <8 x float> %call63, ptr %vacc01234567p062, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x0123456764) #7
  %65 = load ptr, ptr %i0, align 8, !tbaa !9
  %66 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call65 = call <8 x float> @_mm256_maskload_ps(ptr noundef %65, <4 x i64> noundef %66)
  store <8 x float> %call65, ptr %vi0x0123456764, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x0123456766) #7
  %67 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr67 = getelementptr inbounds float, ptr %67, i64 8
  %call68 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr67)
  store <8 x float> %call68, ptr %vk0x0123456766, align 32, !tbaa !11
  %68 = load <8 x float>, ptr %vi0x0123456764, align 32, !tbaa !11
  %69 = load <8 x float>, ptr %vk0x0123456766, align 32, !tbaa !11
  %70 = load <8 x float>, ptr %vacc01234567p062, align 32, !tbaa !11
  %call69 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %68, <8 x float> noundef %69, <8 x float> noundef %70)
  store <8 x float> %call69, ptr %vacc01234567p062, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x0123456770) #7
  %71 = load ptr, ptr %i1, align 8, !tbaa !9
  %72 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call71 = call <8 x float> @_mm256_maskload_ps(ptr noundef %71, <4 x i64> noundef %72)
  store <8 x float> %call71, ptr %vi1x0123456770, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x0123456772) #7
  %73 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr73 = getelementptr inbounds float, ptr %73, i64 16
  %call74 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr73)
  store <8 x float> %call74, ptr %vk1x0123456772, align 32, !tbaa !11
  %74 = load <8 x float>, ptr %vi1x0123456770, align 32, !tbaa !11
  %75 = load <8 x float>, ptr %vk1x0123456772, align 32, !tbaa !11
  %76 = load <8 x float>, ptr %vacc01234567p062, align 32, !tbaa !11
  %call75 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %74, <8 x float> noundef %75, <8 x float> noundef %76)
  store <8 x float> %call75, ptr %vacc01234567p062, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x0123456776) #7
  %77 = load ptr, ptr %i2, align 8, !tbaa !9
  %78 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call77 = call <8 x float> @_mm256_maskload_ps(ptr noundef %77, <4 x i64> noundef %78)
  store <8 x float> %call77, ptr %vi2x0123456776, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x0123456778) #7
  %79 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr79 = getelementptr inbounds float, ptr %79, i64 24
  %call80 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr79)
  store <8 x float> %call80, ptr %vk2x0123456778, align 32, !tbaa !11
  %80 = load <8 x float>, ptr %vi2x0123456776, align 32, !tbaa !11
  %81 = load <8 x float>, ptr %vk2x0123456778, align 32, !tbaa !11
  %82 = load <8 x float>, ptr %vacc01234567p062, align 32, !tbaa !11
  %call81 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %80, <8 x float> noundef %81, <8 x float> noundef %82)
  store <8 x float> %call81, ptr %vacc01234567p062, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc0123456782) #7
  %83 = load <8 x float>, ptr %vacc01234567p062, align 32, !tbaa !11
  %84 = load <8 x float>, ptr %vmin, align 32, !tbaa !11
  %call83 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %83, <8 x float> noundef %84)
  store <8 x float> %call83, ptr %vacc0123456782, align 32, !tbaa !11
  %85 = load <8 x float>, ptr %vacc0123456782, align 32, !tbaa !11
  %86 = load <8 x float>, ptr %vmax, align 32, !tbaa !11
  %call84 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %85, <8 x float> noundef %86)
  store <8 x float> %call84, ptr %vacc0123456782, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #7
  %87 = load <8 x float>, ptr %vacc0123456782, align 32, !tbaa !11
  %call85 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %87)
  store <4 x float> %call85, ptr %vacc0123, align 16, !tbaa !11
  %88 = load i64, ptr %c, align 8, !tbaa !5
  %and = and i64 %88, 4
  %tobool86 = icmp ne i64 %and, 0
  br i1 %tobool86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.then58
  %89 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %90 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %89, <4 x float> noundef %90)
  %91 = load <8 x float>, ptr %vacc0123456782, align 32, !tbaa !11
  %extract = shufflevector <8 x float> %91, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract, ptr %vacc0123, align 16, !tbaa !11
  %92 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr88 = getelementptr inbounds float, ptr %92, i64 4
  store ptr %add.ptr88, ptr %output.addr, align 8, !tbaa !9
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.then58
  %93 = load i64, ptr %c, align 8, !tbaa !5
  %and90 = and i64 %93, 2
  %tobool91 = icmp ne i64 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end89
  %94 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %95 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %94, <4 x float> noundef %95)
  %96 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  %97 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  %call93 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %96, <4 x float> noundef %97)
  store <4 x float> %call93, ptr %vacc0123, align 16, !tbaa !11
  %98 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr94 = getelementptr inbounds float, ptr %98, i64 2
  store ptr %add.ptr94, ptr %output.addr, align 8, !tbaa !9
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end89
  %99 = load i64, ptr %c, align 8, !tbaa !5
  %and96 = and i64 %99, 1
  %tobool97 = icmp ne i64 %and96, 0
  br i1 %tobool97, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end95
  %100 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %101 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %100, <4 x float> noundef %101)
  %102 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr99 = getelementptr inbounds float, ptr %102, i64 1
  store ptr %add.ptr99, ptr %output.addr, align 8, !tbaa !9
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end95
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc0123456782) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x0123456778) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x0123456776) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x0123456772) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x0123456770) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x0123456766) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x0123456764) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p062) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmask) #7
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %for.end
  %103 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %104 = ptrtoint ptr %103 to i64
  %105 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add102 = add i64 %104, %105
  %106 = inttoptr i64 %add102 to ptr
  store ptr %106, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end101
  %107 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %107, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp103 = icmp ne i64 %dec, 0
  br i1 %cmp103, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmin) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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
define internal <8 x float> @_mm256_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <8 x float>, ptr %__v, align 1, !tbaa !11
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <8 x float>, align 32
  %__B.addr = alloca <8 x float>, align 32
  %__C.addr = alloca <8 x float>, align 32
  store <8 x float> %__A, ptr %__A.addr, align 32, !tbaa !11
  store <8 x float> %__B, ptr %__B.addr, align 32, !tbaa !11
  store <8 x float> %__C, ptr %__C.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__A.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__B.addr, align 32, !tbaa !11
  %2 = load <8 x float>, ptr %__C.addr, align 32, !tbaa !11
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_max_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %2 = call <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
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
define internal void @_mm256_storeu_ps(ptr noundef %__p, <8 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <8 x float>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <8 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

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
define internal <8 x float> @_mm256_maskload_ps(ptr noundef %__p, <4 x i64> noundef %__m) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__m.addr = alloca <4 x i64>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x i64> %__m, ptr %__m.addr, align 32, !tbaa !11
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x i64>, ptr %__m.addr, align 32, !tbaa !11
  %2 = bitcast <4 x i64> %1 to <8 x i32>
  %3 = call <8 x float> @llvm.x86.avx.maskload.ps.256(ptr %0, <8 x i32> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %shuffle = shufflevector <8 x float> %0, <8 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps.2, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.x86.avx.maskload.ps.256(ptr, <8 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

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
!15 = distinct !{!15, !14}

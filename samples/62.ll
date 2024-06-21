; ModuleID = 'samples/62.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-dwconv/gen/up8x9-minmax-avx.c"
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
define hidden void @xnn_f32_dwconv_minmax_ukernel_up8x9__avx(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
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
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %i7 = alloca ptr, align 8
  %i8 = alloca ptr, align 8
  %c = alloca i64, align 8
  %w = alloca ptr, align 8
  %vacc01234567p0 = alloca <8 x float>, align 32
  %vi0x01234567 = alloca <8 x float>, align 32
  %vk0x01234567 = alloca <8 x float>, align 32
  %vi1x01234567 = alloca <8 x float>, align 32
  %vk1x01234567 = alloca <8 x float>, align 32
  %vi2x01234567 = alloca <8 x float>, align 32
  %vk2x01234567 = alloca <8 x float>, align 32
  %vi3x01234567 = alloca <8 x float>, align 32
  %vk3x01234567 = alloca <8 x float>, align 32
  %vi4x01234567 = alloca <8 x float>, align 32
  %vk4x01234567 = alloca <8 x float>, align 32
  %vi5x01234567 = alloca <8 x float>, align 32
  %vk5x01234567 = alloca <8 x float>, align 32
  %vi6x01234567 = alloca <8 x float>, align 32
  %vk6x01234567 = alloca <8 x float>, align 32
  %vi7x01234567 = alloca <8 x float>, align 32
  %vk7x01234567 = alloca <8 x float>, align 32
  %vi8x01234567 = alloca <8 x float>, align 32
  %vk8x01234567 = alloca <8 x float>, align 32
  %vacc01234567 = alloca <8 x float>, align 32
  %vmask = alloca <4 x i64>, align 32
  %vacc01234567p0173 = alloca <8 x float>, align 32
  %vi0x01234567175 = alloca <8 x float>, align 32
  %vk0x01234567177 = alloca <8 x float>, align 32
  %vi1x01234567182 = alloca <8 x float>, align 32
  %vk1x01234567184 = alloca <8 x float>, align 32
  %vi2x01234567189 = alloca <8 x float>, align 32
  %vk2x01234567191 = alloca <8 x float>, align 32
  %vi3x01234567196 = alloca <8 x float>, align 32
  %vk3x01234567198 = alloca <8 x float>, align 32
  %vi4x01234567203 = alloca <8 x float>, align 32
  %vk4x01234567205 = alloca <8 x float>, align 32
  %vi5x01234567210 = alloca <8 x float>, align 32
  %vk5x01234567212 = alloca <8 x float>, align 32
  %vi6x01234567217 = alloca <8 x float>, align 32
  %vk6x01234567219 = alloca <8 x float>, align 32
  %vi7x01234567224 = alloca <8 x float>, align 32
  %vk7x01234567226 = alloca <8 x float>, align 32
  %vi8x01234567231 = alloca <8 x float>, align 32
  %vk8x01234567233 = alloca <8 x float>, align 32
  %vacc01234567238 = alloca <8 x float>, align 32
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax) #6
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vmax, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin) #6
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call2 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1)
  store <8 x float> %call2, ptr %vmin, align 32, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #6
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #6
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #6
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #6
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx28 = getelementptr inbounds ptr, ptr %26, i64 3
  %27 = load ptr, ptr %arrayidx28, align 8, !tbaa !9
  store ptr %27, ptr %i3, align 8, !tbaa !9
  %28 = load ptr, ptr %i3, align 8, !tbaa !9
  %29 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp29 = icmp ne ptr %28, %29
  %lnot31 = xor i1 %cmp29, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %tobool36 = icmp ne i64 %conv35, 0
  br i1 %tobool36, label %if.then37, label %if.end39, !unpredictable !12

if.then37:                                        ; preds = %if.end27
  %30 = load ptr, ptr %i3, align 8, !tbaa !9
  %31 = ptrtoint ptr %30 to i64
  %32 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add38 = add i64 %31, %32
  %33 = inttoptr i64 %add38 to ptr
  store ptr %33, ptr %i3, align 8, !tbaa !9
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #6
  %34 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx40 = getelementptr inbounds ptr, ptr %34, i64 4
  %35 = load ptr, ptr %arrayidx40, align 8, !tbaa !9
  store ptr %35, ptr %i4, align 8, !tbaa !9
  %36 = load ptr, ptr %i4, align 8, !tbaa !9
  %37 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp41 = icmp ne ptr %36, %37
  %lnot43 = xor i1 %cmp41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %tobool48 = icmp ne i64 %conv47, 0
  br i1 %tobool48, label %if.then49, label %if.end51, !unpredictable !12

if.then49:                                        ; preds = %if.end39
  %38 = load ptr, ptr %i4, align 8, !tbaa !9
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add50 = add i64 %39, %40
  %41 = inttoptr i64 %add50 to ptr
  store ptr %41, ptr %i4, align 8, !tbaa !9
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #6
  %42 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx52 = getelementptr inbounds ptr, ptr %42, i64 5
  %43 = load ptr, ptr %arrayidx52, align 8, !tbaa !9
  store ptr %43, ptr %i5, align 8, !tbaa !9
  %44 = load ptr, ptr %i5, align 8, !tbaa !9
  %45 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp53 = icmp ne ptr %44, %45
  %lnot55 = xor i1 %cmp53, true
  %lnot57 = xor i1 %lnot55, true
  %lnot.ext58 = zext i1 %lnot57 to i32
  %conv59 = sext i32 %lnot.ext58 to i64
  %tobool60 = icmp ne i64 %conv59, 0
  br i1 %tobool60, label %if.then61, label %if.end63, !unpredictable !12

if.then61:                                        ; preds = %if.end51
  %46 = load ptr, ptr %i5, align 8, !tbaa !9
  %47 = ptrtoint ptr %46 to i64
  %48 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add62 = add i64 %47, %48
  %49 = inttoptr i64 %add62 to ptr
  store ptr %49, ptr %i5, align 8, !tbaa !9
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #6
  %50 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx64 = getelementptr inbounds ptr, ptr %50, i64 6
  %51 = load ptr, ptr %arrayidx64, align 8, !tbaa !9
  store ptr %51, ptr %i6, align 8, !tbaa !9
  %52 = load ptr, ptr %i6, align 8, !tbaa !9
  %53 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp65 = icmp ne ptr %52, %53
  %lnot67 = xor i1 %cmp65, true
  %lnot69 = xor i1 %lnot67, true
  %lnot.ext70 = zext i1 %lnot69 to i32
  %conv71 = sext i32 %lnot.ext70 to i64
  %tobool72 = icmp ne i64 %conv71, 0
  br i1 %tobool72, label %if.then73, label %if.end75, !unpredictable !12

if.then73:                                        ; preds = %if.end63
  %54 = load ptr, ptr %i6, align 8, !tbaa !9
  %55 = ptrtoint ptr %54 to i64
  %56 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add74 = add i64 %55, %56
  %57 = inttoptr i64 %add74 to ptr
  store ptr %57, ptr %i6, align 8, !tbaa !9
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end63
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #6
  %58 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx76 = getelementptr inbounds ptr, ptr %58, i64 7
  %59 = load ptr, ptr %arrayidx76, align 8, !tbaa !9
  store ptr %59, ptr %i7, align 8, !tbaa !9
  %60 = load ptr, ptr %i7, align 8, !tbaa !9
  %61 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp77 = icmp ne ptr %60, %61
  %lnot79 = xor i1 %cmp77, true
  %lnot81 = xor i1 %lnot79, true
  %lnot.ext82 = zext i1 %lnot81 to i32
  %conv83 = sext i32 %lnot.ext82 to i64
  %tobool84 = icmp ne i64 %conv83, 0
  br i1 %tobool84, label %if.then85, label %if.end87, !unpredictable !12

if.then85:                                        ; preds = %if.end75
  %62 = load ptr, ptr %i7, align 8, !tbaa !9
  %63 = ptrtoint ptr %62 to i64
  %64 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add86 = add i64 %63, %64
  %65 = inttoptr i64 %add86 to ptr
  store ptr %65, ptr %i7, align 8, !tbaa !9
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end75
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #6
  %66 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx88 = getelementptr inbounds ptr, ptr %66, i64 8
  %67 = load ptr, ptr %arrayidx88, align 8, !tbaa !9
  store ptr %67, ptr %i8, align 8, !tbaa !9
  %68 = load ptr, ptr %i8, align 8, !tbaa !9
  %69 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp89 = icmp ne ptr %68, %69
  %lnot91 = xor i1 %cmp89, true
  %lnot93 = xor i1 %lnot91, true
  %lnot.ext94 = zext i1 %lnot93 to i32
  %conv95 = sext i32 %lnot.ext94 to i64
  %tobool96 = icmp ne i64 %conv95, 0
  br i1 %tobool96, label %if.then97, label %if.end99, !unpredictable !12

if.then97:                                        ; preds = %if.end87
  %70 = load ptr, ptr %i8, align 8, !tbaa !9
  %71 = ptrtoint ptr %70 to i64
  %72 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add98 = add i64 %71, %72
  %73 = inttoptr i64 %add98 to ptr
  store ptr %73, ptr %i8, align 8, !tbaa !9
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end87
  %74 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %75 = ptrtoint ptr %74 to i64
  %76 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add100 = add i64 %75, %76
  %77 = inttoptr i64 %add100 to ptr
  store ptr %77, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  %78 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %78, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #6
  %79 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %79, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end99
  %80 = load i64, ptr %c, align 8, !tbaa !5
  %cmp101 = icmp uge i64 %80, 8
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p0) #6
  %81 = load ptr, ptr %w, align 8, !tbaa !9
  %call103 = call <8 x float> @_mm256_load_ps(ptr noundef %81)
  store <8 x float> %call103, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567) #6
  %82 = load ptr, ptr %i0, align 8, !tbaa !9
  %call104 = call <8 x float> @_mm256_loadu_ps(ptr noundef %82)
  store <8 x float> %call104, ptr %vi0x01234567, align 32, !tbaa !11
  %83 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %83, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x01234567) #6
  %84 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr105 = getelementptr inbounds float, ptr %84, i64 8
  %call106 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr105)
  store <8 x float> %call106, ptr %vk0x01234567, align 32, !tbaa !11
  %85 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %86 = load <8 x float>, ptr %vi0x01234567, align 32, !tbaa !11
  %87 = load <8 x float>, ptr %vk0x01234567, align 32, !tbaa !11
  %call107 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %86, <8 x float> noundef %87)
  %call108 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %85, <8 x float> noundef %call107)
  store <8 x float> %call108, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567) #6
  %88 = load ptr, ptr %i1, align 8, !tbaa !9
  %call109 = call <8 x float> @_mm256_loadu_ps(ptr noundef %88)
  store <8 x float> %call109, ptr %vi1x01234567, align 32, !tbaa !11
  %89 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr110 = getelementptr inbounds float, ptr %89, i64 8
  store ptr %add.ptr110, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x01234567) #6
  %90 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr111 = getelementptr inbounds float, ptr %90, i64 16
  %call112 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr111)
  store <8 x float> %call112, ptr %vk1x01234567, align 32, !tbaa !11
  %91 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %92 = load <8 x float>, ptr %vi1x01234567, align 32, !tbaa !11
  %93 = load <8 x float>, ptr %vk1x01234567, align 32, !tbaa !11
  %call113 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %92, <8 x float> noundef %93)
  %call114 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %91, <8 x float> noundef %call113)
  store <8 x float> %call114, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567) #6
  %94 = load ptr, ptr %i2, align 8, !tbaa !9
  %call115 = call <8 x float> @_mm256_loadu_ps(ptr noundef %94)
  store <8 x float> %call115, ptr %vi2x01234567, align 32, !tbaa !11
  %95 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr116 = getelementptr inbounds float, ptr %95, i64 8
  store ptr %add.ptr116, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x01234567) #6
  %96 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr117 = getelementptr inbounds float, ptr %96, i64 24
  %call118 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr117)
  store <8 x float> %call118, ptr %vk2x01234567, align 32, !tbaa !11
  %97 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %98 = load <8 x float>, ptr %vi2x01234567, align 32, !tbaa !11
  %99 = load <8 x float>, ptr %vk2x01234567, align 32, !tbaa !11
  %call119 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %98, <8 x float> noundef %99)
  %call120 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %97, <8 x float> noundef %call119)
  store <8 x float> %call120, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567) #6
  %100 = load ptr, ptr %i3, align 8, !tbaa !9
  %call121 = call <8 x float> @_mm256_loadu_ps(ptr noundef %100)
  store <8 x float> %call121, ptr %vi3x01234567, align 32, !tbaa !11
  %101 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr122 = getelementptr inbounds float, ptr %101, i64 8
  store ptr %add.ptr122, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x01234567) #6
  %102 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr123 = getelementptr inbounds float, ptr %102, i64 32
  %call124 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr123)
  store <8 x float> %call124, ptr %vk3x01234567, align 32, !tbaa !11
  %103 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %104 = load <8 x float>, ptr %vi3x01234567, align 32, !tbaa !11
  %105 = load <8 x float>, ptr %vk3x01234567, align 32, !tbaa !11
  %call125 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %104, <8 x float> noundef %105)
  %call126 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %103, <8 x float> noundef %call125)
  store <8 x float> %call126, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567) #6
  %106 = load ptr, ptr %i4, align 8, !tbaa !9
  %call127 = call <8 x float> @_mm256_loadu_ps(ptr noundef %106)
  store <8 x float> %call127, ptr %vi4x01234567, align 32, !tbaa !11
  %107 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr128 = getelementptr inbounds float, ptr %107, i64 8
  store ptr %add.ptr128, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x01234567) #6
  %108 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr129 = getelementptr inbounds float, ptr %108, i64 40
  %call130 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr129)
  store <8 x float> %call130, ptr %vk4x01234567, align 32, !tbaa !11
  %109 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %110 = load <8 x float>, ptr %vi4x01234567, align 32, !tbaa !11
  %111 = load <8 x float>, ptr %vk4x01234567, align 32, !tbaa !11
  %call131 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %110, <8 x float> noundef %111)
  %call132 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %109, <8 x float> noundef %call131)
  store <8 x float> %call132, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567) #6
  %112 = load ptr, ptr %i5, align 8, !tbaa !9
  %call133 = call <8 x float> @_mm256_loadu_ps(ptr noundef %112)
  store <8 x float> %call133, ptr %vi5x01234567, align 32, !tbaa !11
  %113 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr134 = getelementptr inbounds float, ptr %113, i64 8
  store ptr %add.ptr134, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x01234567) #6
  %114 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr135 = getelementptr inbounds float, ptr %114, i64 48
  %call136 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr135)
  store <8 x float> %call136, ptr %vk5x01234567, align 32, !tbaa !11
  %115 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %116 = load <8 x float>, ptr %vi5x01234567, align 32, !tbaa !11
  %117 = load <8 x float>, ptr %vk5x01234567, align 32, !tbaa !11
  %call137 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %116, <8 x float> noundef %117)
  %call138 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %115, <8 x float> noundef %call137)
  store <8 x float> %call138, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567) #6
  %118 = load ptr, ptr %i6, align 8, !tbaa !9
  %call139 = call <8 x float> @_mm256_loadu_ps(ptr noundef %118)
  store <8 x float> %call139, ptr %vi6x01234567, align 32, !tbaa !11
  %119 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr140 = getelementptr inbounds float, ptr %119, i64 8
  store ptr %add.ptr140, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x01234567) #6
  %120 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr141 = getelementptr inbounds float, ptr %120, i64 56
  %call142 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr141)
  store <8 x float> %call142, ptr %vk6x01234567, align 32, !tbaa !11
  %121 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %122 = load <8 x float>, ptr %vi6x01234567, align 32, !tbaa !11
  %123 = load <8 x float>, ptr %vk6x01234567, align 32, !tbaa !11
  %call143 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %122, <8 x float> noundef %123)
  %call144 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %121, <8 x float> noundef %call143)
  store <8 x float> %call144, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x01234567) #6
  %124 = load ptr, ptr %i7, align 8, !tbaa !9
  %call145 = call <8 x float> @_mm256_loadu_ps(ptr noundef %124)
  store <8 x float> %call145, ptr %vi7x01234567, align 32, !tbaa !11
  %125 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr146 = getelementptr inbounds float, ptr %125, i64 8
  store ptr %add.ptr146, ptr %i7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x01234567) #6
  %126 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr147 = getelementptr inbounds float, ptr %126, i64 64
  %call148 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr147)
  store <8 x float> %call148, ptr %vk7x01234567, align 32, !tbaa !11
  %127 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %128 = load <8 x float>, ptr %vi7x01234567, align 32, !tbaa !11
  %129 = load <8 x float>, ptr %vk7x01234567, align 32, !tbaa !11
  %call149 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %128, <8 x float> noundef %129)
  %call150 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %127, <8 x float> noundef %call149)
  store <8 x float> %call150, ptr %vacc01234567p0, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x01234567) #6
  %130 = load ptr, ptr %i8, align 8, !tbaa !9
  %call151 = call <8 x float> @_mm256_loadu_ps(ptr noundef %130)
  store <8 x float> %call151, ptr %vi8x01234567, align 32, !tbaa !11
  %131 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr152 = getelementptr inbounds float, ptr %131, i64 8
  store ptr %add.ptr152, ptr %i8, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x01234567) #6
  %132 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr153 = getelementptr inbounds float, ptr %132, i64 72
  %call154 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr153)
  store <8 x float> %call154, ptr %vk8x01234567, align 32, !tbaa !11
  %133 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %134 = load <8 x float>, ptr %vi8x01234567, align 32, !tbaa !11
  %135 = load <8 x float>, ptr %vk8x01234567, align 32, !tbaa !11
  %call155 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %134, <8 x float> noundef %135)
  %call156 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %133, <8 x float> noundef %call155)
  store <8 x float> %call156, ptr %vacc01234567p0, align 32, !tbaa !11
  %136 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr157 = getelementptr inbounds float, ptr %136, i64 80
  store ptr %add.ptr157, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567) #6
  %137 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !11
  %138 = load <8 x float>, ptr %vmin, align 32, !tbaa !11
  %call158 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %137, <8 x float> noundef %138)
  store <8 x float> %call158, ptr %vacc01234567, align 32, !tbaa !11
  %139 = load <8 x float>, ptr %vacc01234567, align 32, !tbaa !11
  %140 = load <8 x float>, ptr %vmax, align 32, !tbaa !11
  %call159 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %139, <8 x float> noundef %140)
  store <8 x float> %call159, ptr %vacc01234567, align 32, !tbaa !11
  %141 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %142 = load <8 x float>, ptr %vacc01234567, align 32, !tbaa !11
  call void @_mm256_storeu_ps(ptr noundef %141, <8 x float> noundef %142)
  %143 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr160 = getelementptr inbounds float, ptr %143, i64 8
  store ptr %add.ptr160, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567) #6
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p0) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %144 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %144, 8
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %145 = load i64, ptr %c, align 8, !tbaa !5
  %cmp161 = icmp ne i64 %145, 0
  %lnot163 = xor i1 %cmp161, true
  %lnot165 = xor i1 %lnot163, true
  %lnot.ext166 = zext i1 %lnot165 to i32
  %conv167 = sext i32 %lnot.ext166 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv167, i64 0)
  %tobool168 = icmp ne i64 %expval, 0
  br i1 %tobool168, label %if.then169, label %if.end257

if.then169:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmask) #6
  %146 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %mask_table = getelementptr inbounds %struct.anon.1, ptr %146, i32 0, i32 2
  %147 = load i64, ptr %c, align 8, !tbaa !5
  %sub170 = sub i64 7, %147
  %arrayidx171 = getelementptr inbounds [14 x i32], ptr %mask_table, i64 0, i64 %sub170
  %call172 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %arrayidx171)
  store <4 x i64> %call172, ptr %vmask, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p0173) #6
  %148 = load ptr, ptr %w, align 8, !tbaa !9
  %call174 = call <8 x float> @_mm256_load_ps(ptr noundef %148)
  store <8 x float> %call174, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567175) #6
  %149 = load ptr, ptr %i0, align 8, !tbaa !9
  %150 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call176 = call <8 x float> @_mm256_maskload_ps(ptr noundef %149, <4 x i64> noundef %150)
  store <8 x float> %call176, ptr %vi0x01234567175, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x01234567177) #6
  %151 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr178 = getelementptr inbounds float, ptr %151, i64 8
  %call179 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr178)
  store <8 x float> %call179, ptr %vk0x01234567177, align 32, !tbaa !11
  %152 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %153 = load <8 x float>, ptr %vi0x01234567175, align 32, !tbaa !11
  %154 = load <8 x float>, ptr %vk0x01234567177, align 32, !tbaa !11
  %call180 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %153, <8 x float> noundef %154)
  %call181 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %152, <8 x float> noundef %call180)
  store <8 x float> %call181, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567182) #6
  %155 = load ptr, ptr %i1, align 8, !tbaa !9
  %156 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call183 = call <8 x float> @_mm256_maskload_ps(ptr noundef %155, <4 x i64> noundef %156)
  store <8 x float> %call183, ptr %vi1x01234567182, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x01234567184) #6
  %157 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr185 = getelementptr inbounds float, ptr %157, i64 16
  %call186 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr185)
  store <8 x float> %call186, ptr %vk1x01234567184, align 32, !tbaa !11
  %158 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %159 = load <8 x float>, ptr %vi1x01234567182, align 32, !tbaa !11
  %160 = load <8 x float>, ptr %vk1x01234567184, align 32, !tbaa !11
  %call187 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %159, <8 x float> noundef %160)
  %call188 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %158, <8 x float> noundef %call187)
  store <8 x float> %call188, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567189) #6
  %161 = load ptr, ptr %i2, align 8, !tbaa !9
  %162 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call190 = call <8 x float> @_mm256_maskload_ps(ptr noundef %161, <4 x i64> noundef %162)
  store <8 x float> %call190, ptr %vi2x01234567189, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x01234567191) #6
  %163 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr192 = getelementptr inbounds float, ptr %163, i64 24
  %call193 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr192)
  store <8 x float> %call193, ptr %vk2x01234567191, align 32, !tbaa !11
  %164 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %165 = load <8 x float>, ptr %vi2x01234567189, align 32, !tbaa !11
  %166 = load <8 x float>, ptr %vk2x01234567191, align 32, !tbaa !11
  %call194 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %165, <8 x float> noundef %166)
  %call195 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %164, <8 x float> noundef %call194)
  store <8 x float> %call195, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567196) #6
  %167 = load ptr, ptr %i3, align 8, !tbaa !9
  %168 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call197 = call <8 x float> @_mm256_maskload_ps(ptr noundef %167, <4 x i64> noundef %168)
  store <8 x float> %call197, ptr %vi3x01234567196, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x01234567198) #6
  %169 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr199 = getelementptr inbounds float, ptr %169, i64 32
  %call200 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr199)
  store <8 x float> %call200, ptr %vk3x01234567198, align 32, !tbaa !11
  %170 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %171 = load <8 x float>, ptr %vi3x01234567196, align 32, !tbaa !11
  %172 = load <8 x float>, ptr %vk3x01234567198, align 32, !tbaa !11
  %call201 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %171, <8 x float> noundef %172)
  %call202 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %170, <8 x float> noundef %call201)
  store <8 x float> %call202, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567203) #6
  %173 = load ptr, ptr %i4, align 8, !tbaa !9
  %174 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call204 = call <8 x float> @_mm256_maskload_ps(ptr noundef %173, <4 x i64> noundef %174)
  store <8 x float> %call204, ptr %vi4x01234567203, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x01234567205) #6
  %175 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr206 = getelementptr inbounds float, ptr %175, i64 40
  %call207 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr206)
  store <8 x float> %call207, ptr %vk4x01234567205, align 32, !tbaa !11
  %176 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %177 = load <8 x float>, ptr %vi4x01234567203, align 32, !tbaa !11
  %178 = load <8 x float>, ptr %vk4x01234567205, align 32, !tbaa !11
  %call208 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %177, <8 x float> noundef %178)
  %call209 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %176, <8 x float> noundef %call208)
  store <8 x float> %call209, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567210) #6
  %179 = load ptr, ptr %i5, align 8, !tbaa !9
  %180 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call211 = call <8 x float> @_mm256_maskload_ps(ptr noundef %179, <4 x i64> noundef %180)
  store <8 x float> %call211, ptr %vi5x01234567210, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x01234567212) #6
  %181 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr213 = getelementptr inbounds float, ptr %181, i64 48
  %call214 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr213)
  store <8 x float> %call214, ptr %vk5x01234567212, align 32, !tbaa !11
  %182 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %183 = load <8 x float>, ptr %vi5x01234567210, align 32, !tbaa !11
  %184 = load <8 x float>, ptr %vk5x01234567212, align 32, !tbaa !11
  %call215 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %183, <8 x float> noundef %184)
  %call216 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %182, <8 x float> noundef %call215)
  store <8 x float> %call216, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567217) #6
  %185 = load ptr, ptr %i6, align 8, !tbaa !9
  %186 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call218 = call <8 x float> @_mm256_maskload_ps(ptr noundef %185, <4 x i64> noundef %186)
  store <8 x float> %call218, ptr %vi6x01234567217, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x01234567219) #6
  %187 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr220 = getelementptr inbounds float, ptr %187, i64 56
  %call221 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr220)
  store <8 x float> %call221, ptr %vk6x01234567219, align 32, !tbaa !11
  %188 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %189 = load <8 x float>, ptr %vi6x01234567217, align 32, !tbaa !11
  %190 = load <8 x float>, ptr %vk6x01234567219, align 32, !tbaa !11
  %call222 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %189, <8 x float> noundef %190)
  %call223 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %188, <8 x float> noundef %call222)
  store <8 x float> %call223, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x01234567224) #6
  %191 = load ptr, ptr %i7, align 8, !tbaa !9
  %192 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call225 = call <8 x float> @_mm256_maskload_ps(ptr noundef %191, <4 x i64> noundef %192)
  store <8 x float> %call225, ptr %vi7x01234567224, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x01234567226) #6
  %193 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr227 = getelementptr inbounds float, ptr %193, i64 64
  %call228 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr227)
  store <8 x float> %call228, ptr %vk7x01234567226, align 32, !tbaa !11
  %194 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %195 = load <8 x float>, ptr %vi7x01234567224, align 32, !tbaa !11
  %196 = load <8 x float>, ptr %vk7x01234567226, align 32, !tbaa !11
  %call229 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %195, <8 x float> noundef %196)
  %call230 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %194, <8 x float> noundef %call229)
  store <8 x float> %call230, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x01234567231) #6
  %197 = load ptr, ptr %i8, align 8, !tbaa !9
  %198 = load <4 x i64>, ptr %vmask, align 32, !tbaa !11
  %call232 = call <8 x float> @_mm256_maskload_ps(ptr noundef %197, <4 x i64> noundef %198)
  store <8 x float> %call232, ptr %vi8x01234567231, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x01234567233) #6
  %199 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr234 = getelementptr inbounds float, ptr %199, i64 72
  %call235 = call <8 x float> @_mm256_load_ps(ptr noundef %add.ptr234)
  store <8 x float> %call235, ptr %vk8x01234567233, align 32, !tbaa !11
  %200 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %201 = load <8 x float>, ptr %vi8x01234567231, align 32, !tbaa !11
  %202 = load <8 x float>, ptr %vk8x01234567233, align 32, !tbaa !11
  %call236 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %201, <8 x float> noundef %202)
  %call237 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %200, <8 x float> noundef %call236)
  store <8 x float> %call237, ptr %vacc01234567p0173, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567238) #6
  %203 = load <8 x float>, ptr %vacc01234567p0173, align 32, !tbaa !11
  %204 = load <8 x float>, ptr %vmin, align 32, !tbaa !11
  %call239 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %203, <8 x float> noundef %204)
  store <8 x float> %call239, ptr %vacc01234567238, align 32, !tbaa !11
  %205 = load <8 x float>, ptr %vacc01234567238, align 32, !tbaa !11
  %206 = load <8 x float>, ptr %vmax, align 32, !tbaa !11
  %call240 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %205, <8 x float> noundef %206)
  store <8 x float> %call240, ptr %vacc01234567238, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #6
  %207 = load <8 x float>, ptr %vacc01234567238, align 32, !tbaa !11
  %call241 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %207)
  store <4 x float> %call241, ptr %vacc0123, align 16, !tbaa !11
  %208 = load i64, ptr %c, align 8, !tbaa !5
  %and = and i64 %208, 4
  %tobool242 = icmp ne i64 %and, 0
  br i1 %tobool242, label %if.then243, label %if.end245

if.then243:                                       ; preds = %if.then169
  %209 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %210 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %209, <4 x float> noundef %210)
  %211 = load <8 x float>, ptr %vacc01234567238, align 32, !tbaa !11
  %extract = shufflevector <8 x float> %211, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract, ptr %vacc0123, align 16, !tbaa !11
  %212 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr244 = getelementptr inbounds float, ptr %212, i64 4
  store ptr %add.ptr244, ptr %output.addr, align 8, !tbaa !9
  br label %if.end245

if.end245:                                        ; preds = %if.then243, %if.then169
  %213 = load i64, ptr %c, align 8, !tbaa !5
  %and246 = and i64 %213, 2
  %tobool247 = icmp ne i64 %and246, 0
  br i1 %tobool247, label %if.then248, label %if.end251

if.then248:                                       ; preds = %if.end245
  %214 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %215 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %214, <4 x float> noundef %215)
  %216 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  %217 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  %call249 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %216, <4 x float> noundef %217)
  store <4 x float> %call249, ptr %vacc0123, align 16, !tbaa !11
  %218 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr250 = getelementptr inbounds float, ptr %218, i64 2
  store ptr %add.ptr250, ptr %output.addr, align 8, !tbaa !9
  br label %if.end251

if.end251:                                        ; preds = %if.then248, %if.end245
  %219 = load i64, ptr %c, align 8, !tbaa !5
  %and252 = and i64 %219, 1
  %tobool253 = icmp ne i64 %and252, 0
  br i1 %tobool253, label %if.then254, label %if.end256

if.then254:                                       ; preds = %if.end251
  %220 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %221 = load <4 x float>, ptr %vacc0123, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %220, <4 x float> noundef %221)
  %222 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr255 = getelementptr inbounds float, ptr %222, i64 1
  store ptr %add.ptr255, ptr %output.addr, align 8, !tbaa !9
  br label %if.end256

if.end256:                                        ; preds = %if.then254, %if.end251
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567238) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x01234567233) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x01234567231) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x01234567226) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x01234567224) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x01234567219) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x01234567217) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x01234567212) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x01234567210) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x01234567205) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x01234567203) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x01234567198) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x01234567196) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x01234567191) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x01234567189) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x01234567184) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567182) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x01234567177) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567175) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p0173) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmask) #6
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %for.end
  %223 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %224 = ptrtoint ptr %223 to i64
  %225 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add258 = add i64 %224, %225
  %226 = inttoptr i64 %add258 to ptr
  store ptr %226, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
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

do.cond:                                          ; preds = %if.end257
  %227 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %227, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp259 = icmp ne i64 %dec, 0
  br i1 %cmp259, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmin) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax) #6
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
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.x86.avx.maskload.ps.256(ptr, <8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
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
!15 = distinct !{!15, !14}

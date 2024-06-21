; ModuleID = 'samples/618.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f16-dwconv/gen/up8x25-minmax-fma3-acc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [8 x float], [8 x float] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f16_dwconv_minmax_ukernel_up8x25__fma3_acc2(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(64) %params) #0 {
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
  %o = alloca ptr, align 8
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
  %vacc01234567p0 = alloca <8 x float>, align 32
  %vi0x01234567 = alloca <8 x float>, align 32
  %vk0x01234567 = alloca <8 x float>, align 32
  %vi1x01234567 = alloca <8 x float>, align 32
  %vk1x01234567 = alloca <8 x float>, align 32
  %vacc01234567p1 = alloca <8 x float>, align 32
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
  %vi9x01234567 = alloca <8 x float>, align 32
  %vk9x01234567 = alloca <8 x float>, align 32
  %vi10x01234567 = alloca <8 x float>, align 32
  %vk10x01234567 = alloca <8 x float>, align 32
  %vi11x01234567 = alloca <8 x float>, align 32
  %vk11x01234567 = alloca <8 x float>, align 32
  %vi12x01234567 = alloca <8 x float>, align 32
  %vk12x01234567 = alloca <8 x float>, align 32
  %vi13x01234567 = alloca <8 x float>, align 32
  %vk13x01234567 = alloca <8 x float>, align 32
  %vi14x01234567 = alloca <8 x float>, align 32
  %vk14x01234567 = alloca <8 x float>, align 32
  %vi15x01234567 = alloca <8 x float>, align 32
  %vk15x01234567 = alloca <8 x float>, align 32
  %vi16x01234567 = alloca <8 x float>, align 32
  %vk16x01234567 = alloca <8 x float>, align 32
  %vi17x01234567 = alloca <8 x float>, align 32
  %vk17x01234567 = alloca <8 x float>, align 32
  %vi18x01234567 = alloca <8 x float>, align 32
  %vk18x01234567 = alloca <8 x float>, align 32
  %vi19x01234567 = alloca <8 x float>, align 32
  %vk19x01234567 = alloca <8 x float>, align 32
  %vi20x01234567 = alloca <8 x float>, align 32
  %vk20x01234567 = alloca <8 x float>, align 32
  %vi21x01234567 = alloca <8 x float>, align 32
  %vk21x01234567 = alloca <8 x float>, align 32
  %vi22x01234567 = alloca <8 x float>, align 32
  %vk22x01234567 = alloca <8 x float>, align 32
  %vi23x01234567 = alloca <8 x float>, align 32
  %vk23x01234567 = alloca <8 x float>, align 32
  %vi24x01234567 = alloca <8 x float>, align 32
  %vk24x01234567 = alloca <8 x float>, align 32
  %vacc01234567 = alloca <8 x float>, align 32
  %vacc01234567p0511 = alloca <8 x float>, align 32
  %vi0x01234567514 = alloca <8 x float>, align 32
  %vk0x01234567517 = alloca <8 x float>, align 32
  %vi1x01234567523 = alloca <8 x float>, align 32
  %vk1x01234567526 = alloca <8 x float>, align 32
  %vacc01234567p1530 = alloca <8 x float>, align 32
  %vi2x01234567533 = alloca <8 x float>, align 32
  %vk2x01234567536 = alloca <8 x float>, align 32
  %vi3x01234567542 = alloca <8 x float>, align 32
  %vk3x01234567545 = alloca <8 x float>, align 32
  %vi4x01234567551 = alloca <8 x float>, align 32
  %vk4x01234567554 = alloca <8 x float>, align 32
  %vi5x01234567560 = alloca <8 x float>, align 32
  %vk5x01234567563 = alloca <8 x float>, align 32
  %vi6x01234567569 = alloca <8 x float>, align 32
  %vk6x01234567572 = alloca <8 x float>, align 32
  %vi7x01234567578 = alloca <8 x float>, align 32
  %vk7x01234567581 = alloca <8 x float>, align 32
  %vi8x01234567587 = alloca <8 x float>, align 32
  %vk8x01234567590 = alloca <8 x float>, align 32
  %vi9x01234567596 = alloca <8 x float>, align 32
  %vk9x01234567599 = alloca <8 x float>, align 32
  %vi10x01234567605 = alloca <8 x float>, align 32
  %vk10x01234567608 = alloca <8 x float>, align 32
  %vi11x01234567614 = alloca <8 x float>, align 32
  %vk11x01234567617 = alloca <8 x float>, align 32
  %vi12x01234567623 = alloca <8 x float>, align 32
  %vk12x01234567626 = alloca <8 x float>, align 32
  %vi13x01234567632 = alloca <8 x float>, align 32
  %vk13x01234567635 = alloca <8 x float>, align 32
  %vi14x01234567641 = alloca <8 x float>, align 32
  %vk14x01234567644 = alloca <8 x float>, align 32
  %vi15x01234567650 = alloca <8 x float>, align 32
  %vk15x01234567653 = alloca <8 x float>, align 32
  %vi16x01234567659 = alloca <8 x float>, align 32
  %vk16x01234567662 = alloca <8 x float>, align 32
  %vi17x01234567668 = alloca <8 x float>, align 32
  %vk17x01234567671 = alloca <8 x float>, align 32
  %vi18x01234567677 = alloca <8 x float>, align 32
  %vk18x01234567680 = alloca <8 x float>, align 32
  %vi19x01234567686 = alloca <8 x float>, align 32
  %vk19x01234567689 = alloca <8 x float>, align 32
  %vi20x01234567695 = alloca <8 x float>, align 32
  %vk20x01234567698 = alloca <8 x float>, align 32
  %vi21x01234567704 = alloca <8 x float>, align 32
  %vk21x01234567707 = alloca <8 x float>, align 32
  %vi22x01234567713 = alloca <8 x float>, align 32
  %vk22x01234567716 = alloca <8 x float>, align 32
  %vi23x01234567722 = alloca <8 x float>, align 32
  %vk23x01234567725 = alloca <8 x float>, align 32
  %vi24x01234567731 = alloca <8 x float>, align 32
  %vk24x01234567734 = alloca <8 x float>, align 32
  %vacc01234567742 = alloca <8 x float>, align 32
  %vh01234567 = alloca <2 x i64>, align 16
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax) #6
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %max = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vmax, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin) #6
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %min = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call2 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1)
  store <8 x float> %call2, ptr %vmin, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #6
  %2 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store ptr %2, ptr %o, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #6
  %3 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  store ptr %4, ptr %i0, align 8, !tbaa !8
  %5 = load ptr, ptr %i0, align 8, !tbaa !8
  %6 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %5, %6
  %lnot = xor i1 %cmp, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %i0, align 8, !tbaa !8
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add = add i64 %8, %9
  %10 = inttoptr i64 %add to ptr
  store ptr %10, ptr %i0, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #6
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds ptr, ptr %11, i64 1
  %12 = load ptr, ptr %arrayidx4, align 8, !tbaa !8
  store ptr %12, ptr %i1, align 8, !tbaa !8
  %13 = load ptr, ptr %i1, align 8, !tbaa !8
  %14 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp5 = icmp ne ptr %13, %14
  %lnot7 = xor i1 %cmp5, true
  %lnot9 = xor i1 %lnot7, true
  %lnot.ext10 = zext i1 %lnot9 to i32
  %conv11 = sext i32 %lnot.ext10 to i64
  %tobool12 = icmp ne i64 %conv11, 0
  br i1 %tobool12, label %if.then13, label %if.end15, !unpredictable !11

if.then13:                                        ; preds = %if.end
  %15 = load ptr, ptr %i1, align 8, !tbaa !8
  %16 = ptrtoint ptr %15 to i64
  %17 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add14 = add i64 %16, %17
  %18 = inttoptr i64 %add14 to ptr
  store ptr %18, ptr %i1, align 8, !tbaa !8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #6
  %19 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx16 = getelementptr inbounds ptr, ptr %19, i64 2
  %20 = load ptr, ptr %arrayidx16, align 8, !tbaa !8
  store ptr %20, ptr %i2, align 8, !tbaa !8
  %21 = load ptr, ptr %i2, align 8, !tbaa !8
  %22 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp17 = icmp ne ptr %21, %22
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then25, label %if.end27, !unpredictable !11

if.then25:                                        ; preds = %if.end15
  %23 = load ptr, ptr %i2, align 8, !tbaa !8
  %24 = ptrtoint ptr %23 to i64
  %25 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add26 = add i64 %24, %25
  %26 = inttoptr i64 %add26 to ptr
  store ptr %26, ptr %i2, align 8, !tbaa !8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #6
  %27 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx28 = getelementptr inbounds ptr, ptr %27, i64 3
  %28 = load ptr, ptr %arrayidx28, align 8, !tbaa !8
  store ptr %28, ptr %i3, align 8, !tbaa !8
  %29 = load ptr, ptr %i3, align 8, !tbaa !8
  %30 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp29 = icmp ne ptr %29, %30
  %lnot31 = xor i1 %cmp29, true
  %lnot33 = xor i1 %lnot31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %tobool36 = icmp ne i64 %conv35, 0
  br i1 %tobool36, label %if.then37, label %if.end39, !unpredictable !11

if.then37:                                        ; preds = %if.end27
  %31 = load ptr, ptr %i3, align 8, !tbaa !8
  %32 = ptrtoint ptr %31 to i64
  %33 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add38 = add i64 %32, %33
  %34 = inttoptr i64 %add38 to ptr
  store ptr %34, ptr %i3, align 8, !tbaa !8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #6
  %35 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx40 = getelementptr inbounds ptr, ptr %35, i64 4
  %36 = load ptr, ptr %arrayidx40, align 8, !tbaa !8
  store ptr %36, ptr %i4, align 8, !tbaa !8
  %37 = load ptr, ptr %i4, align 8, !tbaa !8
  %38 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp41 = icmp ne ptr %37, %38
  %lnot43 = xor i1 %cmp41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %tobool48 = icmp ne i64 %conv47, 0
  br i1 %tobool48, label %if.then49, label %if.end51, !unpredictable !11

if.then49:                                        ; preds = %if.end39
  %39 = load ptr, ptr %i4, align 8, !tbaa !8
  %40 = ptrtoint ptr %39 to i64
  %41 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add50 = add i64 %40, %41
  %42 = inttoptr i64 %add50 to ptr
  store ptr %42, ptr %i4, align 8, !tbaa !8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #6
  %43 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx52 = getelementptr inbounds ptr, ptr %43, i64 5
  %44 = load ptr, ptr %arrayidx52, align 8, !tbaa !8
  store ptr %44, ptr %i5, align 8, !tbaa !8
  %45 = load ptr, ptr %i5, align 8, !tbaa !8
  %46 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp53 = icmp ne ptr %45, %46
  %lnot55 = xor i1 %cmp53, true
  %lnot57 = xor i1 %lnot55, true
  %lnot.ext58 = zext i1 %lnot57 to i32
  %conv59 = sext i32 %lnot.ext58 to i64
  %tobool60 = icmp ne i64 %conv59, 0
  br i1 %tobool60, label %if.then61, label %if.end63, !unpredictable !11

if.then61:                                        ; preds = %if.end51
  %47 = load ptr, ptr %i5, align 8, !tbaa !8
  %48 = ptrtoint ptr %47 to i64
  %49 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add62 = add i64 %48, %49
  %50 = inttoptr i64 %add62 to ptr
  store ptr %50, ptr %i5, align 8, !tbaa !8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #6
  %51 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx64 = getelementptr inbounds ptr, ptr %51, i64 6
  %52 = load ptr, ptr %arrayidx64, align 8, !tbaa !8
  store ptr %52, ptr %i6, align 8, !tbaa !8
  %53 = load ptr, ptr %i6, align 8, !tbaa !8
  %54 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp65 = icmp ne ptr %53, %54
  %lnot67 = xor i1 %cmp65, true
  %lnot69 = xor i1 %lnot67, true
  %lnot.ext70 = zext i1 %lnot69 to i32
  %conv71 = sext i32 %lnot.ext70 to i64
  %tobool72 = icmp ne i64 %conv71, 0
  br i1 %tobool72, label %if.then73, label %if.end75, !unpredictable !11

if.then73:                                        ; preds = %if.end63
  %55 = load ptr, ptr %i6, align 8, !tbaa !8
  %56 = ptrtoint ptr %55 to i64
  %57 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add74 = add i64 %56, %57
  %58 = inttoptr i64 %add74 to ptr
  store ptr %58, ptr %i6, align 8, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end63
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #6
  %59 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx76 = getelementptr inbounds ptr, ptr %59, i64 7
  %60 = load ptr, ptr %arrayidx76, align 8, !tbaa !8
  store ptr %60, ptr %i7, align 8, !tbaa !8
  %61 = load ptr, ptr %i7, align 8, !tbaa !8
  %62 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp77 = icmp ne ptr %61, %62
  %lnot79 = xor i1 %cmp77, true
  %lnot81 = xor i1 %lnot79, true
  %lnot.ext82 = zext i1 %lnot81 to i32
  %conv83 = sext i32 %lnot.ext82 to i64
  %tobool84 = icmp ne i64 %conv83, 0
  br i1 %tobool84, label %if.then85, label %if.end87, !unpredictable !11

if.then85:                                        ; preds = %if.end75
  %63 = load ptr, ptr %i7, align 8, !tbaa !8
  %64 = ptrtoint ptr %63 to i64
  %65 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add86 = add i64 %64, %65
  %66 = inttoptr i64 %add86 to ptr
  store ptr %66, ptr %i7, align 8, !tbaa !8
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end75
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #6
  %67 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx88 = getelementptr inbounds ptr, ptr %67, i64 8
  %68 = load ptr, ptr %arrayidx88, align 8, !tbaa !8
  store ptr %68, ptr %i8, align 8, !tbaa !8
  %69 = load ptr, ptr %i8, align 8, !tbaa !8
  %70 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp89 = icmp ne ptr %69, %70
  %lnot91 = xor i1 %cmp89, true
  %lnot93 = xor i1 %lnot91, true
  %lnot.ext94 = zext i1 %lnot93 to i32
  %conv95 = sext i32 %lnot.ext94 to i64
  %tobool96 = icmp ne i64 %conv95, 0
  br i1 %tobool96, label %if.then97, label %if.end99, !unpredictable !11

if.then97:                                        ; preds = %if.end87
  %71 = load ptr, ptr %i8, align 8, !tbaa !8
  %72 = ptrtoint ptr %71 to i64
  %73 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add98 = add i64 %72, %73
  %74 = inttoptr i64 %add98 to ptr
  store ptr %74, ptr %i8, align 8, !tbaa !8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end87
  call void @llvm.lifetime.start.p0(i64 8, ptr %i9) #6
  %75 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx100 = getelementptr inbounds ptr, ptr %75, i64 9
  %76 = load ptr, ptr %arrayidx100, align 8, !tbaa !8
  store ptr %76, ptr %i9, align 8, !tbaa !8
  %77 = load ptr, ptr %i9, align 8, !tbaa !8
  %78 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp101 = icmp ne ptr %77, %78
  %lnot103 = xor i1 %cmp101, true
  %lnot105 = xor i1 %lnot103, true
  %lnot.ext106 = zext i1 %lnot105 to i32
  %conv107 = sext i32 %lnot.ext106 to i64
  %tobool108 = icmp ne i64 %conv107, 0
  br i1 %tobool108, label %if.then109, label %if.end111, !unpredictable !11

if.then109:                                       ; preds = %if.end99
  %79 = load ptr, ptr %i9, align 8, !tbaa !8
  %80 = ptrtoint ptr %79 to i64
  %81 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add110 = add i64 %80, %81
  %82 = inttoptr i64 %add110 to ptr
  store ptr %82, ptr %i9, align 8, !tbaa !8
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end99
  call void @llvm.lifetime.start.p0(i64 8, ptr %i10) #6
  %83 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx112 = getelementptr inbounds ptr, ptr %83, i64 10
  %84 = load ptr, ptr %arrayidx112, align 8, !tbaa !8
  store ptr %84, ptr %i10, align 8, !tbaa !8
  %85 = load ptr, ptr %i10, align 8, !tbaa !8
  %86 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp113 = icmp ne ptr %85, %86
  %lnot115 = xor i1 %cmp113, true
  %lnot117 = xor i1 %lnot115, true
  %lnot.ext118 = zext i1 %lnot117 to i32
  %conv119 = sext i32 %lnot.ext118 to i64
  %tobool120 = icmp ne i64 %conv119, 0
  br i1 %tobool120, label %if.then121, label %if.end123, !unpredictable !11

if.then121:                                       ; preds = %if.end111
  %87 = load ptr, ptr %i10, align 8, !tbaa !8
  %88 = ptrtoint ptr %87 to i64
  %89 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add122 = add i64 %88, %89
  %90 = inttoptr i64 %add122 to ptr
  store ptr %90, ptr %i10, align 8, !tbaa !8
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end111
  call void @llvm.lifetime.start.p0(i64 8, ptr %i11) #6
  %91 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx124 = getelementptr inbounds ptr, ptr %91, i64 11
  %92 = load ptr, ptr %arrayidx124, align 8, !tbaa !8
  store ptr %92, ptr %i11, align 8, !tbaa !8
  %93 = load ptr, ptr %i11, align 8, !tbaa !8
  %94 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp125 = icmp ne ptr %93, %94
  %lnot127 = xor i1 %cmp125, true
  %lnot129 = xor i1 %lnot127, true
  %lnot.ext130 = zext i1 %lnot129 to i32
  %conv131 = sext i32 %lnot.ext130 to i64
  %tobool132 = icmp ne i64 %conv131, 0
  br i1 %tobool132, label %if.then133, label %if.end135, !unpredictable !11

if.then133:                                       ; preds = %if.end123
  %95 = load ptr, ptr %i11, align 8, !tbaa !8
  %96 = ptrtoint ptr %95 to i64
  %97 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add134 = add i64 %96, %97
  %98 = inttoptr i64 %add134 to ptr
  store ptr %98, ptr %i11, align 8, !tbaa !8
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end123
  call void @llvm.lifetime.start.p0(i64 8, ptr %i12) #6
  %99 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx136 = getelementptr inbounds ptr, ptr %99, i64 12
  %100 = load ptr, ptr %arrayidx136, align 8, !tbaa !8
  store ptr %100, ptr %i12, align 8, !tbaa !8
  %101 = load ptr, ptr %i12, align 8, !tbaa !8
  %102 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp137 = icmp ne ptr %101, %102
  %lnot139 = xor i1 %cmp137, true
  %lnot141 = xor i1 %lnot139, true
  %lnot.ext142 = zext i1 %lnot141 to i32
  %conv143 = sext i32 %lnot.ext142 to i64
  %tobool144 = icmp ne i64 %conv143, 0
  br i1 %tobool144, label %if.then145, label %if.end147, !unpredictable !11

if.then145:                                       ; preds = %if.end135
  %103 = load ptr, ptr %i12, align 8, !tbaa !8
  %104 = ptrtoint ptr %103 to i64
  %105 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add146 = add i64 %104, %105
  %106 = inttoptr i64 %add146 to ptr
  store ptr %106, ptr %i12, align 8, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.end135
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #6
  %107 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx148 = getelementptr inbounds ptr, ptr %107, i64 13
  %108 = load ptr, ptr %arrayidx148, align 8, !tbaa !8
  store ptr %108, ptr %i13, align 8, !tbaa !8
  %109 = load ptr, ptr %i13, align 8, !tbaa !8
  %110 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp149 = icmp ne ptr %109, %110
  %lnot151 = xor i1 %cmp149, true
  %lnot153 = xor i1 %lnot151, true
  %lnot.ext154 = zext i1 %lnot153 to i32
  %conv155 = sext i32 %lnot.ext154 to i64
  %tobool156 = icmp ne i64 %conv155, 0
  br i1 %tobool156, label %if.then157, label %if.end159, !unpredictable !11

if.then157:                                       ; preds = %if.end147
  %111 = load ptr, ptr %i13, align 8, !tbaa !8
  %112 = ptrtoint ptr %111 to i64
  %113 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add158 = add i64 %112, %113
  %114 = inttoptr i64 %add158 to ptr
  store ptr %114, ptr %i13, align 8, !tbaa !8
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.end147
  call void @llvm.lifetime.start.p0(i64 8, ptr %i14) #6
  %115 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx160 = getelementptr inbounds ptr, ptr %115, i64 14
  %116 = load ptr, ptr %arrayidx160, align 8, !tbaa !8
  store ptr %116, ptr %i14, align 8, !tbaa !8
  %117 = load ptr, ptr %i14, align 8, !tbaa !8
  %118 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp161 = icmp ne ptr %117, %118
  %lnot163 = xor i1 %cmp161, true
  %lnot165 = xor i1 %lnot163, true
  %lnot.ext166 = zext i1 %lnot165 to i32
  %conv167 = sext i32 %lnot.ext166 to i64
  %tobool168 = icmp ne i64 %conv167, 0
  br i1 %tobool168, label %if.then169, label %if.end171, !unpredictable !11

if.then169:                                       ; preds = %if.end159
  %119 = load ptr, ptr %i14, align 8, !tbaa !8
  %120 = ptrtoint ptr %119 to i64
  %121 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add170 = add i64 %120, %121
  %122 = inttoptr i64 %add170 to ptr
  store ptr %122, ptr %i14, align 8, !tbaa !8
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end159
  call void @llvm.lifetime.start.p0(i64 8, ptr %i15) #6
  %123 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx172 = getelementptr inbounds ptr, ptr %123, i64 15
  %124 = load ptr, ptr %arrayidx172, align 8, !tbaa !8
  store ptr %124, ptr %i15, align 8, !tbaa !8
  %125 = load ptr, ptr %i15, align 8, !tbaa !8
  %126 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp173 = icmp ne ptr %125, %126
  %lnot175 = xor i1 %cmp173, true
  %lnot177 = xor i1 %lnot175, true
  %lnot.ext178 = zext i1 %lnot177 to i32
  %conv179 = sext i32 %lnot.ext178 to i64
  %tobool180 = icmp ne i64 %conv179, 0
  br i1 %tobool180, label %if.then181, label %if.end183, !unpredictable !11

if.then181:                                       ; preds = %if.end171
  %127 = load ptr, ptr %i15, align 8, !tbaa !8
  %128 = ptrtoint ptr %127 to i64
  %129 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add182 = add i64 %128, %129
  %130 = inttoptr i64 %add182 to ptr
  store ptr %130, ptr %i15, align 8, !tbaa !8
  br label %if.end183

if.end183:                                        ; preds = %if.then181, %if.end171
  call void @llvm.lifetime.start.p0(i64 8, ptr %i16) #6
  %131 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx184 = getelementptr inbounds ptr, ptr %131, i64 16
  %132 = load ptr, ptr %arrayidx184, align 8, !tbaa !8
  store ptr %132, ptr %i16, align 8, !tbaa !8
  %133 = load ptr, ptr %i16, align 8, !tbaa !8
  %134 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp185 = icmp ne ptr %133, %134
  %lnot187 = xor i1 %cmp185, true
  %lnot189 = xor i1 %lnot187, true
  %lnot.ext190 = zext i1 %lnot189 to i32
  %conv191 = sext i32 %lnot.ext190 to i64
  %tobool192 = icmp ne i64 %conv191, 0
  br i1 %tobool192, label %if.then193, label %if.end195, !unpredictable !11

if.then193:                                       ; preds = %if.end183
  %135 = load ptr, ptr %i16, align 8, !tbaa !8
  %136 = ptrtoint ptr %135 to i64
  %137 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add194 = add i64 %136, %137
  %138 = inttoptr i64 %add194 to ptr
  store ptr %138, ptr %i16, align 8, !tbaa !8
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.end183
  call void @llvm.lifetime.start.p0(i64 8, ptr %i17) #6
  %139 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx196 = getelementptr inbounds ptr, ptr %139, i64 17
  %140 = load ptr, ptr %arrayidx196, align 8, !tbaa !8
  store ptr %140, ptr %i17, align 8, !tbaa !8
  %141 = load ptr, ptr %i17, align 8, !tbaa !8
  %142 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp197 = icmp ne ptr %141, %142
  %lnot199 = xor i1 %cmp197, true
  %lnot201 = xor i1 %lnot199, true
  %lnot.ext202 = zext i1 %lnot201 to i32
  %conv203 = sext i32 %lnot.ext202 to i64
  %tobool204 = icmp ne i64 %conv203, 0
  br i1 %tobool204, label %if.then205, label %if.end207, !unpredictable !11

if.then205:                                       ; preds = %if.end195
  %143 = load ptr, ptr %i17, align 8, !tbaa !8
  %144 = ptrtoint ptr %143 to i64
  %145 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add206 = add i64 %144, %145
  %146 = inttoptr i64 %add206 to ptr
  store ptr %146, ptr %i17, align 8, !tbaa !8
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end195
  call void @llvm.lifetime.start.p0(i64 8, ptr %i18) #6
  %147 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx208 = getelementptr inbounds ptr, ptr %147, i64 18
  %148 = load ptr, ptr %arrayidx208, align 8, !tbaa !8
  store ptr %148, ptr %i18, align 8, !tbaa !8
  %149 = load ptr, ptr %i18, align 8, !tbaa !8
  %150 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp209 = icmp ne ptr %149, %150
  %lnot211 = xor i1 %cmp209, true
  %lnot213 = xor i1 %lnot211, true
  %lnot.ext214 = zext i1 %lnot213 to i32
  %conv215 = sext i32 %lnot.ext214 to i64
  %tobool216 = icmp ne i64 %conv215, 0
  br i1 %tobool216, label %if.then217, label %if.end219, !unpredictable !11

if.then217:                                       ; preds = %if.end207
  %151 = load ptr, ptr %i18, align 8, !tbaa !8
  %152 = ptrtoint ptr %151 to i64
  %153 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add218 = add i64 %152, %153
  %154 = inttoptr i64 %add218 to ptr
  store ptr %154, ptr %i18, align 8, !tbaa !8
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %if.end207
  call void @llvm.lifetime.start.p0(i64 8, ptr %i19) #6
  %155 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx220 = getelementptr inbounds ptr, ptr %155, i64 19
  %156 = load ptr, ptr %arrayidx220, align 8, !tbaa !8
  store ptr %156, ptr %i19, align 8, !tbaa !8
  %157 = load ptr, ptr %i19, align 8, !tbaa !8
  %158 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp221 = icmp ne ptr %157, %158
  %lnot223 = xor i1 %cmp221, true
  %lnot225 = xor i1 %lnot223, true
  %lnot.ext226 = zext i1 %lnot225 to i32
  %conv227 = sext i32 %lnot.ext226 to i64
  %tobool228 = icmp ne i64 %conv227, 0
  br i1 %tobool228, label %if.then229, label %if.end231, !unpredictable !11

if.then229:                                       ; preds = %if.end219
  %159 = load ptr, ptr %i19, align 8, !tbaa !8
  %160 = ptrtoint ptr %159 to i64
  %161 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add230 = add i64 %160, %161
  %162 = inttoptr i64 %add230 to ptr
  store ptr %162, ptr %i19, align 8, !tbaa !8
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %if.end219
  call void @llvm.lifetime.start.p0(i64 8, ptr %i20) #6
  %163 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx232 = getelementptr inbounds ptr, ptr %163, i64 20
  %164 = load ptr, ptr %arrayidx232, align 8, !tbaa !8
  store ptr %164, ptr %i20, align 8, !tbaa !8
  %165 = load ptr, ptr %i20, align 8, !tbaa !8
  %166 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp233 = icmp ne ptr %165, %166
  %lnot235 = xor i1 %cmp233, true
  %lnot237 = xor i1 %lnot235, true
  %lnot.ext238 = zext i1 %lnot237 to i32
  %conv239 = sext i32 %lnot.ext238 to i64
  %tobool240 = icmp ne i64 %conv239, 0
  br i1 %tobool240, label %if.then241, label %if.end243, !unpredictable !11

if.then241:                                       ; preds = %if.end231
  %167 = load ptr, ptr %i20, align 8, !tbaa !8
  %168 = ptrtoint ptr %167 to i64
  %169 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add242 = add i64 %168, %169
  %170 = inttoptr i64 %add242 to ptr
  store ptr %170, ptr %i20, align 8, !tbaa !8
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %if.end231
  call void @llvm.lifetime.start.p0(i64 8, ptr %i21) #6
  %171 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx244 = getelementptr inbounds ptr, ptr %171, i64 21
  %172 = load ptr, ptr %arrayidx244, align 8, !tbaa !8
  store ptr %172, ptr %i21, align 8, !tbaa !8
  %173 = load ptr, ptr %i21, align 8, !tbaa !8
  %174 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp245 = icmp ne ptr %173, %174
  %lnot247 = xor i1 %cmp245, true
  %lnot249 = xor i1 %lnot247, true
  %lnot.ext250 = zext i1 %lnot249 to i32
  %conv251 = sext i32 %lnot.ext250 to i64
  %tobool252 = icmp ne i64 %conv251, 0
  br i1 %tobool252, label %if.then253, label %if.end255, !unpredictable !11

if.then253:                                       ; preds = %if.end243
  %175 = load ptr, ptr %i21, align 8, !tbaa !8
  %176 = ptrtoint ptr %175 to i64
  %177 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add254 = add i64 %176, %177
  %178 = inttoptr i64 %add254 to ptr
  store ptr %178, ptr %i21, align 8, !tbaa !8
  br label %if.end255

if.end255:                                        ; preds = %if.then253, %if.end243
  call void @llvm.lifetime.start.p0(i64 8, ptr %i22) #6
  %179 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx256 = getelementptr inbounds ptr, ptr %179, i64 22
  %180 = load ptr, ptr %arrayidx256, align 8, !tbaa !8
  store ptr %180, ptr %i22, align 8, !tbaa !8
  %181 = load ptr, ptr %i22, align 8, !tbaa !8
  %182 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp257 = icmp ne ptr %181, %182
  %lnot259 = xor i1 %cmp257, true
  %lnot261 = xor i1 %lnot259, true
  %lnot.ext262 = zext i1 %lnot261 to i32
  %conv263 = sext i32 %lnot.ext262 to i64
  %tobool264 = icmp ne i64 %conv263, 0
  br i1 %tobool264, label %if.then265, label %if.end267, !unpredictable !11

if.then265:                                       ; preds = %if.end255
  %183 = load ptr, ptr %i22, align 8, !tbaa !8
  %184 = ptrtoint ptr %183 to i64
  %185 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add266 = add i64 %184, %185
  %186 = inttoptr i64 %add266 to ptr
  store ptr %186, ptr %i22, align 8, !tbaa !8
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %if.end255
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #6
  %187 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx268 = getelementptr inbounds ptr, ptr %187, i64 23
  %188 = load ptr, ptr %arrayidx268, align 8, !tbaa !8
  store ptr %188, ptr %i23, align 8, !tbaa !8
  %189 = load ptr, ptr %i23, align 8, !tbaa !8
  %190 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp269 = icmp ne ptr %189, %190
  %lnot271 = xor i1 %cmp269, true
  %lnot273 = xor i1 %lnot271, true
  %lnot.ext274 = zext i1 %lnot273 to i32
  %conv275 = sext i32 %lnot.ext274 to i64
  %tobool276 = icmp ne i64 %conv275, 0
  br i1 %tobool276, label %if.then277, label %if.end279, !unpredictable !11

if.then277:                                       ; preds = %if.end267
  %191 = load ptr, ptr %i23, align 8, !tbaa !8
  %192 = ptrtoint ptr %191 to i64
  %193 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add278 = add i64 %192, %193
  %194 = inttoptr i64 %add278 to ptr
  store ptr %194, ptr %i23, align 8, !tbaa !8
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.end267
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #6
  %195 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %arrayidx280 = getelementptr inbounds ptr, ptr %195, i64 24
  %196 = load ptr, ptr %arrayidx280, align 8, !tbaa !8
  store ptr %196, ptr %i24, align 8, !tbaa !8
  %197 = load ptr, ptr %i24, align 8, !tbaa !8
  %198 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp281 = icmp ne ptr %197, %198
  %lnot283 = xor i1 %cmp281, true
  %lnot285 = xor i1 %lnot283, true
  %lnot.ext286 = zext i1 %lnot285 to i32
  %conv287 = sext i32 %lnot.ext286 to i64
  %tobool288 = icmp ne i64 %conv287, 0
  br i1 %tobool288, label %if.then289, label %if.end291, !unpredictable !11

if.then289:                                       ; preds = %if.end279
  %199 = load ptr, ptr %i24, align 8, !tbaa !8
  %200 = ptrtoint ptr %199 to i64
  %201 = load i64, ptr %input_offset.addr, align 8, !tbaa !4
  %add290 = add i64 %200, %201
  %202 = inttoptr i64 %add290 to ptr
  store ptr %202, ptr %i24, align 8, !tbaa !8
  br label %if.end291

if.end291:                                        ; preds = %if.then289, %if.end279
  %203 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %204 = ptrtoint ptr %203 to i64
  %205 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add292 = add i64 %204, %205
  %206 = inttoptr i64 %add292 to ptr
  store ptr %206, ptr %input.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  %207 = load i64, ptr %channels.addr, align 8, !tbaa !4
  store i64 %207, ptr %c, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #6
  %208 = load ptr, ptr %weights.addr, align 8, !tbaa !8
  store ptr %208, ptr %w, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end291
  %209 = load i64, ptr %c, align 8, !tbaa !4
  %cmp293 = icmp uge i64 %209, 8
  br i1 %cmp293, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p0) #6
  %210 = load ptr, ptr %w, align 8, !tbaa !8
  %call295 = call <2 x i64> @_mm_load_si128(ptr noundef %210)
  %call296 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call295)
  store <8 x float> %call296, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567) #6
  %211 = load ptr, ptr %i0, align 8, !tbaa !8
  %call297 = call <2 x i64> @_mm_loadu_si128(ptr noundef %211)
  %call298 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call297)
  store <8 x float> %call298, ptr %vi0x01234567, align 32, !tbaa !10
  %212 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i16, ptr %212, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x01234567) #6
  %213 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr299 = getelementptr inbounds i16, ptr %213, i64 8
  %call300 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr299)
  %call301 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call300)
  store <8 x float> %call301, ptr %vk0x01234567, align 32, !tbaa !10
  %214 = load <8 x float>, ptr %vi0x01234567, align 32, !tbaa !10
  %215 = load <8 x float>, ptr %vk0x01234567, align 32, !tbaa !10
  %216 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call302 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %214, <8 x float> noundef %215, <8 x float> noundef %216)
  %217 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call302, i32 8)
  %218 = bitcast <8 x i16> %217 to <2 x i64>
  %call303 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %218)
  store <8 x float> %call303, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567) #6
  %219 = load ptr, ptr %i1, align 8, !tbaa !8
  %call304 = call <2 x i64> @_mm_loadu_si128(ptr noundef %219)
  %call305 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call304)
  store <8 x float> %call305, ptr %vi1x01234567, align 32, !tbaa !10
  %220 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr306 = getelementptr inbounds i16, ptr %220, i64 8
  store ptr %add.ptr306, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x01234567) #6
  %221 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr307 = getelementptr inbounds i16, ptr %221, i64 16
  %call308 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr307)
  %call309 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call308)
  store <8 x float> %call309, ptr %vk1x01234567, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p1) #6
  %222 = load <8 x float>, ptr %vi1x01234567, align 32, !tbaa !10
  %223 = load <8 x float>, ptr %vk1x01234567, align 32, !tbaa !10
  %call310 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %222, <8 x float> noundef %223)
  %224 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call310, i32 8)
  %225 = bitcast <8 x i16> %224 to <2 x i64>
  %call311 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %225)
  store <8 x float> %call311, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567) #6
  %226 = load ptr, ptr %i2, align 8, !tbaa !8
  %call312 = call <2 x i64> @_mm_loadu_si128(ptr noundef %226)
  %call313 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call312)
  store <8 x float> %call313, ptr %vi2x01234567, align 32, !tbaa !10
  %227 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr314 = getelementptr inbounds i16, ptr %227, i64 8
  store ptr %add.ptr314, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x01234567) #6
  %228 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr315 = getelementptr inbounds i16, ptr %228, i64 24
  %call316 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr315)
  %call317 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call316)
  store <8 x float> %call317, ptr %vk2x01234567, align 32, !tbaa !10
  %229 = load <8 x float>, ptr %vi2x01234567, align 32, !tbaa !10
  %230 = load <8 x float>, ptr %vk2x01234567, align 32, !tbaa !10
  %231 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call318 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %229, <8 x float> noundef %230, <8 x float> noundef %231)
  %232 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call318, i32 8)
  %233 = bitcast <8 x i16> %232 to <2 x i64>
  %call319 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %233)
  store <8 x float> %call319, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567) #6
  %234 = load ptr, ptr %i3, align 8, !tbaa !8
  %call320 = call <2 x i64> @_mm_loadu_si128(ptr noundef %234)
  %call321 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call320)
  store <8 x float> %call321, ptr %vi3x01234567, align 32, !tbaa !10
  %235 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr322 = getelementptr inbounds i16, ptr %235, i64 8
  store ptr %add.ptr322, ptr %i3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x01234567) #6
  %236 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr323 = getelementptr inbounds i16, ptr %236, i64 32
  %call324 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr323)
  %call325 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call324)
  store <8 x float> %call325, ptr %vk3x01234567, align 32, !tbaa !10
  %237 = load <8 x float>, ptr %vi3x01234567, align 32, !tbaa !10
  %238 = load <8 x float>, ptr %vk3x01234567, align 32, !tbaa !10
  %239 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call326 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %237, <8 x float> noundef %238, <8 x float> noundef %239)
  %240 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call326, i32 8)
  %241 = bitcast <8 x i16> %240 to <2 x i64>
  %call327 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %241)
  store <8 x float> %call327, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567) #6
  %242 = load ptr, ptr %i4, align 8, !tbaa !8
  %call328 = call <2 x i64> @_mm_loadu_si128(ptr noundef %242)
  %call329 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call328)
  store <8 x float> %call329, ptr %vi4x01234567, align 32, !tbaa !10
  %243 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr330 = getelementptr inbounds i16, ptr %243, i64 8
  store ptr %add.ptr330, ptr %i4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x01234567) #6
  %244 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr331 = getelementptr inbounds i16, ptr %244, i64 40
  %call332 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr331)
  %call333 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call332)
  store <8 x float> %call333, ptr %vk4x01234567, align 32, !tbaa !10
  %245 = load <8 x float>, ptr %vi4x01234567, align 32, !tbaa !10
  %246 = load <8 x float>, ptr %vk4x01234567, align 32, !tbaa !10
  %247 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call334 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %245, <8 x float> noundef %246, <8 x float> noundef %247)
  %248 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call334, i32 8)
  %249 = bitcast <8 x i16> %248 to <2 x i64>
  %call335 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %249)
  store <8 x float> %call335, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567) #6
  %250 = load ptr, ptr %i5, align 8, !tbaa !8
  %call336 = call <2 x i64> @_mm_loadu_si128(ptr noundef %250)
  %call337 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call336)
  store <8 x float> %call337, ptr %vi5x01234567, align 32, !tbaa !10
  %251 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr338 = getelementptr inbounds i16, ptr %251, i64 8
  store ptr %add.ptr338, ptr %i5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x01234567) #6
  %252 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr339 = getelementptr inbounds i16, ptr %252, i64 48
  %call340 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr339)
  %call341 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call340)
  store <8 x float> %call341, ptr %vk5x01234567, align 32, !tbaa !10
  %253 = load <8 x float>, ptr %vi5x01234567, align 32, !tbaa !10
  %254 = load <8 x float>, ptr %vk5x01234567, align 32, !tbaa !10
  %255 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call342 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %253, <8 x float> noundef %254, <8 x float> noundef %255)
  %256 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call342, i32 8)
  %257 = bitcast <8 x i16> %256 to <2 x i64>
  %call343 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %257)
  store <8 x float> %call343, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567) #6
  %258 = load ptr, ptr %i6, align 8, !tbaa !8
  %call344 = call <2 x i64> @_mm_loadu_si128(ptr noundef %258)
  %call345 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call344)
  store <8 x float> %call345, ptr %vi6x01234567, align 32, !tbaa !10
  %259 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr346 = getelementptr inbounds i16, ptr %259, i64 8
  store ptr %add.ptr346, ptr %i6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x01234567) #6
  %260 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr347 = getelementptr inbounds i16, ptr %260, i64 56
  %call348 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr347)
  %call349 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call348)
  store <8 x float> %call349, ptr %vk6x01234567, align 32, !tbaa !10
  %261 = load <8 x float>, ptr %vi6x01234567, align 32, !tbaa !10
  %262 = load <8 x float>, ptr %vk6x01234567, align 32, !tbaa !10
  %263 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call350 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %261, <8 x float> noundef %262, <8 x float> noundef %263)
  %264 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call350, i32 8)
  %265 = bitcast <8 x i16> %264 to <2 x i64>
  %call351 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %265)
  store <8 x float> %call351, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x01234567) #6
  %266 = load ptr, ptr %i7, align 8, !tbaa !8
  %call352 = call <2 x i64> @_mm_loadu_si128(ptr noundef %266)
  %call353 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call352)
  store <8 x float> %call353, ptr %vi7x01234567, align 32, !tbaa !10
  %267 = load ptr, ptr %i7, align 8, !tbaa !8
  %add.ptr354 = getelementptr inbounds i16, ptr %267, i64 8
  store ptr %add.ptr354, ptr %i7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x01234567) #6
  %268 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr355 = getelementptr inbounds i16, ptr %268, i64 64
  %call356 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr355)
  %call357 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call356)
  store <8 x float> %call357, ptr %vk7x01234567, align 32, !tbaa !10
  %269 = load <8 x float>, ptr %vi7x01234567, align 32, !tbaa !10
  %270 = load <8 x float>, ptr %vk7x01234567, align 32, !tbaa !10
  %271 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call358 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %269, <8 x float> noundef %270, <8 x float> noundef %271)
  %272 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call358, i32 8)
  %273 = bitcast <8 x i16> %272 to <2 x i64>
  %call359 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %273)
  store <8 x float> %call359, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x01234567) #6
  %274 = load ptr, ptr %i8, align 8, !tbaa !8
  %call360 = call <2 x i64> @_mm_loadu_si128(ptr noundef %274)
  %call361 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call360)
  store <8 x float> %call361, ptr %vi8x01234567, align 32, !tbaa !10
  %275 = load ptr, ptr %i8, align 8, !tbaa !8
  %add.ptr362 = getelementptr inbounds i16, ptr %275, i64 8
  store ptr %add.ptr362, ptr %i8, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x01234567) #6
  %276 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr363 = getelementptr inbounds i16, ptr %276, i64 72
  %call364 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr363)
  %call365 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call364)
  store <8 x float> %call365, ptr %vk8x01234567, align 32, !tbaa !10
  %277 = load <8 x float>, ptr %vi8x01234567, align 32, !tbaa !10
  %278 = load <8 x float>, ptr %vk8x01234567, align 32, !tbaa !10
  %279 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call366 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %277, <8 x float> noundef %278, <8 x float> noundef %279)
  %280 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call366, i32 8)
  %281 = bitcast <8 x i16> %280 to <2 x i64>
  %call367 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %281)
  store <8 x float> %call367, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x01234567) #6
  %282 = load ptr, ptr %i9, align 8, !tbaa !8
  %call368 = call <2 x i64> @_mm_loadu_si128(ptr noundef %282)
  %call369 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call368)
  store <8 x float> %call369, ptr %vi9x01234567, align 32, !tbaa !10
  %283 = load ptr, ptr %i9, align 8, !tbaa !8
  %add.ptr370 = getelementptr inbounds i16, ptr %283, i64 8
  store ptr %add.ptr370, ptr %i9, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x01234567) #6
  %284 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr371 = getelementptr inbounds i16, ptr %284, i64 80
  %call372 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr371)
  %call373 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call372)
  store <8 x float> %call373, ptr %vk9x01234567, align 32, !tbaa !10
  %285 = load <8 x float>, ptr %vi9x01234567, align 32, !tbaa !10
  %286 = load <8 x float>, ptr %vk9x01234567, align 32, !tbaa !10
  %287 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call374 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %285, <8 x float> noundef %286, <8 x float> noundef %287)
  %288 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call374, i32 8)
  %289 = bitcast <8 x i16> %288 to <2 x i64>
  %call375 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %289)
  store <8 x float> %call375, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x01234567) #6
  %290 = load ptr, ptr %i10, align 8, !tbaa !8
  %call376 = call <2 x i64> @_mm_loadu_si128(ptr noundef %290)
  %call377 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call376)
  store <8 x float> %call377, ptr %vi10x01234567, align 32, !tbaa !10
  %291 = load ptr, ptr %i10, align 8, !tbaa !8
  %add.ptr378 = getelementptr inbounds i16, ptr %291, i64 8
  store ptr %add.ptr378, ptr %i10, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x01234567) #6
  %292 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr379 = getelementptr inbounds i16, ptr %292, i64 88
  %call380 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr379)
  %call381 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call380)
  store <8 x float> %call381, ptr %vk10x01234567, align 32, !tbaa !10
  %293 = load <8 x float>, ptr %vi10x01234567, align 32, !tbaa !10
  %294 = load <8 x float>, ptr %vk10x01234567, align 32, !tbaa !10
  %295 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call382 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %293, <8 x float> noundef %294, <8 x float> noundef %295)
  %296 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call382, i32 8)
  %297 = bitcast <8 x i16> %296 to <2 x i64>
  %call383 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %297)
  store <8 x float> %call383, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x01234567) #6
  %298 = load ptr, ptr %i11, align 8, !tbaa !8
  %call384 = call <2 x i64> @_mm_loadu_si128(ptr noundef %298)
  %call385 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call384)
  store <8 x float> %call385, ptr %vi11x01234567, align 32, !tbaa !10
  %299 = load ptr, ptr %i11, align 8, !tbaa !8
  %add.ptr386 = getelementptr inbounds i16, ptr %299, i64 8
  store ptr %add.ptr386, ptr %i11, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x01234567) #6
  %300 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr387 = getelementptr inbounds i16, ptr %300, i64 96
  %call388 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr387)
  %call389 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call388)
  store <8 x float> %call389, ptr %vk11x01234567, align 32, !tbaa !10
  %301 = load <8 x float>, ptr %vi11x01234567, align 32, !tbaa !10
  %302 = load <8 x float>, ptr %vk11x01234567, align 32, !tbaa !10
  %303 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call390 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %301, <8 x float> noundef %302, <8 x float> noundef %303)
  %304 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call390, i32 8)
  %305 = bitcast <8 x i16> %304 to <2 x i64>
  %call391 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %305)
  store <8 x float> %call391, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x01234567) #6
  %306 = load ptr, ptr %i12, align 8, !tbaa !8
  %call392 = call <2 x i64> @_mm_loadu_si128(ptr noundef %306)
  %call393 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call392)
  store <8 x float> %call393, ptr %vi12x01234567, align 32, !tbaa !10
  %307 = load ptr, ptr %i12, align 8, !tbaa !8
  %add.ptr394 = getelementptr inbounds i16, ptr %307, i64 8
  store ptr %add.ptr394, ptr %i12, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x01234567) #6
  %308 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr395 = getelementptr inbounds i16, ptr %308, i64 104
  %call396 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr395)
  %call397 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call396)
  store <8 x float> %call397, ptr %vk12x01234567, align 32, !tbaa !10
  %309 = load <8 x float>, ptr %vi12x01234567, align 32, !tbaa !10
  %310 = load <8 x float>, ptr %vk12x01234567, align 32, !tbaa !10
  %311 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call398 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %309, <8 x float> noundef %310, <8 x float> noundef %311)
  %312 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call398, i32 8)
  %313 = bitcast <8 x i16> %312 to <2 x i64>
  %call399 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %313)
  store <8 x float> %call399, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x01234567) #6
  %314 = load ptr, ptr %i13, align 8, !tbaa !8
  %call400 = call <2 x i64> @_mm_loadu_si128(ptr noundef %314)
  %call401 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call400)
  store <8 x float> %call401, ptr %vi13x01234567, align 32, !tbaa !10
  %315 = load ptr, ptr %i13, align 8, !tbaa !8
  %add.ptr402 = getelementptr inbounds i16, ptr %315, i64 8
  store ptr %add.ptr402, ptr %i13, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x01234567) #6
  %316 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr403 = getelementptr inbounds i16, ptr %316, i64 112
  %call404 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr403)
  %call405 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call404)
  store <8 x float> %call405, ptr %vk13x01234567, align 32, !tbaa !10
  %317 = load <8 x float>, ptr %vi13x01234567, align 32, !tbaa !10
  %318 = load <8 x float>, ptr %vk13x01234567, align 32, !tbaa !10
  %319 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call406 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %317, <8 x float> noundef %318, <8 x float> noundef %319)
  %320 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call406, i32 8)
  %321 = bitcast <8 x i16> %320 to <2 x i64>
  %call407 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %321)
  store <8 x float> %call407, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x01234567) #6
  %322 = load ptr, ptr %i14, align 8, !tbaa !8
  %call408 = call <2 x i64> @_mm_loadu_si128(ptr noundef %322)
  %call409 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call408)
  store <8 x float> %call409, ptr %vi14x01234567, align 32, !tbaa !10
  %323 = load ptr, ptr %i14, align 8, !tbaa !8
  %add.ptr410 = getelementptr inbounds i16, ptr %323, i64 8
  store ptr %add.ptr410, ptr %i14, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x01234567) #6
  %324 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr411 = getelementptr inbounds i16, ptr %324, i64 120
  %call412 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr411)
  %call413 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call412)
  store <8 x float> %call413, ptr %vk14x01234567, align 32, !tbaa !10
  %325 = load <8 x float>, ptr %vi14x01234567, align 32, !tbaa !10
  %326 = load <8 x float>, ptr %vk14x01234567, align 32, !tbaa !10
  %327 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call414 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %325, <8 x float> noundef %326, <8 x float> noundef %327)
  %328 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call414, i32 8)
  %329 = bitcast <8 x i16> %328 to <2 x i64>
  %call415 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %329)
  store <8 x float> %call415, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x01234567) #6
  %330 = load ptr, ptr %i15, align 8, !tbaa !8
  %call416 = call <2 x i64> @_mm_loadu_si128(ptr noundef %330)
  %call417 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call416)
  store <8 x float> %call417, ptr %vi15x01234567, align 32, !tbaa !10
  %331 = load ptr, ptr %i15, align 8, !tbaa !8
  %add.ptr418 = getelementptr inbounds i16, ptr %331, i64 8
  store ptr %add.ptr418, ptr %i15, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x01234567) #6
  %332 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr419 = getelementptr inbounds i16, ptr %332, i64 128
  %call420 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr419)
  %call421 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call420)
  store <8 x float> %call421, ptr %vk15x01234567, align 32, !tbaa !10
  %333 = load <8 x float>, ptr %vi15x01234567, align 32, !tbaa !10
  %334 = load <8 x float>, ptr %vk15x01234567, align 32, !tbaa !10
  %335 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call422 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %333, <8 x float> noundef %334, <8 x float> noundef %335)
  %336 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call422, i32 8)
  %337 = bitcast <8 x i16> %336 to <2 x i64>
  %call423 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %337)
  store <8 x float> %call423, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x01234567) #6
  %338 = load ptr, ptr %i16, align 8, !tbaa !8
  %call424 = call <2 x i64> @_mm_loadu_si128(ptr noundef %338)
  %call425 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call424)
  store <8 x float> %call425, ptr %vi16x01234567, align 32, !tbaa !10
  %339 = load ptr, ptr %i16, align 8, !tbaa !8
  %add.ptr426 = getelementptr inbounds i16, ptr %339, i64 8
  store ptr %add.ptr426, ptr %i16, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x01234567) #6
  %340 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr427 = getelementptr inbounds i16, ptr %340, i64 136
  %call428 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr427)
  %call429 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call428)
  store <8 x float> %call429, ptr %vk16x01234567, align 32, !tbaa !10
  %341 = load <8 x float>, ptr %vi16x01234567, align 32, !tbaa !10
  %342 = load <8 x float>, ptr %vk16x01234567, align 32, !tbaa !10
  %343 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call430 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %341, <8 x float> noundef %342, <8 x float> noundef %343)
  %344 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call430, i32 8)
  %345 = bitcast <8 x i16> %344 to <2 x i64>
  %call431 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %345)
  store <8 x float> %call431, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x01234567) #6
  %346 = load ptr, ptr %i17, align 8, !tbaa !8
  %call432 = call <2 x i64> @_mm_loadu_si128(ptr noundef %346)
  %call433 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call432)
  store <8 x float> %call433, ptr %vi17x01234567, align 32, !tbaa !10
  %347 = load ptr, ptr %i17, align 8, !tbaa !8
  %add.ptr434 = getelementptr inbounds i16, ptr %347, i64 8
  store ptr %add.ptr434, ptr %i17, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x01234567) #6
  %348 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr435 = getelementptr inbounds i16, ptr %348, i64 144
  %call436 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr435)
  %call437 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call436)
  store <8 x float> %call437, ptr %vk17x01234567, align 32, !tbaa !10
  %349 = load <8 x float>, ptr %vi17x01234567, align 32, !tbaa !10
  %350 = load <8 x float>, ptr %vk17x01234567, align 32, !tbaa !10
  %351 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call438 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %349, <8 x float> noundef %350, <8 x float> noundef %351)
  %352 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call438, i32 8)
  %353 = bitcast <8 x i16> %352 to <2 x i64>
  %call439 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %353)
  store <8 x float> %call439, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x01234567) #6
  %354 = load ptr, ptr %i18, align 8, !tbaa !8
  %call440 = call <2 x i64> @_mm_loadu_si128(ptr noundef %354)
  %call441 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call440)
  store <8 x float> %call441, ptr %vi18x01234567, align 32, !tbaa !10
  %355 = load ptr, ptr %i18, align 8, !tbaa !8
  %add.ptr442 = getelementptr inbounds i16, ptr %355, i64 8
  store ptr %add.ptr442, ptr %i18, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x01234567) #6
  %356 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr443 = getelementptr inbounds i16, ptr %356, i64 152
  %call444 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr443)
  %call445 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call444)
  store <8 x float> %call445, ptr %vk18x01234567, align 32, !tbaa !10
  %357 = load <8 x float>, ptr %vi18x01234567, align 32, !tbaa !10
  %358 = load <8 x float>, ptr %vk18x01234567, align 32, !tbaa !10
  %359 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call446 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %357, <8 x float> noundef %358, <8 x float> noundef %359)
  %360 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call446, i32 8)
  %361 = bitcast <8 x i16> %360 to <2 x i64>
  %call447 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %361)
  store <8 x float> %call447, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x01234567) #6
  %362 = load ptr, ptr %i19, align 8, !tbaa !8
  %call448 = call <2 x i64> @_mm_loadu_si128(ptr noundef %362)
  %call449 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call448)
  store <8 x float> %call449, ptr %vi19x01234567, align 32, !tbaa !10
  %363 = load ptr, ptr %i19, align 8, !tbaa !8
  %add.ptr450 = getelementptr inbounds i16, ptr %363, i64 8
  store ptr %add.ptr450, ptr %i19, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x01234567) #6
  %364 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr451 = getelementptr inbounds i16, ptr %364, i64 160
  %call452 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr451)
  %call453 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call452)
  store <8 x float> %call453, ptr %vk19x01234567, align 32, !tbaa !10
  %365 = load <8 x float>, ptr %vi19x01234567, align 32, !tbaa !10
  %366 = load <8 x float>, ptr %vk19x01234567, align 32, !tbaa !10
  %367 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call454 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %365, <8 x float> noundef %366, <8 x float> noundef %367)
  %368 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call454, i32 8)
  %369 = bitcast <8 x i16> %368 to <2 x i64>
  %call455 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %369)
  store <8 x float> %call455, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x01234567) #6
  %370 = load ptr, ptr %i20, align 8, !tbaa !8
  %call456 = call <2 x i64> @_mm_loadu_si128(ptr noundef %370)
  %call457 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call456)
  store <8 x float> %call457, ptr %vi20x01234567, align 32, !tbaa !10
  %371 = load ptr, ptr %i20, align 8, !tbaa !8
  %add.ptr458 = getelementptr inbounds i16, ptr %371, i64 8
  store ptr %add.ptr458, ptr %i20, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x01234567) #6
  %372 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr459 = getelementptr inbounds i16, ptr %372, i64 168
  %call460 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr459)
  %call461 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call460)
  store <8 x float> %call461, ptr %vk20x01234567, align 32, !tbaa !10
  %373 = load <8 x float>, ptr %vi20x01234567, align 32, !tbaa !10
  %374 = load <8 x float>, ptr %vk20x01234567, align 32, !tbaa !10
  %375 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call462 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %373, <8 x float> noundef %374, <8 x float> noundef %375)
  %376 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call462, i32 8)
  %377 = bitcast <8 x i16> %376 to <2 x i64>
  %call463 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %377)
  store <8 x float> %call463, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x01234567) #6
  %378 = load ptr, ptr %i21, align 8, !tbaa !8
  %call464 = call <2 x i64> @_mm_loadu_si128(ptr noundef %378)
  %call465 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call464)
  store <8 x float> %call465, ptr %vi21x01234567, align 32, !tbaa !10
  %379 = load ptr, ptr %i21, align 8, !tbaa !8
  %add.ptr466 = getelementptr inbounds i16, ptr %379, i64 8
  store ptr %add.ptr466, ptr %i21, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x01234567) #6
  %380 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr467 = getelementptr inbounds i16, ptr %380, i64 176
  %call468 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr467)
  %call469 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call468)
  store <8 x float> %call469, ptr %vk21x01234567, align 32, !tbaa !10
  %381 = load <8 x float>, ptr %vi21x01234567, align 32, !tbaa !10
  %382 = load <8 x float>, ptr %vk21x01234567, align 32, !tbaa !10
  %383 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call470 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %381, <8 x float> noundef %382, <8 x float> noundef %383)
  %384 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call470, i32 8)
  %385 = bitcast <8 x i16> %384 to <2 x i64>
  %call471 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %385)
  store <8 x float> %call471, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x01234567) #6
  %386 = load ptr, ptr %i22, align 8, !tbaa !8
  %call472 = call <2 x i64> @_mm_loadu_si128(ptr noundef %386)
  %call473 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call472)
  store <8 x float> %call473, ptr %vi22x01234567, align 32, !tbaa !10
  %387 = load ptr, ptr %i22, align 8, !tbaa !8
  %add.ptr474 = getelementptr inbounds i16, ptr %387, i64 8
  store ptr %add.ptr474, ptr %i22, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x01234567) #6
  %388 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr475 = getelementptr inbounds i16, ptr %388, i64 184
  %call476 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr475)
  %call477 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call476)
  store <8 x float> %call477, ptr %vk22x01234567, align 32, !tbaa !10
  %389 = load <8 x float>, ptr %vi22x01234567, align 32, !tbaa !10
  %390 = load <8 x float>, ptr %vk22x01234567, align 32, !tbaa !10
  %391 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call478 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %389, <8 x float> noundef %390, <8 x float> noundef %391)
  %392 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call478, i32 8)
  %393 = bitcast <8 x i16> %392 to <2 x i64>
  %call479 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %393)
  store <8 x float> %call479, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x01234567) #6
  %394 = load ptr, ptr %i23, align 8, !tbaa !8
  %call480 = call <2 x i64> @_mm_loadu_si128(ptr noundef %394)
  %call481 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call480)
  store <8 x float> %call481, ptr %vi23x01234567, align 32, !tbaa !10
  %395 = load ptr, ptr %i23, align 8, !tbaa !8
  %add.ptr482 = getelementptr inbounds i16, ptr %395, i64 8
  store ptr %add.ptr482, ptr %i23, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x01234567) #6
  %396 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr483 = getelementptr inbounds i16, ptr %396, i64 192
  %call484 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr483)
  %call485 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call484)
  store <8 x float> %call485, ptr %vk23x01234567, align 32, !tbaa !10
  %397 = load <8 x float>, ptr %vi23x01234567, align 32, !tbaa !10
  %398 = load <8 x float>, ptr %vk23x01234567, align 32, !tbaa !10
  %399 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call486 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %397, <8 x float> noundef %398, <8 x float> noundef %399)
  %400 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call486, i32 8)
  %401 = bitcast <8 x i16> %400 to <2 x i64>
  %call487 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %401)
  store <8 x float> %call487, ptr %vacc01234567p1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x01234567) #6
  %402 = load ptr, ptr %i24, align 8, !tbaa !8
  %call488 = call <2 x i64> @_mm_loadu_si128(ptr noundef %402)
  %call489 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call488)
  store <8 x float> %call489, ptr %vi24x01234567, align 32, !tbaa !10
  %403 = load ptr, ptr %i24, align 8, !tbaa !8
  %add.ptr490 = getelementptr inbounds i16, ptr %403, i64 8
  store ptr %add.ptr490, ptr %i24, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x01234567) #6
  %404 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr491 = getelementptr inbounds i16, ptr %404, i64 200
  %call492 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr491)
  %call493 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call492)
  store <8 x float> %call493, ptr %vk24x01234567, align 32, !tbaa !10
  %405 = load <8 x float>, ptr %vi24x01234567, align 32, !tbaa !10
  %406 = load <8 x float>, ptr %vk24x01234567, align 32, !tbaa !10
  %407 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %call494 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %405, <8 x float> noundef %406, <8 x float> noundef %407)
  %408 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call494, i32 8)
  %409 = bitcast <8 x i16> %408 to <2 x i64>
  %call495 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %409)
  store <8 x float> %call495, ptr %vacc01234567p0, align 32, !tbaa !10
  %410 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr496 = getelementptr inbounds i16, ptr %410, i64 208
  store ptr %add.ptr496, ptr %w, align 8, !tbaa !8
  %411 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %412 = load <8 x float>, ptr %vacc01234567p1, align 32, !tbaa !10
  %call497 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %411, <8 x float> noundef %412)
  %413 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call497, i32 8)
  %414 = bitcast <8 x i16> %413 to <2 x i64>
  %call498 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %414)
  store <8 x float> %call498, ptr %vacc01234567p0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567) #6
  %415 = load <8 x float>, ptr %vacc01234567p0, align 32, !tbaa !10
  %416 = load <8 x float>, ptr %vmin, align 32, !tbaa !10
  %call499 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %415, <8 x float> noundef %416)
  store <8 x float> %call499, ptr %vacc01234567, align 32, !tbaa !10
  %417 = load <8 x float>, ptr %vacc01234567, align 32, !tbaa !10
  %418 = load <8 x float>, ptr %vmax, align 32, !tbaa !10
  %call500 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %417, <8 x float> noundef %418)
  store <8 x float> %call500, ptr %vacc01234567, align 32, !tbaa !10
  %419 = load ptr, ptr %o, align 8, !tbaa !8
  %420 = load <8 x float>, ptr %vacc01234567, align 32, !tbaa !10
  %421 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %420, i32 8)
  %422 = bitcast <8 x i16> %421 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %419, <2 x i64> noundef %422)
  %423 = load ptr, ptr %o, align 8, !tbaa !8
  %add.ptr501 = getelementptr inbounds i16, ptr %423, i64 8
  store ptr %add.ptr501, ptr %o, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x01234567) #6
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p0) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %424 = load i64, ptr %c, align 8, !tbaa !4
  %sub = sub i64 %424, 8
  store i64 %sub, ptr %c, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %425 = load i64, ptr %c, align 8, !tbaa !4
  %cmp502 = icmp ne i64 %425, 0
  %lnot504 = xor i1 %cmp502, true
  %lnot506 = xor i1 %lnot504, true
  %lnot.ext507 = zext i1 %lnot506 to i32
  %conv508 = sext i32 %lnot.ext507 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv508, i64 0)
  %tobool509 = icmp ne i64 %expval, 0
  br i1 %tobool509, label %if.then510, label %if.end764

if.then510:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p0511) #6
  %426 = load ptr, ptr %w, align 8, !tbaa !8
  %call512 = call <2 x i64> @_mm_load_si128(ptr noundef %426)
  %call513 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call512)
  store <8 x float> %call513, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567514) #6
  %427 = load ptr, ptr %i0, align 8, !tbaa !8
  %call515 = call <2 x i64> @_mm_loadu_si128(ptr noundef %427)
  %call516 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call515)
  store <8 x float> %call516, ptr %vi0x01234567514, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x01234567517) #6
  %428 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr518 = getelementptr inbounds i16, ptr %428, i64 8
  %call519 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr518)
  %call520 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call519)
  store <8 x float> %call520, ptr %vk0x01234567517, align 32, !tbaa !10
  %429 = load <8 x float>, ptr %vi0x01234567514, align 32, !tbaa !10
  %430 = load <8 x float>, ptr %vk0x01234567517, align 32, !tbaa !10
  %431 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call521 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %429, <8 x float> noundef %430, <8 x float> noundef %431)
  %432 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call521, i32 8)
  %433 = bitcast <8 x i16> %432 to <2 x i64>
  %call522 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %433)
  store <8 x float> %call522, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567523) #6
  %434 = load ptr, ptr %i1, align 8, !tbaa !8
  %call524 = call <2 x i64> @_mm_loadu_si128(ptr noundef %434)
  %call525 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call524)
  store <8 x float> %call525, ptr %vi1x01234567523, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x01234567526) #6
  %435 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr527 = getelementptr inbounds i16, ptr %435, i64 16
  %call528 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr527)
  %call529 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call528)
  store <8 x float> %call529, ptr %vk1x01234567526, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567p1530) #6
  %436 = load <8 x float>, ptr %vi1x01234567523, align 32, !tbaa !10
  %437 = load <8 x float>, ptr %vk1x01234567526, align 32, !tbaa !10
  %call531 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %436, <8 x float> noundef %437)
  %438 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call531, i32 8)
  %439 = bitcast <8 x i16> %438 to <2 x i64>
  %call532 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %439)
  store <8 x float> %call532, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567533) #6
  %440 = load ptr, ptr %i2, align 8, !tbaa !8
  %call534 = call <2 x i64> @_mm_loadu_si128(ptr noundef %440)
  %call535 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call534)
  store <8 x float> %call535, ptr %vi2x01234567533, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x01234567536) #6
  %441 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr537 = getelementptr inbounds i16, ptr %441, i64 24
  %call538 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr537)
  %call539 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call538)
  store <8 x float> %call539, ptr %vk2x01234567536, align 32, !tbaa !10
  %442 = load <8 x float>, ptr %vi2x01234567533, align 32, !tbaa !10
  %443 = load <8 x float>, ptr %vk2x01234567536, align 32, !tbaa !10
  %444 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call540 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %442, <8 x float> noundef %443, <8 x float> noundef %444)
  %445 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call540, i32 8)
  %446 = bitcast <8 x i16> %445 to <2 x i64>
  %call541 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %446)
  store <8 x float> %call541, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567542) #6
  %447 = load ptr, ptr %i3, align 8, !tbaa !8
  %call543 = call <2 x i64> @_mm_loadu_si128(ptr noundef %447)
  %call544 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call543)
  store <8 x float> %call544, ptr %vi3x01234567542, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x01234567545) #6
  %448 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr546 = getelementptr inbounds i16, ptr %448, i64 32
  %call547 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr546)
  %call548 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call547)
  store <8 x float> %call548, ptr %vk3x01234567545, align 32, !tbaa !10
  %449 = load <8 x float>, ptr %vi3x01234567542, align 32, !tbaa !10
  %450 = load <8 x float>, ptr %vk3x01234567545, align 32, !tbaa !10
  %451 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call549 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %449, <8 x float> noundef %450, <8 x float> noundef %451)
  %452 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call549, i32 8)
  %453 = bitcast <8 x i16> %452 to <2 x i64>
  %call550 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %453)
  store <8 x float> %call550, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567551) #6
  %454 = load ptr, ptr %i4, align 8, !tbaa !8
  %call552 = call <2 x i64> @_mm_loadu_si128(ptr noundef %454)
  %call553 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call552)
  store <8 x float> %call553, ptr %vi4x01234567551, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x01234567554) #6
  %455 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr555 = getelementptr inbounds i16, ptr %455, i64 40
  %call556 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr555)
  %call557 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call556)
  store <8 x float> %call557, ptr %vk4x01234567554, align 32, !tbaa !10
  %456 = load <8 x float>, ptr %vi4x01234567551, align 32, !tbaa !10
  %457 = load <8 x float>, ptr %vk4x01234567554, align 32, !tbaa !10
  %458 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call558 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %456, <8 x float> noundef %457, <8 x float> noundef %458)
  %459 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call558, i32 8)
  %460 = bitcast <8 x i16> %459 to <2 x i64>
  %call559 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %460)
  store <8 x float> %call559, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567560) #6
  %461 = load ptr, ptr %i5, align 8, !tbaa !8
  %call561 = call <2 x i64> @_mm_loadu_si128(ptr noundef %461)
  %call562 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call561)
  store <8 x float> %call562, ptr %vi5x01234567560, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x01234567563) #6
  %462 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr564 = getelementptr inbounds i16, ptr %462, i64 48
  %call565 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr564)
  %call566 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call565)
  store <8 x float> %call566, ptr %vk5x01234567563, align 32, !tbaa !10
  %463 = load <8 x float>, ptr %vi5x01234567560, align 32, !tbaa !10
  %464 = load <8 x float>, ptr %vk5x01234567563, align 32, !tbaa !10
  %465 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call567 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %463, <8 x float> noundef %464, <8 x float> noundef %465)
  %466 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call567, i32 8)
  %467 = bitcast <8 x i16> %466 to <2 x i64>
  %call568 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %467)
  store <8 x float> %call568, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567569) #6
  %468 = load ptr, ptr %i6, align 8, !tbaa !8
  %call570 = call <2 x i64> @_mm_loadu_si128(ptr noundef %468)
  %call571 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call570)
  store <8 x float> %call571, ptr %vi6x01234567569, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x01234567572) #6
  %469 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr573 = getelementptr inbounds i16, ptr %469, i64 56
  %call574 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr573)
  %call575 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call574)
  store <8 x float> %call575, ptr %vk6x01234567572, align 32, !tbaa !10
  %470 = load <8 x float>, ptr %vi6x01234567569, align 32, !tbaa !10
  %471 = load <8 x float>, ptr %vk6x01234567572, align 32, !tbaa !10
  %472 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call576 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %470, <8 x float> noundef %471, <8 x float> noundef %472)
  %473 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call576, i32 8)
  %474 = bitcast <8 x i16> %473 to <2 x i64>
  %call577 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %474)
  store <8 x float> %call577, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x01234567578) #6
  %475 = load ptr, ptr %i7, align 8, !tbaa !8
  %call579 = call <2 x i64> @_mm_loadu_si128(ptr noundef %475)
  %call580 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call579)
  store <8 x float> %call580, ptr %vi7x01234567578, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x01234567581) #6
  %476 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr582 = getelementptr inbounds i16, ptr %476, i64 64
  %call583 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr582)
  %call584 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call583)
  store <8 x float> %call584, ptr %vk7x01234567581, align 32, !tbaa !10
  %477 = load <8 x float>, ptr %vi7x01234567578, align 32, !tbaa !10
  %478 = load <8 x float>, ptr %vk7x01234567581, align 32, !tbaa !10
  %479 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call585 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %477, <8 x float> noundef %478, <8 x float> noundef %479)
  %480 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call585, i32 8)
  %481 = bitcast <8 x i16> %480 to <2 x i64>
  %call586 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %481)
  store <8 x float> %call586, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x01234567587) #6
  %482 = load ptr, ptr %i8, align 8, !tbaa !8
  %call588 = call <2 x i64> @_mm_loadu_si128(ptr noundef %482)
  %call589 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call588)
  store <8 x float> %call589, ptr %vi8x01234567587, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x01234567590) #6
  %483 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr591 = getelementptr inbounds i16, ptr %483, i64 72
  %call592 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr591)
  %call593 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call592)
  store <8 x float> %call593, ptr %vk8x01234567590, align 32, !tbaa !10
  %484 = load <8 x float>, ptr %vi8x01234567587, align 32, !tbaa !10
  %485 = load <8 x float>, ptr %vk8x01234567590, align 32, !tbaa !10
  %486 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call594 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %484, <8 x float> noundef %485, <8 x float> noundef %486)
  %487 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call594, i32 8)
  %488 = bitcast <8 x i16> %487 to <2 x i64>
  %call595 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %488)
  store <8 x float> %call595, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x01234567596) #6
  %489 = load ptr, ptr %i9, align 8, !tbaa !8
  %call597 = call <2 x i64> @_mm_loadu_si128(ptr noundef %489)
  %call598 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call597)
  store <8 x float> %call598, ptr %vi9x01234567596, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x01234567599) #6
  %490 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr600 = getelementptr inbounds i16, ptr %490, i64 80
  %call601 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr600)
  %call602 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call601)
  store <8 x float> %call602, ptr %vk9x01234567599, align 32, !tbaa !10
  %491 = load <8 x float>, ptr %vi9x01234567596, align 32, !tbaa !10
  %492 = load <8 x float>, ptr %vk9x01234567599, align 32, !tbaa !10
  %493 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call603 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %491, <8 x float> noundef %492, <8 x float> noundef %493)
  %494 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call603, i32 8)
  %495 = bitcast <8 x i16> %494 to <2 x i64>
  %call604 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %495)
  store <8 x float> %call604, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x01234567605) #6
  %496 = load ptr, ptr %i10, align 8, !tbaa !8
  %call606 = call <2 x i64> @_mm_loadu_si128(ptr noundef %496)
  %call607 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call606)
  store <8 x float> %call607, ptr %vi10x01234567605, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x01234567608) #6
  %497 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr609 = getelementptr inbounds i16, ptr %497, i64 88
  %call610 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr609)
  %call611 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call610)
  store <8 x float> %call611, ptr %vk10x01234567608, align 32, !tbaa !10
  %498 = load <8 x float>, ptr %vi10x01234567605, align 32, !tbaa !10
  %499 = load <8 x float>, ptr %vk10x01234567608, align 32, !tbaa !10
  %500 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call612 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %498, <8 x float> noundef %499, <8 x float> noundef %500)
  %501 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call612, i32 8)
  %502 = bitcast <8 x i16> %501 to <2 x i64>
  %call613 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %502)
  store <8 x float> %call613, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x01234567614) #6
  %503 = load ptr, ptr %i11, align 8, !tbaa !8
  %call615 = call <2 x i64> @_mm_loadu_si128(ptr noundef %503)
  %call616 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call615)
  store <8 x float> %call616, ptr %vi11x01234567614, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x01234567617) #6
  %504 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr618 = getelementptr inbounds i16, ptr %504, i64 96
  %call619 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr618)
  %call620 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call619)
  store <8 x float> %call620, ptr %vk11x01234567617, align 32, !tbaa !10
  %505 = load <8 x float>, ptr %vi11x01234567614, align 32, !tbaa !10
  %506 = load <8 x float>, ptr %vk11x01234567617, align 32, !tbaa !10
  %507 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call621 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %505, <8 x float> noundef %506, <8 x float> noundef %507)
  %508 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call621, i32 8)
  %509 = bitcast <8 x i16> %508 to <2 x i64>
  %call622 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %509)
  store <8 x float> %call622, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x01234567623) #6
  %510 = load ptr, ptr %i12, align 8, !tbaa !8
  %call624 = call <2 x i64> @_mm_loadu_si128(ptr noundef %510)
  %call625 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call624)
  store <8 x float> %call625, ptr %vi12x01234567623, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x01234567626) #6
  %511 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr627 = getelementptr inbounds i16, ptr %511, i64 104
  %call628 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr627)
  %call629 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call628)
  store <8 x float> %call629, ptr %vk12x01234567626, align 32, !tbaa !10
  %512 = load <8 x float>, ptr %vi12x01234567623, align 32, !tbaa !10
  %513 = load <8 x float>, ptr %vk12x01234567626, align 32, !tbaa !10
  %514 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call630 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %512, <8 x float> noundef %513, <8 x float> noundef %514)
  %515 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call630, i32 8)
  %516 = bitcast <8 x i16> %515 to <2 x i64>
  %call631 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %516)
  store <8 x float> %call631, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x01234567632) #6
  %517 = load ptr, ptr %i13, align 8, !tbaa !8
  %call633 = call <2 x i64> @_mm_loadu_si128(ptr noundef %517)
  %call634 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call633)
  store <8 x float> %call634, ptr %vi13x01234567632, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x01234567635) #6
  %518 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr636 = getelementptr inbounds i16, ptr %518, i64 112
  %call637 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr636)
  %call638 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call637)
  store <8 x float> %call638, ptr %vk13x01234567635, align 32, !tbaa !10
  %519 = load <8 x float>, ptr %vi13x01234567632, align 32, !tbaa !10
  %520 = load <8 x float>, ptr %vk13x01234567635, align 32, !tbaa !10
  %521 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call639 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %519, <8 x float> noundef %520, <8 x float> noundef %521)
  %522 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call639, i32 8)
  %523 = bitcast <8 x i16> %522 to <2 x i64>
  %call640 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %523)
  store <8 x float> %call640, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x01234567641) #6
  %524 = load ptr, ptr %i14, align 8, !tbaa !8
  %call642 = call <2 x i64> @_mm_loadu_si128(ptr noundef %524)
  %call643 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call642)
  store <8 x float> %call643, ptr %vi14x01234567641, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x01234567644) #6
  %525 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr645 = getelementptr inbounds i16, ptr %525, i64 120
  %call646 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr645)
  %call647 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call646)
  store <8 x float> %call647, ptr %vk14x01234567644, align 32, !tbaa !10
  %526 = load <8 x float>, ptr %vi14x01234567641, align 32, !tbaa !10
  %527 = load <8 x float>, ptr %vk14x01234567644, align 32, !tbaa !10
  %528 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call648 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %526, <8 x float> noundef %527, <8 x float> noundef %528)
  %529 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call648, i32 8)
  %530 = bitcast <8 x i16> %529 to <2 x i64>
  %call649 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %530)
  store <8 x float> %call649, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x01234567650) #6
  %531 = load ptr, ptr %i15, align 8, !tbaa !8
  %call651 = call <2 x i64> @_mm_loadu_si128(ptr noundef %531)
  %call652 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call651)
  store <8 x float> %call652, ptr %vi15x01234567650, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x01234567653) #6
  %532 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr654 = getelementptr inbounds i16, ptr %532, i64 128
  %call655 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr654)
  %call656 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call655)
  store <8 x float> %call656, ptr %vk15x01234567653, align 32, !tbaa !10
  %533 = load <8 x float>, ptr %vi15x01234567650, align 32, !tbaa !10
  %534 = load <8 x float>, ptr %vk15x01234567653, align 32, !tbaa !10
  %535 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call657 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %533, <8 x float> noundef %534, <8 x float> noundef %535)
  %536 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call657, i32 8)
  %537 = bitcast <8 x i16> %536 to <2 x i64>
  %call658 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %537)
  store <8 x float> %call658, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x01234567659) #6
  %538 = load ptr, ptr %i16, align 8, !tbaa !8
  %call660 = call <2 x i64> @_mm_loadu_si128(ptr noundef %538)
  %call661 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call660)
  store <8 x float> %call661, ptr %vi16x01234567659, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x01234567662) #6
  %539 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr663 = getelementptr inbounds i16, ptr %539, i64 136
  %call664 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr663)
  %call665 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call664)
  store <8 x float> %call665, ptr %vk16x01234567662, align 32, !tbaa !10
  %540 = load <8 x float>, ptr %vi16x01234567659, align 32, !tbaa !10
  %541 = load <8 x float>, ptr %vk16x01234567662, align 32, !tbaa !10
  %542 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call666 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %540, <8 x float> noundef %541, <8 x float> noundef %542)
  %543 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call666, i32 8)
  %544 = bitcast <8 x i16> %543 to <2 x i64>
  %call667 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %544)
  store <8 x float> %call667, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x01234567668) #6
  %545 = load ptr, ptr %i17, align 8, !tbaa !8
  %call669 = call <2 x i64> @_mm_loadu_si128(ptr noundef %545)
  %call670 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call669)
  store <8 x float> %call670, ptr %vi17x01234567668, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x01234567671) #6
  %546 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr672 = getelementptr inbounds i16, ptr %546, i64 144
  %call673 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr672)
  %call674 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call673)
  store <8 x float> %call674, ptr %vk17x01234567671, align 32, !tbaa !10
  %547 = load <8 x float>, ptr %vi17x01234567668, align 32, !tbaa !10
  %548 = load <8 x float>, ptr %vk17x01234567671, align 32, !tbaa !10
  %549 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call675 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %547, <8 x float> noundef %548, <8 x float> noundef %549)
  %550 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call675, i32 8)
  %551 = bitcast <8 x i16> %550 to <2 x i64>
  %call676 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %551)
  store <8 x float> %call676, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x01234567677) #6
  %552 = load ptr, ptr %i18, align 8, !tbaa !8
  %call678 = call <2 x i64> @_mm_loadu_si128(ptr noundef %552)
  %call679 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call678)
  store <8 x float> %call679, ptr %vi18x01234567677, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x01234567680) #6
  %553 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr681 = getelementptr inbounds i16, ptr %553, i64 152
  %call682 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr681)
  %call683 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call682)
  store <8 x float> %call683, ptr %vk18x01234567680, align 32, !tbaa !10
  %554 = load <8 x float>, ptr %vi18x01234567677, align 32, !tbaa !10
  %555 = load <8 x float>, ptr %vk18x01234567680, align 32, !tbaa !10
  %556 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call684 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %554, <8 x float> noundef %555, <8 x float> noundef %556)
  %557 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call684, i32 8)
  %558 = bitcast <8 x i16> %557 to <2 x i64>
  %call685 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %558)
  store <8 x float> %call685, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x01234567686) #6
  %559 = load ptr, ptr %i19, align 8, !tbaa !8
  %call687 = call <2 x i64> @_mm_loadu_si128(ptr noundef %559)
  %call688 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call687)
  store <8 x float> %call688, ptr %vi19x01234567686, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x01234567689) #6
  %560 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr690 = getelementptr inbounds i16, ptr %560, i64 160
  %call691 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr690)
  %call692 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call691)
  store <8 x float> %call692, ptr %vk19x01234567689, align 32, !tbaa !10
  %561 = load <8 x float>, ptr %vi19x01234567686, align 32, !tbaa !10
  %562 = load <8 x float>, ptr %vk19x01234567689, align 32, !tbaa !10
  %563 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call693 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %561, <8 x float> noundef %562, <8 x float> noundef %563)
  %564 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call693, i32 8)
  %565 = bitcast <8 x i16> %564 to <2 x i64>
  %call694 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %565)
  store <8 x float> %call694, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x01234567695) #6
  %566 = load ptr, ptr %i20, align 8, !tbaa !8
  %call696 = call <2 x i64> @_mm_loadu_si128(ptr noundef %566)
  %call697 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call696)
  store <8 x float> %call697, ptr %vi20x01234567695, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x01234567698) #6
  %567 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr699 = getelementptr inbounds i16, ptr %567, i64 168
  %call700 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr699)
  %call701 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call700)
  store <8 x float> %call701, ptr %vk20x01234567698, align 32, !tbaa !10
  %568 = load <8 x float>, ptr %vi20x01234567695, align 32, !tbaa !10
  %569 = load <8 x float>, ptr %vk20x01234567698, align 32, !tbaa !10
  %570 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call702 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %568, <8 x float> noundef %569, <8 x float> noundef %570)
  %571 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call702, i32 8)
  %572 = bitcast <8 x i16> %571 to <2 x i64>
  %call703 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %572)
  store <8 x float> %call703, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x01234567704) #6
  %573 = load ptr, ptr %i21, align 8, !tbaa !8
  %call705 = call <2 x i64> @_mm_loadu_si128(ptr noundef %573)
  %call706 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call705)
  store <8 x float> %call706, ptr %vi21x01234567704, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x01234567707) #6
  %574 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr708 = getelementptr inbounds i16, ptr %574, i64 176
  %call709 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr708)
  %call710 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call709)
  store <8 x float> %call710, ptr %vk21x01234567707, align 32, !tbaa !10
  %575 = load <8 x float>, ptr %vi21x01234567704, align 32, !tbaa !10
  %576 = load <8 x float>, ptr %vk21x01234567707, align 32, !tbaa !10
  %577 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call711 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %575, <8 x float> noundef %576, <8 x float> noundef %577)
  %578 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call711, i32 8)
  %579 = bitcast <8 x i16> %578 to <2 x i64>
  %call712 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %579)
  store <8 x float> %call712, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x01234567713) #6
  %580 = load ptr, ptr %i22, align 8, !tbaa !8
  %call714 = call <2 x i64> @_mm_loadu_si128(ptr noundef %580)
  %call715 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call714)
  store <8 x float> %call715, ptr %vi22x01234567713, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x01234567716) #6
  %581 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr717 = getelementptr inbounds i16, ptr %581, i64 184
  %call718 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr717)
  %call719 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call718)
  store <8 x float> %call719, ptr %vk22x01234567716, align 32, !tbaa !10
  %582 = load <8 x float>, ptr %vi22x01234567713, align 32, !tbaa !10
  %583 = load <8 x float>, ptr %vk22x01234567716, align 32, !tbaa !10
  %584 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call720 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %582, <8 x float> noundef %583, <8 x float> noundef %584)
  %585 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call720, i32 8)
  %586 = bitcast <8 x i16> %585 to <2 x i64>
  %call721 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %586)
  store <8 x float> %call721, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x01234567722) #6
  %587 = load ptr, ptr %i23, align 8, !tbaa !8
  %call723 = call <2 x i64> @_mm_loadu_si128(ptr noundef %587)
  %call724 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call723)
  store <8 x float> %call724, ptr %vi23x01234567722, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x01234567725) #6
  %588 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr726 = getelementptr inbounds i16, ptr %588, i64 192
  %call727 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr726)
  %call728 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call727)
  store <8 x float> %call728, ptr %vk23x01234567725, align 32, !tbaa !10
  %589 = load <8 x float>, ptr %vi23x01234567722, align 32, !tbaa !10
  %590 = load <8 x float>, ptr %vk23x01234567725, align 32, !tbaa !10
  %591 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call729 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %589, <8 x float> noundef %590, <8 x float> noundef %591)
  %592 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call729, i32 8)
  %593 = bitcast <8 x i16> %592 to <2 x i64>
  %call730 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %593)
  store <8 x float> %call730, ptr %vacc01234567p1530, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x01234567731) #6
  %594 = load ptr, ptr %i24, align 8, !tbaa !8
  %call732 = call <2 x i64> @_mm_loadu_si128(ptr noundef %594)
  %call733 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call732)
  store <8 x float> %call733, ptr %vi24x01234567731, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x01234567734) #6
  %595 = load ptr, ptr %w, align 8, !tbaa !8
  %add.ptr735 = getelementptr inbounds i16, ptr %595, i64 200
  %call736 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr735)
  %call737 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call736)
  store <8 x float> %call737, ptr %vk24x01234567734, align 32, !tbaa !10
  %596 = load <8 x float>, ptr %vi24x01234567731, align 32, !tbaa !10
  %597 = load <8 x float>, ptr %vk24x01234567734, align 32, !tbaa !10
  %598 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %call738 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %596, <8 x float> noundef %597, <8 x float> noundef %598)
  %599 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call738, i32 8)
  %600 = bitcast <8 x i16> %599 to <2 x i64>
  %call739 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %600)
  store <8 x float> %call739, ptr %vacc01234567p0511, align 32, !tbaa !10
  %601 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %602 = load <8 x float>, ptr %vacc01234567p1530, align 32, !tbaa !10
  %call740 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %601, <8 x float> noundef %602)
  %603 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call740, i32 8)
  %604 = bitcast <8 x i16> %603 to <2 x i64>
  %call741 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %604)
  store <8 x float> %call741, ptr %vacc01234567p0511, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567742) #6
  %605 = load <8 x float>, ptr %vacc01234567p0511, align 32, !tbaa !10
  %606 = load <8 x float>, ptr %vmin, align 32, !tbaa !10
  %call743 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %605, <8 x float> noundef %606)
  store <8 x float> %call743, ptr %vacc01234567742, align 32, !tbaa !10
  %607 = load <8 x float>, ptr %vacc01234567742, align 32, !tbaa !10
  %608 = load <8 x float>, ptr %vmax, align 32, !tbaa !10
  %call744 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %607, <8 x float> noundef %608)
  store <8 x float> %call744, ptr %vacc01234567742, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh01234567) #6
  %609 = load <8 x float>, ptr %vacc01234567742, align 32, !tbaa !10
  %610 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %609, i32 8)
  %611 = bitcast <8 x i16> %610 to <2 x i64>
  store <2 x i64> %611, ptr %vh01234567, align 16, !tbaa !10
  %612 = load i64, ptr %c, align 8, !tbaa !4
  %and = and i64 %612, 4
  %tobool745 = icmp ne i64 %and, 0
  br i1 %tobool745, label %if.then746, label %if.end749

if.then746:                                       ; preds = %if.then510
  %613 = load ptr, ptr %o, align 8, !tbaa !8
  %614 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !10
  call void @_mm_storel_epi64(ptr noundef %613, <2 x i64> noundef %614)
  %615 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !10
  %616 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !10
  %call747 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %615, <2 x i64> noundef %616)
  store <2 x i64> %call747, ptr %vh01234567, align 16, !tbaa !10
  %617 = load ptr, ptr %o, align 8, !tbaa !8
  %add.ptr748 = getelementptr inbounds i16, ptr %617, i64 4
  store ptr %add.ptr748, ptr %o, align 8, !tbaa !8
  br label %if.end749

if.end749:                                        ; preds = %if.then746, %if.then510
  %618 = load i64, ptr %c, align 8, !tbaa !4
  %and750 = and i64 %618, 2
  %tobool751 = icmp ne i64 %and750, 0
  br i1 %tobool751, label %if.then752, label %if.end756

if.then752:                                       ; preds = %if.end749
  %619 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !10
  %call753 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %619)
  %620 = load ptr, ptr %o, align 8, !tbaa !8
  store i32 %call753, ptr %620, align 4, !tbaa !12
  %621 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !10
  %call754 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %621, i32 noundef 32)
  store <2 x i64> %call754, ptr %vh01234567, align 16, !tbaa !10
  %622 = load ptr, ptr %o, align 8, !tbaa !8
  %add.ptr755 = getelementptr inbounds i16, ptr %622, i64 2
  store ptr %add.ptr755, ptr %o, align 8, !tbaa !8
  br label %if.end756

if.end756:                                        ; preds = %if.then752, %if.end749
  %623 = load i64, ptr %c, align 8, !tbaa !4
  %and757 = and i64 %623, 1
  %tobool758 = icmp ne i64 %and757, 0
  br i1 %tobool758, label %if.then759, label %if.end763

if.then759:                                       ; preds = %if.end756
  %624 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !10
  %625 = bitcast <2 x i64> %624 to <8 x i16>
  %626 = extractelement <8 x i16> %625, i64 0
  %conv760 = zext i16 %626 to i32
  %conv761 = trunc i32 %conv760 to i16
  %627 = load ptr, ptr %o, align 8, !tbaa !8
  store i16 %conv761, ptr %627, align 2, !tbaa !14
  %628 = load ptr, ptr %o, align 8, !tbaa !8
  %add.ptr762 = getelementptr inbounds i16, ptr %628, i64 1
  store ptr %add.ptr762, ptr %o, align 8, !tbaa !8
  br label %if.end763

if.end763:                                        ; preds = %if.then759, %if.end756
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567742) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x01234567734) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x01234567731) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x01234567725) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x01234567722) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x01234567716) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x01234567713) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x01234567707) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x01234567704) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x01234567698) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x01234567695) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x01234567689) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x01234567686) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x01234567680) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x01234567677) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x01234567671) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x01234567668) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x01234567662) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x01234567659) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x01234567653) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x01234567650) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x01234567644) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x01234567641) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x01234567635) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x01234567632) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x01234567626) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x01234567623) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x01234567617) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x01234567614) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x01234567608) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x01234567605) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x01234567599) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x01234567596) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x01234567590) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x01234567587) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x01234567581) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x01234567578) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x01234567572) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x01234567569) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x01234567563) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x01234567560) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x01234567554) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x01234567551) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x01234567545) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x01234567542) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x01234567536) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x01234567533) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p1530) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x01234567526) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567523) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x01234567517) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567514) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567p0511) #6
  br label %if.end764

if.end764:                                        ; preds = %if.end763, %for.end
  %629 = load ptr, ptr %o, align 8, !tbaa !8
  %630 = ptrtoint ptr %629 to i64
  %631 = load i64, ptr %output_increment.addr, align 8, !tbaa !4
  %add765 = add i64 %630, %631
  %632 = inttoptr i64 %add765 to ptr
  store ptr %632, ptr %o, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i24) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i23) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i19) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i18) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i16) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i15) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i14) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i9) #6
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

do.cond:                                          ; preds = %if.end764
  %633 = load i64, ptr %output_width.addr, align 8, !tbaa !4
  %dec = add i64 %633, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !4
  %cmp766 = icmp ne i64 %dec, 0
  br i1 %cmp766, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #6
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
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !10
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = bitcast <8 x i16> %1 to <8 x half>
  %cvtph2ps = fpext <8 x half> %2 to <8 x float>
  ret <8 x float> %cvtph2ps
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !10
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !10
  ret <2 x i64> %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <8 x float>, align 32
  %__B.addr = alloca <8 x float>, align 32
  %__C.addr = alloca <8 x float>, align 32
  store <8 x float> %__A, ptr %__A.addr, align 32, !tbaa !10
  store <8 x float> %__B, ptr %__B.addr, align 32, !tbaa !10
  store <8 x float> %__C, ptr %__C.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__A.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__B.addr, align 32, !tbaa !10
  %2 = load <8 x float>, ptr %__C.addr, align 32, !tbaa !10
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !10
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !10
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_max_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !10
  %2 = call <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_min_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !10
  %2 = call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !10
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !10
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!10 = !{!6, !6, i64 0}
!11 = !{}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}

; ModuleID = 'samples/295.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-dwconv/gen/up2x25-scalar-acc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_dwconv_ukernel_up2x25__scalar_acc2(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 4 dereferenceable(56) %params) #0 {
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
  %vacc0p0 = alloca float, align 4
  %vacc1p0 = alloca float, align 4
  %vi0x0 = alloca float, align 4
  %vi0x1 = alloca float, align 4
  %vk0x0 = alloca float, align 4
  %vk0x1 = alloca float, align 4
  %vi1x0 = alloca float, align 4
  %vi1x1 = alloca float, align 4
  %vk1x0 = alloca float, align 4
  %vacc0p1 = alloca float, align 4
  %vk1x1 = alloca float, align 4
  %vacc1p1 = alloca float, align 4
  %vi2x0 = alloca float, align 4
  %vi2x1 = alloca float, align 4
  %vk2x0 = alloca float, align 4
  %vk2x1 = alloca float, align 4
  %vi3x0 = alloca float, align 4
  %vi3x1 = alloca float, align 4
  %vk3x0 = alloca float, align 4
  %vk3x1 = alloca float, align 4
  %vi4x0 = alloca float, align 4
  %vi4x1 = alloca float, align 4
  %vk4x0 = alloca float, align 4
  %vk4x1 = alloca float, align 4
  %vi5x0 = alloca float, align 4
  %vi5x1 = alloca float, align 4
  %vk5x0 = alloca float, align 4
  %vk5x1 = alloca float, align 4
  %vi6x0 = alloca float, align 4
  %vi6x1 = alloca float, align 4
  %vk6x0 = alloca float, align 4
  %vk6x1 = alloca float, align 4
  %vi7x0 = alloca float, align 4
  %vi7x1 = alloca float, align 4
  %vk7x0 = alloca float, align 4
  %vk7x1 = alloca float, align 4
  %vi8x0 = alloca float, align 4
  %vi8x1 = alloca float, align 4
  %vk8x0 = alloca float, align 4
  %vk8x1 = alloca float, align 4
  %vi9x0 = alloca float, align 4
  %vi9x1 = alloca float, align 4
  %vk9x0 = alloca float, align 4
  %vk9x1 = alloca float, align 4
  %vi10x0 = alloca float, align 4
  %vi10x1 = alloca float, align 4
  %vk10x0 = alloca float, align 4
  %vk10x1 = alloca float, align 4
  %vi11x0 = alloca float, align 4
  %vi11x1 = alloca float, align 4
  %vk11x0 = alloca float, align 4
  %vk11x1 = alloca float, align 4
  %vi12x0 = alloca float, align 4
  %vi12x1 = alloca float, align 4
  %vk12x0 = alloca float, align 4
  %vk12x1 = alloca float, align 4
  %vi13x0 = alloca float, align 4
  %vi13x1 = alloca float, align 4
  %vk13x0 = alloca float, align 4
  %vk13x1 = alloca float, align 4
  %vi14x0 = alloca float, align 4
  %vi14x1 = alloca float, align 4
  %vk14x0 = alloca float, align 4
  %vk14x1 = alloca float, align 4
  %vi15x0 = alloca float, align 4
  %vi15x1 = alloca float, align 4
  %vk15x0 = alloca float, align 4
  %vk15x1 = alloca float, align 4
  %vi16x0 = alloca float, align 4
  %vi16x1 = alloca float, align 4
  %vk16x0 = alloca float, align 4
  %vk16x1 = alloca float, align 4
  %vi17x0 = alloca float, align 4
  %vi17x1 = alloca float, align 4
  %vk17x0 = alloca float, align 4
  %vk17x1 = alloca float, align 4
  %vi18x0 = alloca float, align 4
  %vi18x1 = alloca float, align 4
  %vk18x0 = alloca float, align 4
  %vk18x1 = alloca float, align 4
  %vi19x0 = alloca float, align 4
  %vi19x1 = alloca float, align 4
  %vk19x0 = alloca float, align 4
  %vk19x1 = alloca float, align 4
  %vi20x0 = alloca float, align 4
  %vi20x1 = alloca float, align 4
  %vk20x0 = alloca float, align 4
  %vk20x1 = alloca float, align 4
  %vi21x0 = alloca float, align 4
  %vi21x1 = alloca float, align 4
  %vk21x0 = alloca float, align 4
  %vk21x1 = alloca float, align 4
  %vi22x0 = alloca float, align 4
  %vi22x1 = alloca float, align 4
  %vk22x0 = alloca float, align 4
  %vk22x1 = alloca float, align 4
  %vi23x0 = alloca float, align 4
  %vi23x1 = alloca float, align 4
  %vk23x0 = alloca float, align 4
  %vk23x1 = alloca float, align 4
  %vi24x0 = alloca float, align 4
  %vi24x1 = alloca float, align 4
  %vk24x0 = alloca float, align 4
  %vk24x1 = alloca float, align 4
  %vacc0p0477 = alloca float, align 4
  %vi0 = alloca float, align 4
  %vk0 = alloca float, align 4
  %vi1 = alloca float, align 4
  %vk1 = alloca float, align 4
  %vacc0p1483 = alloca float, align 4
  %vi2 = alloca float, align 4
  %vk2 = alloca float, align 4
  %vi3 = alloca float, align 4
  %vk3 = alloca float, align 4
  %vi4 = alloca float, align 4
  %vk4 = alloca float, align 4
  %vi5 = alloca float, align 4
  %vk5 = alloca float, align 4
  %vi6 = alloca float, align 4
  %vk6 = alloca float, align 4
  %vi7 = alloca float, align 4
  %vk7 = alloca float, align 4
  %vi8 = alloca float, align 4
  %vk8 = alloca float, align 4
  %vi9 = alloca float, align 4
  %vk9 = alloca float, align 4
  %vi10 = alloca float, align 4
  %vk10 = alloca float, align 4
  %vi11 = alloca float, align 4
  %vk11 = alloca float, align 4
  %vi12 = alloca float, align 4
  %vk12 = alloca float, align 4
  %vi13 = alloca float, align 4
  %vk13 = alloca float, align 4
  %vi14 = alloca float, align 4
  %vk14 = alloca float, align 4
  %vi15 = alloca float, align 4
  %vk15 = alloca float, align 4
  %vi16 = alloca float, align 4
  %vk16 = alloca float, align 4
  %vi17 = alloca float, align 4
  %vk17 = alloca float, align 4
  %vi18 = alloca float, align 4
  %vk18 = alloca float, align 4
  %vi19 = alloca float, align 4
  %vk19 = alloca float, align 4
  %vi20 = alloca float, align 4
  %vk20 = alloca float, align 4
  %vi21 = alloca float, align 4
  %vk21 = alloca float, align 4
  %vi22 = alloca float, align 4
  %vk22 = alloca float, align 4
  %vi23 = alloca float, align 4
  %vk23 = alloca float, align 4
  %vi24 = alloca float, align 4
  %vk24 = alloca float, align 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i9) #4
  %72 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx98 = getelementptr inbounds ptr, ptr %72, i64 9
  %73 = load ptr, ptr %arrayidx98, align 8, !tbaa !9
  store ptr %73, ptr %i9, align 8, !tbaa !9
  %74 = load ptr, ptr %i9, align 8, !tbaa !9
  %75 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp99 = icmp ne ptr %74, %75
  %lnot101 = xor i1 %cmp99, true
  %lnot103 = xor i1 %lnot101, true
  %lnot.ext104 = zext i1 %lnot103 to i32
  %conv105 = sext i32 %lnot.ext104 to i64
  %tobool106 = icmp ne i64 %conv105, 0
  br i1 %tobool106, label %if.then107, label %if.end109, !unpredictable !11

if.then107:                                       ; preds = %if.end97
  %76 = load ptr, ptr %i9, align 8, !tbaa !9
  %77 = ptrtoint ptr %76 to i64
  %78 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add108 = add i64 %77, %78
  %79 = inttoptr i64 %add108 to ptr
  store ptr %79, ptr %i9, align 8, !tbaa !9
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end97
  call void @llvm.lifetime.start.p0(i64 8, ptr %i10) #4
  %80 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx110 = getelementptr inbounds ptr, ptr %80, i64 10
  %81 = load ptr, ptr %arrayidx110, align 8, !tbaa !9
  store ptr %81, ptr %i10, align 8, !tbaa !9
  %82 = load ptr, ptr %i10, align 8, !tbaa !9
  %83 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp111 = icmp ne ptr %82, %83
  %lnot113 = xor i1 %cmp111, true
  %lnot115 = xor i1 %lnot113, true
  %lnot.ext116 = zext i1 %lnot115 to i32
  %conv117 = sext i32 %lnot.ext116 to i64
  %tobool118 = icmp ne i64 %conv117, 0
  br i1 %tobool118, label %if.then119, label %if.end121, !unpredictable !11

if.then119:                                       ; preds = %if.end109
  %84 = load ptr, ptr %i10, align 8, !tbaa !9
  %85 = ptrtoint ptr %84 to i64
  %86 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add120 = add i64 %85, %86
  %87 = inttoptr i64 %add120 to ptr
  store ptr %87, ptr %i10, align 8, !tbaa !9
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end109
  call void @llvm.lifetime.start.p0(i64 8, ptr %i11) #4
  %88 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx122 = getelementptr inbounds ptr, ptr %88, i64 11
  %89 = load ptr, ptr %arrayidx122, align 8, !tbaa !9
  store ptr %89, ptr %i11, align 8, !tbaa !9
  %90 = load ptr, ptr %i11, align 8, !tbaa !9
  %91 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp123 = icmp ne ptr %90, %91
  %lnot125 = xor i1 %cmp123, true
  %lnot127 = xor i1 %lnot125, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %tobool130 = icmp ne i64 %conv129, 0
  br i1 %tobool130, label %if.then131, label %if.end133, !unpredictable !11

if.then131:                                       ; preds = %if.end121
  %92 = load ptr, ptr %i11, align 8, !tbaa !9
  %93 = ptrtoint ptr %92 to i64
  %94 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add132 = add i64 %93, %94
  %95 = inttoptr i64 %add132 to ptr
  store ptr %95, ptr %i11, align 8, !tbaa !9
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end121
  call void @llvm.lifetime.start.p0(i64 8, ptr %i12) #4
  %96 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx134 = getelementptr inbounds ptr, ptr %96, i64 12
  %97 = load ptr, ptr %arrayidx134, align 8, !tbaa !9
  store ptr %97, ptr %i12, align 8, !tbaa !9
  %98 = load ptr, ptr %i12, align 8, !tbaa !9
  %99 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp135 = icmp ne ptr %98, %99
  %lnot137 = xor i1 %cmp135, true
  %lnot139 = xor i1 %lnot137, true
  %lnot.ext140 = zext i1 %lnot139 to i32
  %conv141 = sext i32 %lnot.ext140 to i64
  %tobool142 = icmp ne i64 %conv141, 0
  br i1 %tobool142, label %if.then143, label %if.end145, !unpredictable !11

if.then143:                                       ; preds = %if.end133
  %100 = load ptr, ptr %i12, align 8, !tbaa !9
  %101 = ptrtoint ptr %100 to i64
  %102 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add144 = add i64 %101, %102
  %103 = inttoptr i64 %add144 to ptr
  store ptr %103, ptr %i12, align 8, !tbaa !9
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end133
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #4
  %104 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx146 = getelementptr inbounds ptr, ptr %104, i64 13
  %105 = load ptr, ptr %arrayidx146, align 8, !tbaa !9
  store ptr %105, ptr %i13, align 8, !tbaa !9
  %106 = load ptr, ptr %i13, align 8, !tbaa !9
  %107 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp147 = icmp ne ptr %106, %107
  %lnot149 = xor i1 %cmp147, true
  %lnot151 = xor i1 %lnot149, true
  %lnot.ext152 = zext i1 %lnot151 to i32
  %conv153 = sext i32 %lnot.ext152 to i64
  %tobool154 = icmp ne i64 %conv153, 0
  br i1 %tobool154, label %if.then155, label %if.end157, !unpredictable !11

if.then155:                                       ; preds = %if.end145
  %108 = load ptr, ptr %i13, align 8, !tbaa !9
  %109 = ptrtoint ptr %108 to i64
  %110 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add156 = add i64 %109, %110
  %111 = inttoptr i64 %add156 to ptr
  store ptr %111, ptr %i13, align 8, !tbaa !9
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr %i14) #4
  %112 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx158 = getelementptr inbounds ptr, ptr %112, i64 14
  %113 = load ptr, ptr %arrayidx158, align 8, !tbaa !9
  store ptr %113, ptr %i14, align 8, !tbaa !9
  %114 = load ptr, ptr %i14, align 8, !tbaa !9
  %115 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp159 = icmp ne ptr %114, %115
  %lnot161 = xor i1 %cmp159, true
  %lnot163 = xor i1 %lnot161, true
  %lnot.ext164 = zext i1 %lnot163 to i32
  %conv165 = sext i32 %lnot.ext164 to i64
  %tobool166 = icmp ne i64 %conv165, 0
  br i1 %tobool166, label %if.then167, label %if.end169, !unpredictable !11

if.then167:                                       ; preds = %if.end157
  %116 = load ptr, ptr %i14, align 8, !tbaa !9
  %117 = ptrtoint ptr %116 to i64
  %118 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add168 = add i64 %117, %118
  %119 = inttoptr i64 %add168 to ptr
  store ptr %119, ptr %i14, align 8, !tbaa !9
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr %i15) #4
  %120 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx170 = getelementptr inbounds ptr, ptr %120, i64 15
  %121 = load ptr, ptr %arrayidx170, align 8, !tbaa !9
  store ptr %121, ptr %i15, align 8, !tbaa !9
  %122 = load ptr, ptr %i15, align 8, !tbaa !9
  %123 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp171 = icmp ne ptr %122, %123
  %lnot173 = xor i1 %cmp171, true
  %lnot175 = xor i1 %lnot173, true
  %lnot.ext176 = zext i1 %lnot175 to i32
  %conv177 = sext i32 %lnot.ext176 to i64
  %tobool178 = icmp ne i64 %conv177, 0
  br i1 %tobool178, label %if.then179, label %if.end181, !unpredictable !11

if.then179:                                       ; preds = %if.end169
  %124 = load ptr, ptr %i15, align 8, !tbaa !9
  %125 = ptrtoint ptr %124 to i64
  %126 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add180 = add i64 %125, %126
  %127 = inttoptr i64 %add180 to ptr
  store ptr %127, ptr %i15, align 8, !tbaa !9
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.end169
  call void @llvm.lifetime.start.p0(i64 8, ptr %i16) #4
  %128 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx182 = getelementptr inbounds ptr, ptr %128, i64 16
  %129 = load ptr, ptr %arrayidx182, align 8, !tbaa !9
  store ptr %129, ptr %i16, align 8, !tbaa !9
  %130 = load ptr, ptr %i16, align 8, !tbaa !9
  %131 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp183 = icmp ne ptr %130, %131
  %lnot185 = xor i1 %cmp183, true
  %lnot187 = xor i1 %lnot185, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  %conv189 = sext i32 %lnot.ext188 to i64
  %tobool190 = icmp ne i64 %conv189, 0
  br i1 %tobool190, label %if.then191, label %if.end193, !unpredictable !11

if.then191:                                       ; preds = %if.end181
  %132 = load ptr, ptr %i16, align 8, !tbaa !9
  %133 = ptrtoint ptr %132 to i64
  %134 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add192 = add i64 %133, %134
  %135 = inttoptr i64 %add192 to ptr
  store ptr %135, ptr %i16, align 8, !tbaa !9
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end181
  call void @llvm.lifetime.start.p0(i64 8, ptr %i17) #4
  %136 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx194 = getelementptr inbounds ptr, ptr %136, i64 17
  %137 = load ptr, ptr %arrayidx194, align 8, !tbaa !9
  store ptr %137, ptr %i17, align 8, !tbaa !9
  %138 = load ptr, ptr %i17, align 8, !tbaa !9
  %139 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp195 = icmp ne ptr %138, %139
  %lnot197 = xor i1 %cmp195, true
  %lnot199 = xor i1 %lnot197, true
  %lnot.ext200 = zext i1 %lnot199 to i32
  %conv201 = sext i32 %lnot.ext200 to i64
  %tobool202 = icmp ne i64 %conv201, 0
  br i1 %tobool202, label %if.then203, label %if.end205, !unpredictable !11

if.then203:                                       ; preds = %if.end193
  %140 = load ptr, ptr %i17, align 8, !tbaa !9
  %141 = ptrtoint ptr %140 to i64
  %142 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add204 = add i64 %141, %142
  %143 = inttoptr i64 %add204 to ptr
  store ptr %143, ptr %i17, align 8, !tbaa !9
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end193
  call void @llvm.lifetime.start.p0(i64 8, ptr %i18) #4
  %144 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx206 = getelementptr inbounds ptr, ptr %144, i64 18
  %145 = load ptr, ptr %arrayidx206, align 8, !tbaa !9
  store ptr %145, ptr %i18, align 8, !tbaa !9
  %146 = load ptr, ptr %i18, align 8, !tbaa !9
  %147 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp207 = icmp ne ptr %146, %147
  %lnot209 = xor i1 %cmp207, true
  %lnot211 = xor i1 %lnot209, true
  %lnot.ext212 = zext i1 %lnot211 to i32
  %conv213 = sext i32 %lnot.ext212 to i64
  %tobool214 = icmp ne i64 %conv213, 0
  br i1 %tobool214, label %if.then215, label %if.end217, !unpredictable !11

if.then215:                                       ; preds = %if.end205
  %148 = load ptr, ptr %i18, align 8, !tbaa !9
  %149 = ptrtoint ptr %148 to i64
  %150 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add216 = add i64 %149, %150
  %151 = inttoptr i64 %add216 to ptr
  store ptr %151, ptr %i18, align 8, !tbaa !9
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.end205
  call void @llvm.lifetime.start.p0(i64 8, ptr %i19) #4
  %152 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx218 = getelementptr inbounds ptr, ptr %152, i64 19
  %153 = load ptr, ptr %arrayidx218, align 8, !tbaa !9
  store ptr %153, ptr %i19, align 8, !tbaa !9
  %154 = load ptr, ptr %i19, align 8, !tbaa !9
  %155 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp219 = icmp ne ptr %154, %155
  %lnot221 = xor i1 %cmp219, true
  %lnot223 = xor i1 %lnot221, true
  %lnot.ext224 = zext i1 %lnot223 to i32
  %conv225 = sext i32 %lnot.ext224 to i64
  %tobool226 = icmp ne i64 %conv225, 0
  br i1 %tobool226, label %if.then227, label %if.end229, !unpredictable !11

if.then227:                                       ; preds = %if.end217
  %156 = load ptr, ptr %i19, align 8, !tbaa !9
  %157 = ptrtoint ptr %156 to i64
  %158 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add228 = add i64 %157, %158
  %159 = inttoptr i64 %add228 to ptr
  store ptr %159, ptr %i19, align 8, !tbaa !9
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %if.end217
  call void @llvm.lifetime.start.p0(i64 8, ptr %i20) #4
  %160 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx230 = getelementptr inbounds ptr, ptr %160, i64 20
  %161 = load ptr, ptr %arrayidx230, align 8, !tbaa !9
  store ptr %161, ptr %i20, align 8, !tbaa !9
  %162 = load ptr, ptr %i20, align 8, !tbaa !9
  %163 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp231 = icmp ne ptr %162, %163
  %lnot233 = xor i1 %cmp231, true
  %lnot235 = xor i1 %lnot233, true
  %lnot.ext236 = zext i1 %lnot235 to i32
  %conv237 = sext i32 %lnot.ext236 to i64
  %tobool238 = icmp ne i64 %conv237, 0
  br i1 %tobool238, label %if.then239, label %if.end241, !unpredictable !11

if.then239:                                       ; preds = %if.end229
  %164 = load ptr, ptr %i20, align 8, !tbaa !9
  %165 = ptrtoint ptr %164 to i64
  %166 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add240 = add i64 %165, %166
  %167 = inttoptr i64 %add240 to ptr
  store ptr %167, ptr %i20, align 8, !tbaa !9
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.end229
  call void @llvm.lifetime.start.p0(i64 8, ptr %i21) #4
  %168 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx242 = getelementptr inbounds ptr, ptr %168, i64 21
  %169 = load ptr, ptr %arrayidx242, align 8, !tbaa !9
  store ptr %169, ptr %i21, align 8, !tbaa !9
  %170 = load ptr, ptr %i21, align 8, !tbaa !9
  %171 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp243 = icmp ne ptr %170, %171
  %lnot245 = xor i1 %cmp243, true
  %lnot247 = xor i1 %lnot245, true
  %lnot.ext248 = zext i1 %lnot247 to i32
  %conv249 = sext i32 %lnot.ext248 to i64
  %tobool250 = icmp ne i64 %conv249, 0
  br i1 %tobool250, label %if.then251, label %if.end253, !unpredictable !11

if.then251:                                       ; preds = %if.end241
  %172 = load ptr, ptr %i21, align 8, !tbaa !9
  %173 = ptrtoint ptr %172 to i64
  %174 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add252 = add i64 %173, %174
  %175 = inttoptr i64 %add252 to ptr
  store ptr %175, ptr %i21, align 8, !tbaa !9
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end241
  call void @llvm.lifetime.start.p0(i64 8, ptr %i22) #4
  %176 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx254 = getelementptr inbounds ptr, ptr %176, i64 22
  %177 = load ptr, ptr %arrayidx254, align 8, !tbaa !9
  store ptr %177, ptr %i22, align 8, !tbaa !9
  %178 = load ptr, ptr %i22, align 8, !tbaa !9
  %179 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp255 = icmp ne ptr %178, %179
  %lnot257 = xor i1 %cmp255, true
  %lnot259 = xor i1 %lnot257, true
  %lnot.ext260 = zext i1 %lnot259 to i32
  %conv261 = sext i32 %lnot.ext260 to i64
  %tobool262 = icmp ne i64 %conv261, 0
  br i1 %tobool262, label %if.then263, label %if.end265, !unpredictable !11

if.then263:                                       ; preds = %if.end253
  %180 = load ptr, ptr %i22, align 8, !tbaa !9
  %181 = ptrtoint ptr %180 to i64
  %182 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add264 = add i64 %181, %182
  %183 = inttoptr i64 %add264 to ptr
  store ptr %183, ptr %i22, align 8, !tbaa !9
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end253
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #4
  %184 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx266 = getelementptr inbounds ptr, ptr %184, i64 23
  %185 = load ptr, ptr %arrayidx266, align 8, !tbaa !9
  store ptr %185, ptr %i23, align 8, !tbaa !9
  %186 = load ptr, ptr %i23, align 8, !tbaa !9
  %187 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp267 = icmp ne ptr %186, %187
  %lnot269 = xor i1 %cmp267, true
  %lnot271 = xor i1 %lnot269, true
  %lnot.ext272 = zext i1 %lnot271 to i32
  %conv273 = sext i32 %lnot.ext272 to i64
  %tobool274 = icmp ne i64 %conv273, 0
  br i1 %tobool274, label %if.then275, label %if.end277, !unpredictable !11

if.then275:                                       ; preds = %if.end265
  %188 = load ptr, ptr %i23, align 8, !tbaa !9
  %189 = ptrtoint ptr %188 to i64
  %190 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add276 = add i64 %189, %190
  %191 = inttoptr i64 %add276 to ptr
  store ptr %191, ptr %i23, align 8, !tbaa !9
  br label %if.end277

if.end277:                                        ; preds = %if.then275, %if.end265
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #4
  %192 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx278 = getelementptr inbounds ptr, ptr %192, i64 24
  %193 = load ptr, ptr %arrayidx278, align 8, !tbaa !9
  store ptr %193, ptr %i24, align 8, !tbaa !9
  %194 = load ptr, ptr %i24, align 8, !tbaa !9
  %195 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp279 = icmp ne ptr %194, %195
  %lnot281 = xor i1 %cmp279, true
  %lnot283 = xor i1 %lnot281, true
  %lnot.ext284 = zext i1 %lnot283 to i32
  %conv285 = sext i32 %lnot.ext284 to i64
  %tobool286 = icmp ne i64 %conv285, 0
  br i1 %tobool286, label %if.then287, label %if.end289, !unpredictable !11

if.then287:                                       ; preds = %if.end277
  %196 = load ptr, ptr %i24, align 8, !tbaa !9
  %197 = ptrtoint ptr %196 to i64
  %198 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add288 = add i64 %197, %198
  %199 = inttoptr i64 %add288 to ptr
  store ptr %199, ptr %i24, align 8, !tbaa !9
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %if.end277
  %200 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %201 = ptrtoint ptr %200 to i64
  %202 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add290 = add i64 %201, %202
  %203 = inttoptr i64 %add290 to ptr
  store ptr %203, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  %204 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %204, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #4
  %205 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %205, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end289
  %206 = load i64, ptr %c, align 8, !tbaa !5
  %cmp291 = icmp uge i64 %206, 2
  br i1 %cmp291, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0p0) #4
  %207 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx293 = getelementptr inbounds float, ptr %207, i64 0
  %208 = load float, ptr %arrayidx293, align 4, !tbaa !12
  store float %208, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1p0) #4
  %209 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx294 = getelementptr inbounds float, ptr %209, i64 1
  %210 = load float, ptr %arrayidx294, align 4, !tbaa !12
  store float %210, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x0) #4
  %211 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx295 = getelementptr inbounds float, ptr %211, i64 0
  %212 = load float, ptr %arrayidx295, align 4, !tbaa !12
  store float %212, ptr %vi0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x1) #4
  %213 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx296 = getelementptr inbounds float, ptr %213, i64 1
  %214 = load float, ptr %arrayidx296, align 4, !tbaa !12
  store float %214, ptr %vi0x1, align 4, !tbaa !12
  %215 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %215, i64 2
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0x0) #4
  %216 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx297 = getelementptr inbounds float, ptr %216, i64 2
  %217 = load float, ptr %arrayidx297, align 4, !tbaa !12
  store float %217, ptr %vk0x0, align 4, !tbaa !12
  %218 = load float, ptr %vi0x0, align 4, !tbaa !12
  %219 = load float, ptr %vk0x0, align 4, !tbaa !12
  %220 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call = call float @math_muladd_f32(float noundef %218, float noundef %219, float noundef %220)
  store float %call, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0x1) #4
  %221 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx298 = getelementptr inbounds float, ptr %221, i64 3
  %222 = load float, ptr %arrayidx298, align 4, !tbaa !12
  store float %222, ptr %vk0x1, align 4, !tbaa !12
  %223 = load float, ptr %vi0x1, align 4, !tbaa !12
  %224 = load float, ptr %vk0x1, align 4, !tbaa !12
  %225 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call299 = call float @math_muladd_f32(float noundef %223, float noundef %224, float noundef %225)
  store float %call299, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x0) #4
  %226 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx300 = getelementptr inbounds float, ptr %226, i64 0
  %227 = load float, ptr %arrayidx300, align 4, !tbaa !12
  store float %227, ptr %vi1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x1) #4
  %228 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx301 = getelementptr inbounds float, ptr %228, i64 1
  %229 = load float, ptr %arrayidx301, align 4, !tbaa !12
  store float %229, ptr %vi1x1, align 4, !tbaa !12
  %230 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr302 = getelementptr inbounds float, ptr %230, i64 2
  store ptr %add.ptr302, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1x0) #4
  %231 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx303 = getelementptr inbounds float, ptr %231, i64 4
  %232 = load float, ptr %arrayidx303, align 4, !tbaa !12
  store float %232, ptr %vk1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0p1) #4
  %233 = load float, ptr %vi1x0, align 4, !tbaa !12
  %234 = load float, ptr %vk1x0, align 4, !tbaa !12
  %mul = fmul float %233, %234
  store float %mul, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1x1) #4
  %235 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx304 = getelementptr inbounds float, ptr %235, i64 5
  %236 = load float, ptr %arrayidx304, align 4, !tbaa !12
  store float %236, ptr %vk1x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1p1) #4
  %237 = load float, ptr %vi1x1, align 4, !tbaa !12
  %238 = load float, ptr %vk1x1, align 4, !tbaa !12
  %mul305 = fmul float %237, %238
  store float %mul305, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x0) #4
  %239 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx306 = getelementptr inbounds float, ptr %239, i64 0
  %240 = load float, ptr %arrayidx306, align 4, !tbaa !12
  store float %240, ptr %vi2x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x1) #4
  %241 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx307 = getelementptr inbounds float, ptr %241, i64 1
  %242 = load float, ptr %arrayidx307, align 4, !tbaa !12
  store float %242, ptr %vi2x1, align 4, !tbaa !12
  %243 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr308 = getelementptr inbounds float, ptr %243, i64 2
  store ptr %add.ptr308, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2x0) #4
  %244 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx309 = getelementptr inbounds float, ptr %244, i64 6
  %245 = load float, ptr %arrayidx309, align 4, !tbaa !12
  store float %245, ptr %vk2x0, align 4, !tbaa !12
  %246 = load float, ptr %vi2x0, align 4, !tbaa !12
  %247 = load float, ptr %vk2x0, align 4, !tbaa !12
  %248 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call310 = call float @math_muladd_f32(float noundef %246, float noundef %247, float noundef %248)
  store float %call310, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2x1) #4
  %249 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx311 = getelementptr inbounds float, ptr %249, i64 7
  %250 = load float, ptr %arrayidx311, align 4, !tbaa !12
  store float %250, ptr %vk2x1, align 4, !tbaa !12
  %251 = load float, ptr %vi2x1, align 4, !tbaa !12
  %252 = load float, ptr %vk2x1, align 4, !tbaa !12
  %253 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call312 = call float @math_muladd_f32(float noundef %251, float noundef %252, float noundef %253)
  store float %call312, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x0) #4
  %254 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx313 = getelementptr inbounds float, ptr %254, i64 0
  %255 = load float, ptr %arrayidx313, align 4, !tbaa !12
  store float %255, ptr %vi3x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x1) #4
  %256 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx314 = getelementptr inbounds float, ptr %256, i64 1
  %257 = load float, ptr %arrayidx314, align 4, !tbaa !12
  store float %257, ptr %vi3x1, align 4, !tbaa !12
  %258 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr315 = getelementptr inbounds float, ptr %258, i64 2
  store ptr %add.ptr315, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3x0) #4
  %259 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx316 = getelementptr inbounds float, ptr %259, i64 8
  %260 = load float, ptr %arrayidx316, align 4, !tbaa !12
  store float %260, ptr %vk3x0, align 4, !tbaa !12
  %261 = load float, ptr %vi3x0, align 4, !tbaa !12
  %262 = load float, ptr %vk3x0, align 4, !tbaa !12
  %263 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call317 = call float @math_muladd_f32(float noundef %261, float noundef %262, float noundef %263)
  store float %call317, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3x1) #4
  %264 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx318 = getelementptr inbounds float, ptr %264, i64 9
  %265 = load float, ptr %arrayidx318, align 4, !tbaa !12
  store float %265, ptr %vk3x1, align 4, !tbaa !12
  %266 = load float, ptr %vi3x1, align 4, !tbaa !12
  %267 = load float, ptr %vk3x1, align 4, !tbaa !12
  %268 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call319 = call float @math_muladd_f32(float noundef %266, float noundef %267, float noundef %268)
  store float %call319, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x0) #4
  %269 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx320 = getelementptr inbounds float, ptr %269, i64 0
  %270 = load float, ptr %arrayidx320, align 4, !tbaa !12
  store float %270, ptr %vi4x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x1) #4
  %271 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx321 = getelementptr inbounds float, ptr %271, i64 1
  %272 = load float, ptr %arrayidx321, align 4, !tbaa !12
  store float %272, ptr %vi4x1, align 4, !tbaa !12
  %273 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr322 = getelementptr inbounds float, ptr %273, i64 2
  store ptr %add.ptr322, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4x0) #4
  %274 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx323 = getelementptr inbounds float, ptr %274, i64 10
  %275 = load float, ptr %arrayidx323, align 4, !tbaa !12
  store float %275, ptr %vk4x0, align 4, !tbaa !12
  %276 = load float, ptr %vi4x0, align 4, !tbaa !12
  %277 = load float, ptr %vk4x0, align 4, !tbaa !12
  %278 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call324 = call float @math_muladd_f32(float noundef %276, float noundef %277, float noundef %278)
  store float %call324, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4x1) #4
  %279 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx325 = getelementptr inbounds float, ptr %279, i64 11
  %280 = load float, ptr %arrayidx325, align 4, !tbaa !12
  store float %280, ptr %vk4x1, align 4, !tbaa !12
  %281 = load float, ptr %vi4x1, align 4, !tbaa !12
  %282 = load float, ptr %vk4x1, align 4, !tbaa !12
  %283 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call326 = call float @math_muladd_f32(float noundef %281, float noundef %282, float noundef %283)
  store float %call326, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x0) #4
  %284 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx327 = getelementptr inbounds float, ptr %284, i64 0
  %285 = load float, ptr %arrayidx327, align 4, !tbaa !12
  store float %285, ptr %vi5x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x1) #4
  %286 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx328 = getelementptr inbounds float, ptr %286, i64 1
  %287 = load float, ptr %arrayidx328, align 4, !tbaa !12
  store float %287, ptr %vi5x1, align 4, !tbaa !12
  %288 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr329 = getelementptr inbounds float, ptr %288, i64 2
  store ptr %add.ptr329, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5x0) #4
  %289 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx330 = getelementptr inbounds float, ptr %289, i64 12
  %290 = load float, ptr %arrayidx330, align 4, !tbaa !12
  store float %290, ptr %vk5x0, align 4, !tbaa !12
  %291 = load float, ptr %vi5x0, align 4, !tbaa !12
  %292 = load float, ptr %vk5x0, align 4, !tbaa !12
  %293 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call331 = call float @math_muladd_f32(float noundef %291, float noundef %292, float noundef %293)
  store float %call331, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5x1) #4
  %294 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx332 = getelementptr inbounds float, ptr %294, i64 13
  %295 = load float, ptr %arrayidx332, align 4, !tbaa !12
  store float %295, ptr %vk5x1, align 4, !tbaa !12
  %296 = load float, ptr %vi5x1, align 4, !tbaa !12
  %297 = load float, ptr %vk5x1, align 4, !tbaa !12
  %298 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call333 = call float @math_muladd_f32(float noundef %296, float noundef %297, float noundef %298)
  store float %call333, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x0) #4
  %299 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx334 = getelementptr inbounds float, ptr %299, i64 0
  %300 = load float, ptr %arrayidx334, align 4, !tbaa !12
  store float %300, ptr %vi6x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x1) #4
  %301 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx335 = getelementptr inbounds float, ptr %301, i64 1
  %302 = load float, ptr %arrayidx335, align 4, !tbaa !12
  store float %302, ptr %vi6x1, align 4, !tbaa !12
  %303 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr336 = getelementptr inbounds float, ptr %303, i64 2
  store ptr %add.ptr336, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6x0) #4
  %304 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx337 = getelementptr inbounds float, ptr %304, i64 14
  %305 = load float, ptr %arrayidx337, align 4, !tbaa !12
  store float %305, ptr %vk6x0, align 4, !tbaa !12
  %306 = load float, ptr %vi6x0, align 4, !tbaa !12
  %307 = load float, ptr %vk6x0, align 4, !tbaa !12
  %308 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call338 = call float @math_muladd_f32(float noundef %306, float noundef %307, float noundef %308)
  store float %call338, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6x1) #4
  %309 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx339 = getelementptr inbounds float, ptr %309, i64 15
  %310 = load float, ptr %arrayidx339, align 4, !tbaa !12
  store float %310, ptr %vk6x1, align 4, !tbaa !12
  %311 = load float, ptr %vi6x1, align 4, !tbaa !12
  %312 = load float, ptr %vk6x1, align 4, !tbaa !12
  %313 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call340 = call float @math_muladd_f32(float noundef %311, float noundef %312, float noundef %313)
  store float %call340, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7x0) #4
  %314 = load ptr, ptr %i7, align 8, !tbaa !9
  %arrayidx341 = getelementptr inbounds float, ptr %314, i64 0
  %315 = load float, ptr %arrayidx341, align 4, !tbaa !12
  store float %315, ptr %vi7x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7x1) #4
  %316 = load ptr, ptr %i7, align 8, !tbaa !9
  %arrayidx342 = getelementptr inbounds float, ptr %316, i64 1
  %317 = load float, ptr %arrayidx342, align 4, !tbaa !12
  store float %317, ptr %vi7x1, align 4, !tbaa !12
  %318 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr343 = getelementptr inbounds float, ptr %318, i64 2
  store ptr %add.ptr343, ptr %i7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7x0) #4
  %319 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx344 = getelementptr inbounds float, ptr %319, i64 16
  %320 = load float, ptr %arrayidx344, align 4, !tbaa !12
  store float %320, ptr %vk7x0, align 4, !tbaa !12
  %321 = load float, ptr %vi7x0, align 4, !tbaa !12
  %322 = load float, ptr %vk7x0, align 4, !tbaa !12
  %323 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call345 = call float @math_muladd_f32(float noundef %321, float noundef %322, float noundef %323)
  store float %call345, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7x1) #4
  %324 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx346 = getelementptr inbounds float, ptr %324, i64 17
  %325 = load float, ptr %arrayidx346, align 4, !tbaa !12
  store float %325, ptr %vk7x1, align 4, !tbaa !12
  %326 = load float, ptr %vi7x1, align 4, !tbaa !12
  %327 = load float, ptr %vk7x1, align 4, !tbaa !12
  %328 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call347 = call float @math_muladd_f32(float noundef %326, float noundef %327, float noundef %328)
  store float %call347, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8x0) #4
  %329 = load ptr, ptr %i8, align 8, !tbaa !9
  %arrayidx348 = getelementptr inbounds float, ptr %329, i64 0
  %330 = load float, ptr %arrayidx348, align 4, !tbaa !12
  store float %330, ptr %vi8x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8x1) #4
  %331 = load ptr, ptr %i8, align 8, !tbaa !9
  %arrayidx349 = getelementptr inbounds float, ptr %331, i64 1
  %332 = load float, ptr %arrayidx349, align 4, !tbaa !12
  store float %332, ptr %vi8x1, align 4, !tbaa !12
  %333 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr350 = getelementptr inbounds float, ptr %333, i64 2
  store ptr %add.ptr350, ptr %i8, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8x0) #4
  %334 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx351 = getelementptr inbounds float, ptr %334, i64 18
  %335 = load float, ptr %arrayidx351, align 4, !tbaa !12
  store float %335, ptr %vk8x0, align 4, !tbaa !12
  %336 = load float, ptr %vi8x0, align 4, !tbaa !12
  %337 = load float, ptr %vk8x0, align 4, !tbaa !12
  %338 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call352 = call float @math_muladd_f32(float noundef %336, float noundef %337, float noundef %338)
  store float %call352, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8x1) #4
  %339 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx353 = getelementptr inbounds float, ptr %339, i64 19
  %340 = load float, ptr %arrayidx353, align 4, !tbaa !12
  store float %340, ptr %vk8x1, align 4, !tbaa !12
  %341 = load float, ptr %vi8x1, align 4, !tbaa !12
  %342 = load float, ptr %vk8x1, align 4, !tbaa !12
  %343 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call354 = call float @math_muladd_f32(float noundef %341, float noundef %342, float noundef %343)
  store float %call354, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9x0) #4
  %344 = load ptr, ptr %i9, align 8, !tbaa !9
  %arrayidx355 = getelementptr inbounds float, ptr %344, i64 0
  %345 = load float, ptr %arrayidx355, align 4, !tbaa !12
  store float %345, ptr %vi9x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9x1) #4
  %346 = load ptr, ptr %i9, align 8, !tbaa !9
  %arrayidx356 = getelementptr inbounds float, ptr %346, i64 1
  %347 = load float, ptr %arrayidx356, align 4, !tbaa !12
  store float %347, ptr %vi9x1, align 4, !tbaa !12
  %348 = load ptr, ptr %i9, align 8, !tbaa !9
  %add.ptr357 = getelementptr inbounds float, ptr %348, i64 2
  store ptr %add.ptr357, ptr %i9, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9x0) #4
  %349 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx358 = getelementptr inbounds float, ptr %349, i64 20
  %350 = load float, ptr %arrayidx358, align 4, !tbaa !12
  store float %350, ptr %vk9x0, align 4, !tbaa !12
  %351 = load float, ptr %vi9x0, align 4, !tbaa !12
  %352 = load float, ptr %vk9x0, align 4, !tbaa !12
  %353 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call359 = call float @math_muladd_f32(float noundef %351, float noundef %352, float noundef %353)
  store float %call359, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9x1) #4
  %354 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx360 = getelementptr inbounds float, ptr %354, i64 21
  %355 = load float, ptr %arrayidx360, align 4, !tbaa !12
  store float %355, ptr %vk9x1, align 4, !tbaa !12
  %356 = load float, ptr %vi9x1, align 4, !tbaa !12
  %357 = load float, ptr %vk9x1, align 4, !tbaa !12
  %358 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call361 = call float @math_muladd_f32(float noundef %356, float noundef %357, float noundef %358)
  store float %call361, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10x0) #4
  %359 = load ptr, ptr %i10, align 8, !tbaa !9
  %arrayidx362 = getelementptr inbounds float, ptr %359, i64 0
  %360 = load float, ptr %arrayidx362, align 4, !tbaa !12
  store float %360, ptr %vi10x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10x1) #4
  %361 = load ptr, ptr %i10, align 8, !tbaa !9
  %arrayidx363 = getelementptr inbounds float, ptr %361, i64 1
  %362 = load float, ptr %arrayidx363, align 4, !tbaa !12
  store float %362, ptr %vi10x1, align 4, !tbaa !12
  %363 = load ptr, ptr %i10, align 8, !tbaa !9
  %add.ptr364 = getelementptr inbounds float, ptr %363, i64 2
  store ptr %add.ptr364, ptr %i10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10x0) #4
  %364 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx365 = getelementptr inbounds float, ptr %364, i64 22
  %365 = load float, ptr %arrayidx365, align 4, !tbaa !12
  store float %365, ptr %vk10x0, align 4, !tbaa !12
  %366 = load float, ptr %vi10x0, align 4, !tbaa !12
  %367 = load float, ptr %vk10x0, align 4, !tbaa !12
  %368 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call366 = call float @math_muladd_f32(float noundef %366, float noundef %367, float noundef %368)
  store float %call366, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10x1) #4
  %369 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx367 = getelementptr inbounds float, ptr %369, i64 23
  %370 = load float, ptr %arrayidx367, align 4, !tbaa !12
  store float %370, ptr %vk10x1, align 4, !tbaa !12
  %371 = load float, ptr %vi10x1, align 4, !tbaa !12
  %372 = load float, ptr %vk10x1, align 4, !tbaa !12
  %373 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call368 = call float @math_muladd_f32(float noundef %371, float noundef %372, float noundef %373)
  store float %call368, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11x0) #4
  %374 = load ptr, ptr %i11, align 8, !tbaa !9
  %arrayidx369 = getelementptr inbounds float, ptr %374, i64 0
  %375 = load float, ptr %arrayidx369, align 4, !tbaa !12
  store float %375, ptr %vi11x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11x1) #4
  %376 = load ptr, ptr %i11, align 8, !tbaa !9
  %arrayidx370 = getelementptr inbounds float, ptr %376, i64 1
  %377 = load float, ptr %arrayidx370, align 4, !tbaa !12
  store float %377, ptr %vi11x1, align 4, !tbaa !12
  %378 = load ptr, ptr %i11, align 8, !tbaa !9
  %add.ptr371 = getelementptr inbounds float, ptr %378, i64 2
  store ptr %add.ptr371, ptr %i11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11x0) #4
  %379 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx372 = getelementptr inbounds float, ptr %379, i64 24
  %380 = load float, ptr %arrayidx372, align 4, !tbaa !12
  store float %380, ptr %vk11x0, align 4, !tbaa !12
  %381 = load float, ptr %vi11x0, align 4, !tbaa !12
  %382 = load float, ptr %vk11x0, align 4, !tbaa !12
  %383 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call373 = call float @math_muladd_f32(float noundef %381, float noundef %382, float noundef %383)
  store float %call373, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11x1) #4
  %384 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx374 = getelementptr inbounds float, ptr %384, i64 25
  %385 = load float, ptr %arrayidx374, align 4, !tbaa !12
  store float %385, ptr %vk11x1, align 4, !tbaa !12
  %386 = load float, ptr %vi11x1, align 4, !tbaa !12
  %387 = load float, ptr %vk11x1, align 4, !tbaa !12
  %388 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call375 = call float @math_muladd_f32(float noundef %386, float noundef %387, float noundef %388)
  store float %call375, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12x0) #4
  %389 = load ptr, ptr %i12, align 8, !tbaa !9
  %arrayidx376 = getelementptr inbounds float, ptr %389, i64 0
  %390 = load float, ptr %arrayidx376, align 4, !tbaa !12
  store float %390, ptr %vi12x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12x1) #4
  %391 = load ptr, ptr %i12, align 8, !tbaa !9
  %arrayidx377 = getelementptr inbounds float, ptr %391, i64 1
  %392 = load float, ptr %arrayidx377, align 4, !tbaa !12
  store float %392, ptr %vi12x1, align 4, !tbaa !12
  %393 = load ptr, ptr %i12, align 8, !tbaa !9
  %add.ptr378 = getelementptr inbounds float, ptr %393, i64 2
  store ptr %add.ptr378, ptr %i12, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12x0) #4
  %394 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx379 = getelementptr inbounds float, ptr %394, i64 26
  %395 = load float, ptr %arrayidx379, align 4, !tbaa !12
  store float %395, ptr %vk12x0, align 4, !tbaa !12
  %396 = load float, ptr %vi12x0, align 4, !tbaa !12
  %397 = load float, ptr %vk12x0, align 4, !tbaa !12
  %398 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call380 = call float @math_muladd_f32(float noundef %396, float noundef %397, float noundef %398)
  store float %call380, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12x1) #4
  %399 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx381 = getelementptr inbounds float, ptr %399, i64 27
  %400 = load float, ptr %arrayidx381, align 4, !tbaa !12
  store float %400, ptr %vk12x1, align 4, !tbaa !12
  %401 = load float, ptr %vi12x1, align 4, !tbaa !12
  %402 = load float, ptr %vk12x1, align 4, !tbaa !12
  %403 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call382 = call float @math_muladd_f32(float noundef %401, float noundef %402, float noundef %403)
  store float %call382, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13x0) #4
  %404 = load ptr, ptr %i13, align 8, !tbaa !9
  %arrayidx383 = getelementptr inbounds float, ptr %404, i64 0
  %405 = load float, ptr %arrayidx383, align 4, !tbaa !12
  store float %405, ptr %vi13x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13x1) #4
  %406 = load ptr, ptr %i13, align 8, !tbaa !9
  %arrayidx384 = getelementptr inbounds float, ptr %406, i64 1
  %407 = load float, ptr %arrayidx384, align 4, !tbaa !12
  store float %407, ptr %vi13x1, align 4, !tbaa !12
  %408 = load ptr, ptr %i13, align 8, !tbaa !9
  %add.ptr385 = getelementptr inbounds float, ptr %408, i64 2
  store ptr %add.ptr385, ptr %i13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13x0) #4
  %409 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx386 = getelementptr inbounds float, ptr %409, i64 28
  %410 = load float, ptr %arrayidx386, align 4, !tbaa !12
  store float %410, ptr %vk13x0, align 4, !tbaa !12
  %411 = load float, ptr %vi13x0, align 4, !tbaa !12
  %412 = load float, ptr %vk13x0, align 4, !tbaa !12
  %413 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call387 = call float @math_muladd_f32(float noundef %411, float noundef %412, float noundef %413)
  store float %call387, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13x1) #4
  %414 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx388 = getelementptr inbounds float, ptr %414, i64 29
  %415 = load float, ptr %arrayidx388, align 4, !tbaa !12
  store float %415, ptr %vk13x1, align 4, !tbaa !12
  %416 = load float, ptr %vi13x1, align 4, !tbaa !12
  %417 = load float, ptr %vk13x1, align 4, !tbaa !12
  %418 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call389 = call float @math_muladd_f32(float noundef %416, float noundef %417, float noundef %418)
  store float %call389, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14x0) #4
  %419 = load ptr, ptr %i14, align 8, !tbaa !9
  %arrayidx390 = getelementptr inbounds float, ptr %419, i64 0
  %420 = load float, ptr %arrayidx390, align 4, !tbaa !12
  store float %420, ptr %vi14x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14x1) #4
  %421 = load ptr, ptr %i14, align 8, !tbaa !9
  %arrayidx391 = getelementptr inbounds float, ptr %421, i64 1
  %422 = load float, ptr %arrayidx391, align 4, !tbaa !12
  store float %422, ptr %vi14x1, align 4, !tbaa !12
  %423 = load ptr, ptr %i14, align 8, !tbaa !9
  %add.ptr392 = getelementptr inbounds float, ptr %423, i64 2
  store ptr %add.ptr392, ptr %i14, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14x0) #4
  %424 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx393 = getelementptr inbounds float, ptr %424, i64 30
  %425 = load float, ptr %arrayidx393, align 4, !tbaa !12
  store float %425, ptr %vk14x0, align 4, !tbaa !12
  %426 = load float, ptr %vi14x0, align 4, !tbaa !12
  %427 = load float, ptr %vk14x0, align 4, !tbaa !12
  %428 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call394 = call float @math_muladd_f32(float noundef %426, float noundef %427, float noundef %428)
  store float %call394, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14x1) #4
  %429 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx395 = getelementptr inbounds float, ptr %429, i64 31
  %430 = load float, ptr %arrayidx395, align 4, !tbaa !12
  store float %430, ptr %vk14x1, align 4, !tbaa !12
  %431 = load float, ptr %vi14x1, align 4, !tbaa !12
  %432 = load float, ptr %vk14x1, align 4, !tbaa !12
  %433 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call396 = call float @math_muladd_f32(float noundef %431, float noundef %432, float noundef %433)
  store float %call396, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15x0) #4
  %434 = load ptr, ptr %i15, align 8, !tbaa !9
  %arrayidx397 = getelementptr inbounds float, ptr %434, i64 0
  %435 = load float, ptr %arrayidx397, align 4, !tbaa !12
  store float %435, ptr %vi15x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15x1) #4
  %436 = load ptr, ptr %i15, align 8, !tbaa !9
  %arrayidx398 = getelementptr inbounds float, ptr %436, i64 1
  %437 = load float, ptr %arrayidx398, align 4, !tbaa !12
  store float %437, ptr %vi15x1, align 4, !tbaa !12
  %438 = load ptr, ptr %i15, align 8, !tbaa !9
  %add.ptr399 = getelementptr inbounds float, ptr %438, i64 2
  store ptr %add.ptr399, ptr %i15, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15x0) #4
  %439 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx400 = getelementptr inbounds float, ptr %439, i64 32
  %440 = load float, ptr %arrayidx400, align 4, !tbaa !12
  store float %440, ptr %vk15x0, align 4, !tbaa !12
  %441 = load float, ptr %vi15x0, align 4, !tbaa !12
  %442 = load float, ptr %vk15x0, align 4, !tbaa !12
  %443 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call401 = call float @math_muladd_f32(float noundef %441, float noundef %442, float noundef %443)
  store float %call401, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15x1) #4
  %444 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx402 = getelementptr inbounds float, ptr %444, i64 33
  %445 = load float, ptr %arrayidx402, align 4, !tbaa !12
  store float %445, ptr %vk15x1, align 4, !tbaa !12
  %446 = load float, ptr %vi15x1, align 4, !tbaa !12
  %447 = load float, ptr %vk15x1, align 4, !tbaa !12
  %448 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call403 = call float @math_muladd_f32(float noundef %446, float noundef %447, float noundef %448)
  store float %call403, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16x0) #4
  %449 = load ptr, ptr %i16, align 8, !tbaa !9
  %arrayidx404 = getelementptr inbounds float, ptr %449, i64 0
  %450 = load float, ptr %arrayidx404, align 4, !tbaa !12
  store float %450, ptr %vi16x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16x1) #4
  %451 = load ptr, ptr %i16, align 8, !tbaa !9
  %arrayidx405 = getelementptr inbounds float, ptr %451, i64 1
  %452 = load float, ptr %arrayidx405, align 4, !tbaa !12
  store float %452, ptr %vi16x1, align 4, !tbaa !12
  %453 = load ptr, ptr %i16, align 8, !tbaa !9
  %add.ptr406 = getelementptr inbounds float, ptr %453, i64 2
  store ptr %add.ptr406, ptr %i16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16x0) #4
  %454 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx407 = getelementptr inbounds float, ptr %454, i64 34
  %455 = load float, ptr %arrayidx407, align 4, !tbaa !12
  store float %455, ptr %vk16x0, align 4, !tbaa !12
  %456 = load float, ptr %vi16x0, align 4, !tbaa !12
  %457 = load float, ptr %vk16x0, align 4, !tbaa !12
  %458 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call408 = call float @math_muladd_f32(float noundef %456, float noundef %457, float noundef %458)
  store float %call408, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16x1) #4
  %459 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx409 = getelementptr inbounds float, ptr %459, i64 35
  %460 = load float, ptr %arrayidx409, align 4, !tbaa !12
  store float %460, ptr %vk16x1, align 4, !tbaa !12
  %461 = load float, ptr %vi16x1, align 4, !tbaa !12
  %462 = load float, ptr %vk16x1, align 4, !tbaa !12
  %463 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call410 = call float @math_muladd_f32(float noundef %461, float noundef %462, float noundef %463)
  store float %call410, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17x0) #4
  %464 = load ptr, ptr %i17, align 8, !tbaa !9
  %arrayidx411 = getelementptr inbounds float, ptr %464, i64 0
  %465 = load float, ptr %arrayidx411, align 4, !tbaa !12
  store float %465, ptr %vi17x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17x1) #4
  %466 = load ptr, ptr %i17, align 8, !tbaa !9
  %arrayidx412 = getelementptr inbounds float, ptr %466, i64 1
  %467 = load float, ptr %arrayidx412, align 4, !tbaa !12
  store float %467, ptr %vi17x1, align 4, !tbaa !12
  %468 = load ptr, ptr %i17, align 8, !tbaa !9
  %add.ptr413 = getelementptr inbounds float, ptr %468, i64 2
  store ptr %add.ptr413, ptr %i17, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17x0) #4
  %469 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx414 = getelementptr inbounds float, ptr %469, i64 36
  %470 = load float, ptr %arrayidx414, align 4, !tbaa !12
  store float %470, ptr %vk17x0, align 4, !tbaa !12
  %471 = load float, ptr %vi17x0, align 4, !tbaa !12
  %472 = load float, ptr %vk17x0, align 4, !tbaa !12
  %473 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call415 = call float @math_muladd_f32(float noundef %471, float noundef %472, float noundef %473)
  store float %call415, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17x1) #4
  %474 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx416 = getelementptr inbounds float, ptr %474, i64 37
  %475 = load float, ptr %arrayidx416, align 4, !tbaa !12
  store float %475, ptr %vk17x1, align 4, !tbaa !12
  %476 = load float, ptr %vi17x1, align 4, !tbaa !12
  %477 = load float, ptr %vk17x1, align 4, !tbaa !12
  %478 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call417 = call float @math_muladd_f32(float noundef %476, float noundef %477, float noundef %478)
  store float %call417, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18x0) #4
  %479 = load ptr, ptr %i18, align 8, !tbaa !9
  %arrayidx418 = getelementptr inbounds float, ptr %479, i64 0
  %480 = load float, ptr %arrayidx418, align 4, !tbaa !12
  store float %480, ptr %vi18x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18x1) #4
  %481 = load ptr, ptr %i18, align 8, !tbaa !9
  %arrayidx419 = getelementptr inbounds float, ptr %481, i64 1
  %482 = load float, ptr %arrayidx419, align 4, !tbaa !12
  store float %482, ptr %vi18x1, align 4, !tbaa !12
  %483 = load ptr, ptr %i18, align 8, !tbaa !9
  %add.ptr420 = getelementptr inbounds float, ptr %483, i64 2
  store ptr %add.ptr420, ptr %i18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18x0) #4
  %484 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx421 = getelementptr inbounds float, ptr %484, i64 38
  %485 = load float, ptr %arrayidx421, align 4, !tbaa !12
  store float %485, ptr %vk18x0, align 4, !tbaa !12
  %486 = load float, ptr %vi18x0, align 4, !tbaa !12
  %487 = load float, ptr %vk18x0, align 4, !tbaa !12
  %488 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call422 = call float @math_muladd_f32(float noundef %486, float noundef %487, float noundef %488)
  store float %call422, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18x1) #4
  %489 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx423 = getelementptr inbounds float, ptr %489, i64 39
  %490 = load float, ptr %arrayidx423, align 4, !tbaa !12
  store float %490, ptr %vk18x1, align 4, !tbaa !12
  %491 = load float, ptr %vi18x1, align 4, !tbaa !12
  %492 = load float, ptr %vk18x1, align 4, !tbaa !12
  %493 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call424 = call float @math_muladd_f32(float noundef %491, float noundef %492, float noundef %493)
  store float %call424, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19x0) #4
  %494 = load ptr, ptr %i19, align 8, !tbaa !9
  %arrayidx425 = getelementptr inbounds float, ptr %494, i64 0
  %495 = load float, ptr %arrayidx425, align 4, !tbaa !12
  store float %495, ptr %vi19x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19x1) #4
  %496 = load ptr, ptr %i19, align 8, !tbaa !9
  %arrayidx426 = getelementptr inbounds float, ptr %496, i64 1
  %497 = load float, ptr %arrayidx426, align 4, !tbaa !12
  store float %497, ptr %vi19x1, align 4, !tbaa !12
  %498 = load ptr, ptr %i19, align 8, !tbaa !9
  %add.ptr427 = getelementptr inbounds float, ptr %498, i64 2
  store ptr %add.ptr427, ptr %i19, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19x0) #4
  %499 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx428 = getelementptr inbounds float, ptr %499, i64 40
  %500 = load float, ptr %arrayidx428, align 4, !tbaa !12
  store float %500, ptr %vk19x0, align 4, !tbaa !12
  %501 = load float, ptr %vi19x0, align 4, !tbaa !12
  %502 = load float, ptr %vk19x0, align 4, !tbaa !12
  %503 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call429 = call float @math_muladd_f32(float noundef %501, float noundef %502, float noundef %503)
  store float %call429, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19x1) #4
  %504 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx430 = getelementptr inbounds float, ptr %504, i64 41
  %505 = load float, ptr %arrayidx430, align 4, !tbaa !12
  store float %505, ptr %vk19x1, align 4, !tbaa !12
  %506 = load float, ptr %vi19x1, align 4, !tbaa !12
  %507 = load float, ptr %vk19x1, align 4, !tbaa !12
  %508 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call431 = call float @math_muladd_f32(float noundef %506, float noundef %507, float noundef %508)
  store float %call431, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20x0) #4
  %509 = load ptr, ptr %i20, align 8, !tbaa !9
  %arrayidx432 = getelementptr inbounds float, ptr %509, i64 0
  %510 = load float, ptr %arrayidx432, align 4, !tbaa !12
  store float %510, ptr %vi20x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20x1) #4
  %511 = load ptr, ptr %i20, align 8, !tbaa !9
  %arrayidx433 = getelementptr inbounds float, ptr %511, i64 1
  %512 = load float, ptr %arrayidx433, align 4, !tbaa !12
  store float %512, ptr %vi20x1, align 4, !tbaa !12
  %513 = load ptr, ptr %i20, align 8, !tbaa !9
  %add.ptr434 = getelementptr inbounds float, ptr %513, i64 2
  store ptr %add.ptr434, ptr %i20, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20x0) #4
  %514 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx435 = getelementptr inbounds float, ptr %514, i64 42
  %515 = load float, ptr %arrayidx435, align 4, !tbaa !12
  store float %515, ptr %vk20x0, align 4, !tbaa !12
  %516 = load float, ptr %vi20x0, align 4, !tbaa !12
  %517 = load float, ptr %vk20x0, align 4, !tbaa !12
  %518 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call436 = call float @math_muladd_f32(float noundef %516, float noundef %517, float noundef %518)
  store float %call436, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20x1) #4
  %519 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx437 = getelementptr inbounds float, ptr %519, i64 43
  %520 = load float, ptr %arrayidx437, align 4, !tbaa !12
  store float %520, ptr %vk20x1, align 4, !tbaa !12
  %521 = load float, ptr %vi20x1, align 4, !tbaa !12
  %522 = load float, ptr %vk20x1, align 4, !tbaa !12
  %523 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call438 = call float @math_muladd_f32(float noundef %521, float noundef %522, float noundef %523)
  store float %call438, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21x0) #4
  %524 = load ptr, ptr %i21, align 8, !tbaa !9
  %arrayidx439 = getelementptr inbounds float, ptr %524, i64 0
  %525 = load float, ptr %arrayidx439, align 4, !tbaa !12
  store float %525, ptr %vi21x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21x1) #4
  %526 = load ptr, ptr %i21, align 8, !tbaa !9
  %arrayidx440 = getelementptr inbounds float, ptr %526, i64 1
  %527 = load float, ptr %arrayidx440, align 4, !tbaa !12
  store float %527, ptr %vi21x1, align 4, !tbaa !12
  %528 = load ptr, ptr %i21, align 8, !tbaa !9
  %add.ptr441 = getelementptr inbounds float, ptr %528, i64 2
  store ptr %add.ptr441, ptr %i21, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21x0) #4
  %529 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx442 = getelementptr inbounds float, ptr %529, i64 44
  %530 = load float, ptr %arrayidx442, align 4, !tbaa !12
  store float %530, ptr %vk21x0, align 4, !tbaa !12
  %531 = load float, ptr %vi21x0, align 4, !tbaa !12
  %532 = load float, ptr %vk21x0, align 4, !tbaa !12
  %533 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call443 = call float @math_muladd_f32(float noundef %531, float noundef %532, float noundef %533)
  store float %call443, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21x1) #4
  %534 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx444 = getelementptr inbounds float, ptr %534, i64 45
  %535 = load float, ptr %arrayidx444, align 4, !tbaa !12
  store float %535, ptr %vk21x1, align 4, !tbaa !12
  %536 = load float, ptr %vi21x1, align 4, !tbaa !12
  %537 = load float, ptr %vk21x1, align 4, !tbaa !12
  %538 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call445 = call float @math_muladd_f32(float noundef %536, float noundef %537, float noundef %538)
  store float %call445, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22x0) #4
  %539 = load ptr, ptr %i22, align 8, !tbaa !9
  %arrayidx446 = getelementptr inbounds float, ptr %539, i64 0
  %540 = load float, ptr %arrayidx446, align 4, !tbaa !12
  store float %540, ptr %vi22x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22x1) #4
  %541 = load ptr, ptr %i22, align 8, !tbaa !9
  %arrayidx447 = getelementptr inbounds float, ptr %541, i64 1
  %542 = load float, ptr %arrayidx447, align 4, !tbaa !12
  store float %542, ptr %vi22x1, align 4, !tbaa !12
  %543 = load ptr, ptr %i22, align 8, !tbaa !9
  %add.ptr448 = getelementptr inbounds float, ptr %543, i64 2
  store ptr %add.ptr448, ptr %i22, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22x0) #4
  %544 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx449 = getelementptr inbounds float, ptr %544, i64 46
  %545 = load float, ptr %arrayidx449, align 4, !tbaa !12
  store float %545, ptr %vk22x0, align 4, !tbaa !12
  %546 = load float, ptr %vi22x0, align 4, !tbaa !12
  %547 = load float, ptr %vk22x0, align 4, !tbaa !12
  %548 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call450 = call float @math_muladd_f32(float noundef %546, float noundef %547, float noundef %548)
  store float %call450, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22x1) #4
  %549 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx451 = getelementptr inbounds float, ptr %549, i64 47
  %550 = load float, ptr %arrayidx451, align 4, !tbaa !12
  store float %550, ptr %vk22x1, align 4, !tbaa !12
  %551 = load float, ptr %vi22x1, align 4, !tbaa !12
  %552 = load float, ptr %vk22x1, align 4, !tbaa !12
  %553 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call452 = call float @math_muladd_f32(float noundef %551, float noundef %552, float noundef %553)
  store float %call452, ptr %vacc1p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23x0) #4
  %554 = load ptr, ptr %i23, align 8, !tbaa !9
  %arrayidx453 = getelementptr inbounds float, ptr %554, i64 0
  %555 = load float, ptr %arrayidx453, align 4, !tbaa !12
  store float %555, ptr %vi23x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23x1) #4
  %556 = load ptr, ptr %i23, align 8, !tbaa !9
  %arrayidx454 = getelementptr inbounds float, ptr %556, i64 1
  %557 = load float, ptr %arrayidx454, align 4, !tbaa !12
  store float %557, ptr %vi23x1, align 4, !tbaa !12
  %558 = load ptr, ptr %i23, align 8, !tbaa !9
  %add.ptr455 = getelementptr inbounds float, ptr %558, i64 2
  store ptr %add.ptr455, ptr %i23, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23x0) #4
  %559 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx456 = getelementptr inbounds float, ptr %559, i64 48
  %560 = load float, ptr %arrayidx456, align 4, !tbaa !12
  store float %560, ptr %vk23x0, align 4, !tbaa !12
  %561 = load float, ptr %vi23x0, align 4, !tbaa !12
  %562 = load float, ptr %vk23x0, align 4, !tbaa !12
  %563 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %call457 = call float @math_muladd_f32(float noundef %561, float noundef %562, float noundef %563)
  store float %call457, ptr %vacc0p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23x1) #4
  %564 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx458 = getelementptr inbounds float, ptr %564, i64 49
  %565 = load float, ptr %arrayidx458, align 4, !tbaa !12
  store float %565, ptr %vk23x1, align 4, !tbaa !12
  %566 = load float, ptr %vi23x1, align 4, !tbaa !12
  %567 = load float, ptr %vk23x1, align 4, !tbaa !12
  %568 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %call459 = call float @math_muladd_f32(float noundef %566, float noundef %567, float noundef %568)
  store float %call459, ptr %vacc1p1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24x0) #4
  %569 = load ptr, ptr %i24, align 8, !tbaa !9
  %arrayidx460 = getelementptr inbounds float, ptr %569, i64 0
  %570 = load float, ptr %arrayidx460, align 4, !tbaa !12
  store float %570, ptr %vi24x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24x1) #4
  %571 = load ptr, ptr %i24, align 8, !tbaa !9
  %arrayidx461 = getelementptr inbounds float, ptr %571, i64 1
  %572 = load float, ptr %arrayidx461, align 4, !tbaa !12
  store float %572, ptr %vi24x1, align 4, !tbaa !12
  %573 = load ptr, ptr %i24, align 8, !tbaa !9
  %add.ptr462 = getelementptr inbounds float, ptr %573, i64 2
  store ptr %add.ptr462, ptr %i24, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24x0) #4
  %574 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx463 = getelementptr inbounds float, ptr %574, i64 50
  %575 = load float, ptr %arrayidx463, align 4, !tbaa !12
  store float %575, ptr %vk24x0, align 4, !tbaa !12
  %576 = load float, ptr %vi24x0, align 4, !tbaa !12
  %577 = load float, ptr %vk24x0, align 4, !tbaa !12
  %578 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %call464 = call float @math_muladd_f32(float noundef %576, float noundef %577, float noundef %578)
  store float %call464, ptr %vacc0p0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24x1) #4
  %579 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx465 = getelementptr inbounds float, ptr %579, i64 51
  %580 = load float, ptr %arrayidx465, align 4, !tbaa !12
  store float %580, ptr %vk24x1, align 4, !tbaa !12
  %581 = load float, ptr %vi24x1, align 4, !tbaa !12
  %582 = load float, ptr %vk24x1, align 4, !tbaa !12
  %583 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %call466 = call float @math_muladd_f32(float noundef %581, float noundef %582, float noundef %583)
  store float %call466, ptr %vacc1p0, align 4, !tbaa !12
  %584 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr467 = getelementptr inbounds float, ptr %584, i64 52
  store ptr %add.ptr467, ptr %w, align 8, !tbaa !9
  %585 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %586 = load float, ptr %vacc0p1, align 4, !tbaa !12
  %add468 = fadd float %585, %586
  store float %add468, ptr %vacc0p0, align 4, !tbaa !12
  %587 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %588 = load float, ptr %vacc1p1, align 4, !tbaa !12
  %add469 = fadd float %587, %588
  store float %add469, ptr %vacc1p0, align 4, !tbaa !12
  %589 = load float, ptr %vacc0p0, align 4, !tbaa !12
  %590 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx470 = getelementptr inbounds float, ptr %590, i64 0
  store float %589, ptr %arrayidx470, align 4, !tbaa !12
  %591 = load float, ptr %vacc1p0, align 4, !tbaa !12
  %592 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx471 = getelementptr inbounds float, ptr %592, i64 1
  store float %591, ptr %arrayidx471, align 4, !tbaa !12
  %593 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr472 = getelementptr inbounds float, ptr %593, i64 2
  store ptr %add.ptr472, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk24x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi24x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk23x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi23x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi22x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi21x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi20x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk19x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi19x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk18x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi18x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk17x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi17x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk16x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi16x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk15x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi15x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk14x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi14x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk13x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi13x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi12x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi11x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi10x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk9x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi9x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk8x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi8x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk7x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi7x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk6x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk5x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk4x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk3x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1p1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0p1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1p0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0p0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %594 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %594, 2
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %for.cond473

for.cond473:                                      ; preds = %for.inc556, %for.end
  %595 = load i64, ptr %c, align 8, !tbaa !5
  %cmp474 = icmp uge i64 %595, 1
  br i1 %cmp474, label %for.body476, label %for.end558

for.body476:                                      ; preds = %for.cond473
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0p0477) #4
  %596 = load ptr, ptr %w, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %596, i32 1
  store ptr %incdec.ptr, ptr %w, align 8, !tbaa !9
  %597 = load float, ptr %596, align 4, !tbaa !12
  store float %597, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0) #4
  %598 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr478 = getelementptr inbounds float, ptr %598, i32 1
  store ptr %incdec.ptr478, ptr %i0, align 8, !tbaa !9
  %599 = load float, ptr %598, align 4, !tbaa !12
  store float %599, ptr %vi0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk0) #4
  %600 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx479 = getelementptr inbounds float, ptr %600, i64 1
  %601 = load float, ptr %arrayidx479, align 4, !tbaa !12
  store float %601, ptr %vk0, align 4, !tbaa !12
  %602 = load float, ptr %vi0, align 4, !tbaa !12
  %603 = load float, ptr %vk0, align 4, !tbaa !12
  %604 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call480 = call float @math_muladd_f32(float noundef %602, float noundef %603, float noundef %604)
  store float %call480, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1) #4
  %605 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr481 = getelementptr inbounds float, ptr %605, i32 1
  store ptr %incdec.ptr481, ptr %i1, align 8, !tbaa !9
  %606 = load float, ptr %605, align 4, !tbaa !12
  store float %606, ptr %vi1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk1) #4
  %607 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx482 = getelementptr inbounds float, ptr %607, i64 3
  %608 = load float, ptr %arrayidx482, align 4, !tbaa !12
  store float %608, ptr %vk1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0p1483) #4
  %609 = load float, ptr %vi1, align 4, !tbaa !12
  %610 = load float, ptr %vk1, align 4, !tbaa !12
  %mul484 = fmul float %609, %610
  store float %mul484, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2) #4
  %611 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr485 = getelementptr inbounds float, ptr %611, i32 1
  store ptr %incdec.ptr485, ptr %i2, align 8, !tbaa !9
  %612 = load float, ptr %611, align 4, !tbaa !12
  store float %612, ptr %vi2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk2) #4
  %613 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx486 = getelementptr inbounds float, ptr %613, i64 5
  %614 = load float, ptr %arrayidx486, align 4, !tbaa !12
  store float %614, ptr %vk2, align 4, !tbaa !12
  %615 = load float, ptr %vi2, align 4, !tbaa !12
  %616 = load float, ptr %vk2, align 4, !tbaa !12
  %617 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call487 = call float @math_muladd_f32(float noundef %615, float noundef %616, float noundef %617)
  store float %call487, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3) #4
  %618 = load ptr, ptr %i3, align 8, !tbaa !9
  %incdec.ptr488 = getelementptr inbounds float, ptr %618, i32 1
  store ptr %incdec.ptr488, ptr %i3, align 8, !tbaa !9
  %619 = load float, ptr %618, align 4, !tbaa !12
  store float %619, ptr %vi3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk3) #4
  %620 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx489 = getelementptr inbounds float, ptr %620, i64 7
  %621 = load float, ptr %arrayidx489, align 4, !tbaa !12
  store float %621, ptr %vk3, align 4, !tbaa !12
  %622 = load float, ptr %vi3, align 4, !tbaa !12
  %623 = load float, ptr %vk3, align 4, !tbaa !12
  %624 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call490 = call float @math_muladd_f32(float noundef %622, float noundef %623, float noundef %624)
  store float %call490, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4) #4
  %625 = load ptr, ptr %i4, align 8, !tbaa !9
  %incdec.ptr491 = getelementptr inbounds float, ptr %625, i32 1
  store ptr %incdec.ptr491, ptr %i4, align 8, !tbaa !9
  %626 = load float, ptr %625, align 4, !tbaa !12
  store float %626, ptr %vi4, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk4) #4
  %627 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx492 = getelementptr inbounds float, ptr %627, i64 9
  %628 = load float, ptr %arrayidx492, align 4, !tbaa !12
  store float %628, ptr %vk4, align 4, !tbaa !12
  %629 = load float, ptr %vi4, align 4, !tbaa !12
  %630 = load float, ptr %vk4, align 4, !tbaa !12
  %631 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call493 = call float @math_muladd_f32(float noundef %629, float noundef %630, float noundef %631)
  store float %call493, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5) #4
  %632 = load ptr, ptr %i5, align 8, !tbaa !9
  %incdec.ptr494 = getelementptr inbounds float, ptr %632, i32 1
  store ptr %incdec.ptr494, ptr %i5, align 8, !tbaa !9
  %633 = load float, ptr %632, align 4, !tbaa !12
  store float %633, ptr %vi5, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk5) #4
  %634 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx495 = getelementptr inbounds float, ptr %634, i64 11
  %635 = load float, ptr %arrayidx495, align 4, !tbaa !12
  store float %635, ptr %vk5, align 4, !tbaa !12
  %636 = load float, ptr %vi5, align 4, !tbaa !12
  %637 = load float, ptr %vk5, align 4, !tbaa !12
  %638 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call496 = call float @math_muladd_f32(float noundef %636, float noundef %637, float noundef %638)
  store float %call496, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6) #4
  %639 = load ptr, ptr %i6, align 8, !tbaa !9
  %incdec.ptr497 = getelementptr inbounds float, ptr %639, i32 1
  store ptr %incdec.ptr497, ptr %i6, align 8, !tbaa !9
  %640 = load float, ptr %639, align 4, !tbaa !12
  store float %640, ptr %vi6, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk6) #4
  %641 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx498 = getelementptr inbounds float, ptr %641, i64 13
  %642 = load float, ptr %arrayidx498, align 4, !tbaa !12
  store float %642, ptr %vk6, align 4, !tbaa !12
  %643 = load float, ptr %vi6, align 4, !tbaa !12
  %644 = load float, ptr %vk6, align 4, !tbaa !12
  %645 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call499 = call float @math_muladd_f32(float noundef %643, float noundef %644, float noundef %645)
  store float %call499, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi7) #4
  %646 = load ptr, ptr %i7, align 8, !tbaa !9
  %incdec.ptr500 = getelementptr inbounds float, ptr %646, i32 1
  store ptr %incdec.ptr500, ptr %i7, align 8, !tbaa !9
  %647 = load float, ptr %646, align 4, !tbaa !12
  store float %647, ptr %vi7, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk7) #4
  %648 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx501 = getelementptr inbounds float, ptr %648, i64 15
  %649 = load float, ptr %arrayidx501, align 4, !tbaa !12
  store float %649, ptr %vk7, align 4, !tbaa !12
  %650 = load float, ptr %vi7, align 4, !tbaa !12
  %651 = load float, ptr %vk7, align 4, !tbaa !12
  %652 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call502 = call float @math_muladd_f32(float noundef %650, float noundef %651, float noundef %652)
  store float %call502, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi8) #4
  %653 = load ptr, ptr %i8, align 8, !tbaa !9
  %incdec.ptr503 = getelementptr inbounds float, ptr %653, i32 1
  store ptr %incdec.ptr503, ptr %i8, align 8, !tbaa !9
  %654 = load float, ptr %653, align 4, !tbaa !12
  store float %654, ptr %vi8, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk8) #4
  %655 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx504 = getelementptr inbounds float, ptr %655, i64 17
  %656 = load float, ptr %arrayidx504, align 4, !tbaa !12
  store float %656, ptr %vk8, align 4, !tbaa !12
  %657 = load float, ptr %vi8, align 4, !tbaa !12
  %658 = load float, ptr %vk8, align 4, !tbaa !12
  %659 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call505 = call float @math_muladd_f32(float noundef %657, float noundef %658, float noundef %659)
  store float %call505, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi9) #4
  %660 = load ptr, ptr %i9, align 8, !tbaa !9
  %incdec.ptr506 = getelementptr inbounds float, ptr %660, i32 1
  store ptr %incdec.ptr506, ptr %i9, align 8, !tbaa !9
  %661 = load float, ptr %660, align 4, !tbaa !12
  store float %661, ptr %vi9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk9) #4
  %662 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx507 = getelementptr inbounds float, ptr %662, i64 19
  %663 = load float, ptr %arrayidx507, align 4, !tbaa !12
  store float %663, ptr %vk9, align 4, !tbaa !12
  %664 = load float, ptr %vi9, align 4, !tbaa !12
  %665 = load float, ptr %vk9, align 4, !tbaa !12
  %666 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call508 = call float @math_muladd_f32(float noundef %664, float noundef %665, float noundef %666)
  store float %call508, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi10) #4
  %667 = load ptr, ptr %i10, align 8, !tbaa !9
  %incdec.ptr509 = getelementptr inbounds float, ptr %667, i32 1
  store ptr %incdec.ptr509, ptr %i10, align 8, !tbaa !9
  %668 = load float, ptr %667, align 4, !tbaa !12
  store float %668, ptr %vi10, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10) #4
  %669 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx510 = getelementptr inbounds float, ptr %669, i64 21
  %670 = load float, ptr %arrayidx510, align 4, !tbaa !12
  store float %670, ptr %vk10, align 4, !tbaa !12
  %671 = load float, ptr %vi10, align 4, !tbaa !12
  %672 = load float, ptr %vk10, align 4, !tbaa !12
  %673 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call511 = call float @math_muladd_f32(float noundef %671, float noundef %672, float noundef %673)
  store float %call511, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi11) #4
  %674 = load ptr, ptr %i11, align 8, !tbaa !9
  %incdec.ptr512 = getelementptr inbounds float, ptr %674, i32 1
  store ptr %incdec.ptr512, ptr %i11, align 8, !tbaa !9
  %675 = load float, ptr %674, align 4, !tbaa !12
  store float %675, ptr %vi11, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11) #4
  %676 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx513 = getelementptr inbounds float, ptr %676, i64 23
  %677 = load float, ptr %arrayidx513, align 4, !tbaa !12
  store float %677, ptr %vk11, align 4, !tbaa !12
  %678 = load float, ptr %vi11, align 4, !tbaa !12
  %679 = load float, ptr %vk11, align 4, !tbaa !12
  %680 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call514 = call float @math_muladd_f32(float noundef %678, float noundef %679, float noundef %680)
  store float %call514, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi12) #4
  %681 = load ptr, ptr %i12, align 8, !tbaa !9
  %incdec.ptr515 = getelementptr inbounds float, ptr %681, i32 1
  store ptr %incdec.ptr515, ptr %i12, align 8, !tbaa !9
  %682 = load float, ptr %681, align 4, !tbaa !12
  store float %682, ptr %vi12, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12) #4
  %683 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx516 = getelementptr inbounds float, ptr %683, i64 25
  %684 = load float, ptr %arrayidx516, align 4, !tbaa !12
  store float %684, ptr %vk12, align 4, !tbaa !12
  %685 = load float, ptr %vi12, align 4, !tbaa !12
  %686 = load float, ptr %vk12, align 4, !tbaa !12
  %687 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call517 = call float @math_muladd_f32(float noundef %685, float noundef %686, float noundef %687)
  store float %call517, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi13) #4
  %688 = load ptr, ptr %i13, align 8, !tbaa !9
  %incdec.ptr518 = getelementptr inbounds float, ptr %688, i32 1
  store ptr %incdec.ptr518, ptr %i13, align 8, !tbaa !9
  %689 = load float, ptr %688, align 4, !tbaa !12
  store float %689, ptr %vi13, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk13) #4
  %690 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx519 = getelementptr inbounds float, ptr %690, i64 27
  %691 = load float, ptr %arrayidx519, align 4, !tbaa !12
  store float %691, ptr %vk13, align 4, !tbaa !12
  %692 = load float, ptr %vi13, align 4, !tbaa !12
  %693 = load float, ptr %vk13, align 4, !tbaa !12
  %694 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call520 = call float @math_muladd_f32(float noundef %692, float noundef %693, float noundef %694)
  store float %call520, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi14) #4
  %695 = load ptr, ptr %i14, align 8, !tbaa !9
  %incdec.ptr521 = getelementptr inbounds float, ptr %695, i32 1
  store ptr %incdec.ptr521, ptr %i14, align 8, !tbaa !9
  %696 = load float, ptr %695, align 4, !tbaa !12
  store float %696, ptr %vi14, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk14) #4
  %697 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx522 = getelementptr inbounds float, ptr %697, i64 29
  %698 = load float, ptr %arrayidx522, align 4, !tbaa !12
  store float %698, ptr %vk14, align 4, !tbaa !12
  %699 = load float, ptr %vi14, align 4, !tbaa !12
  %700 = load float, ptr %vk14, align 4, !tbaa !12
  %701 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call523 = call float @math_muladd_f32(float noundef %699, float noundef %700, float noundef %701)
  store float %call523, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi15) #4
  %702 = load ptr, ptr %i15, align 8, !tbaa !9
  %incdec.ptr524 = getelementptr inbounds float, ptr %702, i32 1
  store ptr %incdec.ptr524, ptr %i15, align 8, !tbaa !9
  %703 = load float, ptr %702, align 4, !tbaa !12
  store float %703, ptr %vi15, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk15) #4
  %704 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx525 = getelementptr inbounds float, ptr %704, i64 31
  %705 = load float, ptr %arrayidx525, align 4, !tbaa !12
  store float %705, ptr %vk15, align 4, !tbaa !12
  %706 = load float, ptr %vi15, align 4, !tbaa !12
  %707 = load float, ptr %vk15, align 4, !tbaa !12
  %708 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call526 = call float @math_muladd_f32(float noundef %706, float noundef %707, float noundef %708)
  store float %call526, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi16) #4
  %709 = load ptr, ptr %i16, align 8, !tbaa !9
  %incdec.ptr527 = getelementptr inbounds float, ptr %709, i32 1
  store ptr %incdec.ptr527, ptr %i16, align 8, !tbaa !9
  %710 = load float, ptr %709, align 4, !tbaa !12
  store float %710, ptr %vi16, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk16) #4
  %711 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx528 = getelementptr inbounds float, ptr %711, i64 33
  %712 = load float, ptr %arrayidx528, align 4, !tbaa !12
  store float %712, ptr %vk16, align 4, !tbaa !12
  %713 = load float, ptr %vi16, align 4, !tbaa !12
  %714 = load float, ptr %vk16, align 4, !tbaa !12
  %715 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call529 = call float @math_muladd_f32(float noundef %713, float noundef %714, float noundef %715)
  store float %call529, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi17) #4
  %716 = load ptr, ptr %i17, align 8, !tbaa !9
  %incdec.ptr530 = getelementptr inbounds float, ptr %716, i32 1
  store ptr %incdec.ptr530, ptr %i17, align 8, !tbaa !9
  %717 = load float, ptr %716, align 4, !tbaa !12
  store float %717, ptr %vi17, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk17) #4
  %718 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx531 = getelementptr inbounds float, ptr %718, i64 35
  %719 = load float, ptr %arrayidx531, align 4, !tbaa !12
  store float %719, ptr %vk17, align 4, !tbaa !12
  %720 = load float, ptr %vi17, align 4, !tbaa !12
  %721 = load float, ptr %vk17, align 4, !tbaa !12
  %722 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call532 = call float @math_muladd_f32(float noundef %720, float noundef %721, float noundef %722)
  store float %call532, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi18) #4
  %723 = load ptr, ptr %i18, align 8, !tbaa !9
  %incdec.ptr533 = getelementptr inbounds float, ptr %723, i32 1
  store ptr %incdec.ptr533, ptr %i18, align 8, !tbaa !9
  %724 = load float, ptr %723, align 4, !tbaa !12
  store float %724, ptr %vi18, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk18) #4
  %725 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx534 = getelementptr inbounds float, ptr %725, i64 37
  %726 = load float, ptr %arrayidx534, align 4, !tbaa !12
  store float %726, ptr %vk18, align 4, !tbaa !12
  %727 = load float, ptr %vi18, align 4, !tbaa !12
  %728 = load float, ptr %vk18, align 4, !tbaa !12
  %729 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call535 = call float @math_muladd_f32(float noundef %727, float noundef %728, float noundef %729)
  store float %call535, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi19) #4
  %730 = load ptr, ptr %i19, align 8, !tbaa !9
  %incdec.ptr536 = getelementptr inbounds float, ptr %730, i32 1
  store ptr %incdec.ptr536, ptr %i19, align 8, !tbaa !9
  %731 = load float, ptr %730, align 4, !tbaa !12
  store float %731, ptr %vi19, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk19) #4
  %732 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx537 = getelementptr inbounds float, ptr %732, i64 39
  %733 = load float, ptr %arrayidx537, align 4, !tbaa !12
  store float %733, ptr %vk19, align 4, !tbaa !12
  %734 = load float, ptr %vi19, align 4, !tbaa !12
  %735 = load float, ptr %vk19, align 4, !tbaa !12
  %736 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call538 = call float @math_muladd_f32(float noundef %734, float noundef %735, float noundef %736)
  store float %call538, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi20) #4
  %737 = load ptr, ptr %i20, align 8, !tbaa !9
  %incdec.ptr539 = getelementptr inbounds float, ptr %737, i32 1
  store ptr %incdec.ptr539, ptr %i20, align 8, !tbaa !9
  %738 = load float, ptr %737, align 4, !tbaa !12
  store float %738, ptr %vi20, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20) #4
  %739 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx540 = getelementptr inbounds float, ptr %739, i64 41
  %740 = load float, ptr %arrayidx540, align 4, !tbaa !12
  store float %740, ptr %vk20, align 4, !tbaa !12
  %741 = load float, ptr %vi20, align 4, !tbaa !12
  %742 = load float, ptr %vk20, align 4, !tbaa !12
  %743 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call541 = call float @math_muladd_f32(float noundef %741, float noundef %742, float noundef %743)
  store float %call541, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi21) #4
  %744 = load ptr, ptr %i21, align 8, !tbaa !9
  %incdec.ptr542 = getelementptr inbounds float, ptr %744, i32 1
  store ptr %incdec.ptr542, ptr %i21, align 8, !tbaa !9
  %745 = load float, ptr %744, align 4, !tbaa !12
  store float %745, ptr %vi21, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21) #4
  %746 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx543 = getelementptr inbounds float, ptr %746, i64 43
  %747 = load float, ptr %arrayidx543, align 4, !tbaa !12
  store float %747, ptr %vk21, align 4, !tbaa !12
  %748 = load float, ptr %vi21, align 4, !tbaa !12
  %749 = load float, ptr %vk21, align 4, !tbaa !12
  %750 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call544 = call float @math_muladd_f32(float noundef %748, float noundef %749, float noundef %750)
  store float %call544, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi22) #4
  %751 = load ptr, ptr %i22, align 8, !tbaa !9
  %incdec.ptr545 = getelementptr inbounds float, ptr %751, i32 1
  store ptr %incdec.ptr545, ptr %i22, align 8, !tbaa !9
  %752 = load float, ptr %751, align 4, !tbaa !12
  store float %752, ptr %vi22, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22) #4
  %753 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx546 = getelementptr inbounds float, ptr %753, i64 45
  %754 = load float, ptr %arrayidx546, align 4, !tbaa !12
  store float %754, ptr %vk22, align 4, !tbaa !12
  %755 = load float, ptr %vi22, align 4, !tbaa !12
  %756 = load float, ptr %vk22, align 4, !tbaa !12
  %757 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call547 = call float @math_muladd_f32(float noundef %755, float noundef %756, float noundef %757)
  store float %call547, ptr %vacc0p0477, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi23) #4
  %758 = load ptr, ptr %i23, align 8, !tbaa !9
  %incdec.ptr548 = getelementptr inbounds float, ptr %758, i32 1
  store ptr %incdec.ptr548, ptr %i23, align 8, !tbaa !9
  %759 = load float, ptr %758, align 4, !tbaa !12
  store float %759, ptr %vi23, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk23) #4
  %760 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx549 = getelementptr inbounds float, ptr %760, i64 47
  %761 = load float, ptr %arrayidx549, align 4, !tbaa !12
  store float %761, ptr %vk23, align 4, !tbaa !12
  %762 = load float, ptr %vi23, align 4, !tbaa !12
  %763 = load float, ptr %vk23, align 4, !tbaa !12
  %764 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %call550 = call float @math_muladd_f32(float noundef %762, float noundef %763, float noundef %764)
  store float %call550, ptr %vacc0p1483, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi24) #4
  %765 = load ptr, ptr %i24, align 8, !tbaa !9
  %incdec.ptr551 = getelementptr inbounds float, ptr %765, i32 1
  store ptr %incdec.ptr551, ptr %i24, align 8, !tbaa !9
  %766 = load float, ptr %765, align 4, !tbaa !12
  store float %766, ptr %vi24, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk24) #4
  %767 = load ptr, ptr %w, align 8, !tbaa !9
  %arrayidx552 = getelementptr inbounds float, ptr %767, i64 49
  %768 = load float, ptr %arrayidx552, align 4, !tbaa !12
  store float %768, ptr %vk24, align 4, !tbaa !12
  %769 = load float, ptr %vi24, align 4, !tbaa !12
  %770 = load float, ptr %vk24, align 4, !tbaa !12
  %771 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %call553 = call float @math_muladd_f32(float noundef %769, float noundef %770, float noundef %771)
  store float %call553, ptr %vacc0p0477, align 4, !tbaa !12
  %772 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %773 = load float, ptr %vacc0p1483, align 4, !tbaa !12
  %add554 = fadd float %772, %773
  store float %add554, ptr %vacc0p0477, align 4, !tbaa !12
  %774 = load float, ptr %vacc0p0477, align 4, !tbaa !12
  %775 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %incdec.ptr555 = getelementptr inbounds float, ptr %775, i32 1
  store ptr %incdec.ptr555, ptr %output.addr, align 8, !tbaa !9
  store float %774, ptr %775, align 4, !tbaa !12
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0p1483) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0p0477) #4
  br label %for.inc556

for.inc556:                                       ; preds = %for.body476
  %776 = load i64, ptr %c, align 8, !tbaa !5
  %sub557 = sub i64 %776, 1
  store i64 %sub557, ptr %c, align 8, !tbaa !5
  br label %for.cond473, !llvm.loop !16

for.end558:                                       ; preds = %for.cond473
  %777 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %778 = ptrtoint ptr %777 to i64
  %779 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add559 = add i64 %778, %779
  %780 = inttoptr i64 %add559 to ptr
  store ptr %780, ptr %output.addr, align 8, !tbaa !9
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
  br label %do.cond

do.cond:                                          ; preds = %for.end558
  %781 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %781, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp560 = icmp ne i64 %dec, 0
  br i1 %cmp560, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_muladd_f32(float noundef %x, float noundef %y, float noundef %acc) #2 {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %acc.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4, !tbaa !12
  store float %y, ptr %y.addr, align 4, !tbaa !12
  store float %acc, ptr %acc.addr, align 4, !tbaa !12
  %0 = load float, ptr %x.addr, align 4, !tbaa !12
  %1 = load float, ptr %y.addr, align 4, !tbaa !12
  %2 = load float, ptr %acc.addr, align 4, !tbaa !12
  %3 = call float @llvm.fmuladd.f32(float %0, float %1, float %2)
  ret float %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}

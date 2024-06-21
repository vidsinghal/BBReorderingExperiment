; ModuleID = 'samples/586.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-requantization/gemmlowp-scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_qs8_requantize_gemmlowp__scalar(i64 noundef %n, ptr noundef %input, float noundef %scale, i8 noundef signext %zero_point, i8 noundef signext %qmin, i8 noundef signext %qmax, ptr noundef %output) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %scale.addr = alloca float, align 4
  %zero_point.addr = alloca i8, align 1
  %qmin.addr = alloca i8, align 1
  %qmax.addr = alloca i8, align 1
  %output.addr = alloca ptr, align 8
  %scale_bits = alloca i32, align 4
  %multiplier = alloca i32, align 4
  %shift = alloca i32, align 4
  %q31rounding = alloca i64, align 8
  %remainder_mask = alloca i32, align 4
  %threshold = alloca i32, align 4
  %smin = alloca i32, align 4
  %smax = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  %x_product = alloca i64, align 8
  %y_product = alloca i64, align 8
  %z_product = alloca i64, align 8
  %w_product = alloca i64, align 8
  %x_q31product = alloca i32, align 4
  %y_q31product = alloca i32, align 4
  %z_q31product = alloca i32, align 4
  %w_q31product = alloca i32, align 4
  %x_remainder = alloca i32, align 4
  %y_remainder = alloca i32, align 4
  %z_remainder = alloca i32, align 4
  %w_remainder = alloca i32, align 4
  %x_scaled = alloca i32, align 4
  %y_scaled = alloca i32, align 4
  %z_scaled = alloca i32, align 4
  %w_scaled = alloca i32, align 4
  %x_clamped = alloca i32, align 4
  %y_clamped = alloca i32, align 4
  %z_clamped = alloca i32, align 4
  %w_clamped = alloca i32, align 4
  %x_biased = alloca i32, align 4
  %y_biased = alloca i32, align 4
  %z_biased = alloca i32, align 4
  %w_biased = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store float %scale, ptr %scale.addr, align 4, !tbaa !11
  store i8 %zero_point, ptr %zero_point.addr, align 1, !tbaa !13
  store i8 %qmin, ptr %qmin.addr, align 1, !tbaa !13
  store i8 %qmax, ptr %qmax.addr, align 1, !tbaa !13
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %scale_bits) #3
  %0 = load float, ptr %scale.addr, align 4, !tbaa !11
  %call = call i32 @fp32_to_bits(float noundef %0)
  store i32 %call, ptr %scale_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %multiplier) #3
  %1 = load i32, ptr %scale_bits, align 4, !tbaa !14
  %and = and i32 %1, 8388607
  %or = or i32 %and, 8388608
  %shl = shl i32 %or, 7
  store i32 %shl, ptr %multiplier, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #3
  %2 = load float, ptr %scale.addr, align 4, !tbaa !11
  %call1 = call i32 @fp32_to_bits(float noundef %2)
  %shr = lshr i32 %call1, 23
  %sub = sub i32 126, %shr
  store i32 %sub, ptr %shift, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %q31rounding) #3
  store i64 1073741824, ptr %q31rounding, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder_mask) #3
  %3 = load i32, ptr %shift, align 4, !tbaa !14
  %shl2 = shl i32 1, %3
  %sub3 = sub i32 %shl2, 1
  store i32 %sub3, ptr %remainder_mask, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %threshold) #3
  %4 = load i32, ptr %remainder_mask, align 4, !tbaa !14
  %shr4 = lshr i32 %4, 1
  store i32 %shr4, ptr %threshold, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %smin) #3
  %5 = load i8, ptr %qmin.addr, align 1, !tbaa !13
  %conv = sext i8 %5 to i32
  %6 = load i8, ptr %zero_point.addr, align 1, !tbaa !13
  %conv5 = sext i8 %6 to i32
  %sub6 = sub nsw i32 %conv, %conv5
  store i32 %sub6, ptr %smin, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %smax) #3
  %7 = load i8, ptr %qmax.addr, align 1, !tbaa !13
  %conv7 = sext i8 %7 to i32
  %8 = load i8, ptr %zero_point.addr, align 1, !tbaa !13
  %conv8 = sext i8 %8 to i32
  %sub9 = sub nsw i32 %conv7, %conv8
  store i32 %sub9, ptr %smax, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  %10 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 0
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !14
  store i32 %11, ptr %x, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #3
  %12 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx11 = getelementptr inbounds i32, ptr %12, i64 1
  %13 = load i32, ptr %arrayidx11, align 4, !tbaa !14
  store i32 %13, ptr %y, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #3
  %14 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds i32, ptr %14, i64 2
  %15 = load i32, ptr %arrayidx12, align 4, !tbaa !14
  store i32 %15, ptr %z, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #3
  %16 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds i32, ptr %16, i64 3
  %17 = load i32, ptr %arrayidx13, align 4, !tbaa !14
  store i32 %17, ptr %w, align 4, !tbaa !14
  %18 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %18, i64 4
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_product) #3
  %19 = load i32, ptr %x, align 4, !tbaa !14
  %conv14 = sext i32 %19 to i64
  %20 = load i32, ptr %multiplier, align 4, !tbaa !14
  %conv15 = sext i32 %20 to i64
  %mul = mul nsw i64 %conv14, %conv15
  store i64 %mul, ptr %x_product, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_product) #3
  %21 = load i32, ptr %y, align 4, !tbaa !14
  %conv16 = sext i32 %21 to i64
  %22 = load i32, ptr %multiplier, align 4, !tbaa !14
  %conv17 = sext i32 %22 to i64
  %mul18 = mul nsw i64 %conv16, %conv17
  store i64 %mul18, ptr %y_product, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z_product) #3
  %23 = load i32, ptr %z, align 4, !tbaa !14
  %conv19 = sext i32 %23 to i64
  %24 = load i32, ptr %multiplier, align 4, !tbaa !14
  %conv20 = sext i32 %24 to i64
  %mul21 = mul nsw i64 %conv19, %conv20
  store i64 %mul21, ptr %z_product, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w_product) #3
  %25 = load i32, ptr %w, align 4, !tbaa !14
  %conv22 = sext i32 %25 to i64
  %26 = load i32, ptr %multiplier, align 4, !tbaa !14
  %conv23 = sext i32 %26 to i64
  %mul24 = mul nsw i64 %conv22, %conv23
  store i64 %mul24, ptr %w_product, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_q31product) #3
  %27 = load i64, ptr %x_product, align 8, !tbaa !5
  %add = add nsw i64 %27, 1073741824
  %shr25 = lshr i64 %add, 31
  %conv26 = trunc i64 %shr25 to i32
  store i32 %conv26, ptr %x_q31product, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_q31product) #3
  %28 = load i64, ptr %y_product, align 8, !tbaa !5
  %add27 = add nsw i64 %28, 1073741824
  %shr28 = lshr i64 %add27, 31
  %conv29 = trunc i64 %shr28 to i32
  store i32 %conv29, ptr %y_q31product, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_q31product) #3
  %29 = load i64, ptr %z_product, align 8, !tbaa !5
  %add30 = add nsw i64 %29, 1073741824
  %shr31 = lshr i64 %add30, 31
  %conv32 = trunc i64 %shr31 to i32
  store i32 %conv32, ptr %z_q31product, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_q31product) #3
  %30 = load i64, ptr %w_product, align 8, !tbaa !5
  %add33 = add nsw i64 %30, 1073741824
  %shr34 = lshr i64 %add33, 31
  %conv35 = trunc i64 %shr34 to i32
  store i32 %conv35, ptr %w_q31product, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_remainder) #3
  %31 = load i32, ptr %x_q31product, align 4, !tbaa !14
  %32 = load i32, ptr %remainder_mask, align 4, !tbaa !14
  %and36 = and i32 %31, %32
  %33 = load i32, ptr %x_q31product, align 4, !tbaa !14
  %cmp37 = icmp slt i32 %33, 0
  %conv38 = zext i1 %cmp37 to i32
  %sub39 = sub nsw i32 %and36, %conv38
  store i32 %sub39, ptr %x_remainder, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_remainder) #3
  %34 = load i32, ptr %y_q31product, align 4, !tbaa !14
  %35 = load i32, ptr %remainder_mask, align 4, !tbaa !14
  %and40 = and i32 %34, %35
  %36 = load i32, ptr %y_q31product, align 4, !tbaa !14
  %cmp41 = icmp slt i32 %36, 0
  %conv42 = zext i1 %cmp41 to i32
  %sub43 = sub nsw i32 %and40, %conv42
  store i32 %sub43, ptr %y_remainder, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_remainder) #3
  %37 = load i32, ptr %z_q31product, align 4, !tbaa !14
  %38 = load i32, ptr %remainder_mask, align 4, !tbaa !14
  %and44 = and i32 %37, %38
  %39 = load i32, ptr %z_q31product, align 4, !tbaa !14
  %cmp45 = icmp slt i32 %39, 0
  %conv46 = zext i1 %cmp45 to i32
  %sub47 = sub nsw i32 %and44, %conv46
  store i32 %sub47, ptr %z_remainder, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_remainder) #3
  %40 = load i32, ptr %w_q31product, align 4, !tbaa !14
  %41 = load i32, ptr %remainder_mask, align 4, !tbaa !14
  %and48 = and i32 %40, %41
  %42 = load i32, ptr %w_q31product, align 4, !tbaa !14
  %cmp49 = icmp slt i32 %42, 0
  %conv50 = zext i1 %cmp49 to i32
  %sub51 = sub nsw i32 %and48, %conv50
  store i32 %sub51, ptr %w_remainder, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_scaled) #3
  %43 = load i32, ptr %x_q31product, align 4, !tbaa !14
  %44 = load i32, ptr %shift, align 4, !tbaa !14
  %call52 = call i32 @asr_s32(i32 noundef %43, i32 noundef %44)
  %45 = load i32, ptr %x_remainder, align 4, !tbaa !14
  %46 = load i32, ptr %threshold, align 4, !tbaa !14
  %cmp53 = icmp sgt i32 %45, %46
  %conv54 = zext i1 %cmp53 to i32
  %add55 = add nsw i32 %call52, %conv54
  store i32 %add55, ptr %x_scaled, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_scaled) #3
  %47 = load i32, ptr %y_q31product, align 4, !tbaa !14
  %48 = load i32, ptr %shift, align 4, !tbaa !14
  %call56 = call i32 @asr_s32(i32 noundef %47, i32 noundef %48)
  %49 = load i32, ptr %y_remainder, align 4, !tbaa !14
  %50 = load i32, ptr %threshold, align 4, !tbaa !14
  %cmp57 = icmp sgt i32 %49, %50
  %conv58 = zext i1 %cmp57 to i32
  %add59 = add nsw i32 %call56, %conv58
  store i32 %add59, ptr %y_scaled, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_scaled) #3
  %51 = load i32, ptr %z_q31product, align 4, !tbaa !14
  %52 = load i32, ptr %shift, align 4, !tbaa !14
  %call60 = call i32 @asr_s32(i32 noundef %51, i32 noundef %52)
  %53 = load i32, ptr %z_remainder, align 4, !tbaa !14
  %54 = load i32, ptr %threshold, align 4, !tbaa !14
  %cmp61 = icmp sgt i32 %53, %54
  %conv62 = zext i1 %cmp61 to i32
  %add63 = add nsw i32 %call60, %conv62
  store i32 %add63, ptr %z_scaled, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_scaled) #3
  %55 = load i32, ptr %w_q31product, align 4, !tbaa !14
  %56 = load i32, ptr %shift, align 4, !tbaa !14
  %call64 = call i32 @asr_s32(i32 noundef %55, i32 noundef %56)
  %57 = load i32, ptr %w_remainder, align 4, !tbaa !14
  %58 = load i32, ptr %threshold, align 4, !tbaa !14
  %cmp65 = icmp sgt i32 %57, %58
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nsw i32 %call64, %conv66
  store i32 %add67, ptr %w_scaled, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_clamped) #3
  %59 = load i32, ptr %x_scaled, align 4, !tbaa !14
  %60 = load i32, ptr %smin, align 4, !tbaa !14
  %call68 = call i32 @math_max_s32(i32 noundef %59, i32 noundef %60)
  %61 = load i32, ptr %smax, align 4, !tbaa !14
  %call69 = call i32 @math_min_s32(i32 noundef %call68, i32 noundef %61)
  store i32 %call69, ptr %x_clamped, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_clamped) #3
  %62 = load i32, ptr %y_scaled, align 4, !tbaa !14
  %63 = load i32, ptr %smin, align 4, !tbaa !14
  %call70 = call i32 @math_max_s32(i32 noundef %62, i32 noundef %63)
  %64 = load i32, ptr %smax, align 4, !tbaa !14
  %call71 = call i32 @math_min_s32(i32 noundef %call70, i32 noundef %64)
  store i32 %call71, ptr %y_clamped, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_clamped) #3
  %65 = load i32, ptr %z_scaled, align 4, !tbaa !14
  %66 = load i32, ptr %smin, align 4, !tbaa !14
  %call72 = call i32 @math_max_s32(i32 noundef %65, i32 noundef %66)
  %67 = load i32, ptr %smax, align 4, !tbaa !14
  %call73 = call i32 @math_min_s32(i32 noundef %call72, i32 noundef %67)
  store i32 %call73, ptr %z_clamped, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_clamped) #3
  %68 = load i32, ptr %w_scaled, align 4, !tbaa !14
  %69 = load i32, ptr %smin, align 4, !tbaa !14
  %call74 = call i32 @math_max_s32(i32 noundef %68, i32 noundef %69)
  %70 = load i32, ptr %smax, align 4, !tbaa !14
  %call75 = call i32 @math_min_s32(i32 noundef %call74, i32 noundef %70)
  store i32 %call75, ptr %w_clamped, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_biased) #3
  %71 = load i32, ptr %x_clamped, align 4, !tbaa !14
  %72 = load i8, ptr %zero_point.addr, align 1, !tbaa !13
  %conv76 = sext i8 %72 to i32
  %add77 = add nsw i32 %71, %conv76
  store i32 %add77, ptr %x_biased, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_biased) #3
  %73 = load i32, ptr %y_clamped, align 4, !tbaa !14
  %74 = load i8, ptr %zero_point.addr, align 1, !tbaa !13
  %conv78 = sext i8 %74 to i32
  %add79 = add nsw i32 %73, %conv78
  store i32 %add79, ptr %y_biased, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_biased) #3
  %75 = load i32, ptr %z_clamped, align 4, !tbaa !14
  %76 = load i8, ptr %zero_point.addr, align 1, !tbaa !13
  %conv80 = sext i8 %76 to i32
  %add81 = add nsw i32 %75, %conv80
  store i32 %add81, ptr %z_biased, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_biased) #3
  %77 = load i32, ptr %w_clamped, align 4, !tbaa !14
  %78 = load i8, ptr %zero_point.addr, align 1, !tbaa !13
  %conv82 = sext i8 %78 to i32
  %add83 = add nsw i32 %77, %conv82
  store i32 %add83, ptr %w_biased, align 4, !tbaa !14
  %79 = load i32, ptr %x_biased, align 4, !tbaa !14
  %conv84 = trunc i32 %79 to i8
  %80 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx85 = getelementptr inbounds i8, ptr %80, i64 0
  store i8 %conv84, ptr %arrayidx85, align 1, !tbaa !13
  %81 = load i32, ptr %y_biased, align 4, !tbaa !14
  %conv86 = trunc i32 %81 to i8
  %82 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx87 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %conv86, ptr %arrayidx87, align 1, !tbaa !13
  %83 = load i32, ptr %z_biased, align 4, !tbaa !14
  %conv88 = trunc i32 %83 to i8
  %84 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx89 = getelementptr inbounds i8, ptr %84, i64 2
  store i8 %conv88, ptr %arrayidx89, align 1, !tbaa !13
  %85 = load i32, ptr %w_biased, align 4, !tbaa !14
  %conv90 = trunc i32 %85 to i8
  %86 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx91 = getelementptr inbounds i8, ptr %86, i64 3
  store i8 %conv90, ptr %arrayidx91, align 1, !tbaa !13
  %87 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr92 = getelementptr inbounds i8, ptr %87, i64 4
  store ptr %add.ptr92, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_biased) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_biased) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_biased) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_biased) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_clamped) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_clamped) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_clamped) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_clamped) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_scaled) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_scaled) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_scaled) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_scaled) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_remainder) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_remainder) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_remainder) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_remainder) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_q31product) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_q31product) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_q31product) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_q31product) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %w_product) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %z_product) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_product) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_product) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %88 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub93 = sub i64 %88, 4
  store i64 %sub93, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %smax) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %smin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %threshold) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder_mask) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %q31rounding) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %multiplier) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %scale_bits) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #2 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #3
  %0 = load float, ptr %f.addr, align 4, !tbaa !11
  store float %0, ptr %fp32, align 4, !tbaa !13
  %1 = load i32, ptr %fp32, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #3
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @asr_s32(i32 noundef %x, i32 noundef %n) #2 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !14
  store i32 %n, ptr %n.addr, align 4, !tbaa !14
  %0 = load i32, ptr %x.addr, align 4, !tbaa !14
  %1 = load i32, ptr %n.addr, align 4, !tbaa !14
  %shr = ashr i32 %0, %1
  ret i32 %shr
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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

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
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{}

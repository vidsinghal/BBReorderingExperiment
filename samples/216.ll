; ModuleID = 'samples/216.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-gavgpool/gen/7p7x-minmax-fp32-scalar-imagic-c4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i32, float, float, i32, i32, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4(i64 noundef %rows, i64 noundef %channels, ptr noundef %input, i64 noundef %input_stride, ptr noundef %zero, ptr noundef %buffer, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(112) %params) #0 {
entry:
  %rows.addr = alloca i64, align 8
  %channels.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %input_increment = alloca i64, align 8
  %vinit_bias = alloca i32, align 4
  %b = alloca ptr, align 8
  %c = alloca i64, align 8
  %vi0x0 = alloca i32, align 4
  %vi0x1 = alloca i32, align 4
  %vi0x2 = alloca i32, align 4
  %vi0x3 = alloca i32, align 4
  %vacc0 = alloca i32, align 4
  %vi1x0 = alloca i32, align 4
  %vacc1 = alloca i32, align 4
  %vi1x1 = alloca i32, align 4
  %vacc2 = alloca i32, align 4
  %vi1x2 = alloca i32, align 4
  %vacc3 = alloca i32, align 4
  %vi1x3 = alloca i32, align 4
  %vi2x0 = alloca i32, align 4
  %vi2x1 = alloca i32, align 4
  %vi2x2 = alloca i32, align 4
  %vi2x3 = alloca i32, align 4
  %vi3x0 = alloca i32, align 4
  %vi3x1 = alloca i32, align 4
  %vi3x2 = alloca i32, align 4
  %vi3x3 = alloca i32, align 4
  %vi4x0 = alloca i32, align 4
  %vi4x1 = alloca i32, align 4
  %vi4x2 = alloca i32, align 4
  %vi4x3 = alloca i32, align 4
  %vi5x0 = alloca i32, align 4
  %vi5x1 = alloca i32, align 4
  %vi5x2 = alloca i32, align 4
  %vi5x3 = alloca i32, align 4
  %vi6x0 = alloca i32, align 4
  %vi6x1 = alloca i32, align 4
  %vi6x2 = alloca i32, align 4
  %vi6x3 = alloca i32, align 4
  %b113 = alloca ptr, align 8
  %c114 = alloca i64, align 8
  %vacc0120 = alloca i32, align 4
  %vi0x0122 = alloca i32, align 4
  %vacc1125 = alloca i32, align 4
  %vi0x1127 = alloca i32, align 4
  %vacc2130 = alloca i32, align 4
  %vi0x2132 = alloca i32, align 4
  %vacc3135 = alloca i32, align 4
  %vi0x3137 = alloca i32, align 4
  %vi1x0142 = alloca i32, align 4
  %vi1x1146 = alloca i32, align 4
  %vi1x2150 = alloca i32, align 4
  %vi1x3154 = alloca i32, align 4
  %vi2x0159 = alloca i32, align 4
  %vi2x1163 = alloca i32, align 4
  %vi2x2167 = alloca i32, align 4
  %vi2x3171 = alloca i32, align 4
  %vi3x0176 = alloca i32, align 4
  %vi3x1180 = alloca i32, align 4
  %vi3x2184 = alloca i32, align 4
  %vi3x3188 = alloca i32, align 4
  %vi4x0193 = alloca i32, align 4
  %vi4x1197 = alloca i32, align 4
  %vi4x2201 = alloca i32, align 4
  %vi4x3205 = alloca i32, align 4
  %vi5x0210 = alloca i32, align 4
  %vi5x1214 = alloca i32, align 4
  %vi5x2218 = alloca i32, align 4
  %vi5x3222 = alloca i32, align 4
  %vi6x0227 = alloca i32, align 4
  %vi6x1231 = alloca i32, align 4
  %vi6x2235 = alloca i32, align 4
  %vi6x3239 = alloca i32, align 4
  %vscale = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_min = alloca i32, align 4
  %vmagic_max = alloca i32, align 4
  %vmagic_bias_less_zero_point = alloca i32, align 4
  %vacc0323 = alloca i32, align 4
  %vi0x0325 = alloca i32, align 4
  %vacc1328 = alloca i32, align 4
  %vi0x1330 = alloca i32, align 4
  %vacc2333 = alloca i32, align 4
  %vi0x2335 = alloca i32, align 4
  %vacc3338 = alloca i32, align 4
  %vi0x3340 = alloca i32, align 4
  %vi1x0346 = alloca i32, align 4
  %vi1x1350 = alloca i32, align 4
  %vi1x2354 = alloca i32, align 4
  %vi1x3358 = alloca i32, align 4
  %vi2x0363 = alloca i32, align 4
  %vi2x1367 = alloca i32, align 4
  %vi2x2371 = alloca i32, align 4
  %vi2x3375 = alloca i32, align 4
  %vi3x0380 = alloca i32, align 4
  %vi3x1384 = alloca i32, align 4
  %vi3x2388 = alloca i32, align 4
  %vi3x3392 = alloca i32, align 4
  %vi4x0397 = alloca i32, align 4
  %vi4x1401 = alloca i32, align 4
  %vi4x2405 = alloca i32, align 4
  %vi4x3409 = alloca i32, align 4
  %vi5x0414 = alloca i32, align 4
  %vi5x1418 = alloca i32, align 4
  %vi5x2422 = alloca i32, align 4
  %vi5x3426 = alloca i32, align 4
  %vi6x0431 = alloca i32, align 4
  %vi6x1435 = alloca i32, align 4
  %vi6x2439 = alloca i32, align 4
  %vi6x3443 = alloca i32, align 4
  %vfpacc0 = alloca float, align 4
  %vfpacc1 = alloca float, align 4
  %vfpacc2 = alloca float, align 4
  %vfpacc3 = alloca float, align 4
  %vout0 = alloca i32, align 4
  %vout1 = alloca i32, align 4
  %vout2 = alloca i32, align 4
  %vout3 = alloca i32, align 4
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
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !9
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #4
  %5 = load ptr, ptr %i1, align 8, !tbaa !9
  %6 = ptrtoint ptr %5 to i64
  %7 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add1 = add i64 %6, %7
  %8 = inttoptr i64 %add1 to ptr
  store ptr %8, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #4
  %9 = load ptr, ptr %i2, align 8, !tbaa !9
  %10 = ptrtoint ptr %9 to i64
  %11 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add2 = add i64 %10, %11
  %12 = inttoptr i64 %add2 to ptr
  store ptr %12, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #4
  %13 = load ptr, ptr %i3, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add3 = add i64 %14, %15
  %16 = inttoptr i64 %add3 to ptr
  store ptr %16, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #4
  %17 = load ptr, ptr %i4, align 8, !tbaa !9
  %18 = ptrtoint ptr %17 to i64
  %19 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add4 = add i64 %18, %19
  %20 = inttoptr i64 %add4 to ptr
  store ptr %20, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #4
  %21 = load ptr, ptr %i5, align 8, !tbaa !9
  %22 = ptrtoint ptr %21 to i64
  %23 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add5 = add i64 %22, %23
  %24 = inttoptr i64 %add5 to ptr
  store ptr %24, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_increment) #4
  %25 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %mul = mul i64 7, %25
  %26 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %call = call i64 @round_up_po2(i64 noundef %26, i64 noundef 4)
  %mul6 = mul i64 %call, 1
  %sub = sub i64 %mul, %mul6
  store i64 %sub, ptr %input_increment, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %vinit_bias) #4
  %27 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %init_bias = getelementptr inbounds %struct.anon.0, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %init_bias, align 16, !tbaa !11
  store i32 %28, ptr %vinit_bias, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4
  %29 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  store ptr %29, ptr %b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  %30 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %30, ptr %c, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i64, ptr %c, align 8, !tbaa !5
  %cmp = icmp sgt i64 %31, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x0) #4
  %32 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv = zext i8 %33 to i32
  store i32 %conv, ptr %vi0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x1) #4
  %34 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load i8, ptr %arrayidx7, align 1, !tbaa !11
  %conv8 = zext i8 %35 to i32
  store i32 %conv8, ptr %vi0x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x2) #4
  %36 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds i8, ptr %36, i64 2
  %37 = load i8, ptr %arrayidx9, align 1, !tbaa !11
  %conv10 = zext i8 %37 to i32
  store i32 %conv10, ptr %vi0x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x3) #4
  %38 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx11 = getelementptr inbounds i8, ptr %38, i64 3
  %39 = load i8, ptr %arrayidx11, align 1, !tbaa !11
  %conv12 = zext i8 %39 to i32
  store i32 %conv12, ptr %vi0x3, align 4, !tbaa !12
  %40 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 4
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0) #4
  %41 = load i32, ptr %vi0x0, align 4, !tbaa !12
  %42 = load i32, ptr %vinit_bias, align 4, !tbaa !12
  %add13 = add nsw i32 %41, %42
  store i32 %add13, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x0) #4
  %43 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx14, align 1, !tbaa !11
  %conv15 = zext i8 %44 to i32
  store i32 %conv15, ptr %vi1x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1) #4
  %45 = load i32, ptr %vi0x1, align 4, !tbaa !12
  %46 = load i32, ptr %vinit_bias, align 4, !tbaa !12
  %add16 = add nsw i32 %45, %46
  store i32 %add16, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x1) #4
  %47 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx17 = getelementptr inbounds i8, ptr %47, i64 1
  %48 = load i8, ptr %arrayidx17, align 1, !tbaa !11
  %conv18 = zext i8 %48 to i32
  store i32 %conv18, ptr %vi1x1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2) #4
  %49 = load i32, ptr %vi0x2, align 4, !tbaa !12
  %50 = load i32, ptr %vinit_bias, align 4, !tbaa !12
  %add19 = add nsw i32 %49, %50
  store i32 %add19, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x2) #4
  %51 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx20 = getelementptr inbounds i8, ptr %51, i64 2
  %52 = load i8, ptr %arrayidx20, align 1, !tbaa !11
  %conv21 = zext i8 %52 to i32
  store i32 %conv21, ptr %vi1x2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3) #4
  %53 = load i32, ptr %vi0x3, align 4, !tbaa !12
  %54 = load i32, ptr %vinit_bias, align 4, !tbaa !12
  %add22 = add nsw i32 %53, %54
  store i32 %add22, ptr %vacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x3) #4
  %55 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds i8, ptr %55, i64 3
  %56 = load i8, ptr %arrayidx23, align 1, !tbaa !11
  %conv24 = zext i8 %56 to i32
  store i32 %conv24, ptr %vi1x3, align 4, !tbaa !12
  %57 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr25 = getelementptr inbounds i8, ptr %57, i64 4
  store ptr %add.ptr25, ptr %i1, align 8, !tbaa !9
  %58 = load i32, ptr %vi1x0, align 4, !tbaa !12
  %59 = load i32, ptr %vacc0, align 4, !tbaa !12
  %add26 = add nsw i32 %59, %58
  store i32 %add26, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x0) #4
  %60 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds i8, ptr %60, i64 0
  %61 = load i8, ptr %arrayidx27, align 1, !tbaa !11
  %conv28 = zext i8 %61 to i32
  store i32 %conv28, ptr %vi2x0, align 4, !tbaa !12
  %62 = load i32, ptr %vi1x1, align 4, !tbaa !12
  %63 = load i32, ptr %vacc1, align 4, !tbaa !12
  %add29 = add nsw i32 %63, %62
  store i32 %add29, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x1) #4
  %64 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds i8, ptr %64, i64 1
  %65 = load i8, ptr %arrayidx30, align 1, !tbaa !11
  %conv31 = zext i8 %65 to i32
  store i32 %conv31, ptr %vi2x1, align 4, !tbaa !12
  %66 = load i32, ptr %vi1x2, align 4, !tbaa !12
  %67 = load i32, ptr %vacc2, align 4, !tbaa !12
  %add32 = add nsw i32 %67, %66
  store i32 %add32, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x2) #4
  %68 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx33 = getelementptr inbounds i8, ptr %68, i64 2
  %69 = load i8, ptr %arrayidx33, align 1, !tbaa !11
  %conv34 = zext i8 %69 to i32
  store i32 %conv34, ptr %vi2x2, align 4, !tbaa !12
  %70 = load i32, ptr %vi1x3, align 4, !tbaa !12
  %71 = load i32, ptr %vacc3, align 4, !tbaa !12
  %add35 = add nsw i32 %71, %70
  store i32 %add35, ptr %vacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x3) #4
  %72 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx36 = getelementptr inbounds i8, ptr %72, i64 3
  %73 = load i8, ptr %arrayidx36, align 1, !tbaa !11
  %conv37 = zext i8 %73 to i32
  store i32 %conv37, ptr %vi2x3, align 4, !tbaa !12
  %74 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr38 = getelementptr inbounds i8, ptr %74, i64 4
  store ptr %add.ptr38, ptr %i2, align 8, !tbaa !9
  %75 = load i32, ptr %vi2x0, align 4, !tbaa !12
  %76 = load i32, ptr %vacc0, align 4, !tbaa !12
  %add39 = add nsw i32 %76, %75
  store i32 %add39, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x0) #4
  %77 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx40 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx40, align 1, !tbaa !11
  %conv41 = zext i8 %78 to i32
  store i32 %conv41, ptr %vi3x0, align 4, !tbaa !12
  %79 = load i32, ptr %vi2x1, align 4, !tbaa !12
  %80 = load i32, ptr %vacc1, align 4, !tbaa !12
  %add42 = add nsw i32 %80, %79
  store i32 %add42, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x1) #4
  %81 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx43 = getelementptr inbounds i8, ptr %81, i64 1
  %82 = load i8, ptr %arrayidx43, align 1, !tbaa !11
  %conv44 = zext i8 %82 to i32
  store i32 %conv44, ptr %vi3x1, align 4, !tbaa !12
  %83 = load i32, ptr %vi2x2, align 4, !tbaa !12
  %84 = load i32, ptr %vacc2, align 4, !tbaa !12
  %add45 = add nsw i32 %84, %83
  store i32 %add45, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x2) #4
  %85 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx46 = getelementptr inbounds i8, ptr %85, i64 2
  %86 = load i8, ptr %arrayidx46, align 1, !tbaa !11
  %conv47 = zext i8 %86 to i32
  store i32 %conv47, ptr %vi3x2, align 4, !tbaa !12
  %87 = load i32, ptr %vi2x3, align 4, !tbaa !12
  %88 = load i32, ptr %vacc3, align 4, !tbaa !12
  %add48 = add nsw i32 %88, %87
  store i32 %add48, ptr %vacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x3) #4
  %89 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx49 = getelementptr inbounds i8, ptr %89, i64 3
  %90 = load i8, ptr %arrayidx49, align 1, !tbaa !11
  %conv50 = zext i8 %90 to i32
  store i32 %conv50, ptr %vi3x3, align 4, !tbaa !12
  %91 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr51 = getelementptr inbounds i8, ptr %91, i64 4
  store ptr %add.ptr51, ptr %i3, align 8, !tbaa !9
  %92 = load i32, ptr %vi3x0, align 4, !tbaa !12
  %93 = load i32, ptr %vacc0, align 4, !tbaa !12
  %add52 = add nsw i32 %93, %92
  store i32 %add52, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x0) #4
  %94 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx53 = getelementptr inbounds i8, ptr %94, i64 0
  %95 = load i8, ptr %arrayidx53, align 1, !tbaa !11
  %conv54 = zext i8 %95 to i32
  store i32 %conv54, ptr %vi4x0, align 4, !tbaa !12
  %96 = load i32, ptr %vi3x1, align 4, !tbaa !12
  %97 = load i32, ptr %vacc1, align 4, !tbaa !12
  %add55 = add nsw i32 %97, %96
  store i32 %add55, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x1) #4
  %98 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx56 = getelementptr inbounds i8, ptr %98, i64 1
  %99 = load i8, ptr %arrayidx56, align 1, !tbaa !11
  %conv57 = zext i8 %99 to i32
  store i32 %conv57, ptr %vi4x1, align 4, !tbaa !12
  %100 = load i32, ptr %vi3x2, align 4, !tbaa !12
  %101 = load i32, ptr %vacc2, align 4, !tbaa !12
  %add58 = add nsw i32 %101, %100
  store i32 %add58, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x2) #4
  %102 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx59 = getelementptr inbounds i8, ptr %102, i64 2
  %103 = load i8, ptr %arrayidx59, align 1, !tbaa !11
  %conv60 = zext i8 %103 to i32
  store i32 %conv60, ptr %vi4x2, align 4, !tbaa !12
  %104 = load i32, ptr %vi3x3, align 4, !tbaa !12
  %105 = load i32, ptr %vacc3, align 4, !tbaa !12
  %add61 = add nsw i32 %105, %104
  store i32 %add61, ptr %vacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x3) #4
  %106 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx62 = getelementptr inbounds i8, ptr %106, i64 3
  %107 = load i8, ptr %arrayidx62, align 1, !tbaa !11
  %conv63 = zext i8 %107 to i32
  store i32 %conv63, ptr %vi4x3, align 4, !tbaa !12
  %108 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr64 = getelementptr inbounds i8, ptr %108, i64 4
  store ptr %add.ptr64, ptr %i4, align 8, !tbaa !9
  %109 = load i32, ptr %vi4x0, align 4, !tbaa !12
  %110 = load i32, ptr %vacc0, align 4, !tbaa !12
  %add65 = add nsw i32 %110, %109
  store i32 %add65, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x0) #4
  %111 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx66 = getelementptr inbounds i8, ptr %111, i64 0
  %112 = load i8, ptr %arrayidx66, align 1, !tbaa !11
  %conv67 = zext i8 %112 to i32
  store i32 %conv67, ptr %vi5x0, align 4, !tbaa !12
  %113 = load i32, ptr %vi4x1, align 4, !tbaa !12
  %114 = load i32, ptr %vacc1, align 4, !tbaa !12
  %add68 = add nsw i32 %114, %113
  store i32 %add68, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x1) #4
  %115 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx69 = getelementptr inbounds i8, ptr %115, i64 1
  %116 = load i8, ptr %arrayidx69, align 1, !tbaa !11
  %conv70 = zext i8 %116 to i32
  store i32 %conv70, ptr %vi5x1, align 4, !tbaa !12
  %117 = load i32, ptr %vi4x2, align 4, !tbaa !12
  %118 = load i32, ptr %vacc2, align 4, !tbaa !12
  %add71 = add nsw i32 %118, %117
  store i32 %add71, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x2) #4
  %119 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx72 = getelementptr inbounds i8, ptr %119, i64 2
  %120 = load i8, ptr %arrayidx72, align 1, !tbaa !11
  %conv73 = zext i8 %120 to i32
  store i32 %conv73, ptr %vi5x2, align 4, !tbaa !12
  %121 = load i32, ptr %vi4x3, align 4, !tbaa !12
  %122 = load i32, ptr %vacc3, align 4, !tbaa !12
  %add74 = add nsw i32 %122, %121
  store i32 %add74, ptr %vacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x3) #4
  %123 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx75 = getelementptr inbounds i8, ptr %123, i64 3
  %124 = load i8, ptr %arrayidx75, align 1, !tbaa !11
  %conv76 = zext i8 %124 to i32
  store i32 %conv76, ptr %vi5x3, align 4, !tbaa !12
  %125 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr77 = getelementptr inbounds i8, ptr %125, i64 4
  store ptr %add.ptr77, ptr %i5, align 8, !tbaa !9
  %126 = load i32, ptr %vi5x0, align 4, !tbaa !12
  %127 = load i32, ptr %vacc0, align 4, !tbaa !12
  %add78 = add nsw i32 %127, %126
  store i32 %add78, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x0) #4
  %128 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx79 = getelementptr inbounds i8, ptr %128, i64 0
  %129 = load i8, ptr %arrayidx79, align 1, !tbaa !11
  %conv80 = zext i8 %129 to i32
  store i32 %conv80, ptr %vi6x0, align 4, !tbaa !12
  %130 = load i32, ptr %vi5x1, align 4, !tbaa !12
  %131 = load i32, ptr %vacc1, align 4, !tbaa !12
  %add81 = add nsw i32 %131, %130
  store i32 %add81, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x1) #4
  %132 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx82 = getelementptr inbounds i8, ptr %132, i64 1
  %133 = load i8, ptr %arrayidx82, align 1, !tbaa !11
  %conv83 = zext i8 %133 to i32
  store i32 %conv83, ptr %vi6x1, align 4, !tbaa !12
  %134 = load i32, ptr %vi5x2, align 4, !tbaa !12
  %135 = load i32, ptr %vacc2, align 4, !tbaa !12
  %add84 = add nsw i32 %135, %134
  store i32 %add84, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x2) #4
  %136 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx85 = getelementptr inbounds i8, ptr %136, i64 2
  %137 = load i8, ptr %arrayidx85, align 1, !tbaa !11
  %conv86 = zext i8 %137 to i32
  store i32 %conv86, ptr %vi6x2, align 4, !tbaa !12
  %138 = load i32, ptr %vi5x3, align 4, !tbaa !12
  %139 = load i32, ptr %vacc3, align 4, !tbaa !12
  %add87 = add nsw i32 %139, %138
  store i32 %add87, ptr %vacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x3) #4
  %140 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx88 = getelementptr inbounds i8, ptr %140, i64 3
  %141 = load i8, ptr %arrayidx88, align 1, !tbaa !11
  %conv89 = zext i8 %141 to i32
  store i32 %conv89, ptr %vi6x3, align 4, !tbaa !12
  %142 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr90 = getelementptr inbounds i8, ptr %142, i64 4
  store ptr %add.ptr90, ptr %i6, align 8, !tbaa !9
  %143 = load i32, ptr %vi6x0, align 4, !tbaa !12
  %144 = load i32, ptr %vacc0, align 4, !tbaa !12
  %add91 = add nsw i32 %144, %143
  store i32 %add91, ptr %vacc0, align 4, !tbaa !12
  %145 = load i32, ptr %vi6x1, align 4, !tbaa !12
  %146 = load i32, ptr %vacc1, align 4, !tbaa !12
  %add92 = add nsw i32 %146, %145
  store i32 %add92, ptr %vacc1, align 4, !tbaa !12
  %147 = load i32, ptr %vi6x2, align 4, !tbaa !12
  %148 = load i32, ptr %vacc2, align 4, !tbaa !12
  %add93 = add nsw i32 %148, %147
  store i32 %add93, ptr %vacc2, align 4, !tbaa !12
  %149 = load i32, ptr %vi6x3, align 4, !tbaa !12
  %150 = load i32, ptr %vacc3, align 4, !tbaa !12
  %add94 = add nsw i32 %150, %149
  store i32 %add94, ptr %vacc3, align 4, !tbaa !12
  %151 = load i32, ptr %vacc0, align 4, !tbaa !12
  %152 = load ptr, ptr %b, align 8, !tbaa !9
  %arrayidx95 = getelementptr inbounds i32, ptr %152, i64 0
  store i32 %151, ptr %arrayidx95, align 4, !tbaa !12
  %153 = load i32, ptr %vacc1, align 4, !tbaa !12
  %154 = load ptr, ptr %b, align 8, !tbaa !9
  %arrayidx96 = getelementptr inbounds i32, ptr %154, i64 1
  store i32 %153, ptr %arrayidx96, align 4, !tbaa !12
  %155 = load i32, ptr %vacc2, align 4, !tbaa !12
  %156 = load ptr, ptr %b, align 8, !tbaa !9
  %arrayidx97 = getelementptr inbounds i32, ptr %156, i64 2
  store i32 %155, ptr %arrayidx97, align 4, !tbaa !12
  %157 = load i32, ptr %vacc3, align 4, !tbaa !12
  %158 = load ptr, ptr %b, align 8, !tbaa !9
  %arrayidx98 = getelementptr inbounds i32, ptr %158, i64 3
  store i32 %157, ptr %arrayidx98, align 4, !tbaa !12
  %159 = load ptr, ptr %b, align 8, !tbaa !9
  %add.ptr99 = getelementptr inbounds i32, ptr %159, i64 4
  store ptr %add.ptr99, ptr %b, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %160 = load i64, ptr %c, align 8, !tbaa !5
  %sub100 = sub nsw i64 %160, 4
  store i64 %sub100, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond.cleanup
  %161 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %sub101 = sub i64 %161, 7
  store i64 %sub101, ptr %rows.addr, align 8, !tbaa !5
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc255, %for.end
  %162 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp103 = icmp ugt i64 %162, 7
  br i1 %cmp103, label %for.body105, label %for.end257

for.body105:                                      ; preds = %for.cond102
  %163 = load ptr, ptr %i0, align 8, !tbaa !9
  %164 = ptrtoint ptr %163 to i64
  %165 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add106 = add i64 %164, %165
  %166 = inttoptr i64 %add106 to ptr
  store ptr %166, ptr %i0, align 8, !tbaa !9
  %167 = load ptr, ptr %i1, align 8, !tbaa !9
  %168 = ptrtoint ptr %167 to i64
  %169 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add107 = add i64 %168, %169
  %170 = inttoptr i64 %add107 to ptr
  store ptr %170, ptr %i1, align 8, !tbaa !9
  %171 = load ptr, ptr %i2, align 8, !tbaa !9
  %172 = ptrtoint ptr %171 to i64
  %173 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add108 = add i64 %172, %173
  %174 = inttoptr i64 %add108 to ptr
  store ptr %174, ptr %i2, align 8, !tbaa !9
  %175 = load ptr, ptr %i3, align 8, !tbaa !9
  %176 = ptrtoint ptr %175 to i64
  %177 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add109 = add i64 %176, %177
  %178 = inttoptr i64 %add109 to ptr
  store ptr %178, ptr %i3, align 8, !tbaa !9
  %179 = load ptr, ptr %i4, align 8, !tbaa !9
  %180 = ptrtoint ptr %179 to i64
  %181 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add110 = add i64 %180, %181
  %182 = inttoptr i64 %add110 to ptr
  store ptr %182, ptr %i4, align 8, !tbaa !9
  %183 = load ptr, ptr %i5, align 8, !tbaa !9
  %184 = ptrtoint ptr %183 to i64
  %185 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add111 = add i64 %184, %185
  %186 = inttoptr i64 %add111 to ptr
  store ptr %186, ptr %i5, align 8, !tbaa !9
  %187 = load ptr, ptr %i6, align 8, !tbaa !9
  %188 = ptrtoint ptr %187 to i64
  %189 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add112 = add i64 %188, %189
  %190 = inttoptr i64 %add112 to ptr
  store ptr %190, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %b113) #4
  %191 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  store ptr %191, ptr %b113, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c114) #4
  %192 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %192, ptr %c114, align 8, !tbaa !5
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc252, %for.body105
  %193 = load i64, ptr %c114, align 8, !tbaa !5
  %cmp116 = icmp sgt i64 %193, 0
  br i1 %cmp116, label %for.body119, label %for.cond.cleanup118

for.cond.cleanup118:                              ; preds = %for.cond115
  call void @llvm.lifetime.end.p0(i64 8, ptr %c114) #4
  br label %for.end254

for.body119:                                      ; preds = %for.cond115
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0120) #4
  %194 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx121 = getelementptr inbounds i32, ptr %194, i64 0
  %195 = load i32, ptr %arrayidx121, align 4, !tbaa !12
  store i32 %195, ptr %vacc0120, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x0122) #4
  %196 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx123 = getelementptr inbounds i8, ptr %196, i64 0
  %197 = load i8, ptr %arrayidx123, align 1, !tbaa !11
  %conv124 = zext i8 %197 to i32
  store i32 %conv124, ptr %vi0x0122, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1125) #4
  %198 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx126 = getelementptr inbounds i32, ptr %198, i64 1
  %199 = load i32, ptr %arrayidx126, align 4, !tbaa !12
  store i32 %199, ptr %vacc1125, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x1127) #4
  %200 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx128 = getelementptr inbounds i8, ptr %200, i64 1
  %201 = load i8, ptr %arrayidx128, align 1, !tbaa !11
  %conv129 = zext i8 %201 to i32
  store i32 %conv129, ptr %vi0x1127, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2130) #4
  %202 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx131 = getelementptr inbounds i32, ptr %202, i64 2
  %203 = load i32, ptr %arrayidx131, align 4, !tbaa !12
  store i32 %203, ptr %vacc2130, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x2132) #4
  %204 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx133 = getelementptr inbounds i8, ptr %204, i64 2
  %205 = load i8, ptr %arrayidx133, align 1, !tbaa !11
  %conv134 = zext i8 %205 to i32
  store i32 %conv134, ptr %vi0x2132, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3135) #4
  %206 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx136 = getelementptr inbounds i32, ptr %206, i64 3
  %207 = load i32, ptr %arrayidx136, align 4, !tbaa !12
  store i32 %207, ptr %vacc3135, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x3137) #4
  %208 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx138 = getelementptr inbounds i8, ptr %208, i64 3
  %209 = load i8, ptr %arrayidx138, align 1, !tbaa !11
  %conv139 = zext i8 %209 to i32
  store i32 %conv139, ptr %vi0x3137, align 4, !tbaa !12
  %210 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr140 = getelementptr inbounds i8, ptr %210, i64 4
  store ptr %add.ptr140, ptr %i0, align 8, !tbaa !9
  %211 = load i32, ptr %vi0x0122, align 4, !tbaa !12
  %212 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %add141 = add nsw i32 %212, %211
  store i32 %add141, ptr %vacc0120, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x0142) #4
  %213 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx143 = getelementptr inbounds i8, ptr %213, i64 0
  %214 = load i8, ptr %arrayidx143, align 1, !tbaa !11
  %conv144 = zext i8 %214 to i32
  store i32 %conv144, ptr %vi1x0142, align 4, !tbaa !12
  %215 = load i32, ptr %vi0x1127, align 4, !tbaa !12
  %216 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %add145 = add nsw i32 %216, %215
  store i32 %add145, ptr %vacc1125, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x1146) #4
  %217 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx147 = getelementptr inbounds i8, ptr %217, i64 1
  %218 = load i8, ptr %arrayidx147, align 1, !tbaa !11
  %conv148 = zext i8 %218 to i32
  store i32 %conv148, ptr %vi1x1146, align 4, !tbaa !12
  %219 = load i32, ptr %vi0x2132, align 4, !tbaa !12
  %220 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %add149 = add nsw i32 %220, %219
  store i32 %add149, ptr %vacc2130, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x2150) #4
  %221 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx151 = getelementptr inbounds i8, ptr %221, i64 2
  %222 = load i8, ptr %arrayidx151, align 1, !tbaa !11
  %conv152 = zext i8 %222 to i32
  store i32 %conv152, ptr %vi1x2150, align 4, !tbaa !12
  %223 = load i32, ptr %vi0x3137, align 4, !tbaa !12
  %224 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %add153 = add nsw i32 %224, %223
  store i32 %add153, ptr %vacc3135, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x3154) #4
  %225 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx155 = getelementptr inbounds i8, ptr %225, i64 3
  %226 = load i8, ptr %arrayidx155, align 1, !tbaa !11
  %conv156 = zext i8 %226 to i32
  store i32 %conv156, ptr %vi1x3154, align 4, !tbaa !12
  %227 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr157 = getelementptr inbounds i8, ptr %227, i64 4
  store ptr %add.ptr157, ptr %i1, align 8, !tbaa !9
  %228 = load i32, ptr %vi1x0142, align 4, !tbaa !12
  %229 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %add158 = add nsw i32 %229, %228
  store i32 %add158, ptr %vacc0120, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x0159) #4
  %230 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx160 = getelementptr inbounds i8, ptr %230, i64 0
  %231 = load i8, ptr %arrayidx160, align 1, !tbaa !11
  %conv161 = zext i8 %231 to i32
  store i32 %conv161, ptr %vi2x0159, align 4, !tbaa !12
  %232 = load i32, ptr %vi1x1146, align 4, !tbaa !12
  %233 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %add162 = add nsw i32 %233, %232
  store i32 %add162, ptr %vacc1125, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x1163) #4
  %234 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx164 = getelementptr inbounds i8, ptr %234, i64 1
  %235 = load i8, ptr %arrayidx164, align 1, !tbaa !11
  %conv165 = zext i8 %235 to i32
  store i32 %conv165, ptr %vi2x1163, align 4, !tbaa !12
  %236 = load i32, ptr %vi1x2150, align 4, !tbaa !12
  %237 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %add166 = add nsw i32 %237, %236
  store i32 %add166, ptr %vacc2130, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x2167) #4
  %238 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx168 = getelementptr inbounds i8, ptr %238, i64 2
  %239 = load i8, ptr %arrayidx168, align 1, !tbaa !11
  %conv169 = zext i8 %239 to i32
  store i32 %conv169, ptr %vi2x2167, align 4, !tbaa !12
  %240 = load i32, ptr %vi1x3154, align 4, !tbaa !12
  %241 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %add170 = add nsw i32 %241, %240
  store i32 %add170, ptr %vacc3135, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x3171) #4
  %242 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx172 = getelementptr inbounds i8, ptr %242, i64 3
  %243 = load i8, ptr %arrayidx172, align 1, !tbaa !11
  %conv173 = zext i8 %243 to i32
  store i32 %conv173, ptr %vi2x3171, align 4, !tbaa !12
  %244 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr174 = getelementptr inbounds i8, ptr %244, i64 4
  store ptr %add.ptr174, ptr %i2, align 8, !tbaa !9
  %245 = load i32, ptr %vi2x0159, align 4, !tbaa !12
  %246 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %add175 = add nsw i32 %246, %245
  store i32 %add175, ptr %vacc0120, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x0176) #4
  %247 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx177 = getelementptr inbounds i8, ptr %247, i64 0
  %248 = load i8, ptr %arrayidx177, align 1, !tbaa !11
  %conv178 = zext i8 %248 to i32
  store i32 %conv178, ptr %vi3x0176, align 4, !tbaa !12
  %249 = load i32, ptr %vi2x1163, align 4, !tbaa !12
  %250 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %add179 = add nsw i32 %250, %249
  store i32 %add179, ptr %vacc1125, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x1180) #4
  %251 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx181 = getelementptr inbounds i8, ptr %251, i64 1
  %252 = load i8, ptr %arrayidx181, align 1, !tbaa !11
  %conv182 = zext i8 %252 to i32
  store i32 %conv182, ptr %vi3x1180, align 4, !tbaa !12
  %253 = load i32, ptr %vi2x2167, align 4, !tbaa !12
  %254 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %add183 = add nsw i32 %254, %253
  store i32 %add183, ptr %vacc2130, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x2184) #4
  %255 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx185 = getelementptr inbounds i8, ptr %255, i64 2
  %256 = load i8, ptr %arrayidx185, align 1, !tbaa !11
  %conv186 = zext i8 %256 to i32
  store i32 %conv186, ptr %vi3x2184, align 4, !tbaa !12
  %257 = load i32, ptr %vi2x3171, align 4, !tbaa !12
  %258 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %add187 = add nsw i32 %258, %257
  store i32 %add187, ptr %vacc3135, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x3188) #4
  %259 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx189 = getelementptr inbounds i8, ptr %259, i64 3
  %260 = load i8, ptr %arrayidx189, align 1, !tbaa !11
  %conv190 = zext i8 %260 to i32
  store i32 %conv190, ptr %vi3x3188, align 4, !tbaa !12
  %261 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr191 = getelementptr inbounds i8, ptr %261, i64 4
  store ptr %add.ptr191, ptr %i3, align 8, !tbaa !9
  %262 = load i32, ptr %vi3x0176, align 4, !tbaa !12
  %263 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %add192 = add nsw i32 %263, %262
  store i32 %add192, ptr %vacc0120, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x0193) #4
  %264 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx194 = getelementptr inbounds i8, ptr %264, i64 0
  %265 = load i8, ptr %arrayidx194, align 1, !tbaa !11
  %conv195 = zext i8 %265 to i32
  store i32 %conv195, ptr %vi4x0193, align 4, !tbaa !12
  %266 = load i32, ptr %vi3x1180, align 4, !tbaa !12
  %267 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %add196 = add nsw i32 %267, %266
  store i32 %add196, ptr %vacc1125, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x1197) #4
  %268 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx198 = getelementptr inbounds i8, ptr %268, i64 1
  %269 = load i8, ptr %arrayidx198, align 1, !tbaa !11
  %conv199 = zext i8 %269 to i32
  store i32 %conv199, ptr %vi4x1197, align 4, !tbaa !12
  %270 = load i32, ptr %vi3x2184, align 4, !tbaa !12
  %271 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %add200 = add nsw i32 %271, %270
  store i32 %add200, ptr %vacc2130, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x2201) #4
  %272 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx202 = getelementptr inbounds i8, ptr %272, i64 2
  %273 = load i8, ptr %arrayidx202, align 1, !tbaa !11
  %conv203 = zext i8 %273 to i32
  store i32 %conv203, ptr %vi4x2201, align 4, !tbaa !12
  %274 = load i32, ptr %vi3x3188, align 4, !tbaa !12
  %275 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %add204 = add nsw i32 %275, %274
  store i32 %add204, ptr %vacc3135, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x3205) #4
  %276 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx206 = getelementptr inbounds i8, ptr %276, i64 3
  %277 = load i8, ptr %arrayidx206, align 1, !tbaa !11
  %conv207 = zext i8 %277 to i32
  store i32 %conv207, ptr %vi4x3205, align 4, !tbaa !12
  %278 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr208 = getelementptr inbounds i8, ptr %278, i64 4
  store ptr %add.ptr208, ptr %i4, align 8, !tbaa !9
  %279 = load i32, ptr %vi4x0193, align 4, !tbaa !12
  %280 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %add209 = add nsw i32 %280, %279
  store i32 %add209, ptr %vacc0120, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x0210) #4
  %281 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx211 = getelementptr inbounds i8, ptr %281, i64 0
  %282 = load i8, ptr %arrayidx211, align 1, !tbaa !11
  %conv212 = zext i8 %282 to i32
  store i32 %conv212, ptr %vi5x0210, align 4, !tbaa !12
  %283 = load i32, ptr %vi4x1197, align 4, !tbaa !12
  %284 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %add213 = add nsw i32 %284, %283
  store i32 %add213, ptr %vacc1125, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x1214) #4
  %285 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx215 = getelementptr inbounds i8, ptr %285, i64 1
  %286 = load i8, ptr %arrayidx215, align 1, !tbaa !11
  %conv216 = zext i8 %286 to i32
  store i32 %conv216, ptr %vi5x1214, align 4, !tbaa !12
  %287 = load i32, ptr %vi4x2201, align 4, !tbaa !12
  %288 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %add217 = add nsw i32 %288, %287
  store i32 %add217, ptr %vacc2130, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x2218) #4
  %289 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx219 = getelementptr inbounds i8, ptr %289, i64 2
  %290 = load i8, ptr %arrayidx219, align 1, !tbaa !11
  %conv220 = zext i8 %290 to i32
  store i32 %conv220, ptr %vi5x2218, align 4, !tbaa !12
  %291 = load i32, ptr %vi4x3205, align 4, !tbaa !12
  %292 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %add221 = add nsw i32 %292, %291
  store i32 %add221, ptr %vacc3135, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x3222) #4
  %293 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx223 = getelementptr inbounds i8, ptr %293, i64 3
  %294 = load i8, ptr %arrayidx223, align 1, !tbaa !11
  %conv224 = zext i8 %294 to i32
  store i32 %conv224, ptr %vi5x3222, align 4, !tbaa !12
  %295 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr225 = getelementptr inbounds i8, ptr %295, i64 4
  store ptr %add.ptr225, ptr %i5, align 8, !tbaa !9
  %296 = load i32, ptr %vi5x0210, align 4, !tbaa !12
  %297 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %add226 = add nsw i32 %297, %296
  store i32 %add226, ptr %vacc0120, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x0227) #4
  %298 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx228 = getelementptr inbounds i8, ptr %298, i64 0
  %299 = load i8, ptr %arrayidx228, align 1, !tbaa !11
  %conv229 = zext i8 %299 to i32
  store i32 %conv229, ptr %vi6x0227, align 4, !tbaa !12
  %300 = load i32, ptr %vi5x1214, align 4, !tbaa !12
  %301 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %add230 = add nsw i32 %301, %300
  store i32 %add230, ptr %vacc1125, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x1231) #4
  %302 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx232 = getelementptr inbounds i8, ptr %302, i64 1
  %303 = load i8, ptr %arrayidx232, align 1, !tbaa !11
  %conv233 = zext i8 %303 to i32
  store i32 %conv233, ptr %vi6x1231, align 4, !tbaa !12
  %304 = load i32, ptr %vi5x2218, align 4, !tbaa !12
  %305 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %add234 = add nsw i32 %305, %304
  store i32 %add234, ptr %vacc2130, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x2235) #4
  %306 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx236 = getelementptr inbounds i8, ptr %306, i64 2
  %307 = load i8, ptr %arrayidx236, align 1, !tbaa !11
  %conv237 = zext i8 %307 to i32
  store i32 %conv237, ptr %vi6x2235, align 4, !tbaa !12
  %308 = load i32, ptr %vi5x3222, align 4, !tbaa !12
  %309 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %add238 = add nsw i32 %309, %308
  store i32 %add238, ptr %vacc3135, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x3239) #4
  %310 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx240 = getelementptr inbounds i8, ptr %310, i64 3
  %311 = load i8, ptr %arrayidx240, align 1, !tbaa !11
  %conv241 = zext i8 %311 to i32
  store i32 %conv241, ptr %vi6x3239, align 4, !tbaa !12
  %312 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr242 = getelementptr inbounds i8, ptr %312, i64 4
  store ptr %add.ptr242, ptr %i6, align 8, !tbaa !9
  %313 = load i32, ptr %vi6x0227, align 4, !tbaa !12
  %314 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %add243 = add nsw i32 %314, %313
  store i32 %add243, ptr %vacc0120, align 4, !tbaa !12
  %315 = load i32, ptr %vi6x1231, align 4, !tbaa !12
  %316 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %add244 = add nsw i32 %316, %315
  store i32 %add244, ptr %vacc1125, align 4, !tbaa !12
  %317 = load i32, ptr %vi6x2235, align 4, !tbaa !12
  %318 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %add245 = add nsw i32 %318, %317
  store i32 %add245, ptr %vacc2130, align 4, !tbaa !12
  %319 = load i32, ptr %vi6x3239, align 4, !tbaa !12
  %320 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %add246 = add nsw i32 %320, %319
  store i32 %add246, ptr %vacc3135, align 4, !tbaa !12
  %321 = load i32, ptr %vacc0120, align 4, !tbaa !12
  %322 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx247 = getelementptr inbounds i32, ptr %322, i64 0
  store i32 %321, ptr %arrayidx247, align 4, !tbaa !12
  %323 = load i32, ptr %vacc1125, align 4, !tbaa !12
  %324 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx248 = getelementptr inbounds i32, ptr %324, i64 1
  store i32 %323, ptr %arrayidx248, align 4, !tbaa !12
  %325 = load i32, ptr %vacc2130, align 4, !tbaa !12
  %326 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx249 = getelementptr inbounds i32, ptr %326, i64 2
  store i32 %325, ptr %arrayidx249, align 4, !tbaa !12
  %327 = load i32, ptr %vacc3135, align 4, !tbaa !12
  %328 = load ptr, ptr %b113, align 8, !tbaa !9
  %arrayidx250 = getelementptr inbounds i32, ptr %328, i64 3
  store i32 %327, ptr %arrayidx250, align 4, !tbaa !12
  %329 = load ptr, ptr %b113, align 8, !tbaa !9
  %add.ptr251 = getelementptr inbounds i32, ptr %329, i64 4
  store ptr %add.ptr251, ptr %b113, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x3239) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x2235) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x1231) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x0227) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x3222) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x2218) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x1214) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x0210) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x3205) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x2201) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x1197) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x0193) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x3188) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x2184) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x1180) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x0176) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x3171) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x2167) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x1163) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x0159) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x3154) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x2150) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x1146) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x0142) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x3137) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3135) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x2132) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2130) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x1127) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1125) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x0122) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0120) #4
  br label %for.inc252

for.inc252:                                       ; preds = %for.body119
  %330 = load i64, ptr %c114, align 8, !tbaa !5
  %sub253 = sub nsw i64 %330, 4
  store i64 %sub253, ptr %c114, align 8, !tbaa !5
  br label %for.cond115, !llvm.loop !16

for.end254:                                       ; preds = %for.cond.cleanup118
  call void @llvm.lifetime.end.p0(i64 8, ptr %b113) #4
  br label %for.inc255

for.inc255:                                       ; preds = %for.end254
  %331 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %sub256 = sub i64 %331, 7
  store i64 %sub256, ptr %rows.addr, align 8, !tbaa !5
  br label %for.cond102, !llvm.loop !17

for.end257:                                       ; preds = %for.cond102
  %332 = load ptr, ptr %i0, align 8, !tbaa !9
  %333 = ptrtoint ptr %332 to i64
  %334 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add258 = add i64 %333, %334
  %335 = inttoptr i64 %add258 to ptr
  store ptr %335, ptr %i0, align 8, !tbaa !9
  %336 = load ptr, ptr %i1, align 8, !tbaa !9
  %337 = ptrtoint ptr %336 to i64
  %338 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add259 = add i64 %337, %338
  %339 = inttoptr i64 %add259 to ptr
  store ptr %339, ptr %i1, align 8, !tbaa !9
  %340 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp260 = icmp ult i64 %340, 2
  %lnot = xor i1 %cmp260, true
  %lnot262 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot262 to i32
  %conv263 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv263, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !18

if.then:                                          ; preds = %for.end257
  %341 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %341, ptr %i1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end257
  %342 = load ptr, ptr %i2, align 8, !tbaa !9
  %343 = ptrtoint ptr %342 to i64
  %344 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add264 = add i64 %343, %344
  %345 = inttoptr i64 %add264 to ptr
  store ptr %345, ptr %i2, align 8, !tbaa !9
  %346 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp265 = icmp ule i64 %346, 2
  %lnot267 = xor i1 %cmp265, true
  %lnot269 = xor i1 %lnot267, true
  %lnot.ext270 = zext i1 %lnot269 to i32
  %conv271 = sext i32 %lnot.ext270 to i64
  %tobool272 = icmp ne i64 %conv271, 0
  br i1 %tobool272, label %if.then273, label %if.end274, !unpredictable !18

if.then273:                                       ; preds = %if.end
  %347 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %347, ptr %i2, align 8, !tbaa !9
  br label %if.end274

if.end274:                                        ; preds = %if.then273, %if.end
  %348 = load ptr, ptr %i3, align 8, !tbaa !9
  %349 = ptrtoint ptr %348 to i64
  %350 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add275 = add i64 %349, %350
  %351 = inttoptr i64 %add275 to ptr
  store ptr %351, ptr %i3, align 8, !tbaa !9
  %352 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp276 = icmp ult i64 %352, 4
  %lnot278 = xor i1 %cmp276, true
  %lnot280 = xor i1 %lnot278, true
  %lnot.ext281 = zext i1 %lnot280 to i32
  %conv282 = sext i32 %lnot.ext281 to i64
  %tobool283 = icmp ne i64 %conv282, 0
  br i1 %tobool283, label %if.then284, label %if.end285, !unpredictable !18

if.then284:                                       ; preds = %if.end274
  %353 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %353, ptr %i3, align 8, !tbaa !9
  br label %if.end285

if.end285:                                        ; preds = %if.then284, %if.end274
  %354 = load ptr, ptr %i4, align 8, !tbaa !9
  %355 = ptrtoint ptr %354 to i64
  %356 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add286 = add i64 %355, %356
  %357 = inttoptr i64 %add286 to ptr
  store ptr %357, ptr %i4, align 8, !tbaa !9
  %358 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp287 = icmp ule i64 %358, 4
  %lnot289 = xor i1 %cmp287, true
  %lnot291 = xor i1 %lnot289, true
  %lnot.ext292 = zext i1 %lnot291 to i32
  %conv293 = sext i32 %lnot.ext292 to i64
  %tobool294 = icmp ne i64 %conv293, 0
  br i1 %tobool294, label %if.then295, label %if.end296, !unpredictable !18

if.then295:                                       ; preds = %if.end285
  %359 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %359, ptr %i4, align 8, !tbaa !9
  br label %if.end296

if.end296:                                        ; preds = %if.then295, %if.end285
  %360 = load ptr, ptr %i5, align 8, !tbaa !9
  %361 = ptrtoint ptr %360 to i64
  %362 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add297 = add i64 %361, %362
  %363 = inttoptr i64 %add297 to ptr
  store ptr %363, ptr %i5, align 8, !tbaa !9
  %364 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp298 = icmp ult i64 %364, 6
  %lnot300 = xor i1 %cmp298, true
  %lnot302 = xor i1 %lnot300, true
  %lnot.ext303 = zext i1 %lnot302 to i32
  %conv304 = sext i32 %lnot.ext303 to i64
  %tobool305 = icmp ne i64 %conv304, 0
  br i1 %tobool305, label %if.then306, label %if.end307, !unpredictable !18

if.then306:                                       ; preds = %if.end296
  %365 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %365, ptr %i5, align 8, !tbaa !9
  br label %if.end307

if.end307:                                        ; preds = %if.then306, %if.end296
  %366 = load ptr, ptr %i6, align 8, !tbaa !9
  %367 = ptrtoint ptr %366 to i64
  %368 = load i64, ptr %input_increment, align 8, !tbaa !5
  %add308 = add i64 %367, %368
  %369 = inttoptr i64 %add308 to ptr
  store ptr %369, ptr %i6, align 8, !tbaa !9
  %370 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp309 = icmp ule i64 %370, 6
  %lnot311 = xor i1 %cmp309, true
  %lnot313 = xor i1 %lnot311, true
  %lnot.ext314 = zext i1 %lnot313 to i32
  %conv315 = sext i32 %lnot.ext314 to i64
  %tobool316 = icmp ne i64 %conv315, 0
  br i1 %tobool316, label %if.then317, label %if.end318, !unpredictable !18

if.then317:                                       ; preds = %if.end307
  %371 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %371, ptr %i6, align 8, !tbaa !9
  br label %if.end318

if.end318:                                        ; preds = %if.then317, %if.end307
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %372 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.0, ptr %372, i32 0, i32 1
  %373 = load float, ptr %scale, align 4, !tbaa !11
  store float %373, ptr %vscale, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %374 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %374, i32 0, i32 2
  %375 = load float, ptr %magic_bias, align 8, !tbaa !11
  store float %375, ptr %vmagic_bias, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_min) #4
  %376 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_min = getelementptr inbounds %struct.anon.0, ptr %376, i32 0, i32 3
  %377 = load i32, ptr %magic_min, align 4, !tbaa !11
  store i32 %377, ptr %vmagic_min, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_max) #4
  %378 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_max = getelementptr inbounds %struct.anon.0, ptr %378, i32 0, i32 4
  %379 = load i32, ptr %magic_max, align 16, !tbaa !11
  store i32 %379, ptr %vmagic_max, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  %380 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %380, i32 0, i32 5
  %381 = load i32, ptr %magic_bias_less_zero_point, align 4, !tbaa !11
  store i32 %381, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  br label %for.cond319

for.cond319:                                      ; preds = %for.inc488, %if.end318
  %382 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp320 = icmp uge i64 %382, 4
  br i1 %cmp320, label %for.body322, label %for.end490

for.body322:                                      ; preds = %for.cond319
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0323) #4
  %383 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  %arrayidx324 = getelementptr inbounds i32, ptr %383, i64 0
  %384 = load i32, ptr %arrayidx324, align 4, !tbaa !12
  store i32 %384, ptr %vacc0323, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x0325) #4
  %385 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx326 = getelementptr inbounds i8, ptr %385, i64 0
  %386 = load i8, ptr %arrayidx326, align 1, !tbaa !11
  %conv327 = zext i8 %386 to i32
  store i32 %conv327, ptr %vi0x0325, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1328) #4
  %387 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  %arrayidx329 = getelementptr inbounds i32, ptr %387, i64 1
  %388 = load i32, ptr %arrayidx329, align 4, !tbaa !12
  store i32 %388, ptr %vacc1328, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x1330) #4
  %389 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx331 = getelementptr inbounds i8, ptr %389, i64 1
  %390 = load i8, ptr %arrayidx331, align 1, !tbaa !11
  %conv332 = zext i8 %390 to i32
  store i32 %conv332, ptr %vi0x1330, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2333) #4
  %391 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  %arrayidx334 = getelementptr inbounds i32, ptr %391, i64 2
  %392 = load i32, ptr %arrayidx334, align 4, !tbaa !12
  store i32 %392, ptr %vacc2333, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x2335) #4
  %393 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx336 = getelementptr inbounds i8, ptr %393, i64 2
  %394 = load i8, ptr %arrayidx336, align 1, !tbaa !11
  %conv337 = zext i8 %394 to i32
  store i32 %conv337, ptr %vi0x2335, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3338) #4
  %395 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  %arrayidx339 = getelementptr inbounds i32, ptr %395, i64 3
  %396 = load i32, ptr %arrayidx339, align 4, !tbaa !12
  store i32 %396, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x3340) #4
  %397 = load ptr, ptr %i0, align 8, !tbaa !9
  %arrayidx341 = getelementptr inbounds i8, ptr %397, i64 3
  %398 = load i8, ptr %arrayidx341, align 1, !tbaa !11
  %conv342 = zext i8 %398 to i32
  store i32 %conv342, ptr %vi0x3340, align 4, !tbaa !12
  %399 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  %add.ptr343 = getelementptr inbounds i32, ptr %399, i64 4
  store ptr %add.ptr343, ptr %buffer.addr, align 8, !tbaa !9
  %400 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr344 = getelementptr inbounds i8, ptr %400, i64 4
  store ptr %add.ptr344, ptr %i0, align 8, !tbaa !9
  %401 = load i32, ptr %vi0x0325, align 4, !tbaa !12
  %402 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %add345 = add nsw i32 %402, %401
  store i32 %add345, ptr %vacc0323, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x0346) #4
  %403 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx347 = getelementptr inbounds i8, ptr %403, i64 0
  %404 = load i8, ptr %arrayidx347, align 1, !tbaa !11
  %conv348 = zext i8 %404 to i32
  store i32 %conv348, ptr %vi1x0346, align 4, !tbaa !12
  %405 = load i32, ptr %vi0x1330, align 4, !tbaa !12
  %406 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %add349 = add nsw i32 %406, %405
  store i32 %add349, ptr %vacc1328, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x1350) #4
  %407 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx351 = getelementptr inbounds i8, ptr %407, i64 1
  %408 = load i8, ptr %arrayidx351, align 1, !tbaa !11
  %conv352 = zext i8 %408 to i32
  store i32 %conv352, ptr %vi1x1350, align 4, !tbaa !12
  %409 = load i32, ptr %vi0x2335, align 4, !tbaa !12
  %410 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %add353 = add nsw i32 %410, %409
  store i32 %add353, ptr %vacc2333, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x2354) #4
  %411 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx355 = getelementptr inbounds i8, ptr %411, i64 2
  %412 = load i8, ptr %arrayidx355, align 1, !tbaa !11
  %conv356 = zext i8 %412 to i32
  store i32 %conv356, ptr %vi1x2354, align 4, !tbaa !12
  %413 = load i32, ptr %vi0x3340, align 4, !tbaa !12
  %414 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %add357 = add nsw i32 %414, %413
  store i32 %add357, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x3358) #4
  %415 = load ptr, ptr %i1, align 8, !tbaa !9
  %arrayidx359 = getelementptr inbounds i8, ptr %415, i64 3
  %416 = load i8, ptr %arrayidx359, align 1, !tbaa !11
  %conv360 = zext i8 %416 to i32
  store i32 %conv360, ptr %vi1x3358, align 4, !tbaa !12
  %417 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr361 = getelementptr inbounds i8, ptr %417, i64 4
  store ptr %add.ptr361, ptr %i1, align 8, !tbaa !9
  %418 = load i32, ptr %vi1x0346, align 4, !tbaa !12
  %419 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %add362 = add nsw i32 %419, %418
  store i32 %add362, ptr %vacc0323, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x0363) #4
  %420 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx364 = getelementptr inbounds i8, ptr %420, i64 0
  %421 = load i8, ptr %arrayidx364, align 1, !tbaa !11
  %conv365 = zext i8 %421 to i32
  store i32 %conv365, ptr %vi2x0363, align 4, !tbaa !12
  %422 = load i32, ptr %vi1x1350, align 4, !tbaa !12
  %423 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %add366 = add nsw i32 %423, %422
  store i32 %add366, ptr %vacc1328, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x1367) #4
  %424 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx368 = getelementptr inbounds i8, ptr %424, i64 1
  %425 = load i8, ptr %arrayidx368, align 1, !tbaa !11
  %conv369 = zext i8 %425 to i32
  store i32 %conv369, ptr %vi2x1367, align 4, !tbaa !12
  %426 = load i32, ptr %vi1x2354, align 4, !tbaa !12
  %427 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %add370 = add nsw i32 %427, %426
  store i32 %add370, ptr %vacc2333, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x2371) #4
  %428 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx372 = getelementptr inbounds i8, ptr %428, i64 2
  %429 = load i8, ptr %arrayidx372, align 1, !tbaa !11
  %conv373 = zext i8 %429 to i32
  store i32 %conv373, ptr %vi2x2371, align 4, !tbaa !12
  %430 = load i32, ptr %vi1x3358, align 4, !tbaa !12
  %431 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %add374 = add nsw i32 %431, %430
  store i32 %add374, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x3375) #4
  %432 = load ptr, ptr %i2, align 8, !tbaa !9
  %arrayidx376 = getelementptr inbounds i8, ptr %432, i64 3
  %433 = load i8, ptr %arrayidx376, align 1, !tbaa !11
  %conv377 = zext i8 %433 to i32
  store i32 %conv377, ptr %vi2x3375, align 4, !tbaa !12
  %434 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr378 = getelementptr inbounds i8, ptr %434, i64 4
  store ptr %add.ptr378, ptr %i2, align 8, !tbaa !9
  %435 = load i32, ptr %vi2x0363, align 4, !tbaa !12
  %436 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %add379 = add nsw i32 %436, %435
  store i32 %add379, ptr %vacc0323, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x0380) #4
  %437 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx381 = getelementptr inbounds i8, ptr %437, i64 0
  %438 = load i8, ptr %arrayidx381, align 1, !tbaa !11
  %conv382 = zext i8 %438 to i32
  store i32 %conv382, ptr %vi3x0380, align 4, !tbaa !12
  %439 = load i32, ptr %vi2x1367, align 4, !tbaa !12
  %440 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %add383 = add nsw i32 %440, %439
  store i32 %add383, ptr %vacc1328, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x1384) #4
  %441 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx385 = getelementptr inbounds i8, ptr %441, i64 1
  %442 = load i8, ptr %arrayidx385, align 1, !tbaa !11
  %conv386 = zext i8 %442 to i32
  store i32 %conv386, ptr %vi3x1384, align 4, !tbaa !12
  %443 = load i32, ptr %vi2x2371, align 4, !tbaa !12
  %444 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %add387 = add nsw i32 %444, %443
  store i32 %add387, ptr %vacc2333, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x2388) #4
  %445 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx389 = getelementptr inbounds i8, ptr %445, i64 2
  %446 = load i8, ptr %arrayidx389, align 1, !tbaa !11
  %conv390 = zext i8 %446 to i32
  store i32 %conv390, ptr %vi3x2388, align 4, !tbaa !12
  %447 = load i32, ptr %vi2x3375, align 4, !tbaa !12
  %448 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %add391 = add nsw i32 %448, %447
  store i32 %add391, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3x3392) #4
  %449 = load ptr, ptr %i3, align 8, !tbaa !9
  %arrayidx393 = getelementptr inbounds i8, ptr %449, i64 3
  %450 = load i8, ptr %arrayidx393, align 1, !tbaa !11
  %conv394 = zext i8 %450 to i32
  store i32 %conv394, ptr %vi3x3392, align 4, !tbaa !12
  %451 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr395 = getelementptr inbounds i8, ptr %451, i64 4
  store ptr %add.ptr395, ptr %i3, align 8, !tbaa !9
  %452 = load i32, ptr %vi3x0380, align 4, !tbaa !12
  %453 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %add396 = add nsw i32 %453, %452
  store i32 %add396, ptr %vacc0323, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x0397) #4
  %454 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx398 = getelementptr inbounds i8, ptr %454, i64 0
  %455 = load i8, ptr %arrayidx398, align 1, !tbaa !11
  %conv399 = zext i8 %455 to i32
  store i32 %conv399, ptr %vi4x0397, align 4, !tbaa !12
  %456 = load i32, ptr %vi3x1384, align 4, !tbaa !12
  %457 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %add400 = add nsw i32 %457, %456
  store i32 %add400, ptr %vacc1328, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x1401) #4
  %458 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx402 = getelementptr inbounds i8, ptr %458, i64 1
  %459 = load i8, ptr %arrayidx402, align 1, !tbaa !11
  %conv403 = zext i8 %459 to i32
  store i32 %conv403, ptr %vi4x1401, align 4, !tbaa !12
  %460 = load i32, ptr %vi3x2388, align 4, !tbaa !12
  %461 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %add404 = add nsw i32 %461, %460
  store i32 %add404, ptr %vacc2333, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x2405) #4
  %462 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx406 = getelementptr inbounds i8, ptr %462, i64 2
  %463 = load i8, ptr %arrayidx406, align 1, !tbaa !11
  %conv407 = zext i8 %463 to i32
  store i32 %conv407, ptr %vi4x2405, align 4, !tbaa !12
  %464 = load i32, ptr %vi3x3392, align 4, !tbaa !12
  %465 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %add408 = add nsw i32 %465, %464
  store i32 %add408, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4x3409) #4
  %466 = load ptr, ptr %i4, align 8, !tbaa !9
  %arrayidx410 = getelementptr inbounds i8, ptr %466, i64 3
  %467 = load i8, ptr %arrayidx410, align 1, !tbaa !11
  %conv411 = zext i8 %467 to i32
  store i32 %conv411, ptr %vi4x3409, align 4, !tbaa !12
  %468 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr412 = getelementptr inbounds i8, ptr %468, i64 4
  store ptr %add.ptr412, ptr %i4, align 8, !tbaa !9
  %469 = load i32, ptr %vi4x0397, align 4, !tbaa !12
  %470 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %add413 = add nsw i32 %470, %469
  store i32 %add413, ptr %vacc0323, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x0414) #4
  %471 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx415 = getelementptr inbounds i8, ptr %471, i64 0
  %472 = load i8, ptr %arrayidx415, align 1, !tbaa !11
  %conv416 = zext i8 %472 to i32
  store i32 %conv416, ptr %vi5x0414, align 4, !tbaa !12
  %473 = load i32, ptr %vi4x1401, align 4, !tbaa !12
  %474 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %add417 = add nsw i32 %474, %473
  store i32 %add417, ptr %vacc1328, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x1418) #4
  %475 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx419 = getelementptr inbounds i8, ptr %475, i64 1
  %476 = load i8, ptr %arrayidx419, align 1, !tbaa !11
  %conv420 = zext i8 %476 to i32
  store i32 %conv420, ptr %vi5x1418, align 4, !tbaa !12
  %477 = load i32, ptr %vi4x2405, align 4, !tbaa !12
  %478 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %add421 = add nsw i32 %478, %477
  store i32 %add421, ptr %vacc2333, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x2422) #4
  %479 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx423 = getelementptr inbounds i8, ptr %479, i64 2
  %480 = load i8, ptr %arrayidx423, align 1, !tbaa !11
  %conv424 = zext i8 %480 to i32
  store i32 %conv424, ptr %vi5x2422, align 4, !tbaa !12
  %481 = load i32, ptr %vi4x3409, align 4, !tbaa !12
  %482 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %add425 = add nsw i32 %482, %481
  store i32 %add425, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5x3426) #4
  %483 = load ptr, ptr %i5, align 8, !tbaa !9
  %arrayidx427 = getelementptr inbounds i8, ptr %483, i64 3
  %484 = load i8, ptr %arrayidx427, align 1, !tbaa !11
  %conv428 = zext i8 %484 to i32
  store i32 %conv428, ptr %vi5x3426, align 4, !tbaa !12
  %485 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr429 = getelementptr inbounds i8, ptr %485, i64 4
  store ptr %add.ptr429, ptr %i5, align 8, !tbaa !9
  %486 = load i32, ptr %vi5x0414, align 4, !tbaa !12
  %487 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %add430 = add nsw i32 %487, %486
  store i32 %add430, ptr %vacc0323, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x0431) #4
  %488 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx432 = getelementptr inbounds i8, ptr %488, i64 0
  %489 = load i8, ptr %arrayidx432, align 1, !tbaa !11
  %conv433 = zext i8 %489 to i32
  store i32 %conv433, ptr %vi6x0431, align 4, !tbaa !12
  %490 = load i32, ptr %vi5x1418, align 4, !tbaa !12
  %491 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %add434 = add nsw i32 %491, %490
  store i32 %add434, ptr %vacc1328, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x1435) #4
  %492 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx436 = getelementptr inbounds i8, ptr %492, i64 1
  %493 = load i8, ptr %arrayidx436, align 1, !tbaa !11
  %conv437 = zext i8 %493 to i32
  store i32 %conv437, ptr %vi6x1435, align 4, !tbaa !12
  %494 = load i32, ptr %vi5x2422, align 4, !tbaa !12
  %495 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %add438 = add nsw i32 %495, %494
  store i32 %add438, ptr %vacc2333, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x2439) #4
  %496 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx440 = getelementptr inbounds i8, ptr %496, i64 2
  %497 = load i8, ptr %arrayidx440, align 1, !tbaa !11
  %conv441 = zext i8 %497 to i32
  store i32 %conv441, ptr %vi6x2439, align 4, !tbaa !12
  %498 = load i32, ptr %vi5x3426, align 4, !tbaa !12
  %499 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %add442 = add nsw i32 %499, %498
  store i32 %add442, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6x3443) #4
  %500 = load ptr, ptr %i6, align 8, !tbaa !9
  %arrayidx444 = getelementptr inbounds i8, ptr %500, i64 3
  %501 = load i8, ptr %arrayidx444, align 1, !tbaa !11
  %conv445 = zext i8 %501 to i32
  store i32 %conv445, ptr %vi6x3443, align 4, !tbaa !12
  %502 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr446 = getelementptr inbounds i8, ptr %502, i64 4
  store ptr %add.ptr446, ptr %i6, align 8, !tbaa !9
  %503 = load i32, ptr %vi6x0431, align 4, !tbaa !12
  %504 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %add447 = add nsw i32 %504, %503
  store i32 %add447, ptr %vacc0323, align 4, !tbaa !12
  %505 = load i32, ptr %vi6x1435, align 4, !tbaa !12
  %506 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %add448 = add nsw i32 %506, %505
  store i32 %add448, ptr %vacc1328, align 4, !tbaa !12
  %507 = load i32, ptr %vi6x2439, align 4, !tbaa !12
  %508 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %add449 = add nsw i32 %508, %507
  store i32 %add449, ptr %vacc2333, align 4, !tbaa !12
  %509 = load i32, ptr %vi6x3443, align 4, !tbaa !12
  %510 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %add450 = add nsw i32 %510, %509
  store i32 %add450, ptr %vacc3338, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0) #4
  %511 = load i32, ptr %vacc0323, align 4, !tbaa !12
  %conv451 = sitofp i32 %511 to float
  %512 = load float, ptr %vscale, align 4, !tbaa !19
  %mul452 = fmul float %conv451, %512
  store float %mul452, ptr %vfpacc0, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1) #4
  %513 = load i32, ptr %vacc1328, align 4, !tbaa !12
  %conv453 = sitofp i32 %513 to float
  %514 = load float, ptr %vscale, align 4, !tbaa !19
  %mul454 = fmul float %conv453, %514
  store float %mul454, ptr %vfpacc1, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2) #4
  %515 = load i32, ptr %vacc2333, align 4, !tbaa !12
  %conv455 = sitofp i32 %515 to float
  %516 = load float, ptr %vscale, align 4, !tbaa !19
  %mul456 = fmul float %conv455, %516
  store float %mul456, ptr %vfpacc2, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc3) #4
  %517 = load i32, ptr %vacc3338, align 4, !tbaa !12
  %conv457 = sitofp i32 %517 to float
  %518 = load float, ptr %vscale, align 4, !tbaa !19
  %mul458 = fmul float %conv457, %518
  store float %mul458, ptr %vfpacc3, align 4, !tbaa !19
  %519 = load float, ptr %vmagic_bias, align 4, !tbaa !19
  %520 = load float, ptr %vfpacc0, align 4, !tbaa !19
  %add459 = fadd float %520, %519
  store float %add459, ptr %vfpacc0, align 4, !tbaa !19
  %521 = load float, ptr %vmagic_bias, align 4, !tbaa !19
  %522 = load float, ptr %vfpacc1, align 4, !tbaa !19
  %add460 = fadd float %522, %521
  store float %add460, ptr %vfpacc1, align 4, !tbaa !19
  %523 = load float, ptr %vmagic_bias, align 4, !tbaa !19
  %524 = load float, ptr %vfpacc2, align 4, !tbaa !19
  %add461 = fadd float %524, %523
  store float %add461, ptr %vfpacc2, align 4, !tbaa !19
  %525 = load float, ptr %vmagic_bias, align 4, !tbaa !19
  %526 = load float, ptr %vfpacc3, align 4, !tbaa !19
  %add462 = fadd float %526, %525
  store float %add462, ptr %vfpacc3, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0) #4
  %527 = load float, ptr %vfpacc0, align 4, !tbaa !19
  %call463 = call i32 @fp32_to_bits(float noundef %527)
  store i32 %call463, ptr %vout0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1) #4
  %528 = load float, ptr %vfpacc1, align 4, !tbaa !19
  %call464 = call i32 @fp32_to_bits(float noundef %528)
  store i32 %call464, ptr %vout1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2) #4
  %529 = load float, ptr %vfpacc2, align 4, !tbaa !19
  %call465 = call i32 @fp32_to_bits(float noundef %529)
  store i32 %call465, ptr %vout2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout3) #4
  %530 = load float, ptr %vfpacc3, align 4, !tbaa !19
  %call466 = call i32 @fp32_to_bits(float noundef %530)
  store i32 %call466, ptr %vout3, align 4, !tbaa !12
  %531 = load i32, ptr %vout0, align 4, !tbaa !12
  %532 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call467 = call i32 @math_max_s32(i32 noundef %531, i32 noundef %532)
  store i32 %call467, ptr %vout0, align 4, !tbaa !12
  %533 = load i32, ptr %vout1, align 4, !tbaa !12
  %534 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call468 = call i32 @math_max_s32(i32 noundef %533, i32 noundef %534)
  store i32 %call468, ptr %vout1, align 4, !tbaa !12
  %535 = load i32, ptr %vout2, align 4, !tbaa !12
  %536 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call469 = call i32 @math_max_s32(i32 noundef %535, i32 noundef %536)
  store i32 %call469, ptr %vout2, align 4, !tbaa !12
  %537 = load i32, ptr %vout3, align 4, !tbaa !12
  %538 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call470 = call i32 @math_max_s32(i32 noundef %537, i32 noundef %538)
  store i32 %call470, ptr %vout3, align 4, !tbaa !12
  %539 = load i32, ptr %vout0, align 4, !tbaa !12
  %540 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call471 = call i32 @math_min_s32(i32 noundef %539, i32 noundef %540)
  store i32 %call471, ptr %vout0, align 4, !tbaa !12
  %541 = load i32, ptr %vout1, align 4, !tbaa !12
  %542 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call472 = call i32 @math_min_s32(i32 noundef %541, i32 noundef %542)
  store i32 %call472, ptr %vout1, align 4, !tbaa !12
  %543 = load i32, ptr %vout2, align 4, !tbaa !12
  %544 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call473 = call i32 @math_min_s32(i32 noundef %543, i32 noundef %544)
  store i32 %call473, ptr %vout2, align 4, !tbaa !12
  %545 = load i32, ptr %vout3, align 4, !tbaa !12
  %546 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call474 = call i32 @math_min_s32(i32 noundef %545, i32 noundef %546)
  store i32 %call474, ptr %vout3, align 4, !tbaa !12
  %547 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %548 = load i32, ptr %vout0, align 4, !tbaa !12
  %sub475 = sub nsw i32 %548, %547
  store i32 %sub475, ptr %vout0, align 4, !tbaa !12
  %549 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %550 = load i32, ptr %vout1, align 4, !tbaa !12
  %sub476 = sub nsw i32 %550, %549
  store i32 %sub476, ptr %vout1, align 4, !tbaa !12
  %551 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %552 = load i32, ptr %vout2, align 4, !tbaa !12
  %sub477 = sub nsw i32 %552, %551
  store i32 %sub477, ptr %vout2, align 4, !tbaa !12
  %553 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %554 = load i32, ptr %vout3, align 4, !tbaa !12
  %sub478 = sub nsw i32 %554, %553
  store i32 %sub478, ptr %vout3, align 4, !tbaa !12
  %555 = load i32, ptr %vout0, align 4, !tbaa !12
  %conv479 = trunc i32 %555 to i8
  %556 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx480 = getelementptr inbounds i8, ptr %556, i64 0
  store i8 %conv479, ptr %arrayidx480, align 1, !tbaa !11
  %557 = load i32, ptr %vout1, align 4, !tbaa !12
  %conv481 = trunc i32 %557 to i8
  %558 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx482 = getelementptr inbounds i8, ptr %558, i64 1
  store i8 %conv481, ptr %arrayidx482, align 1, !tbaa !11
  %559 = load i32, ptr %vout2, align 4, !tbaa !12
  %conv483 = trunc i32 %559 to i8
  %560 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx484 = getelementptr inbounds i8, ptr %560, i64 2
  store i8 %conv483, ptr %arrayidx484, align 1, !tbaa !11
  %561 = load i32, ptr %vout3, align 4, !tbaa !12
  %conv485 = trunc i32 %561 to i8
  %562 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx486 = getelementptr inbounds i8, ptr %562, i64 3
  store i8 %conv485, ptr %arrayidx486, align 1, !tbaa !11
  %563 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr487 = getelementptr inbounds i8, ptr %563, i64 4
  store ptr %add.ptr487, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x3443) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x2439) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x1435) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi6x0431) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x3426) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x2422) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x1418) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi5x0414) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x3409) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x2405) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x1401) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi4x0397) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x3392) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x2388) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x1384) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi3x0380) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x3375) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x2371) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x1367) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x0363) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x3358) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x2354) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x1350) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x0346) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x3340) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3338) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x2335) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2333) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x1330) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1328) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x0325) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0323) #4
  br label %for.inc488

for.inc488:                                       ; preds = %for.body322
  %564 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %sub489 = sub i64 %564, 4
  store i64 %sub489, ptr %channels.addr, align 8, !tbaa !5
  br label %for.cond319, !llvm.loop !21

for.end490:                                       ; preds = %for.cond319
  %565 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp491 = icmp ne i64 %565, 0
  %lnot493 = xor i1 %cmp491, true
  %lnot495 = xor i1 %lnot493, true
  %lnot.ext496 = zext i1 %lnot495 to i32
  %conv497 = sext i32 %lnot.ext496 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv497, i64 0)
  %tobool498 = icmp ne i64 %expval, 0
  br i1 %tobool498, label %if.then499, label %if.end532

if.then499:                                       ; preds = %for.end490
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then499
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #4
  %566 = load ptr, ptr %buffer.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i32, ptr %566, i32 1
  store ptr %incdec.ptr, ptr %buffer.addr, align 8, !tbaa !9
  %567 = load i32, ptr %566, align 4, !tbaa !12
  store i32 %567, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0) #4
  %568 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr500 = getelementptr inbounds i8, ptr %568, i32 1
  store ptr %incdec.ptr500, ptr %i0, align 8, !tbaa !9
  %569 = load i8, ptr %568, align 1, !tbaa !11
  %conv501 = zext i8 %569 to i32
  store i32 %conv501, ptr %vi0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1) #4
  %570 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr502 = getelementptr inbounds i8, ptr %570, i32 1
  store ptr %incdec.ptr502, ptr %i1, align 8, !tbaa !9
  %571 = load i8, ptr %570, align 1, !tbaa !11
  %conv503 = zext i8 %571 to i32
  store i32 %conv503, ptr %vi1, align 4, !tbaa !12
  %572 = load i32, ptr %vi0, align 4, !tbaa !12
  %573 = load i32, ptr %vacc, align 4, !tbaa !12
  %add504 = add nsw i32 %573, %572
  store i32 %add504, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2) #4
  %574 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr505 = getelementptr inbounds i8, ptr %574, i32 1
  store ptr %incdec.ptr505, ptr %i2, align 8, !tbaa !9
  %575 = load i8, ptr %574, align 1, !tbaa !11
  %conv506 = zext i8 %575 to i32
  store i32 %conv506, ptr %vi2, align 4, !tbaa !12
  %576 = load i32, ptr %vi1, align 4, !tbaa !12
  %577 = load i32, ptr %vacc, align 4, !tbaa !12
  %add507 = add nsw i32 %577, %576
  store i32 %add507, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi3) #4
  %578 = load ptr, ptr %i3, align 8, !tbaa !9
  %incdec.ptr508 = getelementptr inbounds i8, ptr %578, i32 1
  store ptr %incdec.ptr508, ptr %i3, align 8, !tbaa !9
  %579 = load i8, ptr %578, align 1, !tbaa !11
  %conv509 = zext i8 %579 to i32
  store i32 %conv509, ptr %vi3, align 4, !tbaa !12
  %580 = load i32, ptr %vi2, align 4, !tbaa !12
  %581 = load i32, ptr %vacc, align 4, !tbaa !12
  %add510 = add nsw i32 %581, %580
  store i32 %add510, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi4) #4
  %582 = load ptr, ptr %i4, align 8, !tbaa !9
  %incdec.ptr511 = getelementptr inbounds i8, ptr %582, i32 1
  store ptr %incdec.ptr511, ptr %i4, align 8, !tbaa !9
  %583 = load i8, ptr %582, align 1, !tbaa !11
  %conv512 = zext i8 %583 to i32
  store i32 %conv512, ptr %vi4, align 4, !tbaa !12
  %584 = load i32, ptr %vi3, align 4, !tbaa !12
  %585 = load i32, ptr %vacc, align 4, !tbaa !12
  %add513 = add nsw i32 %585, %584
  store i32 %add513, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi5) #4
  %586 = load ptr, ptr %i5, align 8, !tbaa !9
  %incdec.ptr514 = getelementptr inbounds i8, ptr %586, i32 1
  store ptr %incdec.ptr514, ptr %i5, align 8, !tbaa !9
  %587 = load i8, ptr %586, align 1, !tbaa !11
  %conv515 = zext i8 %587 to i32
  store i32 %conv515, ptr %vi5, align 4, !tbaa !12
  %588 = load i32, ptr %vi4, align 4, !tbaa !12
  %589 = load i32, ptr %vacc, align 4, !tbaa !12
  %add516 = add nsw i32 %589, %588
  store i32 %add516, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi6) #4
  %590 = load ptr, ptr %i6, align 8, !tbaa !9
  %incdec.ptr517 = getelementptr inbounds i8, ptr %590, i32 1
  store ptr %incdec.ptr517, ptr %i6, align 8, !tbaa !9
  %591 = load i8, ptr %590, align 1, !tbaa !11
  %conv518 = zext i8 %591 to i32
  store i32 %conv518, ptr %vi6, align 4, !tbaa !12
  %592 = load i32, ptr %vi5, align 4, !tbaa !12
  %593 = load i32, ptr %vacc, align 4, !tbaa !12
  %add519 = add nsw i32 %593, %592
  store i32 %add519, ptr %vacc, align 4, !tbaa !12
  %594 = load i32, ptr %vi6, align 4, !tbaa !12
  %595 = load i32, ptr %vacc, align 4, !tbaa !12
  %add520 = add nsw i32 %595, %594
  store i32 %add520, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc) #4
  %596 = load i32, ptr %vacc, align 4, !tbaa !12
  %conv521 = sitofp i32 %596 to float
  %597 = load float, ptr %vscale, align 4, !tbaa !19
  %mul522 = fmul float %conv521, %597
  store float %mul522, ptr %vfpacc, align 4, !tbaa !19
  %598 = load float, ptr %vmagic_bias, align 4, !tbaa !19
  %599 = load float, ptr %vfpacc, align 4, !tbaa !19
  %add523 = fadd float %599, %598
  store float %add523, ptr %vfpacc, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout) #4
  %600 = load float, ptr %vfpacc, align 4, !tbaa !19
  %call524 = call i32 @fp32_to_bits(float noundef %600)
  store i32 %call524, ptr %vout, align 4, !tbaa !12
  %601 = load i32, ptr %vout, align 4, !tbaa !12
  %602 = load i32, ptr %vmagic_min, align 4, !tbaa !12
  %call525 = call i32 @math_max_s32(i32 noundef %601, i32 noundef %602)
  store i32 %call525, ptr %vout, align 4, !tbaa !12
  %603 = load i32, ptr %vout, align 4, !tbaa !12
  %604 = load i32, ptr %vmagic_max, align 4, !tbaa !12
  %call526 = call i32 @math_min_s32(i32 noundef %603, i32 noundef %604)
  store i32 %call526, ptr %vout, align 4, !tbaa !12
  %605 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !12
  %606 = load i32, ptr %vout, align 4, !tbaa !12
  %sub527 = sub nsw i32 %606, %605
  store i32 %sub527, ptr %vout, align 4, !tbaa !12
  %607 = load i32, ptr %vout, align 4, !tbaa !12
  %conv528 = trunc i32 %607 to i8
  %608 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %incdec.ptr529 = getelementptr inbounds i8, ptr %608, i32 1
  store ptr %incdec.ptr529, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv528, ptr %608, align 1, !tbaa !11
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
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %609 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %dec = add i64 %609, -1
  store i64 %dec, ptr %channels.addr, align 8, !tbaa !5
  %cmp530 = icmp ne i64 %dec, 0
  br i1 %cmp530, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %do.cond
  br label %if.end532

if.end532:                                        ; preds = %do.end, %for.end490
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vinit_bias) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_increment) #4
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
define internal i64 @round_up_po2(i64 noundef %n, i64 noundef %q) #2 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  %2 = load i64, ptr %q.addr, align 8, !tbaa !5
  %call = call i64 @round_down_po2(i64 noundef %sub, i64 noundef %2)
  ret i64 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #2 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !19
  store float %0, ptr %fp32, align 4, !tbaa !11
  %1 = load i32, ptr %fp32, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_max_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !12
  store i32 %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load i32, ptr %a.addr, align 4, !tbaa !12
  %1 = load i32, ptr %b.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !12
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
  store i32 %a, ptr %a.addr, align 4, !tbaa !12
  store i32 %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load i32, ptr %a.addr, align 4, !tbaa !12
  %1 = load i32, ptr %b.addr, align 4, !tbaa !12
  %cmp = icmp slt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #2 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !7, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}

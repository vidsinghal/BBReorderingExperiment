; ModuleID = 'samples/280.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/x16-transpose/gen/8x8-reuse-switch-sse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2(ptr noundef %input, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_stride, i64 noundef %block_width, i64 noundef %block_height) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %output_stride.addr = alloca i64, align 8
  %block_width.addr = alloca i64, align 8
  %block_height.addr = alloca i64, align 8
  %tile_height = alloca i64, align 8
  %tile_width = alloca i64, align 8
  %tile_hbytes = alloca i64, align 8
  %tile_wbytes = alloca i64, align 8
  %input_reset = alloca i64, align 8
  %output_reset = alloca i64, align 8
  %i0 = alloca ptr, align 8
  %o = alloca ptr, align 8
  %minus_output_stride = alloca i64, align 8
  %rem = alloca i64, align 8
  %oN_stride = alloca i64, align 8
  %bh = alloca i64, align 8
  %v3_0 = alloca <2 x i64>, align 16
  %v3_1 = alloca <2 x i64>, align 16
  %v3_2 = alloca <2 x i64>, align 16
  %v3_3 = alloca <2 x i64>, align 16
  %v3_4 = alloca <2 x i64>, align 16
  %v3_5 = alloca <2 x i64>, align 16
  %v3_6 = alloca <2 x i64>, align 16
  %v3_7 = alloca <2 x i64>, align 16
  %v2_0 = alloca <2 x i64>, align 16
  %v2_1 = alloca <2 x i64>, align 16
  %v2_2 = alloca <2 x i64>, align 16
  %v2_3 = alloca <2 x i64>, align 16
  %v2_4 = alloca <2 x i64>, align 16
  %v2_5 = alloca <2 x i64>, align 16
  %v2_6 = alloca <2 x i64>, align 16
  %v2_7 = alloca <2 x i64>, align 16
  %v1_0 = alloca <2 x i64>, align 16
  %v1_1 = alloca <2 x i64>, align 16
  %v1_2 = alloca <2 x i64>, align 16
  %v1_3 = alloca <2 x i64>, align 16
  %v1_4 = alloca <2 x i64>, align 16
  %v1_5 = alloca <2 x i64>, align 16
  %v1_6 = alloca <2 x i64>, align 16
  %v1_7 = alloca <2 x i64>, align 16
  %v0_0 = alloca <2 x i64>, align 16
  %v0_1 = alloca <2 x i64>, align 16
  %v0_2 = alloca <2 x i64>, align 16
  %v0_3 = alloca <2 x i64>, align 16
  %v0_4 = alloca <2 x i64>, align 16
  %v0_5 = alloca <2 x i64>, align 16
  %v0_6 = alloca <2 x i64>, align 16
  %v0_7 = alloca <2 x i64>, align 16
  %oN = alloca ptr, align 8
  %v3_066 = alloca <2 x i64>, align 16
  %i1 = alloca ptr, align 8
  %v3_172 = alloca <2 x i64>, align 16
  %i2 = alloca ptr, align 8
  %v3_285 = alloca <2 x i64>, align 16
  %i3 = alloca ptr, align 8
  %v3_398 = alloca <2 x i64>, align 16
  %i4 = alloca ptr, align 8
  %v3_4111 = alloca <2 x i64>, align 16
  %i5 = alloca ptr, align 8
  %v3_5124 = alloca <2 x i64>, align 16
  %i6 = alloca ptr, align 8
  %v3_6137 = alloca <2 x i64>, align 16
  %v3_7139 = alloca <2 x i64>, align 16
  %v2_0141 = alloca <2 x i64>, align 16
  %v2_1143 = alloca <2 x i64>, align 16
  %v2_2145 = alloca <2 x i64>, align 16
  %v2_3147 = alloca <2 x i64>, align 16
  %v2_4149 = alloca <2 x i64>, align 16
  %v2_5151 = alloca <2 x i64>, align 16
  %v2_6153 = alloca <2 x i64>, align 16
  %v2_7155 = alloca <2 x i64>, align 16
  %v1_0157 = alloca <2 x i64>, align 16
  %v1_1159 = alloca <2 x i64>, align 16
  %v1_2161 = alloca <2 x i64>, align 16
  %v1_3163 = alloca <2 x i64>, align 16
  %v1_4165 = alloca <2 x i64>, align 16
  %v1_5167 = alloca <2 x i64>, align 16
  %v1_6169 = alloca <2 x i64>, align 16
  %v1_7171 = alloca <2 x i64>, align 16
  %v0_0173 = alloca <2 x i64>, align 16
  %v0_1175 = alloca <2 x i64>, align 16
  %v0_2177 = alloca <2 x i64>, align 16
  %v0_3179 = alloca <2 x i64>, align 16
  %v0_4181 = alloca <2 x i64>, align 16
  %v0_5183 = alloca <2 x i64>, align 16
  %v0_6185 = alloca <2 x i64>, align 16
  %v0_7187 = alloca <2 x i64>, align 16
  %oN191 = alloca ptr, align 8
  %oN224 = alloca ptr, align 8
  %oN266 = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !9
  store i64 %output_stride, ptr %output_stride.addr, align 8, !tbaa !9
  store i64 %block_width, ptr %block_width.addr, align 8, !tbaa !9
  store i64 %block_height, ptr %block_height.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tile_height) #5
  store i64 8, ptr %tile_height, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tile_width) #5
  store i64 8, ptr %tile_width, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tile_hbytes) #5
  store i64 16, ptr %tile_hbytes, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tile_wbytes) #5
  store i64 16, ptr %tile_wbytes, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_reset) #5
  %0 = load i64, ptr %block_height.addr, align 8, !tbaa !9
  %call = call i64 @round_down_po2(i64 noundef %0, i64 noundef 8)
  %1 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %mul = mul i64 %call, %1
  %sub = sub i64 16, %mul
  store i64 %sub, ptr %input_reset, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_reset) #5
  %2 = load i64, ptr %output_stride.addr, align 8, !tbaa !9
  %mul1 = mul i64 8, %2
  %3 = load i64, ptr %block_height.addr, align 8, !tbaa !9
  %call2 = call i64 @round_down_po2(i64 noundef %3, i64 noundef 2)
  %mul3 = mul i64 %call2, 2
  %sub4 = sub i64 %mul1, %mul3
  store i64 %sub4, ptr %output_reset, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #5
  %4 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr %4, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #5
  %5 = load ptr, ptr %output.addr, align 8, !tbaa !5
  store ptr %5, ptr %o, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_output_stride) #5
  %6 = load i64, ptr %output_stride.addr, align 8, !tbaa !9
  %sub5 = sub i64 0, %6
  store i64 %sub5, ptr %minus_output_stride, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %do.cond308, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #5
  %7 = load i64, ptr %block_width.addr, align 8, !tbaa !9
  %sub6 = sub i64 %7, 1
  %call7 = call i64 @min(i64 noundef %sub6, i64 noundef 7)
  store i64 %call7, ptr %rem, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %oN_stride) #5
  %8 = load i64, ptr %rem, align 8, !tbaa !9
  %9 = load i64, ptr %output_stride.addr, align 8, !tbaa !9
  %mul8 = mul i64 %8, %9
  store i64 %mul8, ptr %oN_stride, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #5
  %10 = load i64, ptr %block_height.addr, align 8, !tbaa !9
  store i64 %10, ptr %bh, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %11 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp = icmp uge i64 %11, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_0) #5
  %12 = load ptr, ptr %i0, align 8, !tbaa !5
  %call9 = call <2 x i64> @_mm_loadu_si128(ptr noundef %12)
  store <2 x i64> %call9, ptr %v3_0, align 16, !tbaa !11
  %13 = load ptr, ptr %i0, align 8, !tbaa !5
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add = add i64 %14, %15
  %16 = inttoptr i64 %add to ptr
  store ptr %16, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_1) #5
  %17 = load ptr, ptr %i0, align 8, !tbaa !5
  %call10 = call <2 x i64> @_mm_loadu_si128(ptr noundef %17)
  store <2 x i64> %call10, ptr %v3_1, align 16, !tbaa !11
  %18 = load ptr, ptr %i0, align 8, !tbaa !5
  %19 = ptrtoint ptr %18 to i64
  %20 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add11 = add i64 %19, %20
  %21 = inttoptr i64 %add11 to ptr
  store ptr %21, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_2) #5
  %22 = load ptr, ptr %i0, align 8, !tbaa !5
  %call12 = call <2 x i64> @_mm_loadu_si128(ptr noundef %22)
  store <2 x i64> %call12, ptr %v3_2, align 16, !tbaa !11
  %23 = load ptr, ptr %i0, align 8, !tbaa !5
  %24 = ptrtoint ptr %23 to i64
  %25 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add13 = add i64 %24, %25
  %26 = inttoptr i64 %add13 to ptr
  store ptr %26, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_3) #5
  %27 = load ptr, ptr %i0, align 8, !tbaa !5
  %call14 = call <2 x i64> @_mm_loadu_si128(ptr noundef %27)
  store <2 x i64> %call14, ptr %v3_3, align 16, !tbaa !11
  %28 = load ptr, ptr %i0, align 8, !tbaa !5
  %29 = ptrtoint ptr %28 to i64
  %30 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add15 = add i64 %29, %30
  %31 = inttoptr i64 %add15 to ptr
  store ptr %31, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_4) #5
  %32 = load ptr, ptr %i0, align 8, !tbaa !5
  %call16 = call <2 x i64> @_mm_loadu_si128(ptr noundef %32)
  store <2 x i64> %call16, ptr %v3_4, align 16, !tbaa !11
  %33 = load ptr, ptr %i0, align 8, !tbaa !5
  %34 = ptrtoint ptr %33 to i64
  %35 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add17 = add i64 %34, %35
  %36 = inttoptr i64 %add17 to ptr
  store ptr %36, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_5) #5
  %37 = load ptr, ptr %i0, align 8, !tbaa !5
  %call18 = call <2 x i64> @_mm_loadu_si128(ptr noundef %37)
  store <2 x i64> %call18, ptr %v3_5, align 16, !tbaa !11
  %38 = load ptr, ptr %i0, align 8, !tbaa !5
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add19 = add i64 %39, %40
  %41 = inttoptr i64 %add19 to ptr
  store ptr %41, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_6) #5
  %42 = load ptr, ptr %i0, align 8, !tbaa !5
  %call20 = call <2 x i64> @_mm_loadu_si128(ptr noundef %42)
  store <2 x i64> %call20, ptr %v3_6, align 16, !tbaa !11
  %43 = load ptr, ptr %i0, align 8, !tbaa !5
  %44 = ptrtoint ptr %43 to i64
  %45 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add21 = add i64 %44, %45
  %46 = inttoptr i64 %add21 to ptr
  store ptr %46, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_7) #5
  %47 = load ptr, ptr %i0, align 8, !tbaa !5
  %call22 = call <2 x i64> @_mm_loadu_si128(ptr noundef %47)
  store <2 x i64> %call22, ptr %v3_7, align 16, !tbaa !11
  %48 = load ptr, ptr %i0, align 8, !tbaa !5
  %49 = ptrtoint ptr %48 to i64
  %50 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add23 = add i64 %49, %50
  %51 = inttoptr i64 %add23 to ptr
  store ptr %51, ptr %i0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_0) #5
  %52 = load <2 x i64>, ptr %v3_0, align 16, !tbaa !11
  %53 = load <2 x i64>, ptr %v3_1, align 16, !tbaa !11
  %call24 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %52, <2 x i64> noundef %53)
  store <2 x i64> %call24, ptr %v2_0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_1) #5
  %54 = load <2 x i64>, ptr %v3_0, align 16, !tbaa !11
  %55 = load <2 x i64>, ptr %v3_1, align 16, !tbaa !11
  %call25 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %54, <2 x i64> noundef %55)
  store <2 x i64> %call25, ptr %v2_1, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_2) #5
  %56 = load <2 x i64>, ptr %v3_2, align 16, !tbaa !11
  %57 = load <2 x i64>, ptr %v3_3, align 16, !tbaa !11
  %call26 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %56, <2 x i64> noundef %57)
  store <2 x i64> %call26, ptr %v2_2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_3) #5
  %58 = load <2 x i64>, ptr %v3_2, align 16, !tbaa !11
  %59 = load <2 x i64>, ptr %v3_3, align 16, !tbaa !11
  %call27 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %58, <2 x i64> noundef %59)
  store <2 x i64> %call27, ptr %v2_3, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_4) #5
  %60 = load <2 x i64>, ptr %v3_4, align 16, !tbaa !11
  %61 = load <2 x i64>, ptr %v3_5, align 16, !tbaa !11
  %call28 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %60, <2 x i64> noundef %61)
  store <2 x i64> %call28, ptr %v2_4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_5) #5
  %62 = load <2 x i64>, ptr %v3_4, align 16, !tbaa !11
  %63 = load <2 x i64>, ptr %v3_5, align 16, !tbaa !11
  %call29 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %62, <2 x i64> noundef %63)
  store <2 x i64> %call29, ptr %v2_5, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_6) #5
  %64 = load <2 x i64>, ptr %v3_6, align 16, !tbaa !11
  %65 = load <2 x i64>, ptr %v3_7, align 16, !tbaa !11
  %call30 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %64, <2 x i64> noundef %65)
  store <2 x i64> %call30, ptr %v2_6, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_7) #5
  %66 = load <2 x i64>, ptr %v3_6, align 16, !tbaa !11
  %67 = load <2 x i64>, ptr %v3_7, align 16, !tbaa !11
  %call31 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %66, <2 x i64> noundef %67)
  store <2 x i64> %call31, ptr %v2_7, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_0) #5
  %68 = load <2 x i64>, ptr %v2_0, align 16, !tbaa !11
  %69 = load <2 x i64>, ptr %v2_2, align 16, !tbaa !11
  %call32 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %68, <2 x i64> noundef %69)
  store <2 x i64> %call32, ptr %v1_0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_1) #5
  %70 = load <2 x i64>, ptr %v2_0, align 16, !tbaa !11
  %71 = load <2 x i64>, ptr %v2_2, align 16, !tbaa !11
  %call33 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %70, <2 x i64> noundef %71)
  store <2 x i64> %call33, ptr %v1_1, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_2) #5
  %72 = load <2 x i64>, ptr %v2_1, align 16, !tbaa !11
  %73 = load <2 x i64>, ptr %v2_3, align 16, !tbaa !11
  %call34 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %72, <2 x i64> noundef %73)
  store <2 x i64> %call34, ptr %v1_2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_3) #5
  %74 = load <2 x i64>, ptr %v2_1, align 16, !tbaa !11
  %75 = load <2 x i64>, ptr %v2_3, align 16, !tbaa !11
  %call35 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %74, <2 x i64> noundef %75)
  store <2 x i64> %call35, ptr %v1_3, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_4) #5
  %76 = load <2 x i64>, ptr %v2_4, align 16, !tbaa !11
  %77 = load <2 x i64>, ptr %v2_6, align 16, !tbaa !11
  %call36 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %76, <2 x i64> noundef %77)
  store <2 x i64> %call36, ptr %v1_4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_5) #5
  %78 = load <2 x i64>, ptr %v2_4, align 16, !tbaa !11
  %79 = load <2 x i64>, ptr %v2_6, align 16, !tbaa !11
  %call37 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %78, <2 x i64> noundef %79)
  store <2 x i64> %call37, ptr %v1_5, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_6) #5
  %80 = load <2 x i64>, ptr %v2_5, align 16, !tbaa !11
  %81 = load <2 x i64>, ptr %v2_7, align 16, !tbaa !11
  %call38 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %80, <2 x i64> noundef %81)
  store <2 x i64> %call38, ptr %v1_6, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_7) #5
  %82 = load <2 x i64>, ptr %v2_5, align 16, !tbaa !11
  %83 = load <2 x i64>, ptr %v2_7, align 16, !tbaa !11
  %call39 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %82, <2 x i64> noundef %83)
  store <2 x i64> %call39, ptr %v1_7, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_0) #5
  %84 = load <2 x i64>, ptr %v1_0, align 16, !tbaa !11
  %85 = load <2 x i64>, ptr %v1_4, align 16, !tbaa !11
  %call40 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %84, <2 x i64> noundef %85)
  store <2 x i64> %call40, ptr %v0_0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_1) #5
  %86 = load <2 x i64>, ptr %v1_0, align 16, !tbaa !11
  %87 = load <2 x i64>, ptr %v1_4, align 16, !tbaa !11
  %call41 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %86, <2 x i64> noundef %87)
  store <2 x i64> %call41, ptr %v0_1, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_2) #5
  %88 = load <2 x i64>, ptr %v1_1, align 16, !tbaa !11
  %89 = load <2 x i64>, ptr %v1_5, align 16, !tbaa !11
  %call42 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %88, <2 x i64> noundef %89)
  store <2 x i64> %call42, ptr %v0_2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_3) #5
  %90 = load <2 x i64>, ptr %v1_1, align 16, !tbaa !11
  %91 = load <2 x i64>, ptr %v1_5, align 16, !tbaa !11
  %call43 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %90, <2 x i64> noundef %91)
  store <2 x i64> %call43, ptr %v0_3, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_4) #5
  %92 = load <2 x i64>, ptr %v1_2, align 16, !tbaa !11
  %93 = load <2 x i64>, ptr %v1_6, align 16, !tbaa !11
  %call44 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %92, <2 x i64> noundef %93)
  store <2 x i64> %call44, ptr %v0_4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_5) #5
  %94 = load <2 x i64>, ptr %v1_2, align 16, !tbaa !11
  %95 = load <2 x i64>, ptr %v1_6, align 16, !tbaa !11
  %call45 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %94, <2 x i64> noundef %95)
  store <2 x i64> %call45, ptr %v0_5, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_6) #5
  %96 = load <2 x i64>, ptr %v1_3, align 16, !tbaa !11
  %97 = load <2 x i64>, ptr %v1_7, align 16, !tbaa !11
  %call46 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %96, <2 x i64> noundef %97)
  store <2 x i64> %call46, ptr %v0_6, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_7) #5
  %98 = load <2 x i64>, ptr %v1_3, align 16, !tbaa !11
  %99 = load <2 x i64>, ptr %v1_7, align 16, !tbaa !11
  %call47 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %98, <2 x i64> noundef %99)
  store <2 x i64> %call47, ptr %v0_7, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %oN) #5
  %100 = load ptr, ptr %o, align 8, !tbaa !5
  %101 = ptrtoint ptr %100 to i64
  %102 = load i64, ptr %oN_stride, align 8, !tbaa !9
  %add48 = add i64 %101, %102
  %103 = inttoptr i64 %add48 to ptr
  store ptr %103, ptr %oN, align 8, !tbaa !5
  %104 = load i64, ptr %rem, align 8, !tbaa !9
  switch i64 %104, label %sw.default [
    i64 7, label %sw.bb
    i64 6, label %sw.bb50
    i64 5, label %sw.bb52
    i64 4, label %sw.bb54
    i64 3, label %sw.bb56
    i64 2, label %sw.bb58
    i64 1, label %sw.bb60
    i64 0, label %sw.bb61
  ]

sw.bb:                                            ; preds = %for.body
  %105 = load ptr, ptr %oN, align 8, !tbaa !5
  %106 = load <2 x i64>, ptr %v0_7, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %105, <2 x i64> noundef %106)
  %107 = load ptr, ptr %oN, align 8, !tbaa !5
  %108 = ptrtoint ptr %107 to i64
  %109 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add49 = add i64 %108, %109
  %110 = inttoptr i64 %add49 to ptr
  store ptr %110, ptr %oN, align 8, !tbaa !5
  br label %sw.bb50

sw.bb50:                                          ; preds = %for.body, %sw.bb
  %111 = load ptr, ptr %oN, align 8, !tbaa !5
  %112 = load <2 x i64>, ptr %v0_6, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %111, <2 x i64> noundef %112)
  %113 = load ptr, ptr %oN, align 8, !tbaa !5
  %114 = ptrtoint ptr %113 to i64
  %115 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add51 = add i64 %114, %115
  %116 = inttoptr i64 %add51 to ptr
  store ptr %116, ptr %oN, align 8, !tbaa !5
  br label %sw.bb52

sw.bb52:                                          ; preds = %for.body, %sw.bb50
  %117 = load ptr, ptr %oN, align 8, !tbaa !5
  %118 = load <2 x i64>, ptr %v0_5, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %117, <2 x i64> noundef %118)
  %119 = load ptr, ptr %oN, align 8, !tbaa !5
  %120 = ptrtoint ptr %119 to i64
  %121 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add53 = add i64 %120, %121
  %122 = inttoptr i64 %add53 to ptr
  store ptr %122, ptr %oN, align 8, !tbaa !5
  br label %sw.bb54

sw.bb54:                                          ; preds = %for.body, %sw.bb52
  %123 = load ptr, ptr %oN, align 8, !tbaa !5
  %124 = load <2 x i64>, ptr %v0_4, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %123, <2 x i64> noundef %124)
  %125 = load ptr, ptr %oN, align 8, !tbaa !5
  %126 = ptrtoint ptr %125 to i64
  %127 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add55 = add i64 %126, %127
  %128 = inttoptr i64 %add55 to ptr
  store ptr %128, ptr %oN, align 8, !tbaa !5
  br label %sw.bb56

sw.bb56:                                          ; preds = %for.body, %sw.bb54
  %129 = load ptr, ptr %oN, align 8, !tbaa !5
  %130 = load <2 x i64>, ptr %v0_3, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %129, <2 x i64> noundef %130)
  %131 = load ptr, ptr %oN, align 8, !tbaa !5
  %132 = ptrtoint ptr %131 to i64
  %133 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add57 = add i64 %132, %133
  %134 = inttoptr i64 %add57 to ptr
  store ptr %134, ptr %oN, align 8, !tbaa !5
  br label %sw.bb58

sw.bb58:                                          ; preds = %for.body, %sw.bb56
  %135 = load ptr, ptr %oN, align 8, !tbaa !5
  %136 = load <2 x i64>, ptr %v0_2, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %135, <2 x i64> noundef %136)
  %137 = load ptr, ptr %oN, align 8, !tbaa !5
  %138 = ptrtoint ptr %137 to i64
  %139 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add59 = add i64 %138, %139
  %140 = inttoptr i64 %add59 to ptr
  store ptr %140, ptr %oN, align 8, !tbaa !5
  br label %sw.bb60

sw.bb60:                                          ; preds = %for.body, %sw.bb58
  %141 = load ptr, ptr %oN, align 8, !tbaa !5
  %142 = load <2 x i64>, ptr %v0_1, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %141, <2 x i64> noundef %142)
  br label %sw.bb61

sw.bb61:                                          ; preds = %for.body, %sw.bb60
  %143 = load ptr, ptr %o, align 8, !tbaa !5
  %144 = load <2 x i64>, ptr %v0_0, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %143, <2 x i64> noundef %144)
  %145 = load ptr, ptr %o, align 8, !tbaa !5
  %146 = ptrtoint ptr %145 to i64
  %add62 = add i64 %146, 16
  %147 = inttoptr i64 %add62 to ptr
  store ptr %147, ptr %o, align 8, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %do.body63

do.body63:                                        ; preds = %sw.default
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb61
  call void @llvm.lifetime.end.p0(i64 8, ptr %oN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_0) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_0) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_0) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_0) #5
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %148 = load i64, ptr %bh, align 8, !tbaa !9
  %sub64 = sub i64 %148, 8
  store i64 %sub64, ptr %bh, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %149 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp65 = icmp ne i64 %149, 0
  br i1 %cmp65, label %if.then, label %if.end304

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_066) #5
  %150 = load ptr, ptr %i0, align 8, !tbaa !5
  %call67 = call <2 x i64> @_mm_loadu_si128(ptr noundef %150)
  store <2 x i64> %call67, ptr %v3_066, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #5
  %151 = load ptr, ptr %i0, align 8, !tbaa !5
  %152 = ptrtoint ptr %151 to i64
  %153 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add68 = add i64 %152, %153
  %154 = inttoptr i64 %add68 to ptr
  store ptr %154, ptr %i1, align 8, !tbaa !5
  %155 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp69 = icmp ult i64 %155, 2
  %lnot = xor i1 %cmp69, true
  %lnot70 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot70 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then71, label %if.end, !unpredictable !14

if.then71:                                        ; preds = %if.then
  %156 = load ptr, ptr %i0, align 8, !tbaa !5
  store ptr %156, ptr %i1, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then71, %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_172) #5
  %157 = load ptr, ptr %i1, align 8, !tbaa !5
  %call73 = call <2 x i64> @_mm_loadu_si128(ptr noundef %157)
  store <2 x i64> %call73, ptr %v3_172, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #5
  %158 = load ptr, ptr %i1, align 8, !tbaa !5
  %159 = ptrtoint ptr %158 to i64
  %160 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add74 = add i64 %159, %160
  %161 = inttoptr i64 %add74 to ptr
  store ptr %161, ptr %i2, align 8, !tbaa !5
  %162 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp75 = icmp ule i64 %162, 2
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %tobool82 = icmp ne i64 %conv81, 0
  br i1 %tobool82, label %if.then83, label %if.end84, !unpredictable !14

if.then83:                                        ; preds = %if.end
  %163 = load ptr, ptr %i1, align 8, !tbaa !5
  store ptr %163, ptr %i2, align 8, !tbaa !5
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_285) #5
  %164 = load ptr, ptr %i2, align 8, !tbaa !5
  %call86 = call <2 x i64> @_mm_loadu_si128(ptr noundef %164)
  store <2 x i64> %call86, ptr %v3_285, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #5
  %165 = load ptr, ptr %i2, align 8, !tbaa !5
  %166 = ptrtoint ptr %165 to i64
  %167 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add87 = add i64 %166, %167
  %168 = inttoptr i64 %add87 to ptr
  store ptr %168, ptr %i3, align 8, !tbaa !5
  %169 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp88 = icmp ult i64 %169, 4
  %lnot90 = xor i1 %cmp88, true
  %lnot92 = xor i1 %lnot90, true
  %lnot.ext93 = zext i1 %lnot92 to i32
  %conv94 = sext i32 %lnot.ext93 to i64
  %tobool95 = icmp ne i64 %conv94, 0
  br i1 %tobool95, label %if.then96, label %if.end97, !unpredictable !14

if.then96:                                        ; preds = %if.end84
  %170 = load ptr, ptr %i2, align 8, !tbaa !5
  store ptr %170, ptr %i3, align 8, !tbaa !5
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end84
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_398) #5
  %171 = load ptr, ptr %i3, align 8, !tbaa !5
  %call99 = call <2 x i64> @_mm_loadu_si128(ptr noundef %171)
  store <2 x i64> %call99, ptr %v3_398, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #5
  %172 = load ptr, ptr %i3, align 8, !tbaa !5
  %173 = ptrtoint ptr %172 to i64
  %174 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add100 = add i64 %173, %174
  %175 = inttoptr i64 %add100 to ptr
  store ptr %175, ptr %i4, align 8, !tbaa !5
  %176 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp101 = icmp ule i64 %176, 4
  %lnot103 = xor i1 %cmp101, true
  %lnot105 = xor i1 %lnot103, true
  %lnot.ext106 = zext i1 %lnot105 to i32
  %conv107 = sext i32 %lnot.ext106 to i64
  %tobool108 = icmp ne i64 %conv107, 0
  br i1 %tobool108, label %if.then109, label %if.end110, !unpredictable !14

if.then109:                                       ; preds = %if.end97
  %177 = load ptr, ptr %i3, align 8, !tbaa !5
  store ptr %177, ptr %i4, align 8, !tbaa !5
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end97
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_4111) #5
  %178 = load ptr, ptr %i4, align 8, !tbaa !5
  %call112 = call <2 x i64> @_mm_loadu_si128(ptr noundef %178)
  store <2 x i64> %call112, ptr %v3_4111, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #5
  %179 = load ptr, ptr %i4, align 8, !tbaa !5
  %180 = ptrtoint ptr %179 to i64
  %181 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add113 = add i64 %180, %181
  %182 = inttoptr i64 %add113 to ptr
  store ptr %182, ptr %i5, align 8, !tbaa !5
  %183 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp114 = icmp ult i64 %183, 6
  %lnot116 = xor i1 %cmp114, true
  %lnot118 = xor i1 %lnot116, true
  %lnot.ext119 = zext i1 %lnot118 to i32
  %conv120 = sext i32 %lnot.ext119 to i64
  %tobool121 = icmp ne i64 %conv120, 0
  br i1 %tobool121, label %if.then122, label %if.end123, !unpredictable !14

if.then122:                                       ; preds = %if.end110
  %184 = load ptr, ptr %i4, align 8, !tbaa !5
  store ptr %184, ptr %i5, align 8, !tbaa !5
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end110
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_5124) #5
  %185 = load ptr, ptr %i5, align 8, !tbaa !5
  %call125 = call <2 x i64> @_mm_loadu_si128(ptr noundef %185)
  store <2 x i64> %call125, ptr %v3_5124, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #5
  %186 = load ptr, ptr %i5, align 8, !tbaa !5
  %187 = ptrtoint ptr %186 to i64
  %188 = load i64, ptr %input_stride.addr, align 8, !tbaa !9
  %add126 = add i64 %187, %188
  %189 = inttoptr i64 %add126 to ptr
  store ptr %189, ptr %i6, align 8, !tbaa !5
  %190 = load i64, ptr %bh, align 8, !tbaa !9
  %cmp127 = icmp ule i64 %190, 6
  %lnot129 = xor i1 %cmp127, true
  %lnot131 = xor i1 %lnot129, true
  %lnot.ext132 = zext i1 %lnot131 to i32
  %conv133 = sext i32 %lnot.ext132 to i64
  %tobool134 = icmp ne i64 %conv133, 0
  br i1 %tobool134, label %if.then135, label %if.end136, !unpredictable !14

if.then135:                                       ; preds = %if.end123
  %191 = load ptr, ptr %i5, align 8, !tbaa !5
  store ptr %191, ptr %i6, align 8, !tbaa !5
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end123
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_6137) #5
  %192 = load ptr, ptr %i6, align 8, !tbaa !5
  %call138 = call <2 x i64> @_mm_loadu_si128(ptr noundef %192)
  store <2 x i64> %call138, ptr %v3_6137, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3_7139) #5
  %call140 = call <2 x i64> @_mm_undefined_si128()
  store <2 x i64> %call140, ptr %v3_7139, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_0141) #5
  %193 = load <2 x i64>, ptr %v3_066, align 16, !tbaa !11
  %194 = load <2 x i64>, ptr %v3_172, align 16, !tbaa !11
  %call142 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %193, <2 x i64> noundef %194)
  store <2 x i64> %call142, ptr %v2_0141, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_1143) #5
  %195 = load <2 x i64>, ptr %v3_066, align 16, !tbaa !11
  %196 = load <2 x i64>, ptr %v3_172, align 16, !tbaa !11
  %call144 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %195, <2 x i64> noundef %196)
  store <2 x i64> %call144, ptr %v2_1143, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_2145) #5
  %197 = load <2 x i64>, ptr %v3_285, align 16, !tbaa !11
  %198 = load <2 x i64>, ptr %v3_398, align 16, !tbaa !11
  %call146 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %197, <2 x i64> noundef %198)
  store <2 x i64> %call146, ptr %v2_2145, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_3147) #5
  %199 = load <2 x i64>, ptr %v3_285, align 16, !tbaa !11
  %200 = load <2 x i64>, ptr %v3_398, align 16, !tbaa !11
  %call148 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %199, <2 x i64> noundef %200)
  store <2 x i64> %call148, ptr %v2_3147, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_4149) #5
  %201 = load <2 x i64>, ptr %v3_4111, align 16, !tbaa !11
  %202 = load <2 x i64>, ptr %v3_5124, align 16, !tbaa !11
  %call150 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %201, <2 x i64> noundef %202)
  store <2 x i64> %call150, ptr %v2_4149, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_5151) #5
  %203 = load <2 x i64>, ptr %v3_4111, align 16, !tbaa !11
  %204 = load <2 x i64>, ptr %v3_5124, align 16, !tbaa !11
  %call152 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %203, <2 x i64> noundef %204)
  store <2 x i64> %call152, ptr %v2_5151, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_6153) #5
  %205 = load <2 x i64>, ptr %v3_6137, align 16, !tbaa !11
  %206 = load <2 x i64>, ptr %v3_7139, align 16, !tbaa !11
  %call154 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %205, <2 x i64> noundef %206)
  store <2 x i64> %call154, ptr %v2_6153, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v2_7155) #5
  %207 = load <2 x i64>, ptr %v3_6137, align 16, !tbaa !11
  %208 = load <2 x i64>, ptr %v3_7139, align 16, !tbaa !11
  %call156 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %207, <2 x i64> noundef %208)
  store <2 x i64> %call156, ptr %v2_7155, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_0157) #5
  %209 = load <2 x i64>, ptr %v2_0141, align 16, !tbaa !11
  %210 = load <2 x i64>, ptr %v2_2145, align 16, !tbaa !11
  %call158 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %209, <2 x i64> noundef %210)
  store <2 x i64> %call158, ptr %v1_0157, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_1159) #5
  %211 = load <2 x i64>, ptr %v2_0141, align 16, !tbaa !11
  %212 = load <2 x i64>, ptr %v2_2145, align 16, !tbaa !11
  %call160 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %211, <2 x i64> noundef %212)
  store <2 x i64> %call160, ptr %v1_1159, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_2161) #5
  %213 = load <2 x i64>, ptr %v2_1143, align 16, !tbaa !11
  %214 = load <2 x i64>, ptr %v2_3147, align 16, !tbaa !11
  %call162 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %213, <2 x i64> noundef %214)
  store <2 x i64> %call162, ptr %v1_2161, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_3163) #5
  %215 = load <2 x i64>, ptr %v2_1143, align 16, !tbaa !11
  %216 = load <2 x i64>, ptr %v2_3147, align 16, !tbaa !11
  %call164 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %215, <2 x i64> noundef %216)
  store <2 x i64> %call164, ptr %v1_3163, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_4165) #5
  %217 = load <2 x i64>, ptr %v2_4149, align 16, !tbaa !11
  %218 = load <2 x i64>, ptr %v2_6153, align 16, !tbaa !11
  %call166 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %217, <2 x i64> noundef %218)
  store <2 x i64> %call166, ptr %v1_4165, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_5167) #5
  %219 = load <2 x i64>, ptr %v2_4149, align 16, !tbaa !11
  %220 = load <2 x i64>, ptr %v2_6153, align 16, !tbaa !11
  %call168 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %219, <2 x i64> noundef %220)
  store <2 x i64> %call168, ptr %v1_5167, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_6169) #5
  %221 = load <2 x i64>, ptr %v2_5151, align 16, !tbaa !11
  %222 = load <2 x i64>, ptr %v2_7155, align 16, !tbaa !11
  %call170 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %221, <2 x i64> noundef %222)
  store <2 x i64> %call170, ptr %v1_6169, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v1_7171) #5
  %223 = load <2 x i64>, ptr %v2_5151, align 16, !tbaa !11
  %224 = load <2 x i64>, ptr %v2_7155, align 16, !tbaa !11
  %call172 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %223, <2 x i64> noundef %224)
  store <2 x i64> %call172, ptr %v1_7171, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_0173) #5
  %225 = load <2 x i64>, ptr %v1_0157, align 16, !tbaa !11
  %226 = load <2 x i64>, ptr %v1_4165, align 16, !tbaa !11
  %call174 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %225, <2 x i64> noundef %226)
  store <2 x i64> %call174, ptr %v0_0173, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_1175) #5
  %227 = load <2 x i64>, ptr %v1_0157, align 16, !tbaa !11
  %228 = load <2 x i64>, ptr %v1_4165, align 16, !tbaa !11
  %call176 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %227, <2 x i64> noundef %228)
  store <2 x i64> %call176, ptr %v0_1175, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_2177) #5
  %229 = load <2 x i64>, ptr %v1_1159, align 16, !tbaa !11
  %230 = load <2 x i64>, ptr %v1_5167, align 16, !tbaa !11
  %call178 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %229, <2 x i64> noundef %230)
  store <2 x i64> %call178, ptr %v0_2177, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_3179) #5
  %231 = load <2 x i64>, ptr %v1_1159, align 16, !tbaa !11
  %232 = load <2 x i64>, ptr %v1_5167, align 16, !tbaa !11
  %call180 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %231, <2 x i64> noundef %232)
  store <2 x i64> %call180, ptr %v0_3179, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_4181) #5
  %233 = load <2 x i64>, ptr %v1_2161, align 16, !tbaa !11
  %234 = load <2 x i64>, ptr %v1_6169, align 16, !tbaa !11
  %call182 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %233, <2 x i64> noundef %234)
  store <2 x i64> %call182, ptr %v0_4181, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_5183) #5
  %235 = load <2 x i64>, ptr %v1_2161, align 16, !tbaa !11
  %236 = load <2 x i64>, ptr %v1_6169, align 16, !tbaa !11
  %call184 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %235, <2 x i64> noundef %236)
  store <2 x i64> %call184, ptr %v0_5183, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_6185) #5
  %237 = load <2 x i64>, ptr %v1_3163, align 16, !tbaa !11
  %238 = load <2 x i64>, ptr %v1_7171, align 16, !tbaa !11
  %call186 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %237, <2 x i64> noundef %238)
  store <2 x i64> %call186, ptr %v0_6185, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %v0_7187) #5
  %239 = load <2 x i64>, ptr %v1_3163, align 16, !tbaa !11
  %240 = load <2 x i64>, ptr %v1_7171, align 16, !tbaa !11
  %call188 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %239, <2 x i64> noundef %240)
  store <2 x i64> %call188, ptr %v0_7187, align 16, !tbaa !11
  %241 = load i64, ptr %bh, align 8, !tbaa !9
  %and = and i64 %241, 4
  %tobool189 = icmp ne i64 %and, 0
  br i1 %tobool189, label %if.then190, label %if.end220

if.then190:                                       ; preds = %if.end136
  call void @llvm.lifetime.start.p0(i64 8, ptr %oN191) #5
  %242 = load ptr, ptr %o, align 8, !tbaa !5
  %243 = ptrtoint ptr %242 to i64
  %244 = load i64, ptr %oN_stride, align 8, !tbaa !9
  %add192 = add i64 %243, %244
  %245 = inttoptr i64 %add192 to ptr
  store ptr %245, ptr %oN191, align 8, !tbaa !5
  %246 = load i64, ptr %rem, align 8, !tbaa !9
  switch i64 %246, label %sw.default207 [
    i64 7, label %sw.bb193
    i64 6, label %sw.bb195
    i64 5, label %sw.bb197
    i64 4, label %sw.bb199
    i64 3, label %sw.bb201
    i64 2, label %sw.bb203
    i64 1, label %sw.bb205
    i64 0, label %sw.bb206
  ]

sw.bb193:                                         ; preds = %if.then190
  %247 = load ptr, ptr %oN191, align 8, !tbaa !5
  %248 = load <2 x i64>, ptr %v0_7187, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %247, <2 x i64> noundef %248)
  %249 = load ptr, ptr %oN191, align 8, !tbaa !5
  %250 = ptrtoint ptr %249 to i64
  %251 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add194 = add i64 %250, %251
  %252 = inttoptr i64 %add194 to ptr
  store ptr %252, ptr %oN191, align 8, !tbaa !5
  br label %sw.bb195

sw.bb195:                                         ; preds = %if.then190, %sw.bb193
  %253 = load ptr, ptr %oN191, align 8, !tbaa !5
  %254 = load <2 x i64>, ptr %v0_6185, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %253, <2 x i64> noundef %254)
  %255 = load ptr, ptr %oN191, align 8, !tbaa !5
  %256 = ptrtoint ptr %255 to i64
  %257 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add196 = add i64 %256, %257
  %258 = inttoptr i64 %add196 to ptr
  store ptr %258, ptr %oN191, align 8, !tbaa !5
  br label %sw.bb197

sw.bb197:                                         ; preds = %if.then190, %sw.bb195
  %259 = load ptr, ptr %oN191, align 8, !tbaa !5
  %260 = load <2 x i64>, ptr %v0_5183, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %259, <2 x i64> noundef %260)
  %261 = load ptr, ptr %oN191, align 8, !tbaa !5
  %262 = ptrtoint ptr %261 to i64
  %263 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add198 = add i64 %262, %263
  %264 = inttoptr i64 %add198 to ptr
  store ptr %264, ptr %oN191, align 8, !tbaa !5
  br label %sw.bb199

sw.bb199:                                         ; preds = %if.then190, %sw.bb197
  %265 = load ptr, ptr %oN191, align 8, !tbaa !5
  %266 = load <2 x i64>, ptr %v0_4181, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %265, <2 x i64> noundef %266)
  %267 = load ptr, ptr %oN191, align 8, !tbaa !5
  %268 = ptrtoint ptr %267 to i64
  %269 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add200 = add i64 %268, %269
  %270 = inttoptr i64 %add200 to ptr
  store ptr %270, ptr %oN191, align 8, !tbaa !5
  br label %sw.bb201

sw.bb201:                                         ; preds = %if.then190, %sw.bb199
  %271 = load ptr, ptr %oN191, align 8, !tbaa !5
  %272 = load <2 x i64>, ptr %v0_3179, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %271, <2 x i64> noundef %272)
  %273 = load ptr, ptr %oN191, align 8, !tbaa !5
  %274 = ptrtoint ptr %273 to i64
  %275 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add202 = add i64 %274, %275
  %276 = inttoptr i64 %add202 to ptr
  store ptr %276, ptr %oN191, align 8, !tbaa !5
  br label %sw.bb203

sw.bb203:                                         ; preds = %if.then190, %sw.bb201
  %277 = load ptr, ptr %oN191, align 8, !tbaa !5
  %278 = load <2 x i64>, ptr %v0_2177, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %277, <2 x i64> noundef %278)
  %279 = load ptr, ptr %oN191, align 8, !tbaa !5
  %280 = ptrtoint ptr %279 to i64
  %281 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add204 = add i64 %280, %281
  %282 = inttoptr i64 %add204 to ptr
  store ptr %282, ptr %oN191, align 8, !tbaa !5
  br label %sw.bb205

sw.bb205:                                         ; preds = %if.then190, %sw.bb203
  %283 = load ptr, ptr %oN191, align 8, !tbaa !5
  %284 = load <2 x i64>, ptr %v0_1175, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %283, <2 x i64> noundef %284)
  br label %sw.bb206

sw.bb206:                                         ; preds = %if.then190, %sw.bb205
  %285 = load ptr, ptr %o, align 8, !tbaa !5
  %286 = load <2 x i64>, ptr %v0_0173, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %285, <2 x i64> noundef %286)
  br label %sw.epilog211

sw.default207:                                    ; preds = %if.then190
  br label %do.body208

do.body208:                                       ; preds = %sw.default207
  unreachable

do.cond209:                                       ; No predecessors!
  br label %do.end210

do.end210:                                        ; preds = %do.cond209
  br label %sw.epilog211

sw.epilog211:                                     ; preds = %do.end210, %sw.bb206
  %287 = load ptr, ptr %o, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i16, ptr %287, i64 4
  store ptr %add.ptr, ptr %o, align 8, !tbaa !5
  %288 = load <2 x i64>, ptr %v0_0173, align 16, !tbaa !11
  %289 = load <2 x i64>, ptr %v0_0173, align 16, !tbaa !11
  %call212 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %288, <2 x i64> noundef %289)
  store <2 x i64> %call212, ptr %v0_0173, align 16, !tbaa !11
  %290 = load <2 x i64>, ptr %v0_1175, align 16, !tbaa !11
  %291 = load <2 x i64>, ptr %v0_1175, align 16, !tbaa !11
  %call213 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %290, <2 x i64> noundef %291)
  store <2 x i64> %call213, ptr %v0_1175, align 16, !tbaa !11
  %292 = load <2 x i64>, ptr %v0_2177, align 16, !tbaa !11
  %293 = load <2 x i64>, ptr %v0_2177, align 16, !tbaa !11
  %call214 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %292, <2 x i64> noundef %293)
  store <2 x i64> %call214, ptr %v0_2177, align 16, !tbaa !11
  %294 = load <2 x i64>, ptr %v0_3179, align 16, !tbaa !11
  %295 = load <2 x i64>, ptr %v0_3179, align 16, !tbaa !11
  %call215 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %294, <2 x i64> noundef %295)
  store <2 x i64> %call215, ptr %v0_3179, align 16, !tbaa !11
  %296 = load <2 x i64>, ptr %v0_4181, align 16, !tbaa !11
  %297 = load <2 x i64>, ptr %v0_4181, align 16, !tbaa !11
  %call216 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %296, <2 x i64> noundef %297)
  store <2 x i64> %call216, ptr %v0_4181, align 16, !tbaa !11
  %298 = load <2 x i64>, ptr %v0_5183, align 16, !tbaa !11
  %299 = load <2 x i64>, ptr %v0_5183, align 16, !tbaa !11
  %call217 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %298, <2 x i64> noundef %299)
  store <2 x i64> %call217, ptr %v0_5183, align 16, !tbaa !11
  %300 = load <2 x i64>, ptr %v0_6185, align 16, !tbaa !11
  %301 = load <2 x i64>, ptr %v0_6185, align 16, !tbaa !11
  %call218 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %300, <2 x i64> noundef %301)
  store <2 x i64> %call218, ptr %v0_6185, align 16, !tbaa !11
  %302 = load <2 x i64>, ptr %v0_7187, align 16, !tbaa !11
  %303 = load <2 x i64>, ptr %v0_7187, align 16, !tbaa !11
  %call219 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %302, <2 x i64> noundef %303)
  store <2 x i64> %call219, ptr %v0_7187, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %oN191) #5
  br label %if.end220

if.end220:                                        ; preds = %sw.epilog211, %if.end136
  %304 = load i64, ptr %bh, align 8, !tbaa !9
  %and221 = and i64 %304, 2
  %tobool222 = icmp ne i64 %and221, 0
  br i1 %tobool222, label %if.then223, label %if.end262

if.then223:                                       ; preds = %if.end220
  call void @llvm.lifetime.start.p0(i64 8, ptr %oN224) #5
  %305 = load ptr, ptr %o, align 8, !tbaa !5
  %306 = ptrtoint ptr %305 to i64
  %307 = load i64, ptr %oN_stride, align 8, !tbaa !9
  %add225 = add i64 %306, %307
  %308 = inttoptr i64 %add225 to ptr
  store ptr %308, ptr %oN224, align 8, !tbaa !5
  %309 = load i64, ptr %rem, align 8, !tbaa !9
  switch i64 %309, label %sw.default248 [
    i64 7, label %sw.bb226
    i64 6, label %sw.bb229
    i64 5, label %sw.bb232
    i64 4, label %sw.bb235
    i64 3, label %sw.bb238
    i64 2, label %sw.bb241
    i64 1, label %sw.bb244
    i64 0, label %sw.bb246
  ]

sw.bb226:                                         ; preds = %if.then223
  %310 = load <2 x i64>, ptr %v0_7187, align 16, !tbaa !11
  %call227 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %310)
  %311 = load ptr, ptr %oN224, align 8, !tbaa !5
  store i32 %call227, ptr %311, align 4, !tbaa !15
  %312 = load ptr, ptr %oN224, align 8, !tbaa !5
  %313 = ptrtoint ptr %312 to i64
  %314 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add228 = add i64 %313, %314
  %315 = inttoptr i64 %add228 to ptr
  store ptr %315, ptr %oN224, align 8, !tbaa !5
  br label %sw.bb229

sw.bb229:                                         ; preds = %if.then223, %sw.bb226
  %316 = load <2 x i64>, ptr %v0_6185, align 16, !tbaa !11
  %call230 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %316)
  %317 = load ptr, ptr %oN224, align 8, !tbaa !5
  store i32 %call230, ptr %317, align 4, !tbaa !15
  %318 = load ptr, ptr %oN224, align 8, !tbaa !5
  %319 = ptrtoint ptr %318 to i64
  %320 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add231 = add i64 %319, %320
  %321 = inttoptr i64 %add231 to ptr
  store ptr %321, ptr %oN224, align 8, !tbaa !5
  br label %sw.bb232

sw.bb232:                                         ; preds = %if.then223, %sw.bb229
  %322 = load <2 x i64>, ptr %v0_5183, align 16, !tbaa !11
  %call233 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %322)
  %323 = load ptr, ptr %oN224, align 8, !tbaa !5
  store i32 %call233, ptr %323, align 4, !tbaa !15
  %324 = load ptr, ptr %oN224, align 8, !tbaa !5
  %325 = ptrtoint ptr %324 to i64
  %326 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add234 = add i64 %325, %326
  %327 = inttoptr i64 %add234 to ptr
  store ptr %327, ptr %oN224, align 8, !tbaa !5
  br label %sw.bb235

sw.bb235:                                         ; preds = %if.then223, %sw.bb232
  %328 = load <2 x i64>, ptr %v0_4181, align 16, !tbaa !11
  %call236 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %328)
  %329 = load ptr, ptr %oN224, align 8, !tbaa !5
  store i32 %call236, ptr %329, align 4, !tbaa !15
  %330 = load ptr, ptr %oN224, align 8, !tbaa !5
  %331 = ptrtoint ptr %330 to i64
  %332 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add237 = add i64 %331, %332
  %333 = inttoptr i64 %add237 to ptr
  store ptr %333, ptr %oN224, align 8, !tbaa !5
  br label %sw.bb238

sw.bb238:                                         ; preds = %if.then223, %sw.bb235
  %334 = load <2 x i64>, ptr %v0_3179, align 16, !tbaa !11
  %call239 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %334)
  %335 = load ptr, ptr %oN224, align 8, !tbaa !5
  store i32 %call239, ptr %335, align 4, !tbaa !15
  %336 = load ptr, ptr %oN224, align 8, !tbaa !5
  %337 = ptrtoint ptr %336 to i64
  %338 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add240 = add i64 %337, %338
  %339 = inttoptr i64 %add240 to ptr
  store ptr %339, ptr %oN224, align 8, !tbaa !5
  br label %sw.bb241

sw.bb241:                                         ; preds = %if.then223, %sw.bb238
  %340 = load <2 x i64>, ptr %v0_2177, align 16, !tbaa !11
  %call242 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %340)
  %341 = load ptr, ptr %oN224, align 8, !tbaa !5
  store i32 %call242, ptr %341, align 4, !tbaa !15
  %342 = load ptr, ptr %oN224, align 8, !tbaa !5
  %343 = ptrtoint ptr %342 to i64
  %344 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add243 = add i64 %343, %344
  %345 = inttoptr i64 %add243 to ptr
  store ptr %345, ptr %oN224, align 8, !tbaa !5
  br label %sw.bb244

sw.bb244:                                         ; preds = %if.then223, %sw.bb241
  %346 = load <2 x i64>, ptr %v0_1175, align 16, !tbaa !11
  %call245 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %346)
  %347 = load ptr, ptr %oN224, align 8, !tbaa !5
  store i32 %call245, ptr %347, align 4, !tbaa !15
  br label %sw.bb246

sw.bb246:                                         ; preds = %if.then223, %sw.bb244
  %348 = load <2 x i64>, ptr %v0_0173, align 16, !tbaa !11
  %call247 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %348)
  %349 = load ptr, ptr %o, align 8, !tbaa !5
  store i32 %call247, ptr %349, align 4, !tbaa !15
  br label %sw.epilog252

sw.default248:                                    ; preds = %if.then223
  br label %do.body249

do.body249:                                       ; preds = %sw.default248
  unreachable

do.cond250:                                       ; No predecessors!
  br label %do.end251

do.end251:                                        ; preds = %do.cond250
  br label %sw.epilog252

sw.epilog252:                                     ; preds = %do.end251, %sw.bb246
  %350 = load ptr, ptr %o, align 8, !tbaa !5
  %add.ptr253 = getelementptr inbounds i16, ptr %350, i64 2
  store ptr %add.ptr253, ptr %o, align 8, !tbaa !5
  %351 = load <2 x i64>, ptr %v0_0173, align 16, !tbaa !11
  %call254 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %351, i32 noundef 32)
  store <2 x i64> %call254, ptr %v0_0173, align 16, !tbaa !11
  %352 = load <2 x i64>, ptr %v0_1175, align 16, !tbaa !11
  %call255 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %352, i32 noundef 32)
  store <2 x i64> %call255, ptr %v0_1175, align 16, !tbaa !11
  %353 = load <2 x i64>, ptr %v0_2177, align 16, !tbaa !11
  %call256 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %353, i32 noundef 32)
  store <2 x i64> %call256, ptr %v0_2177, align 16, !tbaa !11
  %354 = load <2 x i64>, ptr %v0_3179, align 16, !tbaa !11
  %call257 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %354, i32 noundef 32)
  store <2 x i64> %call257, ptr %v0_3179, align 16, !tbaa !11
  %355 = load <2 x i64>, ptr %v0_4181, align 16, !tbaa !11
  %call258 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %355, i32 noundef 32)
  store <2 x i64> %call258, ptr %v0_4181, align 16, !tbaa !11
  %356 = load <2 x i64>, ptr %v0_5183, align 16, !tbaa !11
  %call259 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %356, i32 noundef 32)
  store <2 x i64> %call259, ptr %v0_5183, align 16, !tbaa !11
  %357 = load <2 x i64>, ptr %v0_6185, align 16, !tbaa !11
  %call260 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %357, i32 noundef 32)
  store <2 x i64> %call260, ptr %v0_6185, align 16, !tbaa !11
  %358 = load <2 x i64>, ptr %v0_7187, align 16, !tbaa !11
  %call261 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %358, i32 noundef 32)
  store <2 x i64> %call261, ptr %v0_7187, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %oN224) #5
  br label %if.end262

if.end262:                                        ; preds = %sw.epilog252, %if.end220
  %359 = load i64, ptr %bh, align 8, !tbaa !9
  %and263 = and i64 %359, 1
  %tobool264 = icmp ne i64 %and263, 0
  br i1 %tobool264, label %if.then265, label %if.end303

if.then265:                                       ; preds = %if.end262
  call void @llvm.lifetime.start.p0(i64 8, ptr %oN266) #5
  %360 = load ptr, ptr %o, align 8, !tbaa !5
  %361 = ptrtoint ptr %360 to i64
  %362 = load i64, ptr %oN_stride, align 8, !tbaa !9
  %add267 = add i64 %361, %362
  %363 = inttoptr i64 %add267 to ptr
  store ptr %363, ptr %oN266, align 8, !tbaa !5
  %364 = load i64, ptr %rem, align 8, !tbaa !9
  switch i64 %364, label %sw.default298 [
    i64 7, label %sw.bb268
    i64 6, label %sw.bb272
    i64 5, label %sw.bb276
    i64 4, label %sw.bb280
    i64 3, label %sw.bb284
    i64 2, label %sw.bb288
    i64 1, label %sw.bb292
    i64 0, label %sw.bb295
  ]

sw.bb268:                                         ; preds = %if.then265
  %365 = load <2 x i64>, ptr %v0_7187, align 16, !tbaa !11
  %call269 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %365)
  %conv270 = trunc i32 %call269 to i16
  %366 = load ptr, ptr %oN266, align 8, !tbaa !5
  store i16 %conv270, ptr %366, align 2, !tbaa !17
  %367 = load ptr, ptr %oN266, align 8, !tbaa !5
  %368 = ptrtoint ptr %367 to i64
  %369 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add271 = add i64 %368, %369
  %370 = inttoptr i64 %add271 to ptr
  store ptr %370, ptr %oN266, align 8, !tbaa !5
  br label %sw.bb272

sw.bb272:                                         ; preds = %if.then265, %sw.bb268
  %371 = load <2 x i64>, ptr %v0_6185, align 16, !tbaa !11
  %call273 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %371)
  %conv274 = trunc i32 %call273 to i16
  %372 = load ptr, ptr %oN266, align 8, !tbaa !5
  store i16 %conv274, ptr %372, align 2, !tbaa !17
  %373 = load ptr, ptr %oN266, align 8, !tbaa !5
  %374 = ptrtoint ptr %373 to i64
  %375 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add275 = add i64 %374, %375
  %376 = inttoptr i64 %add275 to ptr
  store ptr %376, ptr %oN266, align 8, !tbaa !5
  br label %sw.bb276

sw.bb276:                                         ; preds = %if.then265, %sw.bb272
  %377 = load <2 x i64>, ptr %v0_5183, align 16, !tbaa !11
  %call277 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %377)
  %conv278 = trunc i32 %call277 to i16
  %378 = load ptr, ptr %oN266, align 8, !tbaa !5
  store i16 %conv278, ptr %378, align 2, !tbaa !17
  %379 = load ptr, ptr %oN266, align 8, !tbaa !5
  %380 = ptrtoint ptr %379 to i64
  %381 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add279 = add i64 %380, %381
  %382 = inttoptr i64 %add279 to ptr
  store ptr %382, ptr %oN266, align 8, !tbaa !5
  br label %sw.bb280

sw.bb280:                                         ; preds = %if.then265, %sw.bb276
  %383 = load <2 x i64>, ptr %v0_4181, align 16, !tbaa !11
  %call281 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %383)
  %conv282 = trunc i32 %call281 to i16
  %384 = load ptr, ptr %oN266, align 8, !tbaa !5
  store i16 %conv282, ptr %384, align 2, !tbaa !17
  %385 = load ptr, ptr %oN266, align 8, !tbaa !5
  %386 = ptrtoint ptr %385 to i64
  %387 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add283 = add i64 %386, %387
  %388 = inttoptr i64 %add283 to ptr
  store ptr %388, ptr %oN266, align 8, !tbaa !5
  br label %sw.bb284

sw.bb284:                                         ; preds = %if.then265, %sw.bb280
  %389 = load <2 x i64>, ptr %v0_3179, align 16, !tbaa !11
  %call285 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %389)
  %conv286 = trunc i32 %call285 to i16
  %390 = load ptr, ptr %oN266, align 8, !tbaa !5
  store i16 %conv286, ptr %390, align 2, !tbaa !17
  %391 = load ptr, ptr %oN266, align 8, !tbaa !5
  %392 = ptrtoint ptr %391 to i64
  %393 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add287 = add i64 %392, %393
  %394 = inttoptr i64 %add287 to ptr
  store ptr %394, ptr %oN266, align 8, !tbaa !5
  br label %sw.bb288

sw.bb288:                                         ; preds = %if.then265, %sw.bb284
  %395 = load <2 x i64>, ptr %v0_2177, align 16, !tbaa !11
  %call289 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %395)
  %conv290 = trunc i32 %call289 to i16
  %396 = load ptr, ptr %oN266, align 8, !tbaa !5
  store i16 %conv290, ptr %396, align 2, !tbaa !17
  %397 = load ptr, ptr %oN266, align 8, !tbaa !5
  %398 = ptrtoint ptr %397 to i64
  %399 = load i64, ptr %minus_output_stride, align 8, !tbaa !9
  %add291 = add i64 %398, %399
  %400 = inttoptr i64 %add291 to ptr
  store ptr %400, ptr %oN266, align 8, !tbaa !5
  br label %sw.bb292

sw.bb292:                                         ; preds = %if.then265, %sw.bb288
  %401 = load <2 x i64>, ptr %v0_1175, align 16, !tbaa !11
  %call293 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %401)
  %conv294 = trunc i32 %call293 to i16
  %402 = load ptr, ptr %oN266, align 8, !tbaa !5
  store i16 %conv294, ptr %402, align 2, !tbaa !17
  br label %sw.bb295

sw.bb295:                                         ; preds = %if.then265, %sw.bb292
  %403 = load <2 x i64>, ptr %v0_0173, align 16, !tbaa !11
  %call296 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %403)
  %conv297 = trunc i32 %call296 to i16
  %404 = load ptr, ptr %o, align 8, !tbaa !5
  store i16 %conv297, ptr %404, align 2, !tbaa !17
  br label %sw.epilog302

sw.default298:                                    ; preds = %if.then265
  br label %do.body299

do.body299:                                       ; preds = %sw.default298
  unreachable

do.cond300:                                       ; No predecessors!
  br label %do.end301

do.end301:                                        ; preds = %do.cond300
  br label %sw.epilog302

sw.epilog302:                                     ; preds = %do.end301, %sw.bb295
  call void @llvm.lifetime.end.p0(i64 8, ptr %oN266) #5
  br label %if.end303

if.end303:                                        ; preds = %sw.epilog302, %if.end262
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_7187) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_6185) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_5183) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_4181) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_3179) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_2177) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_1175) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v0_0173) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_7171) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_6169) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_5167) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_4165) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_3163) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_2161) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_1159) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v1_0157) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_7155) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_6153) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_5151) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_4149) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_3147) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_2145) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_1143) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v2_0141) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_7139) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_6137) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_5124) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_4111) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_398) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_285) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_172) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3_066) #5
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %for.end
  %405 = load ptr, ptr %i0, align 8, !tbaa !5
  %406 = ptrtoint ptr %405 to i64
  %407 = load i64, ptr %input_reset, align 8, !tbaa !9
  %add305 = add i64 %406, %407
  %408 = inttoptr i64 %add305 to ptr
  store ptr %408, ptr %i0, align 8, !tbaa !5
  %409 = load ptr, ptr %o, align 8, !tbaa !5
  %410 = ptrtoint ptr %409 to i64
  %411 = load i64, ptr %output_reset, align 8, !tbaa !9
  %add306 = add i64 %410, %411
  %412 = inttoptr i64 %add306 to ptr
  store ptr %412, ptr %o, align 8, !tbaa !5
  %413 = load i64, ptr %block_width.addr, align 8, !tbaa !9
  %call307 = call i64 @doz(i64 noundef %413, i64 noundef 8)
  store i64 %call307, ptr %block_width.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %oN_stride) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #5
  br label %do.cond308

do.cond308:                                       ; preds = %if.end304
  %414 = load i64, ptr %block_width.addr, align 8, !tbaa !9
  %cmp309 = icmp ne i64 %414, 0
  br i1 %cmp309, label %do.body, label %do.end311, !llvm.loop !19

do.end311:                                        ; preds = %do.cond308
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_output_stride) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_reset) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_reset) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tile_wbytes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tile_hbytes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tile_width) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tile_height) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #2 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !9
  store i64 %q, ptr %q.addr, align 8, !tbaa !9
  %0 = load i64, ptr %n.addr, align 8, !tbaa !9
  %1 = load i64, ptr %q.addr, align 8, !tbaa !9
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @min(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load i64, ptr %b.addr, align 8, !tbaa !9
  %1 = load i64, ptr %a.addr, align 8, !tbaa !9
  %cmp = icmp ult i64 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !14

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %b.addr, align 8, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %a.addr, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !5
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %4 = bitcast <4 x i32> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %4 = bitcast <4 x i32> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 0, i32 2>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !5
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !5
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_undefined_si128() #3 {
entry:
  ret <2 x i64> zeroinitializer
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !5
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !5
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @doz(i64 noundef %a, i64 noundef %b) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load i64, ptr %b.addr, align 8, !tbaa !9
  %1 = load i64, ptr %a.addr, align 8, !tbaa !9
  %cmp = icmp ult i64 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !14

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !9
  %3 = load i64, ptr %b.addr, align 8, !tbaa !9
  %sub = sub i64 %2, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !13}

; ModuleID = 'samples/734.bc'
source_filename = "dec_sse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }

@VP8Transform = external global ptr, align 8
@VP8VFilter16 = external global ptr, align 8
@VP8HFilter16 = external global ptr, align 8
@VP8VFilter8 = external global ptr, align 8
@VP8HFilter8 = external global ptr, align 8
@VP8VFilter16i = external global ptr, align 8
@VP8HFilter16i = external global ptr, align 8
@VP8VFilter8i = external global ptr, align 8
@VP8HFilter8i = external global ptr, align 8
@VP8SimpleVFilter16 = external global ptr, align 8
@VP8SimpleHFilter16 = external global ptr, align 8
@VP8SimpleVFilter16i = external global ptr, align 8
@VP8SimpleHFilter16i = external global ptr, align 8
@VP8PredLuma4 = external global [0 x ptr], align 8
@VP8PredLuma16 = external global [0 x ptr], align 8
@VP8PredChroma8 = external global [0 x ptr], align 8

; Function Attrs: nounwind uwtable
define hidden void @VP8DspInitSSE2() #0 !dbg !66 {
entry:
  store ptr @Transform_SSE2, ptr @VP8Transform, align 8, !dbg !69, !tbaa !70
  store ptr @VFilter16_SSE2, ptr @VP8VFilter16, align 8, !dbg !74, !tbaa !70
  store ptr @HFilter16_SSE2, ptr @VP8HFilter16, align 8, !dbg !75, !tbaa !70
  store ptr @VFilter8_SSE2, ptr @VP8VFilter8, align 8, !dbg !76, !tbaa !70
  store ptr @HFilter8_SSE2, ptr @VP8HFilter8, align 8, !dbg !77, !tbaa !70
  store ptr @VFilter16i_SSE2, ptr @VP8VFilter16i, align 8, !dbg !78, !tbaa !70
  store ptr @HFilter16i_SSE2, ptr @VP8HFilter16i, align 8, !dbg !79, !tbaa !70
  store ptr @VFilter8i_SSE2, ptr @VP8VFilter8i, align 8, !dbg !80, !tbaa !70
  store ptr @HFilter8i_SSE2, ptr @VP8HFilter8i, align 8, !dbg !81, !tbaa !70
  store ptr @SimpleVFilter16_SSE2, ptr @VP8SimpleVFilter16, align 8, !dbg !82, !tbaa !70
  store ptr @SimpleHFilter16_SSE2, ptr @VP8SimpleHFilter16, align 8, !dbg !83, !tbaa !70
  store ptr @SimpleVFilter16i_SSE2, ptr @VP8SimpleVFilter16i, align 8, !dbg !84, !tbaa !70
  store ptr @SimpleHFilter16i_SSE2, ptr @VP8SimpleHFilter16i, align 8, !dbg !85, !tbaa !70
  store ptr @TM4_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma4, i64 0, i64 1), align 8, !dbg !86, !tbaa !70
  store ptr @VE4_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma4, i64 0, i64 2), align 8, !dbg !87, !tbaa !70
  store ptr @RD4_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma4, i64 0, i64 4), align 8, !dbg !88, !tbaa !70
  store ptr @VR4_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma4, i64 0, i64 5), align 8, !dbg !89, !tbaa !70
  store ptr @LD4_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma4, i64 0, i64 6), align 8, !dbg !90, !tbaa !70
  store ptr @VL4_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma4, i64 0, i64 7), align 8, !dbg !91, !tbaa !70
  store ptr @DC16_SSE2, ptr @VP8PredLuma16, align 8, !dbg !92, !tbaa !70
  store ptr @TM16_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma16, i64 0, i64 1), align 8, !dbg !93, !tbaa !70
  store ptr @VE16_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma16, i64 0, i64 2), align 8, !dbg !94, !tbaa !70
  store ptr @HE16_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma16, i64 0, i64 3), align 8, !dbg !95, !tbaa !70
  store ptr @DC16NoTop_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma16, i64 0, i64 4), align 8, !dbg !96, !tbaa !70
  store ptr @DC16NoLeft_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma16, i64 0, i64 5), align 8, !dbg !97, !tbaa !70
  store ptr @DC16NoTopLeft_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredLuma16, i64 0, i64 6), align 8, !dbg !98, !tbaa !70
  store ptr @DC8uv_SSE2, ptr @VP8PredChroma8, align 8, !dbg !99, !tbaa !70
  store ptr @TM8uv_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredChroma8, i64 0, i64 1), align 8, !dbg !100, !tbaa !70
  store ptr @VE8uv_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredChroma8, i64 0, i64 2), align 8, !dbg !101, !tbaa !70
  store ptr @DC8uvNoTop_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredChroma8, i64 0, i64 4), align 8, !dbg !102, !tbaa !70
  store ptr @DC8uvNoLeft_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredChroma8, i64 0, i64 5), align 8, !dbg !103, !tbaa !70
  store ptr @DC8uvNoTopLeft_SSE2, ptr getelementptr inbounds ([0 x ptr], ptr @VP8PredChroma8, i64 0, i64 6), align 8, !dbg !104, !tbaa !70
  ret void, !dbg !105
}

; Function Attrs: nounwind uwtable
define internal void @Transform_SSE2(ptr noundef %in, ptr noundef %dst, i32 noundef %do_two) #1 !dbg !106 {
entry:
  %in.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %do_two.addr = alloca i32, align 4
  %k1 = alloca <2 x i64>, align 16
  %k2 = alloca <2 x i64>, align 16
  %T0 = alloca <2 x i64>, align 16
  %T1 = alloca <2 x i64>, align 16
  %T2 = alloca <2 x i64>, align 16
  %T3 = alloca <2 x i64>, align 16
  %in0 = alloca <2 x i64>, align 16
  %in1 = alloca <2 x i64>, align 16
  %in2 = alloca <2 x i64>, align 16
  %in3 = alloca <2 x i64>, align 16
  %inB0 = alloca <2 x i64>, align 16
  %inB1 = alloca <2 x i64>, align 16
  %inB2 = alloca <2 x i64>, align 16
  %inB3 = alloca <2 x i64>, align 16
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %c1 = alloca <2 x i64>, align 16
  %c2 = alloca <2 x i64>, align 16
  %c3 = alloca <2 x i64>, align 16
  %c4 = alloca <2 x i64>, align 16
  %c = alloca <2 x i64>, align 16
  %d1 = alloca <2 x i64>, align 16
  %d2 = alloca <2 x i64>, align 16
  %d3 = alloca <2 x i64>, align 16
  %d4 = alloca <2 x i64>, align 16
  %d = alloca <2 x i64>, align 16
  %tmp0 = alloca <2 x i64>, align 16
  %tmp1 = alloca <2 x i64>, align 16
  %tmp2 = alloca <2 x i64>, align 16
  %tmp3 = alloca <2 x i64>, align 16
  %four = alloca <2 x i64>, align 16
  %dc = alloca <2 x i64>, align 16
  %a39 = alloca <2 x i64>, align 16
  %b41 = alloca <2 x i64>, align 16
  %c143 = alloca <2 x i64>, align 16
  %c245 = alloca <2 x i64>, align 16
  %c347 = alloca <2 x i64>, align 16
  %c449 = alloca <2 x i64>, align 16
  %c51 = alloca <2 x i64>, align 16
  %d153 = alloca <2 x i64>, align 16
  %d255 = alloca <2 x i64>, align 16
  %d357 = alloca <2 x i64>, align 16
  %d459 = alloca <2 x i64>, align 16
  %d61 = alloca <2 x i64>, align 16
  %tmp063 = alloca <2 x i64>, align 16
  %tmp165 = alloca <2 x i64>, align 16
  %tmp267 = alloca <2 x i64>, align 16
  %tmp369 = alloca <2 x i64>, align 16
  %shifted0 = alloca <2 x i64>, align 16
  %shifted1 = alloca <2 x i64>, align 16
  %shifted2 = alloca <2 x i64>, align 16
  %shifted3 = alloca <2 x i64>, align 16
  %zero = alloca <2 x i64>, align 16
  %dst0 = alloca <2 x i64>, align 16
  %dst1 = alloca <2 x i64>, align 16
  %dst2 = alloca <2 x i64>, align 16
  %dst3 = alloca <2 x i64>, align 16
  store ptr %in, ptr %in.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !120, metadata !DIExpression()), !dbg !186
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !121, metadata !DIExpression()), !dbg !187
  store i32 %do_two, ptr %do_two.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %do_two.addr, metadata !122, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 16, ptr %k1) #9, !dbg !191
  tail call void @llvm.dbg.declare(metadata ptr %k1, metadata !123, metadata !DIExpression()), !dbg !192
  %call = call <2 x i64> @_mm_set1_epi16(i16 noundef signext 20091), !dbg !193
  store <2 x i64> %call, ptr %k1, align 16, !dbg !192, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %k2) #9, !dbg !195
  tail call void @llvm.dbg.declare(metadata ptr %k2, metadata !124, metadata !DIExpression()), !dbg !196
  %call1 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext -30068), !dbg !197
  store <2 x i64> %call1, ptr %k2, align 16, !dbg !196, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %T0) #9, !dbg !198
  tail call void @llvm.dbg.declare(metadata ptr %T0, metadata !125, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 16, ptr %T1) #9, !dbg !198
  tail call void @llvm.dbg.declare(metadata ptr %T1, metadata !126, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 16, ptr %T2) #9, !dbg !198
  tail call void @llvm.dbg.declare(metadata ptr %T2, metadata !127, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 16, ptr %T3) #9, !dbg !198
  tail call void @llvm.dbg.declare(metadata ptr %T3, metadata !128, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 16, ptr %in0) #9, !dbg !203
  tail call void @llvm.dbg.declare(metadata ptr %in0, metadata !129, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 16, ptr %in1) #9, !dbg !203
  tail call void @llvm.dbg.declare(metadata ptr %in1, metadata !130, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 16, ptr %in2) #9, !dbg !203
  tail call void @llvm.dbg.declare(metadata ptr %in2, metadata !131, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 16, ptr %in3) #9, !dbg !203
  tail call void @llvm.dbg.declare(metadata ptr %in3, metadata !132, metadata !DIExpression()), !dbg !207
  %0 = load ptr, ptr %in.addr, align 8, !dbg !208, !tbaa !70
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 0, !dbg !208
  %call2 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx), !dbg !209
  store <2 x i64> %call2, ptr %in0, align 16, !dbg !210, !tbaa !194
  %1 = load ptr, ptr %in.addr, align 8, !dbg !211, !tbaa !70
  %arrayidx3 = getelementptr inbounds i16, ptr %1, i64 4, !dbg !211
  %call4 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx3), !dbg !212
  store <2 x i64> %call4, ptr %in1, align 16, !dbg !213, !tbaa !194
  %2 = load ptr, ptr %in.addr, align 8, !dbg !214, !tbaa !70
  %arrayidx5 = getelementptr inbounds i16, ptr %2, i64 8, !dbg !214
  %call6 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx5), !dbg !215
  store <2 x i64> %call6, ptr %in2, align 16, !dbg !216, !tbaa !194
  %3 = load ptr, ptr %in.addr, align 8, !dbg !217, !tbaa !70
  %arrayidx7 = getelementptr inbounds i16, ptr %3, i64 12, !dbg !217
  %call8 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx7), !dbg !218
  store <2 x i64> %call8, ptr %in3, align 16, !dbg !219, !tbaa !194
  %4 = load i32, ptr %do_two.addr, align 4, !dbg !220, !tbaa !188
  %tobool = icmp ne i32 %4, 0, !dbg !220
  br i1 %tobool, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %inB0) #9, !dbg !222
  tail call void @llvm.dbg.declare(metadata ptr %inB0, metadata !133, metadata !DIExpression()), !dbg !223
  %5 = load ptr, ptr %in.addr, align 8, !dbg !224, !tbaa !70
  %arrayidx9 = getelementptr inbounds i16, ptr %5, i64 16, !dbg !224
  %call10 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx9), !dbg !225
  store <2 x i64> %call10, ptr %inB0, align 16, !dbg !223, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %inB1) #9, !dbg !226
  tail call void @llvm.dbg.declare(metadata ptr %inB1, metadata !137, metadata !DIExpression()), !dbg !227
  %6 = load ptr, ptr %in.addr, align 8, !dbg !228, !tbaa !70
  %arrayidx11 = getelementptr inbounds i16, ptr %6, i64 20, !dbg !228
  %call12 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx11), !dbg !229
  store <2 x i64> %call12, ptr %inB1, align 16, !dbg !227, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %inB2) #9, !dbg !230
  tail call void @llvm.dbg.declare(metadata ptr %inB2, metadata !138, metadata !DIExpression()), !dbg !231
  %7 = load ptr, ptr %in.addr, align 8, !dbg !232, !tbaa !70
  %arrayidx13 = getelementptr inbounds i16, ptr %7, i64 24, !dbg !232
  %call14 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx13), !dbg !233
  store <2 x i64> %call14, ptr %inB2, align 16, !dbg !231, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %inB3) #9, !dbg !234
  tail call void @llvm.dbg.declare(metadata ptr %inB3, metadata !139, metadata !DIExpression()), !dbg !235
  %8 = load ptr, ptr %in.addr, align 8, !dbg !236, !tbaa !70
  %arrayidx15 = getelementptr inbounds i16, ptr %8, i64 28, !dbg !236
  %call16 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx15), !dbg !237
  store <2 x i64> %call16, ptr %inB3, align 16, !dbg !235, !tbaa !194
  %9 = load <2 x i64>, ptr %in0, align 16, !dbg !238, !tbaa !194
  %10 = load <2 x i64>, ptr %inB0, align 16, !dbg !239, !tbaa !194
  %call17 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %9, <2 x i64> noundef %10), !dbg !240
  store <2 x i64> %call17, ptr %in0, align 16, !dbg !241, !tbaa !194
  %11 = load <2 x i64>, ptr %in1, align 16, !dbg !242, !tbaa !194
  %12 = load <2 x i64>, ptr %inB1, align 16, !dbg !243, !tbaa !194
  %call18 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %11, <2 x i64> noundef %12), !dbg !244
  store <2 x i64> %call18, ptr %in1, align 16, !dbg !245, !tbaa !194
  %13 = load <2 x i64>, ptr %in2, align 16, !dbg !246, !tbaa !194
  %14 = load <2 x i64>, ptr %inB2, align 16, !dbg !247, !tbaa !194
  %call19 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %13, <2 x i64> noundef %14), !dbg !248
  store <2 x i64> %call19, ptr %in2, align 16, !dbg !249, !tbaa !194
  %15 = load <2 x i64>, ptr %in3, align 16, !dbg !250, !tbaa !194
  %16 = load <2 x i64>, ptr %inB3, align 16, !dbg !251, !tbaa !194
  %call20 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %15, <2 x i64> noundef %16), !dbg !252
  store <2 x i64> %call20, ptr %in3, align 16, !dbg !253, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %inB3) #9, !dbg !254
  call void @llvm.lifetime.end.p0(i64 16, ptr %inB2) #9, !dbg !254
  call void @llvm.lifetime.end.p0(i64 16, ptr %inB1) #9, !dbg !254
  call void @llvm.lifetime.end.p0(i64 16, ptr %inB0) #9, !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #9, !dbg !256
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !140, metadata !DIExpression()), !dbg !257
  %17 = load <2 x i64>, ptr %in0, align 16, !dbg !258, !tbaa !194
  %18 = load <2 x i64>, ptr %in2, align 16, !dbg !259, !tbaa !194
  %call21 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %17, <2 x i64> noundef %18), !dbg !260
  store <2 x i64> %call21, ptr %a, align 16, !dbg !257, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #9, !dbg !261
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !142, metadata !DIExpression()), !dbg !262
  %19 = load <2 x i64>, ptr %in0, align 16, !dbg !263, !tbaa !194
  %20 = load <2 x i64>, ptr %in2, align 16, !dbg !264, !tbaa !194
  %call22 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %19, <2 x i64> noundef %20), !dbg !265
  store <2 x i64> %call22, ptr %b, align 16, !dbg !262, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c1) #9, !dbg !266
  tail call void @llvm.dbg.declare(metadata ptr %c1, metadata !143, metadata !DIExpression()), !dbg !267
  %21 = load <2 x i64>, ptr %in1, align 16, !dbg !268, !tbaa !194
  %22 = load <2 x i64>, ptr %k2, align 16, !dbg !269, !tbaa !194
  %call23 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %21, <2 x i64> noundef %22), !dbg !270
  store <2 x i64> %call23, ptr %c1, align 16, !dbg !267, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c2) #9, !dbg !271
  tail call void @llvm.dbg.declare(metadata ptr %c2, metadata !144, metadata !DIExpression()), !dbg !272
  %23 = load <2 x i64>, ptr %in3, align 16, !dbg !273, !tbaa !194
  %24 = load <2 x i64>, ptr %k1, align 16, !dbg !274, !tbaa !194
  %call24 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %23, <2 x i64> noundef %24), !dbg !275
  store <2 x i64> %call24, ptr %c2, align 16, !dbg !272, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c3) #9, !dbg !276
  tail call void @llvm.dbg.declare(metadata ptr %c3, metadata !145, metadata !DIExpression()), !dbg !277
  %25 = load <2 x i64>, ptr %in1, align 16, !dbg !278, !tbaa !194
  %26 = load <2 x i64>, ptr %in3, align 16, !dbg !279, !tbaa !194
  %call25 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %25, <2 x i64> noundef %26), !dbg !280
  store <2 x i64> %call25, ptr %c3, align 16, !dbg !277, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c4) #9, !dbg !281
  tail call void @llvm.dbg.declare(metadata ptr %c4, metadata !146, metadata !DIExpression()), !dbg !282
  %27 = load <2 x i64>, ptr %c1, align 16, !dbg !283, !tbaa !194
  %28 = load <2 x i64>, ptr %c2, align 16, !dbg !284, !tbaa !194
  %call26 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %27, <2 x i64> noundef %28), !dbg !285
  store <2 x i64> %call26, ptr %c4, align 16, !dbg !282, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #9, !dbg !286
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !147, metadata !DIExpression()), !dbg !287
  %29 = load <2 x i64>, ptr %c3, align 16, !dbg !288, !tbaa !194
  %30 = load <2 x i64>, ptr %c4, align 16, !dbg !289, !tbaa !194
  %call27 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %29, <2 x i64> noundef %30), !dbg !290
  store <2 x i64> %call27, ptr %c, align 16, !dbg !287, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d1) #9, !dbg !291
  tail call void @llvm.dbg.declare(metadata ptr %d1, metadata !148, metadata !DIExpression()), !dbg !292
  %31 = load <2 x i64>, ptr %in1, align 16, !dbg !293, !tbaa !194
  %32 = load <2 x i64>, ptr %k1, align 16, !dbg !294, !tbaa !194
  %call28 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %31, <2 x i64> noundef %32), !dbg !295
  store <2 x i64> %call28, ptr %d1, align 16, !dbg !292, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d2) #9, !dbg !296
  tail call void @llvm.dbg.declare(metadata ptr %d2, metadata !149, metadata !DIExpression()), !dbg !297
  %33 = load <2 x i64>, ptr %in3, align 16, !dbg !298, !tbaa !194
  %34 = load <2 x i64>, ptr %k2, align 16, !dbg !299, !tbaa !194
  %call29 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %33, <2 x i64> noundef %34), !dbg !300
  store <2 x i64> %call29, ptr %d2, align 16, !dbg !297, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d3) #9, !dbg !301
  tail call void @llvm.dbg.declare(metadata ptr %d3, metadata !150, metadata !DIExpression()), !dbg !302
  %35 = load <2 x i64>, ptr %in1, align 16, !dbg !303, !tbaa !194
  %36 = load <2 x i64>, ptr %in3, align 16, !dbg !304, !tbaa !194
  %call30 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %35, <2 x i64> noundef %36), !dbg !305
  store <2 x i64> %call30, ptr %d3, align 16, !dbg !302, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d4) #9, !dbg !306
  tail call void @llvm.dbg.declare(metadata ptr %d4, metadata !151, metadata !DIExpression()), !dbg !307
  %37 = load <2 x i64>, ptr %d1, align 16, !dbg !308, !tbaa !194
  %38 = load <2 x i64>, ptr %d2, align 16, !dbg !309, !tbaa !194
  %call31 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %37, <2 x i64> noundef %38), !dbg !310
  store <2 x i64> %call31, ptr %d4, align 16, !dbg !307, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d) #9, !dbg !311
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !152, metadata !DIExpression()), !dbg !312
  %39 = load <2 x i64>, ptr %d3, align 16, !dbg !313, !tbaa !194
  %40 = load <2 x i64>, ptr %d4, align 16, !dbg !314, !tbaa !194
  %call32 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %39, <2 x i64> noundef %40), !dbg !315
  store <2 x i64> %call32, ptr %d, align 16, !dbg !312, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp0) #9, !dbg !316
  tail call void @llvm.dbg.declare(metadata ptr %tmp0, metadata !153, metadata !DIExpression()), !dbg !317
  %41 = load <2 x i64>, ptr %a, align 16, !dbg !318, !tbaa !194
  %42 = load <2 x i64>, ptr %d, align 16, !dbg !319, !tbaa !194
  %call33 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %41, <2 x i64> noundef %42), !dbg !320
  store <2 x i64> %call33, ptr %tmp0, align 16, !dbg !317, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp1) #9, !dbg !321
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !154, metadata !DIExpression()), !dbg !322
  %43 = load <2 x i64>, ptr %b, align 16, !dbg !323, !tbaa !194
  %44 = load <2 x i64>, ptr %c, align 16, !dbg !324, !tbaa !194
  %call34 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %43, <2 x i64> noundef %44), !dbg !325
  store <2 x i64> %call34, ptr %tmp1, align 16, !dbg !322, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp2) #9, !dbg !326
  tail call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !155, metadata !DIExpression()), !dbg !327
  %45 = load <2 x i64>, ptr %b, align 16, !dbg !328, !tbaa !194
  %46 = load <2 x i64>, ptr %c, align 16, !dbg !329, !tbaa !194
  %call35 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %45, <2 x i64> noundef %46), !dbg !330
  store <2 x i64> %call35, ptr %tmp2, align 16, !dbg !327, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp3) #9, !dbg !331
  tail call void @llvm.dbg.declare(metadata ptr %tmp3, metadata !156, metadata !DIExpression()), !dbg !332
  %47 = load <2 x i64>, ptr %a, align 16, !dbg !333, !tbaa !194
  %48 = load <2 x i64>, ptr %d, align 16, !dbg !334, !tbaa !194
  %call36 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %47, <2 x i64> noundef %48), !dbg !335
  store <2 x i64> %call36, ptr %tmp3, align 16, !dbg !332, !tbaa !194
  call void @VP8Transpose_2_4x4_16b(ptr noundef %tmp0, ptr noundef %tmp1, ptr noundef %tmp2, ptr noundef %tmp3, ptr noundef %T0, ptr noundef %T1, ptr noundef %T2, ptr noundef %T3), !dbg !336
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp3) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp2) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp1) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp0) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %d) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %d4) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %d3) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %d2) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %d1) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %c4) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %c3) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %c2) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %c1) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #9, !dbg !337
  call void @llvm.lifetime.start.p0(i64 16, ptr %four) #9, !dbg !338
  tail call void @llvm.dbg.declare(metadata ptr %four, metadata !157, metadata !DIExpression()), !dbg !339
  %call37 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext 4), !dbg !340
  store <2 x i64> %call37, ptr %four, align 16, !dbg !339, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %dc) #9, !dbg !341
  tail call void @llvm.dbg.declare(metadata ptr %dc, metadata !159, metadata !DIExpression()), !dbg !342
  %49 = load <2 x i64>, ptr %T0, align 16, !dbg !343, !tbaa !194
  %50 = load <2 x i64>, ptr %four, align 16, !dbg !344, !tbaa !194
  %call38 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %49, <2 x i64> noundef %50), !dbg !345
  store <2 x i64> %call38, ptr %dc, align 16, !dbg !342, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a39) #9, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %a39, metadata !160, metadata !DIExpression()), !dbg !347
  %51 = load <2 x i64>, ptr %dc, align 16, !dbg !348, !tbaa !194
  %52 = load <2 x i64>, ptr %T2, align 16, !dbg !349, !tbaa !194
  %call40 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %51, <2 x i64> noundef %52), !dbg !350
  store <2 x i64> %call40, ptr %a39, align 16, !dbg !347, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %b41) #9, !dbg !351
  tail call void @llvm.dbg.declare(metadata ptr %b41, metadata !161, metadata !DIExpression()), !dbg !352
  %53 = load <2 x i64>, ptr %dc, align 16, !dbg !353, !tbaa !194
  %54 = load <2 x i64>, ptr %T2, align 16, !dbg !354, !tbaa !194
  %call42 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %53, <2 x i64> noundef %54), !dbg !355
  store <2 x i64> %call42, ptr %b41, align 16, !dbg !352, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c143) #9, !dbg !356
  tail call void @llvm.dbg.declare(metadata ptr %c143, metadata !162, metadata !DIExpression()), !dbg !357
  %55 = load <2 x i64>, ptr %T1, align 16, !dbg !358, !tbaa !194
  %56 = load <2 x i64>, ptr %k2, align 16, !dbg !359, !tbaa !194
  %call44 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %55, <2 x i64> noundef %56), !dbg !360
  store <2 x i64> %call44, ptr %c143, align 16, !dbg !357, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c245) #9, !dbg !361
  tail call void @llvm.dbg.declare(metadata ptr %c245, metadata !163, metadata !DIExpression()), !dbg !362
  %57 = load <2 x i64>, ptr %T3, align 16, !dbg !363, !tbaa !194
  %58 = load <2 x i64>, ptr %k1, align 16, !dbg !364, !tbaa !194
  %call46 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %57, <2 x i64> noundef %58), !dbg !365
  store <2 x i64> %call46, ptr %c245, align 16, !dbg !362, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c347) #9, !dbg !366
  tail call void @llvm.dbg.declare(metadata ptr %c347, metadata !164, metadata !DIExpression()), !dbg !367
  %59 = load <2 x i64>, ptr %T1, align 16, !dbg !368, !tbaa !194
  %60 = load <2 x i64>, ptr %T3, align 16, !dbg !369, !tbaa !194
  %call48 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %59, <2 x i64> noundef %60), !dbg !370
  store <2 x i64> %call48, ptr %c347, align 16, !dbg !367, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c449) #9, !dbg !371
  tail call void @llvm.dbg.declare(metadata ptr %c449, metadata !165, metadata !DIExpression()), !dbg !372
  %61 = load <2 x i64>, ptr %c143, align 16, !dbg !373, !tbaa !194
  %62 = load <2 x i64>, ptr %c245, align 16, !dbg !374, !tbaa !194
  %call50 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %61, <2 x i64> noundef %62), !dbg !375
  store <2 x i64> %call50, ptr %c449, align 16, !dbg !372, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %c51) #9, !dbg !376
  tail call void @llvm.dbg.declare(metadata ptr %c51, metadata !166, metadata !DIExpression()), !dbg !377
  %63 = load <2 x i64>, ptr %c347, align 16, !dbg !378, !tbaa !194
  %64 = load <2 x i64>, ptr %c449, align 16, !dbg !379, !tbaa !194
  %call52 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %63, <2 x i64> noundef %64), !dbg !380
  store <2 x i64> %call52, ptr %c51, align 16, !dbg !377, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d153) #9, !dbg !381
  tail call void @llvm.dbg.declare(metadata ptr %d153, metadata !167, metadata !DIExpression()), !dbg !382
  %65 = load <2 x i64>, ptr %T1, align 16, !dbg !383, !tbaa !194
  %66 = load <2 x i64>, ptr %k1, align 16, !dbg !384, !tbaa !194
  %call54 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %65, <2 x i64> noundef %66), !dbg !385
  store <2 x i64> %call54, ptr %d153, align 16, !dbg !382, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d255) #9, !dbg !386
  tail call void @llvm.dbg.declare(metadata ptr %d255, metadata !168, metadata !DIExpression()), !dbg !387
  %67 = load <2 x i64>, ptr %T3, align 16, !dbg !388, !tbaa !194
  %68 = load <2 x i64>, ptr %k2, align 16, !dbg !389, !tbaa !194
  %call56 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %67, <2 x i64> noundef %68), !dbg !390
  store <2 x i64> %call56, ptr %d255, align 16, !dbg !387, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d357) #9, !dbg !391
  tail call void @llvm.dbg.declare(metadata ptr %d357, metadata !169, metadata !DIExpression()), !dbg !392
  %69 = load <2 x i64>, ptr %T1, align 16, !dbg !393, !tbaa !194
  %70 = load <2 x i64>, ptr %T3, align 16, !dbg !394, !tbaa !194
  %call58 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %69, <2 x i64> noundef %70), !dbg !395
  store <2 x i64> %call58, ptr %d357, align 16, !dbg !392, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d459) #9, !dbg !396
  tail call void @llvm.dbg.declare(metadata ptr %d459, metadata !170, metadata !DIExpression()), !dbg !397
  %71 = load <2 x i64>, ptr %d153, align 16, !dbg !398, !tbaa !194
  %72 = load <2 x i64>, ptr %d255, align 16, !dbg !399, !tbaa !194
  %call60 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %71, <2 x i64> noundef %72), !dbg !400
  store <2 x i64> %call60, ptr %d459, align 16, !dbg !397, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %d61) #9, !dbg !401
  tail call void @llvm.dbg.declare(metadata ptr %d61, metadata !171, metadata !DIExpression()), !dbg !402
  %73 = load <2 x i64>, ptr %d357, align 16, !dbg !403, !tbaa !194
  %74 = load <2 x i64>, ptr %d459, align 16, !dbg !404, !tbaa !194
  %call62 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %73, <2 x i64> noundef %74), !dbg !405
  store <2 x i64> %call62, ptr %d61, align 16, !dbg !402, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp063) #9, !dbg !406
  tail call void @llvm.dbg.declare(metadata ptr %tmp063, metadata !172, metadata !DIExpression()), !dbg !407
  %75 = load <2 x i64>, ptr %a39, align 16, !dbg !408, !tbaa !194
  %76 = load <2 x i64>, ptr %d61, align 16, !dbg !409, !tbaa !194
  %call64 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %75, <2 x i64> noundef %76), !dbg !410
  store <2 x i64> %call64, ptr %tmp063, align 16, !dbg !407, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp165) #9, !dbg !411
  tail call void @llvm.dbg.declare(metadata ptr %tmp165, metadata !173, metadata !DIExpression()), !dbg !412
  %77 = load <2 x i64>, ptr %b41, align 16, !dbg !413, !tbaa !194
  %78 = load <2 x i64>, ptr %c51, align 16, !dbg !414, !tbaa !194
  %call66 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %77, <2 x i64> noundef %78), !dbg !415
  store <2 x i64> %call66, ptr %tmp165, align 16, !dbg !412, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp267) #9, !dbg !416
  tail call void @llvm.dbg.declare(metadata ptr %tmp267, metadata !174, metadata !DIExpression()), !dbg !417
  %79 = load <2 x i64>, ptr %b41, align 16, !dbg !418, !tbaa !194
  %80 = load <2 x i64>, ptr %c51, align 16, !dbg !419, !tbaa !194
  %call68 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %79, <2 x i64> noundef %80), !dbg !420
  store <2 x i64> %call68, ptr %tmp267, align 16, !dbg !417, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp369) #9, !dbg !421
  tail call void @llvm.dbg.declare(metadata ptr %tmp369, metadata !175, metadata !DIExpression()), !dbg !422
  %81 = load <2 x i64>, ptr %a39, align 16, !dbg !423, !tbaa !194
  %82 = load <2 x i64>, ptr %d61, align 16, !dbg !424, !tbaa !194
  %call70 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %81, <2 x i64> noundef %82), !dbg !425
  store <2 x i64> %call70, ptr %tmp369, align 16, !dbg !422, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %shifted0) #9, !dbg !426
  tail call void @llvm.dbg.declare(metadata ptr %shifted0, metadata !176, metadata !DIExpression()), !dbg !427
  %83 = load <2 x i64>, ptr %tmp063, align 16, !dbg !428, !tbaa !194
  %call71 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %83, i32 noundef 3), !dbg !429
  store <2 x i64> %call71, ptr %shifted0, align 16, !dbg !427, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %shifted1) #9, !dbg !430
  tail call void @llvm.dbg.declare(metadata ptr %shifted1, metadata !177, metadata !DIExpression()), !dbg !431
  %84 = load <2 x i64>, ptr %tmp165, align 16, !dbg !432, !tbaa !194
  %call72 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %84, i32 noundef 3), !dbg !433
  store <2 x i64> %call72, ptr %shifted1, align 16, !dbg !431, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %shifted2) #9, !dbg !434
  tail call void @llvm.dbg.declare(metadata ptr %shifted2, metadata !178, metadata !DIExpression()), !dbg !435
  %85 = load <2 x i64>, ptr %tmp267, align 16, !dbg !436, !tbaa !194
  %call73 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %85, i32 noundef 3), !dbg !437
  store <2 x i64> %call73, ptr %shifted2, align 16, !dbg !435, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %shifted3) #9, !dbg !438
  tail call void @llvm.dbg.declare(metadata ptr %shifted3, metadata !179, metadata !DIExpression()), !dbg !439
  %86 = load <2 x i64>, ptr %tmp369, align 16, !dbg !440, !tbaa !194
  %call74 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %86, i32 noundef 3), !dbg !441
  store <2 x i64> %call74, ptr %shifted3, align 16, !dbg !439, !tbaa !194
  call void @VP8Transpose_2_4x4_16b(ptr noundef %shifted0, ptr noundef %shifted1, ptr noundef %shifted2, ptr noundef %shifted3, ptr noundef %T0, ptr noundef %T1, ptr noundef %T2, ptr noundef %T3), !dbg !442
  call void @llvm.lifetime.end.p0(i64 16, ptr %shifted3) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %shifted2) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %shifted1) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %shifted0) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp369) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp267) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp165) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp063) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %d61) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %d459) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %d357) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %d255) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %d153) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %c51) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %c449) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %c347) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %c245) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %c143) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %b41) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %a39) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %dc) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 16, ptr %four) #9, !dbg !443
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !444
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !180, metadata !DIExpression()), !dbg !445
  %call75 = call <2 x i64> @_mm_setzero_si128(), !dbg !446
  store <2 x i64> %call75, ptr %zero, align 16, !dbg !445, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %dst0) #9, !dbg !447
  tail call void @llvm.dbg.declare(metadata ptr %dst0, metadata !182, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 16, ptr %dst1) #9, !dbg !447
  tail call void @llvm.dbg.declare(metadata ptr %dst1, metadata !183, metadata !DIExpression()), !dbg !449
  call void @llvm.lifetime.start.p0(i64 16, ptr %dst2) #9, !dbg !447
  tail call void @llvm.dbg.declare(metadata ptr %dst2, metadata !184, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 16, ptr %dst3) #9, !dbg !447
  tail call void @llvm.dbg.declare(metadata ptr %dst3, metadata !185, metadata !DIExpression()), !dbg !451
  %87 = load i32, ptr %do_two.addr, align 4, !dbg !452, !tbaa !188
  %tobool76 = icmp ne i32 %87, 0, !dbg !452
  br i1 %tobool76, label %if.then77, label %if.else, !dbg !454

if.then77:                                        ; preds = %if.end
  %88 = load ptr, ptr %dst.addr, align 8, !dbg !455, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %88, i64 0, !dbg !457
  %call78 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr), !dbg !458
  store <2 x i64> %call78, ptr %dst0, align 16, !dbg !459, !tbaa !194
  %89 = load ptr, ptr %dst.addr, align 8, !dbg !460, !tbaa !70
  %add.ptr79 = getelementptr inbounds i8, ptr %89, i64 32, !dbg !461
  %call80 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr79), !dbg !462
  store <2 x i64> %call80, ptr %dst1, align 16, !dbg !463, !tbaa !194
  %90 = load ptr, ptr %dst.addr, align 8, !dbg !464, !tbaa !70
  %add.ptr81 = getelementptr inbounds i8, ptr %90, i64 64, !dbg !465
  %call82 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr81), !dbg !466
  store <2 x i64> %call82, ptr %dst2, align 16, !dbg !467, !tbaa !194
  %91 = load ptr, ptr %dst.addr, align 8, !dbg !468, !tbaa !70
  %add.ptr83 = getelementptr inbounds i8, ptr %91, i64 96, !dbg !469
  %call84 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr83), !dbg !470
  store <2 x i64> %call84, ptr %dst3, align 16, !dbg !471, !tbaa !194
  br label %if.end97, !dbg !472

if.else:                                          ; preds = %if.end
  %92 = load ptr, ptr %dst.addr, align 8, !dbg !473, !tbaa !70
  %add.ptr85 = getelementptr inbounds i8, ptr %92, i64 0, !dbg !475
  %call86 = call i32 @WebPMemToUint32(ptr noundef %add.ptr85), !dbg !476
  %call87 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %call86), !dbg !477
  store <2 x i64> %call87, ptr %dst0, align 16, !dbg !478, !tbaa !194
  %93 = load ptr, ptr %dst.addr, align 8, !dbg !479, !tbaa !70
  %add.ptr88 = getelementptr inbounds i8, ptr %93, i64 32, !dbg !480
  %call89 = call i32 @WebPMemToUint32(ptr noundef %add.ptr88), !dbg !481
  %call90 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %call89), !dbg !482
  store <2 x i64> %call90, ptr %dst1, align 16, !dbg !483, !tbaa !194
  %94 = load ptr, ptr %dst.addr, align 8, !dbg !484, !tbaa !70
  %add.ptr91 = getelementptr inbounds i8, ptr %94, i64 64, !dbg !485
  %call92 = call i32 @WebPMemToUint32(ptr noundef %add.ptr91), !dbg !486
  %call93 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %call92), !dbg !487
  store <2 x i64> %call93, ptr %dst2, align 16, !dbg !488, !tbaa !194
  %95 = load ptr, ptr %dst.addr, align 8, !dbg !489, !tbaa !70
  %add.ptr94 = getelementptr inbounds i8, ptr %95, i64 96, !dbg !490
  %call95 = call i32 @WebPMemToUint32(ptr noundef %add.ptr94), !dbg !491
  %call96 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %call95), !dbg !492
  store <2 x i64> %call96, ptr %dst3, align 16, !dbg !493, !tbaa !194
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then77
  %96 = load <2 x i64>, ptr %dst0, align 16, !dbg !494, !tbaa !194
  %97 = load <2 x i64>, ptr %zero, align 16, !dbg !495, !tbaa !194
  %call98 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %96, <2 x i64> noundef %97), !dbg !496
  store <2 x i64> %call98, ptr %dst0, align 16, !dbg !497, !tbaa !194
  %98 = load <2 x i64>, ptr %dst1, align 16, !dbg !498, !tbaa !194
  %99 = load <2 x i64>, ptr %zero, align 16, !dbg !499, !tbaa !194
  %call99 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %98, <2 x i64> noundef %99), !dbg !500
  store <2 x i64> %call99, ptr %dst1, align 16, !dbg !501, !tbaa !194
  %100 = load <2 x i64>, ptr %dst2, align 16, !dbg !502, !tbaa !194
  %101 = load <2 x i64>, ptr %zero, align 16, !dbg !503, !tbaa !194
  %call100 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %100, <2 x i64> noundef %101), !dbg !504
  store <2 x i64> %call100, ptr %dst2, align 16, !dbg !505, !tbaa !194
  %102 = load <2 x i64>, ptr %dst3, align 16, !dbg !506, !tbaa !194
  %103 = load <2 x i64>, ptr %zero, align 16, !dbg !507, !tbaa !194
  %call101 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %102, <2 x i64> noundef %103), !dbg !508
  store <2 x i64> %call101, ptr %dst3, align 16, !dbg !509, !tbaa !194
  %104 = load <2 x i64>, ptr %dst0, align 16, !dbg !510, !tbaa !194
  %105 = load <2 x i64>, ptr %T0, align 16, !dbg !511, !tbaa !194
  %call102 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %104, <2 x i64> noundef %105), !dbg !512
  store <2 x i64> %call102, ptr %dst0, align 16, !dbg !513, !tbaa !194
  %106 = load <2 x i64>, ptr %dst1, align 16, !dbg !514, !tbaa !194
  %107 = load <2 x i64>, ptr %T1, align 16, !dbg !515, !tbaa !194
  %call103 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %106, <2 x i64> noundef %107), !dbg !516
  store <2 x i64> %call103, ptr %dst1, align 16, !dbg !517, !tbaa !194
  %108 = load <2 x i64>, ptr %dst2, align 16, !dbg !518, !tbaa !194
  %109 = load <2 x i64>, ptr %T2, align 16, !dbg !519, !tbaa !194
  %call104 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %108, <2 x i64> noundef %109), !dbg !520
  store <2 x i64> %call104, ptr %dst2, align 16, !dbg !521, !tbaa !194
  %110 = load <2 x i64>, ptr %dst3, align 16, !dbg !522, !tbaa !194
  %111 = load <2 x i64>, ptr %T3, align 16, !dbg !523, !tbaa !194
  %call105 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %110, <2 x i64> noundef %111), !dbg !524
  store <2 x i64> %call105, ptr %dst3, align 16, !dbg !525, !tbaa !194
  %112 = load <2 x i64>, ptr %dst0, align 16, !dbg !526, !tbaa !194
  %113 = load <2 x i64>, ptr %dst0, align 16, !dbg !527, !tbaa !194
  %call106 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %112, <2 x i64> noundef %113), !dbg !528
  store <2 x i64> %call106, ptr %dst0, align 16, !dbg !529, !tbaa !194
  %114 = load <2 x i64>, ptr %dst1, align 16, !dbg !530, !tbaa !194
  %115 = load <2 x i64>, ptr %dst1, align 16, !dbg !531, !tbaa !194
  %call107 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %114, <2 x i64> noundef %115), !dbg !532
  store <2 x i64> %call107, ptr %dst1, align 16, !dbg !533, !tbaa !194
  %116 = load <2 x i64>, ptr %dst2, align 16, !dbg !534, !tbaa !194
  %117 = load <2 x i64>, ptr %dst2, align 16, !dbg !535, !tbaa !194
  %call108 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %116, <2 x i64> noundef %117), !dbg !536
  store <2 x i64> %call108, ptr %dst2, align 16, !dbg !537, !tbaa !194
  %118 = load <2 x i64>, ptr %dst3, align 16, !dbg !538, !tbaa !194
  %119 = load <2 x i64>, ptr %dst3, align 16, !dbg !539, !tbaa !194
  %call109 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %118, <2 x i64> noundef %119), !dbg !540
  store <2 x i64> %call109, ptr %dst3, align 16, !dbg !541, !tbaa !194
  %120 = load i32, ptr %do_two.addr, align 4, !dbg !542, !tbaa !188
  %tobool110 = icmp ne i32 %120, 0, !dbg !542
  br i1 %tobool110, label %if.then111, label %if.else116, !dbg !544

if.then111:                                       ; preds = %if.end97
  %121 = load ptr, ptr %dst.addr, align 8, !dbg !545, !tbaa !70
  %add.ptr112 = getelementptr inbounds i8, ptr %121, i64 0, !dbg !547
  %122 = load <2 x i64>, ptr %dst0, align 16, !dbg !548, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %add.ptr112, <2 x i64> noundef %122), !dbg !549
  %123 = load ptr, ptr %dst.addr, align 8, !dbg !550, !tbaa !70
  %add.ptr113 = getelementptr inbounds i8, ptr %123, i64 32, !dbg !551
  %124 = load <2 x i64>, ptr %dst1, align 16, !dbg !552, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %add.ptr113, <2 x i64> noundef %124), !dbg !553
  %125 = load ptr, ptr %dst.addr, align 8, !dbg !554, !tbaa !70
  %add.ptr114 = getelementptr inbounds i8, ptr %125, i64 64, !dbg !555
  %126 = load <2 x i64>, ptr %dst2, align 16, !dbg !556, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %add.ptr114, <2 x i64> noundef %126), !dbg !557
  %127 = load ptr, ptr %dst.addr, align 8, !dbg !558, !tbaa !70
  %add.ptr115 = getelementptr inbounds i8, ptr %127, i64 96, !dbg !559
  %128 = load <2 x i64>, ptr %dst3, align 16, !dbg !560, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %add.ptr115, <2 x i64> noundef %128), !dbg !561
  br label %if.end125, !dbg !562

if.else116:                                       ; preds = %if.end97
  %129 = load ptr, ptr %dst.addr, align 8, !dbg !563, !tbaa !70
  %add.ptr117 = getelementptr inbounds i8, ptr %129, i64 0, !dbg !565
  %130 = load <2 x i64>, ptr %dst0, align 16, !dbg !566, !tbaa !194
  %call118 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %130), !dbg !567
  call void @WebPUint32ToMem(ptr noundef %add.ptr117, i32 noundef %call118), !dbg !568
  %131 = load ptr, ptr %dst.addr, align 8, !dbg !569, !tbaa !70
  %add.ptr119 = getelementptr inbounds i8, ptr %131, i64 32, !dbg !570
  %132 = load <2 x i64>, ptr %dst1, align 16, !dbg !571, !tbaa !194
  %call120 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %132), !dbg !572
  call void @WebPUint32ToMem(ptr noundef %add.ptr119, i32 noundef %call120), !dbg !573
  %133 = load ptr, ptr %dst.addr, align 8, !dbg !574, !tbaa !70
  %add.ptr121 = getelementptr inbounds i8, ptr %133, i64 64, !dbg !575
  %134 = load <2 x i64>, ptr %dst2, align 16, !dbg !576, !tbaa !194
  %call122 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %134), !dbg !577
  call void @WebPUint32ToMem(ptr noundef %add.ptr121, i32 noundef %call122), !dbg !578
  %135 = load ptr, ptr %dst.addr, align 8, !dbg !579, !tbaa !70
  %add.ptr123 = getelementptr inbounds i8, ptr %135, i64 96, !dbg !580
  %136 = load <2 x i64>, ptr %dst3, align 16, !dbg !581, !tbaa !194
  %call124 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %136), !dbg !582
  call void @WebPUint32ToMem(ptr noundef %add.ptr123, i32 noundef %call124), !dbg !583
  br label %if.end125

if.end125:                                        ; preds = %if.else116, %if.then111
  call void @llvm.lifetime.end.p0(i64 16, ptr %dst3) #9, !dbg !584
  call void @llvm.lifetime.end.p0(i64 16, ptr %dst2) #9, !dbg !584
  call void @llvm.lifetime.end.p0(i64 16, ptr %dst1) #9, !dbg !584
  call void @llvm.lifetime.end.p0(i64 16, ptr %dst0) #9, !dbg !584
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !584
  call void @llvm.lifetime.end.p0(i64 16, ptr %in3) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %in2) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %in1) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %in0) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %T3) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %T2) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %T1) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %T0) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %k2) #9, !dbg !585
  call void @llvm.lifetime.end.p0(i64 16, ptr %k1) #9, !dbg !585
  ret void, !dbg !585
}

; Function Attrs: nounwind uwtable
define internal void @VFilter16_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !586 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %t1 = alloca <2 x i64>, align 16
  %mask = alloca <2 x i64>, align 16
  %p2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  %q2 = alloca <2 x i64>, align 16
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !590, metadata !DIExpression()), !dbg !603
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !591, metadata !DIExpression()), !dbg !604
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !592, metadata !DIExpression()), !dbg !605
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !593, metadata !DIExpression()), !dbg !606
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !594, metadata !DIExpression()), !dbg !607
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !608
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !595, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !610
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !596, metadata !DIExpression()), !dbg !611
  call void @llvm.lifetime.start.p0(i64 16, ptr %p2) #9, !dbg !612
  tail call void @llvm.dbg.declare(metadata ptr %p2, metadata !597, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !612
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !598, metadata !DIExpression()), !dbg !614
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !612
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !599, metadata !DIExpression()), !dbg !615
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !612
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !600, metadata !DIExpression()), !dbg !616
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !612
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !601, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 16, ptr %q2) #9, !dbg !612
  tail call void @llvm.dbg.declare(metadata ptr %q2, metadata !602, metadata !DIExpression()), !dbg !618
  %0 = load ptr, ptr %p.addr, align 8, !dbg !619, !tbaa !70
  %1 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul = mul nsw i32 4, %1, !dbg !619
  %idx.ext = sext i32 %mul to i64, !dbg !619
  %idx.neg = sub i64 0, %idx.ext, !dbg !619
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.neg, !dbg !619
  %2 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul1 = mul nsw i32 0, %2, !dbg !619
  %idxprom = sext i32 %mul1 to i64, !dbg !619
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom, !dbg !619
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx), !dbg !619
  store <2 x i64> %call, ptr %t1, align 16, !dbg !619, !tbaa !194
  %3 = load ptr, ptr %p.addr, align 8, !dbg !619, !tbaa !70
  %4 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul2 = mul nsw i32 4, %4, !dbg !619
  %idx.ext3 = sext i32 %mul2 to i64, !dbg !619
  %idx.neg4 = sub i64 0, %idx.ext3, !dbg !619
  %add.ptr5 = getelementptr inbounds i8, ptr %3, i64 %idx.neg4, !dbg !619
  %5 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul6 = mul nsw i32 1, %5, !dbg !619
  %idxprom7 = sext i32 %mul6 to i64, !dbg !619
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr5, i64 %idxprom7, !dbg !619
  %call9 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx8), !dbg !619
  store <2 x i64> %call9, ptr %p2, align 16, !dbg !619, !tbaa !194
  %6 = load ptr, ptr %p.addr, align 8, !dbg !619, !tbaa !70
  %7 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul10 = mul nsw i32 4, %7, !dbg !619
  %idx.ext11 = sext i32 %mul10 to i64, !dbg !619
  %idx.neg12 = sub i64 0, %idx.ext11, !dbg !619
  %add.ptr13 = getelementptr inbounds i8, ptr %6, i64 %idx.neg12, !dbg !619
  %8 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul14 = mul nsw i32 2, %8, !dbg !619
  %idxprom15 = sext i32 %mul14 to i64, !dbg !619
  %arrayidx16 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idxprom15, !dbg !619
  %call17 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx16), !dbg !619
  store <2 x i64> %call17, ptr %p1, align 16, !dbg !619, !tbaa !194
  %9 = load ptr, ptr %p.addr, align 8, !dbg !619, !tbaa !70
  %10 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul18 = mul nsw i32 4, %10, !dbg !619
  %idx.ext19 = sext i32 %mul18 to i64, !dbg !619
  %idx.neg20 = sub i64 0, %idx.ext19, !dbg !619
  %add.ptr21 = getelementptr inbounds i8, ptr %9, i64 %idx.neg20, !dbg !619
  %11 = load i32, ptr %stride.addr, align 4, !dbg !619, !tbaa !188
  %mul22 = mul nsw i32 3, %11, !dbg !619
  %idxprom23 = sext i32 %mul22 to i64, !dbg !619
  %arrayidx24 = getelementptr inbounds i8, ptr %add.ptr21, i64 %idxprom23, !dbg !619
  %call25 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx24), !dbg !619
  store <2 x i64> %call25, ptr %p0, align 16, !dbg !619, !tbaa !194
  br label %do.body, !dbg !621

do.body:                                          ; preds = %entry
  %12 = load <2 x i64>, ptr %p0, align 16, !dbg !622, !tbaa !194
  %13 = load <2 x i64>, ptr %p1, align 16, !dbg !622, !tbaa !194
  %call26 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %12, <2 x i64> noundef %13), !dbg !622
  %14 = load <2 x i64>, ptr %p1, align 16, !dbg !622, !tbaa !194
  %15 = load <2 x i64>, ptr %p0, align 16, !dbg !622, !tbaa !194
  %call27 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !622
  %call28 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call26, <2 x i64> noundef %call27), !dbg !622
  store <2 x i64> %call28, ptr %mask, align 16, !dbg !622, !tbaa !194
  %16 = load <2 x i64>, ptr %mask, align 16, !dbg !622, !tbaa !194
  %17 = load <2 x i64>, ptr %p2, align 16, !dbg !622, !tbaa !194
  %18 = load <2 x i64>, ptr %t1, align 16, !dbg !622, !tbaa !194
  %call29 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %17, <2 x i64> noundef %18), !dbg !622
  %19 = load <2 x i64>, ptr %t1, align 16, !dbg !622, !tbaa !194
  %20 = load <2 x i64>, ptr %p2, align 16, !dbg !622, !tbaa !194
  %call30 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %19, <2 x i64> noundef %20), !dbg !622
  %call31 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call29, <2 x i64> noundef %call30), !dbg !622
  %call32 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %16, <2 x i64> noundef %call31), !dbg !622
  store <2 x i64> %call32, ptr %mask, align 16, !dbg !622, !tbaa !194
  %21 = load <2 x i64>, ptr %mask, align 16, !dbg !622, !tbaa !194
  %22 = load <2 x i64>, ptr %p1, align 16, !dbg !622, !tbaa !194
  %23 = load <2 x i64>, ptr %p2, align 16, !dbg !622, !tbaa !194
  %call33 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !622
  %24 = load <2 x i64>, ptr %p2, align 16, !dbg !622, !tbaa !194
  %25 = load <2 x i64>, ptr %p1, align 16, !dbg !622, !tbaa !194
  %call34 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !622
  %call35 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call33, <2 x i64> noundef %call34), !dbg !622
  %call36 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %21, <2 x i64> noundef %call35), !dbg !622
  store <2 x i64> %call36, ptr %mask, align 16, !dbg !622, !tbaa !194
  br label %do.cond, !dbg !622

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !622

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %p.addr, align 8, !dbg !624, !tbaa !70
  %27 = load i32, ptr %stride.addr, align 4, !dbg !624, !tbaa !188
  %mul37 = mul nsw i32 0, %27, !dbg !624
  %idxprom38 = sext i32 %mul37 to i64, !dbg !624
  %arrayidx39 = getelementptr inbounds i8, ptr %26, i64 %idxprom38, !dbg !624
  %call40 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx39), !dbg !624
  store <2 x i64> %call40, ptr %q0, align 16, !dbg !624, !tbaa !194
  %28 = load ptr, ptr %p.addr, align 8, !dbg !624, !tbaa !70
  %29 = load i32, ptr %stride.addr, align 4, !dbg !624, !tbaa !188
  %mul41 = mul nsw i32 1, %29, !dbg !624
  %idxprom42 = sext i32 %mul41 to i64, !dbg !624
  %arrayidx43 = getelementptr inbounds i8, ptr %28, i64 %idxprom42, !dbg !624
  %call44 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx43), !dbg !624
  store <2 x i64> %call44, ptr %q1, align 16, !dbg !624, !tbaa !194
  %30 = load ptr, ptr %p.addr, align 8, !dbg !624, !tbaa !70
  %31 = load i32, ptr %stride.addr, align 4, !dbg !624, !tbaa !188
  %mul45 = mul nsw i32 2, %31, !dbg !624
  %idxprom46 = sext i32 %mul45 to i64, !dbg !624
  %arrayidx47 = getelementptr inbounds i8, ptr %30, i64 %idxprom46, !dbg !624
  %call48 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx47), !dbg !624
  store <2 x i64> %call48, ptr %q2, align 16, !dbg !624, !tbaa !194
  %32 = load ptr, ptr %p.addr, align 8, !dbg !624, !tbaa !70
  %33 = load i32, ptr %stride.addr, align 4, !dbg !624, !tbaa !188
  %mul49 = mul nsw i32 3, %33, !dbg !624
  %idxprom50 = sext i32 %mul49 to i64, !dbg !624
  %arrayidx51 = getelementptr inbounds i8, ptr %32, i64 %idxprom50, !dbg !624
  %call52 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx51), !dbg !624
  store <2 x i64> %call52, ptr %t1, align 16, !dbg !624, !tbaa !194
  br label %do.body53, !dbg !626

do.body53:                                        ; preds = %do.end
  %34 = load <2 x i64>, ptr %mask, align 16, !dbg !627, !tbaa !194
  %35 = load <2 x i64>, ptr %q0, align 16, !dbg !627, !tbaa !194
  %36 = load <2 x i64>, ptr %q1, align 16, !dbg !627, !tbaa !194
  %call54 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %35, <2 x i64> noundef %36), !dbg !627
  %37 = load <2 x i64>, ptr %q1, align 16, !dbg !627, !tbaa !194
  %38 = load <2 x i64>, ptr %q0, align 16, !dbg !627, !tbaa !194
  %call55 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %37, <2 x i64> noundef %38), !dbg !627
  %call56 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call54, <2 x i64> noundef %call55), !dbg !627
  %call57 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %34, <2 x i64> noundef %call56), !dbg !627
  store <2 x i64> %call57, ptr %mask, align 16, !dbg !627, !tbaa !194
  %39 = load <2 x i64>, ptr %mask, align 16, !dbg !627, !tbaa !194
  %40 = load <2 x i64>, ptr %q2, align 16, !dbg !627, !tbaa !194
  %41 = load <2 x i64>, ptr %t1, align 16, !dbg !627, !tbaa !194
  %call58 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %40, <2 x i64> noundef %41), !dbg !627
  %42 = load <2 x i64>, ptr %t1, align 16, !dbg !627, !tbaa !194
  %43 = load <2 x i64>, ptr %q2, align 16, !dbg !627, !tbaa !194
  %call59 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %42, <2 x i64> noundef %43), !dbg !627
  %call60 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call58, <2 x i64> noundef %call59), !dbg !627
  %call61 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %39, <2 x i64> noundef %call60), !dbg !627
  store <2 x i64> %call61, ptr %mask, align 16, !dbg !627, !tbaa !194
  %44 = load <2 x i64>, ptr %mask, align 16, !dbg !627, !tbaa !194
  %45 = load <2 x i64>, ptr %q1, align 16, !dbg !627, !tbaa !194
  %46 = load <2 x i64>, ptr %q2, align 16, !dbg !627, !tbaa !194
  %call62 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %45, <2 x i64> noundef %46), !dbg !627
  %47 = load <2 x i64>, ptr %q2, align 16, !dbg !627, !tbaa !194
  %48 = load <2 x i64>, ptr %q1, align 16, !dbg !627, !tbaa !194
  %call63 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %47, <2 x i64> noundef %48), !dbg !627
  %call64 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call62, <2 x i64> noundef %call63), !dbg !627
  %call65 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %44, <2 x i64> noundef %call64), !dbg !627
  store <2 x i64> %call65, ptr %mask, align 16, !dbg !627, !tbaa !194
  br label %do.cond66, !dbg !627

do.cond66:                                        ; preds = %do.body53
  br label %do.end67, !dbg !627

do.end67:                                         ; preds = %do.cond66
  %49 = load i32, ptr %thresh.addr, align 4, !dbg !629, !tbaa !188
  %50 = load i32, ptr %ithresh.addr, align 4, !dbg !630, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %49, i32 noundef %50, ptr noundef %mask), !dbg !631
  %51 = load i32, ptr %hev_thresh.addr, align 4, !dbg !632, !tbaa !188
  call void @DoFilter6_SSE2(ptr noundef %p2, ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %mask, i32 noundef %51), !dbg !633
  %52 = load ptr, ptr %p.addr, align 8, !dbg !634, !tbaa !70
  %53 = load i32, ptr %stride.addr, align 4, !dbg !635, !tbaa !188
  %mul68 = mul nsw i32 -3, %53, !dbg !636
  %idxprom69 = sext i32 %mul68 to i64, !dbg !634
  %arrayidx70 = getelementptr inbounds i8, ptr %52, i64 %idxprom69, !dbg !634
  %54 = load <2 x i64>, ptr %p2, align 16, !dbg !637, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx70, <2 x i64> noundef %54), !dbg !638
  %55 = load ptr, ptr %p.addr, align 8, !dbg !639, !tbaa !70
  %56 = load i32, ptr %stride.addr, align 4, !dbg !640, !tbaa !188
  %mul71 = mul nsw i32 -2, %56, !dbg !641
  %idxprom72 = sext i32 %mul71 to i64, !dbg !639
  %arrayidx73 = getelementptr inbounds i8, ptr %55, i64 %idxprom72, !dbg !639
  %57 = load <2 x i64>, ptr %p1, align 16, !dbg !642, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx73, <2 x i64> noundef %57), !dbg !643
  %58 = load ptr, ptr %p.addr, align 8, !dbg !644, !tbaa !70
  %59 = load i32, ptr %stride.addr, align 4, !dbg !645, !tbaa !188
  %mul74 = mul nsw i32 -1, %59, !dbg !646
  %idxprom75 = sext i32 %mul74 to i64, !dbg !644
  %arrayidx76 = getelementptr inbounds i8, ptr %58, i64 %idxprom75, !dbg !644
  %60 = load <2 x i64>, ptr %p0, align 16, !dbg !647, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx76, <2 x i64> noundef %60), !dbg !648
  %61 = load ptr, ptr %p.addr, align 8, !dbg !649, !tbaa !70
  %62 = load i32, ptr %stride.addr, align 4, !dbg !650, !tbaa !188
  %mul77 = mul nsw i32 0, %62, !dbg !651
  %idxprom78 = sext i32 %mul77 to i64, !dbg !649
  %arrayidx79 = getelementptr inbounds i8, ptr %61, i64 %idxprom78, !dbg !649
  %63 = load <2 x i64>, ptr %q0, align 16, !dbg !652, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx79, <2 x i64> noundef %63), !dbg !653
  %64 = load ptr, ptr %p.addr, align 8, !dbg !654, !tbaa !70
  %65 = load i32, ptr %stride.addr, align 4, !dbg !655, !tbaa !188
  %mul80 = mul nsw i32 1, %65, !dbg !656
  %idxprom81 = sext i32 %mul80 to i64, !dbg !654
  %arrayidx82 = getelementptr inbounds i8, ptr %64, i64 %idxprom81, !dbg !654
  %66 = load <2 x i64>, ptr %q1, align 16, !dbg !657, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx82, <2 x i64> noundef %66), !dbg !658
  %67 = load ptr, ptr %p.addr, align 8, !dbg !659, !tbaa !70
  %68 = load i32, ptr %stride.addr, align 4, !dbg !660, !tbaa !188
  %mul83 = mul nsw i32 2, %68, !dbg !661
  %idxprom84 = sext i32 %mul83 to i64, !dbg !659
  %arrayidx85 = getelementptr inbounds i8, ptr %67, i64 %idxprom84, !dbg !659
  %69 = load <2 x i64>, ptr %q2, align 16, !dbg !662, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx85, <2 x i64> noundef %69), !dbg !663
  call void @llvm.lifetime.end.p0(i64 16, ptr %q2) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr %p2) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !664
  ret void, !dbg !664
}

; Function Attrs: nounwind uwtable
define internal void @HFilter16_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !665 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %mask = alloca <2 x i64>, align 16
  %p3 = alloca <2 x i64>, align 16
  %p2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  %q2 = alloca <2 x i64>, align 16
  %q3 = alloca <2 x i64>, align 16
  %b = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !667, metadata !DIExpression()), !dbg !683
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !668, metadata !DIExpression()), !dbg !684
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !669, metadata !DIExpression()), !dbg !685
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !670, metadata !DIExpression()), !dbg !686
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !671, metadata !DIExpression()), !dbg !687
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !688
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !672, metadata !DIExpression()), !dbg !689
  call void @llvm.lifetime.start.p0(i64 16, ptr %p3) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %p3, metadata !673, metadata !DIExpression()), !dbg !691
  call void @llvm.lifetime.start.p0(i64 16, ptr %p2) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %p2, metadata !674, metadata !DIExpression()), !dbg !692
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !675, metadata !DIExpression()), !dbg !693
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !676, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !677, metadata !DIExpression()), !dbg !695
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !678, metadata !DIExpression()), !dbg !696
  call void @llvm.lifetime.start.p0(i64 16, ptr %q2) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %q2, metadata !679, metadata !DIExpression()), !dbg !697
  call void @llvm.lifetime.start.p0(i64 16, ptr %q3) #9, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %q3, metadata !680, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #9, !dbg !699
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !681, metadata !DIExpression()), !dbg !700
  %0 = load ptr, ptr %p.addr, align 8, !dbg !701, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -4, !dbg !702
  store ptr %add.ptr, ptr %b, align 8, !dbg !700, !tbaa !70
  %1 = load ptr, ptr %b, align 8, !dbg !703, !tbaa !70
  %2 = load ptr, ptr %b, align 8, !dbg !704, !tbaa !70
  %3 = load i32, ptr %stride.addr, align 4, !dbg !705, !tbaa !188
  %mul = mul nsw i32 8, %3, !dbg !706
  %idx.ext = sext i32 %mul to i64, !dbg !707
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !707
  %4 = load i32, ptr %stride.addr, align 4, !dbg !708, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %1, ptr noundef %add.ptr1, i32 noundef %4, ptr noundef %p3, ptr noundef %p2, ptr noundef %p1, ptr noundef %p0), !dbg !709
  br label %do.body, !dbg !710

do.body:                                          ; preds = %entry
  %5 = load <2 x i64>, ptr %p0, align 16, !dbg !711, !tbaa !194
  %6 = load <2 x i64>, ptr %p1, align 16, !dbg !711, !tbaa !194
  %call = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %5, <2 x i64> noundef %6), !dbg !711
  %7 = load <2 x i64>, ptr %p1, align 16, !dbg !711, !tbaa !194
  %8 = load <2 x i64>, ptr %p0, align 16, !dbg !711, !tbaa !194
  %call2 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %7, <2 x i64> noundef %8), !dbg !711
  %call3 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call, <2 x i64> noundef %call2), !dbg !711
  store <2 x i64> %call3, ptr %mask, align 16, !dbg !711, !tbaa !194
  %9 = load <2 x i64>, ptr %mask, align 16, !dbg !711, !tbaa !194
  %10 = load <2 x i64>, ptr %p2, align 16, !dbg !711, !tbaa !194
  %11 = load <2 x i64>, ptr %p3, align 16, !dbg !711, !tbaa !194
  %call4 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !711
  %12 = load <2 x i64>, ptr %p3, align 16, !dbg !711, !tbaa !194
  %13 = load <2 x i64>, ptr %p2, align 16, !dbg !711, !tbaa !194
  %call5 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %12, <2 x i64> noundef %13), !dbg !711
  %call6 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call4, <2 x i64> noundef %call5), !dbg !711
  %call7 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %9, <2 x i64> noundef %call6), !dbg !711
  store <2 x i64> %call7, ptr %mask, align 16, !dbg !711, !tbaa !194
  %14 = load <2 x i64>, ptr %mask, align 16, !dbg !711, !tbaa !194
  %15 = load <2 x i64>, ptr %p1, align 16, !dbg !711, !tbaa !194
  %16 = load <2 x i64>, ptr %p2, align 16, !dbg !711, !tbaa !194
  %call8 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %15, <2 x i64> noundef %16), !dbg !711
  %17 = load <2 x i64>, ptr %p2, align 16, !dbg !711, !tbaa !194
  %18 = load <2 x i64>, ptr %p1, align 16, !dbg !711, !tbaa !194
  %call9 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %17, <2 x i64> noundef %18), !dbg !711
  %call10 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call8, <2 x i64> noundef %call9), !dbg !711
  %call11 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %14, <2 x i64> noundef %call10), !dbg !711
  store <2 x i64> %call11, ptr %mask, align 16, !dbg !711, !tbaa !194
  br label %do.cond, !dbg !711

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !711

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %p.addr, align 8, !dbg !713, !tbaa !70
  %20 = load ptr, ptr %p.addr, align 8, !dbg !714, !tbaa !70
  %21 = load i32, ptr %stride.addr, align 4, !dbg !715, !tbaa !188
  %mul12 = mul nsw i32 8, %21, !dbg !716
  %idx.ext13 = sext i32 %mul12 to i64, !dbg !717
  %add.ptr14 = getelementptr inbounds i8, ptr %20, i64 %idx.ext13, !dbg !717
  %22 = load i32, ptr %stride.addr, align 4, !dbg !718, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %19, ptr noundef %add.ptr14, i32 noundef %22, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %q3), !dbg !719
  br label %do.body15, !dbg !720

do.body15:                                        ; preds = %do.end
  %23 = load <2 x i64>, ptr %mask, align 16, !dbg !721, !tbaa !194
  %24 = load <2 x i64>, ptr %q0, align 16, !dbg !721, !tbaa !194
  %25 = load <2 x i64>, ptr %q1, align 16, !dbg !721, !tbaa !194
  %call16 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !721
  %26 = load <2 x i64>, ptr %q1, align 16, !dbg !721, !tbaa !194
  %27 = load <2 x i64>, ptr %q0, align 16, !dbg !721, !tbaa !194
  %call17 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %26, <2 x i64> noundef %27), !dbg !721
  %call18 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call16, <2 x i64> noundef %call17), !dbg !721
  %call19 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %23, <2 x i64> noundef %call18), !dbg !721
  store <2 x i64> %call19, ptr %mask, align 16, !dbg !721, !tbaa !194
  %28 = load <2 x i64>, ptr %mask, align 16, !dbg !721, !tbaa !194
  %29 = load <2 x i64>, ptr %q2, align 16, !dbg !721, !tbaa !194
  %30 = load <2 x i64>, ptr %q3, align 16, !dbg !721, !tbaa !194
  %call20 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %29, <2 x i64> noundef %30), !dbg !721
  %31 = load <2 x i64>, ptr %q3, align 16, !dbg !721, !tbaa !194
  %32 = load <2 x i64>, ptr %q2, align 16, !dbg !721, !tbaa !194
  %call21 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %31, <2 x i64> noundef %32), !dbg !721
  %call22 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call20, <2 x i64> noundef %call21), !dbg !721
  %call23 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %28, <2 x i64> noundef %call22), !dbg !721
  store <2 x i64> %call23, ptr %mask, align 16, !dbg !721, !tbaa !194
  %33 = load <2 x i64>, ptr %mask, align 16, !dbg !721, !tbaa !194
  %34 = load <2 x i64>, ptr %q1, align 16, !dbg !721, !tbaa !194
  %35 = load <2 x i64>, ptr %q2, align 16, !dbg !721, !tbaa !194
  %call24 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %34, <2 x i64> noundef %35), !dbg !721
  %36 = load <2 x i64>, ptr %q2, align 16, !dbg !721, !tbaa !194
  %37 = load <2 x i64>, ptr %q1, align 16, !dbg !721, !tbaa !194
  %call25 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %36, <2 x i64> noundef %37), !dbg !721
  %call26 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call24, <2 x i64> noundef %call25), !dbg !721
  %call27 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %33, <2 x i64> noundef %call26), !dbg !721
  store <2 x i64> %call27, ptr %mask, align 16, !dbg !721, !tbaa !194
  br label %do.cond28, !dbg !721

do.cond28:                                        ; preds = %do.body15
  br label %do.end29, !dbg !721

do.end29:                                         ; preds = %do.cond28
  %38 = load i32, ptr %thresh.addr, align 4, !dbg !723, !tbaa !188
  %39 = load i32, ptr %ithresh.addr, align 4, !dbg !724, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %38, i32 noundef %39, ptr noundef %mask), !dbg !725
  %40 = load i32, ptr %hev_thresh.addr, align 4, !dbg !726, !tbaa !188
  call void @DoFilter6_SSE2(ptr noundef %p2, ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %mask, i32 noundef %40), !dbg !727
  %41 = load ptr, ptr %b, align 8, !dbg !728, !tbaa !70
  %42 = load ptr, ptr %b, align 8, !dbg !729, !tbaa !70
  %43 = load i32, ptr %stride.addr, align 4, !dbg !730, !tbaa !188
  %mul30 = mul nsw i32 8, %43, !dbg !731
  %idx.ext31 = sext i32 %mul30 to i64, !dbg !732
  %add.ptr32 = getelementptr inbounds i8, ptr %42, i64 %idx.ext31, !dbg !732
  %44 = load i32, ptr %stride.addr, align 4, !dbg !733, !tbaa !188
  call void @Store16x4_SSE2(ptr noundef %p3, ptr noundef %p2, ptr noundef %p1, ptr noundef %p0, ptr noundef %41, ptr noundef %add.ptr32, i32 noundef %44), !dbg !734
  %45 = load ptr, ptr %p.addr, align 8, !dbg !735, !tbaa !70
  %46 = load ptr, ptr %p.addr, align 8, !dbg !736, !tbaa !70
  %47 = load i32, ptr %stride.addr, align 4, !dbg !737, !tbaa !188
  %mul33 = mul nsw i32 8, %47, !dbg !738
  %idx.ext34 = sext i32 %mul33 to i64, !dbg !739
  %add.ptr35 = getelementptr inbounds i8, ptr %46, i64 %idx.ext34, !dbg !739
  %48 = load i32, ptr %stride.addr, align 4, !dbg !740, !tbaa !188
  call void @Store16x4_SSE2(ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %q3, ptr noundef %45, ptr noundef %add.ptr35, i32 noundef %48), !dbg !741
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %q3) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %q2) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %p2) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %p3) #9, !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !742
  ret void, !dbg !742
}

; Function Attrs: nounwind uwtable
define internal void @VFilter8_SSE2(ptr noundef %u, ptr noundef %v, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !743 {
entry:
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %mask = alloca <2 x i64>, align 16
  %t1 = alloca <2 x i64>, align 16
  %p2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  %q2 = alloca <2 x i64>, align 16
  %U = alloca <2 x i64>, align 16
  %V = alloca <2 x i64>, align 16
  %U12 = alloca <2 x i64>, align 16
  %V21 = alloca <2 x i64>, align 16
  %U34 = alloca <2 x i64>, align 16
  %V43 = alloca <2 x i64>, align 16
  %U56 = alloca <2 x i64>, align 16
  %V65 = alloca <2 x i64>, align 16
  %U92 = alloca <2 x i64>, align 16
  %V97 = alloca <2 x i64>, align 16
  %U106 = alloca <2 x i64>, align 16
  %V111 = alloca <2 x i64>, align 16
  %U120 = alloca <2 x i64>, align 16
  %V125 = alloca <2 x i64>, align 16
  %U134 = alloca <2 x i64>, align 16
  %V139 = alloca <2 x i64>, align 16
  store ptr %u, ptr %u.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !747, metadata !DIExpression()), !dbg !787
  store ptr %v, ptr %v.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !748, metadata !DIExpression()), !dbg !788
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !749, metadata !DIExpression()), !dbg !789
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !750, metadata !DIExpression()), !dbg !790
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !751, metadata !DIExpression()), !dbg !791
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !752, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !793
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !753, metadata !DIExpression()), !dbg !794
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !754, metadata !DIExpression()), !dbg !796
  call void @llvm.lifetime.start.p0(i64 16, ptr %p2) #9, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %p2, metadata !755, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !756, metadata !DIExpression()), !dbg !798
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !757, metadata !DIExpression()), !dbg !799
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !758, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !759, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 16, ptr %q2) #9, !dbg !795
  tail call void @llvm.dbg.declare(metadata ptr %q2, metadata !760, metadata !DIExpression()), !dbg !802
  br label %do.body, !dbg !803

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %U) #9, !dbg !804
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !761, metadata !DIExpression()), !dbg !804
  %0 = load ptr, ptr %u.addr, align 8, !dbg !804, !tbaa !70
  %1 = load i32, ptr %stride.addr, align 4, !dbg !804, !tbaa !188
  %mul = mul nsw i32 4, %1, !dbg !804
  %idx.ext = sext i32 %mul to i64, !dbg !804
  %idx.neg = sub i64 0, %idx.ext, !dbg !804
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.neg, !dbg !804
  %2 = load i32, ptr %stride.addr, align 4, !dbg !804, !tbaa !188
  %mul1 = mul nsw i32 0, %2, !dbg !804
  %idxprom = sext i32 %mul1 to i64, !dbg !804
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom, !dbg !804
  %call = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx), !dbg !804
  store <2 x i64> %call, ptr %U, align 16, !dbg !804, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V) #9, !dbg !804
  tail call void @llvm.dbg.declare(metadata ptr %V, metadata !764, metadata !DIExpression()), !dbg !804
  %3 = load ptr, ptr %v.addr, align 8, !dbg !804, !tbaa !70
  %4 = load i32, ptr %stride.addr, align 4, !dbg !804, !tbaa !188
  %mul2 = mul nsw i32 4, %4, !dbg !804
  %idx.ext3 = sext i32 %mul2 to i64, !dbg !804
  %idx.neg4 = sub i64 0, %idx.ext3, !dbg !804
  %add.ptr5 = getelementptr inbounds i8, ptr %3, i64 %idx.neg4, !dbg !804
  %5 = load i32, ptr %stride.addr, align 4, !dbg !804, !tbaa !188
  %mul6 = mul nsw i32 0, %5, !dbg !804
  %idxprom7 = sext i32 %mul6 to i64, !dbg !804
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr5, i64 %idxprom7, !dbg !804
  %call9 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx8), !dbg !804
  store <2 x i64> %call9, ptr %V, align 16, !dbg !804, !tbaa !194
  %6 = load <2 x i64>, ptr %U, align 16, !dbg !804, !tbaa !194
  %7 = load <2 x i64>, ptr %V, align 16, !dbg !804, !tbaa !194
  %call10 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %6, <2 x i64> noundef %7), !dbg !804
  store <2 x i64> %call10, ptr %t1, align 16, !dbg !804, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V) #9, !dbg !803
  call void @llvm.lifetime.end.p0(i64 16, ptr %U) #9, !dbg !803
  br label %do.cond, !dbg !804

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !804

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !803

do.body11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %U12) #9, !dbg !805
  tail call void @llvm.dbg.declare(metadata ptr %U12, metadata !765, metadata !DIExpression()), !dbg !805
  %8 = load ptr, ptr %u.addr, align 8, !dbg !805, !tbaa !70
  %9 = load i32, ptr %stride.addr, align 4, !dbg !805, !tbaa !188
  %mul13 = mul nsw i32 4, %9, !dbg !805
  %idx.ext14 = sext i32 %mul13 to i64, !dbg !805
  %idx.neg15 = sub i64 0, %idx.ext14, !dbg !805
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.neg15, !dbg !805
  %10 = load i32, ptr %stride.addr, align 4, !dbg !805, !tbaa !188
  %mul17 = mul nsw i32 1, %10, !dbg !805
  %idxprom18 = sext i32 %mul17 to i64, !dbg !805
  %arrayidx19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idxprom18, !dbg !805
  %call20 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx19), !dbg !805
  store <2 x i64> %call20, ptr %U12, align 16, !dbg !805, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V21) #9, !dbg !805
  tail call void @llvm.dbg.declare(metadata ptr %V21, metadata !767, metadata !DIExpression()), !dbg !805
  %11 = load ptr, ptr %v.addr, align 8, !dbg !805, !tbaa !70
  %12 = load i32, ptr %stride.addr, align 4, !dbg !805, !tbaa !188
  %mul22 = mul nsw i32 4, %12, !dbg !805
  %idx.ext23 = sext i32 %mul22 to i64, !dbg !805
  %idx.neg24 = sub i64 0, %idx.ext23, !dbg !805
  %add.ptr25 = getelementptr inbounds i8, ptr %11, i64 %idx.neg24, !dbg !805
  %13 = load i32, ptr %stride.addr, align 4, !dbg !805, !tbaa !188
  %mul26 = mul nsw i32 1, %13, !dbg !805
  %idxprom27 = sext i32 %mul26 to i64, !dbg !805
  %arrayidx28 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idxprom27, !dbg !805
  %call29 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx28), !dbg !805
  store <2 x i64> %call29, ptr %V21, align 16, !dbg !805, !tbaa !194
  %14 = load <2 x i64>, ptr %U12, align 16, !dbg !805, !tbaa !194
  %15 = load <2 x i64>, ptr %V21, align 16, !dbg !805, !tbaa !194
  %call30 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !805
  store <2 x i64> %call30, ptr %p2, align 16, !dbg !805, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V21) #9, !dbg !803
  call void @llvm.lifetime.end.p0(i64 16, ptr %U12) #9, !dbg !803
  br label %do.cond31, !dbg !805

do.cond31:                                        ; preds = %do.body11
  br label %do.end32, !dbg !805

do.end32:                                         ; preds = %do.cond31
  br label %do.body33, !dbg !803

do.body33:                                        ; preds = %do.end32
  call void @llvm.lifetime.start.p0(i64 16, ptr %U34) #9, !dbg !806
  tail call void @llvm.dbg.declare(metadata ptr %U34, metadata !768, metadata !DIExpression()), !dbg !806
  %16 = load ptr, ptr %u.addr, align 8, !dbg !806, !tbaa !70
  %17 = load i32, ptr %stride.addr, align 4, !dbg !806, !tbaa !188
  %mul35 = mul nsw i32 4, %17, !dbg !806
  %idx.ext36 = sext i32 %mul35 to i64, !dbg !806
  %idx.neg37 = sub i64 0, %idx.ext36, !dbg !806
  %add.ptr38 = getelementptr inbounds i8, ptr %16, i64 %idx.neg37, !dbg !806
  %18 = load i32, ptr %stride.addr, align 4, !dbg !806, !tbaa !188
  %mul39 = mul nsw i32 2, %18, !dbg !806
  %idxprom40 = sext i32 %mul39 to i64, !dbg !806
  %arrayidx41 = getelementptr inbounds i8, ptr %add.ptr38, i64 %idxprom40, !dbg !806
  %call42 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx41), !dbg !806
  store <2 x i64> %call42, ptr %U34, align 16, !dbg !806, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V43) #9, !dbg !806
  tail call void @llvm.dbg.declare(metadata ptr %V43, metadata !770, metadata !DIExpression()), !dbg !806
  %19 = load ptr, ptr %v.addr, align 8, !dbg !806, !tbaa !70
  %20 = load i32, ptr %stride.addr, align 4, !dbg !806, !tbaa !188
  %mul44 = mul nsw i32 4, %20, !dbg !806
  %idx.ext45 = sext i32 %mul44 to i64, !dbg !806
  %idx.neg46 = sub i64 0, %idx.ext45, !dbg !806
  %add.ptr47 = getelementptr inbounds i8, ptr %19, i64 %idx.neg46, !dbg !806
  %21 = load i32, ptr %stride.addr, align 4, !dbg !806, !tbaa !188
  %mul48 = mul nsw i32 2, %21, !dbg !806
  %idxprom49 = sext i32 %mul48 to i64, !dbg !806
  %arrayidx50 = getelementptr inbounds i8, ptr %add.ptr47, i64 %idxprom49, !dbg !806
  %call51 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx50), !dbg !806
  store <2 x i64> %call51, ptr %V43, align 16, !dbg !806, !tbaa !194
  %22 = load <2 x i64>, ptr %U34, align 16, !dbg !806, !tbaa !194
  %23 = load <2 x i64>, ptr %V43, align 16, !dbg !806, !tbaa !194
  %call52 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !806
  store <2 x i64> %call52, ptr %p1, align 16, !dbg !806, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V43) #9, !dbg !803
  call void @llvm.lifetime.end.p0(i64 16, ptr %U34) #9, !dbg !803
  br label %do.cond53, !dbg !806

do.cond53:                                        ; preds = %do.body33
  br label %do.end54, !dbg !806

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !803

do.body55:                                        ; preds = %do.end54
  call void @llvm.lifetime.start.p0(i64 16, ptr %U56) #9, !dbg !807
  tail call void @llvm.dbg.declare(metadata ptr %U56, metadata !771, metadata !DIExpression()), !dbg !807
  %24 = load ptr, ptr %u.addr, align 8, !dbg !807, !tbaa !70
  %25 = load i32, ptr %stride.addr, align 4, !dbg !807, !tbaa !188
  %mul57 = mul nsw i32 4, %25, !dbg !807
  %idx.ext58 = sext i32 %mul57 to i64, !dbg !807
  %idx.neg59 = sub i64 0, %idx.ext58, !dbg !807
  %add.ptr60 = getelementptr inbounds i8, ptr %24, i64 %idx.neg59, !dbg !807
  %26 = load i32, ptr %stride.addr, align 4, !dbg !807, !tbaa !188
  %mul61 = mul nsw i32 3, %26, !dbg !807
  %idxprom62 = sext i32 %mul61 to i64, !dbg !807
  %arrayidx63 = getelementptr inbounds i8, ptr %add.ptr60, i64 %idxprom62, !dbg !807
  %call64 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx63), !dbg !807
  store <2 x i64> %call64, ptr %U56, align 16, !dbg !807, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V65) #9, !dbg !807
  tail call void @llvm.dbg.declare(metadata ptr %V65, metadata !773, metadata !DIExpression()), !dbg !807
  %27 = load ptr, ptr %v.addr, align 8, !dbg !807, !tbaa !70
  %28 = load i32, ptr %stride.addr, align 4, !dbg !807, !tbaa !188
  %mul66 = mul nsw i32 4, %28, !dbg !807
  %idx.ext67 = sext i32 %mul66 to i64, !dbg !807
  %idx.neg68 = sub i64 0, %idx.ext67, !dbg !807
  %add.ptr69 = getelementptr inbounds i8, ptr %27, i64 %idx.neg68, !dbg !807
  %29 = load i32, ptr %stride.addr, align 4, !dbg !807, !tbaa !188
  %mul70 = mul nsw i32 3, %29, !dbg !807
  %idxprom71 = sext i32 %mul70 to i64, !dbg !807
  %arrayidx72 = getelementptr inbounds i8, ptr %add.ptr69, i64 %idxprom71, !dbg !807
  %call73 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx72), !dbg !807
  store <2 x i64> %call73, ptr %V65, align 16, !dbg !807, !tbaa !194
  %30 = load <2 x i64>, ptr %U56, align 16, !dbg !807, !tbaa !194
  %31 = load <2 x i64>, ptr %V65, align 16, !dbg !807, !tbaa !194
  %call74 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %30, <2 x i64> noundef %31), !dbg !807
  store <2 x i64> %call74, ptr %p0, align 16, !dbg !807, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V65) #9, !dbg !803
  call void @llvm.lifetime.end.p0(i64 16, ptr %U56) #9, !dbg !803
  br label %do.cond75, !dbg !807

do.cond75:                                        ; preds = %do.body55
  br label %do.end76, !dbg !807

do.end76:                                         ; preds = %do.cond75
  br label %do.body77, !dbg !808

do.body77:                                        ; preds = %do.end76
  %32 = load <2 x i64>, ptr %p0, align 16, !dbg !809, !tbaa !194
  %33 = load <2 x i64>, ptr %p1, align 16, !dbg !809, !tbaa !194
  %call78 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %32, <2 x i64> noundef %33), !dbg !809
  %34 = load <2 x i64>, ptr %p1, align 16, !dbg !809, !tbaa !194
  %35 = load <2 x i64>, ptr %p0, align 16, !dbg !809, !tbaa !194
  %call79 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %34, <2 x i64> noundef %35), !dbg !809
  %call80 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call78, <2 x i64> noundef %call79), !dbg !809
  store <2 x i64> %call80, ptr %mask, align 16, !dbg !809, !tbaa !194
  %36 = load <2 x i64>, ptr %mask, align 16, !dbg !809, !tbaa !194
  %37 = load <2 x i64>, ptr %p2, align 16, !dbg !809, !tbaa !194
  %38 = load <2 x i64>, ptr %t1, align 16, !dbg !809, !tbaa !194
  %call81 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %37, <2 x i64> noundef %38), !dbg !809
  %39 = load <2 x i64>, ptr %t1, align 16, !dbg !809, !tbaa !194
  %40 = load <2 x i64>, ptr %p2, align 16, !dbg !809, !tbaa !194
  %call82 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %39, <2 x i64> noundef %40), !dbg !809
  %call83 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call81, <2 x i64> noundef %call82), !dbg !809
  %call84 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %36, <2 x i64> noundef %call83), !dbg !809
  store <2 x i64> %call84, ptr %mask, align 16, !dbg !809, !tbaa !194
  %41 = load <2 x i64>, ptr %mask, align 16, !dbg !809, !tbaa !194
  %42 = load <2 x i64>, ptr %p1, align 16, !dbg !809, !tbaa !194
  %43 = load <2 x i64>, ptr %p2, align 16, !dbg !809, !tbaa !194
  %call85 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %42, <2 x i64> noundef %43), !dbg !809
  %44 = load <2 x i64>, ptr %p2, align 16, !dbg !809, !tbaa !194
  %45 = load <2 x i64>, ptr %p1, align 16, !dbg !809, !tbaa !194
  %call86 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %44, <2 x i64> noundef %45), !dbg !809
  %call87 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call85, <2 x i64> noundef %call86), !dbg !809
  %call88 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %41, <2 x i64> noundef %call87), !dbg !809
  store <2 x i64> %call88, ptr %mask, align 16, !dbg !809, !tbaa !194
  br label %do.cond89, !dbg !809

do.cond89:                                        ; preds = %do.body77
  br label %do.end90, !dbg !809

do.end90:                                         ; preds = %do.cond89
  br label %do.body91, !dbg !811

do.body91:                                        ; preds = %do.end90
  call void @llvm.lifetime.start.p0(i64 16, ptr %U92) #9, !dbg !812
  tail call void @llvm.dbg.declare(metadata ptr %U92, metadata !774, metadata !DIExpression()), !dbg !812
  %46 = load ptr, ptr %u.addr, align 8, !dbg !812, !tbaa !70
  %47 = load i32, ptr %stride.addr, align 4, !dbg !812, !tbaa !188
  %mul93 = mul nsw i32 0, %47, !dbg !812
  %idxprom94 = sext i32 %mul93 to i64, !dbg !812
  %arrayidx95 = getelementptr inbounds i8, ptr %46, i64 %idxprom94, !dbg !812
  %call96 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx95), !dbg !812
  store <2 x i64> %call96, ptr %U92, align 16, !dbg !812, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V97) #9, !dbg !812
  tail call void @llvm.dbg.declare(metadata ptr %V97, metadata !777, metadata !DIExpression()), !dbg !812
  %48 = load ptr, ptr %v.addr, align 8, !dbg !812, !tbaa !70
  %49 = load i32, ptr %stride.addr, align 4, !dbg !812, !tbaa !188
  %mul98 = mul nsw i32 0, %49, !dbg !812
  %idxprom99 = sext i32 %mul98 to i64, !dbg !812
  %arrayidx100 = getelementptr inbounds i8, ptr %48, i64 %idxprom99, !dbg !812
  %call101 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx100), !dbg !812
  store <2 x i64> %call101, ptr %V97, align 16, !dbg !812, !tbaa !194
  %50 = load <2 x i64>, ptr %U92, align 16, !dbg !812, !tbaa !194
  %51 = load <2 x i64>, ptr %V97, align 16, !dbg !812, !tbaa !194
  %call102 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %50, <2 x i64> noundef %51), !dbg !812
  store <2 x i64> %call102, ptr %q0, align 16, !dbg !812, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V97) #9, !dbg !811
  call void @llvm.lifetime.end.p0(i64 16, ptr %U92) #9, !dbg !811
  br label %do.cond103, !dbg !812

do.cond103:                                       ; preds = %do.body91
  br label %do.end104, !dbg !812

do.end104:                                        ; preds = %do.cond103
  br label %do.body105, !dbg !811

do.body105:                                       ; preds = %do.end104
  call void @llvm.lifetime.start.p0(i64 16, ptr %U106) #9, !dbg !813
  tail call void @llvm.dbg.declare(metadata ptr %U106, metadata !778, metadata !DIExpression()), !dbg !813
  %52 = load ptr, ptr %u.addr, align 8, !dbg !813, !tbaa !70
  %53 = load i32, ptr %stride.addr, align 4, !dbg !813, !tbaa !188
  %mul107 = mul nsw i32 1, %53, !dbg !813
  %idxprom108 = sext i32 %mul107 to i64, !dbg !813
  %arrayidx109 = getelementptr inbounds i8, ptr %52, i64 %idxprom108, !dbg !813
  %call110 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx109), !dbg !813
  store <2 x i64> %call110, ptr %U106, align 16, !dbg !813, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V111) #9, !dbg !813
  tail call void @llvm.dbg.declare(metadata ptr %V111, metadata !780, metadata !DIExpression()), !dbg !813
  %54 = load ptr, ptr %v.addr, align 8, !dbg !813, !tbaa !70
  %55 = load i32, ptr %stride.addr, align 4, !dbg !813, !tbaa !188
  %mul112 = mul nsw i32 1, %55, !dbg !813
  %idxprom113 = sext i32 %mul112 to i64, !dbg !813
  %arrayidx114 = getelementptr inbounds i8, ptr %54, i64 %idxprom113, !dbg !813
  %call115 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx114), !dbg !813
  store <2 x i64> %call115, ptr %V111, align 16, !dbg !813, !tbaa !194
  %56 = load <2 x i64>, ptr %U106, align 16, !dbg !813, !tbaa !194
  %57 = load <2 x i64>, ptr %V111, align 16, !dbg !813, !tbaa !194
  %call116 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %56, <2 x i64> noundef %57), !dbg !813
  store <2 x i64> %call116, ptr %q1, align 16, !dbg !813, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V111) #9, !dbg !811
  call void @llvm.lifetime.end.p0(i64 16, ptr %U106) #9, !dbg !811
  br label %do.cond117, !dbg !813

do.cond117:                                       ; preds = %do.body105
  br label %do.end118, !dbg !813

do.end118:                                        ; preds = %do.cond117
  br label %do.body119, !dbg !811

do.body119:                                       ; preds = %do.end118
  call void @llvm.lifetime.start.p0(i64 16, ptr %U120) #9, !dbg !814
  tail call void @llvm.dbg.declare(metadata ptr %U120, metadata !781, metadata !DIExpression()), !dbg !814
  %58 = load ptr, ptr %u.addr, align 8, !dbg !814, !tbaa !70
  %59 = load i32, ptr %stride.addr, align 4, !dbg !814, !tbaa !188
  %mul121 = mul nsw i32 2, %59, !dbg !814
  %idxprom122 = sext i32 %mul121 to i64, !dbg !814
  %arrayidx123 = getelementptr inbounds i8, ptr %58, i64 %idxprom122, !dbg !814
  %call124 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx123), !dbg !814
  store <2 x i64> %call124, ptr %U120, align 16, !dbg !814, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V125) #9, !dbg !814
  tail call void @llvm.dbg.declare(metadata ptr %V125, metadata !783, metadata !DIExpression()), !dbg !814
  %60 = load ptr, ptr %v.addr, align 8, !dbg !814, !tbaa !70
  %61 = load i32, ptr %stride.addr, align 4, !dbg !814, !tbaa !188
  %mul126 = mul nsw i32 2, %61, !dbg !814
  %idxprom127 = sext i32 %mul126 to i64, !dbg !814
  %arrayidx128 = getelementptr inbounds i8, ptr %60, i64 %idxprom127, !dbg !814
  %call129 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx128), !dbg !814
  store <2 x i64> %call129, ptr %V125, align 16, !dbg !814, !tbaa !194
  %62 = load <2 x i64>, ptr %U120, align 16, !dbg !814, !tbaa !194
  %63 = load <2 x i64>, ptr %V125, align 16, !dbg !814, !tbaa !194
  %call130 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %62, <2 x i64> noundef %63), !dbg !814
  store <2 x i64> %call130, ptr %q2, align 16, !dbg !814, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V125) #9, !dbg !811
  call void @llvm.lifetime.end.p0(i64 16, ptr %U120) #9, !dbg !811
  br label %do.cond131, !dbg !814

do.cond131:                                       ; preds = %do.body119
  br label %do.end132, !dbg !814

do.end132:                                        ; preds = %do.cond131
  br label %do.body133, !dbg !811

do.body133:                                       ; preds = %do.end132
  call void @llvm.lifetime.start.p0(i64 16, ptr %U134) #9, !dbg !815
  tail call void @llvm.dbg.declare(metadata ptr %U134, metadata !784, metadata !DIExpression()), !dbg !815
  %64 = load ptr, ptr %u.addr, align 8, !dbg !815, !tbaa !70
  %65 = load i32, ptr %stride.addr, align 4, !dbg !815, !tbaa !188
  %mul135 = mul nsw i32 3, %65, !dbg !815
  %idxprom136 = sext i32 %mul135 to i64, !dbg !815
  %arrayidx137 = getelementptr inbounds i8, ptr %64, i64 %idxprom136, !dbg !815
  %call138 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx137), !dbg !815
  store <2 x i64> %call138, ptr %U134, align 16, !dbg !815, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V139) #9, !dbg !815
  tail call void @llvm.dbg.declare(metadata ptr %V139, metadata !786, metadata !DIExpression()), !dbg !815
  %66 = load ptr, ptr %v.addr, align 8, !dbg !815, !tbaa !70
  %67 = load i32, ptr %stride.addr, align 4, !dbg !815, !tbaa !188
  %mul140 = mul nsw i32 3, %67, !dbg !815
  %idxprom141 = sext i32 %mul140 to i64, !dbg !815
  %arrayidx142 = getelementptr inbounds i8, ptr %66, i64 %idxprom141, !dbg !815
  %call143 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx142), !dbg !815
  store <2 x i64> %call143, ptr %V139, align 16, !dbg !815, !tbaa !194
  %68 = load <2 x i64>, ptr %U134, align 16, !dbg !815, !tbaa !194
  %69 = load <2 x i64>, ptr %V139, align 16, !dbg !815, !tbaa !194
  %call144 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %68, <2 x i64> noundef %69), !dbg !815
  store <2 x i64> %call144, ptr %t1, align 16, !dbg !815, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V139) #9, !dbg !811
  call void @llvm.lifetime.end.p0(i64 16, ptr %U134) #9, !dbg !811
  br label %do.cond145, !dbg !815

do.cond145:                                       ; preds = %do.body133
  br label %do.end146, !dbg !815

do.end146:                                        ; preds = %do.cond145
  br label %do.body147, !dbg !816

do.body147:                                       ; preds = %do.end146
  %70 = load <2 x i64>, ptr %mask, align 16, !dbg !817, !tbaa !194
  %71 = load <2 x i64>, ptr %q0, align 16, !dbg !817, !tbaa !194
  %72 = load <2 x i64>, ptr %q1, align 16, !dbg !817, !tbaa !194
  %call148 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %71, <2 x i64> noundef %72), !dbg !817
  %73 = load <2 x i64>, ptr %q1, align 16, !dbg !817, !tbaa !194
  %74 = load <2 x i64>, ptr %q0, align 16, !dbg !817, !tbaa !194
  %call149 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %73, <2 x i64> noundef %74), !dbg !817
  %call150 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call148, <2 x i64> noundef %call149), !dbg !817
  %call151 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %70, <2 x i64> noundef %call150), !dbg !817
  store <2 x i64> %call151, ptr %mask, align 16, !dbg !817, !tbaa !194
  %75 = load <2 x i64>, ptr %mask, align 16, !dbg !817, !tbaa !194
  %76 = load <2 x i64>, ptr %q2, align 16, !dbg !817, !tbaa !194
  %77 = load <2 x i64>, ptr %t1, align 16, !dbg !817, !tbaa !194
  %call152 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %76, <2 x i64> noundef %77), !dbg !817
  %78 = load <2 x i64>, ptr %t1, align 16, !dbg !817, !tbaa !194
  %79 = load <2 x i64>, ptr %q2, align 16, !dbg !817, !tbaa !194
  %call153 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %78, <2 x i64> noundef %79), !dbg !817
  %call154 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call152, <2 x i64> noundef %call153), !dbg !817
  %call155 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %75, <2 x i64> noundef %call154), !dbg !817
  store <2 x i64> %call155, ptr %mask, align 16, !dbg !817, !tbaa !194
  %80 = load <2 x i64>, ptr %mask, align 16, !dbg !817, !tbaa !194
  %81 = load <2 x i64>, ptr %q1, align 16, !dbg !817, !tbaa !194
  %82 = load <2 x i64>, ptr %q2, align 16, !dbg !817, !tbaa !194
  %call156 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %81, <2 x i64> noundef %82), !dbg !817
  %83 = load <2 x i64>, ptr %q2, align 16, !dbg !817, !tbaa !194
  %84 = load <2 x i64>, ptr %q1, align 16, !dbg !817, !tbaa !194
  %call157 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %83, <2 x i64> noundef %84), !dbg !817
  %call158 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call156, <2 x i64> noundef %call157), !dbg !817
  %call159 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %80, <2 x i64> noundef %call158), !dbg !817
  store <2 x i64> %call159, ptr %mask, align 16, !dbg !817, !tbaa !194
  br label %do.cond160, !dbg !817

do.cond160:                                       ; preds = %do.body147
  br label %do.end161, !dbg !817

do.end161:                                        ; preds = %do.cond160
  %85 = load i32, ptr %thresh.addr, align 4, !dbg !819, !tbaa !188
  %86 = load i32, ptr %ithresh.addr, align 4, !dbg !820, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %85, i32 noundef %86, ptr noundef %mask), !dbg !821
  %87 = load i32, ptr %hev_thresh.addr, align 4, !dbg !822, !tbaa !188
  call void @DoFilter6_SSE2(ptr noundef %p2, ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %mask, i32 noundef %87), !dbg !823
  %88 = load ptr, ptr %u.addr, align 8, !dbg !824, !tbaa !70
  %89 = load i32, ptr %stride.addr, align 4, !dbg !824, !tbaa !188
  %mul162 = mul nsw i32 -3, %89, !dbg !824
  %idxprom163 = sext i32 %mul162 to i64, !dbg !824
  %arrayidx164 = getelementptr inbounds i8, ptr %88, i64 %idxprom163, !dbg !824
  %90 = load <2 x i64>, ptr %p2, align 16, !dbg !824, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx164, <2 x i64> noundef %90), !dbg !824
  %91 = load <2 x i64>, ptr %p2, align 16, !dbg !824, !tbaa !194
  %cast = bitcast <2 x i64> %91 to <16 x i8>, !dbg !824
  %psrldq = shufflevector <16 x i8> %cast, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !824
  %cast165 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !824
  store <2 x i64> %cast165, ptr %p2, align 16, !dbg !824, !tbaa !194
  %92 = load ptr, ptr %v.addr, align 8, !dbg !824, !tbaa !70
  %93 = load i32, ptr %stride.addr, align 4, !dbg !824, !tbaa !188
  %mul166 = mul nsw i32 -3, %93, !dbg !824
  %idxprom167 = sext i32 %mul166 to i64, !dbg !824
  %arrayidx168 = getelementptr inbounds i8, ptr %92, i64 %idxprom167, !dbg !824
  %94 = load <2 x i64>, ptr %p2, align 16, !dbg !824, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx168, <2 x i64> noundef %94), !dbg !824
  %95 = load ptr, ptr %u.addr, align 8, !dbg !826, !tbaa !70
  %96 = load i32, ptr %stride.addr, align 4, !dbg !826, !tbaa !188
  %mul169 = mul nsw i32 -2, %96, !dbg !826
  %idxprom170 = sext i32 %mul169 to i64, !dbg !826
  %arrayidx171 = getelementptr inbounds i8, ptr %95, i64 %idxprom170, !dbg !826
  %97 = load <2 x i64>, ptr %p1, align 16, !dbg !826, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx171, <2 x i64> noundef %97), !dbg !826
  %98 = load <2 x i64>, ptr %p1, align 16, !dbg !826, !tbaa !194
  %cast172 = bitcast <2 x i64> %98 to <16 x i8>, !dbg !826
  %psrldq173 = shufflevector <16 x i8> %cast172, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !826
  %cast174 = bitcast <16 x i8> %psrldq173 to <2 x i64>, !dbg !826
  store <2 x i64> %cast174, ptr %p1, align 16, !dbg !826, !tbaa !194
  %99 = load ptr, ptr %v.addr, align 8, !dbg !826, !tbaa !70
  %100 = load i32, ptr %stride.addr, align 4, !dbg !826, !tbaa !188
  %mul175 = mul nsw i32 -2, %100, !dbg !826
  %idxprom176 = sext i32 %mul175 to i64, !dbg !826
  %arrayidx177 = getelementptr inbounds i8, ptr %99, i64 %idxprom176, !dbg !826
  %101 = load <2 x i64>, ptr %p1, align 16, !dbg !826, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx177, <2 x i64> noundef %101), !dbg !826
  %102 = load ptr, ptr %u.addr, align 8, !dbg !828, !tbaa !70
  %103 = load i32, ptr %stride.addr, align 4, !dbg !828, !tbaa !188
  %mul178 = mul nsw i32 -1, %103, !dbg !828
  %idxprom179 = sext i32 %mul178 to i64, !dbg !828
  %arrayidx180 = getelementptr inbounds i8, ptr %102, i64 %idxprom179, !dbg !828
  %104 = load <2 x i64>, ptr %p0, align 16, !dbg !828, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx180, <2 x i64> noundef %104), !dbg !828
  %105 = load <2 x i64>, ptr %p0, align 16, !dbg !828, !tbaa !194
  %cast181 = bitcast <2 x i64> %105 to <16 x i8>, !dbg !828
  %psrldq182 = shufflevector <16 x i8> %cast181, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !828
  %cast183 = bitcast <16 x i8> %psrldq182 to <2 x i64>, !dbg !828
  store <2 x i64> %cast183, ptr %p0, align 16, !dbg !828, !tbaa !194
  %106 = load ptr, ptr %v.addr, align 8, !dbg !828, !tbaa !70
  %107 = load i32, ptr %stride.addr, align 4, !dbg !828, !tbaa !188
  %mul184 = mul nsw i32 -1, %107, !dbg !828
  %idxprom185 = sext i32 %mul184 to i64, !dbg !828
  %arrayidx186 = getelementptr inbounds i8, ptr %106, i64 %idxprom185, !dbg !828
  %108 = load <2 x i64>, ptr %p0, align 16, !dbg !828, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx186, <2 x i64> noundef %108), !dbg !828
  %109 = load ptr, ptr %u.addr, align 8, !dbg !830, !tbaa !70
  %110 = load i32, ptr %stride.addr, align 4, !dbg !830, !tbaa !188
  %mul187 = mul nsw i32 0, %110, !dbg !830
  %idxprom188 = sext i32 %mul187 to i64, !dbg !830
  %arrayidx189 = getelementptr inbounds i8, ptr %109, i64 %idxprom188, !dbg !830
  %111 = load <2 x i64>, ptr %q0, align 16, !dbg !830, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx189, <2 x i64> noundef %111), !dbg !830
  %112 = load <2 x i64>, ptr %q0, align 16, !dbg !830, !tbaa !194
  %cast190 = bitcast <2 x i64> %112 to <16 x i8>, !dbg !830
  %psrldq191 = shufflevector <16 x i8> %cast190, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !830
  %cast192 = bitcast <16 x i8> %psrldq191 to <2 x i64>, !dbg !830
  store <2 x i64> %cast192, ptr %q0, align 16, !dbg !830, !tbaa !194
  %113 = load ptr, ptr %v.addr, align 8, !dbg !830, !tbaa !70
  %114 = load i32, ptr %stride.addr, align 4, !dbg !830, !tbaa !188
  %mul193 = mul nsw i32 0, %114, !dbg !830
  %idxprom194 = sext i32 %mul193 to i64, !dbg !830
  %arrayidx195 = getelementptr inbounds i8, ptr %113, i64 %idxprom194, !dbg !830
  %115 = load <2 x i64>, ptr %q0, align 16, !dbg !830, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx195, <2 x i64> noundef %115), !dbg !830
  %116 = load ptr, ptr %u.addr, align 8, !dbg !832, !tbaa !70
  %117 = load i32, ptr %stride.addr, align 4, !dbg !832, !tbaa !188
  %mul196 = mul nsw i32 1, %117, !dbg !832
  %idxprom197 = sext i32 %mul196 to i64, !dbg !832
  %arrayidx198 = getelementptr inbounds i8, ptr %116, i64 %idxprom197, !dbg !832
  %118 = load <2 x i64>, ptr %q1, align 16, !dbg !832, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx198, <2 x i64> noundef %118), !dbg !832
  %119 = load <2 x i64>, ptr %q1, align 16, !dbg !832, !tbaa !194
  %cast199 = bitcast <2 x i64> %119 to <16 x i8>, !dbg !832
  %psrldq200 = shufflevector <16 x i8> %cast199, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !832
  %cast201 = bitcast <16 x i8> %psrldq200 to <2 x i64>, !dbg !832
  store <2 x i64> %cast201, ptr %q1, align 16, !dbg !832, !tbaa !194
  %120 = load ptr, ptr %v.addr, align 8, !dbg !832, !tbaa !70
  %121 = load i32, ptr %stride.addr, align 4, !dbg !832, !tbaa !188
  %mul202 = mul nsw i32 1, %121, !dbg !832
  %idxprom203 = sext i32 %mul202 to i64, !dbg !832
  %arrayidx204 = getelementptr inbounds i8, ptr %120, i64 %idxprom203, !dbg !832
  %122 = load <2 x i64>, ptr %q1, align 16, !dbg !832, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx204, <2 x i64> noundef %122), !dbg !832
  %123 = load ptr, ptr %u.addr, align 8, !dbg !834, !tbaa !70
  %124 = load i32, ptr %stride.addr, align 4, !dbg !834, !tbaa !188
  %mul205 = mul nsw i32 2, %124, !dbg !834
  %idxprom206 = sext i32 %mul205 to i64, !dbg !834
  %arrayidx207 = getelementptr inbounds i8, ptr %123, i64 %idxprom206, !dbg !834
  %125 = load <2 x i64>, ptr %q2, align 16, !dbg !834, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx207, <2 x i64> noundef %125), !dbg !834
  %126 = load <2 x i64>, ptr %q2, align 16, !dbg !834, !tbaa !194
  %cast208 = bitcast <2 x i64> %126 to <16 x i8>, !dbg !834
  %psrldq209 = shufflevector <16 x i8> %cast208, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !834
  %cast210 = bitcast <16 x i8> %psrldq209 to <2 x i64>, !dbg !834
  store <2 x i64> %cast210, ptr %q2, align 16, !dbg !834, !tbaa !194
  %127 = load ptr, ptr %v.addr, align 8, !dbg !834, !tbaa !70
  %128 = load i32, ptr %stride.addr, align 4, !dbg !834, !tbaa !188
  %mul211 = mul nsw i32 2, %128, !dbg !834
  %idxprom212 = sext i32 %mul211 to i64, !dbg !834
  %arrayidx213 = getelementptr inbounds i8, ptr %127, i64 %idxprom212, !dbg !834
  %129 = load <2 x i64>, ptr %q2, align 16, !dbg !834, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx213, <2 x i64> noundef %129), !dbg !834
  call void @llvm.lifetime.end.p0(i64 16, ptr %q2) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 16, ptr %p2) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !836
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !836
  ret void, !dbg !836
}

; Function Attrs: nounwind uwtable
define internal void @HFilter8_SSE2(ptr noundef %u, ptr noundef %v, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !837 {
entry:
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %mask = alloca <2 x i64>, align 16
  %p3 = alloca <2 x i64>, align 16
  %p2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  %q2 = alloca <2 x i64>, align 16
  %q3 = alloca <2 x i64>, align 16
  %tu = alloca ptr, align 8
  %tv = alloca ptr, align 8
  store ptr %u, ptr %u.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !839, metadata !DIExpression()), !dbg !856
  store ptr %v, ptr %v.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !840, metadata !DIExpression()), !dbg !857
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !841, metadata !DIExpression()), !dbg !858
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !842, metadata !DIExpression()), !dbg !859
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !843, metadata !DIExpression()), !dbg !860
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !844, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !862
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !845, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 16, ptr %p3) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %p3, metadata !846, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 16, ptr %p2) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %p2, metadata !847, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !848, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !849, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !850, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !851, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 16, ptr %q2) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %q2, metadata !852, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 16, ptr %q3) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %q3, metadata !853, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 8, ptr %tu) #9, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %tu, metadata !854, metadata !DIExpression()), !dbg !874
  %0 = load ptr, ptr %u.addr, align 8, !dbg !875, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -4, !dbg !876
  store ptr %add.ptr, ptr %tu, align 8, !dbg !874, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr %tv) #9, !dbg !877
  tail call void @llvm.dbg.declare(metadata ptr %tv, metadata !855, metadata !DIExpression()), !dbg !878
  %1 = load ptr, ptr %v.addr, align 8, !dbg !879, !tbaa !70
  %add.ptr1 = getelementptr inbounds i8, ptr %1, i64 -4, !dbg !880
  store ptr %add.ptr1, ptr %tv, align 8, !dbg !878, !tbaa !70
  %2 = load ptr, ptr %tu, align 8, !dbg !881, !tbaa !70
  %3 = load ptr, ptr %tv, align 8, !dbg !882, !tbaa !70
  %4 = load i32, ptr %stride.addr, align 4, !dbg !883, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %p3, ptr noundef %p2, ptr noundef %p1, ptr noundef %p0), !dbg !884
  br label %do.body, !dbg !885

do.body:                                          ; preds = %entry
  %5 = load <2 x i64>, ptr %p0, align 16, !dbg !886, !tbaa !194
  %6 = load <2 x i64>, ptr %p1, align 16, !dbg !886, !tbaa !194
  %call = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %5, <2 x i64> noundef %6), !dbg !886
  %7 = load <2 x i64>, ptr %p1, align 16, !dbg !886, !tbaa !194
  %8 = load <2 x i64>, ptr %p0, align 16, !dbg !886, !tbaa !194
  %call2 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %7, <2 x i64> noundef %8), !dbg !886
  %call3 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call, <2 x i64> noundef %call2), !dbg !886
  store <2 x i64> %call3, ptr %mask, align 16, !dbg !886, !tbaa !194
  %9 = load <2 x i64>, ptr %mask, align 16, !dbg !886, !tbaa !194
  %10 = load <2 x i64>, ptr %p2, align 16, !dbg !886, !tbaa !194
  %11 = load <2 x i64>, ptr %p3, align 16, !dbg !886, !tbaa !194
  %call4 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !886
  %12 = load <2 x i64>, ptr %p3, align 16, !dbg !886, !tbaa !194
  %13 = load <2 x i64>, ptr %p2, align 16, !dbg !886, !tbaa !194
  %call5 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %12, <2 x i64> noundef %13), !dbg !886
  %call6 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call4, <2 x i64> noundef %call5), !dbg !886
  %call7 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %9, <2 x i64> noundef %call6), !dbg !886
  store <2 x i64> %call7, ptr %mask, align 16, !dbg !886, !tbaa !194
  %14 = load <2 x i64>, ptr %mask, align 16, !dbg !886, !tbaa !194
  %15 = load <2 x i64>, ptr %p1, align 16, !dbg !886, !tbaa !194
  %16 = load <2 x i64>, ptr %p2, align 16, !dbg !886, !tbaa !194
  %call8 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %15, <2 x i64> noundef %16), !dbg !886
  %17 = load <2 x i64>, ptr %p2, align 16, !dbg !886, !tbaa !194
  %18 = load <2 x i64>, ptr %p1, align 16, !dbg !886, !tbaa !194
  %call9 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %17, <2 x i64> noundef %18), !dbg !886
  %call10 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call8, <2 x i64> noundef %call9), !dbg !886
  %call11 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %14, <2 x i64> noundef %call10), !dbg !886
  store <2 x i64> %call11, ptr %mask, align 16, !dbg !886, !tbaa !194
  br label %do.cond, !dbg !886

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !886

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %u.addr, align 8, !dbg !888, !tbaa !70
  %20 = load ptr, ptr %v.addr, align 8, !dbg !889, !tbaa !70
  %21 = load i32, ptr %stride.addr, align 4, !dbg !890, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %q3), !dbg !891
  br label %do.body12, !dbg !892

do.body12:                                        ; preds = %do.end
  %22 = load <2 x i64>, ptr %mask, align 16, !dbg !893, !tbaa !194
  %23 = load <2 x i64>, ptr %q0, align 16, !dbg !893, !tbaa !194
  %24 = load <2 x i64>, ptr %q1, align 16, !dbg !893, !tbaa !194
  %call13 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %23, <2 x i64> noundef %24), !dbg !893
  %25 = load <2 x i64>, ptr %q1, align 16, !dbg !893, !tbaa !194
  %26 = load <2 x i64>, ptr %q0, align 16, !dbg !893, !tbaa !194
  %call14 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %25, <2 x i64> noundef %26), !dbg !893
  %call15 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call13, <2 x i64> noundef %call14), !dbg !893
  %call16 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %22, <2 x i64> noundef %call15), !dbg !893
  store <2 x i64> %call16, ptr %mask, align 16, !dbg !893, !tbaa !194
  %27 = load <2 x i64>, ptr %mask, align 16, !dbg !893, !tbaa !194
  %28 = load <2 x i64>, ptr %q2, align 16, !dbg !893, !tbaa !194
  %29 = load <2 x i64>, ptr %q3, align 16, !dbg !893, !tbaa !194
  %call17 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %28, <2 x i64> noundef %29), !dbg !893
  %30 = load <2 x i64>, ptr %q3, align 16, !dbg !893, !tbaa !194
  %31 = load <2 x i64>, ptr %q2, align 16, !dbg !893, !tbaa !194
  %call18 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %30, <2 x i64> noundef %31), !dbg !893
  %call19 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call17, <2 x i64> noundef %call18), !dbg !893
  %call20 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %27, <2 x i64> noundef %call19), !dbg !893
  store <2 x i64> %call20, ptr %mask, align 16, !dbg !893, !tbaa !194
  %32 = load <2 x i64>, ptr %mask, align 16, !dbg !893, !tbaa !194
  %33 = load <2 x i64>, ptr %q1, align 16, !dbg !893, !tbaa !194
  %34 = load <2 x i64>, ptr %q2, align 16, !dbg !893, !tbaa !194
  %call21 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %33, <2 x i64> noundef %34), !dbg !893
  %35 = load <2 x i64>, ptr %q2, align 16, !dbg !893, !tbaa !194
  %36 = load <2 x i64>, ptr %q1, align 16, !dbg !893, !tbaa !194
  %call22 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %35, <2 x i64> noundef %36), !dbg !893
  %call23 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call21, <2 x i64> noundef %call22), !dbg !893
  %call24 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %32, <2 x i64> noundef %call23), !dbg !893
  store <2 x i64> %call24, ptr %mask, align 16, !dbg !893, !tbaa !194
  br label %do.cond25, !dbg !893

do.cond25:                                        ; preds = %do.body12
  br label %do.end26, !dbg !893

do.end26:                                         ; preds = %do.cond25
  %37 = load i32, ptr %thresh.addr, align 4, !dbg !895, !tbaa !188
  %38 = load i32, ptr %ithresh.addr, align 4, !dbg !896, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %37, i32 noundef %38, ptr noundef %mask), !dbg !897
  %39 = load i32, ptr %hev_thresh.addr, align 4, !dbg !898, !tbaa !188
  call void @DoFilter6_SSE2(ptr noundef %p2, ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %mask, i32 noundef %39), !dbg !899
  %40 = load ptr, ptr %tu, align 8, !dbg !900, !tbaa !70
  %41 = load ptr, ptr %tv, align 8, !dbg !901, !tbaa !70
  %42 = load i32, ptr %stride.addr, align 4, !dbg !902, !tbaa !188
  call void @Store16x4_SSE2(ptr noundef %p3, ptr noundef %p2, ptr noundef %p1, ptr noundef %p0, ptr noundef %40, ptr noundef %41, i32 noundef %42), !dbg !903
  %43 = load ptr, ptr %u.addr, align 8, !dbg !904, !tbaa !70
  %44 = load ptr, ptr %v.addr, align 8, !dbg !905, !tbaa !70
  %45 = load i32, ptr %stride.addr, align 4, !dbg !906, !tbaa !188
  call void @Store16x4_SSE2(ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %q3, ptr noundef %43, ptr noundef %44, i32 noundef %45), !dbg !907
  call void @llvm.lifetime.end.p0(i64 8, ptr %tv) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 8, ptr %tu) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %q3) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %q2) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %p2) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %p3) #9, !dbg !908
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !908
  ret void, !dbg !908
}

; Function Attrs: nounwind uwtable
define internal void @VFilter16i_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !909 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %p3 = alloca <2 x i64>, align 16
  %p2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %mask = alloca <2 x i64>, align 16
  %tmp1 = alloca <2 x i64>, align 16
  %tmp2 = alloca <2 x i64>, align 16
  %b = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !911, metadata !DIExpression()), !dbg !928
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !912, metadata !DIExpression()), !dbg !929
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !913, metadata !DIExpression()), !dbg !930
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !914, metadata !DIExpression()), !dbg !931
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !915, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9, !dbg !933
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !916, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 16, ptr %p3) #9, !dbg !935
  tail call void @llvm.dbg.declare(metadata ptr %p3, metadata !917, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.start.p0(i64 16, ptr %p2) #9, !dbg !935
  tail call void @llvm.dbg.declare(metadata ptr %p2, metadata !918, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !935
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !919, metadata !DIExpression()), !dbg !938
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !935
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !920, metadata !DIExpression()), !dbg !939
  %0 = load ptr, ptr %p.addr, align 8, !dbg !940, !tbaa !70
  %1 = load i32, ptr %stride.addr, align 4, !dbg !940, !tbaa !188
  %mul = mul nsw i32 0, %1, !dbg !940
  %idxprom = sext i32 %mul to i64, !dbg !940
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !940
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx), !dbg !940
  store <2 x i64> %call, ptr %p3, align 16, !dbg !940, !tbaa !194
  %2 = load ptr, ptr %p.addr, align 8, !dbg !940, !tbaa !70
  %3 = load i32, ptr %stride.addr, align 4, !dbg !940, !tbaa !188
  %mul1 = mul nsw i32 1, %3, !dbg !940
  %idxprom2 = sext i32 %mul1 to i64, !dbg !940
  %arrayidx3 = getelementptr inbounds i8, ptr %2, i64 %idxprom2, !dbg !940
  %call4 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx3), !dbg !940
  store <2 x i64> %call4, ptr %p2, align 16, !dbg !940, !tbaa !194
  %4 = load ptr, ptr %p.addr, align 8, !dbg !940, !tbaa !70
  %5 = load i32, ptr %stride.addr, align 4, !dbg !940, !tbaa !188
  %mul5 = mul nsw i32 2, %5, !dbg !940
  %idxprom6 = sext i32 %mul5 to i64, !dbg !940
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 %idxprom6, !dbg !940
  %call8 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx7), !dbg !940
  store <2 x i64> %call8, ptr %p1, align 16, !dbg !940, !tbaa !194
  %6 = load ptr, ptr %p.addr, align 8, !dbg !940, !tbaa !70
  %7 = load i32, ptr %stride.addr, align 4, !dbg !940, !tbaa !188
  %mul9 = mul nsw i32 3, %7, !dbg !940
  %idxprom10 = sext i32 %mul9 to i64, !dbg !940
  %arrayidx11 = getelementptr inbounds i8, ptr %6, i64 %idxprom10, !dbg !940
  %call12 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx11), !dbg !940
  store <2 x i64> %call12, ptr %p0, align 16, !dbg !940, !tbaa !194
  store i32 3, ptr %k, align 4, !dbg !942, !tbaa !188
  br label %for.cond, !dbg !943

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %k, align 4, !dbg !944, !tbaa !188
  %cmp = icmp sgt i32 %8, 0, !dbg !945
  br i1 %cmp, label %for.body, label %for.end, !dbg !946

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !947
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !921, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp1) #9, !dbg !947
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !925, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp2) #9, !dbg !947
  tail call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !926, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #9, !dbg !951
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !927, metadata !DIExpression()), !dbg !952
  %9 = load ptr, ptr %p.addr, align 8, !dbg !953, !tbaa !70
  %10 = load i32, ptr %stride.addr, align 4, !dbg !954, !tbaa !188
  %mul13 = mul nsw i32 2, %10, !dbg !955
  %idx.ext = sext i32 %mul13 to i64, !dbg !956
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext, !dbg !956
  store ptr %add.ptr, ptr %b, align 8, !dbg !952, !tbaa !70
  %11 = load i32, ptr %stride.addr, align 4, !dbg !957, !tbaa !188
  %mul14 = mul nsw i32 4, %11, !dbg !958
  %12 = load ptr, ptr %p.addr, align 8, !dbg !959, !tbaa !70
  %idx.ext15 = sext i32 %mul14 to i64, !dbg !959
  %add.ptr16 = getelementptr inbounds i8, ptr %12, i64 %idx.ext15, !dbg !959
  store ptr %add.ptr16, ptr %p.addr, align 8, !dbg !959, !tbaa !70
  br label %do.body, !dbg !960

do.body:                                          ; preds = %for.body
  %13 = load <2 x i64>, ptr %p0, align 16, !dbg !961, !tbaa !194
  %14 = load <2 x i64>, ptr %p1, align 16, !dbg !961, !tbaa !194
  %call17 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %13, <2 x i64> noundef %14), !dbg !961
  %15 = load <2 x i64>, ptr %p1, align 16, !dbg !961, !tbaa !194
  %16 = load <2 x i64>, ptr %p0, align 16, !dbg !961, !tbaa !194
  %call18 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %15, <2 x i64> noundef %16), !dbg !961
  %call19 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call17, <2 x i64> noundef %call18), !dbg !961
  store <2 x i64> %call19, ptr %mask, align 16, !dbg !961, !tbaa !194
  %17 = load <2 x i64>, ptr %mask, align 16, !dbg !961, !tbaa !194
  %18 = load <2 x i64>, ptr %p2, align 16, !dbg !961, !tbaa !194
  %19 = load <2 x i64>, ptr %p3, align 16, !dbg !961, !tbaa !194
  %call20 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %18, <2 x i64> noundef %19), !dbg !961
  %20 = load <2 x i64>, ptr %p3, align 16, !dbg !961, !tbaa !194
  %21 = load <2 x i64>, ptr %p2, align 16, !dbg !961, !tbaa !194
  %call21 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %20, <2 x i64> noundef %21), !dbg !961
  %call22 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call20, <2 x i64> noundef %call21), !dbg !961
  %call23 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %17, <2 x i64> noundef %call22), !dbg !961
  store <2 x i64> %call23, ptr %mask, align 16, !dbg !961, !tbaa !194
  %22 = load <2 x i64>, ptr %mask, align 16, !dbg !961, !tbaa !194
  %23 = load <2 x i64>, ptr %p1, align 16, !dbg !961, !tbaa !194
  %24 = load <2 x i64>, ptr %p2, align 16, !dbg !961, !tbaa !194
  %call24 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %23, <2 x i64> noundef %24), !dbg !961
  %25 = load <2 x i64>, ptr %p2, align 16, !dbg !961, !tbaa !194
  %26 = load <2 x i64>, ptr %p1, align 16, !dbg !961, !tbaa !194
  %call25 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %25, <2 x i64> noundef %26), !dbg !961
  %call26 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call24, <2 x i64> noundef %call25), !dbg !961
  %call27 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %22, <2 x i64> noundef %call26), !dbg !961
  store <2 x i64> %call27, ptr %mask, align 16, !dbg !961, !tbaa !194
  br label %do.cond, !dbg !961

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !961

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %p.addr, align 8, !dbg !963, !tbaa !70
  %28 = load i32, ptr %stride.addr, align 4, !dbg !963, !tbaa !188
  %mul28 = mul nsw i32 0, %28, !dbg !963
  %idxprom29 = sext i32 %mul28 to i64, !dbg !963
  %arrayidx30 = getelementptr inbounds i8, ptr %27, i64 %idxprom29, !dbg !963
  %call31 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx30), !dbg !963
  store <2 x i64> %call31, ptr %p3, align 16, !dbg !963, !tbaa !194
  %29 = load ptr, ptr %p.addr, align 8, !dbg !963, !tbaa !70
  %30 = load i32, ptr %stride.addr, align 4, !dbg !963, !tbaa !188
  %mul32 = mul nsw i32 1, %30, !dbg !963
  %idxprom33 = sext i32 %mul32 to i64, !dbg !963
  %arrayidx34 = getelementptr inbounds i8, ptr %29, i64 %idxprom33, !dbg !963
  %call35 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx34), !dbg !963
  store <2 x i64> %call35, ptr %p2, align 16, !dbg !963, !tbaa !194
  %31 = load ptr, ptr %p.addr, align 8, !dbg !963, !tbaa !70
  %32 = load i32, ptr %stride.addr, align 4, !dbg !963, !tbaa !188
  %mul36 = mul nsw i32 2, %32, !dbg !963
  %idxprom37 = sext i32 %mul36 to i64, !dbg !963
  %arrayidx38 = getelementptr inbounds i8, ptr %31, i64 %idxprom37, !dbg !963
  %call39 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx38), !dbg !963
  store <2 x i64> %call39, ptr %tmp1, align 16, !dbg !963, !tbaa !194
  %33 = load ptr, ptr %p.addr, align 8, !dbg !963, !tbaa !70
  %34 = load i32, ptr %stride.addr, align 4, !dbg !963, !tbaa !188
  %mul40 = mul nsw i32 3, %34, !dbg !963
  %idxprom41 = sext i32 %mul40 to i64, !dbg !963
  %arrayidx42 = getelementptr inbounds i8, ptr %33, i64 %idxprom41, !dbg !963
  %call43 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx42), !dbg !963
  store <2 x i64> %call43, ptr %tmp2, align 16, !dbg !963, !tbaa !194
  br label %do.body44, !dbg !965

do.body44:                                        ; preds = %do.end
  %35 = load <2 x i64>, ptr %mask, align 16, !dbg !966, !tbaa !194
  %36 = load <2 x i64>, ptr %tmp2, align 16, !dbg !966, !tbaa !194
  %37 = load <2 x i64>, ptr %tmp1, align 16, !dbg !966, !tbaa !194
  %call45 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %36, <2 x i64> noundef %37), !dbg !966
  %38 = load <2 x i64>, ptr %tmp1, align 16, !dbg !966, !tbaa !194
  %39 = load <2 x i64>, ptr %tmp2, align 16, !dbg !966, !tbaa !194
  %call46 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %38, <2 x i64> noundef %39), !dbg !966
  %call47 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call45, <2 x i64> noundef %call46), !dbg !966
  %call48 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %35, <2 x i64> noundef %call47), !dbg !966
  store <2 x i64> %call48, ptr %mask, align 16, !dbg !966, !tbaa !194
  %40 = load <2 x i64>, ptr %mask, align 16, !dbg !966, !tbaa !194
  %41 = load <2 x i64>, ptr %p2, align 16, !dbg !966, !tbaa !194
  %42 = load <2 x i64>, ptr %p3, align 16, !dbg !966, !tbaa !194
  %call49 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %41, <2 x i64> noundef %42), !dbg !966
  %43 = load <2 x i64>, ptr %p3, align 16, !dbg !966, !tbaa !194
  %44 = load <2 x i64>, ptr %p2, align 16, !dbg !966, !tbaa !194
  %call50 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %43, <2 x i64> noundef %44), !dbg !966
  %call51 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call49, <2 x i64> noundef %call50), !dbg !966
  %call52 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %40, <2 x i64> noundef %call51), !dbg !966
  store <2 x i64> %call52, ptr %mask, align 16, !dbg !966, !tbaa !194
  %45 = load <2 x i64>, ptr %mask, align 16, !dbg !966, !tbaa !194
  %46 = load <2 x i64>, ptr %tmp1, align 16, !dbg !966, !tbaa !194
  %47 = load <2 x i64>, ptr %p2, align 16, !dbg !966, !tbaa !194
  %call53 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %46, <2 x i64> noundef %47), !dbg !966
  %48 = load <2 x i64>, ptr %p2, align 16, !dbg !966, !tbaa !194
  %49 = load <2 x i64>, ptr %tmp1, align 16, !dbg !966, !tbaa !194
  %call54 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %48, <2 x i64> noundef %49), !dbg !966
  %call55 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call53, <2 x i64> noundef %call54), !dbg !966
  %call56 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %45, <2 x i64> noundef %call55), !dbg !966
  store <2 x i64> %call56, ptr %mask, align 16, !dbg !966, !tbaa !194
  br label %do.cond57, !dbg !966

do.cond57:                                        ; preds = %do.body44
  br label %do.end58, !dbg !966

do.end58:                                         ; preds = %do.cond57
  %50 = load i32, ptr %thresh.addr, align 4, !dbg !968, !tbaa !188
  %51 = load i32, ptr %ithresh.addr, align 4, !dbg !969, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %p3, ptr noundef %p2, i32 noundef %50, i32 noundef %51, ptr noundef %mask), !dbg !970
  %52 = load i32, ptr %hev_thresh.addr, align 4, !dbg !971, !tbaa !188
  call void @DoFilter4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %p3, ptr noundef %p2, ptr noundef %mask, i32 noundef %52), !dbg !972
  %53 = load ptr, ptr %b, align 8, !dbg !973, !tbaa !70
  %54 = load i32, ptr %stride.addr, align 4, !dbg !974, !tbaa !188
  %mul59 = mul nsw i32 0, %54, !dbg !975
  %idxprom60 = sext i32 %mul59 to i64, !dbg !973
  %arrayidx61 = getelementptr inbounds i8, ptr %53, i64 %idxprom60, !dbg !973
  %55 = load <2 x i64>, ptr %p1, align 16, !dbg !976, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx61, <2 x i64> noundef %55), !dbg !977
  %56 = load ptr, ptr %b, align 8, !dbg !978, !tbaa !70
  %57 = load i32, ptr %stride.addr, align 4, !dbg !979, !tbaa !188
  %mul62 = mul nsw i32 1, %57, !dbg !980
  %idxprom63 = sext i32 %mul62 to i64, !dbg !978
  %arrayidx64 = getelementptr inbounds i8, ptr %56, i64 %idxprom63, !dbg !978
  %58 = load <2 x i64>, ptr %p0, align 16, !dbg !981, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx64, <2 x i64> noundef %58), !dbg !982
  %59 = load ptr, ptr %b, align 8, !dbg !983, !tbaa !70
  %60 = load i32, ptr %stride.addr, align 4, !dbg !984, !tbaa !188
  %mul65 = mul nsw i32 2, %60, !dbg !985
  %idxprom66 = sext i32 %mul65 to i64, !dbg !983
  %arrayidx67 = getelementptr inbounds i8, ptr %59, i64 %idxprom66, !dbg !983
  %61 = load <2 x i64>, ptr %p3, align 16, !dbg !986, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx67, <2 x i64> noundef %61), !dbg !987
  %62 = load ptr, ptr %b, align 8, !dbg !988, !tbaa !70
  %63 = load i32, ptr %stride.addr, align 4, !dbg !989, !tbaa !188
  %mul68 = mul nsw i32 3, %63, !dbg !990
  %idxprom69 = sext i32 %mul68 to i64, !dbg !988
  %arrayidx70 = getelementptr inbounds i8, ptr %62, i64 %idxprom69, !dbg !988
  %64 = load <2 x i64>, ptr %p2, align 16, !dbg !991, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx70, <2 x i64> noundef %64), !dbg !992
  %65 = load <2 x i64>, ptr %tmp1, align 16, !dbg !993, !tbaa !194
  store <2 x i64> %65, ptr %p1, align 16, !dbg !994, !tbaa !194
  %66 = load <2 x i64>, ptr %tmp2, align 16, !dbg !995, !tbaa !194
  store <2 x i64> %66, ptr %p0, align 16, !dbg !996, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #9, !dbg !997
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp2) #9, !dbg !997
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp1) #9, !dbg !997
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !997
  br label %for.inc, !dbg !998

for.inc:                                          ; preds = %do.end58
  %67 = load i32, ptr %k, align 4, !dbg !999, !tbaa !188
  %dec = add nsw i32 %67, -1, !dbg !999
  store i32 %dec, ptr %k, align 4, !dbg !999, !tbaa !188
  br label %for.cond, !dbg !1000, !llvm.loop !1001

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 16, ptr %p2) #9, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 16, ptr %p3) #9, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9, !dbg !1004
  ret void, !dbg !1004
}

; Function Attrs: nounwind uwtable
define internal void @HFilter16i_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !1005 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %p3 = alloca <2 x i64>, align 16
  %p2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %mask = alloca <2 x i64>, align 16
  %tmp1 = alloca <2 x i64>, align 16
  %tmp2 = alloca <2 x i64>, align 16
  %b = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1007, metadata !DIExpression()), !dbg !1024
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !1008, metadata !DIExpression()), !dbg !1025
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !1009, metadata !DIExpression()), !dbg !1026
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !1010, metadata !DIExpression()), !dbg !1027
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !1011, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9, !dbg !1029
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !1012, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 16, ptr %p3) #9, !dbg !1031
  tail call void @llvm.dbg.declare(metadata ptr %p3, metadata !1013, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 16, ptr %p2) #9, !dbg !1031
  tail call void @llvm.dbg.declare(metadata ptr %p2, metadata !1014, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !1031
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !1015, metadata !DIExpression()), !dbg !1034
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !1031
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !1016, metadata !DIExpression()), !dbg !1035
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1036, !tbaa !70
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1037, !tbaa !70
  %2 = load i32, ptr %stride.addr, align 4, !dbg !1038, !tbaa !188
  %mul = mul nsw i32 8, %2, !dbg !1039
  %idx.ext = sext i32 %mul to i64, !dbg !1040
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !1040
  %3 = load i32, ptr %stride.addr, align 4, !dbg !1041, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %0, ptr noundef %add.ptr, i32 noundef %3, ptr noundef %p3, ptr noundef %p2, ptr noundef %p1, ptr noundef %p0), !dbg !1042
  store i32 3, ptr %k, align 4, !dbg !1043, !tbaa !188
  br label %for.cond, !dbg !1044

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %k, align 4, !dbg !1045, !tbaa !188
  %cmp = icmp sgt i32 %4, 0, !dbg !1046
  br i1 %cmp, label %for.body, label %for.end, !dbg !1047

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !1048
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !1017, metadata !DIExpression()), !dbg !1049
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp1) #9, !dbg !1048
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !1021, metadata !DIExpression()), !dbg !1050
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp2) #9, !dbg !1048
  tail call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !1022, metadata !DIExpression()), !dbg !1051
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #9, !dbg !1052
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !1023, metadata !DIExpression()), !dbg !1053
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1054, !tbaa !70
  %add.ptr1 = getelementptr inbounds i8, ptr %5, i64 2, !dbg !1055
  store ptr %add.ptr1, ptr %b, align 8, !dbg !1053, !tbaa !70
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1056, !tbaa !70
  %add.ptr2 = getelementptr inbounds i8, ptr %6, i64 4, !dbg !1056
  store ptr %add.ptr2, ptr %p.addr, align 8, !dbg !1056, !tbaa !70
  br label %do.body, !dbg !1057

do.body:                                          ; preds = %for.body
  %7 = load <2 x i64>, ptr %p0, align 16, !dbg !1058, !tbaa !194
  %8 = load <2 x i64>, ptr %p1, align 16, !dbg !1058, !tbaa !194
  %call = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %7, <2 x i64> noundef %8), !dbg !1058
  %9 = load <2 x i64>, ptr %p1, align 16, !dbg !1058, !tbaa !194
  %10 = load <2 x i64>, ptr %p0, align 16, !dbg !1058, !tbaa !194
  %call3 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %9, <2 x i64> noundef %10), !dbg !1058
  %call4 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call, <2 x i64> noundef %call3), !dbg !1058
  store <2 x i64> %call4, ptr %mask, align 16, !dbg !1058, !tbaa !194
  %11 = load <2 x i64>, ptr %mask, align 16, !dbg !1058, !tbaa !194
  %12 = load <2 x i64>, ptr %p2, align 16, !dbg !1058, !tbaa !194
  %13 = load <2 x i64>, ptr %p3, align 16, !dbg !1058, !tbaa !194
  %call5 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %12, <2 x i64> noundef %13), !dbg !1058
  %14 = load <2 x i64>, ptr %p3, align 16, !dbg !1058, !tbaa !194
  %15 = load <2 x i64>, ptr %p2, align 16, !dbg !1058, !tbaa !194
  %call6 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !1058
  %call7 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call5, <2 x i64> noundef %call6), !dbg !1058
  %call8 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %11, <2 x i64> noundef %call7), !dbg !1058
  store <2 x i64> %call8, ptr %mask, align 16, !dbg !1058, !tbaa !194
  %16 = load <2 x i64>, ptr %mask, align 16, !dbg !1058, !tbaa !194
  %17 = load <2 x i64>, ptr %p1, align 16, !dbg !1058, !tbaa !194
  %18 = load <2 x i64>, ptr %p2, align 16, !dbg !1058, !tbaa !194
  %call9 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %17, <2 x i64> noundef %18), !dbg !1058
  %19 = load <2 x i64>, ptr %p2, align 16, !dbg !1058, !tbaa !194
  %20 = load <2 x i64>, ptr %p1, align 16, !dbg !1058, !tbaa !194
  %call10 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %19, <2 x i64> noundef %20), !dbg !1058
  %call11 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call9, <2 x i64> noundef %call10), !dbg !1058
  %call12 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %16, <2 x i64> noundef %call11), !dbg !1058
  store <2 x i64> %call12, ptr %mask, align 16, !dbg !1058, !tbaa !194
  br label %do.cond, !dbg !1058

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1058

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %p.addr, align 8, !dbg !1060, !tbaa !70
  %22 = load ptr, ptr %p.addr, align 8, !dbg !1061, !tbaa !70
  %23 = load i32, ptr %stride.addr, align 4, !dbg !1062, !tbaa !188
  %mul13 = mul nsw i32 8, %23, !dbg !1063
  %idx.ext14 = sext i32 %mul13 to i64, !dbg !1064
  %add.ptr15 = getelementptr inbounds i8, ptr %22, i64 %idx.ext14, !dbg !1064
  %24 = load i32, ptr %stride.addr, align 4, !dbg !1065, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %21, ptr noundef %add.ptr15, i32 noundef %24, ptr noundef %p3, ptr noundef %p2, ptr noundef %tmp1, ptr noundef %tmp2), !dbg !1066
  br label %do.body16, !dbg !1067

do.body16:                                        ; preds = %do.end
  %25 = load <2 x i64>, ptr %mask, align 16, !dbg !1068, !tbaa !194
  %26 = load <2 x i64>, ptr %tmp2, align 16, !dbg !1068, !tbaa !194
  %27 = load <2 x i64>, ptr %tmp1, align 16, !dbg !1068, !tbaa !194
  %call17 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %26, <2 x i64> noundef %27), !dbg !1068
  %28 = load <2 x i64>, ptr %tmp1, align 16, !dbg !1068, !tbaa !194
  %29 = load <2 x i64>, ptr %tmp2, align 16, !dbg !1068, !tbaa !194
  %call18 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %28, <2 x i64> noundef %29), !dbg !1068
  %call19 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call17, <2 x i64> noundef %call18), !dbg !1068
  %call20 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %25, <2 x i64> noundef %call19), !dbg !1068
  store <2 x i64> %call20, ptr %mask, align 16, !dbg !1068, !tbaa !194
  %30 = load <2 x i64>, ptr %mask, align 16, !dbg !1068, !tbaa !194
  %31 = load <2 x i64>, ptr %p2, align 16, !dbg !1068, !tbaa !194
  %32 = load <2 x i64>, ptr %p3, align 16, !dbg !1068, !tbaa !194
  %call21 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %31, <2 x i64> noundef %32), !dbg !1068
  %33 = load <2 x i64>, ptr %p3, align 16, !dbg !1068, !tbaa !194
  %34 = load <2 x i64>, ptr %p2, align 16, !dbg !1068, !tbaa !194
  %call22 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %33, <2 x i64> noundef %34), !dbg !1068
  %call23 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call21, <2 x i64> noundef %call22), !dbg !1068
  %call24 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %30, <2 x i64> noundef %call23), !dbg !1068
  store <2 x i64> %call24, ptr %mask, align 16, !dbg !1068, !tbaa !194
  %35 = load <2 x i64>, ptr %mask, align 16, !dbg !1068, !tbaa !194
  %36 = load <2 x i64>, ptr %tmp1, align 16, !dbg !1068, !tbaa !194
  %37 = load <2 x i64>, ptr %p2, align 16, !dbg !1068, !tbaa !194
  %call25 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %36, <2 x i64> noundef %37), !dbg !1068
  %38 = load <2 x i64>, ptr %p2, align 16, !dbg !1068, !tbaa !194
  %39 = load <2 x i64>, ptr %tmp1, align 16, !dbg !1068, !tbaa !194
  %call26 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %38, <2 x i64> noundef %39), !dbg !1068
  %call27 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call25, <2 x i64> noundef %call26), !dbg !1068
  %call28 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %35, <2 x i64> noundef %call27), !dbg !1068
  store <2 x i64> %call28, ptr %mask, align 16, !dbg !1068, !tbaa !194
  br label %do.cond29, !dbg !1068

do.cond29:                                        ; preds = %do.body16
  br label %do.end30, !dbg !1068

do.end30:                                         ; preds = %do.cond29
  %40 = load i32, ptr %thresh.addr, align 4, !dbg !1070, !tbaa !188
  %41 = load i32, ptr %ithresh.addr, align 4, !dbg !1071, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %p3, ptr noundef %p2, i32 noundef %40, i32 noundef %41, ptr noundef %mask), !dbg !1072
  %42 = load i32, ptr %hev_thresh.addr, align 4, !dbg !1073, !tbaa !188
  call void @DoFilter4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %p3, ptr noundef %p2, ptr noundef %mask, i32 noundef %42), !dbg !1074
  %43 = load ptr, ptr %b, align 8, !dbg !1075, !tbaa !70
  %44 = load ptr, ptr %b, align 8, !dbg !1076, !tbaa !70
  %45 = load i32, ptr %stride.addr, align 4, !dbg !1077, !tbaa !188
  %mul31 = mul nsw i32 8, %45, !dbg !1078
  %idx.ext32 = sext i32 %mul31 to i64, !dbg !1079
  %add.ptr33 = getelementptr inbounds i8, ptr %44, i64 %idx.ext32, !dbg !1079
  %46 = load i32, ptr %stride.addr, align 4, !dbg !1080, !tbaa !188
  call void @Store16x4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %p3, ptr noundef %p2, ptr noundef %43, ptr noundef %add.ptr33, i32 noundef %46), !dbg !1081
  %47 = load <2 x i64>, ptr %tmp1, align 16, !dbg !1082, !tbaa !194
  store <2 x i64> %47, ptr %p1, align 16, !dbg !1083, !tbaa !194
  %48 = load <2 x i64>, ptr %tmp2, align 16, !dbg !1084, !tbaa !194
  store <2 x i64> %48, ptr %p0, align 16, !dbg !1085, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #9, !dbg !1086
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp2) #9, !dbg !1086
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp1) #9, !dbg !1086
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !1086
  br label %for.inc, !dbg !1087

for.inc:                                          ; preds = %do.end30
  %49 = load i32, ptr %k, align 4, !dbg !1088, !tbaa !188
  %dec = add nsw i32 %49, -1, !dbg !1088
  store i32 %dec, ptr %k, align 4, !dbg !1088, !tbaa !188
  br label %for.cond, !dbg !1089, !llvm.loop !1090

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !1092
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !1092
  call void @llvm.lifetime.end.p0(i64 16, ptr %p2) #9, !dbg !1092
  call void @llvm.lifetime.end.p0(i64 16, ptr %p3) #9, !dbg !1092
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9, !dbg !1092
  ret void, !dbg !1092
}

; Function Attrs: nounwind uwtable
define internal void @VFilter8i_SSE2(ptr noundef %u, ptr noundef %v, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !1093 {
entry:
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %mask = alloca <2 x i64>, align 16
  %t1 = alloca <2 x i64>, align 16
  %t2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  %U = alloca <2 x i64>, align 16
  %V = alloca <2 x i64>, align 16
  %U7 = alloca <2 x i64>, align 16
  %V12 = alloca <2 x i64>, align 16
  %U21 = alloca <2 x i64>, align 16
  %V26 = alloca <2 x i64>, align 16
  %U35 = alloca <2 x i64>, align 16
  %V40 = alloca <2 x i64>, align 16
  %U67 = alloca <2 x i64>, align 16
  %V72 = alloca <2 x i64>, align 16
  %U81 = alloca <2 x i64>, align 16
  %V86 = alloca <2 x i64>, align 16
  %U95 = alloca <2 x i64>, align 16
  %V100 = alloca <2 x i64>, align 16
  %U109 = alloca <2 x i64>, align 16
  %V114 = alloca <2 x i64>, align 16
  store ptr %u, ptr %u.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !1095, metadata !DIExpression()), !dbg !1134
  store ptr %v, ptr %v.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1096, metadata !DIExpression()), !dbg !1135
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !1097, metadata !DIExpression()), !dbg !1136
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !1098, metadata !DIExpression()), !dbg !1137
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !1099, metadata !DIExpression()), !dbg !1138
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !1100, metadata !DIExpression()), !dbg !1139
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !1140
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !1101, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !1102, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 16, ptr %t2) #9, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %t2, metadata !1103, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !1104, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !1105, metadata !DIExpression()), !dbg !1146
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !1106, metadata !DIExpression()), !dbg !1147
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !1107, metadata !DIExpression()), !dbg !1148
  br label %do.body, !dbg !1149

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %U) #9, !dbg !1150
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !1108, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %u.addr, align 8, !dbg !1150, !tbaa !70
  %1 = load i32, ptr %stride.addr, align 4, !dbg !1150, !tbaa !188
  %mul = mul nsw i32 0, %1, !dbg !1150
  %idxprom = sext i32 %mul to i64, !dbg !1150
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !1150
  %call = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx), !dbg !1150
  store <2 x i64> %call, ptr %U, align 16, !dbg !1150, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V) #9, !dbg !1150
  tail call void @llvm.dbg.declare(metadata ptr %V, metadata !1111, metadata !DIExpression()), !dbg !1150
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1150, !tbaa !70
  %3 = load i32, ptr %stride.addr, align 4, !dbg !1150, !tbaa !188
  %mul1 = mul nsw i32 0, %3, !dbg !1150
  %idxprom2 = sext i32 %mul1 to i64, !dbg !1150
  %arrayidx3 = getelementptr inbounds i8, ptr %2, i64 %idxprom2, !dbg !1150
  %call4 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx3), !dbg !1150
  store <2 x i64> %call4, ptr %V, align 16, !dbg !1150, !tbaa !194
  %4 = load <2 x i64>, ptr %U, align 16, !dbg !1150, !tbaa !194
  %5 = load <2 x i64>, ptr %V, align 16, !dbg !1150, !tbaa !194
  %call5 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %4, <2 x i64> noundef %5), !dbg !1150
  store <2 x i64> %call5, ptr %t2, align 16, !dbg !1150, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V) #9, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 16, ptr %U) #9, !dbg !1149
  br label %do.cond, !dbg !1150

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1150

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1149

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %U7) #9, !dbg !1151
  tail call void @llvm.dbg.declare(metadata ptr %U7, metadata !1112, metadata !DIExpression()), !dbg !1151
  %6 = load ptr, ptr %u.addr, align 8, !dbg !1151, !tbaa !70
  %7 = load i32, ptr %stride.addr, align 4, !dbg !1151, !tbaa !188
  %mul8 = mul nsw i32 1, %7, !dbg !1151
  %idxprom9 = sext i32 %mul8 to i64, !dbg !1151
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 %idxprom9, !dbg !1151
  %call11 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx10), !dbg !1151
  store <2 x i64> %call11, ptr %U7, align 16, !dbg !1151, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V12) #9, !dbg !1151
  tail call void @llvm.dbg.declare(metadata ptr %V12, metadata !1114, metadata !DIExpression()), !dbg !1151
  %8 = load ptr, ptr %v.addr, align 8, !dbg !1151, !tbaa !70
  %9 = load i32, ptr %stride.addr, align 4, !dbg !1151, !tbaa !188
  %mul13 = mul nsw i32 1, %9, !dbg !1151
  %idxprom14 = sext i32 %mul13 to i64, !dbg !1151
  %arrayidx15 = getelementptr inbounds i8, ptr %8, i64 %idxprom14, !dbg !1151
  %call16 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx15), !dbg !1151
  store <2 x i64> %call16, ptr %V12, align 16, !dbg !1151, !tbaa !194
  %10 = load <2 x i64>, ptr %U7, align 16, !dbg !1151, !tbaa !194
  %11 = load <2 x i64>, ptr %V12, align 16, !dbg !1151, !tbaa !194
  %call17 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !1151
  store <2 x i64> %call17, ptr %t1, align 16, !dbg !1151, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V12) #9, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 16, ptr %U7) #9, !dbg !1149
  br label %do.cond18, !dbg !1151

do.cond18:                                        ; preds = %do.body6
  br label %do.end19, !dbg !1151

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !1149

do.body20:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 16, ptr %U21) #9, !dbg !1152
  tail call void @llvm.dbg.declare(metadata ptr %U21, metadata !1115, metadata !DIExpression()), !dbg !1152
  %12 = load ptr, ptr %u.addr, align 8, !dbg !1152, !tbaa !70
  %13 = load i32, ptr %stride.addr, align 4, !dbg !1152, !tbaa !188
  %mul22 = mul nsw i32 2, %13, !dbg !1152
  %idxprom23 = sext i32 %mul22 to i64, !dbg !1152
  %arrayidx24 = getelementptr inbounds i8, ptr %12, i64 %idxprom23, !dbg !1152
  %call25 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx24), !dbg !1152
  store <2 x i64> %call25, ptr %U21, align 16, !dbg !1152, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V26) #9, !dbg !1152
  tail call void @llvm.dbg.declare(metadata ptr %V26, metadata !1117, metadata !DIExpression()), !dbg !1152
  %14 = load ptr, ptr %v.addr, align 8, !dbg !1152, !tbaa !70
  %15 = load i32, ptr %stride.addr, align 4, !dbg !1152, !tbaa !188
  %mul27 = mul nsw i32 2, %15, !dbg !1152
  %idxprom28 = sext i32 %mul27 to i64, !dbg !1152
  %arrayidx29 = getelementptr inbounds i8, ptr %14, i64 %idxprom28, !dbg !1152
  %call30 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx29), !dbg !1152
  store <2 x i64> %call30, ptr %V26, align 16, !dbg !1152, !tbaa !194
  %16 = load <2 x i64>, ptr %U21, align 16, !dbg !1152, !tbaa !194
  %17 = load <2 x i64>, ptr %V26, align 16, !dbg !1152, !tbaa !194
  %call31 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %16, <2 x i64> noundef %17), !dbg !1152
  store <2 x i64> %call31, ptr %p1, align 16, !dbg !1152, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V26) #9, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 16, ptr %U21) #9, !dbg !1149
  br label %do.cond32, !dbg !1152

do.cond32:                                        ; preds = %do.body20
  br label %do.end33, !dbg !1152

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !1149

do.body34:                                        ; preds = %do.end33
  call void @llvm.lifetime.start.p0(i64 16, ptr %U35) #9, !dbg !1153
  tail call void @llvm.dbg.declare(metadata ptr %U35, metadata !1118, metadata !DIExpression()), !dbg !1153
  %18 = load ptr, ptr %u.addr, align 8, !dbg !1153, !tbaa !70
  %19 = load i32, ptr %stride.addr, align 4, !dbg !1153, !tbaa !188
  %mul36 = mul nsw i32 3, %19, !dbg !1153
  %idxprom37 = sext i32 %mul36 to i64, !dbg !1153
  %arrayidx38 = getelementptr inbounds i8, ptr %18, i64 %idxprom37, !dbg !1153
  %call39 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx38), !dbg !1153
  store <2 x i64> %call39, ptr %U35, align 16, !dbg !1153, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V40) #9, !dbg !1153
  tail call void @llvm.dbg.declare(metadata ptr %V40, metadata !1120, metadata !DIExpression()), !dbg !1153
  %20 = load ptr, ptr %v.addr, align 8, !dbg !1153, !tbaa !70
  %21 = load i32, ptr %stride.addr, align 4, !dbg !1153, !tbaa !188
  %mul41 = mul nsw i32 3, %21, !dbg !1153
  %idxprom42 = sext i32 %mul41 to i64, !dbg !1153
  %arrayidx43 = getelementptr inbounds i8, ptr %20, i64 %idxprom42, !dbg !1153
  %call44 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx43), !dbg !1153
  store <2 x i64> %call44, ptr %V40, align 16, !dbg !1153, !tbaa !194
  %22 = load <2 x i64>, ptr %U35, align 16, !dbg !1153, !tbaa !194
  %23 = load <2 x i64>, ptr %V40, align 16, !dbg !1153, !tbaa !194
  %call45 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !1153
  store <2 x i64> %call45, ptr %p0, align 16, !dbg !1153, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V40) #9, !dbg !1149
  call void @llvm.lifetime.end.p0(i64 16, ptr %U35) #9, !dbg !1149
  br label %do.cond46, !dbg !1153

do.cond46:                                        ; preds = %do.body34
  br label %do.end47, !dbg !1153

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !1154

do.body48:                                        ; preds = %do.end47
  %24 = load <2 x i64>, ptr %p0, align 16, !dbg !1155, !tbaa !194
  %25 = load <2 x i64>, ptr %p1, align 16, !dbg !1155, !tbaa !194
  %call49 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !1155
  %26 = load <2 x i64>, ptr %p1, align 16, !dbg !1155, !tbaa !194
  %27 = load <2 x i64>, ptr %p0, align 16, !dbg !1155, !tbaa !194
  %call50 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %26, <2 x i64> noundef %27), !dbg !1155
  %call51 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call49, <2 x i64> noundef %call50), !dbg !1155
  store <2 x i64> %call51, ptr %mask, align 16, !dbg !1155, !tbaa !194
  %28 = load <2 x i64>, ptr %mask, align 16, !dbg !1155, !tbaa !194
  %29 = load <2 x i64>, ptr %t1, align 16, !dbg !1155, !tbaa !194
  %30 = load <2 x i64>, ptr %t2, align 16, !dbg !1155, !tbaa !194
  %call52 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %29, <2 x i64> noundef %30), !dbg !1155
  %31 = load <2 x i64>, ptr %t2, align 16, !dbg !1155, !tbaa !194
  %32 = load <2 x i64>, ptr %t1, align 16, !dbg !1155, !tbaa !194
  %call53 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %31, <2 x i64> noundef %32), !dbg !1155
  %call54 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call52, <2 x i64> noundef %call53), !dbg !1155
  %call55 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %28, <2 x i64> noundef %call54), !dbg !1155
  store <2 x i64> %call55, ptr %mask, align 16, !dbg !1155, !tbaa !194
  %33 = load <2 x i64>, ptr %mask, align 16, !dbg !1155, !tbaa !194
  %34 = load <2 x i64>, ptr %p1, align 16, !dbg !1155, !tbaa !194
  %35 = load <2 x i64>, ptr %t1, align 16, !dbg !1155, !tbaa !194
  %call56 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %34, <2 x i64> noundef %35), !dbg !1155
  %36 = load <2 x i64>, ptr %t1, align 16, !dbg !1155, !tbaa !194
  %37 = load <2 x i64>, ptr %p1, align 16, !dbg !1155, !tbaa !194
  %call57 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %36, <2 x i64> noundef %37), !dbg !1155
  %call58 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call56, <2 x i64> noundef %call57), !dbg !1155
  %call59 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %33, <2 x i64> noundef %call58), !dbg !1155
  store <2 x i64> %call59, ptr %mask, align 16, !dbg !1155, !tbaa !194
  br label %do.cond60, !dbg !1155

do.cond60:                                        ; preds = %do.body48
  br label %do.end61, !dbg !1155

do.end61:                                         ; preds = %do.cond60
  %38 = load i32, ptr %stride.addr, align 4, !dbg !1157, !tbaa !188
  %mul62 = mul nsw i32 4, %38, !dbg !1158
  %39 = load ptr, ptr %u.addr, align 8, !dbg !1159, !tbaa !70
  %idx.ext = sext i32 %mul62 to i64, !dbg !1159
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 %idx.ext, !dbg !1159
  store ptr %add.ptr, ptr %u.addr, align 8, !dbg !1159, !tbaa !70
  %40 = load i32, ptr %stride.addr, align 4, !dbg !1160, !tbaa !188
  %mul63 = mul nsw i32 4, %40, !dbg !1161
  %41 = load ptr, ptr %v.addr, align 8, !dbg !1162, !tbaa !70
  %idx.ext64 = sext i32 %mul63 to i64, !dbg !1162
  %add.ptr65 = getelementptr inbounds i8, ptr %41, i64 %idx.ext64, !dbg !1162
  store ptr %add.ptr65, ptr %v.addr, align 8, !dbg !1162, !tbaa !70
  br label %do.body66, !dbg !1163

do.body66:                                        ; preds = %do.end61
  call void @llvm.lifetime.start.p0(i64 16, ptr %U67) #9, !dbg !1164
  tail call void @llvm.dbg.declare(metadata ptr %U67, metadata !1121, metadata !DIExpression()), !dbg !1164
  %42 = load ptr, ptr %u.addr, align 8, !dbg !1164, !tbaa !70
  %43 = load i32, ptr %stride.addr, align 4, !dbg !1164, !tbaa !188
  %mul68 = mul nsw i32 0, %43, !dbg !1164
  %idxprom69 = sext i32 %mul68 to i64, !dbg !1164
  %arrayidx70 = getelementptr inbounds i8, ptr %42, i64 %idxprom69, !dbg !1164
  %call71 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx70), !dbg !1164
  store <2 x i64> %call71, ptr %U67, align 16, !dbg !1164, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V72) #9, !dbg !1164
  tail call void @llvm.dbg.declare(metadata ptr %V72, metadata !1124, metadata !DIExpression()), !dbg !1164
  %44 = load ptr, ptr %v.addr, align 8, !dbg !1164, !tbaa !70
  %45 = load i32, ptr %stride.addr, align 4, !dbg !1164, !tbaa !188
  %mul73 = mul nsw i32 0, %45, !dbg !1164
  %idxprom74 = sext i32 %mul73 to i64, !dbg !1164
  %arrayidx75 = getelementptr inbounds i8, ptr %44, i64 %idxprom74, !dbg !1164
  %call76 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx75), !dbg !1164
  store <2 x i64> %call76, ptr %V72, align 16, !dbg !1164, !tbaa !194
  %46 = load <2 x i64>, ptr %U67, align 16, !dbg !1164, !tbaa !194
  %47 = load <2 x i64>, ptr %V72, align 16, !dbg !1164, !tbaa !194
  %call77 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %46, <2 x i64> noundef %47), !dbg !1164
  store <2 x i64> %call77, ptr %q0, align 16, !dbg !1164, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V72) #9, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 16, ptr %U67) #9, !dbg !1163
  br label %do.cond78, !dbg !1164

do.cond78:                                        ; preds = %do.body66
  br label %do.end79, !dbg !1164

do.end79:                                         ; preds = %do.cond78
  br label %do.body80, !dbg !1163

do.body80:                                        ; preds = %do.end79
  call void @llvm.lifetime.start.p0(i64 16, ptr %U81) #9, !dbg !1165
  tail call void @llvm.dbg.declare(metadata ptr %U81, metadata !1125, metadata !DIExpression()), !dbg !1165
  %48 = load ptr, ptr %u.addr, align 8, !dbg !1165, !tbaa !70
  %49 = load i32, ptr %stride.addr, align 4, !dbg !1165, !tbaa !188
  %mul82 = mul nsw i32 1, %49, !dbg !1165
  %idxprom83 = sext i32 %mul82 to i64, !dbg !1165
  %arrayidx84 = getelementptr inbounds i8, ptr %48, i64 %idxprom83, !dbg !1165
  %call85 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx84), !dbg !1165
  store <2 x i64> %call85, ptr %U81, align 16, !dbg !1165, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V86) #9, !dbg !1165
  tail call void @llvm.dbg.declare(metadata ptr %V86, metadata !1127, metadata !DIExpression()), !dbg !1165
  %50 = load ptr, ptr %v.addr, align 8, !dbg !1165, !tbaa !70
  %51 = load i32, ptr %stride.addr, align 4, !dbg !1165, !tbaa !188
  %mul87 = mul nsw i32 1, %51, !dbg !1165
  %idxprom88 = sext i32 %mul87 to i64, !dbg !1165
  %arrayidx89 = getelementptr inbounds i8, ptr %50, i64 %idxprom88, !dbg !1165
  %call90 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx89), !dbg !1165
  store <2 x i64> %call90, ptr %V86, align 16, !dbg !1165, !tbaa !194
  %52 = load <2 x i64>, ptr %U81, align 16, !dbg !1165, !tbaa !194
  %53 = load <2 x i64>, ptr %V86, align 16, !dbg !1165, !tbaa !194
  %call91 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %52, <2 x i64> noundef %53), !dbg !1165
  store <2 x i64> %call91, ptr %q1, align 16, !dbg !1165, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V86) #9, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 16, ptr %U81) #9, !dbg !1163
  br label %do.cond92, !dbg !1165

do.cond92:                                        ; preds = %do.body80
  br label %do.end93, !dbg !1165

do.end93:                                         ; preds = %do.cond92
  br label %do.body94, !dbg !1163

do.body94:                                        ; preds = %do.end93
  call void @llvm.lifetime.start.p0(i64 16, ptr %U95) #9, !dbg !1166
  tail call void @llvm.dbg.declare(metadata ptr %U95, metadata !1128, metadata !DIExpression()), !dbg !1166
  %54 = load ptr, ptr %u.addr, align 8, !dbg !1166, !tbaa !70
  %55 = load i32, ptr %stride.addr, align 4, !dbg !1166, !tbaa !188
  %mul96 = mul nsw i32 2, %55, !dbg !1166
  %idxprom97 = sext i32 %mul96 to i64, !dbg !1166
  %arrayidx98 = getelementptr inbounds i8, ptr %54, i64 %idxprom97, !dbg !1166
  %call99 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx98), !dbg !1166
  store <2 x i64> %call99, ptr %U95, align 16, !dbg !1166, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V100) #9, !dbg !1166
  tail call void @llvm.dbg.declare(metadata ptr %V100, metadata !1130, metadata !DIExpression()), !dbg !1166
  %56 = load ptr, ptr %v.addr, align 8, !dbg !1166, !tbaa !70
  %57 = load i32, ptr %stride.addr, align 4, !dbg !1166, !tbaa !188
  %mul101 = mul nsw i32 2, %57, !dbg !1166
  %idxprom102 = sext i32 %mul101 to i64, !dbg !1166
  %arrayidx103 = getelementptr inbounds i8, ptr %56, i64 %idxprom102, !dbg !1166
  %call104 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx103), !dbg !1166
  store <2 x i64> %call104, ptr %V100, align 16, !dbg !1166, !tbaa !194
  %58 = load <2 x i64>, ptr %U95, align 16, !dbg !1166, !tbaa !194
  %59 = load <2 x i64>, ptr %V100, align 16, !dbg !1166, !tbaa !194
  %call105 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %58, <2 x i64> noundef %59), !dbg !1166
  store <2 x i64> %call105, ptr %t1, align 16, !dbg !1166, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V100) #9, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 16, ptr %U95) #9, !dbg !1163
  br label %do.cond106, !dbg !1166

do.cond106:                                       ; preds = %do.body94
  br label %do.end107, !dbg !1166

do.end107:                                        ; preds = %do.cond106
  br label %do.body108, !dbg !1163

do.body108:                                       ; preds = %do.end107
  call void @llvm.lifetime.start.p0(i64 16, ptr %U109) #9, !dbg !1167
  tail call void @llvm.dbg.declare(metadata ptr %U109, metadata !1131, metadata !DIExpression()), !dbg !1167
  %60 = load ptr, ptr %u.addr, align 8, !dbg !1167, !tbaa !70
  %61 = load i32, ptr %stride.addr, align 4, !dbg !1167, !tbaa !188
  %mul110 = mul nsw i32 3, %61, !dbg !1167
  %idxprom111 = sext i32 %mul110 to i64, !dbg !1167
  %arrayidx112 = getelementptr inbounds i8, ptr %60, i64 %idxprom111, !dbg !1167
  %call113 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx112), !dbg !1167
  store <2 x i64> %call113, ptr %U109, align 16, !dbg !1167, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %V114) #9, !dbg !1167
  tail call void @llvm.dbg.declare(metadata ptr %V114, metadata !1133, metadata !DIExpression()), !dbg !1167
  %62 = load ptr, ptr %v.addr, align 8, !dbg !1167, !tbaa !70
  %63 = load i32, ptr %stride.addr, align 4, !dbg !1167, !tbaa !188
  %mul115 = mul nsw i32 3, %63, !dbg !1167
  %idxprom116 = sext i32 %mul115 to i64, !dbg !1167
  %arrayidx117 = getelementptr inbounds i8, ptr %62, i64 %idxprom116, !dbg !1167
  %call118 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %arrayidx117), !dbg !1167
  store <2 x i64> %call118, ptr %V114, align 16, !dbg !1167, !tbaa !194
  %64 = load <2 x i64>, ptr %U109, align 16, !dbg !1167, !tbaa !194
  %65 = load <2 x i64>, ptr %V114, align 16, !dbg !1167, !tbaa !194
  %call119 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %64, <2 x i64> noundef %65), !dbg !1167
  store <2 x i64> %call119, ptr %t2, align 16, !dbg !1167, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %V114) #9, !dbg !1163
  call void @llvm.lifetime.end.p0(i64 16, ptr %U109) #9, !dbg !1163
  br label %do.cond120, !dbg !1167

do.cond120:                                       ; preds = %do.body108
  br label %do.end121, !dbg !1167

do.end121:                                        ; preds = %do.cond120
  br label %do.body122, !dbg !1168

do.body122:                                       ; preds = %do.end121
  %66 = load <2 x i64>, ptr %mask, align 16, !dbg !1169, !tbaa !194
  %67 = load <2 x i64>, ptr %q0, align 16, !dbg !1169, !tbaa !194
  %68 = load <2 x i64>, ptr %q1, align 16, !dbg !1169, !tbaa !194
  %call123 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %67, <2 x i64> noundef %68), !dbg !1169
  %69 = load <2 x i64>, ptr %q1, align 16, !dbg !1169, !tbaa !194
  %70 = load <2 x i64>, ptr %q0, align 16, !dbg !1169, !tbaa !194
  %call124 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %69, <2 x i64> noundef %70), !dbg !1169
  %call125 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call123, <2 x i64> noundef %call124), !dbg !1169
  %call126 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %66, <2 x i64> noundef %call125), !dbg !1169
  store <2 x i64> %call126, ptr %mask, align 16, !dbg !1169, !tbaa !194
  %71 = load <2 x i64>, ptr %mask, align 16, !dbg !1169, !tbaa !194
  %72 = load <2 x i64>, ptr %t1, align 16, !dbg !1169, !tbaa !194
  %73 = load <2 x i64>, ptr %t2, align 16, !dbg !1169, !tbaa !194
  %call127 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %72, <2 x i64> noundef %73), !dbg !1169
  %74 = load <2 x i64>, ptr %t2, align 16, !dbg !1169, !tbaa !194
  %75 = load <2 x i64>, ptr %t1, align 16, !dbg !1169, !tbaa !194
  %call128 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %74, <2 x i64> noundef %75), !dbg !1169
  %call129 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call127, <2 x i64> noundef %call128), !dbg !1169
  %call130 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %71, <2 x i64> noundef %call129), !dbg !1169
  store <2 x i64> %call130, ptr %mask, align 16, !dbg !1169, !tbaa !194
  %76 = load <2 x i64>, ptr %mask, align 16, !dbg !1169, !tbaa !194
  %77 = load <2 x i64>, ptr %q1, align 16, !dbg !1169, !tbaa !194
  %78 = load <2 x i64>, ptr %t1, align 16, !dbg !1169, !tbaa !194
  %call131 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %77, <2 x i64> noundef %78), !dbg !1169
  %79 = load <2 x i64>, ptr %t1, align 16, !dbg !1169, !tbaa !194
  %80 = load <2 x i64>, ptr %q1, align 16, !dbg !1169, !tbaa !194
  %call132 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %79, <2 x i64> noundef %80), !dbg !1169
  %call133 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call131, <2 x i64> noundef %call132), !dbg !1169
  %call134 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %76, <2 x i64> noundef %call133), !dbg !1169
  store <2 x i64> %call134, ptr %mask, align 16, !dbg !1169, !tbaa !194
  br label %do.cond135, !dbg !1169

do.cond135:                                       ; preds = %do.body122
  br label %do.end136, !dbg !1169

do.end136:                                        ; preds = %do.cond135
  %81 = load i32, ptr %thresh.addr, align 4, !dbg !1171, !tbaa !188
  %82 = load i32, ptr %ithresh.addr, align 4, !dbg !1172, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %81, i32 noundef %82, ptr noundef %mask), !dbg !1173
  %83 = load i32, ptr %hev_thresh.addr, align 4, !dbg !1174, !tbaa !188
  call void @DoFilter4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %mask, i32 noundef %83), !dbg !1175
  %84 = load ptr, ptr %u.addr, align 8, !dbg !1176, !tbaa !70
  %85 = load i32, ptr %stride.addr, align 4, !dbg !1176, !tbaa !188
  %mul137 = mul nsw i32 -2, %85, !dbg !1176
  %idxprom138 = sext i32 %mul137 to i64, !dbg !1176
  %arrayidx139 = getelementptr inbounds i8, ptr %84, i64 %idxprom138, !dbg !1176
  %86 = load <2 x i64>, ptr %p1, align 16, !dbg !1176, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx139, <2 x i64> noundef %86), !dbg !1176
  %87 = load <2 x i64>, ptr %p1, align 16, !dbg !1176, !tbaa !194
  %cast = bitcast <2 x i64> %87 to <16 x i8>, !dbg !1176
  %psrldq = shufflevector <16 x i8> %cast, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1176
  %cast140 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !1176
  store <2 x i64> %cast140, ptr %p1, align 16, !dbg !1176, !tbaa !194
  %88 = load ptr, ptr %v.addr, align 8, !dbg !1176, !tbaa !70
  %89 = load i32, ptr %stride.addr, align 4, !dbg !1176, !tbaa !188
  %mul141 = mul nsw i32 -2, %89, !dbg !1176
  %idxprom142 = sext i32 %mul141 to i64, !dbg !1176
  %arrayidx143 = getelementptr inbounds i8, ptr %88, i64 %idxprom142, !dbg !1176
  %90 = load <2 x i64>, ptr %p1, align 16, !dbg !1176, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx143, <2 x i64> noundef %90), !dbg !1176
  %91 = load ptr, ptr %u.addr, align 8, !dbg !1178, !tbaa !70
  %92 = load i32, ptr %stride.addr, align 4, !dbg !1178, !tbaa !188
  %mul144 = mul nsw i32 -1, %92, !dbg !1178
  %idxprom145 = sext i32 %mul144 to i64, !dbg !1178
  %arrayidx146 = getelementptr inbounds i8, ptr %91, i64 %idxprom145, !dbg !1178
  %93 = load <2 x i64>, ptr %p0, align 16, !dbg !1178, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx146, <2 x i64> noundef %93), !dbg !1178
  %94 = load <2 x i64>, ptr %p0, align 16, !dbg !1178, !tbaa !194
  %cast147 = bitcast <2 x i64> %94 to <16 x i8>, !dbg !1178
  %psrldq148 = shufflevector <16 x i8> %cast147, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1178
  %cast149 = bitcast <16 x i8> %psrldq148 to <2 x i64>, !dbg !1178
  store <2 x i64> %cast149, ptr %p0, align 16, !dbg !1178, !tbaa !194
  %95 = load ptr, ptr %v.addr, align 8, !dbg !1178, !tbaa !70
  %96 = load i32, ptr %stride.addr, align 4, !dbg !1178, !tbaa !188
  %mul150 = mul nsw i32 -1, %96, !dbg !1178
  %idxprom151 = sext i32 %mul150 to i64, !dbg !1178
  %arrayidx152 = getelementptr inbounds i8, ptr %95, i64 %idxprom151, !dbg !1178
  %97 = load <2 x i64>, ptr %p0, align 16, !dbg !1178, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx152, <2 x i64> noundef %97), !dbg !1178
  %98 = load ptr, ptr %u.addr, align 8, !dbg !1180, !tbaa !70
  %99 = load i32, ptr %stride.addr, align 4, !dbg !1180, !tbaa !188
  %mul153 = mul nsw i32 0, %99, !dbg !1180
  %idxprom154 = sext i32 %mul153 to i64, !dbg !1180
  %arrayidx155 = getelementptr inbounds i8, ptr %98, i64 %idxprom154, !dbg !1180
  %100 = load <2 x i64>, ptr %q0, align 16, !dbg !1180, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx155, <2 x i64> noundef %100), !dbg !1180
  %101 = load <2 x i64>, ptr %q0, align 16, !dbg !1180, !tbaa !194
  %cast156 = bitcast <2 x i64> %101 to <16 x i8>, !dbg !1180
  %psrldq157 = shufflevector <16 x i8> %cast156, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1180
  %cast158 = bitcast <16 x i8> %psrldq157 to <2 x i64>, !dbg !1180
  store <2 x i64> %cast158, ptr %q0, align 16, !dbg !1180, !tbaa !194
  %102 = load ptr, ptr %v.addr, align 8, !dbg !1180, !tbaa !70
  %103 = load i32, ptr %stride.addr, align 4, !dbg !1180, !tbaa !188
  %mul159 = mul nsw i32 0, %103, !dbg !1180
  %idxprom160 = sext i32 %mul159 to i64, !dbg !1180
  %arrayidx161 = getelementptr inbounds i8, ptr %102, i64 %idxprom160, !dbg !1180
  %104 = load <2 x i64>, ptr %q0, align 16, !dbg !1180, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx161, <2 x i64> noundef %104), !dbg !1180
  %105 = load ptr, ptr %u.addr, align 8, !dbg !1182, !tbaa !70
  %106 = load i32, ptr %stride.addr, align 4, !dbg !1182, !tbaa !188
  %mul162 = mul nsw i32 1, %106, !dbg !1182
  %idxprom163 = sext i32 %mul162 to i64, !dbg !1182
  %arrayidx164 = getelementptr inbounds i8, ptr %105, i64 %idxprom163, !dbg !1182
  %107 = load <2 x i64>, ptr %q1, align 16, !dbg !1182, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx164, <2 x i64> noundef %107), !dbg !1182
  %108 = load <2 x i64>, ptr %q1, align 16, !dbg !1182, !tbaa !194
  %cast165 = bitcast <2 x i64> %108 to <16 x i8>, !dbg !1182
  %psrldq166 = shufflevector <16 x i8> %cast165, <16 x i8> zeroinitializer, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1182
  %cast167 = bitcast <16 x i8> %psrldq166 to <2 x i64>, !dbg !1182
  store <2 x i64> %cast167, ptr %q1, align 16, !dbg !1182, !tbaa !194
  %109 = load ptr, ptr %v.addr, align 8, !dbg !1182, !tbaa !70
  %110 = load i32, ptr %stride.addr, align 4, !dbg !1182, !tbaa !188
  %mul168 = mul nsw i32 1, %110, !dbg !1182
  %idxprom169 = sext i32 %mul168 to i64, !dbg !1182
  %arrayidx170 = getelementptr inbounds i8, ptr %109, i64 %idxprom169, !dbg !1182
  %111 = load <2 x i64>, ptr %q1, align 16, !dbg !1182, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %arrayidx170, <2 x i64> noundef %111), !dbg !1182
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 16, ptr %t2) #9, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !1184
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !1184
  ret void, !dbg !1184
}

; Function Attrs: nounwind uwtable
define internal void @HFilter8i_SSE2(ptr noundef %u, ptr noundef %v, i32 noundef %stride, i32 noundef %thresh, i32 noundef %ithresh, i32 noundef %hev_thresh) #1 !dbg !1185 {
entry:
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %hev_thresh.addr = alloca i32, align 4
  %mask = alloca <2 x i64>, align 16
  %t1 = alloca <2 x i64>, align 16
  %t2 = alloca <2 x i64>, align 16
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  store ptr %u, ptr %u.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !1187, metadata !DIExpression()), !dbg !1200
  store ptr %v, ptr %v.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1188, metadata !DIExpression()), !dbg !1201
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !1189, metadata !DIExpression()), !dbg !1202
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !1190, metadata !DIExpression()), !dbg !1203
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !1191, metadata !DIExpression()), !dbg !1204
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !1192, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !1206
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !1193, metadata !DIExpression()), !dbg !1207
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !1208
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !1194, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.start.p0(i64 16, ptr %t2) #9, !dbg !1208
  tail call void @llvm.dbg.declare(metadata ptr %t2, metadata !1195, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !1208
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !1196, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !1208
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !1197, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !1208
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !1198, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !1208
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !1199, metadata !DIExpression()), !dbg !1214
  %0 = load ptr, ptr %u.addr, align 8, !dbg !1215, !tbaa !70
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1216, !tbaa !70
  %2 = load i32, ptr %stride.addr, align 4, !dbg !1217, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %t2, ptr noundef %t1, ptr noundef %p1, ptr noundef %p0), !dbg !1218
  br label %do.body, !dbg !1219

do.body:                                          ; preds = %entry
  %3 = load <2 x i64>, ptr %p0, align 16, !dbg !1220, !tbaa !194
  %4 = load <2 x i64>, ptr %p1, align 16, !dbg !1220, !tbaa !194
  %call = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %3, <2 x i64> noundef %4), !dbg !1220
  %5 = load <2 x i64>, ptr %p1, align 16, !dbg !1220, !tbaa !194
  %6 = load <2 x i64>, ptr %p0, align 16, !dbg !1220, !tbaa !194
  %call1 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %5, <2 x i64> noundef %6), !dbg !1220
  %call2 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call, <2 x i64> noundef %call1), !dbg !1220
  store <2 x i64> %call2, ptr %mask, align 16, !dbg !1220, !tbaa !194
  %7 = load <2 x i64>, ptr %mask, align 16, !dbg !1220, !tbaa !194
  %8 = load <2 x i64>, ptr %t1, align 16, !dbg !1220, !tbaa !194
  %9 = load <2 x i64>, ptr %t2, align 16, !dbg !1220, !tbaa !194
  %call3 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %8, <2 x i64> noundef %9), !dbg !1220
  %10 = load <2 x i64>, ptr %t2, align 16, !dbg !1220, !tbaa !194
  %11 = load <2 x i64>, ptr %t1, align 16, !dbg !1220, !tbaa !194
  %call4 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !1220
  %call5 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call3, <2 x i64> noundef %call4), !dbg !1220
  %call6 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %7, <2 x i64> noundef %call5), !dbg !1220
  store <2 x i64> %call6, ptr %mask, align 16, !dbg !1220, !tbaa !194
  %12 = load <2 x i64>, ptr %mask, align 16, !dbg !1220, !tbaa !194
  %13 = load <2 x i64>, ptr %p1, align 16, !dbg !1220, !tbaa !194
  %14 = load <2 x i64>, ptr %t1, align 16, !dbg !1220, !tbaa !194
  %call7 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %13, <2 x i64> noundef %14), !dbg !1220
  %15 = load <2 x i64>, ptr %t1, align 16, !dbg !1220, !tbaa !194
  %16 = load <2 x i64>, ptr %p1, align 16, !dbg !1220, !tbaa !194
  %call8 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %15, <2 x i64> noundef %16), !dbg !1220
  %call9 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call7, <2 x i64> noundef %call8), !dbg !1220
  %call10 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %12, <2 x i64> noundef %call9), !dbg !1220
  store <2 x i64> %call10, ptr %mask, align 16, !dbg !1220, !tbaa !194
  br label %do.cond, !dbg !1220

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1220

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %u.addr, align 8, !dbg !1222, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 4, !dbg !1222
  store ptr %add.ptr, ptr %u.addr, align 8, !dbg !1222, !tbaa !70
  %18 = load ptr, ptr %v.addr, align 8, !dbg !1223, !tbaa !70
  %add.ptr11 = getelementptr inbounds i8, ptr %18, i64 4, !dbg !1223
  store ptr %add.ptr11, ptr %v.addr, align 8, !dbg !1223, !tbaa !70
  %19 = load ptr, ptr %u.addr, align 8, !dbg !1224, !tbaa !70
  %20 = load ptr, ptr %v.addr, align 8, !dbg !1225, !tbaa !70
  %21 = load i32, ptr %stride.addr, align 4, !dbg !1226, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %q0, ptr noundef %q1, ptr noundef %t1, ptr noundef %t2), !dbg !1227
  br label %do.body12, !dbg !1228

do.body12:                                        ; preds = %do.end
  %22 = load <2 x i64>, ptr %mask, align 16, !dbg !1229, !tbaa !194
  %23 = load <2 x i64>, ptr %q0, align 16, !dbg !1229, !tbaa !194
  %24 = load <2 x i64>, ptr %q1, align 16, !dbg !1229, !tbaa !194
  %call13 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %23, <2 x i64> noundef %24), !dbg !1229
  %25 = load <2 x i64>, ptr %q1, align 16, !dbg !1229, !tbaa !194
  %26 = load <2 x i64>, ptr %q0, align 16, !dbg !1229, !tbaa !194
  %call14 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %25, <2 x i64> noundef %26), !dbg !1229
  %call15 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call13, <2 x i64> noundef %call14), !dbg !1229
  %call16 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %22, <2 x i64> noundef %call15), !dbg !1229
  store <2 x i64> %call16, ptr %mask, align 16, !dbg !1229, !tbaa !194
  %27 = load <2 x i64>, ptr %mask, align 16, !dbg !1229, !tbaa !194
  %28 = load <2 x i64>, ptr %t1, align 16, !dbg !1229, !tbaa !194
  %29 = load <2 x i64>, ptr %t2, align 16, !dbg !1229, !tbaa !194
  %call17 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %28, <2 x i64> noundef %29), !dbg !1229
  %30 = load <2 x i64>, ptr %t2, align 16, !dbg !1229, !tbaa !194
  %31 = load <2 x i64>, ptr %t1, align 16, !dbg !1229, !tbaa !194
  %call18 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %30, <2 x i64> noundef %31), !dbg !1229
  %call19 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call17, <2 x i64> noundef %call18), !dbg !1229
  %call20 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %27, <2 x i64> noundef %call19), !dbg !1229
  store <2 x i64> %call20, ptr %mask, align 16, !dbg !1229, !tbaa !194
  %32 = load <2 x i64>, ptr %mask, align 16, !dbg !1229, !tbaa !194
  %33 = load <2 x i64>, ptr %q1, align 16, !dbg !1229, !tbaa !194
  %34 = load <2 x i64>, ptr %t1, align 16, !dbg !1229, !tbaa !194
  %call21 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %33, <2 x i64> noundef %34), !dbg !1229
  %35 = load <2 x i64>, ptr %t1, align 16, !dbg !1229, !tbaa !194
  %36 = load <2 x i64>, ptr %q1, align 16, !dbg !1229, !tbaa !194
  %call22 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %35, <2 x i64> noundef %36), !dbg !1229
  %call23 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call21, <2 x i64> noundef %call22), !dbg !1229
  %call24 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %32, <2 x i64> noundef %call23), !dbg !1229
  store <2 x i64> %call24, ptr %mask, align 16, !dbg !1229, !tbaa !194
  br label %do.cond25, !dbg !1229

do.cond25:                                        ; preds = %do.body12
  br label %do.end26, !dbg !1229

do.end26:                                         ; preds = %do.cond25
  %37 = load i32, ptr %thresh.addr, align 4, !dbg !1231, !tbaa !188
  %38 = load i32, ptr %ithresh.addr, align 4, !dbg !1232, !tbaa !188
  call void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %37, i32 noundef %38, ptr noundef %mask), !dbg !1233
  %39 = load i32, ptr %hev_thresh.addr, align 4, !dbg !1234, !tbaa !188
  call void @DoFilter4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %mask, i32 noundef %39), !dbg !1235
  %40 = load ptr, ptr %u.addr, align 8, !dbg !1236, !tbaa !70
  %add.ptr27 = getelementptr inbounds i8, ptr %40, i64 -2, !dbg !1236
  store ptr %add.ptr27, ptr %u.addr, align 8, !dbg !1236, !tbaa !70
  %41 = load ptr, ptr %v.addr, align 8, !dbg !1237, !tbaa !70
  %add.ptr28 = getelementptr inbounds i8, ptr %41, i64 -2, !dbg !1237
  store ptr %add.ptr28, ptr %v.addr, align 8, !dbg !1237, !tbaa !70
  %42 = load ptr, ptr %u.addr, align 8, !dbg !1238, !tbaa !70
  %43 = load ptr, ptr %v.addr, align 8, !dbg !1239, !tbaa !70
  %44 = load i32, ptr %stride.addr, align 4, !dbg !1240, !tbaa !188
  call void @Store16x4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %42, ptr noundef %43, i32 noundef %44), !dbg !1241
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 16, ptr %t2) #9, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !1242
  ret void, !dbg !1242
}

; Function Attrs: nounwind uwtable
define internal void @SimpleVFilter16_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh) #1 !dbg !1243 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1247, metadata !DIExpression()), !dbg !1254
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !1248, metadata !DIExpression()), !dbg !1255
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !1249, metadata !DIExpression()), !dbg !1256
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !1257
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !1250, metadata !DIExpression()), !dbg !1258
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1259, !tbaa !70
  %1 = load i32, ptr %stride.addr, align 4, !dbg !1260, !tbaa !188
  %mul = mul nsw i32 -2, %1, !dbg !1261
  %idxprom = sext i32 %mul to i64, !dbg !1259
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !1259
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx), !dbg !1262
  store <2 x i64> %call, ptr %p1, align 16, !dbg !1258, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !1263
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !1251, metadata !DIExpression()), !dbg !1264
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1265, !tbaa !70
  %3 = load i32, ptr %stride.addr, align 4, !dbg !1266, !tbaa !188
  %sub = sub nsw i32 0, %3, !dbg !1267
  %idxprom1 = sext i32 %sub to i64, !dbg !1265
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 %idxprom1, !dbg !1265
  %call3 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx2), !dbg !1268
  store <2 x i64> %call3, ptr %p0, align 16, !dbg !1264, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !1269
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !1252, metadata !DIExpression()), !dbg !1270
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1271, !tbaa !70
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !1271
  %call5 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx4), !dbg !1272
  store <2 x i64> %call5, ptr %q0, align 16, !dbg !1270, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !1273
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !1253, metadata !DIExpression()), !dbg !1274
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1275, !tbaa !70
  %6 = load i32, ptr %stride.addr, align 4, !dbg !1276, !tbaa !188
  %idxprom6 = sext i32 %6 to i64, !dbg !1275
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 %idxprom6, !dbg !1275
  %call8 = call <2 x i64> @_mm_loadu_si128(ptr noundef %arrayidx7), !dbg !1277
  store <2 x i64> %call8, ptr %q1, align 16, !dbg !1274, !tbaa !194
  %7 = load i32, ptr %thresh.addr, align 4, !dbg !1278, !tbaa !188
  call void @DoFilter2_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %7), !dbg !1279
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1280, !tbaa !70
  %9 = load i32, ptr %stride.addr, align 4, !dbg !1281, !tbaa !188
  %sub9 = sub nsw i32 0, %9, !dbg !1282
  %idxprom10 = sext i32 %sub9 to i64, !dbg !1280
  %arrayidx11 = getelementptr inbounds i8, ptr %8, i64 %idxprom10, !dbg !1280
  %10 = load <2 x i64>, ptr %p0, align 16, !dbg !1283, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx11, <2 x i64> noundef %10), !dbg !1284
  %11 = load ptr, ptr %p.addr, align 8, !dbg !1285, !tbaa !70
  %arrayidx12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !1285
  %12 = load <2 x i64>, ptr %q0, align 16, !dbg !1286, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %arrayidx12, <2 x i64> noundef %12), !dbg !1287
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !1288
  ret void, !dbg !1288
}

; Function Attrs: nounwind uwtable
define internal void @SimpleHFilter16_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh) #0 !dbg !1289 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %p1 = alloca <2 x i64>, align 16
  %p0 = alloca <2 x i64>, align 16
  %q0 = alloca <2 x i64>, align 16
  %q1 = alloca <2 x i64>, align 16
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1291, metadata !DIExpression()), !dbg !1298
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !1292, metadata !DIExpression()), !dbg !1299
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !1293, metadata !DIExpression()), !dbg !1300
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1) #9, !dbg !1301
  tail call void @llvm.dbg.declare(metadata ptr %p1, metadata !1294, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0) #9, !dbg !1301
  tail call void @llvm.dbg.declare(metadata ptr %p0, metadata !1295, metadata !DIExpression()), !dbg !1303
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0) #9, !dbg !1301
  tail call void @llvm.dbg.declare(metadata ptr %q0, metadata !1296, metadata !DIExpression()), !dbg !1304
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1) #9, !dbg !1301
  tail call void @llvm.dbg.declare(metadata ptr %q1, metadata !1297, metadata !DIExpression()), !dbg !1305
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1306, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -2, !dbg !1306
  store ptr %add.ptr, ptr %p.addr, align 8, !dbg !1306, !tbaa !70
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1307, !tbaa !70
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1308, !tbaa !70
  %3 = load i32, ptr %stride.addr, align 4, !dbg !1309, !tbaa !188
  %mul = mul nsw i32 8, %3, !dbg !1310
  %idx.ext = sext i32 %mul to i64, !dbg !1311
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !1311
  %4 = load i32, ptr %stride.addr, align 4, !dbg !1312, !tbaa !188
  call void @Load16x4_SSE2(ptr noundef %1, ptr noundef %add.ptr1, i32 noundef %4, ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1), !dbg !1313
  %5 = load i32, ptr %thresh.addr, align 4, !dbg !1314, !tbaa !188
  call void @DoFilter2_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %5), !dbg !1315
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1316, !tbaa !70
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1317, !tbaa !70
  %8 = load i32, ptr %stride.addr, align 4, !dbg !1318, !tbaa !188
  %mul2 = mul nsw i32 8, %8, !dbg !1319
  %idx.ext3 = sext i32 %mul2 to i64, !dbg !1320
  %add.ptr4 = getelementptr inbounds i8, ptr %7, i64 %idx.ext3, !dbg !1320
  %9 = load i32, ptr %stride.addr, align 4, !dbg !1321, !tbaa !188
  call void @Store16x4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %6, ptr noundef %add.ptr4, i32 noundef %9), !dbg !1322
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1) #9, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0) #9, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0) #9, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1) #9, !dbg !1323
  ret void, !dbg !1323
}

; Function Attrs: nounwind uwtable
define internal void @SimpleVFilter16i_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh) #0 !dbg !1324 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1326, metadata !DIExpression()), !dbg !1330
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !1327, metadata !DIExpression()), !dbg !1331
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !1328, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9, !dbg !1333
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !1329, metadata !DIExpression()), !dbg !1334
  store i32 3, ptr %k, align 4, !dbg !1335, !tbaa !188
  br label %for.cond, !dbg !1337

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !dbg !1338, !tbaa !188
  %cmp = icmp sgt i32 %0, 0, !dbg !1340
  br i1 %cmp, label %for.body, label %for.end, !dbg !1341

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %stride.addr, align 4, !dbg !1342, !tbaa !188
  %mul = mul nsw i32 4, %1, !dbg !1344
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1345, !tbaa !70
  %idx.ext = sext i32 %mul to i64, !dbg !1345
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !1345
  store ptr %add.ptr, ptr %p.addr, align 8, !dbg !1345, !tbaa !70
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1346, !tbaa !70
  %4 = load i32, ptr %stride.addr, align 4, !dbg !1347, !tbaa !188
  %5 = load i32, ptr %thresh.addr, align 4, !dbg !1348, !tbaa !188
  call void @SimpleVFilter16_SSE2(ptr noundef %3, i32 noundef %4, i32 noundef %5), !dbg !1349
  br label %for.inc, !dbg !1350

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %k, align 4, !dbg !1351, !tbaa !188
  %dec = add nsw i32 %6, -1, !dbg !1351
  store i32 %dec, ptr %k, align 4, !dbg !1351, !tbaa !188
  br label %for.cond, !dbg !1352, !llvm.loop !1353

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9, !dbg !1355
  ret void, !dbg !1355
}

; Function Attrs: nounwind uwtable
define internal void @SimpleHFilter16i_SSE2(ptr noundef %p, i32 noundef %stride, i32 noundef %thresh) #0 !dbg !1356 {
entry:
  %p.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %thresh.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1358, metadata !DIExpression()), !dbg !1362
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !1359, metadata !DIExpression()), !dbg !1363
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !1360, metadata !DIExpression()), !dbg !1364
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9, !dbg !1365
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !1361, metadata !DIExpression()), !dbg !1366
  store i32 3, ptr %k, align 4, !dbg !1367, !tbaa !188
  br label %for.cond, !dbg !1369

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !dbg !1370, !tbaa !188
  %cmp = icmp sgt i32 %0, 0, !dbg !1372
  br i1 %cmp, label %for.body, label %for.end, !dbg !1373

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1374, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 4, !dbg !1374
  store ptr %add.ptr, ptr %p.addr, align 8, !dbg !1374, !tbaa !70
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1376, !tbaa !70
  %3 = load i32, ptr %stride.addr, align 4, !dbg !1377, !tbaa !188
  %4 = load i32, ptr %thresh.addr, align 4, !dbg !1378, !tbaa !188
  call void @SimpleHFilter16_SSE2(ptr noundef %2, i32 noundef %3, i32 noundef %4), !dbg !1379
  br label %for.inc, !dbg !1380

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %k, align 4, !dbg !1381, !tbaa !188
  %dec = add nsw i32 %5, -1, !dbg !1381
  store i32 %dec, ptr %k, align 4, !dbg !1381, !tbaa !188
  br label %for.cond, !dbg !1382, !llvm.loop !1383

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9, !dbg !1385
  ret void, !dbg !1385
}

; Function Attrs: nounwind uwtable
define internal void @TM4_SSE2(ptr noundef %dst) #0 !dbg !1386 {
entry:
  %dst.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1390, metadata !DIExpression()), !dbg !1391
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1392, !tbaa !70
  call void @TrueMotion_SSE2(ptr noundef %0, i32 noundef 4), !dbg !1393
  ret void, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal void @VE4_SSE2(ptr noundef %dst) #1 !dbg !1395 {
entry:
  %dst.addr = alloca ptr, align 8
  %one = alloca <2 x i64>, align 16
  %ABCDEFGH = alloca <2 x i64>, align 16
  %BCDEFGH0 = alloca <2 x i64>, align 16
  %CDEFGH00 = alloca <2 x i64>, align 16
  %a = alloca <2 x i64>, align 16
  %lsb = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %avg = alloca <2 x i64>, align 16
  %vals = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1397, metadata !DIExpression()), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 16, ptr %one) #9, !dbg !1413
  tail call void @llvm.dbg.declare(metadata ptr %one, metadata !1398, metadata !DIExpression()), !dbg !1414
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 1), !dbg !1415
  store <2 x i64> %call, ptr %one, align 16, !dbg !1414, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %ABCDEFGH) #9, !dbg !1416
  tail call void @llvm.dbg.declare(metadata ptr %ABCDEFGH, metadata !1399, metadata !DIExpression()), !dbg !1417
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1418, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1419
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !1420
  %call2 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr1), !dbg !1421
  store <2 x i64> %call2, ptr %ABCDEFGH, align 16, !dbg !1417, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %BCDEFGH0) #9, !dbg !1422
  tail call void @llvm.dbg.declare(metadata ptr %BCDEFGH0, metadata !1400, metadata !DIExpression()), !dbg !1423
  %1 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1424, !tbaa !194
  %cast = bitcast <2 x i64> %1 to <16 x i8>, !dbg !1424
  %psrldq = shufflevector <16 x i8> %cast, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1424
  %cast3 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !1424
  store <2 x i64> %cast3, ptr %BCDEFGH0, align 16, !dbg !1423, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %CDEFGH00) #9, !dbg !1425
  tail call void @llvm.dbg.declare(metadata ptr %CDEFGH00, metadata !1401, metadata !DIExpression()), !dbg !1426
  %2 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1427, !tbaa !194
  %cast4 = bitcast <2 x i64> %2 to <16 x i8>, !dbg !1427
  %psrldq5 = shufflevector <16 x i8> %cast4, <16 x i8> zeroinitializer, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>, !dbg !1427
  %cast6 = bitcast <16 x i8> %psrldq5 to <2 x i64>, !dbg !1427
  store <2 x i64> %cast6, ptr %CDEFGH00, align 16, !dbg !1426, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #9, !dbg !1428
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !1402, metadata !DIExpression()), !dbg !1429
  %3 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1430, !tbaa !194
  %4 = load <2 x i64>, ptr %CDEFGH00, align 16, !dbg !1431, !tbaa !194
  %call7 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %3, <2 x i64> noundef %4), !dbg !1432
  store <2 x i64> %call7, ptr %a, align 16, !dbg !1429, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lsb) #9, !dbg !1433
  tail call void @llvm.dbg.declare(metadata ptr %lsb, metadata !1403, metadata !DIExpression()), !dbg !1434
  %5 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1435, !tbaa !194
  %6 = load <2 x i64>, ptr %CDEFGH00, align 16, !dbg !1436, !tbaa !194
  %call8 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %5, <2 x i64> noundef %6), !dbg !1437
  %7 = load <2 x i64>, ptr %one, align 16, !dbg !1438, !tbaa !194
  %call9 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call8, <2 x i64> noundef %7), !dbg !1439
  store <2 x i64> %call9, ptr %lsb, align 16, !dbg !1434, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #9, !dbg !1440
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !1404, metadata !DIExpression()), !dbg !1441
  %8 = load <2 x i64>, ptr %a, align 16, !dbg !1442, !tbaa !194
  %9 = load <2 x i64>, ptr %lsb, align 16, !dbg !1443, !tbaa !194
  %call10 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %8, <2 x i64> noundef %9), !dbg !1444
  store <2 x i64> %call10, ptr %b, align 16, !dbg !1441, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg) #9, !dbg !1445
  tail call void @llvm.dbg.declare(metadata ptr %avg, metadata !1405, metadata !DIExpression()), !dbg !1446
  %10 = load <2 x i64>, ptr %b, align 16, !dbg !1447, !tbaa !194
  %11 = load <2 x i64>, ptr %BCDEFGH0, align 16, !dbg !1448, !tbaa !194
  %call11 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !1449
  store <2 x i64> %call11, ptr %avg, align 16, !dbg !1446, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %vals) #9, !dbg !1450
  tail call void @llvm.dbg.declare(metadata ptr %vals, metadata !1406, metadata !DIExpression()), !dbg !1451
  %12 = load <2 x i64>, ptr %avg, align 16, !dbg !1452, !tbaa !194
  %call12 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %12), !dbg !1453
  store i32 %call12, ptr %vals, align 4, !dbg !1451, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1454
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1411, metadata !DIExpression()), !dbg !1455
  store i32 0, ptr %i, align 4, !dbg !1456, !tbaa !188
  br label %for.cond, !dbg !1458

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, ptr %i, align 4, !dbg !1459, !tbaa !188
  %cmp = icmp slt i32 %13, 4, !dbg !1461
  br i1 %cmp, label %for.body, label %for.end, !dbg !1462

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !1463, !tbaa !70
  %15 = load i32, ptr %i, align 4, !dbg !1465, !tbaa !188
  %mul = mul nsw i32 %15, 32, !dbg !1466
  %idx.ext = sext i32 %mul to i64, !dbg !1467
  %add.ptr13 = getelementptr inbounds i8, ptr %14, i64 %idx.ext, !dbg !1467
  %16 = load i32, ptr %vals, align 4, !dbg !1468, !tbaa !188
  call void @WebPUint32ToMem(ptr noundef %add.ptr13, i32 noundef %16), !dbg !1469
  br label %for.inc, !dbg !1470

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !dbg !1471, !tbaa !188
  %inc = add nsw i32 %17, 1, !dbg !1471
  store i32 %inc, ptr %i, align 4, !dbg !1471, !tbaa !188
  br label %for.cond, !dbg !1472, !llvm.loop !1473

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 4, ptr %vals) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %lsb) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %CDEFGH00) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %BCDEFGH0) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %ABCDEFGH) #9, !dbg !1475
  call void @llvm.lifetime.end.p0(i64 16, ptr %one) #9, !dbg !1475
  ret void, !dbg !1475
}

; Function Attrs: nounwind uwtable
define internal void @RD4_SSE2(ptr noundef %dst) #1 !dbg !1476 {
entry:
  %dst.addr = alloca ptr, align 8
  %one = alloca <2 x i64>, align 16
  %XABCD = alloca <2 x i64>, align 16
  %____XABCD = alloca <2 x i64>, align 16
  %I = alloca i32, align 4
  %J = alloca i32, align 4
  %K = alloca i32, align 4
  %L = alloca i32, align 4
  %LKJI_____ = alloca <2 x i64>, align 16
  %LKJIXABCD = alloca <2 x i64>, align 16
  %KJIXABCD_ = alloca <2 x i64>, align 16
  %JIXABCD__ = alloca <2 x i64>, align 16
  %avg1 = alloca <2 x i64>, align 16
  %lsb = alloca <2 x i64>, align 16
  %avg2 = alloca <2 x i64>, align 16
  %abcdefg = alloca <2 x i64>, align 16
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1478, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 16, ptr %one) #9, !dbg !1495
  tail call void @llvm.dbg.declare(metadata ptr %one, metadata !1479, metadata !DIExpression()), !dbg !1496
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 1), !dbg !1497
  store <2 x i64> %call, ptr %one, align 16, !dbg !1496, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %XABCD) #9, !dbg !1498
  tail call void @llvm.dbg.declare(metadata ptr %XABCD, metadata !1480, metadata !DIExpression()), !dbg !1499
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1500, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1501
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !1502
  %call2 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr1), !dbg !1503
  store <2 x i64> %call2, ptr %XABCD, align 16, !dbg !1499, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %____XABCD) #9, !dbg !1504
  tail call void @llvm.dbg.declare(metadata ptr %____XABCD, metadata !1481, metadata !DIExpression()), !dbg !1505
  %1 = load <2 x i64>, ptr %XABCD, align 16, !dbg !1506, !tbaa !194
  %cast = bitcast <2 x i64> %1 to <16 x i8>, !dbg !1506
  %pslldq = shufflevector <16 x i8> zeroinitializer, <16 x i8> %cast, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !1506
  %cast3 = bitcast <16 x i8> %pslldq to <2 x i64>, !dbg !1506
  store <2 x i64> %cast3, ptr %____XABCD, align 16, !dbg !1505, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %I) #9, !dbg !1507
  tail call void @llvm.dbg.declare(metadata ptr %I, metadata !1482, metadata !DIExpression()), !dbg !1508
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1509, !tbaa !70
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 -1, !dbg !1509
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1509, !tbaa !194
  %conv = zext i8 %3 to i32, !dbg !1509
  store i32 %conv, ptr %I, align 4, !dbg !1508, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %J) #9, !dbg !1510
  tail call void @llvm.dbg.declare(metadata ptr %J, metadata !1483, metadata !DIExpression()), !dbg !1511
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1512, !tbaa !70
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 31, !dbg !1512
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !1512, !tbaa !194
  %conv5 = zext i8 %5 to i32, !dbg !1512
  store i32 %conv5, ptr %J, align 4, !dbg !1511, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %K) #9, !dbg !1513
  tail call void @llvm.dbg.declare(metadata ptr %K, metadata !1484, metadata !DIExpression()), !dbg !1514
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1515, !tbaa !70
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 63, !dbg !1515
  %7 = load i8, ptr %arrayidx6, align 1, !dbg !1515, !tbaa !194
  %conv7 = zext i8 %7 to i32, !dbg !1515
  store i32 %conv7, ptr %K, align 4, !dbg !1514, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %L) #9, !dbg !1516
  tail call void @llvm.dbg.declare(metadata ptr %L, metadata !1485, metadata !DIExpression()), !dbg !1517
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1518, !tbaa !70
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 95, !dbg !1518
  %9 = load i8, ptr %arrayidx8, align 1, !dbg !1518, !tbaa !194
  %conv9 = zext i8 %9 to i32, !dbg !1518
  store i32 %conv9, ptr %L, align 4, !dbg !1517, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 16, ptr %LKJI_____) #9, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %LKJI_____, metadata !1486, metadata !DIExpression()), !dbg !1520
  %10 = load i32, ptr %L, align 4, !dbg !1521, !tbaa !188
  %11 = load i32, ptr %K, align 4, !dbg !1522, !tbaa !188
  %shl = shl i32 %11, 8, !dbg !1523
  %or = or i32 %10, %shl, !dbg !1524
  %12 = load i32, ptr %J, align 4, !dbg !1525, !tbaa !188
  %shl10 = shl i32 %12, 16, !dbg !1526
  %or11 = or i32 %or, %shl10, !dbg !1527
  %13 = load i32, ptr %I, align 4, !dbg !1528, !tbaa !188
  %shl12 = shl i32 %13, 24, !dbg !1529
  %or13 = or i32 %or11, %shl12, !dbg !1530
  %call14 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %or13), !dbg !1531
  store <2 x i64> %call14, ptr %LKJI_____, align 16, !dbg !1520, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %LKJIXABCD) #9, !dbg !1532
  tail call void @llvm.dbg.declare(metadata ptr %LKJIXABCD, metadata !1487, metadata !DIExpression()), !dbg !1533
  %14 = load <2 x i64>, ptr %LKJI_____, align 16, !dbg !1534, !tbaa !194
  %15 = load <2 x i64>, ptr %____XABCD, align 16, !dbg !1535, !tbaa !194
  %call15 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !1536
  store <2 x i64> %call15, ptr %LKJIXABCD, align 16, !dbg !1533, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %KJIXABCD_) #9, !dbg !1537
  tail call void @llvm.dbg.declare(metadata ptr %KJIXABCD_, metadata !1488, metadata !DIExpression()), !dbg !1538
  %16 = load <2 x i64>, ptr %LKJIXABCD, align 16, !dbg !1539, !tbaa !194
  %cast16 = bitcast <2 x i64> %16 to <16 x i8>, !dbg !1539
  %psrldq = shufflevector <16 x i8> %cast16, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1539
  %cast17 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !1539
  store <2 x i64> %cast17, ptr %KJIXABCD_, align 16, !dbg !1538, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %JIXABCD__) #9, !dbg !1540
  tail call void @llvm.dbg.declare(metadata ptr %JIXABCD__, metadata !1489, metadata !DIExpression()), !dbg !1541
  %17 = load <2 x i64>, ptr %LKJIXABCD, align 16, !dbg !1542, !tbaa !194
  %cast18 = bitcast <2 x i64> %17 to <16 x i8>, !dbg !1542
  %psrldq19 = shufflevector <16 x i8> %cast18, <16 x i8> zeroinitializer, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>, !dbg !1542
  %cast20 = bitcast <16 x i8> %psrldq19 to <2 x i64>, !dbg !1542
  store <2 x i64> %cast20, ptr %JIXABCD__, align 16, !dbg !1541, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg1) #9, !dbg !1543
  tail call void @llvm.dbg.declare(metadata ptr %avg1, metadata !1490, metadata !DIExpression()), !dbg !1544
  %18 = load <2 x i64>, ptr %JIXABCD__, align 16, !dbg !1545, !tbaa !194
  %19 = load <2 x i64>, ptr %LKJIXABCD, align 16, !dbg !1546, !tbaa !194
  %call21 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %18, <2 x i64> noundef %19), !dbg !1547
  store <2 x i64> %call21, ptr %avg1, align 16, !dbg !1544, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lsb) #9, !dbg !1548
  tail call void @llvm.dbg.declare(metadata ptr %lsb, metadata !1491, metadata !DIExpression()), !dbg !1549
  %20 = load <2 x i64>, ptr %JIXABCD__, align 16, !dbg !1550, !tbaa !194
  %21 = load <2 x i64>, ptr %LKJIXABCD, align 16, !dbg !1551, !tbaa !194
  %call22 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %20, <2 x i64> noundef %21), !dbg !1552
  %22 = load <2 x i64>, ptr %one, align 16, !dbg !1553, !tbaa !194
  %call23 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call22, <2 x i64> noundef %22), !dbg !1554
  store <2 x i64> %call23, ptr %lsb, align 16, !dbg !1549, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg2) #9, !dbg !1555
  tail call void @llvm.dbg.declare(metadata ptr %avg2, metadata !1492, metadata !DIExpression()), !dbg !1556
  %23 = load <2 x i64>, ptr %avg1, align 16, !dbg !1557, !tbaa !194
  %24 = load <2 x i64>, ptr %lsb, align 16, !dbg !1558, !tbaa !194
  %call24 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %23, <2 x i64> noundef %24), !dbg !1559
  store <2 x i64> %call24, ptr %avg2, align 16, !dbg !1556, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %abcdefg) #9, !dbg !1560
  tail call void @llvm.dbg.declare(metadata ptr %abcdefg, metadata !1493, metadata !DIExpression()), !dbg !1561
  %25 = load <2 x i64>, ptr %avg2, align 16, !dbg !1562, !tbaa !194
  %26 = load <2 x i64>, ptr %KJIXABCD_, align 16, !dbg !1563, !tbaa !194
  %call25 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %25, <2 x i64> noundef %26), !dbg !1564
  store <2 x i64> %call25, ptr %abcdefg, align 16, !dbg !1561, !tbaa !194
  %27 = load ptr, ptr %dst.addr, align 8, !dbg !1565, !tbaa !70
  %add.ptr26 = getelementptr inbounds i8, ptr %27, i64 96, !dbg !1566
  %28 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1567, !tbaa !194
  %call27 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %28), !dbg !1568
  call void @WebPUint32ToMem(ptr noundef %add.ptr26, i32 noundef %call27), !dbg !1569
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !1570, !tbaa !70
  %add.ptr28 = getelementptr inbounds i8, ptr %29, i64 64, !dbg !1571
  %30 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1572, !tbaa !194
  %cast29 = bitcast <2 x i64> %30 to <16 x i8>, !dbg !1572
  %psrldq30 = shufflevector <16 x i8> %cast29, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1572
  %cast31 = bitcast <16 x i8> %psrldq30 to <2 x i64>, !dbg !1572
  %call32 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast31), !dbg !1573
  call void @WebPUint32ToMem(ptr noundef %add.ptr28, i32 noundef %call32), !dbg !1574
  %31 = load ptr, ptr %dst.addr, align 8, !dbg !1575, !tbaa !70
  %add.ptr33 = getelementptr inbounds i8, ptr %31, i64 32, !dbg !1576
  %32 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1577, !tbaa !194
  %cast34 = bitcast <2 x i64> %32 to <16 x i8>, !dbg !1577
  %psrldq35 = shufflevector <16 x i8> %cast34, <16 x i8> zeroinitializer, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>, !dbg !1577
  %cast36 = bitcast <16 x i8> %psrldq35 to <2 x i64>, !dbg !1577
  %call37 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast36), !dbg !1578
  call void @WebPUint32ToMem(ptr noundef %add.ptr33, i32 noundef %call37), !dbg !1579
  %33 = load ptr, ptr %dst.addr, align 8, !dbg !1580, !tbaa !70
  %add.ptr38 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !1581
  %34 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1582, !tbaa !194
  %cast39 = bitcast <2 x i64> %34 to <16 x i8>, !dbg !1582
  %psrldq40 = shufflevector <16 x i8> %cast39, <16 x i8> zeroinitializer, <16 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18>, !dbg !1582
  %cast41 = bitcast <16 x i8> %psrldq40 to <2 x i64>, !dbg !1582
  %call42 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast41), !dbg !1583
  call void @WebPUint32ToMem(ptr noundef %add.ptr38, i32 noundef %call42), !dbg !1584
  call void @llvm.lifetime.end.p0(i64 16, ptr %abcdefg) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg2) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %lsb) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg1) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %JIXABCD__) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %KJIXABCD_) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %LKJIXABCD) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %LKJI_____) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 4, ptr %L) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 4, ptr %K) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 4, ptr %J) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 4, ptr %I) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %____XABCD) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %XABCD) #9, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 16, ptr %one) #9, !dbg !1585
  ret void, !dbg !1585
}

; Function Attrs: nounwind uwtable
define internal void @VR4_SSE2(ptr noundef %dst) #1 !dbg !1586 {
entry:
  %dst.addr = alloca ptr, align 8
  %one = alloca <2 x i64>, align 16
  %I = alloca i32, align 4
  %J = alloca i32, align 4
  %K = alloca i32, align 4
  %X = alloca i32, align 4
  %XABCD = alloca <2 x i64>, align 16
  %ABCD0 = alloca <2 x i64>, align 16
  %abcd = alloca <2 x i64>, align 16
  %_XABCD = alloca <2 x i64>, align 16
  %IXABCD = alloca <2 x i64>, align 16
  %avg1 = alloca <2 x i64>, align 16
  %lsb = alloca <2 x i64>, align 16
  %avg2 = alloca <2 x i64>, align 16
  %efgh = alloca <2 x i64>, align 16
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1588, metadata !DIExpression()), !dbg !1604
  call void @llvm.lifetime.start.p0(i64 16, ptr %one) #9, !dbg !1605
  tail call void @llvm.dbg.declare(metadata ptr %one, metadata !1589, metadata !DIExpression()), !dbg !1606
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 1), !dbg !1607
  store <2 x i64> %call, ptr %one, align 16, !dbg !1606, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %I) #9, !dbg !1608
  tail call void @llvm.dbg.declare(metadata ptr %I, metadata !1590, metadata !DIExpression()), !dbg !1609
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1610, !tbaa !70
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !1610
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1610, !tbaa !194
  %conv = zext i8 %1 to i32, !dbg !1610
  store i32 %conv, ptr %I, align 4, !dbg !1609, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %J) #9, !dbg !1611
  tail call void @llvm.dbg.declare(metadata ptr %J, metadata !1592, metadata !DIExpression()), !dbg !1612
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1613, !tbaa !70
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 31, !dbg !1613
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !1613, !tbaa !194
  %conv2 = zext i8 %3 to i32, !dbg !1613
  store i32 %conv2, ptr %J, align 4, !dbg !1612, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %K) #9, !dbg !1614
  tail call void @llvm.dbg.declare(metadata ptr %K, metadata !1593, metadata !DIExpression()), !dbg !1615
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1616, !tbaa !70
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 63, !dbg !1616
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !1616, !tbaa !194
  %conv4 = zext i8 %5 to i32, !dbg !1616
  store i32 %conv4, ptr %K, align 4, !dbg !1615, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %X) #9, !dbg !1617
  tail call void @llvm.dbg.declare(metadata ptr %X, metadata !1594, metadata !DIExpression()), !dbg !1618
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1619, !tbaa !70
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 -33, !dbg !1619
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !1619, !tbaa !194
  %conv6 = zext i8 %7 to i32, !dbg !1619
  store i32 %conv6, ptr %X, align 4, !dbg !1618, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 16, ptr %XABCD) #9, !dbg !1620
  tail call void @llvm.dbg.declare(metadata ptr %XABCD, metadata !1595, metadata !DIExpression()), !dbg !1621
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1622, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 -32, !dbg !1623
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !1624
  %call8 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr7), !dbg !1625
  store <2 x i64> %call8, ptr %XABCD, align 16, !dbg !1621, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %ABCD0) #9, !dbg !1626
  tail call void @llvm.dbg.declare(metadata ptr %ABCD0, metadata !1596, metadata !DIExpression()), !dbg !1627
  %9 = load <2 x i64>, ptr %XABCD, align 16, !dbg !1628, !tbaa !194
  %cast = bitcast <2 x i64> %9 to <16 x i8>, !dbg !1628
  %psrldq = shufflevector <16 x i8> %cast, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1628
  %cast9 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !1628
  store <2 x i64> %cast9, ptr %ABCD0, align 16, !dbg !1627, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %abcd) #9, !dbg !1629
  tail call void @llvm.dbg.declare(metadata ptr %abcd, metadata !1597, metadata !DIExpression()), !dbg !1630
  %10 = load <2 x i64>, ptr %XABCD, align 16, !dbg !1631, !tbaa !194
  %11 = load <2 x i64>, ptr %ABCD0, align 16, !dbg !1632, !tbaa !194
  %call10 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !1633
  store <2 x i64> %call10, ptr %abcd, align 16, !dbg !1630, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %_XABCD) #9, !dbg !1634
  tail call void @llvm.dbg.declare(metadata ptr %_XABCD, metadata !1598, metadata !DIExpression()), !dbg !1635
  %12 = load <2 x i64>, ptr %XABCD, align 16, !dbg !1636, !tbaa !194
  %cast11 = bitcast <2 x i64> %12 to <16 x i8>, !dbg !1636
  %pslldq = shufflevector <16 x i8> zeroinitializer, <16 x i8> %cast11, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>, !dbg !1636
  %cast12 = bitcast <16 x i8> %pslldq to <2 x i64>, !dbg !1636
  store <2 x i64> %cast12, ptr %_XABCD, align 16, !dbg !1635, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %IXABCD) #9, !dbg !1637
  tail call void @llvm.dbg.declare(metadata ptr %IXABCD, metadata !1599, metadata !DIExpression()), !dbg !1638
  %13 = load <2 x i64>, ptr %_XABCD, align 16, !dbg !1639, !tbaa !194
  %14 = bitcast <2 x i64> %13 to <8 x i16>, !dbg !1639
  %15 = load i32, ptr %I, align 4, !dbg !1639, !tbaa !188
  %16 = load i32, ptr %X, align 4, !dbg !1639, !tbaa !188
  %shl = shl i32 %16, 8, !dbg !1639
  %or = or i32 %15, %shl, !dbg !1639
  %conv13 = trunc i32 %or to i16, !dbg !1639
  %conv14 = sext i16 %conv13 to i32, !dbg !1639
  %conv15 = trunc i32 %conv14 to i16, !dbg !1639
  %17 = insertelement <8 x i16> %14, i16 %conv15, i64 0, !dbg !1639
  %18 = bitcast <8 x i16> %17 to <2 x i64>, !dbg !1639
  store <2 x i64> %18, ptr %IXABCD, align 16, !dbg !1638, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg1) #9, !dbg !1640
  tail call void @llvm.dbg.declare(metadata ptr %avg1, metadata !1600, metadata !DIExpression()), !dbg !1641
  %19 = load <2 x i64>, ptr %IXABCD, align 16, !dbg !1642, !tbaa !194
  %20 = load <2 x i64>, ptr %ABCD0, align 16, !dbg !1643, !tbaa !194
  %call16 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %19, <2 x i64> noundef %20), !dbg !1644
  store <2 x i64> %call16, ptr %avg1, align 16, !dbg !1641, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lsb) #9, !dbg !1645
  tail call void @llvm.dbg.declare(metadata ptr %lsb, metadata !1601, metadata !DIExpression()), !dbg !1646
  %21 = load <2 x i64>, ptr %IXABCD, align 16, !dbg !1647, !tbaa !194
  %22 = load <2 x i64>, ptr %ABCD0, align 16, !dbg !1648, !tbaa !194
  %call17 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %21, <2 x i64> noundef %22), !dbg !1649
  %23 = load <2 x i64>, ptr %one, align 16, !dbg !1650, !tbaa !194
  %call18 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call17, <2 x i64> noundef %23), !dbg !1651
  store <2 x i64> %call18, ptr %lsb, align 16, !dbg !1646, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg2) #9, !dbg !1652
  tail call void @llvm.dbg.declare(metadata ptr %avg2, metadata !1602, metadata !DIExpression()), !dbg !1653
  %24 = load <2 x i64>, ptr %avg1, align 16, !dbg !1654, !tbaa !194
  %25 = load <2 x i64>, ptr %lsb, align 16, !dbg !1655, !tbaa !194
  %call19 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !1656
  store <2 x i64> %call19, ptr %avg2, align 16, !dbg !1653, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %efgh) #9, !dbg !1657
  tail call void @llvm.dbg.declare(metadata ptr %efgh, metadata !1603, metadata !DIExpression()), !dbg !1658
  %26 = load <2 x i64>, ptr %avg2, align 16, !dbg !1659, !tbaa !194
  %27 = load <2 x i64>, ptr %XABCD, align 16, !dbg !1660, !tbaa !194
  %call20 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %26, <2 x i64> noundef %27), !dbg !1661
  store <2 x i64> %call20, ptr %efgh, align 16, !dbg !1658, !tbaa !194
  %28 = load ptr, ptr %dst.addr, align 8, !dbg !1662, !tbaa !70
  %add.ptr21 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !1663
  %29 = load <2 x i64>, ptr %abcd, align 16, !dbg !1664, !tbaa !194
  %call22 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %29), !dbg !1665
  call void @WebPUint32ToMem(ptr noundef %add.ptr21, i32 noundef %call22), !dbg !1666
  %30 = load ptr, ptr %dst.addr, align 8, !dbg !1667, !tbaa !70
  %add.ptr23 = getelementptr inbounds i8, ptr %30, i64 32, !dbg !1668
  %31 = load <2 x i64>, ptr %efgh, align 16, !dbg !1669, !tbaa !194
  %call24 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %31), !dbg !1670
  call void @WebPUint32ToMem(ptr noundef %add.ptr23, i32 noundef %call24), !dbg !1671
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !1672, !tbaa !70
  %add.ptr25 = getelementptr inbounds i8, ptr %32, i64 64, !dbg !1673
  %33 = load <2 x i64>, ptr %abcd, align 16, !dbg !1674, !tbaa !194
  %cast26 = bitcast <2 x i64> %33 to <16 x i8>, !dbg !1674
  %pslldq27 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %cast26, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>, !dbg !1674
  %cast28 = bitcast <16 x i8> %pslldq27 to <2 x i64>, !dbg !1674
  %call29 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast28), !dbg !1675
  call void @WebPUint32ToMem(ptr noundef %add.ptr25, i32 noundef %call29), !dbg !1676
  %34 = load ptr, ptr %dst.addr, align 8, !dbg !1677, !tbaa !70
  %add.ptr30 = getelementptr inbounds i8, ptr %34, i64 96, !dbg !1678
  %35 = load <2 x i64>, ptr %efgh, align 16, !dbg !1679, !tbaa !194
  %cast31 = bitcast <2 x i64> %35 to <16 x i8>, !dbg !1679
  %pslldq32 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %cast31, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>, !dbg !1679
  %cast33 = bitcast <16 x i8> %pslldq32 to <2 x i64>, !dbg !1679
  %call34 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast33), !dbg !1680
  call void @WebPUint32ToMem(ptr noundef %add.ptr30, i32 noundef %call34), !dbg !1681
  %36 = load i32, ptr %J, align 4, !dbg !1682, !tbaa !188
  %37 = load i32, ptr %I, align 4, !dbg !1682, !tbaa !188
  %mul = mul nsw i32 2, %37, !dbg !1682
  %add = add nsw i32 %36, %mul, !dbg !1682
  %38 = load i32, ptr %X, align 4, !dbg !1682, !tbaa !188
  %add35 = add nsw i32 %add, %38, !dbg !1682
  %add36 = add nsw i32 %add35, 2, !dbg !1682
  %shr = ashr i32 %add36, 2, !dbg !1682
  %conv37 = trunc i32 %shr to i8, !dbg !1682
  %39 = load ptr, ptr %dst.addr, align 8, !dbg !1683, !tbaa !70
  %arrayidx38 = getelementptr inbounds i8, ptr %39, i64 64, !dbg !1683
  store i8 %conv37, ptr %arrayidx38, align 1, !dbg !1684, !tbaa !194
  %40 = load i32, ptr %K, align 4, !dbg !1685, !tbaa !188
  %41 = load i32, ptr %J, align 4, !dbg !1685, !tbaa !188
  %mul39 = mul nsw i32 2, %41, !dbg !1685
  %add40 = add nsw i32 %40, %mul39, !dbg !1685
  %42 = load i32, ptr %I, align 4, !dbg !1685, !tbaa !188
  %add41 = add nsw i32 %add40, %42, !dbg !1685
  %add42 = add nsw i32 %add41, 2, !dbg !1685
  %shr43 = ashr i32 %add42, 2, !dbg !1685
  %conv44 = trunc i32 %shr43 to i8, !dbg !1685
  %43 = load ptr, ptr %dst.addr, align 8, !dbg !1686, !tbaa !70
  %arrayidx45 = getelementptr inbounds i8, ptr %43, i64 96, !dbg !1686
  store i8 %conv44, ptr %arrayidx45, align 1, !dbg !1687, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %efgh) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg2) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %lsb) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg1) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %IXABCD) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %_XABCD) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %abcd) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %ABCD0) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %XABCD) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 4, ptr %X) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 4, ptr %K) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 4, ptr %J) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 4, ptr %I) #9, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 16, ptr %one) #9, !dbg !1688
  ret void, !dbg !1688
}

; Function Attrs: nounwind uwtable
define internal void @LD4_SSE2(ptr noundef %dst) #1 !dbg !1689 {
entry:
  %dst.addr = alloca ptr, align 8
  %one = alloca <2 x i64>, align 16
  %ABCDEFGH = alloca <2 x i64>, align 16
  %BCDEFGH0 = alloca <2 x i64>, align 16
  %CDEFGH00 = alloca <2 x i64>, align 16
  %CDEFGHH0 = alloca <2 x i64>, align 16
  %avg1 = alloca <2 x i64>, align 16
  %lsb = alloca <2 x i64>, align 16
  %avg2 = alloca <2 x i64>, align 16
  %abcdefg = alloca <2 x i64>, align 16
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1691, metadata !DIExpression()), !dbg !1701
  call void @llvm.lifetime.start.p0(i64 16, ptr %one) #9, !dbg !1702
  tail call void @llvm.dbg.declare(metadata ptr %one, metadata !1692, metadata !DIExpression()), !dbg !1703
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 1), !dbg !1704
  store <2 x i64> %call, ptr %one, align 16, !dbg !1703, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %ABCDEFGH) #9, !dbg !1705
  tail call void @llvm.dbg.declare(metadata ptr %ABCDEFGH, metadata !1693, metadata !DIExpression()), !dbg !1706
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1707, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1708
  %call1 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr), !dbg !1709
  store <2 x i64> %call1, ptr %ABCDEFGH, align 16, !dbg !1706, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %BCDEFGH0) #9, !dbg !1710
  tail call void @llvm.dbg.declare(metadata ptr %BCDEFGH0, metadata !1694, metadata !DIExpression()), !dbg !1711
  %1 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1712, !tbaa !194
  %cast = bitcast <2 x i64> %1 to <16 x i8>, !dbg !1712
  %psrldq = shufflevector <16 x i8> %cast, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1712
  %cast2 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !1712
  store <2 x i64> %cast2, ptr %BCDEFGH0, align 16, !dbg !1711, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %CDEFGH00) #9, !dbg !1713
  tail call void @llvm.dbg.declare(metadata ptr %CDEFGH00, metadata !1695, metadata !DIExpression()), !dbg !1714
  %2 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1715, !tbaa !194
  %cast3 = bitcast <2 x i64> %2 to <16 x i8>, !dbg !1715
  %psrldq4 = shufflevector <16 x i8> %cast3, <16 x i8> zeroinitializer, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>, !dbg !1715
  %cast5 = bitcast <16 x i8> %psrldq4 to <2 x i64>, !dbg !1715
  store <2 x i64> %cast5, ptr %CDEFGH00, align 16, !dbg !1714, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %CDEFGHH0) #9, !dbg !1716
  tail call void @llvm.dbg.declare(metadata ptr %CDEFGHH0, metadata !1696, metadata !DIExpression()), !dbg !1717
  %3 = load <2 x i64>, ptr %CDEFGH00, align 16, !dbg !1718, !tbaa !194
  %4 = bitcast <2 x i64> %3 to <8 x i16>, !dbg !1718
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1718, !tbaa !70
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 -25, !dbg !1718
  %6 = load i8, ptr %arrayidx, align 1, !dbg !1718, !tbaa !194
  %conv = zext i8 %6 to i32, !dbg !1718
  %conv6 = trunc i32 %conv to i16, !dbg !1718
  %7 = insertelement <8 x i16> %4, i16 %conv6, i64 3, !dbg !1718
  %8 = bitcast <8 x i16> %7 to <2 x i64>, !dbg !1718
  store <2 x i64> %8, ptr %CDEFGHH0, align 16, !dbg !1717, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg1) #9, !dbg !1719
  tail call void @llvm.dbg.declare(metadata ptr %avg1, metadata !1697, metadata !DIExpression()), !dbg !1720
  %9 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1721, !tbaa !194
  %10 = load <2 x i64>, ptr %CDEFGHH0, align 16, !dbg !1722, !tbaa !194
  %call7 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %9, <2 x i64> noundef %10), !dbg !1723
  store <2 x i64> %call7, ptr %avg1, align 16, !dbg !1720, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lsb) #9, !dbg !1724
  tail call void @llvm.dbg.declare(metadata ptr %lsb, metadata !1698, metadata !DIExpression()), !dbg !1725
  %11 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1726, !tbaa !194
  %12 = load <2 x i64>, ptr %CDEFGHH0, align 16, !dbg !1727, !tbaa !194
  %call8 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %11, <2 x i64> noundef %12), !dbg !1728
  %13 = load <2 x i64>, ptr %one, align 16, !dbg !1729, !tbaa !194
  %call9 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call8, <2 x i64> noundef %13), !dbg !1730
  store <2 x i64> %call9, ptr %lsb, align 16, !dbg !1725, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg2) #9, !dbg !1731
  tail call void @llvm.dbg.declare(metadata ptr %avg2, metadata !1699, metadata !DIExpression()), !dbg !1732
  %14 = load <2 x i64>, ptr %avg1, align 16, !dbg !1733, !tbaa !194
  %15 = load <2 x i64>, ptr %lsb, align 16, !dbg !1734, !tbaa !194
  %call10 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !1735
  store <2 x i64> %call10, ptr %avg2, align 16, !dbg !1732, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %abcdefg) #9, !dbg !1736
  tail call void @llvm.dbg.declare(metadata ptr %abcdefg, metadata !1700, metadata !DIExpression()), !dbg !1737
  %16 = load <2 x i64>, ptr %avg2, align 16, !dbg !1738, !tbaa !194
  %17 = load <2 x i64>, ptr %BCDEFGH0, align 16, !dbg !1739, !tbaa !194
  %call11 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %16, <2 x i64> noundef %17), !dbg !1740
  store <2 x i64> %call11, ptr %abcdefg, align 16, !dbg !1737, !tbaa !194
  %18 = load ptr, ptr %dst.addr, align 8, !dbg !1741, !tbaa !70
  %add.ptr12 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1742
  %19 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1743, !tbaa !194
  %call13 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %19), !dbg !1744
  call void @WebPUint32ToMem(ptr noundef %add.ptr12, i32 noundef %call13), !dbg !1745
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !1746, !tbaa !70
  %add.ptr14 = getelementptr inbounds i8, ptr %20, i64 32, !dbg !1747
  %21 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1748, !tbaa !194
  %cast15 = bitcast <2 x i64> %21 to <16 x i8>, !dbg !1748
  %psrldq16 = shufflevector <16 x i8> %cast15, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1748
  %cast17 = bitcast <16 x i8> %psrldq16 to <2 x i64>, !dbg !1748
  %call18 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast17), !dbg !1749
  call void @WebPUint32ToMem(ptr noundef %add.ptr14, i32 noundef %call18), !dbg !1750
  %22 = load ptr, ptr %dst.addr, align 8, !dbg !1751, !tbaa !70
  %add.ptr19 = getelementptr inbounds i8, ptr %22, i64 64, !dbg !1752
  %23 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1753, !tbaa !194
  %cast20 = bitcast <2 x i64> %23 to <16 x i8>, !dbg !1753
  %psrldq21 = shufflevector <16 x i8> %cast20, <16 x i8> zeroinitializer, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>, !dbg !1753
  %cast22 = bitcast <16 x i8> %psrldq21 to <2 x i64>, !dbg !1753
  %call23 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast22), !dbg !1754
  call void @WebPUint32ToMem(ptr noundef %add.ptr19, i32 noundef %call23), !dbg !1755
  %24 = load ptr, ptr %dst.addr, align 8, !dbg !1756, !tbaa !70
  %add.ptr24 = getelementptr inbounds i8, ptr %24, i64 96, !dbg !1757
  %25 = load <2 x i64>, ptr %abcdefg, align 16, !dbg !1758, !tbaa !194
  %cast25 = bitcast <2 x i64> %25 to <16 x i8>, !dbg !1758
  %psrldq26 = shufflevector <16 x i8> %cast25, <16 x i8> zeroinitializer, <16 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18>, !dbg !1758
  %cast27 = bitcast <16 x i8> %psrldq26 to <2 x i64>, !dbg !1758
  %call28 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast27), !dbg !1759
  call void @WebPUint32ToMem(ptr noundef %add.ptr24, i32 noundef %call28), !dbg !1760
  call void @llvm.lifetime.end.p0(i64 16, ptr %abcdefg) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg2) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %lsb) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg1) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %CDEFGHH0) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %CDEFGH00) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %BCDEFGH0) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %ABCDEFGH) #9, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %one) #9, !dbg !1761
  ret void, !dbg !1761
}

; Function Attrs: nounwind uwtable
define internal void @VL4_SSE2(ptr noundef %dst) #1 !dbg !1762 {
entry:
  %dst.addr = alloca ptr, align 8
  %one = alloca <2 x i64>, align 16
  %ABCDEFGH = alloca <2 x i64>, align 16
  %BCDEFGH_ = alloca <2 x i64>, align 16
  %CDEFGH__ = alloca <2 x i64>, align 16
  %avg1 = alloca <2 x i64>, align 16
  %avg2 = alloca <2 x i64>, align 16
  %avg3 = alloca <2 x i64>, align 16
  %lsb1 = alloca <2 x i64>, align 16
  %ab = alloca <2 x i64>, align 16
  %bc = alloca <2 x i64>, align 16
  %abbc = alloca <2 x i64>, align 16
  %lsb2 = alloca <2 x i64>, align 16
  %avg4 = alloca <2 x i64>, align 16
  %extra_out = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1764, metadata !DIExpression()), !dbg !1779
  call void @llvm.lifetime.start.p0(i64 16, ptr %one) #9, !dbg !1780
  tail call void @llvm.dbg.declare(metadata ptr %one, metadata !1765, metadata !DIExpression()), !dbg !1781
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 1), !dbg !1782
  store <2 x i64> %call, ptr %one, align 16, !dbg !1781, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %ABCDEFGH) #9, !dbg !1783
  tail call void @llvm.dbg.declare(metadata ptr %ABCDEFGH, metadata !1766, metadata !DIExpression()), !dbg !1784
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1785, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1786
  %call1 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr), !dbg !1787
  store <2 x i64> %call1, ptr %ABCDEFGH, align 16, !dbg !1784, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %BCDEFGH_) #9, !dbg !1788
  tail call void @llvm.dbg.declare(metadata ptr %BCDEFGH_, metadata !1767, metadata !DIExpression()), !dbg !1789
  %1 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1790, !tbaa !194
  %cast = bitcast <2 x i64> %1 to <16 x i8>, !dbg !1790
  %psrldq = shufflevector <16 x i8> %cast, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1790
  %cast2 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !1790
  store <2 x i64> %cast2, ptr %BCDEFGH_, align 16, !dbg !1789, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %CDEFGH__) #9, !dbg !1791
  tail call void @llvm.dbg.declare(metadata ptr %CDEFGH__, metadata !1768, metadata !DIExpression()), !dbg !1792
  %2 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1793, !tbaa !194
  %cast3 = bitcast <2 x i64> %2 to <16 x i8>, !dbg !1793
  %psrldq4 = shufflevector <16 x i8> %cast3, <16 x i8> zeroinitializer, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>, !dbg !1793
  %cast5 = bitcast <16 x i8> %psrldq4 to <2 x i64>, !dbg !1793
  store <2 x i64> %cast5, ptr %CDEFGH__, align 16, !dbg !1792, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg1) #9, !dbg !1794
  tail call void @llvm.dbg.declare(metadata ptr %avg1, metadata !1769, metadata !DIExpression()), !dbg !1795
  %3 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1796, !tbaa !194
  %4 = load <2 x i64>, ptr %BCDEFGH_, align 16, !dbg !1797, !tbaa !194
  %call6 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %3, <2 x i64> noundef %4), !dbg !1798
  store <2 x i64> %call6, ptr %avg1, align 16, !dbg !1795, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg2) #9, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %avg2, metadata !1770, metadata !DIExpression()), !dbg !1800
  %5 = load <2 x i64>, ptr %CDEFGH__, align 16, !dbg !1801, !tbaa !194
  %6 = load <2 x i64>, ptr %BCDEFGH_, align 16, !dbg !1802, !tbaa !194
  %call7 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %5, <2 x i64> noundef %6), !dbg !1803
  store <2 x i64> %call7, ptr %avg2, align 16, !dbg !1800, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg3) #9, !dbg !1804
  tail call void @llvm.dbg.declare(metadata ptr %avg3, metadata !1771, metadata !DIExpression()), !dbg !1805
  %7 = load <2 x i64>, ptr %avg1, align 16, !dbg !1806, !tbaa !194
  %8 = load <2 x i64>, ptr %avg2, align 16, !dbg !1807, !tbaa !194
  %call8 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %7, <2 x i64> noundef %8), !dbg !1808
  store <2 x i64> %call8, ptr %avg3, align 16, !dbg !1805, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lsb1) #9, !dbg !1809
  tail call void @llvm.dbg.declare(metadata ptr %lsb1, metadata !1772, metadata !DIExpression()), !dbg !1810
  %9 = load <2 x i64>, ptr %avg1, align 16, !dbg !1811, !tbaa !194
  %10 = load <2 x i64>, ptr %avg2, align 16, !dbg !1812, !tbaa !194
  %call9 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %9, <2 x i64> noundef %10), !dbg !1813
  %11 = load <2 x i64>, ptr %one, align 16, !dbg !1814, !tbaa !194
  %call10 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call9, <2 x i64> noundef %11), !dbg !1815
  store <2 x i64> %call10, ptr %lsb1, align 16, !dbg !1810, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %ab) #9, !dbg !1816
  tail call void @llvm.dbg.declare(metadata ptr %ab, metadata !1773, metadata !DIExpression()), !dbg !1817
  %12 = load <2 x i64>, ptr %ABCDEFGH, align 16, !dbg !1818, !tbaa !194
  %13 = load <2 x i64>, ptr %BCDEFGH_, align 16, !dbg !1819, !tbaa !194
  %call11 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %12, <2 x i64> noundef %13), !dbg !1820
  store <2 x i64> %call11, ptr %ab, align 16, !dbg !1817, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %bc) #9, !dbg !1821
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !1774, metadata !DIExpression()), !dbg !1822
  %14 = load <2 x i64>, ptr %CDEFGH__, align 16, !dbg !1823, !tbaa !194
  %15 = load <2 x i64>, ptr %BCDEFGH_, align 16, !dbg !1824, !tbaa !194
  %call12 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !1825
  store <2 x i64> %call12, ptr %bc, align 16, !dbg !1822, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %abbc) #9, !dbg !1826
  tail call void @llvm.dbg.declare(metadata ptr %abbc, metadata !1775, metadata !DIExpression()), !dbg !1827
  %16 = load <2 x i64>, ptr %ab, align 16, !dbg !1828, !tbaa !194
  %17 = load <2 x i64>, ptr %bc, align 16, !dbg !1829, !tbaa !194
  %call13 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %16, <2 x i64> noundef %17), !dbg !1830
  store <2 x i64> %call13, ptr %abbc, align 16, !dbg !1827, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lsb2) #9, !dbg !1831
  tail call void @llvm.dbg.declare(metadata ptr %lsb2, metadata !1776, metadata !DIExpression()), !dbg !1832
  %18 = load <2 x i64>, ptr %abbc, align 16, !dbg !1833, !tbaa !194
  %19 = load <2 x i64>, ptr %lsb1, align 16, !dbg !1834, !tbaa !194
  %call14 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %18, <2 x i64> noundef %19), !dbg !1835
  store <2 x i64> %call14, ptr %lsb2, align 16, !dbg !1832, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %avg4) #9, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %avg4, metadata !1777, metadata !DIExpression()), !dbg !1837
  %20 = load <2 x i64>, ptr %avg3, align 16, !dbg !1838, !tbaa !194
  %21 = load <2 x i64>, ptr %lsb2, align 16, !dbg !1839, !tbaa !194
  %call15 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %20, <2 x i64> noundef %21), !dbg !1840
  store <2 x i64> %call15, ptr %avg4, align 16, !dbg !1837, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra_out) #9, !dbg !1841
  tail call void @llvm.dbg.declare(metadata ptr %extra_out, metadata !1778, metadata !DIExpression()), !dbg !1842
  %22 = load <2 x i64>, ptr %avg4, align 16, !dbg !1843, !tbaa !194
  %cast16 = bitcast <2 x i64> %22 to <16 x i8>, !dbg !1843
  %psrldq17 = shufflevector <16 x i8> %cast16, <16 x i8> zeroinitializer, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>, !dbg !1843
  %cast18 = bitcast <16 x i8> %psrldq17 to <2 x i64>, !dbg !1843
  %call19 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast18), !dbg !1844
  store i32 %call19, ptr %extra_out, align 4, !dbg !1842, !tbaa !188
  %23 = load ptr, ptr %dst.addr, align 8, !dbg !1845, !tbaa !70
  %add.ptr20 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !1846
  %24 = load <2 x i64>, ptr %avg1, align 16, !dbg !1847, !tbaa !194
  %call21 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %24), !dbg !1848
  call void @WebPUint32ToMem(ptr noundef %add.ptr20, i32 noundef %call21), !dbg !1849
  %25 = load ptr, ptr %dst.addr, align 8, !dbg !1850, !tbaa !70
  %add.ptr22 = getelementptr inbounds i8, ptr %25, i64 32, !dbg !1851
  %26 = load <2 x i64>, ptr %avg4, align 16, !dbg !1852, !tbaa !194
  %call23 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %26), !dbg !1853
  call void @WebPUint32ToMem(ptr noundef %add.ptr22, i32 noundef %call23), !dbg !1854
  %27 = load ptr, ptr %dst.addr, align 8, !dbg !1855, !tbaa !70
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 64, !dbg !1856
  %28 = load <2 x i64>, ptr %avg1, align 16, !dbg !1857, !tbaa !194
  %cast25 = bitcast <2 x i64> %28 to <16 x i8>, !dbg !1857
  %psrldq26 = shufflevector <16 x i8> %cast25, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1857
  %cast27 = bitcast <16 x i8> %psrldq26 to <2 x i64>, !dbg !1857
  %call28 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast27), !dbg !1858
  call void @WebPUint32ToMem(ptr noundef %add.ptr24, i32 noundef %call28), !dbg !1859
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !1860, !tbaa !70
  %add.ptr29 = getelementptr inbounds i8, ptr %29, i64 96, !dbg !1861
  %30 = load <2 x i64>, ptr %avg4, align 16, !dbg !1862, !tbaa !194
  %cast30 = bitcast <2 x i64> %30 to <16 x i8>, !dbg !1862
  %psrldq31 = shufflevector <16 x i8> %cast30, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>, !dbg !1862
  %cast32 = bitcast <16 x i8> %psrldq31 to <2 x i64>, !dbg !1862
  %call33 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %cast32), !dbg !1863
  call void @WebPUint32ToMem(ptr noundef %add.ptr29, i32 noundef %call33), !dbg !1864
  %31 = load i32, ptr %extra_out, align 4, !dbg !1865, !tbaa !188
  %shr = lshr i32 %31, 0, !dbg !1866
  %and = and i32 %shr, 255, !dbg !1867
  %conv = trunc i32 %and to i8, !dbg !1868
  %32 = load ptr, ptr %dst.addr, align 8, !dbg !1869, !tbaa !70
  %arrayidx = getelementptr inbounds i8, ptr %32, i64 67, !dbg !1869
  store i8 %conv, ptr %arrayidx, align 1, !dbg !1870, !tbaa !194
  %33 = load i32, ptr %extra_out, align 4, !dbg !1871, !tbaa !188
  %shr34 = lshr i32 %33, 8, !dbg !1872
  %and35 = and i32 %shr34, 255, !dbg !1873
  %conv36 = trunc i32 %and35 to i8, !dbg !1874
  %34 = load ptr, ptr %dst.addr, align 8, !dbg !1875, !tbaa !70
  %arrayidx37 = getelementptr inbounds i8, ptr %34, i64 99, !dbg !1875
  store i8 %conv36, ptr %arrayidx37, align 1, !dbg !1876, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra_out) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg4) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %lsb2) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %abbc) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %bc) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %ab) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %lsb1) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg3) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg2) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %avg1) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %CDEFGH__) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %BCDEFGH_) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %ABCDEFGH) #9, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 16, ptr %one) #9, !dbg !1877
  ret void, !dbg !1877
}

; Function Attrs: nounwind uwtable
define internal void @DC16_SSE2(ptr noundef %dst) #1 !dbg !1878 {
entry:
  %dst.addr = alloca ptr, align 8
  %zero = alloca <2 x i64>, align 16
  %top = alloca <2 x i64>, align 16
  %sad8x2 = alloca <2 x i64>, align 16
  %sum = alloca <2 x i64>, align 16
  %left = alloca i32, align 4
  %j = alloca i32, align 4
  %DC = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1880, metadata !DIExpression()), !dbg !1889
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !1890
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !1881, metadata !DIExpression()), !dbg !1891
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !1892
  store <2 x i64> %call, ptr %zero, align 16, !dbg !1891, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top) #9, !dbg !1893
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !1882, metadata !DIExpression()), !dbg !1894
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1895, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1896
  %call1 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr), !dbg !1897
  store <2 x i64> %call1, ptr %top, align 16, !dbg !1894, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sad8x2) #9, !dbg !1898
  tail call void @llvm.dbg.declare(metadata ptr %sad8x2, metadata !1883, metadata !DIExpression()), !dbg !1899
  %1 = load <2 x i64>, ptr %top, align 16, !dbg !1900, !tbaa !194
  %2 = load <2 x i64>, ptr %zero, align 16, !dbg !1901, !tbaa !194
  %call2 = call <2 x i64> @_mm_sad_epu8(<2 x i64> noundef %1, <2 x i64> noundef %2), !dbg !1902
  store <2 x i64> %call2, ptr %sad8x2, align 16, !dbg !1899, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sum) #9, !dbg !1903
  tail call void @llvm.dbg.declare(metadata ptr %sum, metadata !1884, metadata !DIExpression()), !dbg !1904
  %3 = load <2 x i64>, ptr %sad8x2, align 16, !dbg !1905, !tbaa !194
  %4 = load <2 x i64>, ptr %sad8x2, align 16, !dbg !1906, !tbaa !194
  %5 = bitcast <2 x i64> %4 to <4 x i32>, !dbg !1906
  %permil = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>, !dbg !1906
  %6 = bitcast <4 x i32> %permil to <2 x i64>, !dbg !1906
  %call3 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %3, <2 x i64> noundef %6), !dbg !1907
  store <2 x i64> %call3, ptr %sum, align 16, !dbg !1904, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #9, !dbg !1908
  tail call void @llvm.dbg.declare(metadata ptr %left, metadata !1885, metadata !DIExpression()), !dbg !1909
  store i32 0, ptr %left, align 4, !dbg !1909, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !1910
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1886, metadata !DIExpression()), !dbg !1911
  store i32 0, ptr %j, align 4, !dbg !1912, !tbaa !188
  br label %for.cond, !dbg !1914

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %j, align 4, !dbg !1915, !tbaa !188
  %cmp = icmp slt i32 %7, 16, !dbg !1917
  br i1 %cmp, label %for.body, label %for.end, !dbg !1918

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1919, !tbaa !70
  %9 = load i32, ptr %j, align 4, !dbg !1921, !tbaa !188
  %mul = mul nsw i32 %9, 32, !dbg !1922
  %add = add nsw i32 -1, %mul, !dbg !1923
  %idxprom = sext i32 %add to i64, !dbg !1919
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom, !dbg !1919
  %10 = load i8, ptr %arrayidx, align 1, !dbg !1919, !tbaa !194
  %conv = zext i8 %10 to i32, !dbg !1919
  %11 = load i32, ptr %left, align 4, !dbg !1924, !tbaa !188
  %add4 = add nsw i32 %11, %conv, !dbg !1924
  store i32 %add4, ptr %left, align 4, !dbg !1924, !tbaa !188
  br label %for.inc, !dbg !1925

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %j, align 4, !dbg !1926, !tbaa !188
  %inc = add nsw i32 %12, 1, !dbg !1926
  store i32 %inc, ptr %j, align 4, !dbg !1926, !tbaa !188
  br label %for.cond, !dbg !1927, !llvm.loop !1928

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC) #9, !dbg !1930
  tail call void @llvm.dbg.declare(metadata ptr %DC, metadata !1887, metadata !DIExpression()), !dbg !1931
  %13 = load <2 x i64>, ptr %sum, align 16, !dbg !1932, !tbaa !194
  %call5 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %13), !dbg !1933
  %14 = load i32, ptr %left, align 4, !dbg !1934, !tbaa !188
  %add6 = add nsw i32 %call5, %14, !dbg !1935
  %add7 = add nsw i32 %add6, 16, !dbg !1936
  store i32 %add7, ptr %DC, align 4, !dbg !1931, !tbaa !188
  %15 = load i32, ptr %DC, align 4, !dbg !1937, !tbaa !188
  %shr = ashr i32 %15, 5, !dbg !1938
  %conv8 = trunc i32 %shr to i8, !dbg !1937
  %16 = load ptr, ptr %dst.addr, align 8, !dbg !1939, !tbaa !70
  call void @Put16_SSE2(i8 noundef zeroext %conv8, ptr noundef %16), !dbg !1940
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC) #9, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #9, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 16, ptr %sum) #9, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 16, ptr %sad8x2) #9, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 16, ptr %top) #9, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !1942
  ret void, !dbg !1942
}

; Function Attrs: nounwind uwtable
define internal void @TM16_SSE2(ptr noundef %dst) #0 !dbg !1943 {
entry:
  %dst.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1945, metadata !DIExpression()), !dbg !1946
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1947, !tbaa !70
  call void @TrueMotion_SSE2(ptr noundef %0, i32 noundef 16), !dbg !1948
  ret void, !dbg !1949
}

; Function Attrs: nounwind uwtable
define internal void @VE16_SSE2(ptr noundef %dst) #1 !dbg !1950 {
entry:
  %dst.addr = alloca ptr, align 8
  %top = alloca <2 x i64>, align 16
  %j = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1952, metadata !DIExpression()), !dbg !1955
  call void @llvm.lifetime.start.p0(i64 16, ptr %top) #9, !dbg !1956
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !1953, metadata !DIExpression()), !dbg !1957
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1958, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !1959
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr), !dbg !1960
  store <2 x i64> %call, ptr %top, align 16, !dbg !1957, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !1961
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1954, metadata !DIExpression()), !dbg !1962
  store i32 0, ptr %j, align 4, !dbg !1963, !tbaa !188
  br label %for.cond, !dbg !1965

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %j, align 4, !dbg !1966, !tbaa !188
  %cmp = icmp slt i32 %1, 16, !dbg !1968
  br i1 %cmp, label %for.body, label %for.end, !dbg !1969

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1970, !tbaa !70
  %3 = load i32, ptr %j, align 4, !dbg !1972, !tbaa !188
  %mul = mul nsw i32 %3, 32, !dbg !1973
  %idx.ext = sext i32 %mul to i64, !dbg !1974
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !1974
  %4 = load <2 x i64>, ptr %top, align 16, !dbg !1975, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %add.ptr1, <2 x i64> noundef %4), !dbg !1976
  br label %for.inc, !dbg !1977

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4, !dbg !1978, !tbaa !188
  %inc = add nsw i32 %5, 1, !dbg !1978
  store i32 %inc, ptr %j, align 4, !dbg !1978, !tbaa !188
  br label %for.cond, !dbg !1979, !llvm.loop !1980

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !1982
  call void @llvm.lifetime.end.p0(i64 16, ptr %top) #9, !dbg !1982
  ret void, !dbg !1982
}

; Function Attrs: nounwind uwtable
define internal void @HE16_SSE2(ptr noundef %dst) #1 !dbg !1983 {
entry:
  %dst.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %values = alloca <2 x i64>, align 16
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1985, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !1992
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1986, metadata !DIExpression()), !dbg !1993
  store i32 16, ptr %j, align 4, !dbg !1994, !tbaa !188
  br label %for.cond, !dbg !1995

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !dbg !1996, !tbaa !188
  %cmp = icmp sgt i32 %0, 0, !dbg !1997
  br i1 %cmp, label %for.body, label %for.end, !dbg !1998

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %values) #9, !dbg !1999
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !1987, metadata !DIExpression()), !dbg !2000
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !2001, !tbaa !70
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 -1, !dbg !2001
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2001, !tbaa !194
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %2), !dbg !2002
  store <2 x i64> %call, ptr %values, align 16, !dbg !2000, !tbaa !194
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !2003, !tbaa !70
  %4 = load <2 x i64>, ptr %values, align 16, !dbg !2004, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %3, <2 x i64> noundef %4), !dbg !2005
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !2006, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 32, !dbg !2006
  store ptr %add.ptr, ptr %dst.addr, align 8, !dbg !2006, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr %values) #9, !dbg !2007
  br label %for.inc, !dbg !2008

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %j, align 4, !dbg !2009, !tbaa !188
  %dec = add nsw i32 %6, -1, !dbg !2009
  store i32 %dec, ptr %j, align 4, !dbg !2009, !tbaa !188
  br label %for.cond, !dbg !2010, !llvm.loop !2011

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !2013
  ret void, !dbg !2013
}

; Function Attrs: nounwind uwtable
define internal void @DC16NoTop_SSE2(ptr noundef %dst) #0 !dbg !2014 {
entry:
  %dst.addr = alloca ptr, align 8
  %DC = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2016, metadata !DIExpression()), !dbg !2019
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC) #9, !dbg !2020
  tail call void @llvm.dbg.declare(metadata ptr %DC, metadata !2017, metadata !DIExpression()), !dbg !2021
  store i32 8, ptr %DC, align 4, !dbg !2021, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !2022
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2018, metadata !DIExpression()), !dbg !2023
  store i32 0, ptr %j, align 4, !dbg !2024, !tbaa !188
  br label %for.cond, !dbg !2026

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !dbg !2027, !tbaa !188
  %cmp = icmp slt i32 %0, 16, !dbg !2029
  br i1 %cmp, label %for.body, label %for.end, !dbg !2030

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !2031, !tbaa !70
  %2 = load i32, ptr %j, align 4, !dbg !2033, !tbaa !188
  %mul = mul nsw i32 %2, 32, !dbg !2034
  %add = add nsw i32 -1, %mul, !dbg !2035
  %idxprom = sext i32 %add to i64, !dbg !2031
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom, !dbg !2031
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2031, !tbaa !194
  %conv = zext i8 %3 to i32, !dbg !2031
  %4 = load i32, ptr %DC, align 4, !dbg !2036, !tbaa !188
  %add1 = add nsw i32 %4, %conv, !dbg !2036
  store i32 %add1, ptr %DC, align 4, !dbg !2036, !tbaa !188
  br label %for.inc, !dbg !2037

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4, !dbg !2038, !tbaa !188
  %inc = add nsw i32 %5, 1, !dbg !2038
  store i32 %inc, ptr %j, align 4, !dbg !2038, !tbaa !188
  br label %for.cond, !dbg !2039, !llvm.loop !2040

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %DC, align 4, !dbg !2042, !tbaa !188
  %shr = ashr i32 %6, 4, !dbg !2043
  %conv2 = trunc i32 %shr to i8, !dbg !2042
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !2044, !tbaa !70
  call void @Put16_SSE2(i8 noundef zeroext %conv2, ptr noundef %7), !dbg !2045
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !2046
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC) #9, !dbg !2046
  ret void, !dbg !2046
}

; Function Attrs: nounwind uwtable
define internal void @DC16NoLeft_SSE2(ptr noundef %dst) #1 !dbg !2047 {
entry:
  %dst.addr = alloca ptr, align 8
  %zero = alloca <2 x i64>, align 16
  %top = alloca <2 x i64>, align 16
  %sad8x2 = alloca <2 x i64>, align 16
  %sum = alloca <2 x i64>, align 16
  %DC = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2049, metadata !DIExpression()), !dbg !2055
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !2056
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !2050, metadata !DIExpression()), !dbg !2057
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !2058
  store <2 x i64> %call, ptr %zero, align 16, !dbg !2057, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top) #9, !dbg !2059
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !2051, metadata !DIExpression()), !dbg !2060
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2061, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2062
  %call1 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr), !dbg !2063
  store <2 x i64> %call1, ptr %top, align 16, !dbg !2060, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sad8x2) #9, !dbg !2064
  tail call void @llvm.dbg.declare(metadata ptr %sad8x2, metadata !2052, metadata !DIExpression()), !dbg !2065
  %1 = load <2 x i64>, ptr %top, align 16, !dbg !2066, !tbaa !194
  %2 = load <2 x i64>, ptr %zero, align 16, !dbg !2067, !tbaa !194
  %call2 = call <2 x i64> @_mm_sad_epu8(<2 x i64> noundef %1, <2 x i64> noundef %2), !dbg !2068
  store <2 x i64> %call2, ptr %sad8x2, align 16, !dbg !2065, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sum) #9, !dbg !2069
  tail call void @llvm.dbg.declare(metadata ptr %sum, metadata !2053, metadata !DIExpression()), !dbg !2070
  %3 = load <2 x i64>, ptr %sad8x2, align 16, !dbg !2071, !tbaa !194
  %4 = load <2 x i64>, ptr %sad8x2, align 16, !dbg !2072, !tbaa !194
  %5 = bitcast <2 x i64> %4 to <4 x i32>, !dbg !2072
  %permil = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 0>, !dbg !2072
  %6 = bitcast <4 x i32> %permil to <2 x i64>, !dbg !2072
  %call3 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %3, <2 x i64> noundef %6), !dbg !2073
  store <2 x i64> %call3, ptr %sum, align 16, !dbg !2070, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC) #9, !dbg !2074
  tail call void @llvm.dbg.declare(metadata ptr %DC, metadata !2054, metadata !DIExpression()), !dbg !2075
  %7 = load <2 x i64>, ptr %sum, align 16, !dbg !2076, !tbaa !194
  %call4 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %7), !dbg !2077
  %add = add nsw i32 %call4, 8, !dbg !2078
  store i32 %add, ptr %DC, align 4, !dbg !2075, !tbaa !188
  %8 = load i32, ptr %DC, align 4, !dbg !2079, !tbaa !188
  %shr = ashr i32 %8, 4, !dbg !2080
  %conv = trunc i32 %shr to i8, !dbg !2079
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !2081, !tbaa !70
  call void @Put16_SSE2(i8 noundef zeroext %conv, ptr noundef %9), !dbg !2082
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC) #9, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 16, ptr %sum) #9, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 16, ptr %sad8x2) #9, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 16, ptr %top) #9, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !2083
  ret void, !dbg !2083
}

; Function Attrs: nounwind uwtable
define internal void @DC16NoTopLeft_SSE2(ptr noundef %dst) #0 !dbg !2084 {
entry:
  %dst.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2086, metadata !DIExpression()), !dbg !2087
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2088, !tbaa !70
  call void @Put16_SSE2(i8 noundef zeroext -128, ptr noundef %0), !dbg !2089
  ret void, !dbg !2090
}

; Function Attrs: nounwind uwtable
define internal void @DC8uv_SSE2(ptr noundef %dst) #1 !dbg !2091 {
entry:
  %dst.addr = alloca ptr, align 8
  %zero = alloca <2 x i64>, align 16
  %top = alloca <2 x i64>, align 16
  %sum = alloca <2 x i64>, align 16
  %left = alloca i32, align 4
  %j = alloca i32, align 4
  %DC = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2093, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !2102
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !2094, metadata !DIExpression()), !dbg !2103
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !2104
  store <2 x i64> %call, ptr %zero, align 16, !dbg !2103, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top) #9, !dbg !2105
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !2095, metadata !DIExpression()), !dbg !2106
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2107, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2108
  %call1 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr), !dbg !2109
  store <2 x i64> %call1, ptr %top, align 16, !dbg !2106, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sum) #9, !dbg !2110
  tail call void @llvm.dbg.declare(metadata ptr %sum, metadata !2096, metadata !DIExpression()), !dbg !2111
  %1 = load <2 x i64>, ptr %top, align 16, !dbg !2112, !tbaa !194
  %2 = load <2 x i64>, ptr %zero, align 16, !dbg !2113, !tbaa !194
  %call2 = call <2 x i64> @_mm_sad_epu8(<2 x i64> noundef %1, <2 x i64> noundef %2), !dbg !2114
  store <2 x i64> %call2, ptr %sum, align 16, !dbg !2111, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #9, !dbg !2115
  tail call void @llvm.dbg.declare(metadata ptr %left, metadata !2097, metadata !DIExpression()), !dbg !2116
  store i32 0, ptr %left, align 4, !dbg !2116, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !2117
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2098, metadata !DIExpression()), !dbg !2118
  store i32 0, ptr %j, align 4, !dbg !2119, !tbaa !188
  br label %for.cond, !dbg !2121

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %j, align 4, !dbg !2122, !tbaa !188
  %cmp = icmp slt i32 %3, 8, !dbg !2124
  br i1 %cmp, label %for.body, label %for.end, !dbg !2125

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !2126, !tbaa !70
  %5 = load i32, ptr %j, align 4, !dbg !2128, !tbaa !188
  %mul = mul nsw i32 %5, 32, !dbg !2129
  %add = add nsw i32 -1, %mul, !dbg !2130
  %idxprom = sext i32 %add to i64, !dbg !2126
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !2126
  %6 = load i8, ptr %arrayidx, align 1, !dbg !2126, !tbaa !194
  %conv = zext i8 %6 to i32, !dbg !2126
  %7 = load i32, ptr %left, align 4, !dbg !2131, !tbaa !188
  %add3 = add nsw i32 %7, %conv, !dbg !2131
  store i32 %add3, ptr %left, align 4, !dbg !2131, !tbaa !188
  br label %for.inc, !dbg !2132

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %j, align 4, !dbg !2133, !tbaa !188
  %inc = add nsw i32 %8, 1, !dbg !2133
  store i32 %inc, ptr %j, align 4, !dbg !2133, !tbaa !188
  br label %for.cond, !dbg !2134, !llvm.loop !2135

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC) #9, !dbg !2137
  tail call void @llvm.dbg.declare(metadata ptr %DC, metadata !2099, metadata !DIExpression()), !dbg !2138
  %9 = load <2 x i64>, ptr %sum, align 16, !dbg !2139, !tbaa !194
  %call4 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %9), !dbg !2140
  %10 = load i32, ptr %left, align 4, !dbg !2141, !tbaa !188
  %add5 = add nsw i32 %call4, %10, !dbg !2142
  %add6 = add nsw i32 %add5, 8, !dbg !2143
  store i32 %add6, ptr %DC, align 4, !dbg !2138, !tbaa !188
  %11 = load i32, ptr %DC, align 4, !dbg !2144, !tbaa !188
  %shr = ashr i32 %11, 4, !dbg !2145
  %conv7 = trunc i32 %shr to i8, !dbg !2144
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !2146, !tbaa !70
  call void @Put8x8uv_SSE2(i8 noundef zeroext %conv7, ptr noundef %12), !dbg !2147
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC) #9, !dbg !2148
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #9, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 16, ptr %sum) #9, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 16, ptr %top) #9, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !2149
  ret void, !dbg !2149
}

; Function Attrs: nounwind uwtable
define internal void @TM8uv_SSE2(ptr noundef %dst) #0 !dbg !2150 {
entry:
  %dst.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2152, metadata !DIExpression()), !dbg !2153
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2154, !tbaa !70
  call void @TrueMotion_SSE2(ptr noundef %0, i32 noundef 8), !dbg !2155
  ret void, !dbg !2156
}

; Function Attrs: nounwind uwtable
define internal void @VE8uv_SSE2(ptr noundef %dst) #1 !dbg !2157 {
entry:
  %dst.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %top = alloca <2 x i64>, align 16
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2160, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 16, ptr %top) #9, !dbg !2165
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !2161, metadata !DIExpression()), !dbg !2166
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2167, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2168
  %call = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr), !dbg !2169
  store <2 x i64> %call, ptr %top, align 16, !dbg !2166, !tbaa !194
  store i32 0, ptr %j, align 4, !dbg !2170, !tbaa !188
  br label %for.cond, !dbg !2172

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %j, align 4, !dbg !2173, !tbaa !188
  %cmp = icmp slt i32 %1, 8, !dbg !2175
  br i1 %cmp, label %for.body, label %for.end, !dbg !2176

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2177, !tbaa !70
  %3 = load i32, ptr %j, align 4, !dbg !2179, !tbaa !188
  %mul = mul nsw i32 %3, 32, !dbg !2180
  %idx.ext = sext i32 %mul to i64, !dbg !2181
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !2181
  %4 = load <2 x i64>, ptr %top, align 16, !dbg !2182, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %add.ptr1, <2 x i64> noundef %4), !dbg !2183
  br label %for.inc, !dbg !2184

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4, !dbg !2185, !tbaa !188
  %inc = add nsw i32 %5, 1, !dbg !2185
  store i32 %inc, ptr %j, align 4, !dbg !2185, !tbaa !188
  br label %for.cond, !dbg !2186, !llvm.loop !2187

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %top) #9, !dbg !2189
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !2189
  ret void, !dbg !2189
}

; Function Attrs: nounwind uwtable
define internal void @DC8uvNoTop_SSE2(ptr noundef %dst) #0 !dbg !2190 {
entry:
  %dst.addr = alloca ptr, align 8
  %dc0 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2192, metadata !DIExpression()), !dbg !2195
  call void @llvm.lifetime.start.p0(i64 4, ptr %dc0) #9, !dbg !2196
  tail call void @llvm.dbg.declare(metadata ptr %dc0, metadata !2193, metadata !DIExpression()), !dbg !2197
  store i32 4, ptr %dc0, align 4, !dbg !2197, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !2198
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2194, metadata !DIExpression()), !dbg !2199
  store i32 0, ptr %i, align 4, !dbg !2200, !tbaa !188
  br label %for.cond, !dbg !2202

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2203, !tbaa !188
  %cmp = icmp slt i32 %0, 8, !dbg !2205
  br i1 %cmp, label %for.body, label %for.end, !dbg !2206

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !2207, !tbaa !70
  %2 = load i32, ptr %i, align 4, !dbg !2209, !tbaa !188
  %mul = mul nsw i32 %2, 32, !dbg !2210
  %add = add nsw i32 -1, %mul, !dbg !2211
  %idxprom = sext i32 %add to i64, !dbg !2207
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom, !dbg !2207
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2207, !tbaa !194
  %conv = zext i8 %3 to i32, !dbg !2207
  %4 = load i32, ptr %dc0, align 4, !dbg !2212, !tbaa !188
  %add1 = add nsw i32 %4, %conv, !dbg !2212
  store i32 %add1, ptr %dc0, align 4, !dbg !2212, !tbaa !188
  br label %for.inc, !dbg !2213

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !2214, !tbaa !188
  %inc = add nsw i32 %5, 1, !dbg !2214
  store i32 %inc, ptr %i, align 4, !dbg !2214, !tbaa !188
  br label %for.cond, !dbg !2215, !llvm.loop !2216

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %dc0, align 4, !dbg !2218, !tbaa !188
  %shr = ashr i32 %6, 3, !dbg !2219
  %conv2 = trunc i32 %shr to i8, !dbg !2218
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !2220, !tbaa !70
  call void @Put8x8uv_SSE2(i8 noundef zeroext %conv2, ptr noundef %7), !dbg !2221
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 4, ptr %dc0) #9, !dbg !2222
  ret void, !dbg !2222
}

; Function Attrs: nounwind uwtable
define internal void @DC8uvNoLeft_SSE2(ptr noundef %dst) #1 !dbg !2223 {
entry:
  %dst.addr = alloca ptr, align 8
  %zero = alloca <2 x i64>, align 16
  %top = alloca <2 x i64>, align 16
  %sum = alloca <2 x i64>, align 16
  %DC = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2225, metadata !DIExpression()), !dbg !2230
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !2231
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !2226, metadata !DIExpression()), !dbg !2232
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !2233
  store <2 x i64> %call, ptr %zero, align 16, !dbg !2232, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top) #9, !dbg !2234
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !2227, metadata !DIExpression()), !dbg !2235
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2236, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !2237
  %call1 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr), !dbg !2238
  store <2 x i64> %call1, ptr %top, align 16, !dbg !2235, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sum) #9, !dbg !2239
  tail call void @llvm.dbg.declare(metadata ptr %sum, metadata !2228, metadata !DIExpression()), !dbg !2240
  %1 = load <2 x i64>, ptr %top, align 16, !dbg !2241, !tbaa !194
  %2 = load <2 x i64>, ptr %zero, align 16, !dbg !2242, !tbaa !194
  %call2 = call <2 x i64> @_mm_sad_epu8(<2 x i64> noundef %1, <2 x i64> noundef %2), !dbg !2243
  store <2 x i64> %call2, ptr %sum, align 16, !dbg !2240, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %DC) #9, !dbg !2244
  tail call void @llvm.dbg.declare(metadata ptr %DC, metadata !2229, metadata !DIExpression()), !dbg !2245
  %3 = load <2 x i64>, ptr %sum, align 16, !dbg !2246, !tbaa !194
  %call3 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %3), !dbg !2247
  %add = add nsw i32 %call3, 4, !dbg !2248
  store i32 %add, ptr %DC, align 4, !dbg !2245, !tbaa !188
  %4 = load i32, ptr %DC, align 4, !dbg !2249, !tbaa !188
  %shr = ashr i32 %4, 3, !dbg !2250
  %conv = trunc i32 %shr to i8, !dbg !2249
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !2251, !tbaa !70
  call void @Put8x8uv_SSE2(i8 noundef zeroext %conv, ptr noundef %5), !dbg !2252
  call void @llvm.lifetime.end.p0(i64 4, ptr %DC) #9, !dbg !2253
  call void @llvm.lifetime.end.p0(i64 16, ptr %sum) #9, !dbg !2253
  call void @llvm.lifetime.end.p0(i64 16, ptr %top) #9, !dbg !2253
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !2253
  ret void, !dbg !2253
}

; Function Attrs: nounwind uwtable
define internal void @DC8uvNoTopLeft_SSE2(ptr noundef %dst) #0 !dbg !2254 {
entry:
  %dst.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2256, metadata !DIExpression()), !dbg !2257
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !2258, !tbaa !70
  call void @Put8x8uv_SSE2(i8 noundef zeroext -128, ptr noundef %0), !dbg !2259
  ret void, !dbg !2260
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set1_epi16(i16 noundef signext %__w) #3 {
entry:
  %__w.addr = alloca i16, align 2
  store i16 %__w, ptr %__w.addr, align 2, !tbaa !2261
  %0 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %1 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %2 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %3 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %4 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %5 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %6 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %7 = load i16, ptr %__w.addr, align 2, !tbaa !2261
  %call = call <2 x i64> @_mm_set_epi16(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7)
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !70
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !70
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !194
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !194
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !194
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 0, i32 2>
  ret <2 x i64> %shuffle
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %add = add <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %sub = sub <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %sub to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @VP8Transpose_2_4x4_16b(ptr noundef %in0, ptr noundef %in1, ptr noundef %in2, ptr noundef %in3, ptr noundef %out0, ptr noundef %out1, ptr noundef %out2, ptr noundef %out3) #4 !dbg !2263 {
entry:
  %in0.addr = alloca ptr, align 8
  %in1.addr = alloca ptr, align 8
  %in2.addr = alloca ptr, align 8
  %in3.addr = alloca ptr, align 8
  %out0.addr = alloca ptr, align 8
  %out1.addr = alloca ptr, align 8
  %out2.addr = alloca ptr, align 8
  %out3.addr = alloca ptr, align 8
  %transpose0_0 = alloca <2 x i64>, align 16
  %transpose0_1 = alloca <2 x i64>, align 16
  %transpose0_2 = alloca <2 x i64>, align 16
  %transpose0_3 = alloca <2 x i64>, align 16
  %transpose1_0 = alloca <2 x i64>, align 16
  %transpose1_1 = alloca <2 x i64>, align 16
  %transpose1_2 = alloca <2 x i64>, align 16
  %transpose1_3 = alloca <2 x i64>, align 16
  store ptr %in0, ptr %in0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %in0.addr, metadata !2270, metadata !DIExpression()), !dbg !2286
  store ptr %in1, ptr %in1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %in1.addr, metadata !2271, metadata !DIExpression()), !dbg !2287
  store ptr %in2, ptr %in2.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %in2.addr, metadata !2272, metadata !DIExpression()), !dbg !2288
  store ptr %in3, ptr %in3.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %in3.addr, metadata !2273, metadata !DIExpression()), !dbg !2289
  store ptr %out0, ptr %out0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %out0.addr, metadata !2274, metadata !DIExpression()), !dbg !2290
  store ptr %out1, ptr %out1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %out1.addr, metadata !2275, metadata !DIExpression()), !dbg !2291
  store ptr %out2, ptr %out2.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %out2.addr, metadata !2276, metadata !DIExpression()), !dbg !2292
  store ptr %out3, ptr %out3.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %out3.addr, metadata !2277, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose0_0) #9, !dbg !2294
  tail call void @llvm.dbg.declare(metadata ptr %transpose0_0, metadata !2278, metadata !DIExpression()), !dbg !2295
  %0 = load ptr, ptr %in0.addr, align 8, !dbg !2296, !tbaa !70
  %1 = load <2 x i64>, ptr %0, align 16, !dbg !2297, !tbaa !194
  %2 = load ptr, ptr %in1.addr, align 8, !dbg !2298, !tbaa !70
  %3 = load <2 x i64>, ptr %2, align 16, !dbg !2299, !tbaa !194
  %call = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %1, <2 x i64> noundef %3), !dbg !2300
  store <2 x i64> %call, ptr %transpose0_0, align 16, !dbg !2295, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose0_1) #9, !dbg !2301
  tail call void @llvm.dbg.declare(metadata ptr %transpose0_1, metadata !2279, metadata !DIExpression()), !dbg !2302
  %4 = load ptr, ptr %in2.addr, align 8, !dbg !2303, !tbaa !70
  %5 = load <2 x i64>, ptr %4, align 16, !dbg !2304, !tbaa !194
  %6 = load ptr, ptr %in3.addr, align 8, !dbg !2305, !tbaa !70
  %7 = load <2 x i64>, ptr %6, align 16, !dbg !2306, !tbaa !194
  %call1 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %5, <2 x i64> noundef %7), !dbg !2307
  store <2 x i64> %call1, ptr %transpose0_1, align 16, !dbg !2302, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose0_2) #9, !dbg !2308
  tail call void @llvm.dbg.declare(metadata ptr %transpose0_2, metadata !2280, metadata !DIExpression()), !dbg !2309
  %8 = load ptr, ptr %in0.addr, align 8, !dbg !2310, !tbaa !70
  %9 = load <2 x i64>, ptr %8, align 16, !dbg !2311, !tbaa !194
  %10 = load ptr, ptr %in1.addr, align 8, !dbg !2312, !tbaa !70
  %11 = load <2 x i64>, ptr %10, align 16, !dbg !2313, !tbaa !194
  %call2 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %9, <2 x i64> noundef %11), !dbg !2314
  store <2 x i64> %call2, ptr %transpose0_2, align 16, !dbg !2309, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose0_3) #9, !dbg !2315
  tail call void @llvm.dbg.declare(metadata ptr %transpose0_3, metadata !2281, metadata !DIExpression()), !dbg !2316
  %12 = load ptr, ptr %in2.addr, align 8, !dbg !2317, !tbaa !70
  %13 = load <2 x i64>, ptr %12, align 16, !dbg !2318, !tbaa !194
  %14 = load ptr, ptr %in3.addr, align 8, !dbg !2319, !tbaa !70
  %15 = load <2 x i64>, ptr %14, align 16, !dbg !2320, !tbaa !194
  %call3 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %13, <2 x i64> noundef %15), !dbg !2321
  store <2 x i64> %call3, ptr %transpose0_3, align 16, !dbg !2316, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose1_0) #9, !dbg !2322
  tail call void @llvm.dbg.declare(metadata ptr %transpose1_0, metadata !2282, metadata !DIExpression()), !dbg !2323
  %16 = load <2 x i64>, ptr %transpose0_0, align 16, !dbg !2324, !tbaa !194
  %17 = load <2 x i64>, ptr %transpose0_1, align 16, !dbg !2325, !tbaa !194
  %call4 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %16, <2 x i64> noundef %17), !dbg !2326
  store <2 x i64> %call4, ptr %transpose1_0, align 16, !dbg !2323, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose1_1) #9, !dbg !2327
  tail call void @llvm.dbg.declare(metadata ptr %transpose1_1, metadata !2283, metadata !DIExpression()), !dbg !2328
  %18 = load <2 x i64>, ptr %transpose0_2, align 16, !dbg !2329, !tbaa !194
  %19 = load <2 x i64>, ptr %transpose0_3, align 16, !dbg !2330, !tbaa !194
  %call5 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %18, <2 x i64> noundef %19), !dbg !2331
  store <2 x i64> %call5, ptr %transpose1_1, align 16, !dbg !2328, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose1_2) #9, !dbg !2332
  tail call void @llvm.dbg.declare(metadata ptr %transpose1_2, metadata !2284, metadata !DIExpression()), !dbg !2333
  %20 = load <2 x i64>, ptr %transpose0_0, align 16, !dbg !2334, !tbaa !194
  %21 = load <2 x i64>, ptr %transpose0_1, align 16, !dbg !2335, !tbaa !194
  %call6 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %20, <2 x i64> noundef %21), !dbg !2336
  store <2 x i64> %call6, ptr %transpose1_2, align 16, !dbg !2333, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %transpose1_3) #9, !dbg !2337
  tail call void @llvm.dbg.declare(metadata ptr %transpose1_3, metadata !2285, metadata !DIExpression()), !dbg !2338
  %22 = load <2 x i64>, ptr %transpose0_2, align 16, !dbg !2339, !tbaa !194
  %23 = load <2 x i64>, ptr %transpose0_3, align 16, !dbg !2340, !tbaa !194
  %call7 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !2341
  store <2 x i64> %call7, ptr %transpose1_3, align 16, !dbg !2338, !tbaa !194
  %24 = load <2 x i64>, ptr %transpose1_0, align 16, !dbg !2342, !tbaa !194
  %25 = load <2 x i64>, ptr %transpose1_1, align 16, !dbg !2343, !tbaa !194
  %call8 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !2344
  %26 = load ptr, ptr %out0.addr, align 8, !dbg !2345, !tbaa !70
  store <2 x i64> %call8, ptr %26, align 16, !dbg !2346, !tbaa !194
  %27 = load <2 x i64>, ptr %transpose1_0, align 16, !dbg !2347, !tbaa !194
  %28 = load <2 x i64>, ptr %transpose1_1, align 16, !dbg !2348, !tbaa !194
  %call9 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %27, <2 x i64> noundef %28), !dbg !2349
  %29 = load ptr, ptr %out1.addr, align 8, !dbg !2350, !tbaa !70
  store <2 x i64> %call9, ptr %29, align 16, !dbg !2351, !tbaa !194
  %30 = load <2 x i64>, ptr %transpose1_2, align 16, !dbg !2352, !tbaa !194
  %31 = load <2 x i64>, ptr %transpose1_3, align 16, !dbg !2353, !tbaa !194
  %call10 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %30, <2 x i64> noundef %31), !dbg !2354
  %32 = load ptr, ptr %out2.addr, align 8, !dbg !2355, !tbaa !70
  store <2 x i64> %call10, ptr %32, align 16, !dbg !2356, !tbaa !194
  %33 = load <2 x i64>, ptr %transpose1_2, align 16, !dbg !2357, !tbaa !194
  %34 = load <2 x i64>, ptr %transpose1_3, align 16, !dbg !2358, !tbaa !194
  %call11 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %33, <2 x i64> noundef %34), !dbg !2359
  %35 = load ptr, ptr %out3.addr, align 8, !dbg !2360, !tbaa !70
  store <2 x i64> %call11, ptr %35, align 16, !dbg !2361, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose1_3) #9, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose1_2) #9, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose1_1) #9, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose1_0) #9, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose0_3) #9, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose0_2) #9, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose0_1) #9, !dbg !2362
  call void @llvm.lifetime.end.p0(i64 16, ptr %transpose0_0) #9, !dbg !2362
  ret void, !dbg !2362
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !188
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !188
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_setzero_si128() #3 {
entry:
  %.compoundliteral = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !194
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtsi32_si128(i32 noundef %__a) #3 {
entry:
  %__a.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !188
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !188
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !194
  %1 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !194
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @WebPMemToUint32(ptr noundef %ptr) #5 !dbg !2363 {
entry:
  %ptr.addr = alloca ptr, align 8
  %A = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.lifetime.start.p0(i64 4, ptr %A) #9, !dbg !2374
  tail call void @llvm.dbg.declare(metadata ptr %A, metadata !2372, metadata !DIExpression()), !dbg !2375
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2376, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 1 %0, i64 4, i1 false), !dbg !2377
  %1 = load i32, ptr %A, align 4, !dbg !2378, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 4, ptr %A) #9, !dbg !2379
  ret i32 %1, !dbg !2380
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !70
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !70
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !194
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @WebPUint32ToMem(ptr noundef %ptr, i32 noundef %val) #5 !dbg !2381 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2385, metadata !DIExpression()), !dbg !2387
  store i32 %val, ptr %val.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2386, metadata !DIExpression()), !dbg !2388
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2389, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 4 %val.addr, i64 4, i1 false), !dbg !2390
  ret void, !dbg !2391
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #9
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !194
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !194
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #9
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi16(i16 noundef signext %__w7, i16 noundef signext %__w6, i16 noundef signext %__w5, i16 noundef signext %__w4, i16 noundef signext %__w3, i16 noundef signext %__w2, i16 noundef signext %__w1, i16 noundef signext %__w0) #3 {
entry:
  %__w7.addr = alloca i16, align 2
  %__w6.addr = alloca i16, align 2
  %__w5.addr = alloca i16, align 2
  %__w4.addr = alloca i16, align 2
  %__w3.addr = alloca i16, align 2
  %__w2.addr = alloca i16, align 2
  %__w1.addr = alloca i16, align 2
  %__w0.addr = alloca i16, align 2
  %.compoundliteral = alloca <8 x i16>, align 16
  store i16 %__w7, ptr %__w7.addr, align 2, !tbaa !2261
  store i16 %__w6, ptr %__w6.addr, align 2, !tbaa !2261
  store i16 %__w5, ptr %__w5.addr, align 2, !tbaa !2261
  store i16 %__w4, ptr %__w4.addr, align 2, !tbaa !2261
  store i16 %__w3, ptr %__w3.addr, align 2, !tbaa !2261
  store i16 %__w2, ptr %__w2.addr, align 2, !tbaa !2261
  store i16 %__w1, ptr %__w1.addr, align 2, !tbaa !2261
  store i16 %__w0, ptr %__w0.addr, align 2, !tbaa !2261
  %0 = load i16, ptr %__w0.addr, align 2, !tbaa !2261
  %vecinit = insertelement <8 x i16> undef, i16 %0, i32 0
  %1 = load i16, ptr %__w1.addr, align 2, !tbaa !2261
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, ptr %__w2.addr, align 2, !tbaa !2261
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, ptr %__w3.addr, align 2, !tbaa !2261
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, ptr %__w4.addr, align 2, !tbaa !2261
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, ptr %__w5.addr, align 2, !tbaa !2261
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, ptr %__w6.addr, align 2, !tbaa !2261
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, ptr %__w7.addr, align 2, !tbaa !2261
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %7, i32 7
  store <8 x i16> %vecinit7, ptr %.compoundliteral, align 16, !tbaa !194
  %8 = load <8 x i16>, ptr %.compoundliteral, align 16, !tbaa !194
  %9 = bitcast <8 x i16> %8 to <2 x i64>
  ret <2 x i64> %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %4 = bitcast <4 x i32> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !70
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !70
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !194
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_or_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %or = or <2 x i64> %0, %1
  ret <2 x i64> %or
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.sat = call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ComplexMask_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %thresh, i32 noundef %ithresh, ptr noundef %mask) #4 !dbg !2392 {
entry:
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %thresh.addr = alloca i32, align 4
  %ithresh.addr = alloca i32, align 4
  %mask.addr = alloca ptr, align 8
  %it = alloca <2 x i64>, align 16
  %diff = alloca <2 x i64>, align 16
  %thresh_mask = alloca <2 x i64>, align 16
  %filter_mask = alloca <2 x i64>, align 16
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2396, metadata !DIExpression()), !dbg !2407
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2397, metadata !DIExpression()), !dbg !2408
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2398, metadata !DIExpression()), !dbg !2409
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !2399, metadata !DIExpression()), !dbg !2410
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !2400, metadata !DIExpression()), !dbg !2411
  store i32 %ithresh, ptr %ithresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %ithresh.addr, metadata !2401, metadata !DIExpression()), !dbg !2412
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2402, metadata !DIExpression()), !dbg !2413
  call void @llvm.lifetime.start.p0(i64 16, ptr %it) #9, !dbg !2414
  tail call void @llvm.dbg.declare(metadata ptr %it, metadata !2403, metadata !DIExpression()), !dbg !2415
  %0 = load i32, ptr %ithresh.addr, align 4, !dbg !2416, !tbaa !188
  %conv = trunc i32 %0 to i8, !dbg !2416
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %conv), !dbg !2417
  store <2 x i64> %call, ptr %it, align 16, !dbg !2415, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %diff) #9, !dbg !2418
  tail call void @llvm.dbg.declare(metadata ptr %diff, metadata !2404, metadata !DIExpression()), !dbg !2419
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !2420, !tbaa !70
  %2 = load <2 x i64>, ptr %1, align 16, !dbg !2421, !tbaa !194
  %3 = load <2 x i64>, ptr %it, align 16, !dbg !2422, !tbaa !194
  %call1 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %2, <2 x i64> noundef %3), !dbg !2423
  store <2 x i64> %call1, ptr %diff, align 16, !dbg !2419, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %thresh_mask) #9, !dbg !2424
  tail call void @llvm.dbg.declare(metadata ptr %thresh_mask, metadata !2405, metadata !DIExpression()), !dbg !2425
  %4 = load <2 x i64>, ptr %diff, align 16, !dbg !2426, !tbaa !194
  %call2 = call <2 x i64> @_mm_setzero_si128(), !dbg !2427
  %call3 = call <2 x i64> @_mm_cmpeq_epi8(<2 x i64> noundef %4, <2 x i64> noundef %call2), !dbg !2428
  store <2 x i64> %call3, ptr %thresh_mask, align 16, !dbg !2425, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %filter_mask) #9, !dbg !2429
  tail call void @llvm.dbg.declare(metadata ptr %filter_mask, metadata !2406, metadata !DIExpression()), !dbg !2430
  %5 = load ptr, ptr %p1.addr, align 8, !dbg !2431, !tbaa !70
  %6 = load ptr, ptr %p0.addr, align 8, !dbg !2432, !tbaa !70
  %7 = load ptr, ptr %q0.addr, align 8, !dbg !2433, !tbaa !70
  %8 = load ptr, ptr %q1.addr, align 8, !dbg !2434, !tbaa !70
  %9 = load i32, ptr %thresh.addr, align 4, !dbg !2435, !tbaa !188
  call void @NeedsFilter_SSE2(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %filter_mask), !dbg !2436
  %10 = load <2 x i64>, ptr %thresh_mask, align 16, !dbg !2437, !tbaa !194
  %11 = load <2 x i64>, ptr %filter_mask, align 16, !dbg !2438, !tbaa !194
  %call4 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !2439
  %12 = load ptr, ptr %mask.addr, align 8, !dbg !2440, !tbaa !70
  store <2 x i64> %call4, ptr %12, align 16, !dbg !2441, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %filter_mask) #9, !dbg !2442
  call void @llvm.lifetime.end.p0(i64 16, ptr %thresh_mask) #9, !dbg !2442
  call void @llvm.lifetime.end.p0(i64 16, ptr %diff) #9, !dbg !2442
  call void @llvm.lifetime.end.p0(i64 16, ptr %it) #9, !dbg !2442
  ret void, !dbg !2442
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DoFilter6_SSE2(ptr noundef %p2, ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %mask, i32 noundef %hev_thresh) #4 !dbg !2443 {
entry:
  %p2.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %q2.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %hev_thresh.addr = alloca i32, align 4
  %zero = alloca <2 x i64>, align 16
  %sign_bit = alloca <2 x i64>, align 16
  %a = alloca <2 x i64>, align 16
  %not_hev = alloca <2 x i64>, align 16
  %m = alloca <2 x i64>, align 16
  %f = alloca <2 x i64>, align 16
  %k9 = alloca <2 x i64>, align 16
  %k63 = alloca <2 x i64>, align 16
  %m12 = alloca <2 x i64>, align 16
  %f14 = alloca <2 x i64>, align 16
  %f_lo = alloca <2 x i64>, align 16
  %f_hi = alloca <2 x i64>, align 16
  %f9_lo = alloca <2 x i64>, align 16
  %f9_hi = alloca <2 x i64>, align 16
  %a2_lo = alloca <2 x i64>, align 16
  %a2_hi = alloca <2 x i64>, align 16
  %a1_lo = alloca <2 x i64>, align 16
  %a1_hi = alloca <2 x i64>, align 16
  %a0_lo = alloca <2 x i64>, align 16
  %a0_hi = alloca <2 x i64>, align 16
  store ptr %p2, ptr %p2.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !2447, metadata !DIExpression()), !dbg !2477
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2448, metadata !DIExpression()), !dbg !2478
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2449, metadata !DIExpression()), !dbg !2479
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2450, metadata !DIExpression()), !dbg !2480
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !2451, metadata !DIExpression()), !dbg !2481
  store ptr %q2, ptr %q2.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q2.addr, metadata !2452, metadata !DIExpression()), !dbg !2482
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2453, metadata !DIExpression()), !dbg !2483
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !2454, metadata !DIExpression()), !dbg !2484
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !2485
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !2455, metadata !DIExpression()), !dbg !2486
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !2487
  store <2 x i64> %call, ptr %zero, align 16, !dbg !2486, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sign_bit) #9, !dbg !2488
  tail call void @llvm.dbg.declare(metadata ptr %sign_bit, metadata !2456, metadata !DIExpression()), !dbg !2489
  %call1 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext -128), !dbg !2490
  store <2 x i64> %call1, ptr %sign_bit, align 16, !dbg !2489, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #9, !dbg !2491
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !2457, metadata !DIExpression()), !dbg !2492
  call void @llvm.lifetime.start.p0(i64 16, ptr %not_hev) #9, !dbg !2491
  tail call void @llvm.dbg.declare(metadata ptr %not_hev, metadata !2458, metadata !DIExpression()), !dbg !2493
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !2494, !tbaa !70
  %1 = load ptr, ptr %p0.addr, align 8, !dbg !2495, !tbaa !70
  %2 = load ptr, ptr %q0.addr, align 8, !dbg !2496, !tbaa !70
  %3 = load ptr, ptr %q1.addr, align 8, !dbg !2497, !tbaa !70
  %4 = load i32, ptr %hev_thresh.addr, align 4, !dbg !2498, !tbaa !188
  call void @GetNotHEV_SSE2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %not_hev), !dbg !2499
  %5 = load ptr, ptr %p1.addr, align 8, !dbg !2500, !tbaa !70
  %6 = load <2 x i64>, ptr %5, align 16, !dbg !2500, !tbaa !194
  %7 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2500, !tbaa !194
  %call2 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %6, <2 x i64> noundef %7), !dbg !2500
  %8 = load ptr, ptr %p1.addr, align 8, !dbg !2500, !tbaa !70
  store <2 x i64> %call2, ptr %8, align 16, !dbg !2500, !tbaa !194
  %9 = load ptr, ptr %p0.addr, align 8, !dbg !2500, !tbaa !70
  %10 = load <2 x i64>, ptr %9, align 16, !dbg !2500, !tbaa !194
  %11 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2500, !tbaa !194
  %call3 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !2500
  %12 = load ptr, ptr %p0.addr, align 8, !dbg !2500, !tbaa !70
  store <2 x i64> %call3, ptr %12, align 16, !dbg !2500, !tbaa !194
  %13 = load ptr, ptr %q0.addr, align 8, !dbg !2503, !tbaa !70
  %14 = load <2 x i64>, ptr %13, align 16, !dbg !2503, !tbaa !194
  %15 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2503, !tbaa !194
  %call4 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !2503
  %16 = load ptr, ptr %q0.addr, align 8, !dbg !2503, !tbaa !70
  store <2 x i64> %call4, ptr %16, align 16, !dbg !2503, !tbaa !194
  %17 = load ptr, ptr %q1.addr, align 8, !dbg !2503, !tbaa !70
  %18 = load <2 x i64>, ptr %17, align 16, !dbg !2503, !tbaa !194
  %19 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2503, !tbaa !194
  %call5 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %18, <2 x i64> noundef %19), !dbg !2503
  %20 = load ptr, ptr %q1.addr, align 8, !dbg !2503, !tbaa !70
  store <2 x i64> %call5, ptr %20, align 16, !dbg !2503, !tbaa !194
  %21 = load ptr, ptr %p2.addr, align 8, !dbg !2505, !tbaa !70
  %22 = load <2 x i64>, ptr %21, align 16, !dbg !2505, !tbaa !194
  %23 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2505, !tbaa !194
  %call6 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !2505
  %24 = load ptr, ptr %p2.addr, align 8, !dbg !2505, !tbaa !70
  store <2 x i64> %call6, ptr %24, align 16, !dbg !2505, !tbaa !194
  %25 = load ptr, ptr %q2.addr, align 8, !dbg !2505, !tbaa !70
  %26 = load <2 x i64>, ptr %25, align 16, !dbg !2505, !tbaa !194
  %27 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2505, !tbaa !194
  %call7 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %26, <2 x i64> noundef %27), !dbg !2505
  %28 = load ptr, ptr %q2.addr, align 8, !dbg !2505, !tbaa !70
  store <2 x i64> %call7, ptr %28, align 16, !dbg !2505, !tbaa !194
  %29 = load ptr, ptr %p1.addr, align 8, !dbg !2507, !tbaa !70
  %30 = load ptr, ptr %p0.addr, align 8, !dbg !2508, !tbaa !70
  %31 = load ptr, ptr %q0.addr, align 8, !dbg !2509, !tbaa !70
  %32 = load ptr, ptr %q1.addr, align 8, !dbg !2510, !tbaa !70
  call void @GetBaseDelta_SSE2(ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %a), !dbg !2511
  call void @llvm.lifetime.start.p0(i64 16, ptr %m) #9, !dbg !2512
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !2459, metadata !DIExpression()), !dbg !2513
  %33 = load <2 x i64>, ptr %not_hev, align 16, !dbg !2514, !tbaa !194
  %34 = load ptr, ptr %mask.addr, align 8, !dbg !2515, !tbaa !70
  %35 = load <2 x i64>, ptr %34, align 16, !dbg !2516, !tbaa !194
  %call8 = call <2 x i64> @_mm_andnot_si128(<2 x i64> noundef %33, <2 x i64> noundef %35), !dbg !2517
  store <2 x i64> %call8, ptr %m, align 16, !dbg !2513, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #9, !dbg !2518
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !2461, metadata !DIExpression()), !dbg !2519
  %36 = load <2 x i64>, ptr %a, align 16, !dbg !2520, !tbaa !194
  %37 = load <2 x i64>, ptr %m, align 16, !dbg !2521, !tbaa !194
  %call9 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %36, <2 x i64> noundef %37), !dbg !2522
  store <2 x i64> %call9, ptr %f, align 16, !dbg !2519, !tbaa !194
  %38 = load ptr, ptr %p0.addr, align 8, !dbg !2523, !tbaa !70
  %39 = load ptr, ptr %q0.addr, align 8, !dbg !2524, !tbaa !70
  call void @DoSimpleFilter_SSE2(ptr noundef %38, ptr noundef %39, ptr noundef %f), !dbg !2525
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #9, !dbg !2526
  call void @llvm.lifetime.end.p0(i64 16, ptr %m) #9, !dbg !2526
  call void @llvm.lifetime.start.p0(i64 16, ptr %k9) #9, !dbg !2527
  tail call void @llvm.dbg.declare(metadata ptr %k9, metadata !2462, metadata !DIExpression()), !dbg !2528
  %call10 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext 2304), !dbg !2529
  store <2 x i64> %call10, ptr %k9, align 16, !dbg !2528, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %k63) #9, !dbg !2530
  tail call void @llvm.dbg.declare(metadata ptr %k63, metadata !2464, metadata !DIExpression()), !dbg !2531
  %call11 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext 63), !dbg !2532
  store <2 x i64> %call11, ptr %k63, align 16, !dbg !2531, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %m12) #9, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %m12, metadata !2465, metadata !DIExpression()), !dbg !2534
  %40 = load <2 x i64>, ptr %not_hev, align 16, !dbg !2535, !tbaa !194
  %41 = load ptr, ptr %mask.addr, align 8, !dbg !2536, !tbaa !70
  %42 = load <2 x i64>, ptr %41, align 16, !dbg !2537, !tbaa !194
  %call13 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %40, <2 x i64> noundef %42), !dbg !2538
  store <2 x i64> %call13, ptr %m12, align 16, !dbg !2534, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %f14) #9, !dbg !2539
  tail call void @llvm.dbg.declare(metadata ptr %f14, metadata !2466, metadata !DIExpression()), !dbg !2540
  %43 = load <2 x i64>, ptr %a, align 16, !dbg !2541, !tbaa !194
  %44 = load <2 x i64>, ptr %m12, align 16, !dbg !2542, !tbaa !194
  %call15 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %43, <2 x i64> noundef %44), !dbg !2543
  store <2 x i64> %call15, ptr %f14, align 16, !dbg !2540, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %f_lo) #9, !dbg !2544
  tail call void @llvm.dbg.declare(metadata ptr %f_lo, metadata !2467, metadata !DIExpression()), !dbg !2545
  %45 = load <2 x i64>, ptr %zero, align 16, !dbg !2546, !tbaa !194
  %46 = load <2 x i64>, ptr %f14, align 16, !dbg !2547, !tbaa !194
  %call16 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %45, <2 x i64> noundef %46), !dbg !2548
  store <2 x i64> %call16, ptr %f_lo, align 16, !dbg !2545, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %f_hi) #9, !dbg !2549
  tail call void @llvm.dbg.declare(metadata ptr %f_hi, metadata !2468, metadata !DIExpression()), !dbg !2550
  %47 = load <2 x i64>, ptr %zero, align 16, !dbg !2551, !tbaa !194
  %48 = load <2 x i64>, ptr %f14, align 16, !dbg !2552, !tbaa !194
  %call17 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %47, <2 x i64> noundef %48), !dbg !2553
  store <2 x i64> %call17, ptr %f_hi, align 16, !dbg !2550, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %f9_lo) #9, !dbg !2554
  tail call void @llvm.dbg.declare(metadata ptr %f9_lo, metadata !2469, metadata !DIExpression()), !dbg !2555
  %49 = load <2 x i64>, ptr %f_lo, align 16, !dbg !2556, !tbaa !194
  %50 = load <2 x i64>, ptr %k9, align 16, !dbg !2557, !tbaa !194
  %call18 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %49, <2 x i64> noundef %50), !dbg !2558
  store <2 x i64> %call18, ptr %f9_lo, align 16, !dbg !2555, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %f9_hi) #9, !dbg !2559
  tail call void @llvm.dbg.declare(metadata ptr %f9_hi, metadata !2470, metadata !DIExpression()), !dbg !2560
  %51 = load <2 x i64>, ptr %f_hi, align 16, !dbg !2561, !tbaa !194
  %52 = load <2 x i64>, ptr %k9, align 16, !dbg !2562, !tbaa !194
  %call19 = call <2 x i64> @_mm_mulhi_epi16(<2 x i64> noundef %51, <2 x i64> noundef %52), !dbg !2563
  store <2 x i64> %call19, ptr %f9_hi, align 16, !dbg !2560, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a2_lo) #9, !dbg !2564
  tail call void @llvm.dbg.declare(metadata ptr %a2_lo, metadata !2471, metadata !DIExpression()), !dbg !2565
  %53 = load <2 x i64>, ptr %f9_lo, align 16, !dbg !2566, !tbaa !194
  %54 = load <2 x i64>, ptr %k63, align 16, !dbg !2567, !tbaa !194
  %call20 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %53, <2 x i64> noundef %54), !dbg !2568
  store <2 x i64> %call20, ptr %a2_lo, align 16, !dbg !2565, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a2_hi) #9, !dbg !2569
  tail call void @llvm.dbg.declare(metadata ptr %a2_hi, metadata !2472, metadata !DIExpression()), !dbg !2570
  %55 = load <2 x i64>, ptr %f9_hi, align 16, !dbg !2571, !tbaa !194
  %56 = load <2 x i64>, ptr %k63, align 16, !dbg !2572, !tbaa !194
  %call21 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %55, <2 x i64> noundef %56), !dbg !2573
  store <2 x i64> %call21, ptr %a2_hi, align 16, !dbg !2570, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a1_lo) #9, !dbg !2574
  tail call void @llvm.dbg.declare(metadata ptr %a1_lo, metadata !2473, metadata !DIExpression()), !dbg !2575
  %57 = load <2 x i64>, ptr %a2_lo, align 16, !dbg !2576, !tbaa !194
  %58 = load <2 x i64>, ptr %f9_lo, align 16, !dbg !2577, !tbaa !194
  %call22 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %57, <2 x i64> noundef %58), !dbg !2578
  store <2 x i64> %call22, ptr %a1_lo, align 16, !dbg !2575, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a1_hi) #9, !dbg !2579
  tail call void @llvm.dbg.declare(metadata ptr %a1_hi, metadata !2474, metadata !DIExpression()), !dbg !2580
  %59 = load <2 x i64>, ptr %a2_hi, align 16, !dbg !2581, !tbaa !194
  %60 = load <2 x i64>, ptr %f9_hi, align 16, !dbg !2582, !tbaa !194
  %call23 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %59, <2 x i64> noundef %60), !dbg !2583
  store <2 x i64> %call23, ptr %a1_hi, align 16, !dbg !2580, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a0_lo) #9, !dbg !2584
  tail call void @llvm.dbg.declare(metadata ptr %a0_lo, metadata !2475, metadata !DIExpression()), !dbg !2585
  %61 = load <2 x i64>, ptr %a1_lo, align 16, !dbg !2586, !tbaa !194
  %62 = load <2 x i64>, ptr %f9_lo, align 16, !dbg !2587, !tbaa !194
  %call24 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %61, <2 x i64> noundef %62), !dbg !2588
  store <2 x i64> %call24, ptr %a0_lo, align 16, !dbg !2585, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a0_hi) #9, !dbg !2589
  tail call void @llvm.dbg.declare(metadata ptr %a0_hi, metadata !2476, metadata !DIExpression()), !dbg !2590
  %63 = load <2 x i64>, ptr %a1_hi, align 16, !dbg !2591, !tbaa !194
  %64 = load <2 x i64>, ptr %f9_hi, align 16, !dbg !2592, !tbaa !194
  %call25 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %63, <2 x i64> noundef %64), !dbg !2593
  store <2 x i64> %call25, ptr %a0_hi, align 16, !dbg !2590, !tbaa !194
  %65 = load ptr, ptr %p2.addr, align 8, !dbg !2594, !tbaa !70
  %66 = load ptr, ptr %q2.addr, align 8, !dbg !2595, !tbaa !70
  call void @Update2Pixels_SSE2(ptr noundef %65, ptr noundef %66, ptr noundef %a2_lo, ptr noundef %a2_hi), !dbg !2596
  %67 = load ptr, ptr %p1.addr, align 8, !dbg !2597, !tbaa !70
  %68 = load ptr, ptr %q1.addr, align 8, !dbg !2598, !tbaa !70
  call void @Update2Pixels_SSE2(ptr noundef %67, ptr noundef %68, ptr noundef %a1_lo, ptr noundef %a1_hi), !dbg !2599
  %69 = load ptr, ptr %p0.addr, align 8, !dbg !2600, !tbaa !70
  %70 = load ptr, ptr %q0.addr, align 8, !dbg !2601, !tbaa !70
  call void @Update2Pixels_SSE2(ptr noundef %69, ptr noundef %70, ptr noundef %a0_lo, ptr noundef %a0_hi), !dbg !2602
  call void @llvm.lifetime.end.p0(i64 16, ptr %a0_hi) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %a0_lo) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %a1_hi) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %a1_lo) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %a2_hi) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %a2_lo) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %f9_hi) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %f9_lo) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %f_hi) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %f_lo) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %f14) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %m12) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %k63) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %k9) #9, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 16, ptr %not_hev) #9, !dbg !2604
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #9, !dbg !2604
  call void @llvm.lifetime.end.p0(i64 16, ptr %sign_bit) #9, !dbg !2604
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !2604
  ret void, !dbg !2604
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !70
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !70
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !194
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set1_epi8(i8 noundef signext %__b) #3 {
entry:
  %__b.addr = alloca i8, align 1
  store i8 %__b, ptr %__b.addr, align 1, !tbaa !194
  %0 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %1 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %2 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %3 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %4 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %5 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %6 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %7 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %8 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %9 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %10 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %11 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %12 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %13 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %14 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %15 = load i8, ptr %__b.addr, align 1, !tbaa !194
  %call = call <2 x i64> @_mm_set_epi8(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, i8 noundef signext %6, i8 noundef signext %7, i8 noundef signext %8, i8 noundef signext %9, i8 noundef signext %10, i8 noundef signext %11, i8 noundef signext %12, i8 noundef signext %13, i8 noundef signext %14, i8 noundef signext %15)
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cmpeq_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %cmp = icmp eq <16 x i8> %1, %3
  %sext = sext <16 x i1> %cmp to <16 x i8>
  %4 = bitcast <16 x i8> %sext to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @NeedsFilter_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %thresh, ptr noundef %mask) #4 !dbg !2605 {
entry:
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %thresh.addr = alloca i32, align 4
  %mask.addr = alloca ptr, align 8
  %m_thresh = alloca <2 x i64>, align 16
  %t1 = alloca <2 x i64>, align 16
  %kFE = alloca <2 x i64>, align 16
  %t2 = alloca <2 x i64>, align 16
  %t3 = alloca <2 x i64>, align 16
  %t4 = alloca <2 x i64>, align 16
  %t5 = alloca <2 x i64>, align 16
  %t6 = alloca <2 x i64>, align 16
  %t7 = alloca <2 x i64>, align 16
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2609, metadata !DIExpression()), !dbg !2624
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2610, metadata !DIExpression()), !dbg !2625
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2611, metadata !DIExpression()), !dbg !2626
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !2612, metadata !DIExpression()), !dbg !2627
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !2613, metadata !DIExpression()), !dbg !2628
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2614, metadata !DIExpression()), !dbg !2629
  call void @llvm.lifetime.start.p0(i64 16, ptr %m_thresh) #9, !dbg !2630
  tail call void @llvm.dbg.declare(metadata ptr %m_thresh, metadata !2615, metadata !DIExpression()), !dbg !2631
  %0 = load i32, ptr %thresh.addr, align 4, !dbg !2632, !tbaa !188
  %conv = trunc i32 %0 to i8, !dbg !2633
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %conv), !dbg !2634
  store <2 x i64> %call, ptr %m_thresh, align 16, !dbg !2631, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !2635
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !2616, metadata !DIExpression()), !dbg !2636
  %1 = load ptr, ptr %q1.addr, align 8, !dbg !2637, !tbaa !70
  %2 = load <2 x i64>, ptr %1, align 16, !dbg !2637, !tbaa !194
  %3 = load ptr, ptr %p1.addr, align 8, !dbg !2637, !tbaa !70
  %4 = load <2 x i64>, ptr %3, align 16, !dbg !2637, !tbaa !194
  %call1 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %2, <2 x i64> noundef %4), !dbg !2637
  %5 = load ptr, ptr %p1.addr, align 8, !dbg !2637, !tbaa !70
  %6 = load <2 x i64>, ptr %5, align 16, !dbg !2637, !tbaa !194
  %7 = load ptr, ptr %q1.addr, align 8, !dbg !2637, !tbaa !70
  %8 = load <2 x i64>, ptr %7, align 16, !dbg !2637, !tbaa !194
  %call2 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %6, <2 x i64> noundef %8), !dbg !2637
  %call3 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call1, <2 x i64> noundef %call2), !dbg !2637
  store <2 x i64> %call3, ptr %t1, align 16, !dbg !2636, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %kFE) #9, !dbg !2638
  tail call void @llvm.dbg.declare(metadata ptr %kFE, metadata !2617, metadata !DIExpression()), !dbg !2639
  %call4 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext -2), !dbg !2640
  store <2 x i64> %call4, ptr %kFE, align 16, !dbg !2639, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t2) #9, !dbg !2641
  tail call void @llvm.dbg.declare(metadata ptr %t2, metadata !2618, metadata !DIExpression()), !dbg !2642
  %9 = load <2 x i64>, ptr %t1, align 16, !dbg !2643, !tbaa !194
  %10 = load <2 x i64>, ptr %kFE, align 16, !dbg !2644, !tbaa !194
  %call5 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %9, <2 x i64> noundef %10), !dbg !2645
  store <2 x i64> %call5, ptr %t2, align 16, !dbg !2642, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t3) #9, !dbg !2646
  tail call void @llvm.dbg.declare(metadata ptr %t3, metadata !2619, metadata !DIExpression()), !dbg !2647
  %11 = load <2 x i64>, ptr %t2, align 16, !dbg !2648, !tbaa !194
  %call6 = call <2 x i64> @_mm_srli_epi16(<2 x i64> noundef %11, i32 noundef 1), !dbg !2649
  store <2 x i64> %call6, ptr %t3, align 16, !dbg !2647, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t4) #9, !dbg !2650
  tail call void @llvm.dbg.declare(metadata ptr %t4, metadata !2620, metadata !DIExpression()), !dbg !2651
  %12 = load ptr, ptr %q0.addr, align 8, !dbg !2652, !tbaa !70
  %13 = load <2 x i64>, ptr %12, align 16, !dbg !2652, !tbaa !194
  %14 = load ptr, ptr %p0.addr, align 8, !dbg !2652, !tbaa !70
  %15 = load <2 x i64>, ptr %14, align 16, !dbg !2652, !tbaa !194
  %call7 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %13, <2 x i64> noundef %15), !dbg !2652
  %16 = load ptr, ptr %p0.addr, align 8, !dbg !2652, !tbaa !70
  %17 = load <2 x i64>, ptr %16, align 16, !dbg !2652, !tbaa !194
  %18 = load ptr, ptr %q0.addr, align 8, !dbg !2652, !tbaa !70
  %19 = load <2 x i64>, ptr %18, align 16, !dbg !2652, !tbaa !194
  %call8 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %17, <2 x i64> noundef %19), !dbg !2652
  %call9 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call7, <2 x i64> noundef %call8), !dbg !2652
  store <2 x i64> %call9, ptr %t4, align 16, !dbg !2651, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t5) #9, !dbg !2653
  tail call void @llvm.dbg.declare(metadata ptr %t5, metadata !2621, metadata !DIExpression()), !dbg !2654
  %20 = load <2 x i64>, ptr %t4, align 16, !dbg !2655, !tbaa !194
  %21 = load <2 x i64>, ptr %t4, align 16, !dbg !2656, !tbaa !194
  %call10 = call <2 x i64> @_mm_adds_epu8(<2 x i64> noundef %20, <2 x i64> noundef %21), !dbg !2657
  store <2 x i64> %call10, ptr %t5, align 16, !dbg !2654, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t6) #9, !dbg !2658
  tail call void @llvm.dbg.declare(metadata ptr %t6, metadata !2622, metadata !DIExpression()), !dbg !2659
  %22 = load <2 x i64>, ptr %t5, align 16, !dbg !2660, !tbaa !194
  %23 = load <2 x i64>, ptr %t3, align 16, !dbg !2661, !tbaa !194
  %call11 = call <2 x i64> @_mm_adds_epu8(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !2662
  store <2 x i64> %call11, ptr %t6, align 16, !dbg !2659, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t7) #9, !dbg !2663
  tail call void @llvm.dbg.declare(metadata ptr %t7, metadata !2623, metadata !DIExpression()), !dbg !2664
  %24 = load <2 x i64>, ptr %t6, align 16, !dbg !2665, !tbaa !194
  %25 = load <2 x i64>, ptr %m_thresh, align 16, !dbg !2666, !tbaa !194
  %call12 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !2667
  store <2 x i64> %call12, ptr %t7, align 16, !dbg !2664, !tbaa !194
  %26 = load <2 x i64>, ptr %t7, align 16, !dbg !2668, !tbaa !194
  %call13 = call <2 x i64> @_mm_setzero_si128(), !dbg !2669
  %call14 = call <2 x i64> @_mm_cmpeq_epi8(<2 x i64> noundef %26, <2 x i64> noundef %call13), !dbg !2670
  %27 = load ptr, ptr %mask.addr, align 8, !dbg !2671, !tbaa !70
  store <2 x i64> %call14, ptr %27, align 16, !dbg !2672, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %t7) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %t6) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %t5) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %t4) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %t3) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %t2) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %kFE) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !2673
  call void @llvm.lifetime.end.p0(i64 16, ptr %m_thresh) #9, !dbg !2673
  ret void, !dbg !2673
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_and_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %and = and <2 x i64> %0, %1
  ret <2 x i64> %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi8(i8 noundef signext %__b15, i8 noundef signext %__b14, i8 noundef signext %__b13, i8 noundef signext %__b12, i8 noundef signext %__b11, i8 noundef signext %__b10, i8 noundef signext %__b9, i8 noundef signext %__b8, i8 noundef signext %__b7, i8 noundef signext %__b6, i8 noundef signext %__b5, i8 noundef signext %__b4, i8 noundef signext %__b3, i8 noundef signext %__b2, i8 noundef signext %__b1, i8 noundef signext %__b0) #3 {
entry:
  %__b15.addr = alloca i8, align 1
  %__b14.addr = alloca i8, align 1
  %__b13.addr = alloca i8, align 1
  %__b12.addr = alloca i8, align 1
  %__b11.addr = alloca i8, align 1
  %__b10.addr = alloca i8, align 1
  %__b9.addr = alloca i8, align 1
  %__b8.addr = alloca i8, align 1
  %__b7.addr = alloca i8, align 1
  %__b6.addr = alloca i8, align 1
  %__b5.addr = alloca i8, align 1
  %__b4.addr = alloca i8, align 1
  %__b3.addr = alloca i8, align 1
  %__b2.addr = alloca i8, align 1
  %__b1.addr = alloca i8, align 1
  %__b0.addr = alloca i8, align 1
  %.compoundliteral = alloca <16 x i8>, align 16
  store i8 %__b15, ptr %__b15.addr, align 1, !tbaa !194
  store i8 %__b14, ptr %__b14.addr, align 1, !tbaa !194
  store i8 %__b13, ptr %__b13.addr, align 1, !tbaa !194
  store i8 %__b12, ptr %__b12.addr, align 1, !tbaa !194
  store i8 %__b11, ptr %__b11.addr, align 1, !tbaa !194
  store i8 %__b10, ptr %__b10.addr, align 1, !tbaa !194
  store i8 %__b9, ptr %__b9.addr, align 1, !tbaa !194
  store i8 %__b8, ptr %__b8.addr, align 1, !tbaa !194
  store i8 %__b7, ptr %__b7.addr, align 1, !tbaa !194
  store i8 %__b6, ptr %__b6.addr, align 1, !tbaa !194
  store i8 %__b5, ptr %__b5.addr, align 1, !tbaa !194
  store i8 %__b4, ptr %__b4.addr, align 1, !tbaa !194
  store i8 %__b3, ptr %__b3.addr, align 1, !tbaa !194
  store i8 %__b2, ptr %__b2.addr, align 1, !tbaa !194
  store i8 %__b1, ptr %__b1.addr, align 1, !tbaa !194
  store i8 %__b0, ptr %__b0.addr, align 1, !tbaa !194
  %0 = load i8, ptr %__b0.addr, align 1, !tbaa !194
  %vecinit = insertelement <16 x i8> undef, i8 %0, i32 0
  %1 = load i8, ptr %__b1.addr, align 1, !tbaa !194
  %vecinit1 = insertelement <16 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %__b2.addr, align 1, !tbaa !194
  %vecinit2 = insertelement <16 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %__b3.addr, align 1, !tbaa !194
  %vecinit3 = insertelement <16 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %__b4.addr, align 1, !tbaa !194
  %vecinit4 = insertelement <16 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %__b5.addr, align 1, !tbaa !194
  %vecinit5 = insertelement <16 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %__b6.addr, align 1, !tbaa !194
  %vecinit6 = insertelement <16 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %__b7.addr, align 1, !tbaa !194
  %vecinit7 = insertelement <16 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, ptr %__b8.addr, align 1, !tbaa !194
  %vecinit8 = insertelement <16 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, ptr %__b9.addr, align 1, !tbaa !194
  %vecinit9 = insertelement <16 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, ptr %__b10.addr, align 1, !tbaa !194
  %vecinit10 = insertelement <16 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, ptr %__b11.addr, align 1, !tbaa !194
  %vecinit11 = insertelement <16 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, ptr %__b12.addr, align 1, !tbaa !194
  %vecinit12 = insertelement <16 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, ptr %__b13.addr, align 1, !tbaa !194
  %vecinit13 = insertelement <16 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, ptr %__b14.addr, align 1, !tbaa !194
  %vecinit14 = insertelement <16 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, ptr %__b15.addr, align 1, !tbaa !194
  %vecinit15 = insertelement <16 x i8> %vecinit14, i8 %15, i32 15
  store <16 x i8> %vecinit15, ptr %.compoundliteral, align 16, !tbaa !194
  %16 = load <16 x i8>, ptr %.compoundliteral, align 16, !tbaa !194
  %17 = bitcast <16 x i8> %16 to <2 x i64>
  ret <2 x i64> %17
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !188
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !188
  %3 = call <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.sat = call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16>, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @GetNotHEV_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %hev_thresh, ptr noundef %not_hev) #4 !dbg !2674 {
entry:
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %hev_thresh.addr = alloca i32, align 4
  %not_hev.addr = alloca ptr, align 8
  %zero = alloca <2 x i64>, align 16
  %t_1 = alloca <2 x i64>, align 16
  %t_2 = alloca <2 x i64>, align 16
  %h = alloca <2 x i64>, align 16
  %t_max = alloca <2 x i64>, align 16
  %t_max_h = alloca <2 x i64>, align 16
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2676, metadata !DIExpression()), !dbg !2688
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2677, metadata !DIExpression()), !dbg !2689
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2678, metadata !DIExpression()), !dbg !2690
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !2679, metadata !DIExpression()), !dbg !2691
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !2680, metadata !DIExpression()), !dbg !2692
  store ptr %not_hev, ptr %not_hev.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %not_hev.addr, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !2694
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !2682, metadata !DIExpression()), !dbg !2695
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !2696
  store <2 x i64> %call, ptr %zero, align 16, !dbg !2695, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t_1) #9, !dbg !2697
  tail call void @llvm.dbg.declare(metadata ptr %t_1, metadata !2683, metadata !DIExpression()), !dbg !2698
  %0 = load ptr, ptr %p0.addr, align 8, !dbg !2699, !tbaa !70
  %1 = load <2 x i64>, ptr %0, align 16, !dbg !2699, !tbaa !194
  %2 = load ptr, ptr %p1.addr, align 8, !dbg !2699, !tbaa !70
  %3 = load <2 x i64>, ptr %2, align 16, !dbg !2699, !tbaa !194
  %call1 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %1, <2 x i64> noundef %3), !dbg !2699
  %4 = load ptr, ptr %p1.addr, align 8, !dbg !2699, !tbaa !70
  %5 = load <2 x i64>, ptr %4, align 16, !dbg !2699, !tbaa !194
  %6 = load ptr, ptr %p0.addr, align 8, !dbg !2699, !tbaa !70
  %7 = load <2 x i64>, ptr %6, align 16, !dbg !2699, !tbaa !194
  %call2 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %5, <2 x i64> noundef %7), !dbg !2699
  %call3 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call1, <2 x i64> noundef %call2), !dbg !2699
  store <2 x i64> %call3, ptr %t_1, align 16, !dbg !2698, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t_2) #9, !dbg !2700
  tail call void @llvm.dbg.declare(metadata ptr %t_2, metadata !2684, metadata !DIExpression()), !dbg !2701
  %8 = load ptr, ptr %q0.addr, align 8, !dbg !2702, !tbaa !70
  %9 = load <2 x i64>, ptr %8, align 16, !dbg !2702, !tbaa !194
  %10 = load ptr, ptr %q1.addr, align 8, !dbg !2702, !tbaa !70
  %11 = load <2 x i64>, ptr %10, align 16, !dbg !2702, !tbaa !194
  %call4 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %9, <2 x i64> noundef %11), !dbg !2702
  %12 = load ptr, ptr %q1.addr, align 8, !dbg !2702, !tbaa !70
  %13 = load <2 x i64>, ptr %12, align 16, !dbg !2702, !tbaa !194
  %14 = load ptr, ptr %q0.addr, align 8, !dbg !2702, !tbaa !70
  %15 = load <2 x i64>, ptr %14, align 16, !dbg !2702, !tbaa !194
  %call5 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %13, <2 x i64> noundef %15), !dbg !2702
  %call6 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call4, <2 x i64> noundef %call5), !dbg !2702
  store <2 x i64> %call6, ptr %t_2, align 16, !dbg !2701, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %h) #9, !dbg !2703
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !2685, metadata !DIExpression()), !dbg !2704
  %16 = load i32, ptr %hev_thresh.addr, align 4, !dbg !2705, !tbaa !188
  %conv = trunc i32 %16 to i8, !dbg !2705
  %call7 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %conv), !dbg !2706
  store <2 x i64> %call7, ptr %h, align 16, !dbg !2704, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t_max) #9, !dbg !2707
  tail call void @llvm.dbg.declare(metadata ptr %t_max, metadata !2686, metadata !DIExpression()), !dbg !2708
  %17 = load <2 x i64>, ptr %t_1, align 16, !dbg !2709, !tbaa !194
  %18 = load <2 x i64>, ptr %t_2, align 16, !dbg !2710, !tbaa !194
  %call8 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %17, <2 x i64> noundef %18), !dbg !2711
  store <2 x i64> %call8, ptr %t_max, align 16, !dbg !2708, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t_max_h) #9, !dbg !2712
  tail call void @llvm.dbg.declare(metadata ptr %t_max_h, metadata !2687, metadata !DIExpression()), !dbg !2713
  %19 = load <2 x i64>, ptr %t_max, align 16, !dbg !2714, !tbaa !194
  %20 = load <2 x i64>, ptr %h, align 16, !dbg !2715, !tbaa !194
  %call9 = call <2 x i64> @_mm_subs_epu8(<2 x i64> noundef %19, <2 x i64> noundef %20), !dbg !2716
  store <2 x i64> %call9, ptr %t_max_h, align 16, !dbg !2713, !tbaa !194
  %21 = load <2 x i64>, ptr %t_max_h, align 16, !dbg !2717, !tbaa !194
  %22 = load <2 x i64>, ptr %zero, align 16, !dbg !2718, !tbaa !194
  %call10 = call <2 x i64> @_mm_cmpeq_epi8(<2 x i64> noundef %21, <2 x i64> noundef %22), !dbg !2719
  %23 = load ptr, ptr %not_hev.addr, align 8, !dbg !2720, !tbaa !70
  store <2 x i64> %call10, ptr %23, align 16, !dbg !2721, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %t_max_h) #9, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 16, ptr %t_max) #9, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 16, ptr %h) #9, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 16, ptr %t_2) #9, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 16, ptr %t_1) #9, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !2722
  ret void, !dbg !2722
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_xor_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %xor = xor <2 x i64> %0, %1
  ret <2 x i64> %xor
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @GetBaseDelta_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %delta) #4 !dbg !2723 {
entry:
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %delta.addr = alloca ptr, align 8
  %p1_q1 = alloca <2 x i64>, align 16
  %q0_p0 = alloca <2 x i64>, align 16
  %s1 = alloca <2 x i64>, align 16
  %s2 = alloca <2 x i64>, align 16
  %s3 = alloca <2 x i64>, align 16
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2727, metadata !DIExpression()), !dbg !2737
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2728, metadata !DIExpression()), !dbg !2738
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2729, metadata !DIExpression()), !dbg !2739
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !2730, metadata !DIExpression()), !dbg !2740
  store ptr %delta, ptr %delta.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !2731, metadata !DIExpression()), !dbg !2741
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1_q1) #9, !dbg !2742
  tail call void @llvm.dbg.declare(metadata ptr %p1_q1, metadata !2732, metadata !DIExpression()), !dbg !2743
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !2744, !tbaa !70
  %1 = load <2 x i64>, ptr %0, align 16, !dbg !2745, !tbaa !194
  %2 = load ptr, ptr %q1.addr, align 8, !dbg !2746, !tbaa !70
  %3 = load <2 x i64>, ptr %2, align 16, !dbg !2747, !tbaa !194
  %call = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %1, <2 x i64> noundef %3), !dbg !2748
  store <2 x i64> %call, ptr %p1_q1, align 16, !dbg !2743, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0_p0) #9, !dbg !2749
  tail call void @llvm.dbg.declare(metadata ptr %q0_p0, metadata !2733, metadata !DIExpression()), !dbg !2750
  %4 = load ptr, ptr %q0.addr, align 8, !dbg !2751, !tbaa !70
  %5 = load <2 x i64>, ptr %4, align 16, !dbg !2752, !tbaa !194
  %6 = load ptr, ptr %p0.addr, align 8, !dbg !2753, !tbaa !70
  %7 = load <2 x i64>, ptr %6, align 16, !dbg !2754, !tbaa !194
  %call1 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %5, <2 x i64> noundef %7), !dbg !2755
  store <2 x i64> %call1, ptr %q0_p0, align 16, !dbg !2750, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %s1) #9, !dbg !2756
  tail call void @llvm.dbg.declare(metadata ptr %s1, metadata !2734, metadata !DIExpression()), !dbg !2757
  %8 = load <2 x i64>, ptr %p1_q1, align 16, !dbg !2758, !tbaa !194
  %9 = load <2 x i64>, ptr %q0_p0, align 16, !dbg !2759, !tbaa !194
  %call2 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %8, <2 x i64> noundef %9), !dbg !2760
  store <2 x i64> %call2, ptr %s1, align 16, !dbg !2757, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %s2) #9, !dbg !2761
  tail call void @llvm.dbg.declare(metadata ptr %s2, metadata !2735, metadata !DIExpression()), !dbg !2762
  %10 = load <2 x i64>, ptr %q0_p0, align 16, !dbg !2763, !tbaa !194
  %11 = load <2 x i64>, ptr %s1, align 16, !dbg !2764, !tbaa !194
  %call3 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !2765
  store <2 x i64> %call3, ptr %s2, align 16, !dbg !2762, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %s3) #9, !dbg !2766
  tail call void @llvm.dbg.declare(metadata ptr %s3, metadata !2736, metadata !DIExpression()), !dbg !2767
  %12 = load <2 x i64>, ptr %q0_p0, align 16, !dbg !2768, !tbaa !194
  %13 = load <2 x i64>, ptr %s2, align 16, !dbg !2769, !tbaa !194
  %call4 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %12, <2 x i64> noundef %13), !dbg !2770
  store <2 x i64> %call4, ptr %s3, align 16, !dbg !2767, !tbaa !194
  %14 = load <2 x i64>, ptr %s3, align 16, !dbg !2771, !tbaa !194
  %15 = load ptr, ptr %delta.addr, align 8, !dbg !2772, !tbaa !70
  store <2 x i64> %14, ptr %15, align 16, !dbg !2773, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %s3) #9, !dbg !2774
  call void @llvm.lifetime.end.p0(i64 16, ptr %s2) #9, !dbg !2774
  call void @llvm.lifetime.end.p0(i64 16, ptr %s1) #9, !dbg !2774
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0_p0) #9, !dbg !2774
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1_q1) #9, !dbg !2774
  ret void, !dbg !2774
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_andnot_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %not = xor <2 x i64> %0, <i64 -1, i64 -1>
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %and = and <2 x i64> %not, %1
  ret <2 x i64> %and
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DoSimpleFilter_SSE2(ptr noundef %p0, ptr noundef %q0, ptr noundef %fl) #4 !dbg !2775 {
entry:
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %fl.addr = alloca ptr, align 8
  %k3 = alloca <2 x i64>, align 16
  %k4 = alloca <2 x i64>, align 16
  %v3 = alloca <2 x i64>, align 16
  %v4 = alloca <2 x i64>, align 16
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2779, metadata !DIExpression()), !dbg !2786
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2780, metadata !DIExpression()), !dbg !2787
  store ptr %fl, ptr %fl.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %fl.addr, metadata !2781, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 16, ptr %k3) #9, !dbg !2789
  tail call void @llvm.dbg.declare(metadata ptr %k3, metadata !2782, metadata !DIExpression()), !dbg !2790
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 3), !dbg !2791
  store <2 x i64> %call, ptr %k3, align 16, !dbg !2790, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %k4) #9, !dbg !2792
  tail call void @llvm.dbg.declare(metadata ptr %k4, metadata !2783, metadata !DIExpression()), !dbg !2793
  %call1 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 4), !dbg !2794
  store <2 x i64> %call1, ptr %k4, align 16, !dbg !2793, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %v3) #9, !dbg !2795
  tail call void @llvm.dbg.declare(metadata ptr %v3, metadata !2784, metadata !DIExpression()), !dbg !2796
  %0 = load ptr, ptr %fl.addr, align 8, !dbg !2797, !tbaa !70
  %1 = load <2 x i64>, ptr %0, align 16, !dbg !2798, !tbaa !194
  %2 = load <2 x i64>, ptr %k3, align 16, !dbg !2799, !tbaa !194
  %call2 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %1, <2 x i64> noundef %2), !dbg !2800
  store <2 x i64> %call2, ptr %v3, align 16, !dbg !2796, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %v4) #9, !dbg !2801
  tail call void @llvm.dbg.declare(metadata ptr %v4, metadata !2785, metadata !DIExpression()), !dbg !2802
  %3 = load ptr, ptr %fl.addr, align 8, !dbg !2803, !tbaa !70
  %4 = load <2 x i64>, ptr %3, align 16, !dbg !2804, !tbaa !194
  %5 = load <2 x i64>, ptr %k4, align 16, !dbg !2805, !tbaa !194
  %call3 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %4, <2 x i64> noundef %5), !dbg !2806
  store <2 x i64> %call3, ptr %v4, align 16, !dbg !2802, !tbaa !194
  call void @SignedShift8b_SSE2(ptr noundef %v4), !dbg !2807
  call void @SignedShift8b_SSE2(ptr noundef %v3), !dbg !2808
  %6 = load ptr, ptr %q0.addr, align 8, !dbg !2809, !tbaa !70
  %7 = load <2 x i64>, ptr %6, align 16, !dbg !2810, !tbaa !194
  %8 = load <2 x i64>, ptr %v4, align 16, !dbg !2811, !tbaa !194
  %call4 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %7, <2 x i64> noundef %8), !dbg !2812
  %9 = load ptr, ptr %q0.addr, align 8, !dbg !2813, !tbaa !70
  store <2 x i64> %call4, ptr %9, align 16, !dbg !2814, !tbaa !194
  %10 = load ptr, ptr %p0.addr, align 8, !dbg !2815, !tbaa !70
  %11 = load <2 x i64>, ptr %10, align 16, !dbg !2816, !tbaa !194
  %12 = load <2 x i64>, ptr %v3, align 16, !dbg !2817, !tbaa !194
  %call5 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %11, <2 x i64> noundef %12), !dbg !2818
  %13 = load ptr, ptr %p0.addr, align 8, !dbg !2819, !tbaa !70
  store <2 x i64> %call5, ptr %13, align 16, !dbg !2820, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %v4) #9, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 16, ptr %v3) #9, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 16, ptr %k4) #9, !dbg !2821
  call void @llvm.lifetime.end.p0(i64 16, ptr %k3) #9, !dbg !2821
  ret void, !dbg !2821
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Update2Pixels_SSE2(ptr noundef %pi, ptr noundef %qi, ptr noundef %a0_lo, ptr noundef %a0_hi) #4 !dbg !2822 {
entry:
  %pi.addr = alloca ptr, align 8
  %qi.addr = alloca ptr, align 8
  %a0_lo.addr = alloca ptr, align 8
  %a0_hi.addr = alloca ptr, align 8
  %a1_lo = alloca <2 x i64>, align 16
  %a1_hi = alloca <2 x i64>, align 16
  %delta = alloca <2 x i64>, align 16
  %sign_bit = alloca <2 x i64>, align 16
  store ptr %pi, ptr %pi.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %pi.addr, metadata !2826, metadata !DIExpression()), !dbg !2834
  store ptr %qi, ptr %qi.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %qi.addr, metadata !2827, metadata !DIExpression()), !dbg !2835
  store ptr %a0_lo, ptr %a0_lo.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %a0_lo.addr, metadata !2828, metadata !DIExpression()), !dbg !2836
  store ptr %a0_hi, ptr %a0_hi.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %a0_hi.addr, metadata !2829, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.start.p0(i64 16, ptr %a1_lo) #9, !dbg !2838
  tail call void @llvm.dbg.declare(metadata ptr %a1_lo, metadata !2830, metadata !DIExpression()), !dbg !2839
  %0 = load ptr, ptr %a0_lo.addr, align 8, !dbg !2840, !tbaa !70
  %1 = load <2 x i64>, ptr %0, align 16, !dbg !2841, !tbaa !194
  %call = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %1, i32 noundef 7), !dbg !2842
  store <2 x i64> %call, ptr %a1_lo, align 16, !dbg !2839, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %a1_hi) #9, !dbg !2843
  tail call void @llvm.dbg.declare(metadata ptr %a1_hi, metadata !2831, metadata !DIExpression()), !dbg !2844
  %2 = load ptr, ptr %a0_hi.addr, align 8, !dbg !2845, !tbaa !70
  %3 = load <2 x i64>, ptr %2, align 16, !dbg !2846, !tbaa !194
  %call1 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %3, i32 noundef 7), !dbg !2847
  store <2 x i64> %call1, ptr %a1_hi, align 16, !dbg !2844, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %delta) #9, !dbg !2848
  tail call void @llvm.dbg.declare(metadata ptr %delta, metadata !2832, metadata !DIExpression()), !dbg !2849
  %4 = load <2 x i64>, ptr %a1_lo, align 16, !dbg !2850, !tbaa !194
  %5 = load <2 x i64>, ptr %a1_hi, align 16, !dbg !2851, !tbaa !194
  %call2 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %4, <2 x i64> noundef %5), !dbg !2852
  store <2 x i64> %call2, ptr %delta, align 16, !dbg !2849, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sign_bit) #9, !dbg !2853
  tail call void @llvm.dbg.declare(metadata ptr %sign_bit, metadata !2833, metadata !DIExpression()), !dbg !2854
  %call3 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext -128), !dbg !2855
  store <2 x i64> %call3, ptr %sign_bit, align 16, !dbg !2854, !tbaa !194
  %6 = load ptr, ptr %pi.addr, align 8, !dbg !2856, !tbaa !70
  %7 = load <2 x i64>, ptr %6, align 16, !dbg !2857, !tbaa !194
  %8 = load <2 x i64>, ptr %delta, align 16, !dbg !2858, !tbaa !194
  %call4 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %7, <2 x i64> noundef %8), !dbg !2859
  %9 = load ptr, ptr %pi.addr, align 8, !dbg !2860, !tbaa !70
  store <2 x i64> %call4, ptr %9, align 16, !dbg !2861, !tbaa !194
  %10 = load ptr, ptr %qi.addr, align 8, !dbg !2862, !tbaa !70
  %11 = load <2 x i64>, ptr %10, align 16, !dbg !2863, !tbaa !194
  %12 = load <2 x i64>, ptr %delta, align 16, !dbg !2864, !tbaa !194
  %call5 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %11, <2 x i64> noundef %12), !dbg !2865
  %13 = load ptr, ptr %qi.addr, align 8, !dbg !2866, !tbaa !70
  store <2 x i64> %call5, ptr %13, align 16, !dbg !2867, !tbaa !194
  %14 = load ptr, ptr %pi.addr, align 8, !dbg !2868, !tbaa !70
  %15 = load <2 x i64>, ptr %14, align 16, !dbg !2868, !tbaa !194
  %16 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2868, !tbaa !194
  %call6 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %15, <2 x i64> noundef %16), !dbg !2868
  %17 = load ptr, ptr %pi.addr, align 8, !dbg !2868, !tbaa !70
  store <2 x i64> %call6, ptr %17, align 16, !dbg !2868, !tbaa !194
  %18 = load ptr, ptr %qi.addr, align 8, !dbg !2868, !tbaa !70
  %19 = load <2 x i64>, ptr %18, align 16, !dbg !2868, !tbaa !194
  %20 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !2868, !tbaa !194
  %call7 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %19, <2 x i64> noundef %20), !dbg !2868
  %21 = load ptr, ptr %qi.addr, align 8, !dbg !2868, !tbaa !70
  store <2 x i64> %call7, ptr %21, align 16, !dbg !2868, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %sign_bit) #9, !dbg !2870
  call void @llvm.lifetime.end.p0(i64 16, ptr %delta) #9, !dbg !2870
  call void @llvm.lifetime.end.p0(i64 16, ptr %a1_hi) #9, !dbg !2870
  call void @llvm.lifetime.end.p0(i64 16, ptr %a1_lo) #9, !dbg !2870
  ret void, !dbg !2870
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.sat = call <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.sat = call <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @SignedShift8b_SSE2(ptr noundef %x) #4 !dbg !2871 {
entry:
  %x.addr = alloca ptr, align 8
  %zero = alloca <2 x i64>, align 16
  %lo_0 = alloca <2 x i64>, align 16
  %hi_0 = alloca <2 x i64>, align 16
  %lo_1 = alloca <2 x i64>, align 16
  %hi_1 = alloca <2 x i64>, align 16
  store ptr %x, ptr %x.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2875, metadata !DIExpression()), !dbg !2881
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !2882
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !2876, metadata !DIExpression()), !dbg !2883
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !2884
  store <2 x i64> %call, ptr %zero, align 16, !dbg !2883, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lo_0) #9, !dbg !2885
  tail call void @llvm.dbg.declare(metadata ptr %lo_0, metadata !2877, metadata !DIExpression()), !dbg !2886
  %0 = load <2 x i64>, ptr %zero, align 16, !dbg !2887, !tbaa !194
  %1 = load ptr, ptr %x.addr, align 8, !dbg !2888, !tbaa !70
  %2 = load <2 x i64>, ptr %1, align 16, !dbg !2889, !tbaa !194
  %call1 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %0, <2 x i64> noundef %2), !dbg !2890
  store <2 x i64> %call1, ptr %lo_0, align 16, !dbg !2886, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %hi_0) #9, !dbg !2891
  tail call void @llvm.dbg.declare(metadata ptr %hi_0, metadata !2878, metadata !DIExpression()), !dbg !2892
  %3 = load <2 x i64>, ptr %zero, align 16, !dbg !2893, !tbaa !194
  %4 = load ptr, ptr %x.addr, align 8, !dbg !2894, !tbaa !70
  %5 = load <2 x i64>, ptr %4, align 16, !dbg !2895, !tbaa !194
  %call2 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %3, <2 x i64> noundef %5), !dbg !2896
  store <2 x i64> %call2, ptr %hi_0, align 16, !dbg !2892, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %lo_1) #9, !dbg !2897
  tail call void @llvm.dbg.declare(metadata ptr %lo_1, metadata !2879, metadata !DIExpression()), !dbg !2898
  %6 = load <2 x i64>, ptr %lo_0, align 16, !dbg !2899, !tbaa !194
  %call3 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %6, i32 noundef 11), !dbg !2900
  store <2 x i64> %call3, ptr %lo_1, align 16, !dbg !2898, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %hi_1) #9, !dbg !2901
  tail call void @llvm.dbg.declare(metadata ptr %hi_1, metadata !2880, metadata !DIExpression()), !dbg !2902
  %7 = load <2 x i64>, ptr %hi_0, align 16, !dbg !2903, !tbaa !194
  %call4 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %7, i32 noundef 11), !dbg !2904
  store <2 x i64> %call4, ptr %hi_1, align 16, !dbg !2902, !tbaa !194
  %8 = load <2 x i64>, ptr %lo_1, align 16, !dbg !2905, !tbaa !194
  %9 = load <2 x i64>, ptr %hi_1, align 16, !dbg !2906, !tbaa !194
  %call5 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %8, <2 x i64> noundef %9), !dbg !2907
  %10 = load ptr, ptr %x.addr, align 8, !dbg !2908, !tbaa !70
  store <2 x i64> %call5, ptr %10, align 16, !dbg !2909, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %hi_1) #9, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 16, ptr %lo_1) #9, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 16, ptr %hi_0) #9, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 16, ptr %lo_0) #9, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !2910
  ret void, !dbg !2910
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @Load16x4_SSE2(ptr noundef %r0, ptr noundef %r8, i32 noundef %stride, ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1) #4 !dbg !2911 {
entry:
  %r0.addr = alloca ptr, align 8
  %r8.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %t1 = alloca <2 x i64>, align 16
  %t2 = alloca <2 x i64>, align 16
  store ptr %r0, ptr %r0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %r0.addr, metadata !2915, metadata !DIExpression()), !dbg !2925
  store ptr %r8, ptr %r8.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %r8.addr, metadata !2916, metadata !DIExpression()), !dbg !2926
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !2917, metadata !DIExpression()), !dbg !2927
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2918, metadata !DIExpression()), !dbg !2928
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2919, metadata !DIExpression()), !dbg !2929
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2920, metadata !DIExpression()), !dbg !2930
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !2921, metadata !DIExpression()), !dbg !2931
  %0 = load ptr, ptr %r0.addr, align 8, !dbg !2932, !tbaa !70
  %1 = load i32, ptr %stride.addr, align 4, !dbg !2933, !tbaa !188
  %2 = load ptr, ptr %p1.addr, align 8, !dbg !2934, !tbaa !70
  %3 = load ptr, ptr %q0.addr, align 8, !dbg !2935, !tbaa !70
  call void @Load8x4_SSE2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2936
  %4 = load ptr, ptr %r8.addr, align 8, !dbg !2937, !tbaa !70
  %5 = load i32, ptr %stride.addr, align 4, !dbg !2938, !tbaa !188
  %6 = load ptr, ptr %p0.addr, align 8, !dbg !2939, !tbaa !70
  %7 = load ptr, ptr %q1.addr, align 8, !dbg !2940, !tbaa !70
  call void @Load8x4_SSE2(ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7), !dbg !2941
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !2942
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !2922, metadata !DIExpression()), !dbg !2943
  %8 = load ptr, ptr %p1.addr, align 8, !dbg !2944, !tbaa !70
  %9 = load <2 x i64>, ptr %8, align 16, !dbg !2945, !tbaa !194
  store <2 x i64> %9, ptr %t1, align 16, !dbg !2943, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %t2) #9, !dbg !2946
  tail call void @llvm.dbg.declare(metadata ptr %t2, metadata !2924, metadata !DIExpression()), !dbg !2947
  %10 = load ptr, ptr %q0.addr, align 8, !dbg !2948, !tbaa !70
  %11 = load <2 x i64>, ptr %10, align 16, !dbg !2949, !tbaa !194
  store <2 x i64> %11, ptr %t2, align 16, !dbg !2947, !tbaa !194
  %12 = load <2 x i64>, ptr %t1, align 16, !dbg !2950, !tbaa !194
  %13 = load ptr, ptr %p0.addr, align 8, !dbg !2951, !tbaa !70
  %14 = load <2 x i64>, ptr %13, align 16, !dbg !2952, !tbaa !194
  %call = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %12, <2 x i64> noundef %14), !dbg !2953
  %15 = load ptr, ptr %p1.addr, align 8, !dbg !2954, !tbaa !70
  store <2 x i64> %call, ptr %15, align 16, !dbg !2955, !tbaa !194
  %16 = load <2 x i64>, ptr %t1, align 16, !dbg !2956, !tbaa !194
  %17 = load ptr, ptr %p0.addr, align 8, !dbg !2957, !tbaa !70
  %18 = load <2 x i64>, ptr %17, align 16, !dbg !2958, !tbaa !194
  %call1 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %16, <2 x i64> noundef %18), !dbg !2959
  %19 = load ptr, ptr %p0.addr, align 8, !dbg !2960, !tbaa !70
  store <2 x i64> %call1, ptr %19, align 16, !dbg !2961, !tbaa !194
  %20 = load <2 x i64>, ptr %t2, align 16, !dbg !2962, !tbaa !194
  %21 = load ptr, ptr %q1.addr, align 8, !dbg !2963, !tbaa !70
  %22 = load <2 x i64>, ptr %21, align 16, !dbg !2964, !tbaa !194
  %call2 = call <2 x i64> @_mm_unpacklo_epi64(<2 x i64> noundef %20, <2 x i64> noundef %22), !dbg !2965
  %23 = load ptr, ptr %q0.addr, align 8, !dbg !2966, !tbaa !70
  store <2 x i64> %call2, ptr %23, align 16, !dbg !2967, !tbaa !194
  %24 = load <2 x i64>, ptr %t2, align 16, !dbg !2968, !tbaa !194
  %25 = load ptr, ptr %q1.addr, align 8, !dbg !2969, !tbaa !70
  %26 = load <2 x i64>, ptr %25, align 16, !dbg !2970, !tbaa !194
  %call3 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %24, <2 x i64> noundef %26), !dbg !2971
  %27 = load ptr, ptr %q1.addr, align 8, !dbg !2972, !tbaa !70
  store <2 x i64> %call3, ptr %27, align 16, !dbg !2973, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %t2) #9, !dbg !2974
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !2974
  ret void, !dbg !2975
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Store16x4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %r0, ptr noundef %r8, i32 noundef %stride) #4 !dbg !2976 {
entry:
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %r0.addr = alloca ptr, align 8
  %r8.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %t1 = alloca <2 x i64>, align 16
  %p1_s = alloca <2 x i64>, align 16
  %p0_s = alloca <2 x i64>, align 16
  %q0_s = alloca <2 x i64>, align 16
  %q1_s = alloca <2 x i64>, align 16
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !2980, metadata !DIExpression()), !dbg !2992
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !2981, metadata !DIExpression()), !dbg !2993
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !2982, metadata !DIExpression()), !dbg !2994
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !2983, metadata !DIExpression()), !dbg !2995
  store ptr %r0, ptr %r0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %r0.addr, metadata !2984, metadata !DIExpression()), !dbg !2996
  store ptr %r8, ptr %r8.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %r8.addr, metadata !2985, metadata !DIExpression()), !dbg !2997
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !2986, metadata !DIExpression()), !dbg !2998
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !2999
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !2987, metadata !DIExpression()), !dbg !3000
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1_s) #9, !dbg !2999
  tail call void @llvm.dbg.declare(metadata ptr %p1_s, metadata !2988, metadata !DIExpression()), !dbg !3001
  call void @llvm.lifetime.start.p0(i64 16, ptr %p0_s) #9, !dbg !2999
  tail call void @llvm.dbg.declare(metadata ptr %p0_s, metadata !2989, metadata !DIExpression()), !dbg !3002
  call void @llvm.lifetime.start.p0(i64 16, ptr %q0_s) #9, !dbg !2999
  tail call void @llvm.dbg.declare(metadata ptr %q0_s, metadata !2990, metadata !DIExpression()), !dbg !3003
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1_s) #9, !dbg !2999
  tail call void @llvm.dbg.declare(metadata ptr %q1_s, metadata !2991, metadata !DIExpression()), !dbg !3004
  %0 = load ptr, ptr %p0.addr, align 8, !dbg !3005, !tbaa !70
  %1 = load <2 x i64>, ptr %0, align 16, !dbg !3006, !tbaa !194
  store <2 x i64> %1, ptr %t1, align 16, !dbg !3007, !tbaa !194
  %2 = load ptr, ptr %p1.addr, align 8, !dbg !3008, !tbaa !70
  %3 = load <2 x i64>, ptr %2, align 16, !dbg !3009, !tbaa !194
  %4 = load <2 x i64>, ptr %t1, align 16, !dbg !3010, !tbaa !194
  %call = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %3, <2 x i64> noundef %4), !dbg !3011
  store <2 x i64> %call, ptr %p0_s, align 16, !dbg !3012, !tbaa !194
  %5 = load ptr, ptr %p1.addr, align 8, !dbg !3013, !tbaa !70
  %6 = load <2 x i64>, ptr %5, align 16, !dbg !3014, !tbaa !194
  %7 = load <2 x i64>, ptr %t1, align 16, !dbg !3015, !tbaa !194
  %call1 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %6, <2 x i64> noundef %7), !dbg !3016
  store <2 x i64> %call1, ptr %p1_s, align 16, !dbg !3017, !tbaa !194
  %8 = load ptr, ptr %q0.addr, align 8, !dbg !3018, !tbaa !70
  %9 = load <2 x i64>, ptr %8, align 16, !dbg !3019, !tbaa !194
  store <2 x i64> %9, ptr %t1, align 16, !dbg !3020, !tbaa !194
  %10 = load <2 x i64>, ptr %t1, align 16, !dbg !3021, !tbaa !194
  %11 = load ptr, ptr %q1.addr, align 8, !dbg !3022, !tbaa !70
  %12 = load <2 x i64>, ptr %11, align 16, !dbg !3023, !tbaa !194
  %call2 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %10, <2 x i64> noundef %12), !dbg !3024
  store <2 x i64> %call2, ptr %q0_s, align 16, !dbg !3025, !tbaa !194
  %13 = load <2 x i64>, ptr %t1, align 16, !dbg !3026, !tbaa !194
  %14 = load ptr, ptr %q1.addr, align 8, !dbg !3027, !tbaa !70
  %15 = load <2 x i64>, ptr %14, align 16, !dbg !3028, !tbaa !194
  %call3 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %13, <2 x i64> noundef %15), !dbg !3029
  store <2 x i64> %call3, ptr %q1_s, align 16, !dbg !3030, !tbaa !194
  %16 = load <2 x i64>, ptr %p0_s, align 16, !dbg !3031, !tbaa !194
  store <2 x i64> %16, ptr %t1, align 16, !dbg !3032, !tbaa !194
  %17 = load <2 x i64>, ptr %t1, align 16, !dbg !3033, !tbaa !194
  %18 = load <2 x i64>, ptr %q0_s, align 16, !dbg !3034, !tbaa !194
  %call4 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %17, <2 x i64> noundef %18), !dbg !3035
  store <2 x i64> %call4, ptr %p0_s, align 16, !dbg !3036, !tbaa !194
  %19 = load <2 x i64>, ptr %t1, align 16, !dbg !3037, !tbaa !194
  %20 = load <2 x i64>, ptr %q0_s, align 16, !dbg !3038, !tbaa !194
  %call5 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %19, <2 x i64> noundef %20), !dbg !3039
  store <2 x i64> %call5, ptr %q0_s, align 16, !dbg !3040, !tbaa !194
  %21 = load <2 x i64>, ptr %p1_s, align 16, !dbg !3041, !tbaa !194
  store <2 x i64> %21, ptr %t1, align 16, !dbg !3042, !tbaa !194
  %22 = load <2 x i64>, ptr %t1, align 16, !dbg !3043, !tbaa !194
  %23 = load <2 x i64>, ptr %q1_s, align 16, !dbg !3044, !tbaa !194
  %call6 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !3045
  store <2 x i64> %call6, ptr %p1_s, align 16, !dbg !3046, !tbaa !194
  %24 = load <2 x i64>, ptr %t1, align 16, !dbg !3047, !tbaa !194
  %25 = load <2 x i64>, ptr %q1_s, align 16, !dbg !3048, !tbaa !194
  %call7 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !3049
  store <2 x i64> %call7, ptr %q1_s, align 16, !dbg !3050, !tbaa !194
  %26 = load ptr, ptr %r0.addr, align 8, !dbg !3051, !tbaa !70
  %27 = load i32, ptr %stride.addr, align 4, !dbg !3052, !tbaa !188
  call void @Store4x4_SSE2(ptr noundef %p0_s, ptr noundef %26, i32 noundef %27), !dbg !3053
  %28 = load i32, ptr %stride.addr, align 4, !dbg !3054, !tbaa !188
  %mul = mul nsw i32 4, %28, !dbg !3055
  %29 = load ptr, ptr %r0.addr, align 8, !dbg !3056, !tbaa !70
  %idx.ext = sext i32 %mul to i64, !dbg !3056
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %idx.ext, !dbg !3056
  store ptr %add.ptr, ptr %r0.addr, align 8, !dbg !3056, !tbaa !70
  %30 = load ptr, ptr %r0.addr, align 8, !dbg !3057, !tbaa !70
  %31 = load i32, ptr %stride.addr, align 4, !dbg !3058, !tbaa !188
  call void @Store4x4_SSE2(ptr noundef %q0_s, ptr noundef %30, i32 noundef %31), !dbg !3059
  %32 = load ptr, ptr %r8.addr, align 8, !dbg !3060, !tbaa !70
  %33 = load i32, ptr %stride.addr, align 4, !dbg !3061, !tbaa !188
  call void @Store4x4_SSE2(ptr noundef %p1_s, ptr noundef %32, i32 noundef %33), !dbg !3062
  %34 = load i32, ptr %stride.addr, align 4, !dbg !3063, !tbaa !188
  %mul8 = mul nsw i32 4, %34, !dbg !3064
  %35 = load ptr, ptr %r8.addr, align 8, !dbg !3065, !tbaa !70
  %idx.ext9 = sext i32 %mul8 to i64, !dbg !3065
  %add.ptr10 = getelementptr inbounds i8, ptr %35, i64 %idx.ext9, !dbg !3065
  store ptr %add.ptr10, ptr %r8.addr, align 8, !dbg !3065, !tbaa !70
  %36 = load ptr, ptr %r8.addr, align 8, !dbg !3066, !tbaa !70
  %37 = load i32, ptr %stride.addr, align 4, !dbg !3067, !tbaa !188
  call void @Store4x4_SSE2(ptr noundef %q1_s, ptr noundef %36, i32 noundef %37), !dbg !3068
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1_s) #9, !dbg !3069
  call void @llvm.lifetime.end.p0(i64 16, ptr %q0_s) #9, !dbg !3069
  call void @llvm.lifetime.end.p0(i64 16, ptr %p0_s) #9, !dbg !3069
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1_s) #9, !dbg !3069
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !3069
  ret void, !dbg !3069
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Load8x4_SSE2(ptr noundef %b, i32 noundef %stride, ptr noundef %p, ptr noundef %q) #4 !dbg !3070 {
entry:
  %b.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %A0 = alloca <2 x i64>, align 16
  %A1 = alloca <2 x i64>, align 16
  %B0 = alloca <2 x i64>, align 16
  %B1 = alloca <2 x i64>, align 16
  %C0 = alloca <2 x i64>, align 16
  %C1 = alloca <2 x i64>, align 16
  store ptr %b, ptr %b.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !3074, metadata !DIExpression()), !dbg !3084
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !3075, metadata !DIExpression()), !dbg !3085
  store ptr %p, ptr %p.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3076, metadata !DIExpression()), !dbg !3086
  store ptr %q, ptr %q.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !3077, metadata !DIExpression()), !dbg !3087
  call void @llvm.lifetime.start.p0(i64 16, ptr %A0) #9, !dbg !3088
  tail call void @llvm.dbg.declare(metadata ptr %A0, metadata !3078, metadata !DIExpression()), !dbg !3089
  %0 = load ptr, ptr %b.addr, align 8, !dbg !3090, !tbaa !70
  %1 = load i32, ptr %stride.addr, align 4, !dbg !3091, !tbaa !188
  %mul = mul nsw i32 6, %1, !dbg !3092
  %idxprom = sext i32 %mul to i64, !dbg !3090
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !3090
  %call = call i32 @WebPMemToUint32(ptr noundef %arrayidx), !dbg !3093
  %2 = load ptr, ptr %b.addr, align 8, !dbg !3094, !tbaa !70
  %3 = load i32, ptr %stride.addr, align 4, !dbg !3095, !tbaa !188
  %mul1 = mul nsw i32 2, %3, !dbg !3096
  %idxprom2 = sext i32 %mul1 to i64, !dbg !3094
  %arrayidx3 = getelementptr inbounds i8, ptr %2, i64 %idxprom2, !dbg !3094
  %call4 = call i32 @WebPMemToUint32(ptr noundef %arrayidx3), !dbg !3097
  %4 = load ptr, ptr %b.addr, align 8, !dbg !3098, !tbaa !70
  %5 = load i32, ptr %stride.addr, align 4, !dbg !3099, !tbaa !188
  %mul5 = mul nsw i32 4, %5, !dbg !3100
  %idxprom6 = sext i32 %mul5 to i64, !dbg !3098
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 %idxprom6, !dbg !3098
  %call8 = call i32 @WebPMemToUint32(ptr noundef %arrayidx7), !dbg !3101
  %6 = load ptr, ptr %b.addr, align 8, !dbg !3102, !tbaa !70
  %7 = load i32, ptr %stride.addr, align 4, !dbg !3103, !tbaa !188
  %mul9 = mul nsw i32 0, %7, !dbg !3104
  %idxprom10 = sext i32 %mul9 to i64, !dbg !3102
  %arrayidx11 = getelementptr inbounds i8, ptr %6, i64 %idxprom10, !dbg !3102
  %call12 = call i32 @WebPMemToUint32(ptr noundef %arrayidx11), !dbg !3105
  %call13 = call <2 x i64> @_mm_set_epi32(i32 noundef %call, i32 noundef %call4, i32 noundef %call8, i32 noundef %call12), !dbg !3106
  store <2 x i64> %call13, ptr %A0, align 16, !dbg !3089, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %A1) #9, !dbg !3107
  tail call void @llvm.dbg.declare(metadata ptr %A1, metadata !3079, metadata !DIExpression()), !dbg !3108
  %8 = load ptr, ptr %b.addr, align 8, !dbg !3109, !tbaa !70
  %9 = load i32, ptr %stride.addr, align 4, !dbg !3110, !tbaa !188
  %mul14 = mul nsw i32 7, %9, !dbg !3111
  %idxprom15 = sext i32 %mul14 to i64, !dbg !3109
  %arrayidx16 = getelementptr inbounds i8, ptr %8, i64 %idxprom15, !dbg !3109
  %call17 = call i32 @WebPMemToUint32(ptr noundef %arrayidx16), !dbg !3112
  %10 = load ptr, ptr %b.addr, align 8, !dbg !3113, !tbaa !70
  %11 = load i32, ptr %stride.addr, align 4, !dbg !3114, !tbaa !188
  %mul18 = mul nsw i32 3, %11, !dbg !3115
  %idxprom19 = sext i32 %mul18 to i64, !dbg !3113
  %arrayidx20 = getelementptr inbounds i8, ptr %10, i64 %idxprom19, !dbg !3113
  %call21 = call i32 @WebPMemToUint32(ptr noundef %arrayidx20), !dbg !3116
  %12 = load ptr, ptr %b.addr, align 8, !dbg !3117, !tbaa !70
  %13 = load i32, ptr %stride.addr, align 4, !dbg !3118, !tbaa !188
  %mul22 = mul nsw i32 5, %13, !dbg !3119
  %idxprom23 = sext i32 %mul22 to i64, !dbg !3117
  %arrayidx24 = getelementptr inbounds i8, ptr %12, i64 %idxprom23, !dbg !3117
  %call25 = call i32 @WebPMemToUint32(ptr noundef %arrayidx24), !dbg !3120
  %14 = load ptr, ptr %b.addr, align 8, !dbg !3121, !tbaa !70
  %15 = load i32, ptr %stride.addr, align 4, !dbg !3122, !tbaa !188
  %mul26 = mul nsw i32 1, %15, !dbg !3123
  %idxprom27 = sext i32 %mul26 to i64, !dbg !3121
  %arrayidx28 = getelementptr inbounds i8, ptr %14, i64 %idxprom27, !dbg !3121
  %call29 = call i32 @WebPMemToUint32(ptr noundef %arrayidx28), !dbg !3124
  %call30 = call <2 x i64> @_mm_set_epi32(i32 noundef %call17, i32 noundef %call21, i32 noundef %call25, i32 noundef %call29), !dbg !3125
  store <2 x i64> %call30, ptr %A1, align 16, !dbg !3108, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %B0) #9, !dbg !3126
  tail call void @llvm.dbg.declare(metadata ptr %B0, metadata !3080, metadata !DIExpression()), !dbg !3127
  %16 = load <2 x i64>, ptr %A0, align 16, !dbg !3128, !tbaa !194
  %17 = load <2 x i64>, ptr %A1, align 16, !dbg !3129, !tbaa !194
  %call31 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %16, <2 x i64> noundef %17), !dbg !3130
  store <2 x i64> %call31, ptr %B0, align 16, !dbg !3127, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %B1) #9, !dbg !3131
  tail call void @llvm.dbg.declare(metadata ptr %B1, metadata !3081, metadata !DIExpression()), !dbg !3132
  %18 = load <2 x i64>, ptr %A0, align 16, !dbg !3133, !tbaa !194
  %19 = load <2 x i64>, ptr %A1, align 16, !dbg !3134, !tbaa !194
  %call32 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %18, <2 x i64> noundef %19), !dbg !3135
  store <2 x i64> %call32, ptr %B1, align 16, !dbg !3132, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %C0) #9, !dbg !3136
  tail call void @llvm.dbg.declare(metadata ptr %C0, metadata !3082, metadata !DIExpression()), !dbg !3137
  %20 = load <2 x i64>, ptr %B0, align 16, !dbg !3138, !tbaa !194
  %21 = load <2 x i64>, ptr %B1, align 16, !dbg !3139, !tbaa !194
  %call33 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %20, <2 x i64> noundef %21), !dbg !3140
  store <2 x i64> %call33, ptr %C0, align 16, !dbg !3137, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %C1) #9, !dbg !3141
  tail call void @llvm.dbg.declare(metadata ptr %C1, metadata !3083, metadata !DIExpression()), !dbg !3142
  %22 = load <2 x i64>, ptr %B0, align 16, !dbg !3143, !tbaa !194
  %23 = load <2 x i64>, ptr %B1, align 16, !dbg !3144, !tbaa !194
  %call34 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %22, <2 x i64> noundef %23), !dbg !3145
  store <2 x i64> %call34, ptr %C1, align 16, !dbg !3142, !tbaa !194
  %24 = load <2 x i64>, ptr %C0, align 16, !dbg !3146, !tbaa !194
  %25 = load <2 x i64>, ptr %C1, align 16, !dbg !3147, !tbaa !194
  %call35 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %24, <2 x i64> noundef %25), !dbg !3148
  %26 = load ptr, ptr %p.addr, align 8, !dbg !3149, !tbaa !70
  store <2 x i64> %call35, ptr %26, align 16, !dbg !3150, !tbaa !194
  %27 = load <2 x i64>, ptr %C0, align 16, !dbg !3151, !tbaa !194
  %28 = load <2 x i64>, ptr %C1, align 16, !dbg !3152, !tbaa !194
  %call36 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %27, <2 x i64> noundef %28), !dbg !3153
  %29 = load ptr, ptr %q.addr, align 8, !dbg !3154, !tbaa !70
  store <2 x i64> %call36, ptr %29, align 16, !dbg !3155, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %C1) #9, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 16, ptr %C0) #9, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 16, ptr %B1) #9, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 16, ptr %B0) #9, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 16, ptr %A1) #9, !dbg !3156
  call void @llvm.lifetime.end.p0(i64 16, ptr %A0) #9, !dbg !3156
  ret void, !dbg !3156
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi32(i32 noundef %__i3, i32 noundef %__i2, i32 noundef %__i1, i32 noundef %__i0) #3 {
entry:
  %__i3.addr = alloca i32, align 4
  %__i2.addr = alloca i32, align 4
  %__i1.addr = alloca i32, align 4
  %__i0.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__i3, ptr %__i3.addr, align 4, !tbaa !188
  store i32 %__i2, ptr %__i2.addr, align 4, !tbaa !188
  store i32 %__i1, ptr %__i1.addr, align 4, !tbaa !188
  store i32 %__i0, ptr %__i0.addr, align 4, !tbaa !188
  %0 = load i32, ptr %__i0.addr, align 4, !tbaa !188
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__i1.addr, align 4, !tbaa !188
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__i2.addr, align 4, !tbaa !188
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__i3.addr, align 4, !tbaa !188
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %3, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !194
  %4 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !194
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Store4x4_SSE2(ptr noundef %x, ptr noundef %dst, i32 noundef %stride) #4 !dbg !3157 {
entry:
  %x.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3161, metadata !DIExpression()), !dbg !3165
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3162, metadata !DIExpression()), !dbg !3166
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !3163, metadata !DIExpression()), !dbg !3167
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !3168
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3164, metadata !DIExpression()), !dbg !3169
  store i32 0, ptr %i, align 4, !dbg !3170, !tbaa !188
  br label %for.cond, !dbg !3172

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3173, !tbaa !188
  %cmp = icmp slt i32 %0, 4, !dbg !3175
  br i1 %cmp, label %for.body, label %for.end, !dbg !3176

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !3177, !tbaa !70
  %2 = load ptr, ptr %x.addr, align 8, !dbg !3179, !tbaa !70
  %3 = load <2 x i64>, ptr %2, align 16, !dbg !3180, !tbaa !194
  %call = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %3), !dbg !3181
  call void @WebPUint32ToMem(ptr noundef %1, i32 noundef %call), !dbg !3182
  %4 = load ptr, ptr %x.addr, align 8, !dbg !3183, !tbaa !70
  %5 = load <2 x i64>, ptr %4, align 16, !dbg !3183, !tbaa !194
  %cast = bitcast <2 x i64> %5 to <16 x i8>, !dbg !3183
  %psrldq = shufflevector <16 x i8> %cast, <16 x i8> zeroinitializer, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>, !dbg !3183
  %cast1 = bitcast <16 x i8> %psrldq to <2 x i64>, !dbg !3183
  %6 = load ptr, ptr %x.addr, align 8, !dbg !3184, !tbaa !70
  store <2 x i64> %cast1, ptr %6, align 16, !dbg !3185, !tbaa !194
  br label %for.inc, !dbg !3186

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !3187, !tbaa !188
  %inc = add nsw i32 %7, 1, !dbg !3187
  store i32 %inc, ptr %i, align 4, !dbg !3187, !tbaa !188
  %8 = load i32, ptr %stride.addr, align 4, !dbg !3188, !tbaa !188
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !3189, !tbaa !70
  %idx.ext = sext i32 %8 to i64, !dbg !3189
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext, !dbg !3189
  store ptr %add.ptr, ptr %dst.addr, align 8, !dbg !3189, !tbaa !70
  br label %for.cond, !dbg !3190, !llvm.loop !3191

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !3193
  ret void, !dbg !3193
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @DoFilter4_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, ptr noundef %mask, i32 noundef %hev_thresh) #4 !dbg !3194 {
entry:
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %hev_thresh.addr = alloca i32, align 4
  %zero = alloca <2 x i64>, align 16
  %sign_bit = alloca <2 x i64>, align 16
  %k64 = alloca <2 x i64>, align 16
  %k3 = alloca <2 x i64>, align 16
  %k4 = alloca <2 x i64>, align 16
  %not_hev = alloca <2 x i64>, align 16
  %t1 = alloca <2 x i64>, align 16
  %t2 = alloca <2 x i64>, align 16
  %t3 = alloca <2 x i64>, align 16
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !3198, metadata !DIExpression()), !dbg !3213
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !3199, metadata !DIExpression()), !dbg !3214
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !3200, metadata !DIExpression()), !dbg !3215
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !3201, metadata !DIExpression()), !dbg !3216
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3202, metadata !DIExpression()), !dbg !3217
  store i32 %hev_thresh, ptr %hev_thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %hev_thresh.addr, metadata !3203, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !3219
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !3204, metadata !DIExpression()), !dbg !3220
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !3221
  store <2 x i64> %call, ptr %zero, align 16, !dbg !3220, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %sign_bit) #9, !dbg !3222
  tail call void @llvm.dbg.declare(metadata ptr %sign_bit, metadata !3205, metadata !DIExpression()), !dbg !3223
  %call1 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext -128), !dbg !3224
  store <2 x i64> %call1, ptr %sign_bit, align 16, !dbg !3223, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %k64) #9, !dbg !3225
  tail call void @llvm.dbg.declare(metadata ptr %k64, metadata !3206, metadata !DIExpression()), !dbg !3226
  %call2 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 64), !dbg !3227
  store <2 x i64> %call2, ptr %k64, align 16, !dbg !3226, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %k3) #9, !dbg !3228
  tail call void @llvm.dbg.declare(metadata ptr %k3, metadata !3207, metadata !DIExpression()), !dbg !3229
  %call3 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 3), !dbg !3230
  store <2 x i64> %call3, ptr %k3, align 16, !dbg !3229, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %k4) #9, !dbg !3231
  tail call void @llvm.dbg.declare(metadata ptr %k4, metadata !3208, metadata !DIExpression()), !dbg !3232
  %call4 = call <2 x i64> @_mm_set1_epi8(i8 noundef signext 4), !dbg !3233
  store <2 x i64> %call4, ptr %k4, align 16, !dbg !3232, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %not_hev) #9, !dbg !3234
  tail call void @llvm.dbg.declare(metadata ptr %not_hev, metadata !3209, metadata !DIExpression()), !dbg !3235
  call void @llvm.lifetime.start.p0(i64 16, ptr %t1) #9, !dbg !3236
  tail call void @llvm.dbg.declare(metadata ptr %t1, metadata !3210, metadata !DIExpression()), !dbg !3237
  call void @llvm.lifetime.start.p0(i64 16, ptr %t2) #9, !dbg !3236
  tail call void @llvm.dbg.declare(metadata ptr %t2, metadata !3211, metadata !DIExpression()), !dbg !3238
  call void @llvm.lifetime.start.p0(i64 16, ptr %t3) #9, !dbg !3236
  tail call void @llvm.dbg.declare(metadata ptr %t3, metadata !3212, metadata !DIExpression()), !dbg !3239
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !3240, !tbaa !70
  %1 = load ptr, ptr %p0.addr, align 8, !dbg !3241, !tbaa !70
  %2 = load ptr, ptr %q0.addr, align 8, !dbg !3242, !tbaa !70
  %3 = load ptr, ptr %q1.addr, align 8, !dbg !3243, !tbaa !70
  %4 = load i32, ptr %hev_thresh.addr, align 4, !dbg !3244, !tbaa !188
  call void @GetNotHEV_SSE2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %not_hev), !dbg !3245
  %5 = load ptr, ptr %p1.addr, align 8, !dbg !3246, !tbaa !70
  %6 = load <2 x i64>, ptr %5, align 16, !dbg !3246, !tbaa !194
  %7 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3246, !tbaa !194
  %call5 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %6, <2 x i64> noundef %7), !dbg !3246
  %8 = load ptr, ptr %p1.addr, align 8, !dbg !3246, !tbaa !70
  store <2 x i64> %call5, ptr %8, align 16, !dbg !3246, !tbaa !194
  %9 = load ptr, ptr %p0.addr, align 8, !dbg !3246, !tbaa !70
  %10 = load <2 x i64>, ptr %9, align 16, !dbg !3246, !tbaa !194
  %11 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3246, !tbaa !194
  %call6 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %10, <2 x i64> noundef %11), !dbg !3246
  %12 = load ptr, ptr %p0.addr, align 8, !dbg !3246, !tbaa !70
  store <2 x i64> %call6, ptr %12, align 16, !dbg !3246, !tbaa !194
  %13 = load ptr, ptr %q0.addr, align 8, !dbg !3249, !tbaa !70
  %14 = load <2 x i64>, ptr %13, align 16, !dbg !3249, !tbaa !194
  %15 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3249, !tbaa !194
  %call7 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %14, <2 x i64> noundef %15), !dbg !3249
  %16 = load ptr, ptr %q0.addr, align 8, !dbg !3249, !tbaa !70
  store <2 x i64> %call7, ptr %16, align 16, !dbg !3249, !tbaa !194
  %17 = load ptr, ptr %q1.addr, align 8, !dbg !3249, !tbaa !70
  %18 = load <2 x i64>, ptr %17, align 16, !dbg !3249, !tbaa !194
  %19 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3249, !tbaa !194
  %call8 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %18, <2 x i64> noundef %19), !dbg !3249
  %20 = load ptr, ptr %q1.addr, align 8, !dbg !3249, !tbaa !70
  store <2 x i64> %call8, ptr %20, align 16, !dbg !3249, !tbaa !194
  %21 = load ptr, ptr %p1.addr, align 8, !dbg !3251, !tbaa !70
  %22 = load <2 x i64>, ptr %21, align 16, !dbg !3252, !tbaa !194
  %23 = load ptr, ptr %q1.addr, align 8, !dbg !3253, !tbaa !70
  %24 = load <2 x i64>, ptr %23, align 16, !dbg !3254, !tbaa !194
  %call9 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %22, <2 x i64> noundef %24), !dbg !3255
  store <2 x i64> %call9, ptr %t1, align 16, !dbg !3256, !tbaa !194
  %25 = load <2 x i64>, ptr %not_hev, align 16, !dbg !3257, !tbaa !194
  %26 = load <2 x i64>, ptr %t1, align 16, !dbg !3258, !tbaa !194
  %call10 = call <2 x i64> @_mm_andnot_si128(<2 x i64> noundef %25, <2 x i64> noundef %26), !dbg !3259
  store <2 x i64> %call10, ptr %t1, align 16, !dbg !3260, !tbaa !194
  %27 = load ptr, ptr %q0.addr, align 8, !dbg !3261, !tbaa !70
  %28 = load <2 x i64>, ptr %27, align 16, !dbg !3262, !tbaa !194
  %29 = load ptr, ptr %p0.addr, align 8, !dbg !3263, !tbaa !70
  %30 = load <2 x i64>, ptr %29, align 16, !dbg !3264, !tbaa !194
  %call11 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %28, <2 x i64> noundef %30), !dbg !3265
  store <2 x i64> %call11, ptr %t2, align 16, !dbg !3266, !tbaa !194
  %31 = load <2 x i64>, ptr %t1, align 16, !dbg !3267, !tbaa !194
  %32 = load <2 x i64>, ptr %t2, align 16, !dbg !3268, !tbaa !194
  %call12 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %31, <2 x i64> noundef %32), !dbg !3269
  store <2 x i64> %call12, ptr %t1, align 16, !dbg !3270, !tbaa !194
  %33 = load <2 x i64>, ptr %t1, align 16, !dbg !3271, !tbaa !194
  %34 = load <2 x i64>, ptr %t2, align 16, !dbg !3272, !tbaa !194
  %call13 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %33, <2 x i64> noundef %34), !dbg !3273
  store <2 x i64> %call13, ptr %t1, align 16, !dbg !3274, !tbaa !194
  %35 = load <2 x i64>, ptr %t1, align 16, !dbg !3275, !tbaa !194
  %36 = load <2 x i64>, ptr %t2, align 16, !dbg !3276, !tbaa !194
  %call14 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %35, <2 x i64> noundef %36), !dbg !3277
  store <2 x i64> %call14, ptr %t1, align 16, !dbg !3278, !tbaa !194
  %37 = load <2 x i64>, ptr %t1, align 16, !dbg !3279, !tbaa !194
  %38 = load ptr, ptr %mask.addr, align 8, !dbg !3280, !tbaa !70
  %39 = load <2 x i64>, ptr %38, align 16, !dbg !3281, !tbaa !194
  %call15 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %37, <2 x i64> noundef %39), !dbg !3282
  store <2 x i64> %call15, ptr %t1, align 16, !dbg !3283, !tbaa !194
  %40 = load <2 x i64>, ptr %t1, align 16, !dbg !3284, !tbaa !194
  %41 = load <2 x i64>, ptr %k3, align 16, !dbg !3285, !tbaa !194
  %call16 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %40, <2 x i64> noundef %41), !dbg !3286
  store <2 x i64> %call16, ptr %t2, align 16, !dbg !3287, !tbaa !194
  %42 = load <2 x i64>, ptr %t1, align 16, !dbg !3288, !tbaa !194
  %43 = load <2 x i64>, ptr %k4, align 16, !dbg !3289, !tbaa !194
  %call17 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %42, <2 x i64> noundef %43), !dbg !3290
  store <2 x i64> %call17, ptr %t3, align 16, !dbg !3291, !tbaa !194
  call void @SignedShift8b_SSE2(ptr noundef %t2), !dbg !3292
  call void @SignedShift8b_SSE2(ptr noundef %t3), !dbg !3293
  %44 = load ptr, ptr %p0.addr, align 8, !dbg !3294, !tbaa !70
  %45 = load <2 x i64>, ptr %44, align 16, !dbg !3295, !tbaa !194
  %46 = load <2 x i64>, ptr %t2, align 16, !dbg !3296, !tbaa !194
  %call18 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %45, <2 x i64> noundef %46), !dbg !3297
  %47 = load ptr, ptr %p0.addr, align 8, !dbg !3298, !tbaa !70
  store <2 x i64> %call18, ptr %47, align 16, !dbg !3299, !tbaa !194
  %48 = load ptr, ptr %q0.addr, align 8, !dbg !3300, !tbaa !70
  %49 = load <2 x i64>, ptr %48, align 16, !dbg !3301, !tbaa !194
  %50 = load <2 x i64>, ptr %t3, align 16, !dbg !3302, !tbaa !194
  %call19 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %49, <2 x i64> noundef %50), !dbg !3303
  %51 = load ptr, ptr %q0.addr, align 8, !dbg !3304, !tbaa !70
  store <2 x i64> %call19, ptr %51, align 16, !dbg !3305, !tbaa !194
  %52 = load ptr, ptr %p0.addr, align 8, !dbg !3306, !tbaa !70
  %53 = load <2 x i64>, ptr %52, align 16, !dbg !3306, !tbaa !194
  %54 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3306, !tbaa !194
  %call20 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %53, <2 x i64> noundef %54), !dbg !3306
  %55 = load ptr, ptr %p0.addr, align 8, !dbg !3306, !tbaa !70
  store <2 x i64> %call20, ptr %55, align 16, !dbg !3306, !tbaa !194
  %56 = load ptr, ptr %q0.addr, align 8, !dbg !3306, !tbaa !70
  %57 = load <2 x i64>, ptr %56, align 16, !dbg !3306, !tbaa !194
  %58 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3306, !tbaa !194
  %call21 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %57, <2 x i64> noundef %58), !dbg !3306
  %59 = load ptr, ptr %q0.addr, align 8, !dbg !3306, !tbaa !70
  store <2 x i64> %call21, ptr %59, align 16, !dbg !3306, !tbaa !194
  %60 = load <2 x i64>, ptr %t3, align 16, !dbg !3308, !tbaa !194
  %61 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3309, !tbaa !194
  %call22 = call <2 x i64> @_mm_add_epi8(<2 x i64> noundef %60, <2 x i64> noundef %61), !dbg !3310
  store <2 x i64> %call22, ptr %t2, align 16, !dbg !3311, !tbaa !194
  %62 = load <2 x i64>, ptr %t2, align 16, !dbg !3312, !tbaa !194
  %63 = load <2 x i64>, ptr %zero, align 16, !dbg !3313, !tbaa !194
  %call23 = call <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %62, <2 x i64> noundef %63), !dbg !3314
  store <2 x i64> %call23, ptr %t3, align 16, !dbg !3315, !tbaa !194
  %64 = load <2 x i64>, ptr %t3, align 16, !dbg !3316, !tbaa !194
  %65 = load <2 x i64>, ptr %k64, align 16, !dbg !3317, !tbaa !194
  %call24 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %64, <2 x i64> noundef %65), !dbg !3318
  store <2 x i64> %call24, ptr %t3, align 16, !dbg !3319, !tbaa !194
  %66 = load <2 x i64>, ptr %not_hev, align 16, !dbg !3320, !tbaa !194
  %67 = load <2 x i64>, ptr %t3, align 16, !dbg !3321, !tbaa !194
  %call25 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %66, <2 x i64> noundef %67), !dbg !3322
  store <2 x i64> %call25, ptr %t3, align 16, !dbg !3323, !tbaa !194
  %68 = load ptr, ptr %q1.addr, align 8, !dbg !3324, !tbaa !70
  %69 = load <2 x i64>, ptr %68, align 16, !dbg !3325, !tbaa !194
  %70 = load <2 x i64>, ptr %t3, align 16, !dbg !3326, !tbaa !194
  %call26 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %69, <2 x i64> noundef %70), !dbg !3327
  %71 = load ptr, ptr %q1.addr, align 8, !dbg !3328, !tbaa !70
  store <2 x i64> %call26, ptr %71, align 16, !dbg !3329, !tbaa !194
  %72 = load ptr, ptr %p1.addr, align 8, !dbg !3330, !tbaa !70
  %73 = load <2 x i64>, ptr %72, align 16, !dbg !3331, !tbaa !194
  %74 = load <2 x i64>, ptr %t3, align 16, !dbg !3332, !tbaa !194
  %call27 = call <2 x i64> @_mm_adds_epi8(<2 x i64> noundef %73, <2 x i64> noundef %74), !dbg !3333
  %75 = load ptr, ptr %p1.addr, align 8, !dbg !3334, !tbaa !70
  store <2 x i64> %call27, ptr %75, align 16, !dbg !3335, !tbaa !194
  %76 = load ptr, ptr %p1.addr, align 8, !dbg !3336, !tbaa !70
  %77 = load <2 x i64>, ptr %76, align 16, !dbg !3336, !tbaa !194
  %78 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3336, !tbaa !194
  %call28 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %77, <2 x i64> noundef %78), !dbg !3336
  %79 = load ptr, ptr %p1.addr, align 8, !dbg !3336, !tbaa !70
  store <2 x i64> %call28, ptr %79, align 16, !dbg !3336, !tbaa !194
  %80 = load ptr, ptr %q1.addr, align 8, !dbg !3336, !tbaa !70
  %81 = load <2 x i64>, ptr %80, align 16, !dbg !3336, !tbaa !194
  %82 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3336, !tbaa !194
  %call29 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %81, <2 x i64> noundef %82), !dbg !3336
  %83 = load ptr, ptr %q1.addr, align 8, !dbg !3336, !tbaa !70
  store <2 x i64> %call29, ptr %83, align 16, !dbg !3336, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %t3) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %t2) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %t1) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %not_hev) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %k4) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %k3) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %k64) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %sign_bit) #9, !dbg !3338
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !3338
  ret void, !dbg !3338
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %add = add <16 x i8> %1, %3
  %4 = bitcast <16 x i8> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_avg_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %4 = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %1, <16 x i8> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %sub = sub <16 x i8> %1, %3
  %4 = bitcast <16 x i8> %sub to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @DoFilter2_SSE2(ptr noundef %p1, ptr noundef %p0, ptr noundef %q0, ptr noundef %q1, i32 noundef %thresh) #4 !dbg !3339 {
entry:
  %p1.addr = alloca ptr, align 8
  %p0.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %thresh.addr = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %mask = alloca <2 x i64>, align 16
  %sign_bit = alloca <2 x i64>, align 16
  %p1s = alloca <2 x i64>, align 16
  %q1s = alloca <2 x i64>, align 16
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !3343, metadata !DIExpression()), !dbg !3353
  store ptr %p0, ptr %p0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %p0.addr, metadata !3344, metadata !DIExpression()), !dbg !3354
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q0.addr, metadata !3345, metadata !DIExpression()), !dbg !3355
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %q1.addr, metadata !3346, metadata !DIExpression()), !dbg !3356
  store i32 %thresh, ptr %thresh.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %thresh.addr, metadata !3347, metadata !DIExpression()), !dbg !3357
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #9, !dbg !3358
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !3348, metadata !DIExpression()), !dbg !3359
  call void @llvm.lifetime.start.p0(i64 16, ptr %mask) #9, !dbg !3358
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !3349, metadata !DIExpression()), !dbg !3360
  call void @llvm.lifetime.start.p0(i64 16, ptr %sign_bit) #9, !dbg !3361
  tail call void @llvm.dbg.declare(metadata ptr %sign_bit, metadata !3350, metadata !DIExpression()), !dbg !3362
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext -128), !dbg !3363
  store <2 x i64> %call, ptr %sign_bit, align 16, !dbg !3362, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %p1s) #9, !dbg !3364
  tail call void @llvm.dbg.declare(metadata ptr %p1s, metadata !3351, metadata !DIExpression()), !dbg !3365
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !3366, !tbaa !70
  %1 = load <2 x i64>, ptr %0, align 16, !dbg !3367, !tbaa !194
  %2 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3368, !tbaa !194
  %call1 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %1, <2 x i64> noundef %2), !dbg !3369
  store <2 x i64> %call1, ptr %p1s, align 16, !dbg !3365, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %q1s) #9, !dbg !3370
  tail call void @llvm.dbg.declare(metadata ptr %q1s, metadata !3352, metadata !DIExpression()), !dbg !3371
  %3 = load ptr, ptr %q1.addr, align 8, !dbg !3372, !tbaa !70
  %4 = load <2 x i64>, ptr %3, align 16, !dbg !3373, !tbaa !194
  %5 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3374, !tbaa !194
  %call2 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %4, <2 x i64> noundef %5), !dbg !3375
  store <2 x i64> %call2, ptr %q1s, align 16, !dbg !3371, !tbaa !194
  %6 = load ptr, ptr %p1.addr, align 8, !dbg !3376, !tbaa !70
  %7 = load ptr, ptr %p0.addr, align 8, !dbg !3377, !tbaa !70
  %8 = load ptr, ptr %q0.addr, align 8, !dbg !3378, !tbaa !70
  %9 = load ptr, ptr %q1.addr, align 8, !dbg !3379, !tbaa !70
  %10 = load i32, ptr %thresh.addr, align 4, !dbg !3380, !tbaa !188
  call void @NeedsFilter_SSE2(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %mask), !dbg !3381
  %11 = load ptr, ptr %p0.addr, align 8, !dbg !3382, !tbaa !70
  %12 = load <2 x i64>, ptr %11, align 16, !dbg !3382, !tbaa !194
  %13 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3382, !tbaa !194
  %call3 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %12, <2 x i64> noundef %13), !dbg !3382
  %14 = load ptr, ptr %p0.addr, align 8, !dbg !3382, !tbaa !70
  store <2 x i64> %call3, ptr %14, align 16, !dbg !3382, !tbaa !194
  %15 = load ptr, ptr %q0.addr, align 8, !dbg !3382, !tbaa !70
  %16 = load <2 x i64>, ptr %15, align 16, !dbg !3382, !tbaa !194
  %17 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3382, !tbaa !194
  %call4 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %16, <2 x i64> noundef %17), !dbg !3382
  %18 = load ptr, ptr %q0.addr, align 8, !dbg !3382, !tbaa !70
  store <2 x i64> %call4, ptr %18, align 16, !dbg !3382, !tbaa !194
  %19 = load ptr, ptr %p0.addr, align 8, !dbg !3384, !tbaa !70
  %20 = load ptr, ptr %q0.addr, align 8, !dbg !3385, !tbaa !70
  call void @GetBaseDelta_SSE2(ptr noundef %p1s, ptr noundef %19, ptr noundef %20, ptr noundef %q1s, ptr noundef %a), !dbg !3386
  %21 = load <2 x i64>, ptr %a, align 16, !dbg !3387, !tbaa !194
  %22 = load <2 x i64>, ptr %mask, align 16, !dbg !3388, !tbaa !194
  %call5 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %21, <2 x i64> noundef %22), !dbg !3389
  store <2 x i64> %call5, ptr %a, align 16, !dbg !3390, !tbaa !194
  %23 = load ptr, ptr %p0.addr, align 8, !dbg !3391, !tbaa !70
  %24 = load ptr, ptr %q0.addr, align 8, !dbg !3392, !tbaa !70
  call void @DoSimpleFilter_SSE2(ptr noundef %23, ptr noundef %24, ptr noundef %a), !dbg !3393
  %25 = load ptr, ptr %p0.addr, align 8, !dbg !3394, !tbaa !70
  %26 = load <2 x i64>, ptr %25, align 16, !dbg !3394, !tbaa !194
  %27 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3394, !tbaa !194
  %call6 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %26, <2 x i64> noundef %27), !dbg !3394
  %28 = load ptr, ptr %p0.addr, align 8, !dbg !3394, !tbaa !70
  store <2 x i64> %call6, ptr %28, align 16, !dbg !3394, !tbaa !194
  %29 = load ptr, ptr %q0.addr, align 8, !dbg !3394, !tbaa !70
  %30 = load <2 x i64>, ptr %29, align 16, !dbg !3394, !tbaa !194
  %31 = load <2 x i64>, ptr %sign_bit, align 16, !dbg !3394, !tbaa !194
  %call7 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %30, <2 x i64> noundef %31), !dbg !3394
  %32 = load ptr, ptr %q0.addr, align 8, !dbg !3394, !tbaa !70
  store <2 x i64> %call7, ptr %32, align 16, !dbg !3394, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 16, ptr %q1s) #9, !dbg !3396
  call void @llvm.lifetime.end.p0(i64 16, ptr %p1s) #9, !dbg !3396
  call void @llvm.lifetime.end.p0(i64 16, ptr %sign_bit) #9, !dbg !3396
  call void @llvm.lifetime.end.p0(i64 16, ptr %mask) #9, !dbg !3396
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #9, !dbg !3396
  ret void, !dbg !3396
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @TrueMotion_SSE2(ptr noundef %dst, i32 noundef %size) #4 !dbg !3397 {
entry:
  %dst.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %top = alloca ptr, align 8
  %zero = alloca <2 x i64>, align 16
  %y = alloca i32, align 4
  %top_values = alloca <2 x i64>, align 16
  %top_base = alloca <2 x i64>, align 16
  %val = alloca i32, align 4
  %base = alloca <2 x i64>, align 16
  %out = alloca <2 x i64>, align 16
  %top_values16 = alloca <2 x i64>, align 16
  %top_base18 = alloca <2 x i64>, align 16
  %val24 = alloca i32, align 4
  %base30 = alloca <2 x i64>, align 16
  %out33 = alloca <2 x i64>, align 16
  %top_values41 = alloca <2 x i64>, align 16
  %top_base_0 = alloca <2 x i64>, align 16
  %top_base_1 = alloca <2 x i64>, align 16
  %val49 = alloca i32, align 4
  %base55 = alloca <2 x i64>, align 16
  %out_0 = alloca <2 x i64>, align 16
  %out_1 = alloca <2 x i64>, align 16
  %out60 = alloca <2 x i64>, align 16
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3401, metadata !DIExpression()), !dbg !3438
  store i32 %size, ptr %size.addr, align 4, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3402, metadata !DIExpression()), !dbg !3439
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #9, !dbg !3440
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !3403, metadata !DIExpression()), !dbg !3441
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !3442, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -32, !dbg !3443
  store ptr %add.ptr, ptr %top, align 8, !dbg !3441, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #9, !dbg !3444
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !3404, metadata !DIExpression()), !dbg !3445
  %call = call <2 x i64> @_mm_setzero_si128(), !dbg !3446
  store <2 x i64> %call, ptr %zero, align 16, !dbg !3445, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #9, !dbg !3447
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !3405, metadata !DIExpression()), !dbg !3448
  %1 = load i32, ptr %size.addr, align 4, !dbg !3449, !tbaa !188
  %cmp = icmp eq i32 %1, 4, !dbg !3450
  br i1 %cmp, label %if.then, label %if.else, !dbg !3451

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %top_values) #9, !dbg !3452
  tail call void @llvm.dbg.declare(metadata ptr %top_values, metadata !3406, metadata !DIExpression()), !dbg !3453
  %2 = load ptr, ptr %top, align 8, !dbg !3454, !tbaa !70
  %call1 = call i32 @WebPMemToUint32(ptr noundef %2), !dbg !3455
  %call2 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %call1), !dbg !3456
  store <2 x i64> %call2, ptr %top_values, align 16, !dbg !3453, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top_base) #9, !dbg !3457
  tail call void @llvm.dbg.declare(metadata ptr %top_base, metadata !3409, metadata !DIExpression()), !dbg !3458
  %3 = load <2 x i64>, ptr %top_values, align 16, !dbg !3459, !tbaa !194
  %4 = load <2 x i64>, ptr %zero, align 16, !dbg !3460, !tbaa !194
  %call3 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %3, <2 x i64> noundef %4), !dbg !3461
  store <2 x i64> %call3, ptr %top_base, align 16, !dbg !3458, !tbaa !194
  store i32 0, ptr %y, align 4, !dbg !3462, !tbaa !188
  br label %for.cond, !dbg !3463

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %y, align 4, !dbg !3464, !tbaa !188
  %cmp4 = icmp slt i32 %5, 4, !dbg !3465
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3466

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #9, !dbg !3467
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !3410, metadata !DIExpression()), !dbg !3468
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !3469, !tbaa !70
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !3469
  %7 = load i8, ptr %arrayidx, align 1, !dbg !3469, !tbaa !194
  %conv = zext i8 %7 to i32, !dbg !3469
  %8 = load ptr, ptr %top, align 8, !dbg !3470, !tbaa !70
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 -1, !dbg !3470
  %9 = load i8, ptr %arrayidx5, align 1, !dbg !3470, !tbaa !194
  %conv6 = zext i8 %9 to i32, !dbg !3470
  %sub = sub nsw i32 %conv, %conv6, !dbg !3471
  store i32 %sub, ptr %val, align 4, !dbg !3468, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 16, ptr %base) #9, !dbg !3472
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !3414, metadata !DIExpression()), !dbg !3473
  %10 = load i32, ptr %val, align 4, !dbg !3474, !tbaa !188
  %conv7 = trunc i32 %10 to i16, !dbg !3474
  %call8 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %conv7), !dbg !3475
  store <2 x i64> %call8, ptr %base, align 16, !dbg !3473, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %out) #9, !dbg !3476
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !3415, metadata !DIExpression()), !dbg !3477
  %11 = load <2 x i64>, ptr %base, align 16, !dbg !3478, !tbaa !194
  %12 = load <2 x i64>, ptr %top_base, align 16, !dbg !3479, !tbaa !194
  %call9 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %11, <2 x i64> noundef %12), !dbg !3480
  %13 = load <2 x i64>, ptr %zero, align 16, !dbg !3481, !tbaa !194
  %call10 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %call9, <2 x i64> noundef %13), !dbg !3482
  store <2 x i64> %call10, ptr %out, align 16, !dbg !3477, !tbaa !194
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !3483, !tbaa !70
  %15 = load <2 x i64>, ptr %out, align 16, !dbg !3484, !tbaa !194
  %call11 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %15), !dbg !3485
  call void @WebPUint32ToMem(ptr noundef %14, i32 noundef %call11), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 16, ptr %out) #9, !dbg !3487
  call void @llvm.lifetime.end.p0(i64 16, ptr %base) #9, !dbg !3487
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #9, !dbg !3487
  br label %for.inc, !dbg !3488

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %y, align 4, !dbg !3489, !tbaa !188
  %inc = add nsw i32 %16, 1, !dbg !3489
  store i32 %inc, ptr %y, align 4, !dbg !3489, !tbaa !188
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !3490, !tbaa !70
  %add.ptr12 = getelementptr inbounds i8, ptr %17, i64 32, !dbg !3490
  store ptr %add.ptr12, ptr %dst.addr, align 8, !dbg !3490, !tbaa !70
  br label %for.cond, !dbg !3491, !llvm.loop !3492

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %top_base) #9, !dbg !3494
  call void @llvm.lifetime.end.p0(i64 16, ptr %top_values) #9, !dbg !3494
  br label %if.end66, !dbg !3495

if.else:                                          ; preds = %entry
  %18 = load i32, ptr %size.addr, align 4, !dbg !3496, !tbaa !188
  %cmp13 = icmp eq i32 %18, 8, !dbg !3497
  br i1 %cmp13, label %if.then15, label %if.else40, !dbg !3498

if.then15:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr %top_values16) #9, !dbg !3499
  tail call void @llvm.dbg.declare(metadata ptr %top_values16, metadata !3416, metadata !DIExpression()), !dbg !3500
  %19 = load ptr, ptr %top, align 8, !dbg !3501, !tbaa !70
  %call17 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %19), !dbg !3502
  store <2 x i64> %call17, ptr %top_values16, align 16, !dbg !3500, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top_base18) #9, !dbg !3503
  tail call void @llvm.dbg.declare(metadata ptr %top_base18, metadata !3419, metadata !DIExpression()), !dbg !3504
  %20 = load <2 x i64>, ptr %top_values16, align 16, !dbg !3505, !tbaa !194
  %21 = load <2 x i64>, ptr %zero, align 16, !dbg !3506, !tbaa !194
  %call19 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %20, <2 x i64> noundef %21), !dbg !3507
  store <2 x i64> %call19, ptr %top_base18, align 16, !dbg !3504, !tbaa !194
  store i32 0, ptr %y, align 4, !dbg !3508, !tbaa !188
  br label %for.cond20, !dbg !3509

for.cond20:                                       ; preds = %for.inc36, %if.then15
  %22 = load i32, ptr %y, align 4, !dbg !3510, !tbaa !188
  %cmp21 = icmp slt i32 %22, 8, !dbg !3511
  br i1 %cmp21, label %for.body23, label %for.end39, !dbg !3512

for.body23:                                       ; preds = %for.cond20
  call void @llvm.lifetime.start.p0(i64 4, ptr %val24) #9, !dbg !3513
  tail call void @llvm.dbg.declare(metadata ptr %val24, metadata !3420, metadata !DIExpression()), !dbg !3514
  %23 = load ptr, ptr %dst.addr, align 8, !dbg !3515, !tbaa !70
  %arrayidx25 = getelementptr inbounds i8, ptr %23, i64 -1, !dbg !3515
  %24 = load i8, ptr %arrayidx25, align 1, !dbg !3515, !tbaa !194
  %conv26 = zext i8 %24 to i32, !dbg !3515
  %25 = load ptr, ptr %top, align 8, !dbg !3516, !tbaa !70
  %arrayidx27 = getelementptr inbounds i8, ptr %25, i64 -1, !dbg !3516
  %26 = load i8, ptr %arrayidx27, align 1, !dbg !3516, !tbaa !194
  %conv28 = zext i8 %26 to i32, !dbg !3516
  %sub29 = sub nsw i32 %conv26, %conv28, !dbg !3517
  store i32 %sub29, ptr %val24, align 4, !dbg !3514, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 16, ptr %base30) #9, !dbg !3518
  tail call void @llvm.dbg.declare(metadata ptr %base30, metadata !3424, metadata !DIExpression()), !dbg !3519
  %27 = load i32, ptr %val24, align 4, !dbg !3520, !tbaa !188
  %conv31 = trunc i32 %27 to i16, !dbg !3520
  %call32 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %conv31), !dbg !3521
  store <2 x i64> %call32, ptr %base30, align 16, !dbg !3519, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %out33) #9, !dbg !3522
  tail call void @llvm.dbg.declare(metadata ptr %out33, metadata !3425, metadata !DIExpression()), !dbg !3523
  %28 = load <2 x i64>, ptr %base30, align 16, !dbg !3524, !tbaa !194
  %29 = load <2 x i64>, ptr %top_base18, align 16, !dbg !3525, !tbaa !194
  %call34 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %28, <2 x i64> noundef %29), !dbg !3526
  %30 = load <2 x i64>, ptr %zero, align 16, !dbg !3527, !tbaa !194
  %call35 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %call34, <2 x i64> noundef %30), !dbg !3528
  store <2 x i64> %call35, ptr %out33, align 16, !dbg !3523, !tbaa !194
  %31 = load ptr, ptr %dst.addr, align 8, !dbg !3529, !tbaa !70
  %32 = load <2 x i64>, ptr %out33, align 16, !dbg !3530, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %31, <2 x i64> noundef %32), !dbg !3531
  call void @llvm.lifetime.end.p0(i64 16, ptr %out33) #9, !dbg !3532
  call void @llvm.lifetime.end.p0(i64 16, ptr %base30) #9, !dbg !3532
  call void @llvm.lifetime.end.p0(i64 4, ptr %val24) #9, !dbg !3532
  br label %for.inc36, !dbg !3533

for.inc36:                                        ; preds = %for.body23
  %33 = load i32, ptr %y, align 4, !dbg !3534, !tbaa !188
  %inc37 = add nsw i32 %33, 1, !dbg !3534
  store i32 %inc37, ptr %y, align 4, !dbg !3534, !tbaa !188
  %34 = load ptr, ptr %dst.addr, align 8, !dbg !3535, !tbaa !70
  %add.ptr38 = getelementptr inbounds i8, ptr %34, i64 32, !dbg !3535
  store ptr %add.ptr38, ptr %dst.addr, align 8, !dbg !3535, !tbaa !70
  br label %for.cond20, !dbg !3536, !llvm.loop !3537

for.end39:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 16, ptr %top_base18) #9, !dbg !3539
  call void @llvm.lifetime.end.p0(i64 16, ptr %top_values16) #9, !dbg !3539
  br label %if.end, !dbg !3540

if.else40:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr %top_values41) #9, !dbg !3541
  tail call void @llvm.dbg.declare(metadata ptr %top_values41, metadata !3426, metadata !DIExpression()), !dbg !3542
  %35 = load ptr, ptr %top, align 8, !dbg !3543, !tbaa !70
  %call42 = call <2 x i64> @_mm_loadu_si128(ptr noundef %35), !dbg !3544
  store <2 x i64> %call42, ptr %top_values41, align 16, !dbg !3542, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top_base_0) #9, !dbg !3545
  tail call void @llvm.dbg.declare(metadata ptr %top_base_0, metadata !3428, metadata !DIExpression()), !dbg !3546
  %36 = load <2 x i64>, ptr %top_values41, align 16, !dbg !3547, !tbaa !194
  %37 = load <2 x i64>, ptr %zero, align 16, !dbg !3548, !tbaa !194
  %call43 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %36, <2 x i64> noundef %37), !dbg !3549
  store <2 x i64> %call43, ptr %top_base_0, align 16, !dbg !3546, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %top_base_1) #9, !dbg !3550
  tail call void @llvm.dbg.declare(metadata ptr %top_base_1, metadata !3429, metadata !DIExpression()), !dbg !3551
  %38 = load <2 x i64>, ptr %top_values41, align 16, !dbg !3552, !tbaa !194
  %39 = load <2 x i64>, ptr %zero, align 16, !dbg !3553, !tbaa !194
  %call44 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %38, <2 x i64> noundef %39), !dbg !3554
  store <2 x i64> %call44, ptr %top_base_1, align 16, !dbg !3551, !tbaa !194
  store i32 0, ptr %y, align 4, !dbg !3555, !tbaa !188
  br label %for.cond45, !dbg !3556

for.cond45:                                       ; preds = %for.inc62, %if.else40
  %40 = load i32, ptr %y, align 4, !dbg !3557, !tbaa !188
  %cmp46 = icmp slt i32 %40, 16, !dbg !3558
  br i1 %cmp46, label %for.body48, label %for.end65, !dbg !3559

for.body48:                                       ; preds = %for.cond45
  call void @llvm.lifetime.start.p0(i64 4, ptr %val49) #9, !dbg !3560
  tail call void @llvm.dbg.declare(metadata ptr %val49, metadata !3430, metadata !DIExpression()), !dbg !3561
  %41 = load ptr, ptr %dst.addr, align 8, !dbg !3562, !tbaa !70
  %arrayidx50 = getelementptr inbounds i8, ptr %41, i64 -1, !dbg !3562
  %42 = load i8, ptr %arrayidx50, align 1, !dbg !3562, !tbaa !194
  %conv51 = zext i8 %42 to i32, !dbg !3562
  %43 = load ptr, ptr %top, align 8, !dbg !3563, !tbaa !70
  %arrayidx52 = getelementptr inbounds i8, ptr %43, i64 -1, !dbg !3563
  %44 = load i8, ptr %arrayidx52, align 1, !dbg !3563, !tbaa !194
  %conv53 = zext i8 %44 to i32, !dbg !3563
  %sub54 = sub nsw i32 %conv51, %conv53, !dbg !3564
  store i32 %sub54, ptr %val49, align 4, !dbg !3561, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 16, ptr %base55) #9, !dbg !3565
  tail call void @llvm.dbg.declare(metadata ptr %base55, metadata !3434, metadata !DIExpression()), !dbg !3566
  %45 = load i32, ptr %val49, align 4, !dbg !3567, !tbaa !188
  %conv56 = trunc i32 %45 to i16, !dbg !3567
  %call57 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %conv56), !dbg !3568
  store <2 x i64> %call57, ptr %base55, align 16, !dbg !3566, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %out_0) #9, !dbg !3569
  tail call void @llvm.dbg.declare(metadata ptr %out_0, metadata !3435, metadata !DIExpression()), !dbg !3570
  %46 = load <2 x i64>, ptr %base55, align 16, !dbg !3571, !tbaa !194
  %47 = load <2 x i64>, ptr %top_base_0, align 16, !dbg !3572, !tbaa !194
  %call58 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %46, <2 x i64> noundef %47), !dbg !3573
  store <2 x i64> %call58, ptr %out_0, align 16, !dbg !3570, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %out_1) #9, !dbg !3574
  tail call void @llvm.dbg.declare(metadata ptr %out_1, metadata !3436, metadata !DIExpression()), !dbg !3575
  %48 = load <2 x i64>, ptr %base55, align 16, !dbg !3576, !tbaa !194
  %49 = load <2 x i64>, ptr %top_base_1, align 16, !dbg !3577, !tbaa !194
  %call59 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %48, <2 x i64> noundef %49), !dbg !3578
  store <2 x i64> %call59, ptr %out_1, align 16, !dbg !3575, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 16, ptr %out60) #9, !dbg !3579
  tail call void @llvm.dbg.declare(metadata ptr %out60, metadata !3437, metadata !DIExpression()), !dbg !3580
  %50 = load <2 x i64>, ptr %out_0, align 16, !dbg !3581, !tbaa !194
  %51 = load <2 x i64>, ptr %out_1, align 16, !dbg !3582, !tbaa !194
  %call61 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %50, <2 x i64> noundef %51), !dbg !3583
  store <2 x i64> %call61, ptr %out60, align 16, !dbg !3580, !tbaa !194
  %52 = load ptr, ptr %dst.addr, align 8, !dbg !3584, !tbaa !70
  %53 = load <2 x i64>, ptr %out60, align 16, !dbg !3585, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %52, <2 x i64> noundef %53), !dbg !3586
  call void @llvm.lifetime.end.p0(i64 16, ptr %out60) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 16, ptr %out_1) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 16, ptr %out_0) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 16, ptr %base55) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 4, ptr %val49) #9, !dbg !3587
  br label %for.inc62, !dbg !3588

for.inc62:                                        ; preds = %for.body48
  %54 = load i32, ptr %y, align 4, !dbg !3589, !tbaa !188
  %inc63 = add nsw i32 %54, 1, !dbg !3589
  store i32 %inc63, ptr %y, align 4, !dbg !3589, !tbaa !188
  %55 = load ptr, ptr %dst.addr, align 8, !dbg !3590, !tbaa !70
  %add.ptr64 = getelementptr inbounds i8, ptr %55, i64 32, !dbg !3590
  store ptr %add.ptr64, ptr %dst.addr, align 8, !dbg !3590, !tbaa !70
  br label %for.cond45, !dbg !3591, !llvm.loop !3592

for.end65:                                        ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 16, ptr %top_base_1) #9, !dbg !3594
  call void @llvm.lifetime.end.p0(i64 16, ptr %top_base_0) #9, !dbg !3594
  call void @llvm.lifetime.end.p0(i64 16, ptr %top_values41) #9, !dbg !3594
  br label %if.end

if.end:                                           ; preds = %for.end65, %for.end39
  br label %if.end66

if.end66:                                         ; preds = %if.end, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #9, !dbg !3595
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #9, !dbg !3595
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #9, !dbg !3595
  ret void, !dbg !3595
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sad_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !194
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !194
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !194
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !194
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %4 = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %1, <16 x i8> %3)
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Put16_SSE2(i8 noundef zeroext %v, ptr noundef %dst) #4 !dbg !3596 {
entry:
  %v.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %values = alloca <2 x i64>, align 16
  store i8 %v, ptr %v.addr, align 1, !tbaa !194
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3600, metadata !DIExpression()), !dbg !3604
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3601, metadata !DIExpression()), !dbg !3605
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !3606
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3602, metadata !DIExpression()), !dbg !3607
  call void @llvm.lifetime.start.p0(i64 16, ptr %values) #9, !dbg !3608
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !3603, metadata !DIExpression()), !dbg !3609
  %0 = load i8, ptr %v.addr, align 1, !dbg !3610, !tbaa !194
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %0), !dbg !3611
  store <2 x i64> %call, ptr %values, align 16, !dbg !3609, !tbaa !194
  store i32 0, ptr %j, align 4, !dbg !3612, !tbaa !188
  br label %for.cond, !dbg !3614

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %j, align 4, !dbg !3615, !tbaa !188
  %cmp = icmp slt i32 %1, 16, !dbg !3617
  br i1 %cmp, label %for.body, label %for.end, !dbg !3618

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !3619, !tbaa !70
  %3 = load i32, ptr %j, align 4, !dbg !3621, !tbaa !188
  %mul = mul nsw i32 %3, 32, !dbg !3622
  %idx.ext = sext i32 %mul to i64, !dbg !3623
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !3623
  %4 = load <2 x i64>, ptr %values, align 16, !dbg !3624, !tbaa !194
  call void @_mm_storeu_si128(ptr noundef %add.ptr, <2 x i64> noundef %4), !dbg !3625
  br label %for.inc, !dbg !3626

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4, !dbg !3627, !tbaa !188
  %inc = add nsw i32 %5, 1, !dbg !3627
  store i32 %inc, ptr %j, align 4, !dbg !3627, !tbaa !188
  br label %for.cond, !dbg !3628, !llvm.loop !3629

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %values) #9, !dbg !3631
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !3631
  ret void, !dbg !3631
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @Put8x8uv_SSE2(i8 noundef zeroext %v, ptr noundef %dst) #4 !dbg !3632 {
entry:
  %v.addr = alloca i8, align 1
  %dst.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %values = alloca <2 x i64>, align 16
  store i8 %v, ptr %v.addr, align 1, !tbaa !194
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3634, metadata !DIExpression()), !dbg !3638
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !70
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9, !dbg !3640
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !3636, metadata !DIExpression()), !dbg !3641
  call void @llvm.lifetime.start.p0(i64 16, ptr %values) #9, !dbg !3642
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !3637, metadata !DIExpression()), !dbg !3643
  %0 = load i8, ptr %v.addr, align 1, !dbg !3644, !tbaa !194
  %call = call <2 x i64> @_mm_set1_epi8(i8 noundef signext %0), !dbg !3645
  store <2 x i64> %call, ptr %values, align 16, !dbg !3643, !tbaa !194
  store i32 0, ptr %j, align 4, !dbg !3646, !tbaa !188
  br label %for.cond, !dbg !3648

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %j, align 4, !dbg !3649, !tbaa !188
  %cmp = icmp slt i32 %1, 8, !dbg !3651
  br i1 %cmp, label %for.body, label %for.end, !dbg !3652

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !3653, !tbaa !70
  %3 = load i32, ptr %j, align 4, !dbg !3655, !tbaa !188
  %mul = mul nsw i32 %3, 32, !dbg !3656
  %idx.ext = sext i32 %mul to i64, !dbg !3657
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !3657
  %4 = load <2 x i64>, ptr %values, align 16, !dbg !3658, !tbaa !194
  call void @_mm_storel_epi64(ptr noundef %add.ptr, <2 x i64> noundef %4), !dbg !3659
  br label %for.inc, !dbg !3660

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %j, align 4, !dbg !3661, !tbaa !188
  %inc = add nsw i32 %5, 1, !dbg !3661
  store i32 %inc, ptr %j, align 4, !dbg !3661, !tbaa !188
  br label %for.cond, !dbg !3662, !llvm.loop !3663

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %values) #9, !dbg !3665
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9, !dbg !3665
  ret void, !dbg !3665
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "dec_sse2.c", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/dsp", checksumkind: CSK_MD5, checksum: "b62f4ff368363b9ee8338af500309d1d")
!2 = !{!3, !11, !5, !12, !17, !18, !23, !26, !32, !37, !41, !47, !50, !34, !53, !56, !29, !25}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i", file: !6, line: 20, baseType: !7, align: 128)
!6 = !DIFile(filename: "/usr/lib/clang/18/include/emmintrin.h", directory: "", checksumkind: CSK_MD5, checksum: "e5d93fc9ce248f6e6dc80f05f58ec34e")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, flags: DIFlagVector, elements: !9)
!8 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DISubrange(count: 2)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__mm_loadl_epi64_struct", file: !6, line: 3390, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !14, file: !6, line: 3391, baseType: !8, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2di", file: !6, line: 28, baseType: !7)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v8hu", file: !6, line: 34, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, flags: DIFlagVector, elements: !21)
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v8hi", file: !6, line: 29, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, flags: DIFlagVector, elements: !21)
!25 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4si", file: !27, line: 19, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/clang/18/include/xmmintrin.h", directory: "", checksumkind: CSK_MD5, checksum: "4f48a2836fc33cbe0f1ace6456c426c6")
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, flags: DIFlagVector, elements: !30)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !{!31}
!31 = !DISubrange(count: 4)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v16qi", file: !6, line: 30, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, flags: DIFlagVector, elements: !35)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 16)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__mm_storel_epi64_struct", file: !6, line: 3928, size: 64, elements: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !38, file: !6, line: 3929, baseType: !8, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !6, line: 3370, size: 128, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !43, file: !6, line: 3371, baseType: !46, size: 128, align: 8)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i_u", file: !6, line: 23, baseType: !7, align: 8)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2du", file: !6, line: 33, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, flags: DIFlagVector, elements: !9)
!49 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v16qu", file: !6, line: 35, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, flags: DIFlagVector, elements: !35)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v16qs", file: !6, line: 39, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, flags: DIFlagVector, elements: !35)
!55 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !6, line: 3820, size: 128, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !57, file: !6, line: 3821, baseType: !46, size: 128, align: 8)
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 8, !"PIC Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!66 = distinct !DISubprogram(name: "VP8DspInitSSE2", scope: !1, file: !1, line: 1180, type: !67, scopeLine: 1180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!67 = !DISubroutineType(types: !68)
!68 = !{null}
!69 = !DILocation(line: 1181, column: 16, scope: !66)
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 1186, column: 16, scope: !66)
!75 = !DILocation(line: 1187, column: 16, scope: !66)
!76 = !DILocation(line: 1188, column: 15, scope: !66)
!77 = !DILocation(line: 1189, column: 15, scope: !66)
!78 = !DILocation(line: 1190, column: 17, scope: !66)
!79 = !DILocation(line: 1191, column: 17, scope: !66)
!80 = !DILocation(line: 1192, column: 16, scope: !66)
!81 = !DILocation(line: 1193, column: 16, scope: !66)
!82 = !DILocation(line: 1195, column: 22, scope: !66)
!83 = !DILocation(line: 1196, column: 22, scope: !66)
!84 = !DILocation(line: 1197, column: 23, scope: !66)
!85 = !DILocation(line: 1198, column: 23, scope: !66)
!86 = !DILocation(line: 1200, column: 19, scope: !66)
!87 = !DILocation(line: 1201, column: 19, scope: !66)
!88 = !DILocation(line: 1202, column: 19, scope: !66)
!89 = !DILocation(line: 1203, column: 19, scope: !66)
!90 = !DILocation(line: 1204, column: 19, scope: !66)
!91 = !DILocation(line: 1205, column: 19, scope: !66)
!92 = !DILocation(line: 1207, column: 20, scope: !66)
!93 = !DILocation(line: 1208, column: 20, scope: !66)
!94 = !DILocation(line: 1209, column: 20, scope: !66)
!95 = !DILocation(line: 1210, column: 20, scope: !66)
!96 = !DILocation(line: 1211, column: 20, scope: !66)
!97 = !DILocation(line: 1212, column: 20, scope: !66)
!98 = !DILocation(line: 1213, column: 20, scope: !66)
!99 = !DILocation(line: 1215, column: 21, scope: !66)
!100 = !DILocation(line: 1216, column: 21, scope: !66)
!101 = !DILocation(line: 1217, column: 21, scope: !66)
!102 = !DILocation(line: 1218, column: 21, scope: !66)
!103 = !DILocation(line: 1219, column: 21, scope: !66)
!104 = !DILocation(line: 1220, column: 21, scope: !66)
!105 = !DILocation(line: 1221, column: 1, scope: !66)
!106 = distinct !DISubprogram(name: "Transform_SSE2", scope: !1, file: !1, line: 33, type: !107, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !109, !115, !29}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !112, line: 25, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !114, line: 39, baseType: !25)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !117, line: 24, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !114, line: 38, baseType: !52)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !182, !183, !184, !185}
!120 = !DILocalVariable(name: "in", arg: 1, scope: !106, file: !1, line: 33, type: !109)
!121 = !DILocalVariable(name: "dst", arg: 2, scope: !106, file: !1, line: 33, type: !115)
!122 = !DILocalVariable(name: "do_two", arg: 3, scope: !106, file: !1, line: 33, type: !29)
!123 = !DILocalVariable(name: "k1", scope: !106, file: !1, line: 50, type: !4)
!124 = !DILocalVariable(name: "k2", scope: !106, file: !1, line: 51, type: !4)
!125 = !DILocalVariable(name: "T0", scope: !106, file: !1, line: 52, type: !5)
!126 = !DILocalVariable(name: "T1", scope: !106, file: !1, line: 52, type: !5)
!127 = !DILocalVariable(name: "T2", scope: !106, file: !1, line: 52, type: !5)
!128 = !DILocalVariable(name: "T3", scope: !106, file: !1, line: 52, type: !5)
!129 = !DILocalVariable(name: "in0", scope: !106, file: !1, line: 57, type: !5)
!130 = !DILocalVariable(name: "in1", scope: !106, file: !1, line: 57, type: !5)
!131 = !DILocalVariable(name: "in2", scope: !106, file: !1, line: 57, type: !5)
!132 = !DILocalVariable(name: "in3", scope: !106, file: !1, line: 57, type: !5)
!133 = !DILocalVariable(name: "inB0", scope: !134, file: !1, line: 68, type: !4)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 67, column: 17)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 67, column: 9)
!136 = distinct !DILexicalBlock(scope: !106, file: !1, line: 58, column: 3)
!137 = !DILocalVariable(name: "inB1", scope: !134, file: !1, line: 69, type: !4)
!138 = !DILocalVariable(name: "inB2", scope: !134, file: !1, line: 70, type: !4)
!139 = !DILocalVariable(name: "inB3", scope: !134, file: !1, line: 71, type: !4)
!140 = !DILocalVariable(name: "a", scope: !141, file: !1, line: 87, type: !4)
!141 = distinct !DILexicalBlock(scope: !106, file: !1, line: 84, column: 3)
!142 = !DILocalVariable(name: "b", scope: !141, file: !1, line: 88, type: !4)
!143 = !DILocalVariable(name: "c1", scope: !141, file: !1, line: 90, type: !4)
!144 = !DILocalVariable(name: "c2", scope: !141, file: !1, line: 91, type: !4)
!145 = !DILocalVariable(name: "c3", scope: !141, file: !1, line: 92, type: !4)
!146 = !DILocalVariable(name: "c4", scope: !141, file: !1, line: 93, type: !4)
!147 = !DILocalVariable(name: "c", scope: !141, file: !1, line: 94, type: !4)
!148 = !DILocalVariable(name: "d1", scope: !141, file: !1, line: 96, type: !4)
!149 = !DILocalVariable(name: "d2", scope: !141, file: !1, line: 97, type: !4)
!150 = !DILocalVariable(name: "d3", scope: !141, file: !1, line: 98, type: !4)
!151 = !DILocalVariable(name: "d4", scope: !141, file: !1, line: 99, type: !4)
!152 = !DILocalVariable(name: "d", scope: !141, file: !1, line: 100, type: !4)
!153 = !DILocalVariable(name: "tmp0", scope: !141, file: !1, line: 103, type: !4)
!154 = !DILocalVariable(name: "tmp1", scope: !141, file: !1, line: 104, type: !4)
!155 = !DILocalVariable(name: "tmp2", scope: !141, file: !1, line: 105, type: !4)
!156 = !DILocalVariable(name: "tmp3", scope: !141, file: !1, line: 106, type: !4)
!157 = !DILocalVariable(name: "four", scope: !158, file: !1, line: 116, type: !4)
!158 = distinct !DILexicalBlock(scope: !106, file: !1, line: 113, column: 3)
!159 = !DILocalVariable(name: "dc", scope: !158, file: !1, line: 117, type: !4)
!160 = !DILocalVariable(name: "a", scope: !158, file: !1, line: 118, type: !4)
!161 = !DILocalVariable(name: "b", scope: !158, file: !1, line: 119, type: !4)
!162 = !DILocalVariable(name: "c1", scope: !158, file: !1, line: 121, type: !4)
!163 = !DILocalVariable(name: "c2", scope: !158, file: !1, line: 122, type: !4)
!164 = !DILocalVariable(name: "c3", scope: !158, file: !1, line: 123, type: !4)
!165 = !DILocalVariable(name: "c4", scope: !158, file: !1, line: 124, type: !4)
!166 = !DILocalVariable(name: "c", scope: !158, file: !1, line: 125, type: !4)
!167 = !DILocalVariable(name: "d1", scope: !158, file: !1, line: 127, type: !4)
!168 = !DILocalVariable(name: "d2", scope: !158, file: !1, line: 128, type: !4)
!169 = !DILocalVariable(name: "d3", scope: !158, file: !1, line: 129, type: !4)
!170 = !DILocalVariable(name: "d4", scope: !158, file: !1, line: 130, type: !4)
!171 = !DILocalVariable(name: "d", scope: !158, file: !1, line: 131, type: !4)
!172 = !DILocalVariable(name: "tmp0", scope: !158, file: !1, line: 134, type: !4)
!173 = !DILocalVariable(name: "tmp1", scope: !158, file: !1, line: 135, type: !4)
!174 = !DILocalVariable(name: "tmp2", scope: !158, file: !1, line: 136, type: !4)
!175 = !DILocalVariable(name: "tmp3", scope: !158, file: !1, line: 137, type: !4)
!176 = !DILocalVariable(name: "shifted0", scope: !158, file: !1, line: 138, type: !4)
!177 = !DILocalVariable(name: "shifted1", scope: !158, file: !1, line: 139, type: !4)
!178 = !DILocalVariable(name: "shifted2", scope: !158, file: !1, line: 140, type: !4)
!179 = !DILocalVariable(name: "shifted3", scope: !158, file: !1, line: 141, type: !4)
!180 = !DILocalVariable(name: "zero", scope: !181, file: !1, line: 150, type: !4)
!181 = distinct !DILexicalBlock(scope: !106, file: !1, line: 149, column: 3)
!182 = !DILocalVariable(name: "dst0", scope: !181, file: !1, line: 152, type: !5)
!183 = !DILocalVariable(name: "dst1", scope: !181, file: !1, line: 152, type: !5)
!184 = !DILocalVariable(name: "dst2", scope: !181, file: !1, line: 152, type: !5)
!185 = !DILocalVariable(name: "dst3", scope: !181, file: !1, line: 152, type: !5)
!186 = !DILocation(line: 33, column: 43, scope: !106)
!187 = !DILocation(line: 33, column: 56, scope: !106)
!188 = !{!189, !189, i64 0}
!189 = !{!"int", !72, i64 0}
!190 = !DILocation(line: 33, column: 65, scope: !106)
!191 = !DILocation(line: 50, column: 3, scope: !106)
!192 = !DILocation(line: 50, column: 17, scope: !106)
!193 = !DILocation(line: 50, column: 22, scope: !106)
!194 = !{!72, !72, i64 0}
!195 = !DILocation(line: 51, column: 3, scope: !106)
!196 = !DILocation(line: 51, column: 17, scope: !106)
!197 = !DILocation(line: 51, column: 22, scope: !106)
!198 = !DILocation(line: 52, column: 3, scope: !106)
!199 = !DILocation(line: 52, column: 11, scope: !106)
!200 = !DILocation(line: 52, column: 15, scope: !106)
!201 = !DILocation(line: 52, column: 19, scope: !106)
!202 = !DILocation(line: 52, column: 23, scope: !106)
!203 = !DILocation(line: 57, column: 3, scope: !106)
!204 = !DILocation(line: 57, column: 11, scope: !106)
!205 = !DILocation(line: 57, column: 16, scope: !106)
!206 = !DILocation(line: 57, column: 21, scope: !106)
!207 = !DILocation(line: 57, column: 26, scope: !106)
!208 = !DILocation(line: 59, column: 44, scope: !136)
!209 = !DILocation(line: 59, column: 11, scope: !136)
!210 = !DILocation(line: 59, column: 9, scope: !136)
!211 = !DILocation(line: 60, column: 44, scope: !136)
!212 = !DILocation(line: 60, column: 11, scope: !136)
!213 = !DILocation(line: 60, column: 9, scope: !136)
!214 = !DILocation(line: 61, column: 44, scope: !136)
!215 = !DILocation(line: 61, column: 11, scope: !136)
!216 = !DILocation(line: 61, column: 9, scope: !136)
!217 = !DILocation(line: 62, column: 44, scope: !136)
!218 = !DILocation(line: 62, column: 11, scope: !136)
!219 = !DILocation(line: 62, column: 9, scope: !136)
!220 = !DILocation(line: 67, column: 9, scope: !135)
!221 = !DILocation(line: 67, column: 9, scope: !136)
!222 = !DILocation(line: 68, column: 7, scope: !134)
!223 = !DILocation(line: 68, column: 21, scope: !134)
!224 = !DILocation(line: 68, column: 61, scope: !134)
!225 = !DILocation(line: 68, column: 28, scope: !134)
!226 = !DILocation(line: 69, column: 7, scope: !134)
!227 = !DILocation(line: 69, column: 21, scope: !134)
!228 = !DILocation(line: 69, column: 61, scope: !134)
!229 = !DILocation(line: 69, column: 28, scope: !134)
!230 = !DILocation(line: 70, column: 7, scope: !134)
!231 = !DILocation(line: 70, column: 21, scope: !134)
!232 = !DILocation(line: 70, column: 61, scope: !134)
!233 = !DILocation(line: 70, column: 28, scope: !134)
!234 = !DILocation(line: 71, column: 7, scope: !134)
!235 = !DILocation(line: 71, column: 21, scope: !134)
!236 = !DILocation(line: 71, column: 61, scope: !134)
!237 = !DILocation(line: 71, column: 28, scope: !134)
!238 = !DILocation(line: 72, column: 32, scope: !134)
!239 = !DILocation(line: 72, column: 37, scope: !134)
!240 = !DILocation(line: 72, column: 13, scope: !134)
!241 = !DILocation(line: 72, column: 11, scope: !134)
!242 = !DILocation(line: 73, column: 32, scope: !134)
!243 = !DILocation(line: 73, column: 37, scope: !134)
!244 = !DILocation(line: 73, column: 13, scope: !134)
!245 = !DILocation(line: 73, column: 11, scope: !134)
!246 = !DILocation(line: 74, column: 32, scope: !134)
!247 = !DILocation(line: 74, column: 37, scope: !134)
!248 = !DILocation(line: 74, column: 13, scope: !134)
!249 = !DILocation(line: 74, column: 11, scope: !134)
!250 = !DILocation(line: 75, column: 32, scope: !134)
!251 = !DILocation(line: 75, column: 37, scope: !134)
!252 = !DILocation(line: 75, column: 13, scope: !134)
!253 = !DILocation(line: 75, column: 11, scope: !134)
!254 = !DILocation(line: 80, column: 5, scope: !135)
!255 = !DILocation(line: 80, column: 5, scope: !134)
!256 = !DILocation(line: 87, column: 5, scope: !141)
!257 = !DILocation(line: 87, column: 19, scope: !141)
!258 = !DILocation(line: 87, column: 37, scope: !141)
!259 = !DILocation(line: 87, column: 42, scope: !141)
!260 = !DILocation(line: 87, column: 23, scope: !141)
!261 = !DILocation(line: 88, column: 5, scope: !141)
!262 = !DILocation(line: 88, column: 19, scope: !141)
!263 = !DILocation(line: 88, column: 37, scope: !141)
!264 = !DILocation(line: 88, column: 42, scope: !141)
!265 = !DILocation(line: 88, column: 23, scope: !141)
!266 = !DILocation(line: 90, column: 5, scope: !141)
!267 = !DILocation(line: 90, column: 19, scope: !141)
!268 = !DILocation(line: 90, column: 40, scope: !141)
!269 = !DILocation(line: 90, column: 45, scope: !141)
!270 = !DILocation(line: 90, column: 24, scope: !141)
!271 = !DILocation(line: 91, column: 5, scope: !141)
!272 = !DILocation(line: 91, column: 19, scope: !141)
!273 = !DILocation(line: 91, column: 40, scope: !141)
!274 = !DILocation(line: 91, column: 45, scope: !141)
!275 = !DILocation(line: 91, column: 24, scope: !141)
!276 = !DILocation(line: 92, column: 5, scope: !141)
!277 = !DILocation(line: 92, column: 19, scope: !141)
!278 = !DILocation(line: 92, column: 38, scope: !141)
!279 = !DILocation(line: 92, column: 43, scope: !141)
!280 = !DILocation(line: 92, column: 24, scope: !141)
!281 = !DILocation(line: 93, column: 5, scope: !141)
!282 = !DILocation(line: 93, column: 19, scope: !141)
!283 = !DILocation(line: 93, column: 38, scope: !141)
!284 = !DILocation(line: 93, column: 42, scope: !141)
!285 = !DILocation(line: 93, column: 24, scope: !141)
!286 = !DILocation(line: 94, column: 5, scope: !141)
!287 = !DILocation(line: 94, column: 19, scope: !141)
!288 = !DILocation(line: 94, column: 37, scope: !141)
!289 = !DILocation(line: 94, column: 41, scope: !141)
!290 = !DILocation(line: 94, column: 23, scope: !141)
!291 = !DILocation(line: 96, column: 5, scope: !141)
!292 = !DILocation(line: 96, column: 19, scope: !141)
!293 = !DILocation(line: 96, column: 40, scope: !141)
!294 = !DILocation(line: 96, column: 45, scope: !141)
!295 = !DILocation(line: 96, column: 24, scope: !141)
!296 = !DILocation(line: 97, column: 5, scope: !141)
!297 = !DILocation(line: 97, column: 19, scope: !141)
!298 = !DILocation(line: 97, column: 40, scope: !141)
!299 = !DILocation(line: 97, column: 45, scope: !141)
!300 = !DILocation(line: 97, column: 24, scope: !141)
!301 = !DILocation(line: 98, column: 5, scope: !141)
!302 = !DILocation(line: 98, column: 19, scope: !141)
!303 = !DILocation(line: 98, column: 38, scope: !141)
!304 = !DILocation(line: 98, column: 43, scope: !141)
!305 = !DILocation(line: 98, column: 24, scope: !141)
!306 = !DILocation(line: 99, column: 5, scope: !141)
!307 = !DILocation(line: 99, column: 19, scope: !141)
!308 = !DILocation(line: 99, column: 38, scope: !141)
!309 = !DILocation(line: 99, column: 42, scope: !141)
!310 = !DILocation(line: 99, column: 24, scope: !141)
!311 = !DILocation(line: 100, column: 5, scope: !141)
!312 = !DILocation(line: 100, column: 19, scope: !141)
!313 = !DILocation(line: 100, column: 37, scope: !141)
!314 = !DILocation(line: 100, column: 41, scope: !141)
!315 = !DILocation(line: 100, column: 23, scope: !141)
!316 = !DILocation(line: 103, column: 5, scope: !141)
!317 = !DILocation(line: 103, column: 19, scope: !141)
!318 = !DILocation(line: 103, column: 40, scope: !141)
!319 = !DILocation(line: 103, column: 43, scope: !141)
!320 = !DILocation(line: 103, column: 26, scope: !141)
!321 = !DILocation(line: 104, column: 5, scope: !141)
!322 = !DILocation(line: 104, column: 19, scope: !141)
!323 = !DILocation(line: 104, column: 40, scope: !141)
!324 = !DILocation(line: 104, column: 43, scope: !141)
!325 = !DILocation(line: 104, column: 26, scope: !141)
!326 = !DILocation(line: 105, column: 5, scope: !141)
!327 = !DILocation(line: 105, column: 19, scope: !141)
!328 = !DILocation(line: 105, column: 40, scope: !141)
!329 = !DILocation(line: 105, column: 43, scope: !141)
!330 = !DILocation(line: 105, column: 26, scope: !141)
!331 = !DILocation(line: 106, column: 5, scope: !141)
!332 = !DILocation(line: 106, column: 19, scope: !141)
!333 = !DILocation(line: 106, column: 40, scope: !141)
!334 = !DILocation(line: 106, column: 43, scope: !141)
!335 = !DILocation(line: 106, column: 26, scope: !141)
!336 = !DILocation(line: 109, column: 5, scope: !141)
!337 = !DILocation(line: 110, column: 3, scope: !106)
!338 = !DILocation(line: 116, column: 5, scope: !158)
!339 = !DILocation(line: 116, column: 19, scope: !158)
!340 = !DILocation(line: 116, column: 26, scope: !158)
!341 = !DILocation(line: 117, column: 5, scope: !158)
!342 = !DILocation(line: 117, column: 19, scope: !158)
!343 = !DILocation(line: 117, column: 38, scope: !158)
!344 = !DILocation(line: 117, column: 42, scope: !158)
!345 = !DILocation(line: 117, column: 24, scope: !158)
!346 = !DILocation(line: 118, column: 5, scope: !158)
!347 = !DILocation(line: 118, column: 19, scope: !158)
!348 = !DILocation(line: 118, column: 38, scope: !158)
!349 = !DILocation(line: 118, column: 42, scope: !158)
!350 = !DILocation(line: 118, column: 24, scope: !158)
!351 = !DILocation(line: 119, column: 5, scope: !158)
!352 = !DILocation(line: 119, column: 19, scope: !158)
!353 = !DILocation(line: 119, column: 38, scope: !158)
!354 = !DILocation(line: 119, column: 42, scope: !158)
!355 = !DILocation(line: 119, column: 24, scope: !158)
!356 = !DILocation(line: 121, column: 5, scope: !158)
!357 = !DILocation(line: 121, column: 19, scope: !158)
!358 = !DILocation(line: 121, column: 40, scope: !158)
!359 = !DILocation(line: 121, column: 44, scope: !158)
!360 = !DILocation(line: 121, column: 24, scope: !158)
!361 = !DILocation(line: 122, column: 5, scope: !158)
!362 = !DILocation(line: 122, column: 19, scope: !158)
!363 = !DILocation(line: 122, column: 40, scope: !158)
!364 = !DILocation(line: 122, column: 44, scope: !158)
!365 = !DILocation(line: 122, column: 24, scope: !158)
!366 = !DILocation(line: 123, column: 5, scope: !158)
!367 = !DILocation(line: 123, column: 19, scope: !158)
!368 = !DILocation(line: 123, column: 38, scope: !158)
!369 = !DILocation(line: 123, column: 42, scope: !158)
!370 = !DILocation(line: 123, column: 24, scope: !158)
!371 = !DILocation(line: 124, column: 5, scope: !158)
!372 = !DILocation(line: 124, column: 19, scope: !158)
!373 = !DILocation(line: 124, column: 38, scope: !158)
!374 = !DILocation(line: 124, column: 42, scope: !158)
!375 = !DILocation(line: 124, column: 24, scope: !158)
!376 = !DILocation(line: 125, column: 5, scope: !158)
!377 = !DILocation(line: 125, column: 19, scope: !158)
!378 = !DILocation(line: 125, column: 37, scope: !158)
!379 = !DILocation(line: 125, column: 41, scope: !158)
!380 = !DILocation(line: 125, column: 23, scope: !158)
!381 = !DILocation(line: 127, column: 5, scope: !158)
!382 = !DILocation(line: 127, column: 19, scope: !158)
!383 = !DILocation(line: 127, column: 40, scope: !158)
!384 = !DILocation(line: 127, column: 44, scope: !158)
!385 = !DILocation(line: 127, column: 24, scope: !158)
!386 = !DILocation(line: 128, column: 5, scope: !158)
!387 = !DILocation(line: 128, column: 19, scope: !158)
!388 = !DILocation(line: 128, column: 40, scope: !158)
!389 = !DILocation(line: 128, column: 44, scope: !158)
!390 = !DILocation(line: 128, column: 24, scope: !158)
!391 = !DILocation(line: 129, column: 5, scope: !158)
!392 = !DILocation(line: 129, column: 19, scope: !158)
!393 = !DILocation(line: 129, column: 38, scope: !158)
!394 = !DILocation(line: 129, column: 42, scope: !158)
!395 = !DILocation(line: 129, column: 24, scope: !158)
!396 = !DILocation(line: 130, column: 5, scope: !158)
!397 = !DILocation(line: 130, column: 19, scope: !158)
!398 = !DILocation(line: 130, column: 38, scope: !158)
!399 = !DILocation(line: 130, column: 42, scope: !158)
!400 = !DILocation(line: 130, column: 24, scope: !158)
!401 = !DILocation(line: 131, column: 5, scope: !158)
!402 = !DILocation(line: 131, column: 19, scope: !158)
!403 = !DILocation(line: 131, column: 37, scope: !158)
!404 = !DILocation(line: 131, column: 41, scope: !158)
!405 = !DILocation(line: 131, column: 23, scope: !158)
!406 = !DILocation(line: 134, column: 5, scope: !158)
!407 = !DILocation(line: 134, column: 19, scope: !158)
!408 = !DILocation(line: 134, column: 40, scope: !158)
!409 = !DILocation(line: 134, column: 43, scope: !158)
!410 = !DILocation(line: 134, column: 26, scope: !158)
!411 = !DILocation(line: 135, column: 5, scope: !158)
!412 = !DILocation(line: 135, column: 19, scope: !158)
!413 = !DILocation(line: 135, column: 40, scope: !158)
!414 = !DILocation(line: 135, column: 43, scope: !158)
!415 = !DILocation(line: 135, column: 26, scope: !158)
!416 = !DILocation(line: 136, column: 5, scope: !158)
!417 = !DILocation(line: 136, column: 19, scope: !158)
!418 = !DILocation(line: 136, column: 40, scope: !158)
!419 = !DILocation(line: 136, column: 43, scope: !158)
!420 = !DILocation(line: 136, column: 26, scope: !158)
!421 = !DILocation(line: 137, column: 5, scope: !158)
!422 = !DILocation(line: 137, column: 19, scope: !158)
!423 = !DILocation(line: 137, column: 40, scope: !158)
!424 = !DILocation(line: 137, column: 43, scope: !158)
!425 = !DILocation(line: 137, column: 26, scope: !158)
!426 = !DILocation(line: 138, column: 5, scope: !158)
!427 = !DILocation(line: 138, column: 19, scope: !158)
!428 = !DILocation(line: 138, column: 45, scope: !158)
!429 = !DILocation(line: 138, column: 30, scope: !158)
!430 = !DILocation(line: 139, column: 5, scope: !158)
!431 = !DILocation(line: 139, column: 19, scope: !158)
!432 = !DILocation(line: 139, column: 45, scope: !158)
!433 = !DILocation(line: 139, column: 30, scope: !158)
!434 = !DILocation(line: 140, column: 5, scope: !158)
!435 = !DILocation(line: 140, column: 19, scope: !158)
!436 = !DILocation(line: 140, column: 45, scope: !158)
!437 = !DILocation(line: 140, column: 30, scope: !158)
!438 = !DILocation(line: 141, column: 5, scope: !158)
!439 = !DILocation(line: 141, column: 19, scope: !158)
!440 = !DILocation(line: 141, column: 45, scope: !158)
!441 = !DILocation(line: 141, column: 30, scope: !158)
!442 = !DILocation(line: 144, column: 5, scope: !158)
!443 = !DILocation(line: 146, column: 3, scope: !106)
!444 = !DILocation(line: 150, column: 5, scope: !181)
!445 = !DILocation(line: 150, column: 19, scope: !181)
!446 = !DILocation(line: 150, column: 26, scope: !181)
!447 = !DILocation(line: 152, column: 5, scope: !181)
!448 = !DILocation(line: 152, column: 13, scope: !181)
!449 = !DILocation(line: 152, column: 19, scope: !181)
!450 = !DILocation(line: 152, column: 25, scope: !181)
!451 = !DILocation(line: 152, column: 31, scope: !181)
!452 = !DILocation(line: 153, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !181, file: !1, line: 153, column: 9)
!454 = !DILocation(line: 153, column: 9, scope: !181)
!455 = !DILocation(line: 155, column: 41, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !1, line: 153, column: 17)
!457 = !DILocation(line: 155, column: 45, scope: !456)
!458 = !DILocation(line: 155, column: 14, scope: !456)
!459 = !DILocation(line: 155, column: 12, scope: !456)
!460 = !DILocation(line: 156, column: 41, scope: !456)
!461 = !DILocation(line: 156, column: 45, scope: !456)
!462 = !DILocation(line: 156, column: 14, scope: !456)
!463 = !DILocation(line: 156, column: 12, scope: !456)
!464 = !DILocation(line: 157, column: 41, scope: !456)
!465 = !DILocation(line: 157, column: 45, scope: !456)
!466 = !DILocation(line: 157, column: 14, scope: !456)
!467 = !DILocation(line: 157, column: 12, scope: !456)
!468 = !DILocation(line: 158, column: 41, scope: !456)
!469 = !DILocation(line: 158, column: 45, scope: !456)
!470 = !DILocation(line: 158, column: 14, scope: !456)
!471 = !DILocation(line: 158, column: 12, scope: !456)
!472 = !DILocation(line: 159, column: 5, scope: !456)
!473 = !DILocation(line: 161, column: 48, scope: !474)
!474 = distinct !DILexicalBlock(scope: !453, file: !1, line: 159, column: 12)
!475 = !DILocation(line: 161, column: 52, scope: !474)
!476 = !DILocation(line: 161, column: 32, scope: !474)
!477 = !DILocation(line: 161, column: 14, scope: !474)
!478 = !DILocation(line: 161, column: 12, scope: !474)
!479 = !DILocation(line: 162, column: 48, scope: !474)
!480 = !DILocation(line: 162, column: 52, scope: !474)
!481 = !DILocation(line: 162, column: 32, scope: !474)
!482 = !DILocation(line: 162, column: 14, scope: !474)
!483 = !DILocation(line: 162, column: 12, scope: !474)
!484 = !DILocation(line: 163, column: 48, scope: !474)
!485 = !DILocation(line: 163, column: 52, scope: !474)
!486 = !DILocation(line: 163, column: 32, scope: !474)
!487 = !DILocation(line: 163, column: 14, scope: !474)
!488 = !DILocation(line: 163, column: 12, scope: !474)
!489 = !DILocation(line: 164, column: 48, scope: !474)
!490 = !DILocation(line: 164, column: 52, scope: !474)
!491 = !DILocation(line: 164, column: 32, scope: !474)
!492 = !DILocation(line: 164, column: 14, scope: !474)
!493 = !DILocation(line: 164, column: 12, scope: !474)
!494 = !DILocation(line: 167, column: 30, scope: !181)
!495 = !DILocation(line: 167, column: 36, scope: !181)
!496 = !DILocation(line: 167, column: 12, scope: !181)
!497 = !DILocation(line: 167, column: 10, scope: !181)
!498 = !DILocation(line: 168, column: 30, scope: !181)
!499 = !DILocation(line: 168, column: 36, scope: !181)
!500 = !DILocation(line: 168, column: 12, scope: !181)
!501 = !DILocation(line: 168, column: 10, scope: !181)
!502 = !DILocation(line: 169, column: 30, scope: !181)
!503 = !DILocation(line: 169, column: 36, scope: !181)
!504 = !DILocation(line: 169, column: 12, scope: !181)
!505 = !DILocation(line: 169, column: 10, scope: !181)
!506 = !DILocation(line: 170, column: 30, scope: !181)
!507 = !DILocation(line: 170, column: 36, scope: !181)
!508 = !DILocation(line: 170, column: 12, scope: !181)
!509 = !DILocation(line: 170, column: 10, scope: !181)
!510 = !DILocation(line: 172, column: 26, scope: !181)
!511 = !DILocation(line: 172, column: 32, scope: !181)
!512 = !DILocation(line: 172, column: 12, scope: !181)
!513 = !DILocation(line: 172, column: 10, scope: !181)
!514 = !DILocation(line: 173, column: 26, scope: !181)
!515 = !DILocation(line: 173, column: 32, scope: !181)
!516 = !DILocation(line: 173, column: 12, scope: !181)
!517 = !DILocation(line: 173, column: 10, scope: !181)
!518 = !DILocation(line: 174, column: 26, scope: !181)
!519 = !DILocation(line: 174, column: 32, scope: !181)
!520 = !DILocation(line: 174, column: 12, scope: !181)
!521 = !DILocation(line: 174, column: 10, scope: !181)
!522 = !DILocation(line: 175, column: 26, scope: !181)
!523 = !DILocation(line: 175, column: 32, scope: !181)
!524 = !DILocation(line: 175, column: 12, scope: !181)
!525 = !DILocation(line: 175, column: 10, scope: !181)
!526 = !DILocation(line: 177, column: 29, scope: !181)
!527 = !DILocation(line: 177, column: 35, scope: !181)
!528 = !DILocation(line: 177, column: 12, scope: !181)
!529 = !DILocation(line: 177, column: 10, scope: !181)
!530 = !DILocation(line: 178, column: 29, scope: !181)
!531 = !DILocation(line: 178, column: 35, scope: !181)
!532 = !DILocation(line: 178, column: 12, scope: !181)
!533 = !DILocation(line: 178, column: 10, scope: !181)
!534 = !DILocation(line: 179, column: 29, scope: !181)
!535 = !DILocation(line: 179, column: 35, scope: !181)
!536 = !DILocation(line: 179, column: 12, scope: !181)
!537 = !DILocation(line: 179, column: 10, scope: !181)
!538 = !DILocation(line: 180, column: 29, scope: !181)
!539 = !DILocation(line: 180, column: 35, scope: !181)
!540 = !DILocation(line: 180, column: 12, scope: !181)
!541 = !DILocation(line: 180, column: 10, scope: !181)
!542 = !DILocation(line: 182, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !181, file: !1, line: 182, column: 9)
!544 = !DILocation(line: 182, column: 9, scope: !181)
!545 = !DILocation(line: 184, column: 35, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !1, line: 182, column: 17)
!547 = !DILocation(line: 184, column: 39, scope: !546)
!548 = !DILocation(line: 184, column: 51, scope: !546)
!549 = !DILocation(line: 184, column: 7, scope: !546)
!550 = !DILocation(line: 185, column: 35, scope: !546)
!551 = !DILocation(line: 185, column: 39, scope: !546)
!552 = !DILocation(line: 185, column: 51, scope: !546)
!553 = !DILocation(line: 185, column: 7, scope: !546)
!554 = !DILocation(line: 186, column: 35, scope: !546)
!555 = !DILocation(line: 186, column: 39, scope: !546)
!556 = !DILocation(line: 186, column: 51, scope: !546)
!557 = !DILocation(line: 186, column: 7, scope: !546)
!558 = !DILocation(line: 187, column: 35, scope: !546)
!559 = !DILocation(line: 187, column: 39, scope: !546)
!560 = !DILocation(line: 187, column: 51, scope: !546)
!561 = !DILocation(line: 187, column: 7, scope: !546)
!562 = !DILocation(line: 188, column: 5, scope: !546)
!563 = !DILocation(line: 190, column: 23, scope: !564)
!564 = distinct !DILexicalBlock(scope: !543, file: !1, line: 188, column: 12)
!565 = !DILocation(line: 190, column: 27, scope: !564)
!566 = !DILocation(line: 190, column: 56, scope: !564)
!567 = !DILocation(line: 190, column: 38, scope: !564)
!568 = !DILocation(line: 190, column: 7, scope: !564)
!569 = !DILocation(line: 191, column: 23, scope: !564)
!570 = !DILocation(line: 191, column: 27, scope: !564)
!571 = !DILocation(line: 191, column: 56, scope: !564)
!572 = !DILocation(line: 191, column: 38, scope: !564)
!573 = !DILocation(line: 191, column: 7, scope: !564)
!574 = !DILocation(line: 192, column: 23, scope: !564)
!575 = !DILocation(line: 192, column: 27, scope: !564)
!576 = !DILocation(line: 192, column: 56, scope: !564)
!577 = !DILocation(line: 192, column: 38, scope: !564)
!578 = !DILocation(line: 192, column: 7, scope: !564)
!579 = !DILocation(line: 193, column: 23, scope: !564)
!580 = !DILocation(line: 193, column: 27, scope: !564)
!581 = !DILocation(line: 193, column: 56, scope: !564)
!582 = !DILocation(line: 193, column: 38, scope: !564)
!583 = !DILocation(line: 193, column: 7, scope: !564)
!584 = !DILocation(line: 195, column: 3, scope: !106)
!585 = !DILocation(line: 196, column: 1, scope: !106)
!586 = distinct !DISubprogram(name: "VFilter16_SSE2", scope: !1, file: !1, line: 689, type: !587, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !115, !29, !29, !29, !29}
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!590 = !DILocalVariable(name: "p", arg: 1, scope: !586, file: !1, line: 689, type: !115)
!591 = !DILocalVariable(name: "stride", arg: 2, scope: !586, file: !1, line: 689, type: !29)
!592 = !DILocalVariable(name: "thresh", arg: 3, scope: !586, file: !1, line: 690, type: !29)
!593 = !DILocalVariable(name: "ithresh", arg: 4, scope: !586, file: !1, line: 690, type: !29)
!594 = !DILocalVariable(name: "hev_thresh", arg: 5, scope: !586, file: !1, line: 690, type: !29)
!595 = !DILocalVariable(name: "t1", scope: !586, file: !1, line: 691, type: !5)
!596 = !DILocalVariable(name: "mask", scope: !586, file: !1, line: 692, type: !5)
!597 = !DILocalVariable(name: "p2", scope: !586, file: !1, line: 693, type: !5)
!598 = !DILocalVariable(name: "p1", scope: !586, file: !1, line: 693, type: !5)
!599 = !DILocalVariable(name: "p0", scope: !586, file: !1, line: 693, type: !5)
!600 = !DILocalVariable(name: "q0", scope: !586, file: !1, line: 693, type: !5)
!601 = !DILocalVariable(name: "q1", scope: !586, file: !1, line: 693, type: !5)
!602 = !DILocalVariable(name: "q2", scope: !586, file: !1, line: 693, type: !5)
!603 = !DILocation(line: 689, column: 37, scope: !586)
!604 = !DILocation(line: 689, column: 44, scope: !586)
!605 = !DILocation(line: 690, column: 32, scope: !586)
!606 = !DILocation(line: 690, column: 44, scope: !586)
!607 = !DILocation(line: 690, column: 57, scope: !586)
!608 = !DILocation(line: 691, column: 3, scope: !586)
!609 = !DILocation(line: 691, column: 11, scope: !586)
!610 = !DILocation(line: 692, column: 3, scope: !586)
!611 = !DILocation(line: 692, column: 11, scope: !586)
!612 = !DILocation(line: 693, column: 3, scope: !586)
!613 = !DILocation(line: 693, column: 11, scope: !586)
!614 = !DILocation(line: 693, column: 15, scope: !586)
!615 = !DILocation(line: 693, column: 19, scope: !586)
!616 = !DILocation(line: 693, column: 23, scope: !586)
!617 = !DILocation(line: 693, column: 27, scope: !586)
!618 = !DILocation(line: 693, column: 31, scope: !586)
!619 = !DILocation(line: 696, column: 3, scope: !620)
!620 = distinct !DILexicalBlock(scope: !586, file: !1, line: 696, column: 3)
!621 = !DILocation(line: 697, column: 3, scope: !586)
!622 = !DILocation(line: 697, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !586, file: !1, line: 697, column: 3)
!624 = !DILocation(line: 700, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !586, file: !1, line: 700, column: 3)
!626 = !DILocation(line: 701, column: 3, scope: !586)
!627 = !DILocation(line: 701, column: 3, scope: !628)
!628 = distinct !DILexicalBlock(scope: !586, file: !1, line: 701, column: 3)
!629 = !DILocation(line: 703, column: 40, scope: !586)
!630 = !DILocation(line: 703, column: 48, scope: !586)
!631 = !DILocation(line: 703, column: 3, scope: !586)
!632 = !DILocation(line: 704, column: 55, scope: !586)
!633 = !DILocation(line: 704, column: 3, scope: !586)
!634 = !DILocation(line: 707, column: 31, scope: !586)
!635 = !DILocation(line: 707, column: 38, scope: !586)
!636 = !DILocation(line: 707, column: 36, scope: !586)
!637 = !DILocation(line: 707, column: 47, scope: !586)
!638 = !DILocation(line: 707, column: 3, scope: !586)
!639 = !DILocation(line: 708, column: 31, scope: !586)
!640 = !DILocation(line: 708, column: 38, scope: !586)
!641 = !DILocation(line: 708, column: 36, scope: !586)
!642 = !DILocation(line: 708, column: 47, scope: !586)
!643 = !DILocation(line: 708, column: 3, scope: !586)
!644 = !DILocation(line: 709, column: 31, scope: !586)
!645 = !DILocation(line: 709, column: 38, scope: !586)
!646 = !DILocation(line: 709, column: 36, scope: !586)
!647 = !DILocation(line: 709, column: 47, scope: !586)
!648 = !DILocation(line: 709, column: 3, scope: !586)
!649 = !DILocation(line: 710, column: 31, scope: !586)
!650 = !DILocation(line: 710, column: 38, scope: !586)
!651 = !DILocation(line: 710, column: 36, scope: !586)
!652 = !DILocation(line: 710, column: 47, scope: !586)
!653 = !DILocation(line: 710, column: 3, scope: !586)
!654 = !DILocation(line: 711, column: 31, scope: !586)
!655 = !DILocation(line: 711, column: 38, scope: !586)
!656 = !DILocation(line: 711, column: 36, scope: !586)
!657 = !DILocation(line: 711, column: 47, scope: !586)
!658 = !DILocation(line: 711, column: 3, scope: !586)
!659 = !DILocation(line: 712, column: 31, scope: !586)
!660 = !DILocation(line: 712, column: 38, scope: !586)
!661 = !DILocation(line: 712, column: 36, scope: !586)
!662 = !DILocation(line: 712, column: 47, scope: !586)
!663 = !DILocation(line: 712, column: 3, scope: !586)
!664 = !DILocation(line: 713, column: 1, scope: !586)
!665 = distinct !DISubprogram(name: "HFilter16_SSE2", scope: !1, file: !1, line: 715, type: !587, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!667 = !DILocalVariable(name: "p", arg: 1, scope: !665, file: !1, line: 715, type: !115)
!668 = !DILocalVariable(name: "stride", arg: 2, scope: !665, file: !1, line: 715, type: !29)
!669 = !DILocalVariable(name: "thresh", arg: 3, scope: !665, file: !1, line: 716, type: !29)
!670 = !DILocalVariable(name: "ithresh", arg: 4, scope: !665, file: !1, line: 716, type: !29)
!671 = !DILocalVariable(name: "hev_thresh", arg: 5, scope: !665, file: !1, line: 716, type: !29)
!672 = !DILocalVariable(name: "mask", scope: !665, file: !1, line: 717, type: !5)
!673 = !DILocalVariable(name: "p3", scope: !665, file: !1, line: 718, type: !5)
!674 = !DILocalVariable(name: "p2", scope: !665, file: !1, line: 718, type: !5)
!675 = !DILocalVariable(name: "p1", scope: !665, file: !1, line: 718, type: !5)
!676 = !DILocalVariable(name: "p0", scope: !665, file: !1, line: 718, type: !5)
!677 = !DILocalVariable(name: "q0", scope: !665, file: !1, line: 718, type: !5)
!678 = !DILocalVariable(name: "q1", scope: !665, file: !1, line: 718, type: !5)
!679 = !DILocalVariable(name: "q2", scope: !665, file: !1, line: 718, type: !5)
!680 = !DILocalVariable(name: "q3", scope: !665, file: !1, line: 718, type: !5)
!681 = !DILocalVariable(name: "b", scope: !665, file: !1, line: 720, type: !682)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!683 = !DILocation(line: 715, column: 37, scope: !665)
!684 = !DILocation(line: 715, column: 44, scope: !665)
!685 = !DILocation(line: 716, column: 32, scope: !665)
!686 = !DILocation(line: 716, column: 44, scope: !665)
!687 = !DILocation(line: 716, column: 57, scope: !665)
!688 = !DILocation(line: 717, column: 3, scope: !665)
!689 = !DILocation(line: 717, column: 11, scope: !665)
!690 = !DILocation(line: 718, column: 3, scope: !665)
!691 = !DILocation(line: 718, column: 11, scope: !665)
!692 = !DILocation(line: 718, column: 15, scope: !665)
!693 = !DILocation(line: 718, column: 19, scope: !665)
!694 = !DILocation(line: 718, column: 23, scope: !665)
!695 = !DILocation(line: 718, column: 27, scope: !665)
!696 = !DILocation(line: 718, column: 31, scope: !665)
!697 = !DILocation(line: 718, column: 35, scope: !665)
!698 = !DILocation(line: 718, column: 39, scope: !665)
!699 = !DILocation(line: 720, column: 3, scope: !665)
!700 = !DILocation(line: 720, column: 18, scope: !665)
!701 = !DILocation(line: 720, column: 22, scope: !665)
!702 = !DILocation(line: 720, column: 24, scope: !665)
!703 = !DILocation(line: 721, column: 17, scope: !665)
!704 = !DILocation(line: 721, column: 20, scope: !665)
!705 = !DILocation(line: 721, column: 28, scope: !665)
!706 = !DILocation(line: 721, column: 26, scope: !665)
!707 = !DILocation(line: 721, column: 22, scope: !665)
!708 = !DILocation(line: 721, column: 36, scope: !665)
!709 = !DILocation(line: 721, column: 3, scope: !665)
!710 = !DILocation(line: 722, column: 3, scope: !665)
!711 = !DILocation(line: 722, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !665, file: !1, line: 722, column: 3)
!713 = !DILocation(line: 724, column: 17, scope: !665)
!714 = !DILocation(line: 724, column: 20, scope: !665)
!715 = !DILocation(line: 724, column: 28, scope: !665)
!716 = !DILocation(line: 724, column: 26, scope: !665)
!717 = !DILocation(line: 724, column: 22, scope: !665)
!718 = !DILocation(line: 724, column: 36, scope: !665)
!719 = !DILocation(line: 724, column: 3, scope: !665)
!720 = !DILocation(line: 725, column: 3, scope: !665)
!721 = !DILocation(line: 725, column: 3, scope: !722)
!722 = distinct !DILexicalBlock(scope: !665, file: !1, line: 725, column: 3)
!723 = !DILocation(line: 727, column: 40, scope: !665)
!724 = !DILocation(line: 727, column: 48, scope: !665)
!725 = !DILocation(line: 727, column: 3, scope: !665)
!726 = !DILocation(line: 728, column: 55, scope: !665)
!727 = !DILocation(line: 728, column: 3, scope: !665)
!728 = !DILocation(line: 730, column: 38, scope: !665)
!729 = !DILocation(line: 730, column: 41, scope: !665)
!730 = !DILocation(line: 730, column: 49, scope: !665)
!731 = !DILocation(line: 730, column: 47, scope: !665)
!732 = !DILocation(line: 730, column: 43, scope: !665)
!733 = !DILocation(line: 730, column: 57, scope: !665)
!734 = !DILocation(line: 730, column: 3, scope: !665)
!735 = !DILocation(line: 731, column: 38, scope: !665)
!736 = !DILocation(line: 731, column: 41, scope: !665)
!737 = !DILocation(line: 731, column: 49, scope: !665)
!738 = !DILocation(line: 731, column: 47, scope: !665)
!739 = !DILocation(line: 731, column: 43, scope: !665)
!740 = !DILocation(line: 731, column: 57, scope: !665)
!741 = !DILocation(line: 731, column: 3, scope: !665)
!742 = !DILocation(line: 732, column: 1, scope: !665)
!743 = distinct !DISubprogram(name: "VFilter8_SSE2", scope: !1, file: !1, line: 797, type: !744, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !115, !115, !29, !29, !29, !29}
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !764, !765, !767, !768, !770, !771, !773, !774, !777, !778, !780, !781, !783, !784, !786}
!747 = !DILocalVariable(name: "u", arg: 1, scope: !743, file: !1, line: 797, type: !115)
!748 = !DILocalVariable(name: "v", arg: 2, scope: !743, file: !1, line: 797, type: !115)
!749 = !DILocalVariable(name: "stride", arg: 3, scope: !743, file: !1, line: 797, type: !29)
!750 = !DILocalVariable(name: "thresh", arg: 4, scope: !743, file: !1, line: 798, type: !29)
!751 = !DILocalVariable(name: "ithresh", arg: 5, scope: !743, file: !1, line: 798, type: !29)
!752 = !DILocalVariable(name: "hev_thresh", arg: 6, scope: !743, file: !1, line: 798, type: !29)
!753 = !DILocalVariable(name: "mask", scope: !743, file: !1, line: 799, type: !5)
!754 = !DILocalVariable(name: "t1", scope: !743, file: !1, line: 800, type: !5)
!755 = !DILocalVariable(name: "p2", scope: !743, file: !1, line: 800, type: !5)
!756 = !DILocalVariable(name: "p1", scope: !743, file: !1, line: 800, type: !5)
!757 = !DILocalVariable(name: "p0", scope: !743, file: !1, line: 800, type: !5)
!758 = !DILocalVariable(name: "q0", scope: !743, file: !1, line: 800, type: !5)
!759 = !DILocalVariable(name: "q1", scope: !743, file: !1, line: 800, type: !5)
!760 = !DILocalVariable(name: "q2", scope: !743, file: !1, line: 800, type: !5)
!761 = !DILocalVariable(name: "U", scope: !762, file: !1, line: 803, type: !4)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 803, column: 3)
!763 = distinct !DILexicalBlock(scope: !743, file: !1, line: 803, column: 3)
!764 = !DILocalVariable(name: "V", scope: !762, file: !1, line: 803, type: !4)
!765 = !DILocalVariable(name: "U", scope: !766, file: !1, line: 803, type: !4)
!766 = distinct !DILexicalBlock(scope: !763, file: !1, line: 803, column: 3)
!767 = !DILocalVariable(name: "V", scope: !766, file: !1, line: 803, type: !4)
!768 = !DILocalVariable(name: "U", scope: !769, file: !1, line: 803, type: !4)
!769 = distinct !DILexicalBlock(scope: !763, file: !1, line: 803, column: 3)
!770 = !DILocalVariable(name: "V", scope: !769, file: !1, line: 803, type: !4)
!771 = !DILocalVariable(name: "U", scope: !772, file: !1, line: 803, type: !4)
!772 = distinct !DILexicalBlock(scope: !763, file: !1, line: 803, column: 3)
!773 = !DILocalVariable(name: "V", scope: !772, file: !1, line: 803, type: !4)
!774 = !DILocalVariable(name: "U", scope: !775, file: !1, line: 807, type: !4)
!775 = distinct !DILexicalBlock(scope: !776, file: !1, line: 807, column: 3)
!776 = distinct !DILexicalBlock(scope: !743, file: !1, line: 807, column: 3)
!777 = !DILocalVariable(name: "V", scope: !775, file: !1, line: 807, type: !4)
!778 = !DILocalVariable(name: "U", scope: !779, file: !1, line: 807, type: !4)
!779 = distinct !DILexicalBlock(scope: !776, file: !1, line: 807, column: 3)
!780 = !DILocalVariable(name: "V", scope: !779, file: !1, line: 807, type: !4)
!781 = !DILocalVariable(name: "U", scope: !782, file: !1, line: 807, type: !4)
!782 = distinct !DILexicalBlock(scope: !776, file: !1, line: 807, column: 3)
!783 = !DILocalVariable(name: "V", scope: !782, file: !1, line: 807, type: !4)
!784 = !DILocalVariable(name: "U", scope: !785, file: !1, line: 807, type: !4)
!785 = distinct !DILexicalBlock(scope: !776, file: !1, line: 807, column: 3)
!786 = !DILocalVariable(name: "V", scope: !785, file: !1, line: 807, type: !4)
!787 = !DILocation(line: 797, column: 36, scope: !743)
!788 = !DILocation(line: 797, column: 48, scope: !743)
!789 = !DILocation(line: 797, column: 55, scope: !743)
!790 = !DILocation(line: 798, column: 31, scope: !743)
!791 = !DILocation(line: 798, column: 43, scope: !743)
!792 = !DILocation(line: 798, column: 56, scope: !743)
!793 = !DILocation(line: 799, column: 3, scope: !743)
!794 = !DILocation(line: 799, column: 11, scope: !743)
!795 = !DILocation(line: 800, column: 3, scope: !743)
!796 = !DILocation(line: 800, column: 11, scope: !743)
!797 = !DILocation(line: 800, column: 15, scope: !743)
!798 = !DILocation(line: 800, column: 19, scope: !743)
!799 = !DILocation(line: 800, column: 23, scope: !743)
!800 = !DILocation(line: 800, column: 27, scope: !743)
!801 = !DILocation(line: 800, column: 31, scope: !743)
!802 = !DILocation(line: 800, column: 35, scope: !743)
!803 = !DILocation(line: 803, column: 3, scope: !763)
!804 = !DILocation(line: 803, column: 3, scope: !762)
!805 = !DILocation(line: 803, column: 3, scope: !766)
!806 = !DILocation(line: 803, column: 3, scope: !769)
!807 = !DILocation(line: 803, column: 3, scope: !772)
!808 = !DILocation(line: 804, column: 3, scope: !743)
!809 = !DILocation(line: 804, column: 3, scope: !810)
!810 = distinct !DILexicalBlock(scope: !743, file: !1, line: 804, column: 3)
!811 = !DILocation(line: 807, column: 3, scope: !776)
!812 = !DILocation(line: 807, column: 3, scope: !775)
!813 = !DILocation(line: 807, column: 3, scope: !779)
!814 = !DILocation(line: 807, column: 3, scope: !782)
!815 = !DILocation(line: 807, column: 3, scope: !785)
!816 = !DILocation(line: 808, column: 3, scope: !743)
!817 = !DILocation(line: 808, column: 3, scope: !818)
!818 = distinct !DILexicalBlock(scope: !743, file: !1, line: 808, column: 3)
!819 = !DILocation(line: 810, column: 40, scope: !743)
!820 = !DILocation(line: 810, column: 48, scope: !743)
!821 = !DILocation(line: 810, column: 3, scope: !743)
!822 = !DILocation(line: 811, column: 55, scope: !743)
!823 = !DILocation(line: 811, column: 3, scope: !743)
!824 = !DILocation(line: 814, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !743, file: !1, line: 814, column: 3)
!826 = !DILocation(line: 815, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !743, file: !1, line: 815, column: 3)
!828 = !DILocation(line: 816, column: 3, scope: !829)
!829 = distinct !DILexicalBlock(scope: !743, file: !1, line: 816, column: 3)
!830 = !DILocation(line: 817, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !743, file: !1, line: 817, column: 3)
!832 = !DILocation(line: 818, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !743, file: !1, line: 818, column: 3)
!834 = !DILocation(line: 819, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !743, file: !1, line: 819, column: 3)
!836 = !DILocation(line: 820, column: 1, scope: !743)
!837 = distinct !DISubprogram(name: "HFilter8_SSE2", scope: !1, file: !1, line: 822, type: !744, scopeLine: 823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !838)
!838 = !{!839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!839 = !DILocalVariable(name: "u", arg: 1, scope: !837, file: !1, line: 822, type: !115)
!840 = !DILocalVariable(name: "v", arg: 2, scope: !837, file: !1, line: 822, type: !115)
!841 = !DILocalVariable(name: "stride", arg: 3, scope: !837, file: !1, line: 822, type: !29)
!842 = !DILocalVariable(name: "thresh", arg: 4, scope: !837, file: !1, line: 823, type: !29)
!843 = !DILocalVariable(name: "ithresh", arg: 5, scope: !837, file: !1, line: 823, type: !29)
!844 = !DILocalVariable(name: "hev_thresh", arg: 6, scope: !837, file: !1, line: 823, type: !29)
!845 = !DILocalVariable(name: "mask", scope: !837, file: !1, line: 824, type: !5)
!846 = !DILocalVariable(name: "p3", scope: !837, file: !1, line: 825, type: !5)
!847 = !DILocalVariable(name: "p2", scope: !837, file: !1, line: 825, type: !5)
!848 = !DILocalVariable(name: "p1", scope: !837, file: !1, line: 825, type: !5)
!849 = !DILocalVariable(name: "p0", scope: !837, file: !1, line: 825, type: !5)
!850 = !DILocalVariable(name: "q0", scope: !837, file: !1, line: 825, type: !5)
!851 = !DILocalVariable(name: "q1", scope: !837, file: !1, line: 825, type: !5)
!852 = !DILocalVariable(name: "q2", scope: !837, file: !1, line: 825, type: !5)
!853 = !DILocalVariable(name: "q3", scope: !837, file: !1, line: 825, type: !5)
!854 = !DILocalVariable(name: "tu", scope: !837, file: !1, line: 827, type: !682)
!855 = !DILocalVariable(name: "tv", scope: !837, file: !1, line: 828, type: !682)
!856 = !DILocation(line: 822, column: 36, scope: !837)
!857 = !DILocation(line: 822, column: 48, scope: !837)
!858 = !DILocation(line: 822, column: 55, scope: !837)
!859 = !DILocation(line: 823, column: 31, scope: !837)
!860 = !DILocation(line: 823, column: 43, scope: !837)
!861 = !DILocation(line: 823, column: 56, scope: !837)
!862 = !DILocation(line: 824, column: 3, scope: !837)
!863 = !DILocation(line: 824, column: 11, scope: !837)
!864 = !DILocation(line: 825, column: 3, scope: !837)
!865 = !DILocation(line: 825, column: 11, scope: !837)
!866 = !DILocation(line: 825, column: 15, scope: !837)
!867 = !DILocation(line: 825, column: 19, scope: !837)
!868 = !DILocation(line: 825, column: 23, scope: !837)
!869 = !DILocation(line: 825, column: 27, scope: !837)
!870 = !DILocation(line: 825, column: 31, scope: !837)
!871 = !DILocation(line: 825, column: 35, scope: !837)
!872 = !DILocation(line: 825, column: 39, scope: !837)
!873 = !DILocation(line: 827, column: 3, scope: !837)
!874 = !DILocation(line: 827, column: 18, scope: !837)
!875 = !DILocation(line: 827, column: 23, scope: !837)
!876 = !DILocation(line: 827, column: 25, scope: !837)
!877 = !DILocation(line: 828, column: 3, scope: !837)
!878 = !DILocation(line: 828, column: 18, scope: !837)
!879 = !DILocation(line: 828, column: 23, scope: !837)
!880 = !DILocation(line: 828, column: 25, scope: !837)
!881 = !DILocation(line: 829, column: 17, scope: !837)
!882 = !DILocation(line: 829, column: 21, scope: !837)
!883 = !DILocation(line: 829, column: 25, scope: !837)
!884 = !DILocation(line: 829, column: 3, scope: !837)
!885 = !DILocation(line: 830, column: 3, scope: !837)
!886 = !DILocation(line: 830, column: 3, scope: !887)
!887 = distinct !DILexicalBlock(scope: !837, file: !1, line: 830, column: 3)
!888 = !DILocation(line: 832, column: 17, scope: !837)
!889 = !DILocation(line: 832, column: 20, scope: !837)
!890 = !DILocation(line: 832, column: 23, scope: !837)
!891 = !DILocation(line: 832, column: 3, scope: !837)
!892 = !DILocation(line: 833, column: 3, scope: !837)
!893 = !DILocation(line: 833, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !837, file: !1, line: 833, column: 3)
!895 = !DILocation(line: 835, column: 40, scope: !837)
!896 = !DILocation(line: 835, column: 48, scope: !837)
!897 = !DILocation(line: 835, column: 3, scope: !837)
!898 = !DILocation(line: 836, column: 55, scope: !837)
!899 = !DILocation(line: 836, column: 3, scope: !837)
!900 = !DILocation(line: 838, column: 38, scope: !837)
!901 = !DILocation(line: 838, column: 42, scope: !837)
!902 = !DILocation(line: 838, column: 46, scope: !837)
!903 = !DILocation(line: 838, column: 3, scope: !837)
!904 = !DILocation(line: 839, column: 38, scope: !837)
!905 = !DILocation(line: 839, column: 41, scope: !837)
!906 = !DILocation(line: 839, column: 44, scope: !837)
!907 = !DILocation(line: 839, column: 3, scope: !837)
!908 = !DILocation(line: 840, column: 1, scope: !837)
!909 = distinct !DISubprogram(name: "VFilter16i_SSE2", scope: !1, file: !1, line: 735, type: !587, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !910)
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !925, !926, !927}
!911 = !DILocalVariable(name: "p", arg: 1, scope: !909, file: !1, line: 735, type: !115)
!912 = !DILocalVariable(name: "stride", arg: 2, scope: !909, file: !1, line: 735, type: !29)
!913 = !DILocalVariable(name: "thresh", arg: 3, scope: !909, file: !1, line: 736, type: !29)
!914 = !DILocalVariable(name: "ithresh", arg: 4, scope: !909, file: !1, line: 736, type: !29)
!915 = !DILocalVariable(name: "hev_thresh", arg: 5, scope: !909, file: !1, line: 736, type: !29)
!916 = !DILocalVariable(name: "k", scope: !909, file: !1, line: 737, type: !29)
!917 = !DILocalVariable(name: "p3", scope: !909, file: !1, line: 738, type: !5)
!918 = !DILocalVariable(name: "p2", scope: !909, file: !1, line: 738, type: !5)
!919 = !DILocalVariable(name: "p1", scope: !909, file: !1, line: 738, type: !5)
!920 = !DILocalVariable(name: "p0", scope: !909, file: !1, line: 738, type: !5)
!921 = !DILocalVariable(name: "mask", scope: !922, file: !1, line: 743, type: !5)
!922 = distinct !DILexicalBlock(scope: !923, file: !1, line: 742, column: 27)
!923 = distinct !DILexicalBlock(scope: !924, file: !1, line: 742, column: 3)
!924 = distinct !DILexicalBlock(scope: !909, file: !1, line: 742, column: 3)
!925 = !DILocalVariable(name: "tmp1", scope: !922, file: !1, line: 743, type: !5)
!926 = !DILocalVariable(name: "tmp2", scope: !922, file: !1, line: 743, type: !5)
!927 = !DILocalVariable(name: "b", scope: !922, file: !1, line: 744, type: !682)
!928 = !DILocation(line: 735, column: 38, scope: !909)
!929 = !DILocation(line: 735, column: 45, scope: !909)
!930 = !DILocation(line: 736, column: 33, scope: !909)
!931 = !DILocation(line: 736, column: 45, scope: !909)
!932 = !DILocation(line: 736, column: 58, scope: !909)
!933 = !DILocation(line: 737, column: 3, scope: !909)
!934 = !DILocation(line: 737, column: 7, scope: !909)
!935 = !DILocation(line: 738, column: 3, scope: !909)
!936 = !DILocation(line: 738, column: 11, scope: !909)
!937 = !DILocation(line: 738, column: 15, scope: !909)
!938 = !DILocation(line: 738, column: 19, scope: !909)
!939 = !DILocation(line: 738, column: 23, scope: !909)
!940 = !DILocation(line: 740, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !909, file: !1, line: 740, column: 3)
!942 = !DILocation(line: 742, column: 10, scope: !924)
!943 = !DILocation(line: 742, column: 8, scope: !924)
!944 = !DILocation(line: 742, column: 15, scope: !923)
!945 = !DILocation(line: 742, column: 17, scope: !923)
!946 = !DILocation(line: 742, column: 3, scope: !924)
!947 = !DILocation(line: 743, column: 5, scope: !922)
!948 = !DILocation(line: 743, column: 13, scope: !922)
!949 = !DILocation(line: 743, column: 19, scope: !922)
!950 = !DILocation(line: 743, column: 25, scope: !922)
!951 = !DILocation(line: 744, column: 5, scope: !922)
!952 = !DILocation(line: 744, column: 20, scope: !922)
!953 = !DILocation(line: 744, column: 24, scope: !922)
!954 = !DILocation(line: 744, column: 32, scope: !922)
!955 = !DILocation(line: 744, column: 30, scope: !922)
!956 = !DILocation(line: 744, column: 26, scope: !922)
!957 = !DILocation(line: 745, column: 14, scope: !922)
!958 = !DILocation(line: 745, column: 12, scope: !922)
!959 = !DILocation(line: 745, column: 7, scope: !922)
!960 = !DILocation(line: 747, column: 5, scope: !922)
!961 = !DILocation(line: 747, column: 5, scope: !962)
!962 = distinct !DILexicalBlock(scope: !922, file: !1, line: 747, column: 5)
!963 = !DILocation(line: 748, column: 5, scope: !964)
!964 = distinct !DILexicalBlock(scope: !922, file: !1, line: 748, column: 5)
!965 = !DILocation(line: 749, column: 5, scope: !922)
!966 = !DILocation(line: 749, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !922, file: !1, line: 749, column: 5)
!968 = !DILocation(line: 753, column: 42, scope: !922)
!969 = !DILocation(line: 753, column: 50, scope: !922)
!970 = !DILocation(line: 753, column: 5, scope: !922)
!971 = !DILocation(line: 754, column: 47, scope: !922)
!972 = !DILocation(line: 754, column: 5, scope: !922)
!973 = !DILocation(line: 757, column: 33, scope: !922)
!974 = !DILocation(line: 757, column: 39, scope: !922)
!975 = !DILocation(line: 757, column: 37, scope: !922)
!976 = !DILocation(line: 757, column: 48, scope: !922)
!977 = !DILocation(line: 757, column: 5, scope: !922)
!978 = !DILocation(line: 758, column: 33, scope: !922)
!979 = !DILocation(line: 758, column: 39, scope: !922)
!980 = !DILocation(line: 758, column: 37, scope: !922)
!981 = !DILocation(line: 758, column: 48, scope: !922)
!982 = !DILocation(line: 758, column: 5, scope: !922)
!983 = !DILocation(line: 759, column: 33, scope: !922)
!984 = !DILocation(line: 759, column: 39, scope: !922)
!985 = !DILocation(line: 759, column: 37, scope: !922)
!986 = !DILocation(line: 759, column: 48, scope: !922)
!987 = !DILocation(line: 759, column: 5, scope: !922)
!988 = !DILocation(line: 760, column: 33, scope: !922)
!989 = !DILocation(line: 760, column: 39, scope: !922)
!990 = !DILocation(line: 760, column: 37, scope: !922)
!991 = !DILocation(line: 760, column: 48, scope: !922)
!992 = !DILocation(line: 760, column: 5, scope: !922)
!993 = !DILocation(line: 763, column: 10, scope: !922)
!994 = !DILocation(line: 763, column: 8, scope: !922)
!995 = !DILocation(line: 764, column: 10, scope: !922)
!996 = !DILocation(line: 764, column: 8, scope: !922)
!997 = !DILocation(line: 765, column: 3, scope: !923)
!998 = !DILocation(line: 765, column: 3, scope: !922)
!999 = !DILocation(line: 742, column: 22, scope: !923)
!1000 = !DILocation(line: 742, column: 3, scope: !923)
!1001 = distinct !{!1001, !946, !1002, !1003}
!1002 = !DILocation(line: 765, column: 3, scope: !924)
!1003 = !{!"llvm.loop.mustprogress"}
!1004 = !DILocation(line: 766, column: 1, scope: !909)
!1005 = distinct !DISubprogram(name: "HFilter16i_SSE2", scope: !1, file: !1, line: 768, type: !587, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1021, !1022, !1023}
!1007 = !DILocalVariable(name: "p", arg: 1, scope: !1005, file: !1, line: 768, type: !115)
!1008 = !DILocalVariable(name: "stride", arg: 2, scope: !1005, file: !1, line: 768, type: !29)
!1009 = !DILocalVariable(name: "thresh", arg: 3, scope: !1005, file: !1, line: 769, type: !29)
!1010 = !DILocalVariable(name: "ithresh", arg: 4, scope: !1005, file: !1, line: 769, type: !29)
!1011 = !DILocalVariable(name: "hev_thresh", arg: 5, scope: !1005, file: !1, line: 769, type: !29)
!1012 = !DILocalVariable(name: "k", scope: !1005, file: !1, line: 770, type: !29)
!1013 = !DILocalVariable(name: "p3", scope: !1005, file: !1, line: 771, type: !5)
!1014 = !DILocalVariable(name: "p2", scope: !1005, file: !1, line: 771, type: !5)
!1015 = !DILocalVariable(name: "p1", scope: !1005, file: !1, line: 771, type: !5)
!1016 = !DILocalVariable(name: "p0", scope: !1005, file: !1, line: 771, type: !5)
!1017 = !DILocalVariable(name: "mask", scope: !1018, file: !1, line: 776, type: !5)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 775, column: 27)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 775, column: 3)
!1020 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 775, column: 3)
!1021 = !DILocalVariable(name: "tmp1", scope: !1018, file: !1, line: 776, type: !5)
!1022 = !DILocalVariable(name: "tmp2", scope: !1018, file: !1, line: 776, type: !5)
!1023 = !DILocalVariable(name: "b", scope: !1018, file: !1, line: 777, type: !682)
!1024 = !DILocation(line: 768, column: 38, scope: !1005)
!1025 = !DILocation(line: 768, column: 45, scope: !1005)
!1026 = !DILocation(line: 769, column: 33, scope: !1005)
!1027 = !DILocation(line: 769, column: 45, scope: !1005)
!1028 = !DILocation(line: 769, column: 58, scope: !1005)
!1029 = !DILocation(line: 770, column: 3, scope: !1005)
!1030 = !DILocation(line: 770, column: 7, scope: !1005)
!1031 = !DILocation(line: 771, column: 3, scope: !1005)
!1032 = !DILocation(line: 771, column: 11, scope: !1005)
!1033 = !DILocation(line: 771, column: 15, scope: !1005)
!1034 = !DILocation(line: 771, column: 19, scope: !1005)
!1035 = !DILocation(line: 771, column: 23, scope: !1005)
!1036 = !DILocation(line: 773, column: 17, scope: !1005)
!1037 = !DILocation(line: 773, column: 20, scope: !1005)
!1038 = !DILocation(line: 773, column: 28, scope: !1005)
!1039 = !DILocation(line: 773, column: 26, scope: !1005)
!1040 = !DILocation(line: 773, column: 22, scope: !1005)
!1041 = !DILocation(line: 773, column: 36, scope: !1005)
!1042 = !DILocation(line: 773, column: 3, scope: !1005)
!1043 = !DILocation(line: 775, column: 10, scope: !1020)
!1044 = !DILocation(line: 775, column: 8, scope: !1020)
!1045 = !DILocation(line: 775, column: 15, scope: !1019)
!1046 = !DILocation(line: 775, column: 17, scope: !1019)
!1047 = !DILocation(line: 775, column: 3, scope: !1020)
!1048 = !DILocation(line: 776, column: 5, scope: !1018)
!1049 = !DILocation(line: 776, column: 13, scope: !1018)
!1050 = !DILocation(line: 776, column: 19, scope: !1018)
!1051 = !DILocation(line: 776, column: 25, scope: !1018)
!1052 = !DILocation(line: 777, column: 5, scope: !1018)
!1053 = !DILocation(line: 777, column: 20, scope: !1018)
!1054 = !DILocation(line: 777, column: 24, scope: !1018)
!1055 = !DILocation(line: 777, column: 26, scope: !1018)
!1056 = !DILocation(line: 779, column: 7, scope: !1018)
!1057 = !DILocation(line: 781, column: 5, scope: !1018)
!1058 = !DILocation(line: 781, column: 5, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 781, column: 5)
!1060 = !DILocation(line: 782, column: 19, scope: !1018)
!1061 = !DILocation(line: 782, column: 22, scope: !1018)
!1062 = !DILocation(line: 782, column: 30, scope: !1018)
!1063 = !DILocation(line: 782, column: 28, scope: !1018)
!1064 = !DILocation(line: 782, column: 24, scope: !1018)
!1065 = !DILocation(line: 782, column: 38, scope: !1018)
!1066 = !DILocation(line: 782, column: 5, scope: !1018)
!1067 = !DILocation(line: 783, column: 5, scope: !1018)
!1068 = !DILocation(line: 783, column: 5, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 783, column: 5)
!1070 = !DILocation(line: 785, column: 42, scope: !1018)
!1071 = !DILocation(line: 785, column: 50, scope: !1018)
!1072 = !DILocation(line: 785, column: 5, scope: !1018)
!1073 = !DILocation(line: 786, column: 47, scope: !1018)
!1074 = !DILocation(line: 786, column: 5, scope: !1018)
!1075 = !DILocation(line: 788, column: 40, scope: !1018)
!1076 = !DILocation(line: 788, column: 43, scope: !1018)
!1077 = !DILocation(line: 788, column: 51, scope: !1018)
!1078 = !DILocation(line: 788, column: 49, scope: !1018)
!1079 = !DILocation(line: 788, column: 45, scope: !1018)
!1080 = !DILocation(line: 788, column: 59, scope: !1018)
!1081 = !DILocation(line: 788, column: 5, scope: !1018)
!1082 = !DILocation(line: 791, column: 10, scope: !1018)
!1083 = !DILocation(line: 791, column: 8, scope: !1018)
!1084 = !DILocation(line: 792, column: 10, scope: !1018)
!1085 = !DILocation(line: 792, column: 8, scope: !1018)
!1086 = !DILocation(line: 793, column: 3, scope: !1019)
!1087 = !DILocation(line: 793, column: 3, scope: !1018)
!1088 = !DILocation(line: 775, column: 22, scope: !1019)
!1089 = !DILocation(line: 775, column: 3, scope: !1019)
!1090 = distinct !{!1090, !1047, !1091, !1003}
!1091 = !DILocation(line: 793, column: 3, scope: !1020)
!1092 = !DILocation(line: 794, column: 1, scope: !1005)
!1093 = distinct !DISubprogram(name: "VFilter8i_SSE2", scope: !1, file: !1, line: 842, type: !744, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1111, !1112, !1114, !1115, !1117, !1118, !1120, !1121, !1124, !1125, !1127, !1128, !1130, !1131, !1133}
!1095 = !DILocalVariable(name: "u", arg: 1, scope: !1093, file: !1, line: 842, type: !115)
!1096 = !DILocalVariable(name: "v", arg: 2, scope: !1093, file: !1, line: 842, type: !115)
!1097 = !DILocalVariable(name: "stride", arg: 3, scope: !1093, file: !1, line: 842, type: !29)
!1098 = !DILocalVariable(name: "thresh", arg: 4, scope: !1093, file: !1, line: 843, type: !29)
!1099 = !DILocalVariable(name: "ithresh", arg: 5, scope: !1093, file: !1, line: 843, type: !29)
!1100 = !DILocalVariable(name: "hev_thresh", arg: 6, scope: !1093, file: !1, line: 843, type: !29)
!1101 = !DILocalVariable(name: "mask", scope: !1093, file: !1, line: 844, type: !5)
!1102 = !DILocalVariable(name: "t1", scope: !1093, file: !1, line: 845, type: !5)
!1103 = !DILocalVariable(name: "t2", scope: !1093, file: !1, line: 845, type: !5)
!1104 = !DILocalVariable(name: "p1", scope: !1093, file: !1, line: 845, type: !5)
!1105 = !DILocalVariable(name: "p0", scope: !1093, file: !1, line: 845, type: !5)
!1106 = !DILocalVariable(name: "q0", scope: !1093, file: !1, line: 845, type: !5)
!1107 = !DILocalVariable(name: "q1", scope: !1093, file: !1, line: 845, type: !5)
!1108 = !DILocalVariable(name: "U", scope: !1109, file: !1, line: 848, type: !4)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 848, column: 3)
!1110 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 848, column: 3)
!1111 = !DILocalVariable(name: "V", scope: !1109, file: !1, line: 848, type: !4)
!1112 = !DILocalVariable(name: "U", scope: !1113, file: !1, line: 848, type: !4)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 848, column: 3)
!1114 = !DILocalVariable(name: "V", scope: !1113, file: !1, line: 848, type: !4)
!1115 = !DILocalVariable(name: "U", scope: !1116, file: !1, line: 848, type: !4)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 848, column: 3)
!1117 = !DILocalVariable(name: "V", scope: !1116, file: !1, line: 848, type: !4)
!1118 = !DILocalVariable(name: "U", scope: !1119, file: !1, line: 848, type: !4)
!1119 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 848, column: 3)
!1120 = !DILocalVariable(name: "V", scope: !1119, file: !1, line: 848, type: !4)
!1121 = !DILocalVariable(name: "U", scope: !1122, file: !1, line: 855, type: !4)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 855, column: 3)
!1123 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 855, column: 3)
!1124 = !DILocalVariable(name: "V", scope: !1122, file: !1, line: 855, type: !4)
!1125 = !DILocalVariable(name: "U", scope: !1126, file: !1, line: 855, type: !4)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 855, column: 3)
!1127 = !DILocalVariable(name: "V", scope: !1126, file: !1, line: 855, type: !4)
!1128 = !DILocalVariable(name: "U", scope: !1129, file: !1, line: 855, type: !4)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 855, column: 3)
!1130 = !DILocalVariable(name: "V", scope: !1129, file: !1, line: 855, type: !4)
!1131 = !DILocalVariable(name: "U", scope: !1132, file: !1, line: 855, type: !4)
!1132 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 855, column: 3)
!1133 = !DILocalVariable(name: "V", scope: !1132, file: !1, line: 855, type: !4)
!1134 = !DILocation(line: 842, column: 37, scope: !1093)
!1135 = !DILocation(line: 842, column: 49, scope: !1093)
!1136 = !DILocation(line: 842, column: 56, scope: !1093)
!1137 = !DILocation(line: 843, column: 32, scope: !1093)
!1138 = !DILocation(line: 843, column: 44, scope: !1093)
!1139 = !DILocation(line: 843, column: 57, scope: !1093)
!1140 = !DILocation(line: 844, column: 3, scope: !1093)
!1141 = !DILocation(line: 844, column: 11, scope: !1093)
!1142 = !DILocation(line: 845, column: 3, scope: !1093)
!1143 = !DILocation(line: 845, column: 11, scope: !1093)
!1144 = !DILocation(line: 845, column: 15, scope: !1093)
!1145 = !DILocation(line: 845, column: 19, scope: !1093)
!1146 = !DILocation(line: 845, column: 23, scope: !1093)
!1147 = !DILocation(line: 845, column: 27, scope: !1093)
!1148 = !DILocation(line: 845, column: 31, scope: !1093)
!1149 = !DILocation(line: 848, column: 3, scope: !1110)
!1150 = !DILocation(line: 848, column: 3, scope: !1109)
!1151 = !DILocation(line: 848, column: 3, scope: !1113)
!1152 = !DILocation(line: 848, column: 3, scope: !1116)
!1153 = !DILocation(line: 848, column: 3, scope: !1119)
!1154 = !DILocation(line: 849, column: 3, scope: !1093)
!1155 = !DILocation(line: 849, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 849, column: 3)
!1157 = !DILocation(line: 851, column: 12, scope: !1093)
!1158 = !DILocation(line: 851, column: 10, scope: !1093)
!1159 = !DILocation(line: 851, column: 5, scope: !1093)
!1160 = !DILocation(line: 852, column: 12, scope: !1093)
!1161 = !DILocation(line: 852, column: 10, scope: !1093)
!1162 = !DILocation(line: 852, column: 5, scope: !1093)
!1163 = !DILocation(line: 855, column: 3, scope: !1123)
!1164 = !DILocation(line: 855, column: 3, scope: !1122)
!1165 = !DILocation(line: 855, column: 3, scope: !1126)
!1166 = !DILocation(line: 855, column: 3, scope: !1129)
!1167 = !DILocation(line: 855, column: 3, scope: !1132)
!1168 = !DILocation(line: 856, column: 3, scope: !1093)
!1169 = !DILocation(line: 856, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 856, column: 3)
!1171 = !DILocation(line: 858, column: 40, scope: !1093)
!1172 = !DILocation(line: 858, column: 48, scope: !1093)
!1173 = !DILocation(line: 858, column: 3, scope: !1093)
!1174 = !DILocation(line: 859, column: 45, scope: !1093)
!1175 = !DILocation(line: 859, column: 3, scope: !1093)
!1176 = !DILocation(line: 862, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 862, column: 3)
!1178 = !DILocation(line: 863, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 863, column: 3)
!1180 = !DILocation(line: 864, column: 3, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 864, column: 3)
!1182 = !DILocation(line: 865, column: 3, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 865, column: 3)
!1184 = !DILocation(line: 866, column: 1, scope: !1093)
!1185 = distinct !DISubprogram(name: "HFilter8i_SSE2", scope: !1, file: !1, line: 868, type: !744, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1187 = !DILocalVariable(name: "u", arg: 1, scope: !1185, file: !1, line: 868, type: !115)
!1188 = !DILocalVariable(name: "v", arg: 2, scope: !1185, file: !1, line: 868, type: !115)
!1189 = !DILocalVariable(name: "stride", arg: 3, scope: !1185, file: !1, line: 868, type: !29)
!1190 = !DILocalVariable(name: "thresh", arg: 4, scope: !1185, file: !1, line: 869, type: !29)
!1191 = !DILocalVariable(name: "ithresh", arg: 5, scope: !1185, file: !1, line: 869, type: !29)
!1192 = !DILocalVariable(name: "hev_thresh", arg: 6, scope: !1185, file: !1, line: 869, type: !29)
!1193 = !DILocalVariable(name: "mask", scope: !1185, file: !1, line: 870, type: !5)
!1194 = !DILocalVariable(name: "t1", scope: !1185, file: !1, line: 871, type: !5)
!1195 = !DILocalVariable(name: "t2", scope: !1185, file: !1, line: 871, type: !5)
!1196 = !DILocalVariable(name: "p1", scope: !1185, file: !1, line: 871, type: !5)
!1197 = !DILocalVariable(name: "p0", scope: !1185, file: !1, line: 871, type: !5)
!1198 = !DILocalVariable(name: "q0", scope: !1185, file: !1, line: 871, type: !5)
!1199 = !DILocalVariable(name: "q1", scope: !1185, file: !1, line: 871, type: !5)
!1200 = !DILocation(line: 868, column: 37, scope: !1185)
!1201 = !DILocation(line: 868, column: 49, scope: !1185)
!1202 = !DILocation(line: 868, column: 56, scope: !1185)
!1203 = !DILocation(line: 869, column: 32, scope: !1185)
!1204 = !DILocation(line: 869, column: 44, scope: !1185)
!1205 = !DILocation(line: 869, column: 57, scope: !1185)
!1206 = !DILocation(line: 870, column: 3, scope: !1185)
!1207 = !DILocation(line: 870, column: 11, scope: !1185)
!1208 = !DILocation(line: 871, column: 3, scope: !1185)
!1209 = !DILocation(line: 871, column: 11, scope: !1185)
!1210 = !DILocation(line: 871, column: 15, scope: !1185)
!1211 = !DILocation(line: 871, column: 19, scope: !1185)
!1212 = !DILocation(line: 871, column: 23, scope: !1185)
!1213 = !DILocation(line: 871, column: 27, scope: !1185)
!1214 = !DILocation(line: 871, column: 31, scope: !1185)
!1215 = !DILocation(line: 872, column: 17, scope: !1185)
!1216 = !DILocation(line: 872, column: 20, scope: !1185)
!1217 = !DILocation(line: 872, column: 23, scope: !1185)
!1218 = !DILocation(line: 872, column: 3, scope: !1185)
!1219 = !DILocation(line: 873, column: 3, scope: !1185)
!1220 = !DILocation(line: 873, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 873, column: 3)
!1222 = !DILocation(line: 875, column: 5, scope: !1185)
!1223 = !DILocation(line: 876, column: 5, scope: !1185)
!1224 = !DILocation(line: 877, column: 17, scope: !1185)
!1225 = !DILocation(line: 877, column: 20, scope: !1185)
!1226 = !DILocation(line: 877, column: 23, scope: !1185)
!1227 = !DILocation(line: 877, column: 3, scope: !1185)
!1228 = !DILocation(line: 878, column: 3, scope: !1185)
!1229 = !DILocation(line: 878, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 878, column: 3)
!1231 = !DILocation(line: 880, column: 40, scope: !1185)
!1232 = !DILocation(line: 880, column: 48, scope: !1185)
!1233 = !DILocation(line: 880, column: 3, scope: !1185)
!1234 = !DILocation(line: 881, column: 45, scope: !1185)
!1235 = !DILocation(line: 881, column: 3, scope: !1185)
!1236 = !DILocation(line: 883, column: 5, scope: !1185)
!1237 = !DILocation(line: 884, column: 5, scope: !1185)
!1238 = !DILocation(line: 885, column: 38, scope: !1185)
!1239 = !DILocation(line: 885, column: 41, scope: !1185)
!1240 = !DILocation(line: 885, column: 44, scope: !1185)
!1241 = !DILocation(line: 885, column: 3, scope: !1185)
!1242 = !DILocation(line: 886, column: 1, scope: !1185)
!1243 = distinct !DISubprogram(name: "SimpleVFilter16_SSE2", scope: !1, file: !1, line: 593, type: !1244, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !115, !29, !29}
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1247 = !DILocalVariable(name: "p", arg: 1, scope: !1243, file: !1, line: 593, type: !115)
!1248 = !DILocalVariable(name: "stride", arg: 2, scope: !1243, file: !1, line: 593, type: !29)
!1249 = !DILocalVariable(name: "thresh", arg: 3, scope: !1243, file: !1, line: 593, type: !29)
!1250 = !DILocalVariable(name: "p1", scope: !1243, file: !1, line: 595, type: !5)
!1251 = !DILocalVariable(name: "p0", scope: !1243, file: !1, line: 596, type: !5)
!1252 = !DILocalVariable(name: "q0", scope: !1243, file: !1, line: 597, type: !5)
!1253 = !DILocalVariable(name: "q1", scope: !1243, file: !1, line: 598, type: !5)
!1254 = !DILocation(line: 593, column: 43, scope: !1243)
!1255 = !DILocation(line: 593, column: 50, scope: !1243)
!1256 = !DILocation(line: 593, column: 62, scope: !1243)
!1257 = !DILocation(line: 595, column: 3, scope: !1243)
!1258 = !DILocation(line: 595, column: 11, scope: !1243)
!1259 = !DILocation(line: 595, column: 43, scope: !1243)
!1260 = !DILocation(line: 595, column: 50, scope: !1243)
!1261 = !DILocation(line: 595, column: 48, scope: !1243)
!1262 = !DILocation(line: 595, column: 16, scope: !1243)
!1263 = !DILocation(line: 596, column: 3, scope: !1243)
!1264 = !DILocation(line: 596, column: 11, scope: !1243)
!1265 = !DILocation(line: 596, column: 43, scope: !1243)
!1266 = !DILocation(line: 596, column: 46, scope: !1243)
!1267 = !DILocation(line: 596, column: 45, scope: !1243)
!1268 = !DILocation(line: 596, column: 16, scope: !1243)
!1269 = !DILocation(line: 597, column: 3, scope: !1243)
!1270 = !DILocation(line: 597, column: 11, scope: !1243)
!1271 = !DILocation(line: 597, column: 43, scope: !1243)
!1272 = !DILocation(line: 597, column: 16, scope: !1243)
!1273 = !DILocation(line: 598, column: 3, scope: !1243)
!1274 = !DILocation(line: 598, column: 11, scope: !1243)
!1275 = !DILocation(line: 598, column: 43, scope: !1243)
!1276 = !DILocation(line: 598, column: 45, scope: !1243)
!1277 = !DILocation(line: 598, column: 16, scope: !1243)
!1278 = !DILocation(line: 600, column: 38, scope: !1243)
!1279 = !DILocation(line: 600, column: 3, scope: !1243)
!1280 = !DILocation(line: 603, column: 31, scope: !1243)
!1281 = !DILocation(line: 603, column: 34, scope: !1243)
!1282 = !DILocation(line: 603, column: 33, scope: !1243)
!1283 = !DILocation(line: 603, column: 43, scope: !1243)
!1284 = !DILocation(line: 603, column: 3, scope: !1243)
!1285 = !DILocation(line: 604, column: 31, scope: !1243)
!1286 = !DILocation(line: 604, column: 37, scope: !1243)
!1287 = !DILocation(line: 604, column: 3, scope: !1243)
!1288 = !DILocation(line: 605, column: 1, scope: !1243)
!1289 = distinct !DISubprogram(name: "SimpleHFilter16_SSE2", scope: !1, file: !1, line: 607, type: !1244, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1291 = !DILocalVariable(name: "p", arg: 1, scope: !1289, file: !1, line: 607, type: !115)
!1292 = !DILocalVariable(name: "stride", arg: 2, scope: !1289, file: !1, line: 607, type: !29)
!1293 = !DILocalVariable(name: "thresh", arg: 3, scope: !1289, file: !1, line: 607, type: !29)
!1294 = !DILocalVariable(name: "p1", scope: !1289, file: !1, line: 608, type: !5)
!1295 = !DILocalVariable(name: "p0", scope: !1289, file: !1, line: 608, type: !5)
!1296 = !DILocalVariable(name: "q0", scope: !1289, file: !1, line: 608, type: !5)
!1297 = !DILocalVariable(name: "q1", scope: !1289, file: !1, line: 608, type: !5)
!1298 = !DILocation(line: 607, column: 43, scope: !1289)
!1299 = !DILocation(line: 607, column: 50, scope: !1289)
!1300 = !DILocation(line: 607, column: 62, scope: !1289)
!1301 = !DILocation(line: 608, column: 3, scope: !1289)
!1302 = !DILocation(line: 608, column: 11, scope: !1289)
!1303 = !DILocation(line: 608, column: 15, scope: !1289)
!1304 = !DILocation(line: 608, column: 19, scope: !1289)
!1305 = !DILocation(line: 608, column: 23, scope: !1289)
!1306 = !DILocation(line: 610, column: 5, scope: !1289)
!1307 = !DILocation(line: 612, column: 17, scope: !1289)
!1308 = !DILocation(line: 612, column: 20, scope: !1289)
!1309 = !DILocation(line: 612, column: 28, scope: !1289)
!1310 = !DILocation(line: 612, column: 26, scope: !1289)
!1311 = !DILocation(line: 612, column: 22, scope: !1289)
!1312 = !DILocation(line: 612, column: 36, scope: !1289)
!1313 = !DILocation(line: 612, column: 3, scope: !1289)
!1314 = !DILocation(line: 613, column: 38, scope: !1289)
!1315 = !DILocation(line: 613, column: 3, scope: !1289)
!1316 = !DILocation(line: 614, column: 38, scope: !1289)
!1317 = !DILocation(line: 614, column: 41, scope: !1289)
!1318 = !DILocation(line: 614, column: 49, scope: !1289)
!1319 = !DILocation(line: 614, column: 47, scope: !1289)
!1320 = !DILocation(line: 614, column: 43, scope: !1289)
!1321 = !DILocation(line: 614, column: 57, scope: !1289)
!1322 = !DILocation(line: 614, column: 3, scope: !1289)
!1323 = !DILocation(line: 615, column: 1, scope: !1289)
!1324 = distinct !DISubprogram(name: "SimpleVFilter16i_SSE2", scope: !1, file: !1, line: 617, type: !1244, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1325)
!1325 = !{!1326, !1327, !1328, !1329}
!1326 = !DILocalVariable(name: "p", arg: 1, scope: !1324, file: !1, line: 617, type: !115)
!1327 = !DILocalVariable(name: "stride", arg: 2, scope: !1324, file: !1, line: 617, type: !29)
!1328 = !DILocalVariable(name: "thresh", arg: 3, scope: !1324, file: !1, line: 617, type: !29)
!1329 = !DILocalVariable(name: "k", scope: !1324, file: !1, line: 618, type: !29)
!1330 = !DILocation(line: 617, column: 44, scope: !1324)
!1331 = !DILocation(line: 617, column: 51, scope: !1324)
!1332 = !DILocation(line: 617, column: 63, scope: !1324)
!1333 = !DILocation(line: 618, column: 3, scope: !1324)
!1334 = !DILocation(line: 618, column: 7, scope: !1324)
!1335 = !DILocation(line: 619, column: 10, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 619, column: 3)
!1337 = !DILocation(line: 619, column: 8, scope: !1336)
!1338 = !DILocation(line: 619, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 619, column: 3)
!1340 = !DILocation(line: 619, column: 17, scope: !1339)
!1341 = !DILocation(line: 619, column: 3, scope: !1336)
!1342 = !DILocation(line: 620, column: 14, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 619, column: 27)
!1344 = !DILocation(line: 620, column: 12, scope: !1343)
!1345 = !DILocation(line: 620, column: 7, scope: !1343)
!1346 = !DILocation(line: 621, column: 26, scope: !1343)
!1347 = !DILocation(line: 621, column: 29, scope: !1343)
!1348 = !DILocation(line: 621, column: 37, scope: !1343)
!1349 = !DILocation(line: 621, column: 5, scope: !1343)
!1350 = !DILocation(line: 622, column: 3, scope: !1343)
!1351 = !DILocation(line: 619, column: 22, scope: !1339)
!1352 = !DILocation(line: 619, column: 3, scope: !1339)
!1353 = distinct !{!1353, !1341, !1354, !1003}
!1354 = !DILocation(line: 622, column: 3, scope: !1336)
!1355 = !DILocation(line: 623, column: 1, scope: !1324)
!1356 = distinct !DISubprogram(name: "SimpleHFilter16i_SSE2", scope: !1, file: !1, line: 625, type: !1244, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1357)
!1357 = !{!1358, !1359, !1360, !1361}
!1358 = !DILocalVariable(name: "p", arg: 1, scope: !1356, file: !1, line: 625, type: !115)
!1359 = !DILocalVariable(name: "stride", arg: 2, scope: !1356, file: !1, line: 625, type: !29)
!1360 = !DILocalVariable(name: "thresh", arg: 3, scope: !1356, file: !1, line: 625, type: !29)
!1361 = !DILocalVariable(name: "k", scope: !1356, file: !1, line: 626, type: !29)
!1362 = !DILocation(line: 625, column: 44, scope: !1356)
!1363 = !DILocation(line: 625, column: 51, scope: !1356)
!1364 = !DILocation(line: 625, column: 63, scope: !1356)
!1365 = !DILocation(line: 626, column: 3, scope: !1356)
!1366 = !DILocation(line: 626, column: 7, scope: !1356)
!1367 = !DILocation(line: 627, column: 10, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 627, column: 3)
!1369 = !DILocation(line: 627, column: 8, scope: !1368)
!1370 = !DILocation(line: 627, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 627, column: 3)
!1372 = !DILocation(line: 627, column: 17, scope: !1371)
!1373 = !DILocation(line: 627, column: 3, scope: !1368)
!1374 = !DILocation(line: 628, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 627, column: 27)
!1376 = !DILocation(line: 629, column: 26, scope: !1375)
!1377 = !DILocation(line: 629, column: 29, scope: !1375)
!1378 = !DILocation(line: 629, column: 37, scope: !1375)
!1379 = !DILocation(line: 629, column: 5, scope: !1375)
!1380 = !DILocation(line: 630, column: 3, scope: !1375)
!1381 = !DILocation(line: 627, column: 22, scope: !1371)
!1382 = !DILocation(line: 627, column: 3, scope: !1371)
!1383 = distinct !{!1383, !1373, !1384, !1003}
!1384 = !DILocation(line: 630, column: 3, scope: !1368)
!1385 = !DILocation(line: 631, column: 1, scope: !1356)
!1386 = distinct !DISubprogram(name: "TM4_SSE2", scope: !1, file: !1, line: 1050, type: !1387, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !115}
!1389 = !{!1390}
!1390 = !DILocalVariable(name: "dst", arg: 1, scope: !1386, file: !1, line: 1050, type: !115)
!1391 = !DILocation(line: 1050, column: 31, scope: !1386)
!1392 = !DILocation(line: 1050, column: 56, scope: !1386)
!1393 = !DILocation(line: 1050, column: 40, scope: !1386)
!1394 = !DILocation(line: 1050, column: 65, scope: !1386)
!1395 = distinct !DISubprogram(name: "VE4_SSE2", scope: !1, file: !1, line: 902, type: !1387, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1411}
!1397 = !DILocalVariable(name: "dst", arg: 1, scope: !1395, file: !1, line: 902, type: !115)
!1398 = !DILocalVariable(name: "one", scope: !1395, file: !1, line: 903, type: !4)
!1399 = !DILocalVariable(name: "ABCDEFGH", scope: !1395, file: !1, line: 904, type: !4)
!1400 = !DILocalVariable(name: "BCDEFGH0", scope: !1395, file: !1, line: 905, type: !4)
!1401 = !DILocalVariable(name: "CDEFGH00", scope: !1395, file: !1, line: 906, type: !4)
!1402 = !DILocalVariable(name: "a", scope: !1395, file: !1, line: 907, type: !4)
!1403 = !DILocalVariable(name: "lsb", scope: !1395, file: !1, line: 908, type: !4)
!1404 = !DILocalVariable(name: "b", scope: !1395, file: !1, line: 909, type: !4)
!1405 = !DILocalVariable(name: "avg", scope: !1395, file: !1, line: 910, type: !4)
!1406 = !DILocalVariable(name: "vals", scope: !1395, file: !1, line: 911, type: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !117, line: 26, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !114, line: 42, baseType: !1410)
!1410 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1411 = !DILocalVariable(name: "i", scope: !1395, file: !1, line: 912, type: !29)
!1412 = !DILocation(line: 902, column: 31, scope: !1395)
!1413 = !DILocation(line: 903, column: 3, scope: !1395)
!1414 = !DILocation(line: 903, column: 17, scope: !1395)
!1415 = !DILocation(line: 903, column: 23, scope: !1395)
!1416 = !DILocation(line: 904, column: 3, scope: !1395)
!1417 = !DILocation(line: 904, column: 17, scope: !1395)
!1418 = !DILocation(line: 904, column: 55, scope: !1395)
!1419 = !DILocation(line: 904, column: 59, scope: !1395)
!1420 = !DILocation(line: 904, column: 65, scope: !1395)
!1421 = !DILocation(line: 904, column: 28, scope: !1395)
!1422 = !DILocation(line: 905, column: 3, scope: !1395)
!1423 = !DILocation(line: 905, column: 17, scope: !1395)
!1424 = !DILocation(line: 905, column: 28, scope: !1395)
!1425 = !DILocation(line: 906, column: 3, scope: !1395)
!1426 = !DILocation(line: 906, column: 17, scope: !1395)
!1427 = !DILocation(line: 906, column: 28, scope: !1395)
!1428 = !DILocation(line: 907, column: 3, scope: !1395)
!1429 = !DILocation(line: 907, column: 17, scope: !1395)
!1430 = !DILocation(line: 907, column: 34, scope: !1395)
!1431 = !DILocation(line: 907, column: 44, scope: !1395)
!1432 = !DILocation(line: 907, column: 21, scope: !1395)
!1433 = !DILocation(line: 908, column: 3, scope: !1395)
!1434 = !DILocation(line: 908, column: 17, scope: !1395)
!1435 = !DILocation(line: 908, column: 51, scope: !1395)
!1436 = !DILocation(line: 908, column: 61, scope: !1395)
!1437 = !DILocation(line: 908, column: 37, scope: !1395)
!1438 = !DILocation(line: 908, column: 72, scope: !1395)
!1439 = !DILocation(line: 908, column: 23, scope: !1395)
!1440 = !DILocation(line: 909, column: 3, scope: !1395)
!1441 = !DILocation(line: 909, column: 17, scope: !1395)
!1442 = !DILocation(line: 909, column: 35, scope: !1395)
!1443 = !DILocation(line: 909, column: 38, scope: !1395)
!1444 = !DILocation(line: 909, column: 21, scope: !1395)
!1445 = !DILocation(line: 910, column: 3, scope: !1395)
!1446 = !DILocation(line: 910, column: 17, scope: !1395)
!1447 = !DILocation(line: 910, column: 36, scope: !1395)
!1448 = !DILocation(line: 910, column: 39, scope: !1395)
!1449 = !DILocation(line: 910, column: 23, scope: !1395)
!1450 = !DILocation(line: 911, column: 3, scope: !1395)
!1451 = !DILocation(line: 911, column: 18, scope: !1395)
!1452 = !DILocation(line: 911, column: 43, scope: !1395)
!1453 = !DILocation(line: 911, column: 25, scope: !1395)
!1454 = !DILocation(line: 912, column: 3, scope: !1395)
!1455 = !DILocation(line: 912, column: 7, scope: !1395)
!1456 = !DILocation(line: 913, column: 10, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 913, column: 3)
!1458 = !DILocation(line: 913, column: 8, scope: !1457)
!1459 = !DILocation(line: 913, column: 15, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 913, column: 3)
!1461 = !DILocation(line: 913, column: 17, scope: !1460)
!1462 = !DILocation(line: 913, column: 3, scope: !1457)
!1463 = !DILocation(line: 914, column: 21, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 913, column: 27)
!1465 = !DILocation(line: 914, column: 27, scope: !1464)
!1466 = !DILocation(line: 914, column: 29, scope: !1464)
!1467 = !DILocation(line: 914, column: 25, scope: !1464)
!1468 = !DILocation(line: 914, column: 36, scope: !1464)
!1469 = !DILocation(line: 914, column: 5, scope: !1464)
!1470 = !DILocation(line: 915, column: 3, scope: !1464)
!1471 = !DILocation(line: 913, column: 22, scope: !1460)
!1472 = !DILocation(line: 913, column: 3, scope: !1460)
!1473 = distinct !{!1473, !1462, !1474, !1003}
!1474 = !DILocation(line: 915, column: 3, scope: !1457)
!1475 = !DILocation(line: 916, column: 1, scope: !1395)
!1476 = distinct !DISubprogram(name: "RD4_SSE2", scope: !1, file: !1, line: 984, type: !1387, scopeLine: 984, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493}
!1478 = !DILocalVariable(name: "dst", arg: 1, scope: !1476, file: !1, line: 984, type: !115)
!1479 = !DILocalVariable(name: "one", scope: !1476, file: !1, line: 985, type: !4)
!1480 = !DILocalVariable(name: "XABCD", scope: !1476, file: !1, line: 986, type: !4)
!1481 = !DILocalVariable(name: "____XABCD", scope: !1476, file: !1, line: 987, type: !4)
!1482 = !DILocalVariable(name: "I", scope: !1476, file: !1, line: 988, type: !1407)
!1483 = !DILocalVariable(name: "J", scope: !1476, file: !1, line: 989, type: !1407)
!1484 = !DILocalVariable(name: "K", scope: !1476, file: !1, line: 990, type: !1407)
!1485 = !DILocalVariable(name: "L", scope: !1476, file: !1, line: 991, type: !1407)
!1486 = !DILocalVariable(name: "LKJI_____", scope: !1476, file: !1, line: 992, type: !4)
!1487 = !DILocalVariable(name: "LKJIXABCD", scope: !1476, file: !1, line: 994, type: !4)
!1488 = !DILocalVariable(name: "KJIXABCD_", scope: !1476, file: !1, line: 995, type: !4)
!1489 = !DILocalVariable(name: "JIXABCD__", scope: !1476, file: !1, line: 996, type: !4)
!1490 = !DILocalVariable(name: "avg1", scope: !1476, file: !1, line: 997, type: !4)
!1491 = !DILocalVariable(name: "lsb", scope: !1476, file: !1, line: 998, type: !4)
!1492 = !DILocalVariable(name: "avg2", scope: !1476, file: !1, line: 999, type: !4)
!1493 = !DILocalVariable(name: "abcdefg", scope: !1476, file: !1, line: 1000, type: !4)
!1494 = !DILocation(line: 984, column: 31, scope: !1476)
!1495 = !DILocation(line: 985, column: 3, scope: !1476)
!1496 = !DILocation(line: 985, column: 17, scope: !1476)
!1497 = !DILocation(line: 985, column: 23, scope: !1476)
!1498 = !DILocation(line: 986, column: 3, scope: !1476)
!1499 = !DILocation(line: 986, column: 17, scope: !1476)
!1500 = !DILocation(line: 986, column: 52, scope: !1476)
!1501 = !DILocation(line: 986, column: 56, scope: !1476)
!1502 = !DILocation(line: 986, column: 62, scope: !1476)
!1503 = !DILocation(line: 986, column: 25, scope: !1476)
!1504 = !DILocation(line: 987, column: 3, scope: !1476)
!1505 = !DILocation(line: 987, column: 17, scope: !1476)
!1506 = !DILocation(line: 987, column: 29, scope: !1476)
!1507 = !DILocation(line: 988, column: 3, scope: !1476)
!1508 = !DILocation(line: 988, column: 18, scope: !1476)
!1509 = !DILocation(line: 988, column: 22, scope: !1476)
!1510 = !DILocation(line: 989, column: 3, scope: !1476)
!1511 = !DILocation(line: 989, column: 18, scope: !1476)
!1512 = !DILocation(line: 989, column: 22, scope: !1476)
!1513 = !DILocation(line: 990, column: 3, scope: !1476)
!1514 = !DILocation(line: 990, column: 18, scope: !1476)
!1515 = !DILocation(line: 990, column: 22, scope: !1476)
!1516 = !DILocation(line: 991, column: 3, scope: !1476)
!1517 = !DILocation(line: 991, column: 18, scope: !1476)
!1518 = !DILocation(line: 991, column: 22, scope: !1476)
!1519 = !DILocation(line: 992, column: 3, scope: !1476)
!1520 = !DILocation(line: 992, column: 17, scope: !1476)
!1521 = !DILocation(line: 993, column: 25, scope: !1476)
!1522 = !DILocation(line: 993, column: 30, scope: !1476)
!1523 = !DILocation(line: 993, column: 32, scope: !1476)
!1524 = !DILocation(line: 993, column: 27, scope: !1476)
!1525 = !DILocation(line: 993, column: 41, scope: !1476)
!1526 = !DILocation(line: 993, column: 43, scope: !1476)
!1527 = !DILocation(line: 993, column: 38, scope: !1476)
!1528 = !DILocation(line: 993, column: 53, scope: !1476)
!1529 = !DILocation(line: 993, column: 55, scope: !1476)
!1530 = !DILocation(line: 993, column: 50, scope: !1476)
!1531 = !DILocation(line: 993, column: 7, scope: !1476)
!1532 = !DILocation(line: 994, column: 3, scope: !1476)
!1533 = !DILocation(line: 994, column: 17, scope: !1476)
!1534 = !DILocation(line: 994, column: 42, scope: !1476)
!1535 = !DILocation(line: 994, column: 53, scope: !1476)
!1536 = !DILocation(line: 994, column: 29, scope: !1476)
!1537 = !DILocation(line: 995, column: 3, scope: !1476)
!1538 = !DILocation(line: 995, column: 17, scope: !1476)
!1539 = !DILocation(line: 995, column: 29, scope: !1476)
!1540 = !DILocation(line: 996, column: 3, scope: !1476)
!1541 = !DILocation(line: 996, column: 17, scope: !1476)
!1542 = !DILocation(line: 996, column: 29, scope: !1476)
!1543 = !DILocation(line: 997, column: 3, scope: !1476)
!1544 = !DILocation(line: 997, column: 17, scope: !1476)
!1545 = !DILocation(line: 997, column: 37, scope: !1476)
!1546 = !DILocation(line: 997, column: 48, scope: !1476)
!1547 = !DILocation(line: 997, column: 24, scope: !1476)
!1548 = !DILocation(line: 998, column: 3, scope: !1476)
!1549 = !DILocation(line: 998, column: 17, scope: !1476)
!1550 = !DILocation(line: 998, column: 51, scope: !1476)
!1551 = !DILocation(line: 998, column: 62, scope: !1476)
!1552 = !DILocation(line: 998, column: 37, scope: !1476)
!1553 = !DILocation(line: 998, column: 74, scope: !1476)
!1554 = !DILocation(line: 998, column: 23, scope: !1476)
!1555 = !DILocation(line: 999, column: 3, scope: !1476)
!1556 = !DILocation(line: 999, column: 17, scope: !1476)
!1557 = !DILocation(line: 999, column: 38, scope: !1476)
!1558 = !DILocation(line: 999, column: 44, scope: !1476)
!1559 = !DILocation(line: 999, column: 24, scope: !1476)
!1560 = !DILocation(line: 1000, column: 3, scope: !1476)
!1561 = !DILocation(line: 1000, column: 17, scope: !1476)
!1562 = !DILocation(line: 1000, column: 40, scope: !1476)
!1563 = !DILocation(line: 1000, column: 46, scope: !1476)
!1564 = !DILocation(line: 1000, column: 27, scope: !1476)
!1565 = !DILocation(line: 1001, column: 19, scope: !1476)
!1566 = !DILocation(line: 1001, column: 23, scope: !1476)
!1567 = !DILocation(line: 1001, column: 67, scope: !1476)
!1568 = !DILocation(line: 1001, column: 34, scope: !1476)
!1569 = !DILocation(line: 1001, column: 3, scope: !1476)
!1570 = !DILocation(line: 1002, column: 19, scope: !1476)
!1571 = !DILocation(line: 1002, column: 23, scope: !1476)
!1572 = !DILocation(line: 1002, column: 52, scope: !1476)
!1573 = !DILocation(line: 1002, column: 34, scope: !1476)
!1574 = !DILocation(line: 1002, column: 3, scope: !1476)
!1575 = !DILocation(line: 1003, column: 19, scope: !1476)
!1576 = !DILocation(line: 1003, column: 23, scope: !1476)
!1577 = !DILocation(line: 1003, column: 52, scope: !1476)
!1578 = !DILocation(line: 1003, column: 34, scope: !1476)
!1579 = !DILocation(line: 1003, column: 3, scope: !1476)
!1580 = !DILocation(line: 1004, column: 19, scope: !1476)
!1581 = !DILocation(line: 1004, column: 23, scope: !1476)
!1582 = !DILocation(line: 1004, column: 52, scope: !1476)
!1583 = !DILocation(line: 1004, column: 34, scope: !1476)
!1584 = !DILocation(line: 1004, column: 3, scope: !1476)
!1585 = !DILocation(line: 1005, column: 1, scope: !1476)
!1586 = distinct !DISubprogram(name: "VR4_SSE2", scope: !1, file: !1, line: 934, type: !1387, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1587)
!1587 = !{!1588, !1589, !1590, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1588 = !DILocalVariable(name: "dst", arg: 1, scope: !1586, file: !1, line: 934, type: !115)
!1589 = !DILocalVariable(name: "one", scope: !1586, file: !1, line: 935, type: !4)
!1590 = !DILocalVariable(name: "I", scope: !1586, file: !1, line: 936, type: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!1592 = !DILocalVariable(name: "J", scope: !1586, file: !1, line: 937, type: !1591)
!1593 = !DILocalVariable(name: "K", scope: !1586, file: !1, line: 938, type: !1591)
!1594 = !DILocalVariable(name: "X", scope: !1586, file: !1, line: 939, type: !1591)
!1595 = !DILocalVariable(name: "XABCD", scope: !1586, file: !1, line: 940, type: !4)
!1596 = !DILocalVariable(name: "ABCD0", scope: !1586, file: !1, line: 941, type: !4)
!1597 = !DILocalVariable(name: "abcd", scope: !1586, file: !1, line: 942, type: !4)
!1598 = !DILocalVariable(name: "_XABCD", scope: !1586, file: !1, line: 943, type: !4)
!1599 = !DILocalVariable(name: "IXABCD", scope: !1586, file: !1, line: 944, type: !4)
!1600 = !DILocalVariable(name: "avg1", scope: !1586, file: !1, line: 945, type: !4)
!1601 = !DILocalVariable(name: "lsb", scope: !1586, file: !1, line: 946, type: !4)
!1602 = !DILocalVariable(name: "avg2", scope: !1586, file: !1, line: 947, type: !4)
!1603 = !DILocalVariable(name: "efgh", scope: !1586, file: !1, line: 948, type: !4)
!1604 = !DILocation(line: 934, column: 31, scope: !1586)
!1605 = !DILocation(line: 935, column: 3, scope: !1586)
!1606 = !DILocation(line: 935, column: 17, scope: !1586)
!1607 = !DILocation(line: 935, column: 23, scope: !1586)
!1608 = !DILocation(line: 936, column: 3, scope: !1586)
!1609 = !DILocation(line: 936, column: 13, scope: !1586)
!1610 = !DILocation(line: 936, column: 17, scope: !1586)
!1611 = !DILocation(line: 937, column: 3, scope: !1586)
!1612 = !DILocation(line: 937, column: 13, scope: !1586)
!1613 = !DILocation(line: 937, column: 17, scope: !1586)
!1614 = !DILocation(line: 938, column: 3, scope: !1586)
!1615 = !DILocation(line: 938, column: 13, scope: !1586)
!1616 = !DILocation(line: 938, column: 17, scope: !1586)
!1617 = !DILocation(line: 939, column: 3, scope: !1586)
!1618 = !DILocation(line: 939, column: 13, scope: !1586)
!1619 = !DILocation(line: 939, column: 17, scope: !1586)
!1620 = !DILocation(line: 940, column: 3, scope: !1586)
!1621 = !DILocation(line: 940, column: 17, scope: !1586)
!1622 = !DILocation(line: 940, column: 52, scope: !1586)
!1623 = !DILocation(line: 940, column: 56, scope: !1586)
!1624 = !DILocation(line: 940, column: 62, scope: !1586)
!1625 = !DILocation(line: 940, column: 25, scope: !1586)
!1626 = !DILocation(line: 941, column: 3, scope: !1586)
!1627 = !DILocation(line: 941, column: 17, scope: !1586)
!1628 = !DILocation(line: 941, column: 25, scope: !1586)
!1629 = !DILocation(line: 942, column: 3, scope: !1586)
!1630 = !DILocation(line: 942, column: 17, scope: !1586)
!1631 = !DILocation(line: 942, column: 37, scope: !1586)
!1632 = !DILocation(line: 942, column: 44, scope: !1586)
!1633 = !DILocation(line: 942, column: 24, scope: !1586)
!1634 = !DILocation(line: 943, column: 3, scope: !1586)
!1635 = !DILocation(line: 943, column: 17, scope: !1586)
!1636 = !DILocation(line: 943, column: 26, scope: !1586)
!1637 = !DILocation(line: 944, column: 3, scope: !1586)
!1638 = !DILocation(line: 944, column: 17, scope: !1586)
!1639 = !DILocation(line: 944, column: 26, scope: !1586)
!1640 = !DILocation(line: 945, column: 3, scope: !1586)
!1641 = !DILocation(line: 945, column: 17, scope: !1586)
!1642 = !DILocation(line: 945, column: 37, scope: !1586)
!1643 = !DILocation(line: 945, column: 45, scope: !1586)
!1644 = !DILocation(line: 945, column: 24, scope: !1586)
!1645 = !DILocation(line: 946, column: 3, scope: !1586)
!1646 = !DILocation(line: 946, column: 17, scope: !1586)
!1647 = !DILocation(line: 946, column: 51, scope: !1586)
!1648 = !DILocation(line: 946, column: 59, scope: !1586)
!1649 = !DILocation(line: 946, column: 37, scope: !1586)
!1650 = !DILocation(line: 946, column: 67, scope: !1586)
!1651 = !DILocation(line: 946, column: 23, scope: !1586)
!1652 = !DILocation(line: 947, column: 3, scope: !1586)
!1653 = !DILocation(line: 947, column: 17, scope: !1586)
!1654 = !DILocation(line: 947, column: 38, scope: !1586)
!1655 = !DILocation(line: 947, column: 44, scope: !1586)
!1656 = !DILocation(line: 947, column: 24, scope: !1586)
!1657 = !DILocation(line: 948, column: 3, scope: !1586)
!1658 = !DILocation(line: 948, column: 17, scope: !1586)
!1659 = !DILocation(line: 948, column: 37, scope: !1586)
!1660 = !DILocation(line: 948, column: 43, scope: !1586)
!1661 = !DILocation(line: 948, column: 24, scope: !1586)
!1662 = !DILocation(line: 949, column: 19, scope: !1586)
!1663 = !DILocation(line: 949, column: 23, scope: !1586)
!1664 = !DILocation(line: 949, column: 67, scope: !1586)
!1665 = !DILocation(line: 949, column: 34, scope: !1586)
!1666 = !DILocation(line: 949, column: 3, scope: !1586)
!1667 = !DILocation(line: 950, column: 19, scope: !1586)
!1668 = !DILocation(line: 950, column: 23, scope: !1586)
!1669 = !DILocation(line: 950, column: 67, scope: !1586)
!1670 = !DILocation(line: 950, column: 34, scope: !1586)
!1671 = !DILocation(line: 950, column: 3, scope: !1586)
!1672 = !DILocation(line: 951, column: 19, scope: !1586)
!1673 = !DILocation(line: 951, column: 23, scope: !1586)
!1674 = !DILocation(line: 951, column: 52, scope: !1586)
!1675 = !DILocation(line: 951, column: 34, scope: !1586)
!1676 = !DILocation(line: 951, column: 3, scope: !1586)
!1677 = !DILocation(line: 952, column: 19, scope: !1586)
!1678 = !DILocation(line: 952, column: 23, scope: !1586)
!1679 = !DILocation(line: 952, column: 52, scope: !1586)
!1680 = !DILocation(line: 952, column: 34, scope: !1586)
!1681 = !DILocation(line: 952, column: 3, scope: !1586)
!1682 = !DILocation(line: 955, column: 15, scope: !1586)
!1683 = !DILocation(line: 955, column: 3, scope: !1586)
!1684 = !DILocation(line: 955, column: 13, scope: !1586)
!1685 = !DILocation(line: 956, column: 15, scope: !1586)
!1686 = !DILocation(line: 956, column: 3, scope: !1586)
!1687 = !DILocation(line: 956, column: 13, scope: !1586)
!1688 = !DILocation(line: 957, column: 1, scope: !1586)
!1689 = distinct !DISubprogram(name: "LD4_SSE2", scope: !1, file: !1, line: 918, type: !1387, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1691 = !DILocalVariable(name: "dst", arg: 1, scope: !1689, file: !1, line: 918, type: !115)
!1692 = !DILocalVariable(name: "one", scope: !1689, file: !1, line: 919, type: !4)
!1693 = !DILocalVariable(name: "ABCDEFGH", scope: !1689, file: !1, line: 920, type: !4)
!1694 = !DILocalVariable(name: "BCDEFGH0", scope: !1689, file: !1, line: 921, type: !4)
!1695 = !DILocalVariable(name: "CDEFGH00", scope: !1689, file: !1, line: 922, type: !4)
!1696 = !DILocalVariable(name: "CDEFGHH0", scope: !1689, file: !1, line: 923, type: !4)
!1697 = !DILocalVariable(name: "avg1", scope: !1689, file: !1, line: 924, type: !4)
!1698 = !DILocalVariable(name: "lsb", scope: !1689, file: !1, line: 925, type: !4)
!1699 = !DILocalVariable(name: "avg2", scope: !1689, file: !1, line: 926, type: !4)
!1700 = !DILocalVariable(name: "abcdefg", scope: !1689, file: !1, line: 927, type: !4)
!1701 = !DILocation(line: 918, column: 31, scope: !1689)
!1702 = !DILocation(line: 919, column: 3, scope: !1689)
!1703 = !DILocation(line: 919, column: 17, scope: !1689)
!1704 = !DILocation(line: 919, column: 23, scope: !1689)
!1705 = !DILocation(line: 920, column: 3, scope: !1689)
!1706 = !DILocation(line: 920, column: 17, scope: !1689)
!1707 = !DILocation(line: 920, column: 55, scope: !1689)
!1708 = !DILocation(line: 920, column: 59, scope: !1689)
!1709 = !DILocation(line: 920, column: 28, scope: !1689)
!1710 = !DILocation(line: 921, column: 3, scope: !1689)
!1711 = !DILocation(line: 921, column: 17, scope: !1689)
!1712 = !DILocation(line: 921, column: 28, scope: !1689)
!1713 = !DILocation(line: 922, column: 3, scope: !1689)
!1714 = !DILocation(line: 922, column: 17, scope: !1689)
!1715 = !DILocation(line: 922, column: 28, scope: !1689)
!1716 = !DILocation(line: 923, column: 3, scope: !1689)
!1717 = !DILocation(line: 923, column: 17, scope: !1689)
!1718 = !DILocation(line: 923, column: 28, scope: !1689)
!1719 = !DILocation(line: 924, column: 3, scope: !1689)
!1720 = !DILocation(line: 924, column: 17, scope: !1689)
!1721 = !DILocation(line: 924, column: 37, scope: !1689)
!1722 = !DILocation(line: 924, column: 47, scope: !1689)
!1723 = !DILocation(line: 924, column: 24, scope: !1689)
!1724 = !DILocation(line: 925, column: 3, scope: !1689)
!1725 = !DILocation(line: 925, column: 17, scope: !1689)
!1726 = !DILocation(line: 925, column: 51, scope: !1689)
!1727 = !DILocation(line: 925, column: 61, scope: !1689)
!1728 = !DILocation(line: 925, column: 37, scope: !1689)
!1729 = !DILocation(line: 925, column: 72, scope: !1689)
!1730 = !DILocation(line: 925, column: 23, scope: !1689)
!1731 = !DILocation(line: 926, column: 3, scope: !1689)
!1732 = !DILocation(line: 926, column: 17, scope: !1689)
!1733 = !DILocation(line: 926, column: 38, scope: !1689)
!1734 = !DILocation(line: 926, column: 44, scope: !1689)
!1735 = !DILocation(line: 926, column: 24, scope: !1689)
!1736 = !DILocation(line: 927, column: 3, scope: !1689)
!1737 = !DILocation(line: 927, column: 17, scope: !1689)
!1738 = !DILocation(line: 927, column: 40, scope: !1689)
!1739 = !DILocation(line: 927, column: 46, scope: !1689)
!1740 = !DILocation(line: 927, column: 27, scope: !1689)
!1741 = !DILocation(line: 928, column: 19, scope: !1689)
!1742 = !DILocation(line: 928, column: 23, scope: !1689)
!1743 = !DILocation(line: 928, column: 67, scope: !1689)
!1744 = !DILocation(line: 928, column: 34, scope: !1689)
!1745 = !DILocation(line: 928, column: 3, scope: !1689)
!1746 = !DILocation(line: 929, column: 19, scope: !1689)
!1747 = !DILocation(line: 929, column: 23, scope: !1689)
!1748 = !DILocation(line: 929, column: 52, scope: !1689)
!1749 = !DILocation(line: 929, column: 34, scope: !1689)
!1750 = !DILocation(line: 929, column: 3, scope: !1689)
!1751 = !DILocation(line: 930, column: 19, scope: !1689)
!1752 = !DILocation(line: 930, column: 23, scope: !1689)
!1753 = !DILocation(line: 930, column: 52, scope: !1689)
!1754 = !DILocation(line: 930, column: 34, scope: !1689)
!1755 = !DILocation(line: 930, column: 3, scope: !1689)
!1756 = !DILocation(line: 931, column: 19, scope: !1689)
!1757 = !DILocation(line: 931, column: 23, scope: !1689)
!1758 = !DILocation(line: 931, column: 52, scope: !1689)
!1759 = !DILocation(line: 931, column: 34, scope: !1689)
!1760 = !DILocation(line: 931, column: 3, scope: !1689)
!1761 = !DILocation(line: 932, column: 1, scope: !1689)
!1762 = distinct !DISubprogram(name: "VL4_SSE2", scope: !1, file: !1, line: 959, type: !1387, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1764 = !DILocalVariable(name: "dst", arg: 1, scope: !1762, file: !1, line: 959, type: !115)
!1765 = !DILocalVariable(name: "one", scope: !1762, file: !1, line: 960, type: !4)
!1766 = !DILocalVariable(name: "ABCDEFGH", scope: !1762, file: !1, line: 961, type: !4)
!1767 = !DILocalVariable(name: "BCDEFGH_", scope: !1762, file: !1, line: 962, type: !4)
!1768 = !DILocalVariable(name: "CDEFGH__", scope: !1762, file: !1, line: 963, type: !4)
!1769 = !DILocalVariable(name: "avg1", scope: !1762, file: !1, line: 964, type: !4)
!1770 = !DILocalVariable(name: "avg2", scope: !1762, file: !1, line: 965, type: !4)
!1771 = !DILocalVariable(name: "avg3", scope: !1762, file: !1, line: 966, type: !4)
!1772 = !DILocalVariable(name: "lsb1", scope: !1762, file: !1, line: 967, type: !4)
!1773 = !DILocalVariable(name: "ab", scope: !1762, file: !1, line: 968, type: !4)
!1774 = !DILocalVariable(name: "bc", scope: !1762, file: !1, line: 969, type: !4)
!1775 = !DILocalVariable(name: "abbc", scope: !1762, file: !1, line: 970, type: !4)
!1776 = !DILocalVariable(name: "lsb2", scope: !1762, file: !1, line: 971, type: !4)
!1777 = !DILocalVariable(name: "avg4", scope: !1762, file: !1, line: 972, type: !4)
!1778 = !DILocalVariable(name: "extra_out", scope: !1762, file: !1, line: 973, type: !1407)
!1779 = !DILocation(line: 959, column: 31, scope: !1762)
!1780 = !DILocation(line: 960, column: 3, scope: !1762)
!1781 = !DILocation(line: 960, column: 17, scope: !1762)
!1782 = !DILocation(line: 960, column: 23, scope: !1762)
!1783 = !DILocation(line: 961, column: 3, scope: !1762)
!1784 = !DILocation(line: 961, column: 17, scope: !1762)
!1785 = !DILocation(line: 961, column: 55, scope: !1762)
!1786 = !DILocation(line: 961, column: 59, scope: !1762)
!1787 = !DILocation(line: 961, column: 28, scope: !1762)
!1788 = !DILocation(line: 962, column: 3, scope: !1762)
!1789 = !DILocation(line: 962, column: 17, scope: !1762)
!1790 = !DILocation(line: 962, column: 28, scope: !1762)
!1791 = !DILocation(line: 963, column: 3, scope: !1762)
!1792 = !DILocation(line: 963, column: 17, scope: !1762)
!1793 = !DILocation(line: 963, column: 28, scope: !1762)
!1794 = !DILocation(line: 964, column: 3, scope: !1762)
!1795 = !DILocation(line: 964, column: 17, scope: !1762)
!1796 = !DILocation(line: 964, column: 37, scope: !1762)
!1797 = !DILocation(line: 964, column: 47, scope: !1762)
!1798 = !DILocation(line: 964, column: 24, scope: !1762)
!1799 = !DILocation(line: 965, column: 3, scope: !1762)
!1800 = !DILocation(line: 965, column: 17, scope: !1762)
!1801 = !DILocation(line: 965, column: 37, scope: !1762)
!1802 = !DILocation(line: 965, column: 47, scope: !1762)
!1803 = !DILocation(line: 965, column: 24, scope: !1762)
!1804 = !DILocation(line: 966, column: 3, scope: !1762)
!1805 = !DILocation(line: 966, column: 17, scope: !1762)
!1806 = !DILocation(line: 966, column: 37, scope: !1762)
!1807 = !DILocation(line: 966, column: 43, scope: !1762)
!1808 = !DILocation(line: 966, column: 24, scope: !1762)
!1809 = !DILocation(line: 967, column: 3, scope: !1762)
!1810 = !DILocation(line: 967, column: 17, scope: !1762)
!1811 = !DILocation(line: 967, column: 52, scope: !1762)
!1812 = !DILocation(line: 967, column: 58, scope: !1762)
!1813 = !DILocation(line: 967, column: 38, scope: !1762)
!1814 = !DILocation(line: 967, column: 65, scope: !1762)
!1815 = !DILocation(line: 967, column: 24, scope: !1762)
!1816 = !DILocation(line: 968, column: 3, scope: !1762)
!1817 = !DILocation(line: 968, column: 17, scope: !1762)
!1818 = !DILocation(line: 968, column: 36, scope: !1762)
!1819 = !DILocation(line: 968, column: 46, scope: !1762)
!1820 = !DILocation(line: 968, column: 22, scope: !1762)
!1821 = !DILocation(line: 969, column: 3, scope: !1762)
!1822 = !DILocation(line: 969, column: 17, scope: !1762)
!1823 = !DILocation(line: 969, column: 36, scope: !1762)
!1824 = !DILocation(line: 969, column: 46, scope: !1762)
!1825 = !DILocation(line: 969, column: 22, scope: !1762)
!1826 = !DILocation(line: 970, column: 3, scope: !1762)
!1827 = !DILocation(line: 970, column: 17, scope: !1762)
!1828 = !DILocation(line: 970, column: 37, scope: !1762)
!1829 = !DILocation(line: 970, column: 41, scope: !1762)
!1830 = !DILocation(line: 970, column: 24, scope: !1762)
!1831 = !DILocation(line: 971, column: 3, scope: !1762)
!1832 = !DILocation(line: 971, column: 17, scope: !1762)
!1833 = !DILocation(line: 971, column: 38, scope: !1762)
!1834 = !DILocation(line: 971, column: 44, scope: !1762)
!1835 = !DILocation(line: 971, column: 24, scope: !1762)
!1836 = !DILocation(line: 972, column: 3, scope: !1762)
!1837 = !DILocation(line: 972, column: 17, scope: !1762)
!1838 = !DILocation(line: 972, column: 38, scope: !1762)
!1839 = !DILocation(line: 972, column: 44, scope: !1762)
!1840 = !DILocation(line: 972, column: 24, scope: !1762)
!1841 = !DILocation(line: 973, column: 3, scope: !1762)
!1842 = !DILocation(line: 973, column: 18, scope: !1762)
!1843 = !DILocation(line: 973, column: 48, scope: !1762)
!1844 = !DILocation(line: 973, column: 30, scope: !1762)
!1845 = !DILocation(line: 974, column: 19, scope: !1762)
!1846 = !DILocation(line: 974, column: 23, scope: !1762)
!1847 = !DILocation(line: 974, column: 67, scope: !1762)
!1848 = !DILocation(line: 974, column: 34, scope: !1762)
!1849 = !DILocation(line: 974, column: 3, scope: !1762)
!1850 = !DILocation(line: 975, column: 19, scope: !1762)
!1851 = !DILocation(line: 975, column: 23, scope: !1762)
!1852 = !DILocation(line: 975, column: 67, scope: !1762)
!1853 = !DILocation(line: 975, column: 34, scope: !1762)
!1854 = !DILocation(line: 975, column: 3, scope: !1762)
!1855 = !DILocation(line: 976, column: 19, scope: !1762)
!1856 = !DILocation(line: 976, column: 23, scope: !1762)
!1857 = !DILocation(line: 976, column: 52, scope: !1762)
!1858 = !DILocation(line: 976, column: 34, scope: !1762)
!1859 = !DILocation(line: 976, column: 3, scope: !1762)
!1860 = !DILocation(line: 977, column: 19, scope: !1762)
!1861 = !DILocation(line: 977, column: 23, scope: !1762)
!1862 = !DILocation(line: 977, column: 52, scope: !1762)
!1863 = !DILocation(line: 977, column: 34, scope: !1762)
!1864 = !DILocation(line: 977, column: 3, scope: !1762)
!1865 = !DILocation(line: 980, column: 16, scope: !1762)
!1866 = !DILocation(line: 980, column: 26, scope: !1762)
!1867 = !DILocation(line: 980, column: 32, scope: !1762)
!1868 = !DILocation(line: 980, column: 15, scope: !1762)
!1869 = !DILocation(line: 980, column: 3, scope: !1762)
!1870 = !DILocation(line: 980, column: 13, scope: !1762)
!1871 = !DILocation(line: 981, column: 16, scope: !1762)
!1872 = !DILocation(line: 981, column: 26, scope: !1762)
!1873 = !DILocation(line: 981, column: 32, scope: !1762)
!1874 = !DILocation(line: 981, column: 15, scope: !1762)
!1875 = !DILocation(line: 981, column: 3, scope: !1762)
!1876 = !DILocation(line: 981, column: 13, scope: !1762)
!1877 = !DILocation(line: 982, column: 1, scope: !1762)
!1878 = distinct !DISubprogram(name: "DC16_SSE2", scope: !1, file: !1, line: 1079, type: !1387, scopeLine: 1079, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1880 = !DILocalVariable(name: "dst", arg: 1, scope: !1878, file: !1, line: 1079, type: !115)
!1881 = !DILocalVariable(name: "zero", scope: !1878, file: !1, line: 1080, type: !4)
!1882 = !DILocalVariable(name: "top", scope: !1878, file: !1, line: 1081, type: !4)
!1883 = !DILocalVariable(name: "sad8x2", scope: !1878, file: !1, line: 1082, type: !4)
!1884 = !DILocalVariable(name: "sum", scope: !1878, file: !1, line: 1084, type: !4)
!1885 = !DILocalVariable(name: "left", scope: !1878, file: !1, line: 1085, type: !29)
!1886 = !DILocalVariable(name: "j", scope: !1878, file: !1, line: 1086, type: !29)
!1887 = !DILocalVariable(name: "DC", scope: !1888, file: !1, line: 1091, type: !1591)
!1888 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 1090, column: 3)
!1889 = !DILocation(line: 1079, column: 32, scope: !1878)
!1890 = !DILocation(line: 1080, column: 3, scope: !1878)
!1891 = !DILocation(line: 1080, column: 17, scope: !1878)
!1892 = !DILocation(line: 1080, column: 24, scope: !1878)
!1893 = !DILocation(line: 1081, column: 3, scope: !1878)
!1894 = !DILocation(line: 1081, column: 17, scope: !1878)
!1895 = !DILocation(line: 1081, column: 56, scope: !1878)
!1896 = !DILocation(line: 1081, column: 60, scope: !1878)
!1897 = !DILocation(line: 1081, column: 23, scope: !1878)
!1898 = !DILocation(line: 1082, column: 3, scope: !1878)
!1899 = !DILocation(line: 1082, column: 17, scope: !1878)
!1900 = !DILocation(line: 1082, column: 39, scope: !1878)
!1901 = !DILocation(line: 1082, column: 44, scope: !1878)
!1902 = !DILocation(line: 1082, column: 26, scope: !1878)
!1903 = !DILocation(line: 1084, column: 3, scope: !1878)
!1904 = !DILocation(line: 1084, column: 17, scope: !1878)
!1905 = !DILocation(line: 1084, column: 37, scope: !1878)
!1906 = !DILocation(line: 1084, column: 45, scope: !1878)
!1907 = !DILocation(line: 1084, column: 23, scope: !1878)
!1908 = !DILocation(line: 1085, column: 3, scope: !1878)
!1909 = !DILocation(line: 1085, column: 7, scope: !1878)
!1910 = !DILocation(line: 1086, column: 3, scope: !1878)
!1911 = !DILocation(line: 1086, column: 7, scope: !1878)
!1912 = !DILocation(line: 1087, column: 10, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 1087, column: 3)
!1914 = !DILocation(line: 1087, column: 8, scope: !1913)
!1915 = !DILocation(line: 1087, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !1, line: 1087, column: 3)
!1917 = !DILocation(line: 1087, column: 17, scope: !1916)
!1918 = !DILocation(line: 1087, column: 3, scope: !1913)
!1919 = !DILocation(line: 1088, column: 13, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 1087, column: 28)
!1921 = !DILocation(line: 1088, column: 22, scope: !1920)
!1922 = !DILocation(line: 1088, column: 24, scope: !1920)
!1923 = !DILocation(line: 1088, column: 20, scope: !1920)
!1924 = !DILocation(line: 1088, column: 10, scope: !1920)
!1925 = !DILocation(line: 1089, column: 3, scope: !1920)
!1926 = !DILocation(line: 1087, column: 23, scope: !1916)
!1927 = !DILocation(line: 1087, column: 3, scope: !1916)
!1928 = distinct !{!1928, !1918, !1929, !1003}
!1929 = !DILocation(line: 1089, column: 3, scope: !1913)
!1930 = !DILocation(line: 1091, column: 5, scope: !1888)
!1931 = !DILocation(line: 1091, column: 15, scope: !1888)
!1932 = !DILocation(line: 1091, column: 38, scope: !1888)
!1933 = !DILocation(line: 1091, column: 20, scope: !1888)
!1934 = !DILocation(line: 1091, column: 45, scope: !1888)
!1935 = !DILocation(line: 1091, column: 43, scope: !1888)
!1936 = !DILocation(line: 1091, column: 50, scope: !1888)
!1937 = !DILocation(line: 1092, column: 16, scope: !1888)
!1938 = !DILocation(line: 1092, column: 19, scope: !1888)
!1939 = !DILocation(line: 1092, column: 25, scope: !1888)
!1940 = !DILocation(line: 1092, column: 5, scope: !1888)
!1941 = !DILocation(line: 1093, column: 3, scope: !1878)
!1942 = !DILocation(line: 1094, column: 1, scope: !1878)
!1943 = distinct !DISubprogram(name: "TM16_SSE2", scope: !1, file: !1, line: 1052, type: !1387, scopeLine: 1052, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1944)
!1944 = !{!1945}
!1945 = !DILocalVariable(name: "dst", arg: 1, scope: !1943, file: !1, line: 1052, type: !115)
!1946 = !DILocation(line: 1052, column: 32, scope: !1943)
!1947 = !DILocation(line: 1052, column: 56, scope: !1943)
!1948 = !DILocation(line: 1052, column: 40, scope: !1943)
!1949 = !DILocation(line: 1052, column: 66, scope: !1943)
!1950 = distinct !DISubprogram(name: "VE16_SSE2", scope: !1, file: !1, line: 1054, type: !1387, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DILocalVariable(name: "dst", arg: 1, scope: !1950, file: !1, line: 1054, type: !115)
!1953 = !DILocalVariable(name: "top", scope: !1950, file: !1, line: 1055, type: !4)
!1954 = !DILocalVariable(name: "j", scope: !1950, file: !1, line: 1056, type: !29)
!1955 = !DILocation(line: 1054, column: 32, scope: !1950)
!1956 = !DILocation(line: 1055, column: 3, scope: !1950)
!1957 = !DILocation(line: 1055, column: 17, scope: !1950)
!1958 = !DILocation(line: 1055, column: 56, scope: !1950)
!1959 = !DILocation(line: 1055, column: 60, scope: !1950)
!1960 = !DILocation(line: 1055, column: 23, scope: !1950)
!1961 = !DILocation(line: 1056, column: 3, scope: !1950)
!1962 = !DILocation(line: 1056, column: 7, scope: !1950)
!1963 = !DILocation(line: 1057, column: 10, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1950, file: !1, line: 1057, column: 3)
!1965 = !DILocation(line: 1057, column: 8, scope: !1964)
!1966 = !DILocation(line: 1057, column: 15, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 1057, column: 3)
!1968 = !DILocation(line: 1057, column: 17, scope: !1967)
!1969 = !DILocation(line: 1057, column: 3, scope: !1964)
!1970 = !DILocation(line: 1058, column: 33, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 1057, column: 28)
!1972 = !DILocation(line: 1058, column: 39, scope: !1971)
!1973 = !DILocation(line: 1058, column: 41, scope: !1971)
!1974 = !DILocation(line: 1058, column: 37, scope: !1971)
!1975 = !DILocation(line: 1058, column: 49, scope: !1971)
!1976 = !DILocation(line: 1058, column: 5, scope: !1971)
!1977 = !DILocation(line: 1059, column: 3, scope: !1971)
!1978 = !DILocation(line: 1057, column: 23, scope: !1967)
!1979 = !DILocation(line: 1057, column: 3, scope: !1967)
!1980 = distinct !{!1980, !1969, !1981, !1003}
!1981 = !DILocation(line: 1059, column: 3, scope: !1964)
!1982 = !DILocation(line: 1060, column: 1, scope: !1950)
!1983 = distinct !DISubprogram(name: "HE16_SSE2", scope: !1, file: !1, line: 1062, type: !1387, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DILocalVariable(name: "dst", arg: 1, scope: !1983, file: !1, line: 1062, type: !115)
!1986 = !DILocalVariable(name: "j", scope: !1983, file: !1, line: 1063, type: !29)
!1987 = !DILocalVariable(name: "values", scope: !1988, file: !1, line: 1065, type: !4)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1, line: 1064, column: 28)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 1064, column: 3)
!1990 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 1064, column: 3)
!1991 = !DILocation(line: 1062, column: 32, scope: !1983)
!1992 = !DILocation(line: 1063, column: 3, scope: !1983)
!1993 = !DILocation(line: 1063, column: 7, scope: !1983)
!1994 = !DILocation(line: 1064, column: 10, scope: !1990)
!1995 = !DILocation(line: 1064, column: 8, scope: !1990)
!1996 = !DILocation(line: 1064, column: 16, scope: !1989)
!1997 = !DILocation(line: 1064, column: 18, scope: !1989)
!1998 = !DILocation(line: 1064, column: 3, scope: !1990)
!1999 = !DILocation(line: 1065, column: 5, scope: !1988)
!2000 = !DILocation(line: 1065, column: 19, scope: !1988)
!2001 = !DILocation(line: 1065, column: 42, scope: !1988)
!2002 = !DILocation(line: 1065, column: 28, scope: !1988)
!2003 = !DILocation(line: 1066, column: 32, scope: !1988)
!2004 = !DILocation(line: 1066, column: 37, scope: !1988)
!2005 = !DILocation(line: 1066, column: 5, scope: !1988)
!2006 = !DILocation(line: 1067, column: 9, scope: !1988)
!2007 = !DILocation(line: 1068, column: 3, scope: !1989)
!2008 = !DILocation(line: 1068, column: 3, scope: !1988)
!2009 = !DILocation(line: 1064, column: 23, scope: !1989)
!2010 = !DILocation(line: 1064, column: 3, scope: !1989)
!2011 = distinct !{!2011, !1998, !2012, !1003}
!2012 = !DILocation(line: 1068, column: 3, scope: !1990)
!2013 = !DILocation(line: 1069, column: 1, scope: !1983)
!2014 = distinct !DISubprogram(name: "DC16NoTop_SSE2", scope: !1, file: !1, line: 1096, type: !1387, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DILocalVariable(name: "dst", arg: 1, scope: !2014, file: !1, line: 1096, type: !115)
!2017 = !DILocalVariable(name: "DC", scope: !2014, file: !1, line: 1097, type: !29)
!2018 = !DILocalVariable(name: "j", scope: !2014, file: !1, line: 1098, type: !29)
!2019 = !DILocation(line: 1096, column: 37, scope: !2014)
!2020 = !DILocation(line: 1097, column: 3, scope: !2014)
!2021 = !DILocation(line: 1097, column: 7, scope: !2014)
!2022 = !DILocation(line: 1098, column: 3, scope: !2014)
!2023 = !DILocation(line: 1098, column: 7, scope: !2014)
!2024 = !DILocation(line: 1099, column: 10, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2014, file: !1, line: 1099, column: 3)
!2026 = !DILocation(line: 1099, column: 8, scope: !2025)
!2027 = !DILocation(line: 1099, column: 15, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 1099, column: 3)
!2029 = !DILocation(line: 1099, column: 17, scope: !2028)
!2030 = !DILocation(line: 1099, column: 3, scope: !2025)
!2031 = !DILocation(line: 1100, column: 11, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2028, file: !1, line: 1099, column: 28)
!2033 = !DILocation(line: 1100, column: 20, scope: !2032)
!2034 = !DILocation(line: 1100, column: 22, scope: !2032)
!2035 = !DILocation(line: 1100, column: 18, scope: !2032)
!2036 = !DILocation(line: 1100, column: 8, scope: !2032)
!2037 = !DILocation(line: 1101, column: 3, scope: !2032)
!2038 = !DILocation(line: 1099, column: 23, scope: !2028)
!2039 = !DILocation(line: 1099, column: 3, scope: !2028)
!2040 = distinct !{!2040, !2030, !2041, !1003}
!2041 = !DILocation(line: 1101, column: 3, scope: !2025)
!2042 = !DILocation(line: 1102, column: 14, scope: !2014)
!2043 = !DILocation(line: 1102, column: 17, scope: !2014)
!2044 = !DILocation(line: 1102, column: 23, scope: !2014)
!2045 = !DILocation(line: 1102, column: 3, scope: !2014)
!2046 = !DILocation(line: 1103, column: 1, scope: !2014)
!2047 = distinct !DISubprogram(name: "DC16NoLeft_SSE2", scope: !1, file: !1, line: 1105, type: !1387, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2048)
!2048 = !{!2049, !2050, !2051, !2052, !2053, !2054}
!2049 = !DILocalVariable(name: "dst", arg: 1, scope: !2047, file: !1, line: 1105, type: !115)
!2050 = !DILocalVariable(name: "zero", scope: !2047, file: !1, line: 1106, type: !4)
!2051 = !DILocalVariable(name: "top", scope: !2047, file: !1, line: 1107, type: !4)
!2052 = !DILocalVariable(name: "sad8x2", scope: !2047, file: !1, line: 1108, type: !4)
!2053 = !DILocalVariable(name: "sum", scope: !2047, file: !1, line: 1110, type: !4)
!2054 = !DILocalVariable(name: "DC", scope: !2047, file: !1, line: 1111, type: !1591)
!2055 = !DILocation(line: 1105, column: 38, scope: !2047)
!2056 = !DILocation(line: 1106, column: 3, scope: !2047)
!2057 = !DILocation(line: 1106, column: 17, scope: !2047)
!2058 = !DILocation(line: 1106, column: 24, scope: !2047)
!2059 = !DILocation(line: 1107, column: 3, scope: !2047)
!2060 = !DILocation(line: 1107, column: 17, scope: !2047)
!2061 = !DILocation(line: 1107, column: 56, scope: !2047)
!2062 = !DILocation(line: 1107, column: 60, scope: !2047)
!2063 = !DILocation(line: 1107, column: 23, scope: !2047)
!2064 = !DILocation(line: 1108, column: 3, scope: !2047)
!2065 = !DILocation(line: 1108, column: 17, scope: !2047)
!2066 = !DILocation(line: 1108, column: 39, scope: !2047)
!2067 = !DILocation(line: 1108, column: 44, scope: !2047)
!2068 = !DILocation(line: 1108, column: 26, scope: !2047)
!2069 = !DILocation(line: 1110, column: 3, scope: !2047)
!2070 = !DILocation(line: 1110, column: 17, scope: !2047)
!2071 = !DILocation(line: 1110, column: 37, scope: !2047)
!2072 = !DILocation(line: 1110, column: 45, scope: !2047)
!2073 = !DILocation(line: 1110, column: 23, scope: !2047)
!2074 = !DILocation(line: 1111, column: 3, scope: !2047)
!2075 = !DILocation(line: 1111, column: 13, scope: !2047)
!2076 = !DILocation(line: 1111, column: 36, scope: !2047)
!2077 = !DILocation(line: 1111, column: 18, scope: !2047)
!2078 = !DILocation(line: 1111, column: 41, scope: !2047)
!2079 = !DILocation(line: 1112, column: 14, scope: !2047)
!2080 = !DILocation(line: 1112, column: 17, scope: !2047)
!2081 = !DILocation(line: 1112, column: 23, scope: !2047)
!2082 = !DILocation(line: 1112, column: 3, scope: !2047)
!2083 = !DILocation(line: 1113, column: 1, scope: !2047)
!2084 = distinct !DISubprogram(name: "DC16NoTopLeft_SSE2", scope: !1, file: !1, line: 1115, type: !1387, scopeLine: 1115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2085)
!2085 = !{!2086}
!2086 = !DILocalVariable(name: "dst", arg: 1, scope: !2084, file: !1, line: 1115, type: !115)
!2087 = !DILocation(line: 1115, column: 41, scope: !2084)
!2088 = !DILocation(line: 1116, column: 20, scope: !2084)
!2089 = !DILocation(line: 1116, column: 3, scope: !2084)
!2090 = !DILocation(line: 1117, column: 1, scope: !2084)
!2091 = distinct !DISubprogram(name: "DC8uv_SSE2", scope: !1, file: !1, line: 1139, type: !1387, scopeLine: 1139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099}
!2093 = !DILocalVariable(name: "dst", arg: 1, scope: !2091, file: !1, line: 1139, type: !115)
!2094 = !DILocalVariable(name: "zero", scope: !2091, file: !1, line: 1140, type: !4)
!2095 = !DILocalVariable(name: "top", scope: !2091, file: !1, line: 1141, type: !4)
!2096 = !DILocalVariable(name: "sum", scope: !2091, file: !1, line: 1142, type: !4)
!2097 = !DILocalVariable(name: "left", scope: !2091, file: !1, line: 1143, type: !29)
!2098 = !DILocalVariable(name: "j", scope: !2091, file: !1, line: 1144, type: !29)
!2099 = !DILocalVariable(name: "DC", scope: !2100, file: !1, line: 1149, type: !1591)
!2100 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 1148, column: 3)
!2101 = !DILocation(line: 1139, column: 33, scope: !2091)
!2102 = !DILocation(line: 1140, column: 3, scope: !2091)
!2103 = !DILocation(line: 1140, column: 17, scope: !2091)
!2104 = !DILocation(line: 1140, column: 24, scope: !2091)
!2105 = !DILocation(line: 1141, column: 3, scope: !2091)
!2106 = !DILocation(line: 1141, column: 17, scope: !2091)
!2107 = !DILocation(line: 1141, column: 56, scope: !2091)
!2108 = !DILocation(line: 1141, column: 60, scope: !2091)
!2109 = !DILocation(line: 1141, column: 23, scope: !2091)
!2110 = !DILocation(line: 1142, column: 3, scope: !2091)
!2111 = !DILocation(line: 1142, column: 17, scope: !2091)
!2112 = !DILocation(line: 1142, column: 36, scope: !2091)
!2113 = !DILocation(line: 1142, column: 41, scope: !2091)
!2114 = !DILocation(line: 1142, column: 23, scope: !2091)
!2115 = !DILocation(line: 1143, column: 3, scope: !2091)
!2116 = !DILocation(line: 1143, column: 7, scope: !2091)
!2117 = !DILocation(line: 1144, column: 3, scope: !2091)
!2118 = !DILocation(line: 1144, column: 7, scope: !2091)
!2119 = !DILocation(line: 1145, column: 10, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 1145, column: 3)
!2121 = !DILocation(line: 1145, column: 8, scope: !2120)
!2122 = !DILocation(line: 1145, column: 15, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 1145, column: 3)
!2124 = !DILocation(line: 1145, column: 17, scope: !2123)
!2125 = !DILocation(line: 1145, column: 3, scope: !2120)
!2126 = !DILocation(line: 1146, column: 13, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !1, line: 1145, column: 27)
!2128 = !DILocation(line: 1146, column: 22, scope: !2127)
!2129 = !DILocation(line: 1146, column: 24, scope: !2127)
!2130 = !DILocation(line: 1146, column: 20, scope: !2127)
!2131 = !DILocation(line: 1146, column: 10, scope: !2127)
!2132 = !DILocation(line: 1147, column: 3, scope: !2127)
!2133 = !DILocation(line: 1145, column: 22, scope: !2123)
!2134 = !DILocation(line: 1145, column: 3, scope: !2123)
!2135 = distinct !{!2135, !2125, !2136, !1003}
!2136 = !DILocation(line: 1147, column: 3, scope: !2120)
!2137 = !DILocation(line: 1149, column: 5, scope: !2100)
!2138 = !DILocation(line: 1149, column: 15, scope: !2100)
!2139 = !DILocation(line: 1149, column: 38, scope: !2100)
!2140 = !DILocation(line: 1149, column: 20, scope: !2100)
!2141 = !DILocation(line: 1149, column: 45, scope: !2100)
!2142 = !DILocation(line: 1149, column: 43, scope: !2100)
!2143 = !DILocation(line: 1149, column: 50, scope: !2100)
!2144 = !DILocation(line: 1150, column: 19, scope: !2100)
!2145 = !DILocation(line: 1150, column: 22, scope: !2100)
!2146 = !DILocation(line: 1150, column: 28, scope: !2100)
!2147 = !DILocation(line: 1150, column: 5, scope: !2100)
!2148 = !DILocation(line: 1151, column: 3, scope: !2091)
!2149 = !DILocation(line: 1152, column: 1, scope: !2091)
!2150 = distinct !DISubprogram(name: "TM8uv_SSE2", scope: !1, file: !1, line: 1051, type: !1387, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2151)
!2151 = !{!2152}
!2152 = !DILocalVariable(name: "dst", arg: 1, scope: !2150, file: !1, line: 1051, type: !115)
!2153 = !DILocation(line: 1051, column: 33, scope: !2150)
!2154 = !DILocation(line: 1051, column: 56, scope: !2150)
!2155 = !DILocation(line: 1051, column: 40, scope: !2150)
!2156 = !DILocation(line: 1051, column: 65, scope: !2150)
!2157 = distinct !DISubprogram(name: "VE8uv_SSE2", scope: !1, file: !1, line: 1122, type: !1387, scopeLine: 1122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "dst", arg: 1, scope: !2157, file: !1, line: 1122, type: !115)
!2160 = !DILocalVariable(name: "j", scope: !2157, file: !1, line: 1123, type: !29)
!2161 = !DILocalVariable(name: "top", scope: !2157, file: !1, line: 1124, type: !4)
!2162 = !DILocation(line: 1122, column: 33, scope: !2157)
!2163 = !DILocation(line: 1123, column: 3, scope: !2157)
!2164 = !DILocation(line: 1123, column: 7, scope: !2157)
!2165 = !DILocation(line: 1124, column: 3, scope: !2157)
!2166 = !DILocation(line: 1124, column: 17, scope: !2157)
!2167 = !DILocation(line: 1124, column: 56, scope: !2157)
!2168 = !DILocation(line: 1124, column: 60, scope: !2157)
!2169 = !DILocation(line: 1124, column: 23, scope: !2157)
!2170 = !DILocation(line: 1125, column: 10, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 1125, column: 3)
!2172 = !DILocation(line: 1125, column: 8, scope: !2171)
!2173 = !DILocation(line: 1125, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 1125, column: 3)
!2175 = !DILocation(line: 1125, column: 17, scope: !2174)
!2176 = !DILocation(line: 1125, column: 3, scope: !2171)
!2177 = !DILocation(line: 1126, column: 33, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !1, line: 1125, column: 27)
!2179 = !DILocation(line: 1126, column: 39, scope: !2178)
!2180 = !DILocation(line: 1126, column: 41, scope: !2178)
!2181 = !DILocation(line: 1126, column: 37, scope: !2178)
!2182 = !DILocation(line: 1126, column: 49, scope: !2178)
!2183 = !DILocation(line: 1126, column: 5, scope: !2178)
!2184 = !DILocation(line: 1127, column: 3, scope: !2178)
!2185 = !DILocation(line: 1125, column: 22, scope: !2174)
!2186 = !DILocation(line: 1125, column: 3, scope: !2174)
!2187 = distinct !{!2187, !2176, !2188, !1003}
!2188 = !DILocation(line: 1127, column: 3, scope: !2171)
!2189 = !DILocation(line: 1128, column: 1, scope: !2157)
!2190 = distinct !DISubprogram(name: "DC8uvNoTop_SSE2", scope: !1, file: !1, line: 1162, type: !1387, scopeLine: 1162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2191)
!2191 = !{!2192, !2193, !2194}
!2192 = !DILocalVariable(name: "dst", arg: 1, scope: !2190, file: !1, line: 1162, type: !115)
!2193 = !DILocalVariable(name: "dc0", scope: !2190, file: !1, line: 1163, type: !29)
!2194 = !DILocalVariable(name: "i", scope: !2190, file: !1, line: 1164, type: !29)
!2195 = !DILocation(line: 1162, column: 38, scope: !2190)
!2196 = !DILocation(line: 1163, column: 3, scope: !2190)
!2197 = !DILocation(line: 1163, column: 7, scope: !2190)
!2198 = !DILocation(line: 1164, column: 3, scope: !2190)
!2199 = !DILocation(line: 1164, column: 7, scope: !2190)
!2200 = !DILocation(line: 1165, column: 10, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2190, file: !1, line: 1165, column: 3)
!2202 = !DILocation(line: 1165, column: 8, scope: !2201)
!2203 = !DILocation(line: 1165, column: 15, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !1, line: 1165, column: 3)
!2205 = !DILocation(line: 1165, column: 17, scope: !2204)
!2206 = !DILocation(line: 1165, column: 3, scope: !2201)
!2207 = !DILocation(line: 1166, column: 12, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 1165, column: 27)
!2209 = !DILocation(line: 1166, column: 21, scope: !2208)
!2210 = !DILocation(line: 1166, column: 23, scope: !2208)
!2211 = !DILocation(line: 1166, column: 19, scope: !2208)
!2212 = !DILocation(line: 1166, column: 9, scope: !2208)
!2213 = !DILocation(line: 1167, column: 3, scope: !2208)
!2214 = !DILocation(line: 1165, column: 22, scope: !2204)
!2215 = !DILocation(line: 1165, column: 3, scope: !2204)
!2216 = distinct !{!2216, !2206, !2217, !1003}
!2217 = !DILocation(line: 1167, column: 3, scope: !2201)
!2218 = !DILocation(line: 1168, column: 17, scope: !2190)
!2219 = !DILocation(line: 1168, column: 21, scope: !2190)
!2220 = !DILocation(line: 1168, column: 27, scope: !2190)
!2221 = !DILocation(line: 1168, column: 3, scope: !2190)
!2222 = !DILocation(line: 1169, column: 1, scope: !2190)
!2223 = distinct !DISubprogram(name: "DC8uvNoLeft_SSE2", scope: !1, file: !1, line: 1154, type: !1387, scopeLine: 1154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229}
!2225 = !DILocalVariable(name: "dst", arg: 1, scope: !2223, file: !1, line: 1154, type: !115)
!2226 = !DILocalVariable(name: "zero", scope: !2223, file: !1, line: 1155, type: !4)
!2227 = !DILocalVariable(name: "top", scope: !2223, file: !1, line: 1156, type: !4)
!2228 = !DILocalVariable(name: "sum", scope: !2223, file: !1, line: 1157, type: !4)
!2229 = !DILocalVariable(name: "DC", scope: !2223, file: !1, line: 1158, type: !1591)
!2230 = !DILocation(line: 1154, column: 39, scope: !2223)
!2231 = !DILocation(line: 1155, column: 3, scope: !2223)
!2232 = !DILocation(line: 1155, column: 17, scope: !2223)
!2233 = !DILocation(line: 1155, column: 24, scope: !2223)
!2234 = !DILocation(line: 1156, column: 3, scope: !2223)
!2235 = !DILocation(line: 1156, column: 17, scope: !2223)
!2236 = !DILocation(line: 1156, column: 56, scope: !2223)
!2237 = !DILocation(line: 1156, column: 60, scope: !2223)
!2238 = !DILocation(line: 1156, column: 23, scope: !2223)
!2239 = !DILocation(line: 1157, column: 3, scope: !2223)
!2240 = !DILocation(line: 1157, column: 17, scope: !2223)
!2241 = !DILocation(line: 1157, column: 36, scope: !2223)
!2242 = !DILocation(line: 1157, column: 41, scope: !2223)
!2243 = !DILocation(line: 1157, column: 23, scope: !2223)
!2244 = !DILocation(line: 1158, column: 3, scope: !2223)
!2245 = !DILocation(line: 1158, column: 13, scope: !2223)
!2246 = !DILocation(line: 1158, column: 36, scope: !2223)
!2247 = !DILocation(line: 1158, column: 18, scope: !2223)
!2248 = !DILocation(line: 1158, column: 41, scope: !2223)
!2249 = !DILocation(line: 1159, column: 17, scope: !2223)
!2250 = !DILocation(line: 1159, column: 20, scope: !2223)
!2251 = !DILocation(line: 1159, column: 26, scope: !2223)
!2252 = !DILocation(line: 1159, column: 3, scope: !2223)
!2253 = !DILocation(line: 1160, column: 1, scope: !2223)
!2254 = distinct !DISubprogram(name: "DC8uvNoTopLeft_SSE2", scope: !1, file: !1, line: 1171, type: !1387, scopeLine: 1171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2255)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "dst", arg: 1, scope: !2254, file: !1, line: 1171, type: !115)
!2257 = !DILocation(line: 1171, column: 42, scope: !2254)
!2258 = !DILocation(line: 1172, column: 23, scope: !2254)
!2259 = !DILocation(line: 1172, column: 3, scope: !2254)
!2260 = !DILocation(line: 1173, column: 1, scope: !2254)
!2261 = !{!2262, !2262, i64 0}
!2262 = !{!"short", !72, i64 0}
!2263 = distinct !DISubprogram(name: "VP8Transpose_2_4x4_16b", scope: !2264, file: !2264, line: 68, type: !2265, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2269)
!2264 = !DIFile(filename: "../../src/dsp/common_sse2.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/dsp", checksumkind: CSK_MD5, checksum: "342561a70e42daf21ec6045d121a1216")
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !2267, !2267, !2267, !2267, !2268, !2268, !2268, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2270 = !DILocalVariable(name: "in0", arg: 1, scope: !2263, file: !2264, line: 69, type: !2267)
!2271 = !DILocalVariable(name: "in1", arg: 2, scope: !2263, file: !2264, line: 69, type: !2267)
!2272 = !DILocalVariable(name: "in2", arg: 3, scope: !2263, file: !2264, line: 70, type: !2267)
!2273 = !DILocalVariable(name: "in3", arg: 4, scope: !2263, file: !2264, line: 70, type: !2267)
!2274 = !DILocalVariable(name: "out0", arg: 5, scope: !2263, file: !2264, line: 70, type: !2268)
!2275 = !DILocalVariable(name: "out1", arg: 6, scope: !2263, file: !2264, line: 71, type: !2268)
!2276 = !DILocalVariable(name: "out2", arg: 7, scope: !2263, file: !2264, line: 71, type: !2268)
!2277 = !DILocalVariable(name: "out3", arg: 8, scope: !2263, file: !2264, line: 71, type: !2268)
!2278 = !DILocalVariable(name: "transpose0_0", scope: !2263, file: !2264, line: 77, type: !4)
!2279 = !DILocalVariable(name: "transpose0_1", scope: !2263, file: !2264, line: 78, type: !4)
!2280 = !DILocalVariable(name: "transpose0_2", scope: !2263, file: !2264, line: 79, type: !4)
!2281 = !DILocalVariable(name: "transpose0_3", scope: !2263, file: !2264, line: 80, type: !4)
!2282 = !DILocalVariable(name: "transpose1_0", scope: !2263, file: !2264, line: 85, type: !4)
!2283 = !DILocalVariable(name: "transpose1_1", scope: !2263, file: !2264, line: 86, type: !4)
!2284 = !DILocalVariable(name: "transpose1_2", scope: !2263, file: !2264, line: 87, type: !4)
!2285 = !DILocalVariable(name: "transpose1_3", scope: !2263, file: !2264, line: 88, type: !4)
!2286 = !DILocation(line: 69, column: 26, scope: !2263)
!2287 = !DILocation(line: 69, column: 52, scope: !2263)
!2288 = !DILocation(line: 70, column: 26, scope: !2263)
!2289 = !DILocation(line: 70, column: 52, scope: !2263)
!2290 = !DILocation(line: 70, column: 72, scope: !2263)
!2291 = !DILocation(line: 71, column: 20, scope: !2263)
!2292 = !DILocation(line: 71, column: 41, scope: !2263)
!2293 = !DILocation(line: 71, column: 62, scope: !2263)
!2294 = !DILocation(line: 77, column: 3, scope: !2263)
!2295 = !DILocation(line: 77, column: 17, scope: !2263)
!2296 = !DILocation(line: 77, column: 52, scope: !2263)
!2297 = !DILocation(line: 77, column: 51, scope: !2263)
!2298 = !DILocation(line: 77, column: 58, scope: !2263)
!2299 = !DILocation(line: 77, column: 57, scope: !2263)
!2300 = !DILocation(line: 77, column: 32, scope: !2263)
!2301 = !DILocation(line: 78, column: 3, scope: !2263)
!2302 = !DILocation(line: 78, column: 17, scope: !2263)
!2303 = !DILocation(line: 78, column: 52, scope: !2263)
!2304 = !DILocation(line: 78, column: 51, scope: !2263)
!2305 = !DILocation(line: 78, column: 58, scope: !2263)
!2306 = !DILocation(line: 78, column: 57, scope: !2263)
!2307 = !DILocation(line: 78, column: 32, scope: !2263)
!2308 = !DILocation(line: 79, column: 3, scope: !2263)
!2309 = !DILocation(line: 79, column: 17, scope: !2263)
!2310 = !DILocation(line: 79, column: 52, scope: !2263)
!2311 = !DILocation(line: 79, column: 51, scope: !2263)
!2312 = !DILocation(line: 79, column: 58, scope: !2263)
!2313 = !DILocation(line: 79, column: 57, scope: !2263)
!2314 = !DILocation(line: 79, column: 32, scope: !2263)
!2315 = !DILocation(line: 80, column: 3, scope: !2263)
!2316 = !DILocation(line: 80, column: 17, scope: !2263)
!2317 = !DILocation(line: 80, column: 52, scope: !2263)
!2318 = !DILocation(line: 80, column: 51, scope: !2263)
!2319 = !DILocation(line: 80, column: 58, scope: !2263)
!2320 = !DILocation(line: 80, column: 57, scope: !2263)
!2321 = !DILocation(line: 80, column: 32, scope: !2263)
!2322 = !DILocation(line: 85, column: 3, scope: !2263)
!2323 = !DILocation(line: 85, column: 17, scope: !2263)
!2324 = !DILocation(line: 85, column: 51, scope: !2263)
!2325 = !DILocation(line: 85, column: 65, scope: !2263)
!2326 = !DILocation(line: 85, column: 32, scope: !2263)
!2327 = !DILocation(line: 86, column: 3, scope: !2263)
!2328 = !DILocation(line: 86, column: 17, scope: !2263)
!2329 = !DILocation(line: 86, column: 51, scope: !2263)
!2330 = !DILocation(line: 86, column: 65, scope: !2263)
!2331 = !DILocation(line: 86, column: 32, scope: !2263)
!2332 = !DILocation(line: 87, column: 3, scope: !2263)
!2333 = !DILocation(line: 87, column: 17, scope: !2263)
!2334 = !DILocation(line: 87, column: 51, scope: !2263)
!2335 = !DILocation(line: 87, column: 65, scope: !2263)
!2336 = !DILocation(line: 87, column: 32, scope: !2263)
!2337 = !DILocation(line: 88, column: 3, scope: !2263)
!2338 = !DILocation(line: 88, column: 17, scope: !2263)
!2339 = !DILocation(line: 88, column: 51, scope: !2263)
!2340 = !DILocation(line: 88, column: 65, scope: !2263)
!2341 = !DILocation(line: 88, column: 32, scope: !2263)
!2342 = !DILocation(line: 93, column: 30, scope: !2263)
!2343 = !DILocation(line: 93, column: 44, scope: !2263)
!2344 = !DILocation(line: 93, column: 11, scope: !2263)
!2345 = !DILocation(line: 93, column: 4, scope: !2263)
!2346 = !DILocation(line: 93, column: 9, scope: !2263)
!2347 = !DILocation(line: 94, column: 30, scope: !2263)
!2348 = !DILocation(line: 94, column: 44, scope: !2263)
!2349 = !DILocation(line: 94, column: 11, scope: !2263)
!2350 = !DILocation(line: 94, column: 4, scope: !2263)
!2351 = !DILocation(line: 94, column: 9, scope: !2263)
!2352 = !DILocation(line: 95, column: 30, scope: !2263)
!2353 = !DILocation(line: 95, column: 44, scope: !2263)
!2354 = !DILocation(line: 95, column: 11, scope: !2263)
!2355 = !DILocation(line: 95, column: 4, scope: !2263)
!2356 = !DILocation(line: 95, column: 9, scope: !2263)
!2357 = !DILocation(line: 96, column: 30, scope: !2263)
!2358 = !DILocation(line: 96, column: 44, scope: !2263)
!2359 = !DILocation(line: 96, column: 11, scope: !2263)
!2360 = !DILocation(line: 96, column: 4, scope: !2263)
!2361 = !DILocation(line: 96, column: 9, scope: !2263)
!2362 = !DILocation(line: 101, column: 1, scope: !2263)
!2363 = distinct !DISubprogram(name: "WebPMemToUint32", scope: !2364, file: !2364, line: 71, type: !2365, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2370)
!2364 = !DIFile(filename: "../../src/utils/utils.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/dsp", checksumkind: CSK_MD5, checksum: "a92c64449e1fea70c2890d0a53386cbe")
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!1408, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2368)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!2370 = !{!2371, !2372}
!2371 = !DILocalVariable(name: "ptr", arg: 1, scope: !2363, file: !2364, line: 71, type: !2367)
!2372 = !DILocalVariable(name: "A", scope: !2363, file: !2364, line: 72, type: !1408)
!2373 = !DILocation(line: 71, column: 66, scope: !2363)
!2374 = !DILocation(line: 72, column: 3, scope: !2363)
!2375 = !DILocation(line: 72, column: 12, scope: !2363)
!2376 = !DILocation(line: 73, column: 14, scope: !2363)
!2377 = !DILocation(line: 73, column: 3, scope: !2363)
!2378 = !DILocation(line: 74, column: 10, scope: !2363)
!2379 = !DILocation(line: 75, column: 1, scope: !2363)
!2380 = !DILocation(line: 74, column: 3, scope: !2363)
!2381 = distinct !DISubprogram(name: "WebPUint32ToMem", scope: !2364, file: !2364, line: 76, type: !2382, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !682, !1408}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "ptr", arg: 1, scope: !2381, file: !2364, line: 76, type: !682)
!2386 = !DILocalVariable(name: "val", arg: 2, scope: !2381, file: !2364, line: 76, type: !1408)
!2387 = !DILocation(line: 76, column: 56, scope: !2381)
!2388 = !DILocation(line: 76, column: 70, scope: !2381)
!2389 = !DILocation(line: 77, column: 10, scope: !2381)
!2390 = !DILocation(line: 77, column: 3, scope: !2381)
!2391 = !DILocation(line: 78, column: 1, scope: !2381)
!2392 = distinct !DISubprogram(name: "ComplexMask_SSE2", scope: !1, file: !1, line: 674, type: !2393, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2267, !2267, !2267, !2267, !29, !29, !2268}
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406}
!2396 = !DILocalVariable(name: "p1", arg: 1, scope: !2392, file: !1, line: 674, type: !2267)
!2397 = !DILocalVariable(name: "p0", arg: 2, scope: !2392, file: !1, line: 675, type: !2267)
!2398 = !DILocalVariable(name: "q0", arg: 3, scope: !2392, file: !1, line: 676, type: !2267)
!2399 = !DILocalVariable(name: "q1", arg: 4, scope: !2392, file: !1, line: 677, type: !2267)
!2400 = !DILocalVariable(name: "thresh", arg: 5, scope: !2392, file: !1, line: 678, type: !29)
!2401 = !DILocalVariable(name: "ithresh", arg: 6, scope: !2392, file: !1, line: 678, type: !29)
!2402 = !DILocalVariable(name: "mask", arg: 7, scope: !2392, file: !1, line: 679, type: !2268)
!2403 = !DILocalVariable(name: "it", scope: !2392, file: !1, line: 680, type: !4)
!2404 = !DILocalVariable(name: "diff", scope: !2392, file: !1, line: 681, type: !4)
!2405 = !DILocalVariable(name: "thresh_mask", scope: !2392, file: !1, line: 682, type: !4)
!2406 = !DILocalVariable(name: "filter_mask", scope: !2392, file: !1, line: 683, type: !5)
!2407 = !DILocation(line: 674, column: 63, scope: !2392)
!2408 = !DILocation(line: 675, column: 63, scope: !2392)
!2409 = !DILocation(line: 676, column: 63, scope: !2392)
!2410 = !DILocation(line: 677, column: 63, scope: !2392)
!2411 = !DILocation(line: 678, column: 46, scope: !2392)
!2412 = !DILocation(line: 678, column: 58, scope: !2392)
!2413 = !DILocation(line: 679, column: 57, scope: !2392)
!2414 = !DILocation(line: 680, column: 3, scope: !2392)
!2415 = !DILocation(line: 680, column: 17, scope: !2392)
!2416 = !DILocation(line: 680, column: 36, scope: !2392)
!2417 = !DILocation(line: 680, column: 22, scope: !2392)
!2418 = !DILocation(line: 681, column: 3, scope: !2392)
!2419 = !DILocation(line: 681, column: 17, scope: !2392)
!2420 = !DILocation(line: 681, column: 39, scope: !2392)
!2421 = !DILocation(line: 681, column: 38, scope: !2392)
!2422 = !DILocation(line: 681, column: 45, scope: !2392)
!2423 = !DILocation(line: 681, column: 24, scope: !2392)
!2424 = !DILocation(line: 682, column: 3, scope: !2392)
!2425 = !DILocation(line: 682, column: 17, scope: !2392)
!2426 = !DILocation(line: 682, column: 46, scope: !2392)
!2427 = !DILocation(line: 682, column: 52, scope: !2392)
!2428 = !DILocation(line: 682, column: 31, scope: !2392)
!2429 = !DILocation(line: 683, column: 3, scope: !2392)
!2430 = !DILocation(line: 683, column: 11, scope: !2392)
!2431 = !DILocation(line: 684, column: 20, scope: !2392)
!2432 = !DILocation(line: 684, column: 24, scope: !2392)
!2433 = !DILocation(line: 684, column: 28, scope: !2392)
!2434 = !DILocation(line: 684, column: 32, scope: !2392)
!2435 = !DILocation(line: 684, column: 36, scope: !2392)
!2436 = !DILocation(line: 684, column: 3, scope: !2392)
!2437 = !DILocation(line: 685, column: 25, scope: !2392)
!2438 = !DILocation(line: 685, column: 38, scope: !2392)
!2439 = !DILocation(line: 685, column: 11, scope: !2392)
!2440 = !DILocation(line: 685, column: 4, scope: !2392)
!2441 = !DILocation(line: 685, column: 9, scope: !2392)
!2442 = !DILocation(line: 686, column: 1, scope: !2392)
!2443 = distinct !DISubprogram(name: "DoFilter6_SSE2", scope: !1, file: !1, line: 424, type: !2444, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2268, !2268, !2268, !2268, !2268, !2268, !2267, !29}
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2461, !2462, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476}
!2447 = !DILocalVariable(name: "p2", arg: 1, scope: !2443, file: !1, line: 424, type: !2268)
!2448 = !DILocalVariable(name: "p1", arg: 2, scope: !2443, file: !1, line: 424, type: !2268)
!2449 = !DILocalVariable(name: "p0", arg: 3, scope: !2443, file: !1, line: 425, type: !2268)
!2450 = !DILocalVariable(name: "q0", arg: 4, scope: !2443, file: !1, line: 425, type: !2268)
!2451 = !DILocalVariable(name: "q1", arg: 5, scope: !2443, file: !1, line: 426, type: !2268)
!2452 = !DILocalVariable(name: "q2", arg: 6, scope: !2443, file: !1, line: 426, type: !2268)
!2453 = !DILocalVariable(name: "mask", arg: 7, scope: !2443, file: !1, line: 427, type: !2267)
!2454 = !DILocalVariable(name: "hev_thresh", arg: 8, scope: !2443, file: !1, line: 428, type: !29)
!2455 = !DILocalVariable(name: "zero", scope: !2443, file: !1, line: 429, type: !4)
!2456 = !DILocalVariable(name: "sign_bit", scope: !2443, file: !1, line: 430, type: !4)
!2457 = !DILocalVariable(name: "a", scope: !2443, file: !1, line: 431, type: !5)
!2458 = !DILocalVariable(name: "not_hev", scope: !2443, file: !1, line: 431, type: !5)
!2459 = !DILocalVariable(name: "m", scope: !2460, file: !1, line: 441, type: !4)
!2460 = distinct !DILexicalBlock(scope: !2443, file: !1, line: 440, column: 3)
!2461 = !DILocalVariable(name: "f", scope: !2460, file: !1, line: 442, type: !4)
!2462 = !DILocalVariable(name: "k9", scope: !2463, file: !1, line: 447, type: !4)
!2463 = distinct !DILexicalBlock(scope: !2443, file: !1, line: 446, column: 3)
!2464 = !DILocalVariable(name: "k63", scope: !2463, file: !1, line: 448, type: !4)
!2465 = !DILocalVariable(name: "m", scope: !2463, file: !1, line: 450, type: !4)
!2466 = !DILocalVariable(name: "f", scope: !2463, file: !1, line: 451, type: !4)
!2467 = !DILocalVariable(name: "f_lo", scope: !2463, file: !1, line: 453, type: !4)
!2468 = !DILocalVariable(name: "f_hi", scope: !2463, file: !1, line: 454, type: !4)
!2469 = !DILocalVariable(name: "f9_lo", scope: !2463, file: !1, line: 456, type: !4)
!2470 = !DILocalVariable(name: "f9_hi", scope: !2463, file: !1, line: 457, type: !4)
!2471 = !DILocalVariable(name: "a2_lo", scope: !2463, file: !1, line: 459, type: !4)
!2472 = !DILocalVariable(name: "a2_hi", scope: !2463, file: !1, line: 460, type: !4)
!2473 = !DILocalVariable(name: "a1_lo", scope: !2463, file: !1, line: 462, type: !4)
!2474 = !DILocalVariable(name: "a1_hi", scope: !2463, file: !1, line: 463, type: !4)
!2475 = !DILocalVariable(name: "a0_lo", scope: !2463, file: !1, line: 465, type: !4)
!2476 = !DILocalVariable(name: "a0_hi", scope: !2463, file: !1, line: 466, type: !4)
!2477 = !DILocation(line: 424, column: 55, scope: !2443)
!2478 = !DILocation(line: 424, column: 74, scope: !2443)
!2479 = !DILocation(line: 425, column: 55, scope: !2443)
!2480 = !DILocation(line: 425, column: 74, scope: !2443)
!2481 = !DILocation(line: 426, column: 55, scope: !2443)
!2482 = !DILocation(line: 426, column: 74, scope: !2443)
!2483 = !DILocation(line: 427, column: 61, scope: !2443)
!2484 = !DILocation(line: 428, column: 44, scope: !2443)
!2485 = !DILocation(line: 429, column: 3, scope: !2443)
!2486 = !DILocation(line: 429, column: 17, scope: !2443)
!2487 = !DILocation(line: 429, column: 24, scope: !2443)
!2488 = !DILocation(line: 430, column: 3, scope: !2443)
!2489 = !DILocation(line: 430, column: 17, scope: !2443)
!2490 = !DILocation(line: 430, column: 28, scope: !2443)
!2491 = !DILocation(line: 431, column: 3, scope: !2443)
!2492 = !DILocation(line: 431, column: 11, scope: !2443)
!2493 = !DILocation(line: 431, column: 14, scope: !2443)
!2494 = !DILocation(line: 434, column: 18, scope: !2443)
!2495 = !DILocation(line: 434, column: 22, scope: !2443)
!2496 = !DILocation(line: 434, column: 26, scope: !2443)
!2497 = !DILocation(line: 434, column: 30, scope: !2443)
!2498 = !DILocation(line: 434, column: 34, scope: !2443)
!2499 = !DILocation(line: 434, column: 3, scope: !2443)
!2500 = !DILocation(line: 436, column: 3, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 436, column: 3)
!2502 = distinct !DILexicalBlock(scope: !2443, file: !1, line: 436, column: 3)
!2503 = !DILocation(line: 436, column: 3, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 436, column: 3)
!2505 = !DILocation(line: 437, column: 3, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2443, file: !1, line: 437, column: 3)
!2507 = !DILocation(line: 438, column: 21, scope: !2443)
!2508 = !DILocation(line: 438, column: 25, scope: !2443)
!2509 = !DILocation(line: 438, column: 29, scope: !2443)
!2510 = !DILocation(line: 438, column: 33, scope: !2443)
!2511 = !DILocation(line: 438, column: 3, scope: !2443)
!2512 = !DILocation(line: 441, column: 5, scope: !2460)
!2513 = !DILocation(line: 441, column: 19, scope: !2460)
!2514 = !DILocation(line: 441, column: 40, scope: !2460)
!2515 = !DILocation(line: 441, column: 50, scope: !2460)
!2516 = !DILocation(line: 441, column: 49, scope: !2460)
!2517 = !DILocation(line: 441, column: 23, scope: !2460)
!2518 = !DILocation(line: 442, column: 5, scope: !2460)
!2519 = !DILocation(line: 442, column: 19, scope: !2460)
!2520 = !DILocation(line: 442, column: 37, scope: !2460)
!2521 = !DILocation(line: 442, column: 40, scope: !2460)
!2522 = !DILocation(line: 442, column: 23, scope: !2460)
!2523 = !DILocation(line: 443, column: 25, scope: !2460)
!2524 = !DILocation(line: 443, column: 29, scope: !2460)
!2525 = !DILocation(line: 443, column: 5, scope: !2460)
!2526 = !DILocation(line: 444, column: 3, scope: !2443)
!2527 = !DILocation(line: 447, column: 5, scope: !2463)
!2528 = !DILocation(line: 447, column: 19, scope: !2463)
!2529 = !DILocation(line: 447, column: 24, scope: !2463)
!2530 = !DILocation(line: 448, column: 5, scope: !2463)
!2531 = !DILocation(line: 448, column: 19, scope: !2463)
!2532 = !DILocation(line: 448, column: 25, scope: !2463)
!2533 = !DILocation(line: 450, column: 5, scope: !2463)
!2534 = !DILocation(line: 450, column: 19, scope: !2463)
!2535 = !DILocation(line: 450, column: 37, scope: !2463)
!2536 = !DILocation(line: 450, column: 47, scope: !2463)
!2537 = !DILocation(line: 450, column: 46, scope: !2463)
!2538 = !DILocation(line: 450, column: 23, scope: !2463)
!2539 = !DILocation(line: 451, column: 5, scope: !2463)
!2540 = !DILocation(line: 451, column: 19, scope: !2463)
!2541 = !DILocation(line: 451, column: 37, scope: !2463)
!2542 = !DILocation(line: 451, column: 40, scope: !2463)
!2543 = !DILocation(line: 451, column: 23, scope: !2463)
!2544 = !DILocation(line: 453, column: 5, scope: !2463)
!2545 = !DILocation(line: 453, column: 19, scope: !2463)
!2546 = !DILocation(line: 453, column: 44, scope: !2463)
!2547 = !DILocation(line: 453, column: 50, scope: !2463)
!2548 = !DILocation(line: 453, column: 26, scope: !2463)
!2549 = !DILocation(line: 454, column: 5, scope: !2463)
!2550 = !DILocation(line: 454, column: 19, scope: !2463)
!2551 = !DILocation(line: 454, column: 44, scope: !2463)
!2552 = !DILocation(line: 454, column: 50, scope: !2463)
!2553 = !DILocation(line: 454, column: 26, scope: !2463)
!2554 = !DILocation(line: 456, column: 5, scope: !2463)
!2555 = !DILocation(line: 456, column: 19, scope: !2463)
!2556 = !DILocation(line: 456, column: 43, scope: !2463)
!2557 = !DILocation(line: 456, column: 49, scope: !2463)
!2558 = !DILocation(line: 456, column: 27, scope: !2463)
!2559 = !DILocation(line: 457, column: 5, scope: !2463)
!2560 = !DILocation(line: 457, column: 19, scope: !2463)
!2561 = !DILocation(line: 457, column: 43, scope: !2463)
!2562 = !DILocation(line: 457, column: 49, scope: !2463)
!2563 = !DILocation(line: 457, column: 27, scope: !2463)
!2564 = !DILocation(line: 459, column: 5, scope: !2463)
!2565 = !DILocation(line: 459, column: 19, scope: !2463)
!2566 = !DILocation(line: 459, column: 41, scope: !2463)
!2567 = !DILocation(line: 459, column: 48, scope: !2463)
!2568 = !DILocation(line: 459, column: 27, scope: !2463)
!2569 = !DILocation(line: 460, column: 5, scope: !2463)
!2570 = !DILocation(line: 460, column: 19, scope: !2463)
!2571 = !DILocation(line: 460, column: 41, scope: !2463)
!2572 = !DILocation(line: 460, column: 48, scope: !2463)
!2573 = !DILocation(line: 460, column: 27, scope: !2463)
!2574 = !DILocation(line: 462, column: 5, scope: !2463)
!2575 = !DILocation(line: 462, column: 19, scope: !2463)
!2576 = !DILocation(line: 462, column: 41, scope: !2463)
!2577 = !DILocation(line: 462, column: 48, scope: !2463)
!2578 = !DILocation(line: 462, column: 27, scope: !2463)
!2579 = !DILocation(line: 463, column: 5, scope: !2463)
!2580 = !DILocation(line: 463, column: 19, scope: !2463)
!2581 = !DILocation(line: 463, column: 41, scope: !2463)
!2582 = !DILocation(line: 463, column: 48, scope: !2463)
!2583 = !DILocation(line: 463, column: 27, scope: !2463)
!2584 = !DILocation(line: 465, column: 5, scope: !2463)
!2585 = !DILocation(line: 465, column: 19, scope: !2463)
!2586 = !DILocation(line: 465, column: 41, scope: !2463)
!2587 = !DILocation(line: 465, column: 48, scope: !2463)
!2588 = !DILocation(line: 465, column: 27, scope: !2463)
!2589 = !DILocation(line: 466, column: 5, scope: !2463)
!2590 = !DILocation(line: 466, column: 19, scope: !2463)
!2591 = !DILocation(line: 466, column: 41, scope: !2463)
!2592 = !DILocation(line: 466, column: 48, scope: !2463)
!2593 = !DILocation(line: 466, column: 27, scope: !2463)
!2594 = !DILocation(line: 468, column: 24, scope: !2463)
!2595 = !DILocation(line: 468, column: 28, scope: !2463)
!2596 = !DILocation(line: 468, column: 5, scope: !2463)
!2597 = !DILocation(line: 469, column: 24, scope: !2463)
!2598 = !DILocation(line: 469, column: 28, scope: !2463)
!2599 = !DILocation(line: 469, column: 5, scope: !2463)
!2600 = !DILocation(line: 470, column: 24, scope: !2463)
!2601 = !DILocation(line: 470, column: 28, scope: !2463)
!2602 = !DILocation(line: 470, column: 5, scope: !2463)
!2603 = !DILocation(line: 471, column: 3, scope: !2443)
!2604 = !DILocation(line: 472, column: 1, scope: !2443)
!2605 = distinct !DISubprogram(name: "NeedsFilter_SSE2", scope: !1, file: !1, line: 336, type: !2606, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2267, !2267, !2267, !2267, !29, !2268}
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2609 = !DILocalVariable(name: "p1", arg: 1, scope: !2605, file: !1, line: 336, type: !2267)
!2610 = !DILocalVariable(name: "p0", arg: 2, scope: !2605, file: !1, line: 337, type: !2267)
!2611 = !DILocalVariable(name: "q0", arg: 3, scope: !2605, file: !1, line: 338, type: !2267)
!2612 = !DILocalVariable(name: "q1", arg: 4, scope: !2605, file: !1, line: 339, type: !2267)
!2613 = !DILocalVariable(name: "thresh", arg: 5, scope: !2605, file: !1, line: 340, type: !29)
!2614 = !DILocalVariable(name: "mask", arg: 6, scope: !2605, file: !1, line: 340, type: !2268)
!2615 = !DILocalVariable(name: "m_thresh", scope: !2605, file: !1, line: 341, type: !4)
!2616 = !DILocalVariable(name: "t1", scope: !2605, file: !1, line: 342, type: !4)
!2617 = !DILocalVariable(name: "kFE", scope: !2605, file: !1, line: 343, type: !4)
!2618 = !DILocalVariable(name: "t2", scope: !2605, file: !1, line: 344, type: !4)
!2619 = !DILocalVariable(name: "t3", scope: !2605, file: !1, line: 345, type: !4)
!2620 = !DILocalVariable(name: "t4", scope: !2605, file: !1, line: 347, type: !4)
!2621 = !DILocalVariable(name: "t5", scope: !2605, file: !1, line: 348, type: !4)
!2622 = !DILocalVariable(name: "t6", scope: !2605, file: !1, line: 349, type: !4)
!2623 = !DILocalVariable(name: "t7", scope: !2605, file: !1, line: 351, type: !4)
!2624 = !DILocation(line: 336, column: 63, scope: !2605)
!2625 = !DILocation(line: 337, column: 63, scope: !2605)
!2626 = !DILocation(line: 338, column: 63, scope: !2605)
!2627 = !DILocation(line: 339, column: 63, scope: !2605)
!2628 = !DILocation(line: 340, column: 46, scope: !2605)
!2629 = !DILocation(line: 340, column: 69, scope: !2605)
!2630 = !DILocation(line: 341, column: 3, scope: !2605)
!2631 = !DILocation(line: 341, column: 17, scope: !2605)
!2632 = !DILocation(line: 341, column: 48, scope: !2605)
!2633 = !DILocation(line: 341, column: 42, scope: !2605)
!2634 = !DILocation(line: 341, column: 28, scope: !2605)
!2635 = !DILocation(line: 342, column: 3, scope: !2605)
!2636 = !DILocation(line: 342, column: 17, scope: !2605)
!2637 = !DILocation(line: 342, column: 22, scope: !2605)
!2638 = !DILocation(line: 343, column: 3, scope: !2605)
!2639 = !DILocation(line: 343, column: 17, scope: !2605)
!2640 = !DILocation(line: 343, column: 23, scope: !2605)
!2641 = !DILocation(line: 344, column: 3, scope: !2605)
!2642 = !DILocation(line: 344, column: 17, scope: !2605)
!2643 = !DILocation(line: 344, column: 36, scope: !2605)
!2644 = !DILocation(line: 344, column: 40, scope: !2605)
!2645 = !DILocation(line: 344, column: 22, scope: !2605)
!2646 = !DILocation(line: 345, column: 3, scope: !2605)
!2647 = !DILocation(line: 345, column: 17, scope: !2605)
!2648 = !DILocation(line: 345, column: 37, scope: !2605)
!2649 = !DILocation(line: 345, column: 22, scope: !2605)
!2650 = !DILocation(line: 347, column: 3, scope: !2605)
!2651 = !DILocation(line: 347, column: 17, scope: !2605)
!2652 = !DILocation(line: 347, column: 22, scope: !2605)
!2653 = !DILocation(line: 348, column: 3, scope: !2605)
!2654 = !DILocation(line: 348, column: 17, scope: !2605)
!2655 = !DILocation(line: 348, column: 36, scope: !2605)
!2656 = !DILocation(line: 348, column: 40, scope: !2605)
!2657 = !DILocation(line: 348, column: 22, scope: !2605)
!2658 = !DILocation(line: 349, column: 3, scope: !2605)
!2659 = !DILocation(line: 349, column: 17, scope: !2605)
!2660 = !DILocation(line: 349, column: 36, scope: !2605)
!2661 = !DILocation(line: 349, column: 40, scope: !2605)
!2662 = !DILocation(line: 349, column: 22, scope: !2605)
!2663 = !DILocation(line: 351, column: 3, scope: !2605)
!2664 = !DILocation(line: 351, column: 17, scope: !2605)
!2665 = !DILocation(line: 351, column: 36, scope: !2605)
!2666 = !DILocation(line: 351, column: 40, scope: !2605)
!2667 = !DILocation(line: 351, column: 22, scope: !2605)
!2668 = !DILocation(line: 352, column: 26, scope: !2605)
!2669 = !DILocation(line: 352, column: 30, scope: !2605)
!2670 = !DILocation(line: 352, column: 11, scope: !2605)
!2671 = !DILocation(line: 352, column: 4, scope: !2605)
!2672 = !DILocation(line: 352, column: 9, scope: !2605)
!2673 = !DILocation(line: 353, column: 1, scope: !2605)
!2674 = distinct !DISubprogram(name: "GetNotHEV_SSE2", scope: !1, file: !1, line: 273, type: !2606, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2675)
!2675 = !{!2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687}
!2676 = !DILocalVariable(name: "p1", arg: 1, scope: !2674, file: !1, line: 273, type: !2267)
!2677 = !DILocalVariable(name: "p0", arg: 2, scope: !2674, file: !1, line: 274, type: !2267)
!2678 = !DILocalVariable(name: "q0", arg: 3, scope: !2674, file: !1, line: 275, type: !2267)
!2679 = !DILocalVariable(name: "q1", arg: 4, scope: !2674, file: !1, line: 276, type: !2267)
!2680 = !DILocalVariable(name: "hev_thresh", arg: 5, scope: !2674, file: !1, line: 277, type: !29)
!2681 = !DILocalVariable(name: "not_hev", arg: 6, scope: !2674, file: !1, line: 277, type: !2268)
!2682 = !DILocalVariable(name: "zero", scope: !2674, file: !1, line: 278, type: !4)
!2683 = !DILocalVariable(name: "t_1", scope: !2674, file: !1, line: 279, type: !4)
!2684 = !DILocalVariable(name: "t_2", scope: !2674, file: !1, line: 280, type: !4)
!2685 = !DILocalVariable(name: "h", scope: !2674, file: !1, line: 282, type: !4)
!2686 = !DILocalVariable(name: "t_max", scope: !2674, file: !1, line: 283, type: !4)
!2687 = !DILocalVariable(name: "t_max_h", scope: !2674, file: !1, line: 285, type: !4)
!2688 = !DILocation(line: 273, column: 61, scope: !2674)
!2689 = !DILocation(line: 274, column: 61, scope: !2674)
!2690 = !DILocation(line: 275, column: 61, scope: !2674)
!2691 = !DILocation(line: 276, column: 61, scope: !2674)
!2692 = !DILocation(line: 277, column: 44, scope: !2674)
!2693 = !DILocation(line: 277, column: 71, scope: !2674)
!2694 = !DILocation(line: 278, column: 3, scope: !2674)
!2695 = !DILocation(line: 278, column: 17, scope: !2674)
!2696 = !DILocation(line: 278, column: 24, scope: !2674)
!2697 = !DILocation(line: 279, column: 3, scope: !2674)
!2698 = !DILocation(line: 279, column: 17, scope: !2674)
!2699 = !DILocation(line: 279, column: 23, scope: !2674)
!2700 = !DILocation(line: 280, column: 3, scope: !2674)
!2701 = !DILocation(line: 280, column: 17, scope: !2674)
!2702 = !DILocation(line: 280, column: 23, scope: !2674)
!2703 = !DILocation(line: 282, column: 3, scope: !2674)
!2704 = !DILocation(line: 282, column: 17, scope: !2674)
!2705 = !DILocation(line: 282, column: 35, scope: !2674)
!2706 = !DILocation(line: 282, column: 21, scope: !2674)
!2707 = !DILocation(line: 283, column: 3, scope: !2674)
!2708 = !DILocation(line: 283, column: 17, scope: !2674)
!2709 = !DILocation(line: 283, column: 38, scope: !2674)
!2710 = !DILocation(line: 283, column: 43, scope: !2674)
!2711 = !DILocation(line: 283, column: 25, scope: !2674)
!2712 = !DILocation(line: 285, column: 3, scope: !2674)
!2713 = !DILocation(line: 285, column: 17, scope: !2674)
!2714 = !DILocation(line: 285, column: 41, scope: !2674)
!2715 = !DILocation(line: 285, column: 48, scope: !2674)
!2716 = !DILocation(line: 285, column: 27, scope: !2674)
!2717 = !DILocation(line: 286, column: 29, scope: !2674)
!2718 = !DILocation(line: 286, column: 38, scope: !2674)
!2719 = !DILocation(line: 286, column: 14, scope: !2674)
!2720 = !DILocation(line: 286, column: 4, scope: !2674)
!2721 = !DILocation(line: 286, column: 12, scope: !2674)
!2722 = !DILocation(line: 287, column: 1, scope: !2674)
!2723 = distinct !DISubprogram(name: "GetBaseDelta_SSE2", scope: !1, file: !1, line: 290, type: !2724, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2267, !2267, !2267, !2267, !2268}
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2727 = !DILocalVariable(name: "p1", arg: 1, scope: !2723, file: !1, line: 290, type: !2267)
!2728 = !DILocalVariable(name: "p0", arg: 2, scope: !2723, file: !1, line: 291, type: !2267)
!2729 = !DILocalVariable(name: "q0", arg: 3, scope: !2723, file: !1, line: 292, type: !2267)
!2730 = !DILocalVariable(name: "q1", arg: 4, scope: !2723, file: !1, line: 293, type: !2267)
!2731 = !DILocalVariable(name: "delta", arg: 5, scope: !2723, file: !1, line: 294, type: !2268)
!2732 = !DILocalVariable(name: "p1_q1", scope: !2723, file: !1, line: 296, type: !4)
!2733 = !DILocalVariable(name: "q0_p0", scope: !2723, file: !1, line: 297, type: !4)
!2734 = !DILocalVariable(name: "s1", scope: !2723, file: !1, line: 298, type: !4)
!2735 = !DILocalVariable(name: "s2", scope: !2723, file: !1, line: 299, type: !4)
!2736 = !DILocalVariable(name: "s3", scope: !2723, file: !1, line: 300, type: !4)
!2737 = !DILocation(line: 290, column: 64, scope: !2723)
!2738 = !DILocation(line: 291, column: 64, scope: !2723)
!2739 = !DILocation(line: 292, column: 64, scope: !2723)
!2740 = !DILocation(line: 293, column: 64, scope: !2723)
!2741 = !DILocation(line: 294, column: 58, scope: !2723)
!2742 = !DILocation(line: 296, column: 3, scope: !2723)
!2743 = !DILocation(line: 296, column: 17, scope: !2723)
!2744 = !DILocation(line: 296, column: 40, scope: !2723)
!2745 = !DILocation(line: 296, column: 39, scope: !2723)
!2746 = !DILocation(line: 296, column: 45, scope: !2723)
!2747 = !DILocation(line: 296, column: 44, scope: !2723)
!2748 = !DILocation(line: 296, column: 25, scope: !2723)
!2749 = !DILocation(line: 297, column: 3, scope: !2723)
!2750 = !DILocation(line: 297, column: 17, scope: !2723)
!2751 = !DILocation(line: 297, column: 40, scope: !2723)
!2752 = !DILocation(line: 297, column: 39, scope: !2723)
!2753 = !DILocation(line: 297, column: 45, scope: !2723)
!2754 = !DILocation(line: 297, column: 44, scope: !2723)
!2755 = !DILocation(line: 297, column: 25, scope: !2723)
!2756 = !DILocation(line: 298, column: 3, scope: !2723)
!2757 = !DILocation(line: 298, column: 17, scope: !2723)
!2758 = !DILocation(line: 298, column: 36, scope: !2723)
!2759 = !DILocation(line: 298, column: 43, scope: !2723)
!2760 = !DILocation(line: 298, column: 22, scope: !2723)
!2761 = !DILocation(line: 299, column: 3, scope: !2723)
!2762 = !DILocation(line: 299, column: 17, scope: !2723)
!2763 = !DILocation(line: 299, column: 36, scope: !2723)
!2764 = !DILocation(line: 299, column: 43, scope: !2723)
!2765 = !DILocation(line: 299, column: 22, scope: !2723)
!2766 = !DILocation(line: 300, column: 3, scope: !2723)
!2767 = !DILocation(line: 300, column: 17, scope: !2723)
!2768 = !DILocation(line: 300, column: 36, scope: !2723)
!2769 = !DILocation(line: 300, column: 43, scope: !2723)
!2770 = !DILocation(line: 300, column: 22, scope: !2723)
!2771 = !DILocation(line: 301, column: 12, scope: !2723)
!2772 = !DILocation(line: 301, column: 4, scope: !2723)
!2773 = !DILocation(line: 301, column: 10, scope: !2723)
!2774 = !DILocation(line: 302, column: 1, scope: !2723)
!2775 = distinct !DISubprogram(name: "DoSimpleFilter_SSE2", scope: !1, file: !1, line: 305, type: !2776, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2268, !2268, !2267}
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2779 = !DILocalVariable(name: "p0", arg: 1, scope: !2775, file: !1, line: 305, type: !2268)
!2780 = !DILocalVariable(name: "q0", arg: 2, scope: !2775, file: !1, line: 306, type: !2268)
!2781 = !DILocalVariable(name: "fl", arg: 3, scope: !2775, file: !1, line: 307, type: !2267)
!2782 = !DILocalVariable(name: "k3", scope: !2775, file: !1, line: 308, type: !4)
!2783 = !DILocalVariable(name: "k4", scope: !2775, file: !1, line: 309, type: !4)
!2784 = !DILocalVariable(name: "v3", scope: !2775, file: !1, line: 310, type: !5)
!2785 = !DILocalVariable(name: "v4", scope: !2775, file: !1, line: 311, type: !5)
!2786 = !DILocation(line: 305, column: 60, scope: !2775)
!2787 = !DILocation(line: 306, column: 60, scope: !2775)
!2788 = !DILocation(line: 307, column: 66, scope: !2775)
!2789 = !DILocation(line: 308, column: 3, scope: !2775)
!2790 = !DILocation(line: 308, column: 17, scope: !2775)
!2791 = !DILocation(line: 308, column: 22, scope: !2775)
!2792 = !DILocation(line: 309, column: 3, scope: !2775)
!2793 = !DILocation(line: 309, column: 17, scope: !2775)
!2794 = !DILocation(line: 309, column: 22, scope: !2775)
!2795 = !DILocation(line: 310, column: 3, scope: !2775)
!2796 = !DILocation(line: 310, column: 11, scope: !2775)
!2797 = !DILocation(line: 310, column: 31, scope: !2775)
!2798 = !DILocation(line: 310, column: 30, scope: !2775)
!2799 = !DILocation(line: 310, column: 35, scope: !2775)
!2800 = !DILocation(line: 310, column: 16, scope: !2775)
!2801 = !DILocation(line: 311, column: 3, scope: !2775)
!2802 = !DILocation(line: 311, column: 11, scope: !2775)
!2803 = !DILocation(line: 311, column: 31, scope: !2775)
!2804 = !DILocation(line: 311, column: 30, scope: !2775)
!2805 = !DILocation(line: 311, column: 35, scope: !2775)
!2806 = !DILocation(line: 311, column: 16, scope: !2775)
!2807 = !DILocation(line: 313, column: 3, scope: !2775)
!2808 = !DILocation(line: 314, column: 3, scope: !2775)
!2809 = !DILocation(line: 315, column: 24, scope: !2775)
!2810 = !DILocation(line: 315, column: 23, scope: !2775)
!2811 = !DILocation(line: 315, column: 28, scope: !2775)
!2812 = !DILocation(line: 315, column: 9, scope: !2775)
!2813 = !DILocation(line: 315, column: 4, scope: !2775)
!2814 = !DILocation(line: 315, column: 7, scope: !2775)
!2815 = !DILocation(line: 316, column: 24, scope: !2775)
!2816 = !DILocation(line: 316, column: 23, scope: !2775)
!2817 = !DILocation(line: 316, column: 28, scope: !2775)
!2818 = !DILocation(line: 316, column: 9, scope: !2775)
!2819 = !DILocation(line: 316, column: 4, scope: !2775)
!2820 = !DILocation(line: 316, column: 7, scope: !2775)
!2821 = !DILocation(line: 317, column: 1, scope: !2775)
!2822 = distinct !DISubprogram(name: "Update2Pixels_SSE2", scope: !1, file: !1, line: 323, type: !2823, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2268, !2268, !2267, !2267}
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833}
!2826 = !DILocalVariable(name: "pi", arg: 1, scope: !2822, file: !1, line: 323, type: !2268)
!2827 = !DILocalVariable(name: "qi", arg: 2, scope: !2822, file: !1, line: 323, type: !2268)
!2828 = !DILocalVariable(name: "a0_lo", arg: 3, scope: !2822, file: !1, line: 324, type: !2267)
!2829 = !DILocalVariable(name: "a0_hi", arg: 4, scope: !2822, file: !1, line: 325, type: !2267)
!2830 = !DILocalVariable(name: "a1_lo", scope: !2822, file: !1, line: 326, type: !4)
!2831 = !DILocalVariable(name: "a1_hi", scope: !2822, file: !1, line: 327, type: !4)
!2832 = !DILocalVariable(name: "delta", scope: !2822, file: !1, line: 328, type: !4)
!2833 = !DILocalVariable(name: "sign_bit", scope: !2822, file: !1, line: 329, type: !4)
!2834 = !DILocation(line: 323, column: 59, scope: !2822)
!2835 = !DILocation(line: 323, column: 78, scope: !2822)
!2836 = !DILocation(line: 324, column: 65, scope: !2822)
!2837 = !DILocation(line: 325, column: 65, scope: !2822)
!2838 = !DILocation(line: 326, column: 3, scope: !2822)
!2839 = !DILocation(line: 326, column: 17, scope: !2822)
!2840 = !DILocation(line: 326, column: 41, scope: !2822)
!2841 = !DILocation(line: 326, column: 40, scope: !2822)
!2842 = !DILocation(line: 326, column: 25, scope: !2822)
!2843 = !DILocation(line: 327, column: 3, scope: !2822)
!2844 = !DILocation(line: 327, column: 17, scope: !2822)
!2845 = !DILocation(line: 327, column: 41, scope: !2822)
!2846 = !DILocation(line: 327, column: 40, scope: !2822)
!2847 = !DILocation(line: 327, column: 25, scope: !2822)
!2848 = !DILocation(line: 328, column: 3, scope: !2822)
!2849 = !DILocation(line: 328, column: 17, scope: !2822)
!2850 = !DILocation(line: 328, column: 41, scope: !2822)
!2851 = !DILocation(line: 328, column: 48, scope: !2822)
!2852 = !DILocation(line: 328, column: 25, scope: !2822)
!2853 = !DILocation(line: 329, column: 3, scope: !2822)
!2854 = !DILocation(line: 329, column: 17, scope: !2822)
!2855 = !DILocation(line: 329, column: 28, scope: !2822)
!2856 = !DILocation(line: 330, column: 24, scope: !2822)
!2857 = !DILocation(line: 330, column: 23, scope: !2822)
!2858 = !DILocation(line: 330, column: 28, scope: !2822)
!2859 = !DILocation(line: 330, column: 9, scope: !2822)
!2860 = !DILocation(line: 330, column: 4, scope: !2822)
!2861 = !DILocation(line: 330, column: 7, scope: !2822)
!2862 = !DILocation(line: 331, column: 24, scope: !2822)
!2863 = !DILocation(line: 331, column: 23, scope: !2822)
!2864 = !DILocation(line: 331, column: 28, scope: !2822)
!2865 = !DILocation(line: 331, column: 9, scope: !2822)
!2866 = !DILocation(line: 331, column: 4, scope: !2822)
!2867 = !DILocation(line: 331, column: 7, scope: !2822)
!2868 = !DILocation(line: 332, column: 3, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2822, file: !1, line: 332, column: 3)
!2870 = !DILocation(line: 333, column: 1, scope: !2822)
!2871 = distinct !DISubprogram(name: "SignedShift8b_SSE2", scope: !1, file: !1, line: 253, type: !2872, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2268}
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880}
!2875 = !DILocalVariable(name: "x", arg: 1, scope: !2871, file: !1, line: 253, type: !2268)
!2876 = !DILocalVariable(name: "zero", scope: !2871, file: !1, line: 254, type: !4)
!2877 = !DILocalVariable(name: "lo_0", scope: !2871, file: !1, line: 255, type: !4)
!2878 = !DILocalVariable(name: "hi_0", scope: !2871, file: !1, line: 256, type: !4)
!2879 = !DILocalVariable(name: "lo_1", scope: !2871, file: !1, line: 257, type: !4)
!2880 = !DILocalVariable(name: "hi_1", scope: !2871, file: !1, line: 258, type: !4)
!2881 = !DILocation(line: 253, column: 59, scope: !2871)
!2882 = !DILocation(line: 254, column: 3, scope: !2871)
!2883 = !DILocation(line: 254, column: 17, scope: !2871)
!2884 = !DILocation(line: 254, column: 24, scope: !2871)
!2885 = !DILocation(line: 255, column: 3, scope: !2871)
!2886 = !DILocation(line: 255, column: 17, scope: !2871)
!2887 = !DILocation(line: 255, column: 42, scope: !2871)
!2888 = !DILocation(line: 255, column: 49, scope: !2871)
!2889 = !DILocation(line: 255, column: 48, scope: !2871)
!2890 = !DILocation(line: 255, column: 24, scope: !2871)
!2891 = !DILocation(line: 256, column: 3, scope: !2871)
!2892 = !DILocation(line: 256, column: 17, scope: !2871)
!2893 = !DILocation(line: 256, column: 42, scope: !2871)
!2894 = !DILocation(line: 256, column: 49, scope: !2871)
!2895 = !DILocation(line: 256, column: 48, scope: !2871)
!2896 = !DILocation(line: 256, column: 24, scope: !2871)
!2897 = !DILocation(line: 257, column: 3, scope: !2871)
!2898 = !DILocation(line: 257, column: 17, scope: !2871)
!2899 = !DILocation(line: 257, column: 39, scope: !2871)
!2900 = !DILocation(line: 257, column: 24, scope: !2871)
!2901 = !DILocation(line: 258, column: 3, scope: !2871)
!2902 = !DILocation(line: 258, column: 17, scope: !2871)
!2903 = !DILocation(line: 258, column: 39, scope: !2871)
!2904 = !DILocation(line: 258, column: 24, scope: !2871)
!2905 = !DILocation(line: 259, column: 24, scope: !2871)
!2906 = !DILocation(line: 259, column: 30, scope: !2871)
!2907 = !DILocation(line: 259, column: 8, scope: !2871)
!2908 = !DILocation(line: 259, column: 4, scope: !2871)
!2909 = !DILocation(line: 259, column: 6, scope: !2871)
!2910 = !DILocation(line: 260, column: 1, scope: !2871)
!2911 = distinct !DISubprogram(name: "Load16x4_SSE2", scope: !1, file: !1, line: 502, type: !2912, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !2367, !2367, !29, !2268, !2268, !2268, !2268}
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2924}
!2915 = !DILocalVariable(name: "r0", arg: 1, scope: !2911, file: !1, line: 502, type: !2367)
!2916 = !DILocalVariable(name: "r8", arg: 2, scope: !2911, file: !1, line: 503, type: !2367)
!2917 = !DILocalVariable(name: "stride", arg: 3, scope: !2911, file: !1, line: 504, type: !29)
!2918 = !DILocalVariable(name: "p1", arg: 4, scope: !2911, file: !1, line: 505, type: !2268)
!2919 = !DILocalVariable(name: "p0", arg: 5, scope: !2911, file: !1, line: 505, type: !2268)
!2920 = !DILocalVariable(name: "q0", arg: 6, scope: !2911, file: !1, line: 506, type: !2268)
!2921 = !DILocalVariable(name: "q1", arg: 7, scope: !2911, file: !1, line: 506, type: !2268)
!2922 = !DILocalVariable(name: "t1", scope: !2923, file: !1, line: 530, type: !4)
!2923 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 525, column: 3)
!2924 = !DILocalVariable(name: "t2", scope: !2923, file: !1, line: 531, type: !4)
!2925 = !DILocation(line: 502, column: 60, scope: !2911)
!2926 = !DILocation(line: 503, column: 60, scope: !2911)
!2927 = !DILocation(line: 504, column: 43, scope: !2911)
!2928 = !DILocation(line: 505, column: 54, scope: !2911)
!2929 = !DILocation(line: 505, column: 73, scope: !2911)
!2930 = !DILocation(line: 506, column: 54, scope: !2911)
!2931 = !DILocation(line: 506, column: 73, scope: !2911)
!2932 = !DILocation(line: 522, column: 16, scope: !2911)
!2933 = !DILocation(line: 522, column: 20, scope: !2911)
!2934 = !DILocation(line: 522, column: 28, scope: !2911)
!2935 = !DILocation(line: 522, column: 32, scope: !2911)
!2936 = !DILocation(line: 522, column: 3, scope: !2911)
!2937 = !DILocation(line: 523, column: 16, scope: !2911)
!2938 = !DILocation(line: 523, column: 20, scope: !2911)
!2939 = !DILocation(line: 523, column: 28, scope: !2911)
!2940 = !DILocation(line: 523, column: 32, scope: !2911)
!2941 = !DILocation(line: 523, column: 3, scope: !2911)
!2942 = !DILocation(line: 530, column: 5, scope: !2923)
!2943 = !DILocation(line: 530, column: 19, scope: !2923)
!2944 = !DILocation(line: 530, column: 25, scope: !2923)
!2945 = !DILocation(line: 530, column: 24, scope: !2923)
!2946 = !DILocation(line: 531, column: 5, scope: !2923)
!2947 = !DILocation(line: 531, column: 19, scope: !2923)
!2948 = !DILocation(line: 531, column: 25, scope: !2923)
!2949 = !DILocation(line: 531, column: 24, scope: !2923)
!2950 = !DILocation(line: 532, column: 30, scope: !2923)
!2951 = !DILocation(line: 532, column: 35, scope: !2923)
!2952 = !DILocation(line: 532, column: 34, scope: !2923)
!2953 = !DILocation(line: 532, column: 11, scope: !2923)
!2954 = !DILocation(line: 532, column: 6, scope: !2923)
!2955 = !DILocation(line: 532, column: 9, scope: !2923)
!2956 = !DILocation(line: 533, column: 30, scope: !2923)
!2957 = !DILocation(line: 533, column: 35, scope: !2923)
!2958 = !DILocation(line: 533, column: 34, scope: !2923)
!2959 = !DILocation(line: 533, column: 11, scope: !2923)
!2960 = !DILocation(line: 533, column: 6, scope: !2923)
!2961 = !DILocation(line: 533, column: 9, scope: !2923)
!2962 = !DILocation(line: 534, column: 30, scope: !2923)
!2963 = !DILocation(line: 534, column: 35, scope: !2923)
!2964 = !DILocation(line: 534, column: 34, scope: !2923)
!2965 = !DILocation(line: 534, column: 11, scope: !2923)
!2966 = !DILocation(line: 534, column: 6, scope: !2923)
!2967 = !DILocation(line: 534, column: 9, scope: !2923)
!2968 = !DILocation(line: 535, column: 30, scope: !2923)
!2969 = !DILocation(line: 535, column: 35, scope: !2923)
!2970 = !DILocation(line: 535, column: 34, scope: !2923)
!2971 = !DILocation(line: 535, column: 11, scope: !2923)
!2972 = !DILocation(line: 535, column: 6, scope: !2923)
!2973 = !DILocation(line: 535, column: 9, scope: !2923)
!2974 = !DILocation(line: 536, column: 3, scope: !2911)
!2975 = !DILocation(line: 537, column: 1, scope: !2911)
!2976 = distinct !DISubprogram(name: "Store16x4_SSE2", scope: !1, file: !1, line: 549, type: !2977, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2267, !2267, !2267, !2267, !115, !115, !29}
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991}
!2980 = !DILocalVariable(name: "p1", arg: 1, scope: !2976, file: !1, line: 549, type: !2267)
!2981 = !DILocalVariable(name: "p0", arg: 2, scope: !2976, file: !1, line: 550, type: !2267)
!2982 = !DILocalVariable(name: "q0", arg: 3, scope: !2976, file: !1, line: 551, type: !2267)
!2983 = !DILocalVariable(name: "q1", arg: 4, scope: !2976, file: !1, line: 552, type: !2267)
!2984 = !DILocalVariable(name: "r0", arg: 5, scope: !2976, file: !1, line: 553, type: !115)
!2985 = !DILocalVariable(name: "r8", arg: 6, scope: !2976, file: !1, line: 553, type: !115)
!2986 = !DILocalVariable(name: "stride", arg: 7, scope: !2976, file: !1, line: 554, type: !29)
!2987 = !DILocalVariable(name: "t1", scope: !2976, file: !1, line: 555, type: !5)
!2988 = !DILocalVariable(name: "p1_s", scope: !2976, file: !1, line: 555, type: !5)
!2989 = !DILocalVariable(name: "p0_s", scope: !2976, file: !1, line: 555, type: !5)
!2990 = !DILocalVariable(name: "q0_s", scope: !2976, file: !1, line: 555, type: !5)
!2991 = !DILocalVariable(name: "q1_s", scope: !2976, file: !1, line: 555, type: !5)
!2992 = !DILocation(line: 549, column: 61, scope: !2976)
!2993 = !DILocation(line: 550, column: 61, scope: !2976)
!2994 = !DILocation(line: 551, column: 61, scope: !2976)
!2995 = !DILocation(line: 552, column: 61, scope: !2976)
!2996 = !DILocation(line: 553, column: 49, scope: !2976)
!2997 = !DILocation(line: 553, column: 62, scope: !2976)
!2998 = !DILocation(line: 554, column: 44, scope: !2976)
!2999 = !DILocation(line: 555, column: 3, scope: !2976)
!3000 = !DILocation(line: 555, column: 11, scope: !2976)
!3001 = !DILocation(line: 555, column: 15, scope: !2976)
!3002 = !DILocation(line: 555, column: 21, scope: !2976)
!3003 = !DILocation(line: 555, column: 27, scope: !2976)
!3004 = !DILocation(line: 555, column: 33, scope: !2976)
!3005 = !DILocation(line: 559, column: 9, scope: !2976)
!3006 = !DILocation(line: 559, column: 8, scope: !2976)
!3007 = !DILocation(line: 559, column: 6, scope: !2976)
!3008 = !DILocation(line: 560, column: 29, scope: !2976)
!3009 = !DILocation(line: 560, column: 28, scope: !2976)
!3010 = !DILocation(line: 560, column: 33, scope: !2976)
!3011 = !DILocation(line: 560, column: 10, scope: !2976)
!3012 = !DILocation(line: 560, column: 8, scope: !2976)
!3013 = !DILocation(line: 561, column: 29, scope: !2976)
!3014 = !DILocation(line: 561, column: 28, scope: !2976)
!3015 = !DILocation(line: 561, column: 33, scope: !2976)
!3016 = !DILocation(line: 561, column: 10, scope: !2976)
!3017 = !DILocation(line: 561, column: 8, scope: !2976)
!3018 = !DILocation(line: 565, column: 9, scope: !2976)
!3019 = !DILocation(line: 565, column: 8, scope: !2976)
!3020 = !DILocation(line: 565, column: 6, scope: !2976)
!3021 = !DILocation(line: 566, column: 28, scope: !2976)
!3022 = !DILocation(line: 566, column: 33, scope: !2976)
!3023 = !DILocation(line: 566, column: 32, scope: !2976)
!3024 = !DILocation(line: 566, column: 10, scope: !2976)
!3025 = !DILocation(line: 566, column: 8, scope: !2976)
!3026 = !DILocation(line: 567, column: 28, scope: !2976)
!3027 = !DILocation(line: 567, column: 33, scope: !2976)
!3028 = !DILocation(line: 567, column: 32, scope: !2976)
!3029 = !DILocation(line: 567, column: 10, scope: !2976)
!3030 = !DILocation(line: 567, column: 8, scope: !2976)
!3031 = !DILocation(line: 571, column: 8, scope: !2976)
!3032 = !DILocation(line: 571, column: 6, scope: !2976)
!3033 = !DILocation(line: 572, column: 29, scope: !2976)
!3034 = !DILocation(line: 572, column: 33, scope: !2976)
!3035 = !DILocation(line: 572, column: 10, scope: !2976)
!3036 = !DILocation(line: 572, column: 8, scope: !2976)
!3037 = !DILocation(line: 573, column: 29, scope: !2976)
!3038 = !DILocation(line: 573, column: 33, scope: !2976)
!3039 = !DILocation(line: 573, column: 10, scope: !2976)
!3040 = !DILocation(line: 573, column: 8, scope: !2976)
!3041 = !DILocation(line: 577, column: 8, scope: !2976)
!3042 = !DILocation(line: 577, column: 6, scope: !2976)
!3043 = !DILocation(line: 578, column: 29, scope: !2976)
!3044 = !DILocation(line: 578, column: 33, scope: !2976)
!3045 = !DILocation(line: 578, column: 10, scope: !2976)
!3046 = !DILocation(line: 578, column: 8, scope: !2976)
!3047 = !DILocation(line: 579, column: 29, scope: !2976)
!3048 = !DILocation(line: 579, column: 33, scope: !2976)
!3049 = !DILocation(line: 579, column: 10, scope: !2976)
!3050 = !DILocation(line: 579, column: 8, scope: !2976)
!3051 = !DILocation(line: 581, column: 24, scope: !2976)
!3052 = !DILocation(line: 581, column: 28, scope: !2976)
!3053 = !DILocation(line: 581, column: 3, scope: !2976)
!3054 = !DILocation(line: 582, column: 13, scope: !2976)
!3055 = !DILocation(line: 582, column: 11, scope: !2976)
!3056 = !DILocation(line: 582, column: 6, scope: !2976)
!3057 = !DILocation(line: 583, column: 24, scope: !2976)
!3058 = !DILocation(line: 583, column: 28, scope: !2976)
!3059 = !DILocation(line: 583, column: 3, scope: !2976)
!3060 = !DILocation(line: 585, column: 24, scope: !2976)
!3061 = !DILocation(line: 585, column: 28, scope: !2976)
!3062 = !DILocation(line: 585, column: 3, scope: !2976)
!3063 = !DILocation(line: 586, column: 13, scope: !2976)
!3064 = !DILocation(line: 586, column: 11, scope: !2976)
!3065 = !DILocation(line: 586, column: 6, scope: !2976)
!3066 = !DILocation(line: 587, column: 24, scope: !2976)
!3067 = !DILocation(line: 587, column: 28, scope: !2976)
!3068 = !DILocation(line: 587, column: 3, scope: !2976)
!3069 = !DILocation(line: 588, column: 1, scope: !2976)
!3070 = distinct !DISubprogram(name: "Load8x4_SSE2", scope: !1, file: !1, line: 475, type: !3071, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !2367, !29, !2268, !2268}
!3073 = !{!3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083}
!3074 = !DILocalVariable(name: "b", arg: 1, scope: !3070, file: !1, line: 475, type: !2367)
!3075 = !DILocalVariable(name: "stride", arg: 2, scope: !3070, file: !1, line: 475, type: !29)
!3076 = !DILocalVariable(name: "p", arg: 3, scope: !3070, file: !1, line: 476, type: !2268)
!3077 = !DILocalVariable(name: "q", arg: 4, scope: !3070, file: !1, line: 476, type: !2268)
!3078 = !DILocalVariable(name: "A0", scope: !3070, file: !1, line: 479, type: !4)
!3079 = !DILocalVariable(name: "A1", scope: !3070, file: !1, line: 482, type: !4)
!3080 = !DILocalVariable(name: "B0", scope: !3070, file: !1, line: 488, type: !4)
!3081 = !DILocalVariable(name: "B1", scope: !3070, file: !1, line: 489, type: !4)
!3082 = !DILocalVariable(name: "C0", scope: !3070, file: !1, line: 493, type: !4)
!3083 = !DILocalVariable(name: "C1", scope: !3070, file: !1, line: 494, type: !4)
!3084 = !DILocation(line: 475, column: 59, scope: !3070)
!3085 = !DILocation(line: 475, column: 66, scope: !3070)
!3086 = !DILocation(line: 476, column: 53, scope: !3070)
!3087 = !DILocation(line: 476, column: 71, scope: !3070)
!3088 = !DILocation(line: 479, column: 3, scope: !3070)
!3089 = !DILocation(line: 479, column: 17, scope: !3070)
!3090 = !DILocation(line: 480, column: 24, scope: !3070)
!3091 = !DILocation(line: 480, column: 30, scope: !3070)
!3092 = !DILocation(line: 480, column: 28, scope: !3070)
!3093 = !DILocation(line: 480, column: 7, scope: !3070)
!3094 = !DILocation(line: 480, column: 57, scope: !3070)
!3095 = !DILocation(line: 480, column: 63, scope: !3070)
!3096 = !DILocation(line: 480, column: 61, scope: !3070)
!3097 = !DILocation(line: 480, column: 40, scope: !3070)
!3098 = !DILocation(line: 481, column: 24, scope: !3070)
!3099 = !DILocation(line: 481, column: 30, scope: !3070)
!3100 = !DILocation(line: 481, column: 28, scope: !3070)
!3101 = !DILocation(line: 481, column: 7, scope: !3070)
!3102 = !DILocation(line: 481, column: 57, scope: !3070)
!3103 = !DILocation(line: 481, column: 63, scope: !3070)
!3104 = !DILocation(line: 481, column: 61, scope: !3070)
!3105 = !DILocation(line: 481, column: 40, scope: !3070)
!3106 = !DILocation(line: 479, column: 22, scope: !3070)
!3107 = !DILocation(line: 482, column: 3, scope: !3070)
!3108 = !DILocation(line: 482, column: 17, scope: !3070)
!3109 = !DILocation(line: 483, column: 24, scope: !3070)
!3110 = !DILocation(line: 483, column: 30, scope: !3070)
!3111 = !DILocation(line: 483, column: 28, scope: !3070)
!3112 = !DILocation(line: 483, column: 7, scope: !3070)
!3113 = !DILocation(line: 483, column: 57, scope: !3070)
!3114 = !DILocation(line: 483, column: 63, scope: !3070)
!3115 = !DILocation(line: 483, column: 61, scope: !3070)
!3116 = !DILocation(line: 483, column: 40, scope: !3070)
!3117 = !DILocation(line: 484, column: 24, scope: !3070)
!3118 = !DILocation(line: 484, column: 30, scope: !3070)
!3119 = !DILocation(line: 484, column: 28, scope: !3070)
!3120 = !DILocation(line: 484, column: 7, scope: !3070)
!3121 = !DILocation(line: 484, column: 57, scope: !3070)
!3122 = !DILocation(line: 484, column: 63, scope: !3070)
!3123 = !DILocation(line: 484, column: 61, scope: !3070)
!3124 = !DILocation(line: 484, column: 40, scope: !3070)
!3125 = !DILocation(line: 482, column: 22, scope: !3070)
!3126 = !DILocation(line: 488, column: 3, scope: !3070)
!3127 = !DILocation(line: 488, column: 17, scope: !3070)
!3128 = !DILocation(line: 488, column: 40, scope: !3070)
!3129 = !DILocation(line: 488, column: 44, scope: !3070)
!3130 = !DILocation(line: 488, column: 22, scope: !3070)
!3131 = !DILocation(line: 489, column: 3, scope: !3070)
!3132 = !DILocation(line: 489, column: 17, scope: !3070)
!3133 = !DILocation(line: 489, column: 40, scope: !3070)
!3134 = !DILocation(line: 489, column: 44, scope: !3070)
!3135 = !DILocation(line: 489, column: 22, scope: !3070)
!3136 = !DILocation(line: 493, column: 3, scope: !3070)
!3137 = !DILocation(line: 493, column: 17, scope: !3070)
!3138 = !DILocation(line: 493, column: 41, scope: !3070)
!3139 = !DILocation(line: 493, column: 45, scope: !3070)
!3140 = !DILocation(line: 493, column: 22, scope: !3070)
!3141 = !DILocation(line: 494, column: 3, scope: !3070)
!3142 = !DILocation(line: 494, column: 17, scope: !3070)
!3143 = !DILocation(line: 494, column: 41, scope: !3070)
!3144 = !DILocation(line: 494, column: 45, scope: !3070)
!3145 = !DILocation(line: 494, column: 22, scope: !3070)
!3146 = !DILocation(line: 498, column: 27, scope: !3070)
!3147 = !DILocation(line: 498, column: 31, scope: !3070)
!3148 = !DILocation(line: 498, column: 8, scope: !3070)
!3149 = !DILocation(line: 498, column: 4, scope: !3070)
!3150 = !DILocation(line: 498, column: 6, scope: !3070)
!3151 = !DILocation(line: 499, column: 27, scope: !3070)
!3152 = !DILocation(line: 499, column: 31, scope: !3070)
!3153 = !DILocation(line: 499, column: 8, scope: !3070)
!3154 = !DILocation(line: 499, column: 4, scope: !3070)
!3155 = !DILocation(line: 499, column: 6, scope: !3070)
!3156 = !DILocation(line: 500, column: 1, scope: !3070)
!3157 = distinct !DISubprogram(name: "Store4x4_SSE2", scope: !1, file: !1, line: 539, type: !3158, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !2268, !115, !29}
!3160 = !{!3161, !3162, !3163, !3164}
!3161 = !DILocalVariable(name: "x", arg: 1, scope: !3157, file: !1, line: 539, type: !2268)
!3162 = !DILocalVariable(name: "dst", arg: 2, scope: !3157, file: !1, line: 540, type: !115)
!3163 = !DILocalVariable(name: "stride", arg: 3, scope: !3157, file: !1, line: 540, type: !29)
!3164 = !DILocalVariable(name: "i", scope: !3157, file: !1, line: 541, type: !29)
!3165 = !DILocation(line: 539, column: 54, scope: !3157)
!3166 = !DILocation(line: 540, column: 48, scope: !3157)
!3167 = !DILocation(line: 540, column: 57, scope: !3157)
!3168 = !DILocation(line: 541, column: 3, scope: !3157)
!3169 = !DILocation(line: 541, column: 7, scope: !3157)
!3170 = !DILocation(line: 542, column: 10, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 542, column: 3)
!3172 = !DILocation(line: 542, column: 8, scope: !3171)
!3173 = !DILocation(line: 542, column: 15, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !1, line: 542, column: 3)
!3175 = !DILocation(line: 542, column: 17, scope: !3174)
!3176 = !DILocation(line: 542, column: 3, scope: !3171)
!3177 = !DILocation(line: 543, column: 21, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !1, line: 542, column: 42)
!3179 = !DILocation(line: 543, column: 45, scope: !3178)
!3180 = !DILocation(line: 543, column: 44, scope: !3178)
!3181 = !DILocation(line: 543, column: 26, scope: !3178)
!3182 = !DILocation(line: 543, column: 5, scope: !3178)
!3183 = !DILocation(line: 544, column: 10, scope: !3178)
!3184 = !DILocation(line: 544, column: 6, scope: !3178)
!3185 = !DILocation(line: 544, column: 8, scope: !3178)
!3186 = !DILocation(line: 545, column: 3, scope: !3178)
!3187 = !DILocation(line: 542, column: 22, scope: !3174)
!3188 = !DILocation(line: 542, column: 34, scope: !3174)
!3189 = !DILocation(line: 542, column: 31, scope: !3174)
!3190 = !DILocation(line: 542, column: 3, scope: !3174)
!3191 = distinct !{!3191, !3176, !3192, !1003}
!3192 = !DILocation(line: 545, column: 3, scope: !3171)
!3193 = !DILocation(line: 546, column: 1, scope: !3157)
!3194 = distinct !DISubprogram(name: "DoFilter4_SSE2", scope: !1, file: !1, line: 378, type: !3195, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !2268, !2268, !2268, !2268, !2267, !29}
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212}
!3198 = !DILocalVariable(name: "p1", arg: 1, scope: !3194, file: !1, line: 378, type: !2268)
!3199 = !DILocalVariable(name: "p0", arg: 2, scope: !3194, file: !1, line: 378, type: !2268)
!3200 = !DILocalVariable(name: "q0", arg: 3, scope: !3194, file: !1, line: 379, type: !2268)
!3201 = !DILocalVariable(name: "q1", arg: 4, scope: !3194, file: !1, line: 379, type: !2268)
!3202 = !DILocalVariable(name: "mask", arg: 5, scope: !3194, file: !1, line: 380, type: !2267)
!3203 = !DILocalVariable(name: "hev_thresh", arg: 6, scope: !3194, file: !1, line: 381, type: !29)
!3204 = !DILocalVariable(name: "zero", scope: !3194, file: !1, line: 382, type: !4)
!3205 = !DILocalVariable(name: "sign_bit", scope: !3194, file: !1, line: 383, type: !4)
!3206 = !DILocalVariable(name: "k64", scope: !3194, file: !1, line: 384, type: !4)
!3207 = !DILocalVariable(name: "k3", scope: !3194, file: !1, line: 385, type: !4)
!3208 = !DILocalVariable(name: "k4", scope: !3194, file: !1, line: 386, type: !4)
!3209 = !DILocalVariable(name: "not_hev", scope: !3194, file: !1, line: 387, type: !5)
!3210 = !DILocalVariable(name: "t1", scope: !3194, file: !1, line: 388, type: !5)
!3211 = !DILocalVariable(name: "t2", scope: !3194, file: !1, line: 388, type: !5)
!3212 = !DILocalVariable(name: "t3", scope: !3194, file: !1, line: 388, type: !5)
!3213 = !DILocation(line: 378, column: 55, scope: !3194)
!3214 = !DILocation(line: 378, column: 74, scope: !3194)
!3215 = !DILocation(line: 379, column: 55, scope: !3194)
!3216 = !DILocation(line: 379, column: 74, scope: !3194)
!3217 = !DILocation(line: 380, column: 61, scope: !3194)
!3218 = !DILocation(line: 381, column: 44, scope: !3194)
!3219 = !DILocation(line: 382, column: 3, scope: !3194)
!3220 = !DILocation(line: 382, column: 17, scope: !3194)
!3221 = !DILocation(line: 382, column: 24, scope: !3194)
!3222 = !DILocation(line: 383, column: 3, scope: !3194)
!3223 = !DILocation(line: 383, column: 17, scope: !3194)
!3224 = !DILocation(line: 383, column: 28, scope: !3194)
!3225 = !DILocation(line: 384, column: 3, scope: !3194)
!3226 = !DILocation(line: 384, column: 17, scope: !3194)
!3227 = !DILocation(line: 384, column: 23, scope: !3194)
!3228 = !DILocation(line: 385, column: 3, scope: !3194)
!3229 = !DILocation(line: 385, column: 17, scope: !3194)
!3230 = !DILocation(line: 385, column: 22, scope: !3194)
!3231 = !DILocation(line: 386, column: 3, scope: !3194)
!3232 = !DILocation(line: 386, column: 17, scope: !3194)
!3233 = !DILocation(line: 386, column: 22, scope: !3194)
!3234 = !DILocation(line: 387, column: 3, scope: !3194)
!3235 = !DILocation(line: 387, column: 11, scope: !3194)
!3236 = !DILocation(line: 388, column: 3, scope: !3194)
!3237 = !DILocation(line: 388, column: 11, scope: !3194)
!3238 = !DILocation(line: 388, column: 15, scope: !3194)
!3239 = !DILocation(line: 388, column: 19, scope: !3194)
!3240 = !DILocation(line: 391, column: 18, scope: !3194)
!3241 = !DILocation(line: 391, column: 22, scope: !3194)
!3242 = !DILocation(line: 391, column: 26, scope: !3194)
!3243 = !DILocation(line: 391, column: 30, scope: !3194)
!3244 = !DILocation(line: 391, column: 34, scope: !3194)
!3245 = !DILocation(line: 391, column: 3, scope: !3194)
!3246 = !DILocation(line: 394, column: 3, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 394, column: 3)
!3248 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 394, column: 3)
!3249 = !DILocation(line: 394, column: 3, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 394, column: 3)
!3251 = !DILocation(line: 396, column: 23, scope: !3194)
!3252 = !DILocation(line: 396, column: 22, scope: !3194)
!3253 = !DILocation(line: 396, column: 28, scope: !3194)
!3254 = !DILocation(line: 396, column: 27, scope: !3194)
!3255 = !DILocation(line: 396, column: 8, scope: !3194)
!3256 = !DILocation(line: 396, column: 6, scope: !3194)
!3257 = !DILocation(line: 397, column: 25, scope: !3194)
!3258 = !DILocation(line: 397, column: 34, scope: !3194)
!3259 = !DILocation(line: 397, column: 8, scope: !3194)
!3260 = !DILocation(line: 397, column: 6, scope: !3194)
!3261 = !DILocation(line: 398, column: 23, scope: !3194)
!3262 = !DILocation(line: 398, column: 22, scope: !3194)
!3263 = !DILocation(line: 398, column: 28, scope: !3194)
!3264 = !DILocation(line: 398, column: 27, scope: !3194)
!3265 = !DILocation(line: 398, column: 8, scope: !3194)
!3266 = !DILocation(line: 398, column: 6, scope: !3194)
!3267 = !DILocation(line: 399, column: 22, scope: !3194)
!3268 = !DILocation(line: 399, column: 26, scope: !3194)
!3269 = !DILocation(line: 399, column: 8, scope: !3194)
!3270 = !DILocation(line: 399, column: 6, scope: !3194)
!3271 = !DILocation(line: 400, column: 22, scope: !3194)
!3272 = !DILocation(line: 400, column: 26, scope: !3194)
!3273 = !DILocation(line: 400, column: 8, scope: !3194)
!3274 = !DILocation(line: 400, column: 6, scope: !3194)
!3275 = !DILocation(line: 401, column: 22, scope: !3194)
!3276 = !DILocation(line: 401, column: 26, scope: !3194)
!3277 = !DILocation(line: 401, column: 8, scope: !3194)
!3278 = !DILocation(line: 401, column: 6, scope: !3194)
!3279 = !DILocation(line: 402, column: 22, scope: !3194)
!3280 = !DILocation(line: 402, column: 27, scope: !3194)
!3281 = !DILocation(line: 402, column: 26, scope: !3194)
!3282 = !DILocation(line: 402, column: 8, scope: !3194)
!3283 = !DILocation(line: 402, column: 6, scope: !3194)
!3284 = !DILocation(line: 404, column: 22, scope: !3194)
!3285 = !DILocation(line: 404, column: 26, scope: !3194)
!3286 = !DILocation(line: 404, column: 8, scope: !3194)
!3287 = !DILocation(line: 404, column: 6, scope: !3194)
!3288 = !DILocation(line: 405, column: 22, scope: !3194)
!3289 = !DILocation(line: 405, column: 26, scope: !3194)
!3290 = !DILocation(line: 405, column: 8, scope: !3194)
!3291 = !DILocation(line: 405, column: 6, scope: !3194)
!3292 = !DILocation(line: 406, column: 3, scope: !3194)
!3293 = !DILocation(line: 407, column: 3, scope: !3194)
!3294 = !DILocation(line: 408, column: 24, scope: !3194)
!3295 = !DILocation(line: 408, column: 23, scope: !3194)
!3296 = !DILocation(line: 408, column: 28, scope: !3194)
!3297 = !DILocation(line: 408, column: 9, scope: !3194)
!3298 = !DILocation(line: 408, column: 4, scope: !3194)
!3299 = !DILocation(line: 408, column: 7, scope: !3194)
!3300 = !DILocation(line: 409, column: 24, scope: !3194)
!3301 = !DILocation(line: 409, column: 23, scope: !3194)
!3302 = !DILocation(line: 409, column: 28, scope: !3194)
!3303 = !DILocation(line: 409, column: 9, scope: !3194)
!3304 = !DILocation(line: 409, column: 4, scope: !3194)
!3305 = !DILocation(line: 409, column: 7, scope: !3194)
!3306 = !DILocation(line: 410, column: 3, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 410, column: 3)
!3308 = !DILocation(line: 413, column: 21, scope: !3194)
!3309 = !DILocation(line: 413, column: 25, scope: !3194)
!3310 = !DILocation(line: 413, column: 8, scope: !3194)
!3311 = !DILocation(line: 413, column: 6, scope: !3194)
!3312 = !DILocation(line: 414, column: 21, scope: !3194)
!3313 = !DILocation(line: 414, column: 25, scope: !3194)
!3314 = !DILocation(line: 414, column: 8, scope: !3194)
!3315 = !DILocation(line: 414, column: 6, scope: !3194)
!3316 = !DILocation(line: 415, column: 21, scope: !3194)
!3317 = !DILocation(line: 415, column: 25, scope: !3194)
!3318 = !DILocation(line: 415, column: 8, scope: !3194)
!3319 = !DILocation(line: 415, column: 6, scope: !3194)
!3320 = !DILocation(line: 417, column: 22, scope: !3194)
!3321 = !DILocation(line: 417, column: 31, scope: !3194)
!3322 = !DILocation(line: 417, column: 8, scope: !3194)
!3323 = !DILocation(line: 417, column: 6, scope: !3194)
!3324 = !DILocation(line: 418, column: 24, scope: !3194)
!3325 = !DILocation(line: 418, column: 23, scope: !3194)
!3326 = !DILocation(line: 418, column: 28, scope: !3194)
!3327 = !DILocation(line: 418, column: 9, scope: !3194)
!3328 = !DILocation(line: 418, column: 4, scope: !3194)
!3329 = !DILocation(line: 418, column: 7, scope: !3194)
!3330 = !DILocation(line: 419, column: 24, scope: !3194)
!3331 = !DILocation(line: 419, column: 23, scope: !3194)
!3332 = !DILocation(line: 419, column: 28, scope: !3194)
!3333 = !DILocation(line: 419, column: 9, scope: !3194)
!3334 = !DILocation(line: 419, column: 4, scope: !3194)
!3335 = !DILocation(line: 419, column: 7, scope: !3194)
!3336 = !DILocation(line: 420, column: 3, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 420, column: 3)
!3338 = !DILocation(line: 421, column: 1, scope: !3194)
!3339 = distinct !DISubprogram(name: "DoFilter2_SSE2", scope: !1, file: !1, line: 359, type: !3340, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !2268, !2268, !2268, !2268, !29}
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3343 = !DILocalVariable(name: "p1", arg: 1, scope: !3339, file: !1, line: 359, type: !2268)
!3344 = !DILocalVariable(name: "p0", arg: 2, scope: !3339, file: !1, line: 359, type: !2268)
!3345 = !DILocalVariable(name: "q0", arg: 3, scope: !3339, file: !1, line: 360, type: !2268)
!3346 = !DILocalVariable(name: "q1", arg: 4, scope: !3339, file: !1, line: 360, type: !2268)
!3347 = !DILocalVariable(name: "thresh", arg: 5, scope: !3339, file: !1, line: 361, type: !29)
!3348 = !DILocalVariable(name: "a", scope: !3339, file: !1, line: 362, type: !5)
!3349 = !DILocalVariable(name: "mask", scope: !3339, file: !1, line: 362, type: !5)
!3350 = !DILocalVariable(name: "sign_bit", scope: !3339, file: !1, line: 363, type: !4)
!3351 = !DILocalVariable(name: "p1s", scope: !3339, file: !1, line: 365, type: !4)
!3352 = !DILocalVariable(name: "q1s", scope: !3339, file: !1, line: 366, type: !4)
!3353 = !DILocation(line: 359, column: 55, scope: !3339)
!3354 = !DILocation(line: 359, column: 74, scope: !3339)
!3355 = !DILocation(line: 360, column: 55, scope: !3339)
!3356 = !DILocation(line: 360, column: 74, scope: !3339)
!3357 = !DILocation(line: 361, column: 44, scope: !3339)
!3358 = !DILocation(line: 362, column: 3, scope: !3339)
!3359 = !DILocation(line: 362, column: 11, scope: !3339)
!3360 = !DILocation(line: 362, column: 14, scope: !3339)
!3361 = !DILocation(line: 363, column: 3, scope: !3339)
!3362 = !DILocation(line: 363, column: 17, scope: !3339)
!3363 = !DILocation(line: 363, column: 28, scope: !3339)
!3364 = !DILocation(line: 365, column: 3, scope: !3339)
!3365 = !DILocation(line: 365, column: 17, scope: !3339)
!3366 = !DILocation(line: 365, column: 38, scope: !3339)
!3367 = !DILocation(line: 365, column: 37, scope: !3339)
!3368 = !DILocation(line: 365, column: 42, scope: !3339)
!3369 = !DILocation(line: 365, column: 23, scope: !3339)
!3370 = !DILocation(line: 366, column: 3, scope: !3339)
!3371 = !DILocation(line: 366, column: 17, scope: !3339)
!3372 = !DILocation(line: 366, column: 38, scope: !3339)
!3373 = !DILocation(line: 366, column: 37, scope: !3339)
!3374 = !DILocation(line: 366, column: 42, scope: !3339)
!3375 = !DILocation(line: 366, column: 23, scope: !3339)
!3376 = !DILocation(line: 368, column: 20, scope: !3339)
!3377 = !DILocation(line: 368, column: 24, scope: !3339)
!3378 = !DILocation(line: 368, column: 28, scope: !3339)
!3379 = !DILocation(line: 368, column: 32, scope: !3339)
!3380 = !DILocation(line: 368, column: 36, scope: !3339)
!3381 = !DILocation(line: 368, column: 3, scope: !3339)
!3382 = !DILocation(line: 370, column: 3, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 370, column: 3)
!3384 = !DILocation(line: 371, column: 27, scope: !3339)
!3385 = !DILocation(line: 371, column: 31, scope: !3339)
!3386 = !DILocation(line: 371, column: 3, scope: !3339)
!3387 = !DILocation(line: 372, column: 21, scope: !3339)
!3388 = !DILocation(line: 372, column: 24, scope: !3339)
!3389 = !DILocation(line: 372, column: 7, scope: !3339)
!3390 = !DILocation(line: 372, column: 5, scope: !3339)
!3391 = !DILocation(line: 373, column: 23, scope: !3339)
!3392 = !DILocation(line: 373, column: 27, scope: !3339)
!3393 = !DILocation(line: 373, column: 3, scope: !3339)
!3394 = !DILocation(line: 374, column: 3, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 374, column: 3)
!3396 = !DILocation(line: 375, column: 1, scope: !3339)
!3397 = distinct !DISubprogram(name: "TrueMotion_SSE2", scope: !1, file: !1, line: 1013, type: !3398, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !115, !29}
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3409, !3410, !3414, !3415, !3416, !3419, !3420, !3424, !3425, !3426, !3428, !3429, !3430, !3434, !3435, !3436, !3437}
!3401 = !DILocalVariable(name: "dst", arg: 1, scope: !3397, file: !1, line: 1013, type: !115)
!3402 = !DILocalVariable(name: "size", arg: 2, scope: !3397, file: !1, line: 1013, type: !29)
!3403 = !DILocalVariable(name: "top", scope: !3397, file: !1, line: 1014, type: !2368)
!3404 = !DILocalVariable(name: "zero", scope: !3397, file: !1, line: 1015, type: !4)
!3405 = !DILocalVariable(name: "y", scope: !3397, file: !1, line: 1016, type: !29)
!3406 = !DILocalVariable(name: "top_values", scope: !3407, file: !1, line: 1018, type: !4)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !1, line: 1017, column: 18)
!3408 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 1017, column: 7)
!3409 = !DILocalVariable(name: "top_base", scope: !3407, file: !1, line: 1019, type: !4)
!3410 = !DILocalVariable(name: "val", scope: !3411, file: !1, line: 1021, type: !1591)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !1, line: 1020, column: 41)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !1, line: 1020, column: 5)
!3413 = distinct !DILexicalBlock(scope: !3407, file: !1, line: 1020, column: 5)
!3414 = !DILocalVariable(name: "base", scope: !3411, file: !1, line: 1022, type: !4)
!3415 = !DILocalVariable(name: "out", scope: !3411, file: !1, line: 1023, type: !4)
!3416 = !DILocalVariable(name: "top_values", scope: !3417, file: !1, line: 1027, type: !4)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !1, line: 1026, column: 25)
!3418 = distinct !DILexicalBlock(scope: !3408, file: !1, line: 1026, column: 14)
!3419 = !DILocalVariable(name: "top_base", scope: !3417, file: !1, line: 1028, type: !4)
!3420 = !DILocalVariable(name: "val", scope: !3421, file: !1, line: 1030, type: !1591)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !1, line: 1029, column: 41)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !1, line: 1029, column: 5)
!3423 = distinct !DILexicalBlock(scope: !3417, file: !1, line: 1029, column: 5)
!3424 = !DILocalVariable(name: "base", scope: !3421, file: !1, line: 1031, type: !4)
!3425 = !DILocalVariable(name: "out", scope: !3421, file: !1, line: 1032, type: !4)
!3426 = !DILocalVariable(name: "top_values", scope: !3427, file: !1, line: 1036, type: !4)
!3427 = distinct !DILexicalBlock(scope: !3418, file: !1, line: 1035, column: 10)
!3428 = !DILocalVariable(name: "top_base_0", scope: !3427, file: !1, line: 1037, type: !4)
!3429 = !DILocalVariable(name: "top_base_1", scope: !3427, file: !1, line: 1038, type: !4)
!3430 = !DILocalVariable(name: "val", scope: !3431, file: !1, line: 1040, type: !1591)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 1039, column: 42)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !1, line: 1039, column: 5)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !1, line: 1039, column: 5)
!3434 = !DILocalVariable(name: "base", scope: !3431, file: !1, line: 1041, type: !4)
!3435 = !DILocalVariable(name: "out_0", scope: !3431, file: !1, line: 1042, type: !4)
!3436 = !DILocalVariable(name: "out_1", scope: !3431, file: !1, line: 1043, type: !4)
!3437 = !DILocalVariable(name: "out", scope: !3431, file: !1, line: 1044, type: !4)
!3438 = !DILocation(line: 1013, column: 50, scope: !3397)
!3439 = !DILocation(line: 1013, column: 59, scope: !3397)
!3440 = !DILocation(line: 1014, column: 3, scope: !3397)
!3441 = !DILocation(line: 1014, column: 18, scope: !3397)
!3442 = !DILocation(line: 1014, column: 24, scope: !3397)
!3443 = !DILocation(line: 1014, column: 28, scope: !3397)
!3444 = !DILocation(line: 1015, column: 3, scope: !3397)
!3445 = !DILocation(line: 1015, column: 17, scope: !3397)
!3446 = !DILocation(line: 1015, column: 24, scope: !3397)
!3447 = !DILocation(line: 1016, column: 3, scope: !3397)
!3448 = !DILocation(line: 1016, column: 7, scope: !3397)
!3449 = !DILocation(line: 1017, column: 7, scope: !3408)
!3450 = !DILocation(line: 1017, column: 12, scope: !3408)
!3451 = !DILocation(line: 1017, column: 7, scope: !3397)
!3452 = !DILocation(line: 1018, column: 5, scope: !3407)
!3453 = !DILocation(line: 1018, column: 19, scope: !3407)
!3454 = !DILocation(line: 1018, column: 66, scope: !3407)
!3455 = !DILocation(line: 1018, column: 50, scope: !3407)
!3456 = !DILocation(line: 1018, column: 32, scope: !3407)
!3457 = !DILocation(line: 1019, column: 5, scope: !3407)
!3458 = !DILocation(line: 1019, column: 19, scope: !3407)
!3459 = !DILocation(line: 1019, column: 48, scope: !3407)
!3460 = !DILocation(line: 1019, column: 60, scope: !3407)
!3461 = !DILocation(line: 1019, column: 30, scope: !3407)
!3462 = !DILocation(line: 1020, column: 12, scope: !3413)
!3463 = !DILocation(line: 1020, column: 10, scope: !3413)
!3464 = !DILocation(line: 1020, column: 17, scope: !3412)
!3465 = !DILocation(line: 1020, column: 19, scope: !3412)
!3466 = !DILocation(line: 1020, column: 5, scope: !3413)
!3467 = !DILocation(line: 1021, column: 7, scope: !3411)
!3468 = !DILocation(line: 1021, column: 17, scope: !3411)
!3469 = !DILocation(line: 1021, column: 23, scope: !3411)
!3470 = !DILocation(line: 1021, column: 33, scope: !3411)
!3471 = !DILocation(line: 1021, column: 31, scope: !3411)
!3472 = !DILocation(line: 1022, column: 7, scope: !3411)
!3473 = !DILocation(line: 1022, column: 21, scope: !3411)
!3474 = !DILocation(line: 1022, column: 43, scope: !3411)
!3475 = !DILocation(line: 1022, column: 28, scope: !3411)
!3476 = !DILocation(line: 1023, column: 7, scope: !3411)
!3477 = !DILocation(line: 1023, column: 21, scope: !3411)
!3478 = !DILocation(line: 1023, column: 58, scope: !3411)
!3479 = !DILocation(line: 1023, column: 64, scope: !3411)
!3480 = !DILocation(line: 1023, column: 44, scope: !3411)
!3481 = !DILocation(line: 1023, column: 75, scope: !3411)
!3482 = !DILocation(line: 1023, column: 27, scope: !3411)
!3483 = !DILocation(line: 1024, column: 23, scope: !3411)
!3484 = !DILocation(line: 1024, column: 46, scope: !3411)
!3485 = !DILocation(line: 1024, column: 28, scope: !3411)
!3486 = !DILocation(line: 1024, column: 7, scope: !3411)
!3487 = !DILocation(line: 1025, column: 5, scope: !3412)
!3488 = !DILocation(line: 1025, column: 5, scope: !3411)
!3489 = !DILocation(line: 1020, column: 24, scope: !3412)
!3490 = !DILocation(line: 1020, column: 33, scope: !3412)
!3491 = !DILocation(line: 1020, column: 5, scope: !3412)
!3492 = distinct !{!3492, !3466, !3493, !1003}
!3493 = !DILocation(line: 1025, column: 5, scope: !3413)
!3494 = !DILocation(line: 1026, column: 3, scope: !3408)
!3495 = !DILocation(line: 1026, column: 3, scope: !3407)
!3496 = !DILocation(line: 1026, column: 14, scope: !3418)
!3497 = !DILocation(line: 1026, column: 19, scope: !3418)
!3498 = !DILocation(line: 1026, column: 14, scope: !3408)
!3499 = !DILocation(line: 1027, column: 5, scope: !3417)
!3500 = !DILocation(line: 1027, column: 19, scope: !3417)
!3501 = !DILocation(line: 1027, column: 64, scope: !3417)
!3502 = !DILocation(line: 1027, column: 32, scope: !3417)
!3503 = !DILocation(line: 1028, column: 5, scope: !3417)
!3504 = !DILocation(line: 1028, column: 19, scope: !3417)
!3505 = !DILocation(line: 1028, column: 48, scope: !3417)
!3506 = !DILocation(line: 1028, column: 60, scope: !3417)
!3507 = !DILocation(line: 1028, column: 30, scope: !3417)
!3508 = !DILocation(line: 1029, column: 12, scope: !3423)
!3509 = !DILocation(line: 1029, column: 10, scope: !3423)
!3510 = !DILocation(line: 1029, column: 17, scope: !3422)
!3511 = !DILocation(line: 1029, column: 19, scope: !3422)
!3512 = !DILocation(line: 1029, column: 5, scope: !3423)
!3513 = !DILocation(line: 1030, column: 7, scope: !3421)
!3514 = !DILocation(line: 1030, column: 17, scope: !3421)
!3515 = !DILocation(line: 1030, column: 23, scope: !3421)
!3516 = !DILocation(line: 1030, column: 33, scope: !3421)
!3517 = !DILocation(line: 1030, column: 31, scope: !3421)
!3518 = !DILocation(line: 1031, column: 7, scope: !3421)
!3519 = !DILocation(line: 1031, column: 21, scope: !3421)
!3520 = !DILocation(line: 1031, column: 43, scope: !3421)
!3521 = !DILocation(line: 1031, column: 28, scope: !3421)
!3522 = !DILocation(line: 1032, column: 7, scope: !3421)
!3523 = !DILocation(line: 1032, column: 21, scope: !3421)
!3524 = !DILocation(line: 1032, column: 58, scope: !3421)
!3525 = !DILocation(line: 1032, column: 64, scope: !3421)
!3526 = !DILocation(line: 1032, column: 44, scope: !3421)
!3527 = !DILocation(line: 1032, column: 75, scope: !3421)
!3528 = !DILocation(line: 1032, column: 27, scope: !3421)
!3529 = !DILocation(line: 1033, column: 34, scope: !3421)
!3530 = !DILocation(line: 1033, column: 39, scope: !3421)
!3531 = !DILocation(line: 1033, column: 7, scope: !3421)
!3532 = !DILocation(line: 1034, column: 5, scope: !3422)
!3533 = !DILocation(line: 1034, column: 5, scope: !3421)
!3534 = !DILocation(line: 1029, column: 24, scope: !3422)
!3535 = !DILocation(line: 1029, column: 33, scope: !3422)
!3536 = !DILocation(line: 1029, column: 5, scope: !3422)
!3537 = distinct !{!3537, !3512, !3538, !1003}
!3538 = !DILocation(line: 1034, column: 5, scope: !3423)
!3539 = !DILocation(line: 1035, column: 3, scope: !3418)
!3540 = !DILocation(line: 1035, column: 3, scope: !3417)
!3541 = !DILocation(line: 1036, column: 5, scope: !3427)
!3542 = !DILocation(line: 1036, column: 19, scope: !3427)
!3543 = !DILocation(line: 1036, column: 64, scope: !3427)
!3544 = !DILocation(line: 1036, column: 32, scope: !3427)
!3545 = !DILocation(line: 1037, column: 5, scope: !3427)
!3546 = !DILocation(line: 1037, column: 19, scope: !3427)
!3547 = !DILocation(line: 1037, column: 50, scope: !3427)
!3548 = !DILocation(line: 1037, column: 62, scope: !3427)
!3549 = !DILocation(line: 1037, column: 32, scope: !3427)
!3550 = !DILocation(line: 1038, column: 5, scope: !3427)
!3551 = !DILocation(line: 1038, column: 19, scope: !3427)
!3552 = !DILocation(line: 1038, column: 50, scope: !3427)
!3553 = !DILocation(line: 1038, column: 62, scope: !3427)
!3554 = !DILocation(line: 1038, column: 32, scope: !3427)
!3555 = !DILocation(line: 1039, column: 12, scope: !3433)
!3556 = !DILocation(line: 1039, column: 10, scope: !3433)
!3557 = !DILocation(line: 1039, column: 17, scope: !3432)
!3558 = !DILocation(line: 1039, column: 19, scope: !3432)
!3559 = !DILocation(line: 1039, column: 5, scope: !3433)
!3560 = !DILocation(line: 1040, column: 7, scope: !3431)
!3561 = !DILocation(line: 1040, column: 17, scope: !3431)
!3562 = !DILocation(line: 1040, column: 23, scope: !3431)
!3563 = !DILocation(line: 1040, column: 33, scope: !3431)
!3564 = !DILocation(line: 1040, column: 31, scope: !3431)
!3565 = !DILocation(line: 1041, column: 7, scope: !3431)
!3566 = !DILocation(line: 1041, column: 21, scope: !3431)
!3567 = !DILocation(line: 1041, column: 43, scope: !3431)
!3568 = !DILocation(line: 1041, column: 28, scope: !3431)
!3569 = !DILocation(line: 1042, column: 7, scope: !3431)
!3570 = !DILocation(line: 1042, column: 21, scope: !3431)
!3571 = !DILocation(line: 1042, column: 43, scope: !3431)
!3572 = !DILocation(line: 1042, column: 49, scope: !3431)
!3573 = !DILocation(line: 1042, column: 29, scope: !3431)
!3574 = !DILocation(line: 1043, column: 7, scope: !3431)
!3575 = !DILocation(line: 1043, column: 21, scope: !3431)
!3576 = !DILocation(line: 1043, column: 43, scope: !3431)
!3577 = !DILocation(line: 1043, column: 49, scope: !3431)
!3578 = !DILocation(line: 1043, column: 29, scope: !3431)
!3579 = !DILocation(line: 1044, column: 7, scope: !3431)
!3580 = !DILocation(line: 1044, column: 21, scope: !3431)
!3581 = !DILocation(line: 1044, column: 44, scope: !3431)
!3582 = !DILocation(line: 1044, column: 51, scope: !3431)
!3583 = !DILocation(line: 1044, column: 27, scope: !3431)
!3584 = !DILocation(line: 1045, column: 34, scope: !3431)
!3585 = !DILocation(line: 1045, column: 39, scope: !3431)
!3586 = !DILocation(line: 1045, column: 7, scope: !3431)
!3587 = !DILocation(line: 1046, column: 5, scope: !3432)
!3588 = !DILocation(line: 1046, column: 5, scope: !3431)
!3589 = !DILocation(line: 1039, column: 25, scope: !3432)
!3590 = !DILocation(line: 1039, column: 34, scope: !3432)
!3591 = !DILocation(line: 1039, column: 5, scope: !3432)
!3592 = distinct !{!3592, !3559, !3593, !1003}
!3593 = !DILocation(line: 1046, column: 5, scope: !3433)
!3594 = !DILocation(line: 1047, column: 3, scope: !3418)
!3595 = !DILocation(line: 1048, column: 1, scope: !3397)
!3596 = distinct !DISubprogram(name: "Put16_SSE2", scope: !1, file: !1, line: 1071, type: !3597, scopeLine: 1071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !116, !115}
!3599 = !{!3600, !3601, !3602, !3603}
!3600 = !DILocalVariable(name: "v", arg: 1, scope: !3596, file: !1, line: 1071, type: !116)
!3601 = !DILocalVariable(name: "dst", arg: 2, scope: !3596, file: !1, line: 1071, type: !115)
!3602 = !DILocalVariable(name: "j", scope: !3596, file: !1, line: 1072, type: !29)
!3603 = !DILocalVariable(name: "values", scope: !3596, file: !1, line: 1073, type: !4)
!3604 = !DILocation(line: 1071, column: 44, scope: !3596)
!3605 = !DILocation(line: 1071, column: 56, scope: !3596)
!3606 = !DILocation(line: 1072, column: 3, scope: !3596)
!3607 = !DILocation(line: 1072, column: 7, scope: !3596)
!3608 = !DILocation(line: 1073, column: 3, scope: !3596)
!3609 = !DILocation(line: 1073, column: 17, scope: !3596)
!3610 = !DILocation(line: 1073, column: 40, scope: !3596)
!3611 = !DILocation(line: 1073, column: 26, scope: !3596)
!3612 = !DILocation(line: 1074, column: 10, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3596, file: !1, line: 1074, column: 3)
!3614 = !DILocation(line: 1074, column: 8, scope: !3613)
!3615 = !DILocation(line: 1074, column: 15, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3613, file: !1, line: 1074, column: 3)
!3617 = !DILocation(line: 1074, column: 17, scope: !3616)
!3618 = !DILocation(line: 1074, column: 3, scope: !3613)
!3619 = !DILocation(line: 1075, column: 33, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3616, file: !1, line: 1074, column: 28)
!3621 = !DILocation(line: 1075, column: 39, scope: !3620)
!3622 = !DILocation(line: 1075, column: 41, scope: !3620)
!3623 = !DILocation(line: 1075, column: 37, scope: !3620)
!3624 = !DILocation(line: 1075, column: 49, scope: !3620)
!3625 = !DILocation(line: 1075, column: 5, scope: !3620)
!3626 = !DILocation(line: 1076, column: 3, scope: !3620)
!3627 = !DILocation(line: 1074, column: 23, scope: !3616)
!3628 = !DILocation(line: 1074, column: 3, scope: !3616)
!3629 = distinct !{!3629, !3618, !3630, !1003}
!3630 = !DILocation(line: 1076, column: 3, scope: !3613)
!3631 = !DILocation(line: 1077, column: 1, scope: !3596)
!3632 = distinct !DISubprogram(name: "Put8x8uv_SSE2", scope: !1, file: !1, line: 1131, type: !3597, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3633)
!3633 = !{!3634, !3635, !3636, !3637}
!3634 = !DILocalVariable(name: "v", arg: 1, scope: !3632, file: !1, line: 1131, type: !116)
!3635 = !DILocalVariable(name: "dst", arg: 2, scope: !3632, file: !1, line: 1131, type: !115)
!3636 = !DILocalVariable(name: "j", scope: !3632, file: !1, line: 1132, type: !29)
!3637 = !DILocalVariable(name: "values", scope: !3632, file: !1, line: 1133, type: !4)
!3638 = !DILocation(line: 1131, column: 47, scope: !3632)
!3639 = !DILocation(line: 1131, column: 59, scope: !3632)
!3640 = !DILocation(line: 1132, column: 3, scope: !3632)
!3641 = !DILocation(line: 1132, column: 7, scope: !3632)
!3642 = !DILocation(line: 1133, column: 3, scope: !3632)
!3643 = !DILocation(line: 1133, column: 17, scope: !3632)
!3644 = !DILocation(line: 1133, column: 40, scope: !3632)
!3645 = !DILocation(line: 1133, column: 26, scope: !3632)
!3646 = !DILocation(line: 1134, column: 10, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3632, file: !1, line: 1134, column: 3)
!3648 = !DILocation(line: 1134, column: 8, scope: !3647)
!3649 = !DILocation(line: 1134, column: 15, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3647, file: !1, line: 1134, column: 3)
!3651 = !DILocation(line: 1134, column: 17, scope: !3650)
!3652 = !DILocation(line: 1134, column: 3, scope: !3647)
!3653 = !DILocation(line: 1135, column: 33, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 1134, column: 27)
!3655 = !DILocation(line: 1135, column: 39, scope: !3654)
!3656 = !DILocation(line: 1135, column: 41, scope: !3654)
!3657 = !DILocation(line: 1135, column: 37, scope: !3654)
!3658 = !DILocation(line: 1135, column: 49, scope: !3654)
!3659 = !DILocation(line: 1135, column: 5, scope: !3654)
!3660 = !DILocation(line: 1136, column: 3, scope: !3654)
!3661 = !DILocation(line: 1134, column: 22, scope: !3650)
!3662 = !DILocation(line: 1134, column: 3, scope: !3650)
!3663 = distinct !{!3663, !3652, !3664, !1003}
!3664 = !DILocation(line: 1136, column: 3, scope: !3647)
!3665 = !DILocation(line: 1137, column: 1, scope: !3632)

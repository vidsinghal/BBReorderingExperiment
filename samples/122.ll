; ModuleID = 'samples/122.bc'
source_filename = "alpha_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@WebPMultARGBRow = hidden global ptr null, align 8, !dbg !0
@WebPMultRow = hidden global ptr null, align 8, !dbg !72
@WebPInitAlphaProcessing.WebPInitAlphaProcessing_body_last_cpuinfo_used = internal global ptr @WebPInitAlphaProcessing.WebPInitAlphaProcessing_body_last_cpuinfo_used, align 8, !dbg !33
@WebPInitAlphaProcessing.WebPInitAlphaProcessing_body_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !39
@VP8GetCPUInfo = external global ptr, align 8
@WebPApplyAlphaMultiply = hidden global ptr null, align 8, !dbg !87
@WebPApplyAlphaMultiply4444 = hidden global ptr null, align 8, !dbg !92
@WebPDispatchAlpha = hidden global ptr null, align 8, !dbg !97
@WebPDispatchAlphaToGreen = hidden global ptr null, align 8, !dbg !102
@WebPExtractAlpha = hidden global ptr null, align 8, !dbg !108
@WebPExtractGreen = hidden global ptr null, align 8, !dbg !110
@WebPPackRGB = hidden global ptr null, align 8, !dbg !118
@WebPHasAlpha8b = hidden global ptr null, align 8, !dbg !123
@WebPHasAlpha32b = hidden global ptr null, align 8, !dbg !128
@WebPAlphaReplace = hidden global ptr null, align 8, !dbg !130

; Function Attrs: nounwind uwtable
define hidden void @WebPMultARGBRow_C(ptr noundef %ptr, i32 noundef %width, i32 noundef %inverse) #0 !dbg !145 {
entry:
  %ptr.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %inverse.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %argb = alloca i32, align 4
  %alpha = alloca i32, align 4
  %scale = alloca i32, align 4
  %out = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !147, metadata !DIExpression()), !dbg !166
  store i32 %width, ptr %width.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !148, metadata !DIExpression()), !dbg !169
  store i32 %inverse, ptr %inverse.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %inverse.addr, metadata !149, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !171
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !150, metadata !DIExpression()), !dbg !172
  store i32 0, ptr %x, align 4, !dbg !173, !tbaa !167
  br label %for.cond, !dbg !174

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4, !dbg !175, !tbaa !167
  %1 = load i32, ptr %width.addr, align 4, !dbg !176, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !177
  br i1 %cmp, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %argb) #6, !dbg !179
  tail call void @llvm.dbg.declare(metadata ptr %argb, metadata !151, metadata !DIExpression()), !dbg !180
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !181, !tbaa !162
  %3 = load i32, ptr %x, align 4, !dbg !182, !tbaa !167
  %idxprom = sext i32 %3 to i64, !dbg !181
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !181
  %4 = load i32, ptr %arrayidx, align 4, !dbg !181, !tbaa !167
  store i32 %4, ptr %argb, align 4, !dbg !180, !tbaa !167
  %5 = load i32, ptr %argb, align 4, !dbg !183, !tbaa !167
  %cmp1 = icmp ult i32 %5, -16777216, !dbg !184
  br i1 %cmp1, label %if.then, label %if.end21, !dbg !185

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %argb, align 4, !dbg !186, !tbaa !167
  %cmp2 = icmp ule i32 %6, 16777215, !dbg !187
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !188

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %ptr.addr, align 8, !dbg !189, !tbaa !162
  %8 = load i32, ptr %x, align 4, !dbg !191, !tbaa !167
  %idxprom4 = sext i32 %8 to i64, !dbg !189
  %arrayidx5 = getelementptr inbounds i32, ptr %7, i64 %idxprom4, !dbg !189
  store i32 0, ptr %arrayidx5, align 4, !dbg !192, !tbaa !167
  br label %if.end, !dbg !193

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha) #6, !dbg !194
  tail call void @llvm.dbg.declare(metadata ptr %alpha, metadata !155, metadata !DIExpression()), !dbg !195
  %9 = load i32, ptr %argb, align 4, !dbg !196, !tbaa !167
  %shr = lshr i32 %9, 24, !dbg !197
  %and = and i32 %shr, 255, !dbg !198
  store i32 %and, ptr %alpha, align 4, !dbg !195, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr %scale) #6, !dbg !199
  tail call void @llvm.dbg.declare(metadata ptr %scale, metadata !160, metadata !DIExpression()), !dbg !200
  %10 = load i32, ptr %alpha, align 4, !dbg !201, !tbaa !167
  %11 = load i32, ptr %inverse.addr, align 4, !dbg !202, !tbaa !167
  %call = call i32 @GetScale(i32 noundef %10, i32 noundef %11), !dbg !203
  store i32 %call, ptr %scale, align 4, !dbg !200, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #6, !dbg !204
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !161, metadata !DIExpression()), !dbg !205
  %12 = load i32, ptr %argb, align 4, !dbg !206, !tbaa !167
  %and6 = and i32 %12, -16777216, !dbg !207
  store i32 %and6, ptr %out, align 4, !dbg !205, !tbaa !167
  %13 = load i32, ptr %argb, align 4, !dbg !208, !tbaa !167
  %shr7 = lshr i32 %13, 0, !dbg !209
  %conv = trunc i32 %shr7 to i8, !dbg !208
  %14 = load i32, ptr %scale, align 4, !dbg !210, !tbaa !167
  %call8 = call i32 @Mult(i8 noundef zeroext %conv, i32 noundef %14), !dbg !211
  %shl = shl i32 %call8, 0, !dbg !212
  %15 = load i32, ptr %out, align 4, !dbg !213, !tbaa !167
  %or = or i32 %15, %shl, !dbg !213
  store i32 %or, ptr %out, align 4, !dbg !213, !tbaa !167
  %16 = load i32, ptr %argb, align 4, !dbg !214, !tbaa !167
  %shr9 = lshr i32 %16, 8, !dbg !215
  %conv10 = trunc i32 %shr9 to i8, !dbg !214
  %17 = load i32, ptr %scale, align 4, !dbg !216, !tbaa !167
  %call11 = call i32 @Mult(i8 noundef zeroext %conv10, i32 noundef %17), !dbg !217
  %shl12 = shl i32 %call11, 8, !dbg !218
  %18 = load i32, ptr %out, align 4, !dbg !219, !tbaa !167
  %or13 = or i32 %18, %shl12, !dbg !219
  store i32 %or13, ptr %out, align 4, !dbg !219, !tbaa !167
  %19 = load i32, ptr %argb, align 4, !dbg !220, !tbaa !167
  %shr14 = lshr i32 %19, 16, !dbg !221
  %conv15 = trunc i32 %shr14 to i8, !dbg !220
  %20 = load i32, ptr %scale, align 4, !dbg !222, !tbaa !167
  %call16 = call i32 @Mult(i8 noundef zeroext %conv15, i32 noundef %20), !dbg !223
  %shl17 = shl i32 %call16, 16, !dbg !224
  %21 = load i32, ptr %out, align 4, !dbg !225, !tbaa !167
  %or18 = or i32 %21, %shl17, !dbg !225
  store i32 %or18, ptr %out, align 4, !dbg !225, !tbaa !167
  %22 = load i32, ptr %out, align 4, !dbg !226, !tbaa !167
  %23 = load ptr, ptr %ptr.addr, align 8, !dbg !227, !tbaa !162
  %24 = load i32, ptr %x, align 4, !dbg !228, !tbaa !167
  %idxprom19 = sext i32 %24 to i64, !dbg !227
  %arrayidx20 = getelementptr inbounds i32, ptr %23, i64 %idxprom19, !dbg !227
  store i32 %22, ptr %arrayidx20, align 4, !dbg !229, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #6, !dbg !230
  call void @llvm.lifetime.end.p0(i64 4, ptr %scale) #6, !dbg !230
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha) #6, !dbg !230
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end21, !dbg !231

if.end21:                                         ; preds = %if.end, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr %argb) #6, !dbg !232
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %if.end21
  %25 = load i32, ptr %x, align 4, !dbg !234, !tbaa !167
  %inc = add nsw i32 %25, 1, !dbg !234
  store i32 %inc, ptr %x, align 4, !dbg !234, !tbaa !167
  br label %for.cond, !dbg !235, !llvm.loop !236

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !239
  ret void, !dbg !239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @GetScale(i32 noundef %a, i32 noundef %inverse) #2 !dbg !240 {
entry:
  %a.addr = alloca i32, align 4
  %inverse.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !244, metadata !DIExpression()), !dbg !246
  store i32 %inverse, ptr %inverse.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %inverse.addr, metadata !245, metadata !DIExpression()), !dbg !247
  %0 = load i32, ptr %inverse.addr, align 4, !dbg !248, !tbaa !167
  %tobool = icmp ne i32 %0, 0, !dbg !248
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !248

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %a.addr, align 4, !dbg !249, !tbaa !167
  %div = udiv i32 -16777216, %1, !dbg !250
  br label %cond.end, !dbg !248

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !dbg !251, !tbaa !167
  %mul = mul i32 %2, 65793, !dbg !252
  br label %cond.end, !dbg !248

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %mul, %cond.false ], !dbg !248
  ret i32 %cond, !dbg !253
}

; Function Attrs: nounwind uwtable
define internal i32 @Mult(i8 noundef zeroext %x, i32 noundef %mult) #0 !dbg !254 {
entry:
  %x.addr = alloca i8, align 1
  %mult.addr = alloca i32, align 4
  %v = alloca i32, align 4
  store i8 %x, ptr %x.addr, align 1, !tbaa !261
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !258, metadata !DIExpression()), !dbg !262
  store i32 %mult, ptr %mult.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %mult.addr, metadata !259, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #6, !dbg !264
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !260, metadata !DIExpression()), !dbg !265
  %0 = load i8, ptr %x.addr, align 1, !dbg !266, !tbaa !261
  %conv = zext i8 %0 to i32, !dbg !266
  %1 = load i32, ptr %mult.addr, align 4, !dbg !267, !tbaa !167
  %mul = mul i32 %conv, %1, !dbg !268
  %add = add i32 %mul, 8388608, !dbg !269
  %shr = lshr i32 %add, 24, !dbg !270
  store i32 %shr, ptr %v, align 4, !dbg !265, !tbaa !167
  %2 = load i32, ptr %v, align 4, !dbg !271, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #6, !dbg !272
  ret i32 %2, !dbg !273
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @WebPMultRow_C(ptr noalias noundef %ptr, ptr noalias noundef %alpha, i32 noundef %width, i32 noundef %inverse) #0 !dbg !274 {
entry:
  %ptr.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %inverse.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %a = alloca i32, align 4
  %scale = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !276, metadata !DIExpression()), !dbg !290
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !277, metadata !DIExpression()), !dbg !291
  store i32 %width, ptr %width.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !278, metadata !DIExpression()), !dbg !292
  store i32 %inverse, ptr %inverse.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %inverse.addr, metadata !279, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !294
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !280, metadata !DIExpression()), !dbg !295
  store i32 0, ptr %x, align 4, !dbg !296, !tbaa !167
  br label %for.cond, !dbg !297

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4, !dbg !298, !tbaa !167
  %1 = load i32, ptr %width.addr, align 4, !dbg !299, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !300
  br i1 %cmp, label %for.body, label %for.end, !dbg !301

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #6, !dbg !302
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !281, metadata !DIExpression()), !dbg !303
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !304, !tbaa !162
  %3 = load i32, ptr %x, align 4, !dbg !305, !tbaa !167
  %idxprom = sext i32 %3 to i64, !dbg !304
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom, !dbg !304
  %4 = load i8, ptr %arrayidx, align 1, !dbg !304, !tbaa !261
  %conv = zext i8 %4 to i32, !dbg !304
  store i32 %conv, ptr %a, align 4, !dbg !303, !tbaa !167
  %5 = load i32, ptr %a, align 4, !dbg !306, !tbaa !167
  %cmp1 = icmp ne i32 %5, 255, !dbg !307
  br i1 %cmp1, label %if.then, label %if.end14, !dbg !308

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %a, align 4, !dbg !309, !tbaa !167
  %cmp3 = icmp eq i32 %6, 0, !dbg !310
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !311

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %ptr.addr, align 8, !dbg !312, !tbaa !162
  %8 = load i32, ptr %x, align 4, !dbg !314, !tbaa !167
  %idxprom6 = sext i32 %8 to i64, !dbg !312
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 %idxprom6, !dbg !312
  store i8 0, ptr %arrayidx7, align 1, !dbg !315, !tbaa !261
  br label %if.end, !dbg !316

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %scale) #6, !dbg !317
  tail call void @llvm.dbg.declare(metadata ptr %scale, metadata !285, metadata !DIExpression()), !dbg !318
  %9 = load i32, ptr %a, align 4, !dbg !319, !tbaa !167
  %10 = load i32, ptr %inverse.addr, align 4, !dbg !320, !tbaa !167
  %call = call i32 @GetScale(i32 noundef %9, i32 noundef %10), !dbg !321
  store i32 %call, ptr %scale, align 4, !dbg !318, !tbaa !167
  %11 = load ptr, ptr %ptr.addr, align 8, !dbg !322, !tbaa !162
  %12 = load i32, ptr %x, align 4, !dbg !323, !tbaa !167
  %idxprom8 = sext i32 %12 to i64, !dbg !322
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8, !dbg !322
  %13 = load i8, ptr %arrayidx9, align 1, !dbg !322, !tbaa !261
  %14 = load i32, ptr %scale, align 4, !dbg !324, !tbaa !167
  %call10 = call i32 @Mult(i8 noundef zeroext %13, i32 noundef %14), !dbg !325
  %conv11 = trunc i32 %call10 to i8, !dbg !325
  %15 = load ptr, ptr %ptr.addr, align 8, !dbg !326, !tbaa !162
  %16 = load i32, ptr %x, align 4, !dbg !327, !tbaa !167
  %idxprom12 = sext i32 %16 to i64, !dbg !326
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 %idxprom12, !dbg !326
  store i8 %conv11, ptr %arrayidx13, align 1, !dbg !328, !tbaa !261
  call void @llvm.lifetime.end.p0(i64 4, ptr %scale) #6, !dbg !329
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end14, !dbg !330

if.end14:                                         ; preds = %if.end, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #6, !dbg !331
  br label %for.inc, !dbg !332

for.inc:                                          ; preds = %if.end14
  %17 = load i32, ptr %x, align 4, !dbg !333, !tbaa !167
  %inc = add nsw i32 %17, 1, !dbg !333
  store i32 %inc, ptr %x, align 4, !dbg !333, !tbaa !167
  br label %for.cond, !dbg !334, !llvm.loop !335

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !337
  ret void, !dbg !337
}

; Function Attrs: nounwind uwtable
define hidden void @WebPMultARGBRows(ptr noundef %ptr, i32 noundef %stride, i32 noundef %width, i32 noundef %num_rows, i32 noundef %inverse) #0 !dbg !338 {
entry:
  %ptr.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inverse.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !340, metadata !DIExpression()), !dbg !346
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !341, metadata !DIExpression()), !dbg !347
  store i32 %width, ptr %width.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !342, metadata !DIExpression()), !dbg !348
  store i32 %num_rows, ptr %num_rows.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %num_rows.addr, metadata !343, metadata !DIExpression()), !dbg !349
  store i32 %inverse, ptr %inverse.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %inverse.addr, metadata !344, metadata !DIExpression()), !dbg !350
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6, !dbg !351
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !345, metadata !DIExpression()), !dbg !352
  store i32 0, ptr %n, align 4, !dbg !353, !tbaa !167
  br label %for.cond, !dbg !355

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !dbg !356, !tbaa !167
  %1 = load i32, ptr %num_rows.addr, align 4, !dbg !358, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !359
  br i1 %cmp, label %for.body, label %for.end, !dbg !360

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @WebPMultARGBRow, align 8, !dbg !361, !tbaa !162
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !363, !tbaa !162
  %4 = load i32, ptr %width.addr, align 4, !dbg !364, !tbaa !167
  %5 = load i32, ptr %inverse.addr, align 4, !dbg !365, !tbaa !167
  call void %2(ptr noundef %3, i32 noundef %4, i32 noundef %5), !dbg !361
  %6 = load i32, ptr %stride.addr, align 4, !dbg !366, !tbaa !167
  %7 = load ptr, ptr %ptr.addr, align 8, !dbg !367, !tbaa !162
  %idx.ext = sext i32 %6 to i64, !dbg !367
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext, !dbg !367
  store ptr %add.ptr, ptr %ptr.addr, align 8, !dbg !367, !tbaa !162
  br label %for.inc, !dbg !368

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %n, align 4, !dbg !369, !tbaa !167
  %inc = add nsw i32 %8, 1, !dbg !369
  store i32 %inc, ptr %n, align 4, !dbg !369, !tbaa !167
  br label %for.cond, !dbg !370, !llvm.loop !371

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6, !dbg !373
  ret void, !dbg !373
}

; Function Attrs: nounwind uwtable
define hidden void @WebPMultRows(ptr noalias noundef %ptr, i32 noundef %stride, ptr noalias noundef %alpha, i32 noundef %alpha_stride, i32 noundef %width, i32 noundef %num_rows, i32 noundef %inverse) #0 !dbg !374 {
entry:
  %ptr.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %alpha_stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %inverse.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !378, metadata !DIExpression()), !dbg !386
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !379, metadata !DIExpression()), !dbg !387
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !380, metadata !DIExpression()), !dbg !388
  store i32 %alpha_stride, ptr %alpha_stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %alpha_stride.addr, metadata !381, metadata !DIExpression()), !dbg !389
  store i32 %width, ptr %width.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !382, metadata !DIExpression()), !dbg !390
  store i32 %num_rows, ptr %num_rows.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %num_rows.addr, metadata !383, metadata !DIExpression()), !dbg !391
  store i32 %inverse, ptr %inverse.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %inverse.addr, metadata !384, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6, !dbg !393
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !385, metadata !DIExpression()), !dbg !394
  store i32 0, ptr %n, align 4, !dbg !395, !tbaa !167
  br label %for.cond, !dbg !397

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !dbg !398, !tbaa !167
  %1 = load i32, ptr %num_rows.addr, align 4, !dbg !400, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !401
  br i1 %cmp, label %for.body, label %for.end, !dbg !402

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @WebPMultRow, align 8, !dbg !403, !tbaa !162
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !405, !tbaa !162
  %4 = load ptr, ptr %alpha.addr, align 8, !dbg !406, !tbaa !162
  %5 = load i32, ptr %width.addr, align 4, !dbg !407, !tbaa !167
  %6 = load i32, ptr %inverse.addr, align 4, !dbg !408, !tbaa !167
  call void %2(ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6), !dbg !403
  %7 = load i32, ptr %stride.addr, align 4, !dbg !409, !tbaa !167
  %8 = load ptr, ptr %ptr.addr, align 8, !dbg !410, !tbaa !162
  %idx.ext = sext i32 %7 to i64, !dbg !410
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext, !dbg !410
  store ptr %add.ptr, ptr %ptr.addr, align 8, !dbg !410, !tbaa !162
  %9 = load i32, ptr %alpha_stride.addr, align 4, !dbg !411, !tbaa !167
  %10 = load ptr, ptr %alpha.addr, align 8, !dbg !412, !tbaa !162
  %idx.ext1 = sext i32 %9 to i64, !dbg !412
  %add.ptr2 = getelementptr inbounds i8, ptr %10, i64 %idx.ext1, !dbg !412
  store ptr %add.ptr2, ptr %alpha.addr, align 8, !dbg !412, !tbaa !162
  br label %for.inc, !dbg !413

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %n, align 4, !dbg !414, !tbaa !167
  %inc = add nsw i32 %11, 1, !dbg !414
  store i32 %inc, ptr %n, align 4, !dbg !414, !tbaa !167
  br label %for.cond, !dbg !415, !llvm.loop !416

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6, !dbg !418
  ret void, !dbg !418
}

; Function Attrs: nounwind uwtable
define hidden void @WebPInitAlphaProcessing() #0 !dbg !35 {
entry:
  br label %do.body, !dbg !419

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_mutex_lock(ptr noundef @WebPInitAlphaProcessing.WebPInitAlphaProcessing_body_lock) #6, !dbg !420
  %tobool = icmp ne i32 %call, 0, !dbg !420
  br i1 %tobool, label %if.then, label %if.end, !dbg !423

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !420

if.end:                                           ; preds = %do.body
  %0 = load volatile ptr, ptr @WebPInitAlphaProcessing.WebPInitAlphaProcessing_body_last_cpuinfo_used, align 8, !dbg !424, !tbaa !162
  %1 = load ptr, ptr @VP8GetCPUInfo, align 8, !dbg !424, !tbaa !162
  %cmp = icmp ne ptr %0, %1, !dbg !424
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !423

if.then1:                                         ; preds = %if.end
  call void @WebPInitAlphaProcessing_body(), !dbg !424
  br label %if.end2, !dbg !424

if.end2:                                          ; preds = %if.then1, %if.end
  %2 = load ptr, ptr @VP8GetCPUInfo, align 8, !dbg !423, !tbaa !162
  store volatile ptr %2, ptr @WebPInitAlphaProcessing.WebPInitAlphaProcessing_body_last_cpuinfo_used, align 8, !dbg !423, !tbaa !162
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef @WebPInitAlphaProcessing.WebPInitAlphaProcessing_body_lock) #6, !dbg !423
  br label %do.end, !dbg !423

do.end:                                           ; preds = %if.end2, %if.then
  ret void, !dbg !419
}

; Function Attrs: nounwind
declare !dbg !426 i32 @pthread_mutex_lock(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @WebPInitAlphaProcessing_body() #0 !dbg !431 {
entry:
  store ptr @WebPMultARGBRow_C, ptr @WebPMultARGBRow, align 8, !dbg !432, !tbaa !162
  store ptr @WebPMultRow_C, ptr @WebPMultRow, align 8, !dbg !433, !tbaa !162
  store ptr @ApplyAlphaMultiply_16b_C, ptr @WebPApplyAlphaMultiply4444, align 8, !dbg !434, !tbaa !162
  store ptr @PackRGB_C, ptr @WebPPackRGB, align 8, !dbg !435, !tbaa !162
  store ptr @ApplyAlphaMultiply_C, ptr @WebPApplyAlphaMultiply, align 8, !dbg !436, !tbaa !162
  store ptr @DispatchAlpha_C, ptr @WebPDispatchAlpha, align 8, !dbg !437, !tbaa !162
  store ptr @DispatchAlphaToGreen_C, ptr @WebPDispatchAlphaToGreen, align 8, !dbg !438, !tbaa !162
  store ptr @ExtractAlpha_C, ptr @WebPExtractAlpha, align 8, !dbg !439, !tbaa !162
  store ptr @ExtractGreen_C, ptr @WebPExtractGreen, align 8, !dbg !440, !tbaa !162
  store ptr @HasAlpha8b_C, ptr @WebPHasAlpha8b, align 8, !dbg !441, !tbaa !162
  store ptr @HasAlpha32b_C, ptr @WebPHasAlpha32b, align 8, !dbg !442, !tbaa !162
  store ptr @AlphaReplace_C, ptr @WebPAlphaReplace, align 8, !dbg !443, !tbaa !162
  %0 = load ptr, ptr @VP8GetCPUInfo, align 8, !dbg !444, !tbaa !162
  %cmp = icmp ne ptr %0, null, !dbg !446
  br i1 %cmp, label %if.then, label %if.end6, !dbg !447

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @VP8GetCPUInfo, align 8, !dbg !448, !tbaa !162
  %call = call i32 %1(i32 noundef 0), !dbg !448
  %tobool = icmp ne i32 %call, 0, !dbg !448
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !451

if.then1:                                         ; preds = %if.then
  call void @WebPInitAlphaProcessingSSE2(), !dbg !452
  %2 = load ptr, ptr @VP8GetCPUInfo, align 8, !dbg !454, !tbaa !162
  %call2 = call i32 %2(i32 noundef 3), !dbg !454
  %tobool3 = icmp ne i32 %call2, 0, !dbg !454
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !456

if.then4:                                         ; preds = %if.then1
  call void @WebPInitAlphaProcessingSSE41(), !dbg !457
  br label %if.end, !dbg !459

if.end:                                           ; preds = %if.then4, %if.then1
  br label %if.end5, !dbg !460

if.end5:                                          ; preds = %if.end, %if.then
  br label %if.end6, !dbg !461

if.end6:                                          ; preds = %if.end5, %entry
  ret void, !dbg !462
}

; Function Attrs: nounwind
declare !dbg !463 i32 @pthread_mutex_unlock(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @ApplyAlphaMultiply_16b_C(ptr noundef %rgba4444, i32 noundef %w, i32 noundef %h, i32 noundef %stride) #0 !dbg !464 {
entry:
  %rgba4444.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  store ptr %rgba4444, ptr %rgba4444.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %rgba4444.addr, metadata !466, metadata !DIExpression()), !dbg !470
  store i32 %w, ptr %w.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !467, metadata !DIExpression()), !dbg !471
  store i32 %h, ptr %h.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !468, metadata !DIExpression()), !dbg !472
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !469, metadata !DIExpression()), !dbg !473
  %0 = load ptr, ptr %rgba4444.addr, align 8, !dbg !474, !tbaa !162
  %1 = load i32, ptr %w.addr, align 4, !dbg !475, !tbaa !167
  %2 = load i32, ptr %h.addr, align 4, !dbg !476, !tbaa !167
  %3 = load i32, ptr %stride.addr, align 4, !dbg !477, !tbaa !167
  call void @ApplyAlphaMultiply4444_C(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0), !dbg !478
  ret void, !dbg !479
}

; Function Attrs: nounwind uwtable
define internal void @PackRGB_C(ptr noalias noundef %r, ptr noalias noundef %g, ptr noalias noundef %b, i32 noundef %len, i32 noundef %step, ptr noalias noundef %out) #0 !dbg !480 {
entry:
  %r.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !482, metadata !DIExpression()), !dbg !490
  store ptr %g, ptr %g.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !483, metadata !DIExpression()), !dbg !491
  store ptr %b, ptr %b.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !484, metadata !DIExpression()), !dbg !492
  store i32 %len, ptr %len.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !485, metadata !DIExpression()), !dbg !493
  store i32 %step, ptr %step.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %step.addr, metadata !486, metadata !DIExpression()), !dbg !494
  store ptr %out, ptr %out.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !487, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !496
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !488, metadata !DIExpression()), !dbg !497
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #6, !dbg !496
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !489, metadata !DIExpression()), !dbg !498
  store i32 0, ptr %offset, align 4, !dbg !498, !tbaa !167
  store i32 0, ptr %i, align 4, !dbg !499, !tbaa !167
  br label %for.cond, !dbg !501

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !502, !tbaa !167
  %1 = load i32, ptr %len.addr, align 4, !dbg !504, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !505
  br i1 %cmp, label %for.body, label %for.end, !dbg !506

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %r.addr, align 8, !dbg !507, !tbaa !162
  %3 = load i32, ptr %offset, align 4, !dbg !509, !tbaa !167
  %idxprom = sext i32 %3 to i64, !dbg !507
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom, !dbg !507
  %4 = load i8, ptr %arrayidx, align 1, !dbg !507, !tbaa !261
  %conv = zext i8 %4 to i32, !dbg !507
  %5 = load ptr, ptr %g.addr, align 8, !dbg !510, !tbaa !162
  %6 = load i32, ptr %offset, align 4, !dbg !511, !tbaa !167
  %idxprom1 = sext i32 %6 to i64, !dbg !510
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %idxprom1, !dbg !510
  %7 = load i8, ptr %arrayidx2, align 1, !dbg !510, !tbaa !261
  %conv3 = zext i8 %7 to i32, !dbg !510
  %8 = load ptr, ptr %b.addr, align 8, !dbg !512, !tbaa !162
  %9 = load i32, ptr %offset, align 4, !dbg !513, !tbaa !167
  %idxprom4 = sext i32 %9 to i64, !dbg !512
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4, !dbg !512
  %10 = load i8, ptr %arrayidx5, align 1, !dbg !512, !tbaa !261
  %conv6 = zext i8 %10 to i32, !dbg !512
  %call = call i32 @MakeARGB32(i32 noundef 255, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6), !dbg !514
  %11 = load ptr, ptr %out.addr, align 8, !dbg !515, !tbaa !162
  %12 = load i32, ptr %i, align 4, !dbg !516, !tbaa !167
  %idxprom7 = sext i32 %12 to i64, !dbg !515
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 %idxprom7, !dbg !515
  store i32 %call, ptr %arrayidx8, align 4, !dbg !517, !tbaa !167
  %13 = load i32, ptr %step.addr, align 4, !dbg !518, !tbaa !167
  %14 = load i32, ptr %offset, align 4, !dbg !519, !tbaa !167
  %add = add nsw i32 %14, %13, !dbg !519
  store i32 %add, ptr %offset, align 4, !dbg !519, !tbaa !167
  br label %for.inc, !dbg !520

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !521, !tbaa !167
  %inc = add nsw i32 %15, 1, !dbg !521
  store i32 %inc, ptr %i, align 4, !dbg !521, !tbaa !167
  br label %for.cond, !dbg !522, !llvm.loop !523

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #6, !dbg !525
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !525
  ret void, !dbg !525
}

; Function Attrs: nounwind uwtable
define internal void @ApplyAlphaMultiply_C(ptr noundef %rgba, i32 noundef %alpha_first, i32 noundef %w, i32 noundef %h, i32 noundef %stride) #0 !dbg !526 {
entry:
  %rgba.addr = alloca ptr, align 8
  %alpha_first.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %rgb = alloca ptr, align 8
  %alpha = alloca ptr, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %mult = alloca i32, align 4
  store ptr %rgba, ptr %rgba.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %rgba.addr, metadata !528, metadata !DIExpression()), !dbg !546
  store i32 %alpha_first, ptr %alpha_first.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %alpha_first.addr, metadata !529, metadata !DIExpression()), !dbg !547
  store i32 %w, ptr %w.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !530, metadata !DIExpression()), !dbg !548
  store i32 %h, ptr %h.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !531, metadata !DIExpression()), !dbg !549
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !532, metadata !DIExpression()), !dbg !550
  br label %while.cond, !dbg !551

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, ptr %h.addr, align 4, !dbg !552, !tbaa !167
  %dec = add nsw i32 %0, -1, !dbg !552
  store i32 %dec, ptr %h.addr, align 4, !dbg !552, !tbaa !167
  %cmp = icmp sgt i32 %0, 0, !dbg !553
  br i1 %cmp, label %while.body, label %while.end, !dbg !551

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgb) #6, !dbg !554
  tail call void @llvm.dbg.declare(metadata ptr %rgb, metadata !533, metadata !DIExpression()), !dbg !555
  %1 = load ptr, ptr %rgba.addr, align 8, !dbg !556, !tbaa !162
  %2 = load i32, ptr %alpha_first.addr, align 4, !dbg !557, !tbaa !167
  %tobool = icmp ne i32 %2, 0, !dbg !557
  %3 = zext i1 %tobool to i64, !dbg !557
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !557
  %idx.ext = sext i32 %cond to i64, !dbg !558
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !558
  store ptr %add.ptr, ptr %rgb, align 8, !dbg !555, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #6, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %alpha, metadata !536, metadata !DIExpression()), !dbg !560
  %4 = load ptr, ptr %rgba.addr, align 8, !dbg !561, !tbaa !162
  %5 = load i32, ptr %alpha_first.addr, align 4, !dbg !562, !tbaa !167
  %tobool1 = icmp ne i32 %5, 0, !dbg !562
  %6 = zext i1 %tobool1 to i64, !dbg !562
  %cond2 = select i1 %tobool1, i32 0, i32 3, !dbg !562
  %idx.ext3 = sext i32 %cond2 to i64, !dbg !563
  %add.ptr4 = getelementptr inbounds i8, ptr %4, i64 %idx.ext3, !dbg !563
  store ptr %add.ptr4, ptr %alpha, align 8, !dbg !560, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !564
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !538, metadata !DIExpression()), !dbg !565
  store i32 0, ptr %i, align 4, !dbg !566, !tbaa !167
  br label %for.cond, !dbg !567

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %i, align 4, !dbg !568, !tbaa !167
  %8 = load i32, ptr %w.addr, align 4, !dbg !569, !tbaa !167
  %cmp5 = icmp slt i32 %7, %8, !dbg !570
  br i1 %cmp5, label %for.body, label %for.end, !dbg !571

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #6, !dbg !572
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !539, metadata !DIExpression()), !dbg !573
  %9 = load ptr, ptr %alpha, align 8, !dbg !574, !tbaa !162
  %10 = load i32, ptr %i, align 4, !dbg !575, !tbaa !167
  %mul = mul nsw i32 4, %10, !dbg !576
  %idxprom = sext i32 %mul to i64, !dbg !574
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom, !dbg !574
  %11 = load i8, ptr %arrayidx, align 1, !dbg !574, !tbaa !261
  %conv = zext i8 %11 to i32, !dbg !574
  store i32 %conv, ptr %a, align 4, !dbg !573, !tbaa !167
  %12 = load i32, ptr %a, align 4, !dbg !577, !tbaa !167
  %cmp6 = icmp ne i32 %12, 255, !dbg !578
  br i1 %cmp6, label %if.then, label %if.end, !dbg !579

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult) #6, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %mult, metadata !543, metadata !DIExpression()), !dbg !581
  %13 = load i32, ptr %a, align 4, !dbg !582, !tbaa !167
  %mul8 = mul i32 %13, 32897, !dbg !582
  store i32 %mul8, ptr %mult, align 4, !dbg !581, !tbaa !167
  %14 = load ptr, ptr %rgb, align 8, !dbg !583, !tbaa !162
  %15 = load i32, ptr %i, align 4, !dbg !583, !tbaa !167
  %mul9 = mul nsw i32 4, %15, !dbg !583
  %add = add nsw i32 %mul9, 0, !dbg !583
  %idxprom10 = sext i32 %add to i64, !dbg !583
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 %idxprom10, !dbg !583
  %16 = load i8, ptr %arrayidx11, align 1, !dbg !583, !tbaa !261
  %conv12 = zext i8 %16 to i32, !dbg !583
  %17 = load i32, ptr %mult, align 4, !dbg !583, !tbaa !167
  %mul13 = mul i32 %conv12, %17, !dbg !583
  %shr = lshr i32 %mul13, 23, !dbg !583
  %conv14 = trunc i32 %shr to i8, !dbg !583
  %18 = load ptr, ptr %rgb, align 8, !dbg !584, !tbaa !162
  %19 = load i32, ptr %i, align 4, !dbg !585, !tbaa !167
  %mul15 = mul nsw i32 4, %19, !dbg !586
  %add16 = add nsw i32 %mul15, 0, !dbg !587
  %idxprom17 = sext i32 %add16 to i64, !dbg !584
  %arrayidx18 = getelementptr inbounds i8, ptr %18, i64 %idxprom17, !dbg !584
  store i8 %conv14, ptr %arrayidx18, align 1, !dbg !588, !tbaa !261
  %20 = load ptr, ptr %rgb, align 8, !dbg !589, !tbaa !162
  %21 = load i32, ptr %i, align 4, !dbg !589, !tbaa !167
  %mul19 = mul nsw i32 4, %21, !dbg !589
  %add20 = add nsw i32 %mul19, 1, !dbg !589
  %idxprom21 = sext i32 %add20 to i64, !dbg !589
  %arrayidx22 = getelementptr inbounds i8, ptr %20, i64 %idxprom21, !dbg !589
  %22 = load i8, ptr %arrayidx22, align 1, !dbg !589, !tbaa !261
  %conv23 = zext i8 %22 to i32, !dbg !589
  %23 = load i32, ptr %mult, align 4, !dbg !589, !tbaa !167
  %mul24 = mul i32 %conv23, %23, !dbg !589
  %shr25 = lshr i32 %mul24, 23, !dbg !589
  %conv26 = trunc i32 %shr25 to i8, !dbg !589
  %24 = load ptr, ptr %rgb, align 8, !dbg !590, !tbaa !162
  %25 = load i32, ptr %i, align 4, !dbg !591, !tbaa !167
  %mul27 = mul nsw i32 4, %25, !dbg !592
  %add28 = add nsw i32 %mul27, 1, !dbg !593
  %idxprom29 = sext i32 %add28 to i64, !dbg !590
  %arrayidx30 = getelementptr inbounds i8, ptr %24, i64 %idxprom29, !dbg !590
  store i8 %conv26, ptr %arrayidx30, align 1, !dbg !594, !tbaa !261
  %26 = load ptr, ptr %rgb, align 8, !dbg !595, !tbaa !162
  %27 = load i32, ptr %i, align 4, !dbg !595, !tbaa !167
  %mul31 = mul nsw i32 4, %27, !dbg !595
  %add32 = add nsw i32 %mul31, 2, !dbg !595
  %idxprom33 = sext i32 %add32 to i64, !dbg !595
  %arrayidx34 = getelementptr inbounds i8, ptr %26, i64 %idxprom33, !dbg !595
  %28 = load i8, ptr %arrayidx34, align 1, !dbg !595, !tbaa !261
  %conv35 = zext i8 %28 to i32, !dbg !595
  %29 = load i32, ptr %mult, align 4, !dbg !595, !tbaa !167
  %mul36 = mul i32 %conv35, %29, !dbg !595
  %shr37 = lshr i32 %mul36, 23, !dbg !595
  %conv38 = trunc i32 %shr37 to i8, !dbg !595
  %30 = load ptr, ptr %rgb, align 8, !dbg !596, !tbaa !162
  %31 = load i32, ptr %i, align 4, !dbg !597, !tbaa !167
  %mul39 = mul nsw i32 4, %31, !dbg !598
  %add40 = add nsw i32 %mul39, 2, !dbg !599
  %idxprom41 = sext i32 %add40 to i64, !dbg !596
  %arrayidx42 = getelementptr inbounds i8, ptr %30, i64 %idxprom41, !dbg !596
  store i8 %conv38, ptr %arrayidx42, align 1, !dbg !600, !tbaa !261
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult) #6, !dbg !601
  br label %if.end, !dbg !602

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #6, !dbg !603
  br label %for.inc, !dbg !604

for.inc:                                          ; preds = %if.end
  %32 = load i32, ptr %i, align 4, !dbg !605, !tbaa !167
  %inc = add nsw i32 %32, 1, !dbg !605
  store i32 %inc, ptr %i, align 4, !dbg !605, !tbaa !167
  br label %for.cond, !dbg !606, !llvm.loop !607

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %stride.addr, align 4, !dbg !609, !tbaa !167
  %34 = load ptr, ptr %rgba.addr, align 8, !dbg !610, !tbaa !162
  %idx.ext43 = sext i32 %33 to i64, !dbg !610
  %add.ptr44 = getelementptr inbounds i8, ptr %34, i64 %idx.ext43, !dbg !610
  store ptr %add.ptr44, ptr %rgba.addr, align 8, !dbg !610, !tbaa !162
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !611
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #6, !dbg !611
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgb) #6, !dbg !611
  br label %while.cond, !dbg !551, !llvm.loop !612

while.end:                                        ; preds = %while.cond
  ret void, !dbg !613
}

; Function Attrs: nounwind uwtable
define internal i32 @DispatchAlpha_C(ptr noalias noundef %alpha, i32 noundef %alpha_stride, i32 noundef %width, i32 noundef %height, ptr noalias noundef %dst, i32 noundef %dst_stride) #0 !dbg !614 {
entry:
  %alpha.addr = alloca ptr, align 8
  %alpha_stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dst_stride.addr = alloca i32, align 4
  %alpha_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %alpha_value = alloca i32, align 4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !616, metadata !DIExpression()), !dbg !632
  store i32 %alpha_stride, ptr %alpha_stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %alpha_stride.addr, metadata !617, metadata !DIExpression()), !dbg !633
  store i32 %width, ptr %width.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !618, metadata !DIExpression()), !dbg !634
  store i32 %height, ptr %height.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %height.addr, metadata !619, metadata !DIExpression()), !dbg !635
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !620, metadata !DIExpression()), !dbg !636
  store i32 %dst_stride, ptr %dst_stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %dst_stride.addr, metadata !621, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_mask) #6, !dbg !638
  tail call void @llvm.dbg.declare(metadata ptr %alpha_mask, metadata !622, metadata !DIExpression()), !dbg !639
  store i32 255, ptr %alpha_mask, align 4, !dbg !639, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !640
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !623, metadata !DIExpression()), !dbg !641
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !640
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !624, metadata !DIExpression()), !dbg !642
  store i32 0, ptr %j, align 4, !dbg !643, !tbaa !167
  br label %for.cond, !dbg !644

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %j, align 4, !dbg !645, !tbaa !167
  %1 = load i32, ptr %height.addr, align 4, !dbg !646, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !647
  br i1 %cmp, label %for.body, label %for.end11, !dbg !648

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !649, !tbaa !167
  br label %for.cond1, !dbg !650

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !dbg !651, !tbaa !167
  %3 = load i32, ptr %width.addr, align 4, !dbg !652, !tbaa !167
  %cmp2 = icmp slt i32 %2, %3, !dbg !653
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !654

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha_value) #6, !dbg !655
  tail call void @llvm.dbg.declare(metadata ptr %alpha_value, metadata !625, metadata !DIExpression()), !dbg !656
  %4 = load ptr, ptr %alpha.addr, align 8, !dbg !657, !tbaa !162
  %5 = load i32, ptr %i, align 4, !dbg !658, !tbaa !167
  %idxprom = sext i32 %5 to i64, !dbg !657
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !657
  %6 = load i8, ptr %arrayidx, align 1, !dbg !657, !tbaa !261
  %conv = zext i8 %6 to i32, !dbg !657
  store i32 %conv, ptr %alpha_value, align 4, !dbg !656, !tbaa !167
  %7 = load i32, ptr %alpha_value, align 4, !dbg !659, !tbaa !167
  %conv4 = trunc i32 %7 to i8, !dbg !659
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !660, !tbaa !162
  %9 = load i32, ptr %i, align 4, !dbg !661, !tbaa !167
  %mul = mul nsw i32 4, %9, !dbg !662
  %idxprom5 = sext i32 %mul to i64, !dbg !660
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5, !dbg !660
  store i8 %conv4, ptr %arrayidx6, align 1, !dbg !663, !tbaa !261
  %10 = load i32, ptr %alpha_value, align 4, !dbg !664, !tbaa !167
  %11 = load i32, ptr %alpha_mask, align 4, !dbg !665, !tbaa !167
  %and = and i32 %11, %10, !dbg !665
  store i32 %and, ptr %alpha_mask, align 4, !dbg !665, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_value) #6, !dbg !666
  br label %for.inc, !dbg !667

for.inc:                                          ; preds = %for.body3
  %12 = load i32, ptr %i, align 4, !dbg !668, !tbaa !167
  %inc = add nsw i32 %12, 1, !dbg !668
  store i32 %inc, ptr %i, align 4, !dbg !668, !tbaa !167
  br label %for.cond1, !dbg !669, !llvm.loop !670

for.end:                                          ; preds = %for.cond1
  %13 = load i32, ptr %alpha_stride.addr, align 4, !dbg !672, !tbaa !167
  %14 = load ptr, ptr %alpha.addr, align 8, !dbg !673, !tbaa !162
  %idx.ext = sext i32 %13 to i64, !dbg !673
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext, !dbg !673
  store ptr %add.ptr, ptr %alpha.addr, align 8, !dbg !673, !tbaa !162
  %15 = load i32, ptr %dst_stride.addr, align 4, !dbg !674, !tbaa !167
  %16 = load ptr, ptr %dst.addr, align 8, !dbg !675, !tbaa !162
  %idx.ext7 = sext i32 %15 to i64, !dbg !675
  %add.ptr8 = getelementptr inbounds i8, ptr %16, i64 %idx.ext7, !dbg !675
  store ptr %add.ptr8, ptr %dst.addr, align 8, !dbg !675, !tbaa !162
  br label %for.inc9, !dbg !676

for.inc9:                                         ; preds = %for.end
  %17 = load i32, ptr %j, align 4, !dbg !677, !tbaa !167
  %inc10 = add nsw i32 %17, 1, !dbg !677
  store i32 %inc10, ptr %j, align 4, !dbg !677, !tbaa !167
  br label %for.cond, !dbg !678, !llvm.loop !679

for.end11:                                        ; preds = %for.cond
  %18 = load i32, ptr %alpha_mask, align 4, !dbg !681, !tbaa !167
  %cmp12 = icmp ne i32 %18, 255, !dbg !682
  %conv13 = zext i1 %cmp12 to i32, !dbg !682
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !683
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !683
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha_mask) #6, !dbg !683
  ret i32 %conv13, !dbg !684
}

; Function Attrs: nounwind uwtable
define internal void @DispatchAlphaToGreen_C(ptr noalias noundef %alpha, i32 noundef %alpha_stride, i32 noundef %width, i32 noundef %height, ptr noalias noundef %dst, i32 noundef %dst_stride) #0 !dbg !685 {
entry:
  %alpha.addr = alloca ptr, align 8
  %alpha_stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dst_stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !687, metadata !DIExpression()), !dbg !695
  store i32 %alpha_stride, ptr %alpha_stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %alpha_stride.addr, metadata !688, metadata !DIExpression()), !dbg !696
  store i32 %width, ptr %width.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !689, metadata !DIExpression()), !dbg !697
  store i32 %height, ptr %height.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %height.addr, metadata !690, metadata !DIExpression()), !dbg !698
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !691, metadata !DIExpression()), !dbg !699
  store i32 %dst_stride, ptr %dst_stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %dst_stride.addr, metadata !692, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !701
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !693, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !701
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !694, metadata !DIExpression()), !dbg !703
  store i32 0, ptr %j, align 4, !dbg !704, !tbaa !167
  br label %for.cond, !dbg !706

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %j, align 4, !dbg !707, !tbaa !167
  %1 = load i32, ptr %height.addr, align 4, !dbg !709, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !710
  br i1 %cmp, label %for.body, label %for.end10, !dbg !711

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !712, !tbaa !167
  br label %for.cond1, !dbg !715

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !dbg !716, !tbaa !167
  %3 = load i32, ptr %width.addr, align 4, !dbg !718, !tbaa !167
  %cmp2 = icmp slt i32 %2, %3, !dbg !719
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !720

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %alpha.addr, align 8, !dbg !721, !tbaa !162
  %5 = load i32, ptr %i, align 4, !dbg !723, !tbaa !167
  %idxprom = sext i32 %5 to i64, !dbg !721
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !721
  %6 = load i8, ptr %arrayidx, align 1, !dbg !721, !tbaa !261
  %conv = zext i8 %6 to i32, !dbg !721
  %shl = shl i32 %conv, 8, !dbg !724
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !725, !tbaa !162
  %8 = load i32, ptr %i, align 4, !dbg !726, !tbaa !167
  %idxprom4 = sext i32 %8 to i64, !dbg !725
  %arrayidx5 = getelementptr inbounds i32, ptr %7, i64 %idxprom4, !dbg !725
  store i32 %shl, ptr %arrayidx5, align 4, !dbg !727, !tbaa !167
  br label %for.inc, !dbg !728

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr %i, align 4, !dbg !729, !tbaa !167
  %inc = add nsw i32 %9, 1, !dbg !729
  store i32 %inc, ptr %i, align 4, !dbg !729, !tbaa !167
  br label %for.cond1, !dbg !730, !llvm.loop !731

for.end:                                          ; preds = %for.cond1
  %10 = load i32, ptr %alpha_stride.addr, align 4, !dbg !733, !tbaa !167
  %11 = load ptr, ptr %alpha.addr, align 8, !dbg !734, !tbaa !162
  %idx.ext = sext i32 %10 to i64, !dbg !734
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext, !dbg !734
  store ptr %add.ptr, ptr %alpha.addr, align 8, !dbg !734, !tbaa !162
  %12 = load i32, ptr %dst_stride.addr, align 4, !dbg !735, !tbaa !167
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !736, !tbaa !162
  %idx.ext6 = sext i32 %12 to i64, !dbg !736
  %add.ptr7 = getelementptr inbounds i32, ptr %13, i64 %idx.ext6, !dbg !736
  store ptr %add.ptr7, ptr %dst.addr, align 8, !dbg !736, !tbaa !162
  br label %for.inc8, !dbg !737

for.inc8:                                         ; preds = %for.end
  %14 = load i32, ptr %j, align 4, !dbg !738, !tbaa !167
  %inc9 = add nsw i32 %14, 1, !dbg !738
  store i32 %inc9, ptr %j, align 4, !dbg !738, !tbaa !167
  br label %for.cond, !dbg !739, !llvm.loop !740

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !742
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !742
  ret void, !dbg !742
}

; Function Attrs: nounwind uwtable
define internal i32 @ExtractAlpha_C(ptr noalias noundef %argb, i32 noundef %argb_stride, i32 noundef %width, i32 noundef %height, ptr noalias noundef %alpha, i32 noundef %alpha_stride) #0 !dbg !743 {
entry:
  %argb.addr = alloca ptr, align 8
  %argb_stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %alpha_stride.addr = alloca i32, align 4
  %alpha_mask = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %alpha_value = alloca i8, align 1
  store ptr %argb, ptr %argb.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %argb.addr, metadata !745, metadata !DIExpression()), !dbg !761
  store i32 %argb_stride, ptr %argb_stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %argb_stride.addr, metadata !746, metadata !DIExpression()), !dbg !762
  store i32 %width, ptr %width.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !747, metadata !DIExpression()), !dbg !763
  store i32 %height, ptr %height.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %height.addr, metadata !748, metadata !DIExpression()), !dbg !764
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !749, metadata !DIExpression()), !dbg !765
  store i32 %alpha_stride, ptr %alpha_stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %alpha_stride.addr, metadata !750, metadata !DIExpression()), !dbg !766
  call void @llvm.lifetime.start.p0(i64 1, ptr %alpha_mask) #6, !dbg !767
  tail call void @llvm.dbg.declare(metadata ptr %alpha_mask, metadata !751, metadata !DIExpression()), !dbg !768
  store i8 -1, ptr %alpha_mask, align 1, !dbg !768, !tbaa !261
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !769
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !752, metadata !DIExpression()), !dbg !770
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !769
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !753, metadata !DIExpression()), !dbg !771
  store i32 0, ptr %j, align 4, !dbg !772, !tbaa !167
  br label %for.cond, !dbg !773

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %j, align 4, !dbg !774, !tbaa !167
  %1 = load i32, ptr %height.addr, align 4, !dbg !775, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !776
  br i1 %cmp, label %for.body, label %for.end12, !dbg !777

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !778, !tbaa !167
  br label %for.cond1, !dbg !779

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4, !dbg !780, !tbaa !167
  %3 = load i32, ptr %width.addr, align 4, !dbg !781, !tbaa !167
  %cmp2 = icmp slt i32 %2, %3, !dbg !782
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !783

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 1, ptr %alpha_value) #6, !dbg !784
  tail call void @llvm.dbg.declare(metadata ptr %alpha_value, metadata !754, metadata !DIExpression()), !dbg !785
  %4 = load ptr, ptr %argb.addr, align 8, !dbg !786, !tbaa !162
  %5 = load i32, ptr %i, align 4, !dbg !787, !tbaa !167
  %mul = mul nsw i32 4, %5, !dbg !788
  %idxprom = sext i32 %mul to i64, !dbg !786
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !786
  %6 = load i8, ptr %arrayidx, align 1, !dbg !786, !tbaa !261
  store i8 %6, ptr %alpha_value, align 1, !dbg !785, !tbaa !261
  %7 = load i8, ptr %alpha_value, align 1, !dbg !789, !tbaa !261
  %8 = load ptr, ptr %alpha.addr, align 8, !dbg !790, !tbaa !162
  %9 = load i32, ptr %i, align 4, !dbg !791, !tbaa !167
  %idxprom4 = sext i32 %9 to i64, !dbg !790
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4, !dbg !790
  store i8 %7, ptr %arrayidx5, align 1, !dbg !792, !tbaa !261
  %10 = load i8, ptr %alpha_value, align 1, !dbg !793, !tbaa !261
  %conv = zext i8 %10 to i32, !dbg !793
  %11 = load i8, ptr %alpha_mask, align 1, !dbg !794, !tbaa !261
  %conv6 = zext i8 %11 to i32, !dbg !794
  %and = and i32 %conv6, %conv, !dbg !794
  %conv7 = trunc i32 %and to i8, !dbg !794
  store i8 %conv7, ptr %alpha_mask, align 1, !dbg !794, !tbaa !261
  call void @llvm.lifetime.end.p0(i64 1, ptr %alpha_value) #6, !dbg !795
  br label %for.inc, !dbg !796

for.inc:                                          ; preds = %for.body3
  %12 = load i32, ptr %i, align 4, !dbg !797, !tbaa !167
  %inc = add nsw i32 %12, 1, !dbg !797
  store i32 %inc, ptr %i, align 4, !dbg !797, !tbaa !167
  br label %for.cond1, !dbg !798, !llvm.loop !799

for.end:                                          ; preds = %for.cond1
  %13 = load i32, ptr %argb_stride.addr, align 4, !dbg !801, !tbaa !167
  %14 = load ptr, ptr %argb.addr, align 8, !dbg !802, !tbaa !162
  %idx.ext = sext i32 %13 to i64, !dbg !802
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext, !dbg !802
  store ptr %add.ptr, ptr %argb.addr, align 8, !dbg !802, !tbaa !162
  %15 = load i32, ptr %alpha_stride.addr, align 4, !dbg !803, !tbaa !167
  %16 = load ptr, ptr %alpha.addr, align 8, !dbg !804, !tbaa !162
  %idx.ext8 = sext i32 %15 to i64, !dbg !804
  %add.ptr9 = getelementptr inbounds i8, ptr %16, i64 %idx.ext8, !dbg !804
  store ptr %add.ptr9, ptr %alpha.addr, align 8, !dbg !804, !tbaa !162
  br label %for.inc10, !dbg !805

for.inc10:                                        ; preds = %for.end
  %17 = load i32, ptr %j, align 4, !dbg !806, !tbaa !167
  %inc11 = add nsw i32 %17, 1, !dbg !806
  store i32 %inc11, ptr %j, align 4, !dbg !806, !tbaa !167
  br label %for.cond, !dbg !807, !llvm.loop !808

for.end12:                                        ; preds = %for.cond
  %18 = load i8, ptr %alpha_mask, align 1, !dbg !810, !tbaa !261
  %conv13 = zext i8 %18 to i32, !dbg !810
  %cmp14 = icmp eq i32 %conv13, 255, !dbg !811
  %conv15 = zext i1 %cmp14 to i32, !dbg !811
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !812
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !812
  call void @llvm.lifetime.end.p0(i64 1, ptr %alpha_mask) #6, !dbg !812
  ret i32 %conv15, !dbg !813
}

; Function Attrs: nounwind uwtable
define internal void @ExtractGreen_C(ptr noalias noundef %argb, ptr noalias noundef %alpha, i32 noundef %size) #0 !dbg !814 {
entry:
  %argb.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %argb, ptr %argb.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %argb.addr, metadata !816, metadata !DIExpression()), !dbg !820
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !817, metadata !DIExpression()), !dbg !821
  store i32 %size, ptr %size.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !818, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !823
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !819, metadata !DIExpression()), !dbg !824
  store i32 0, ptr %i, align 4, !dbg !825, !tbaa !167
  br label %for.cond, !dbg !827

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !828, !tbaa !167
  %1 = load i32, ptr %size.addr, align 4, !dbg !830, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !831
  br i1 %cmp, label %for.body, label %for.end, !dbg !832

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argb.addr, align 8, !dbg !833, !tbaa !162
  %3 = load i32, ptr %i, align 4, !dbg !834, !tbaa !167
  %idxprom = sext i32 %3 to i64, !dbg !833
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !833
  %4 = load i32, ptr %arrayidx, align 4, !dbg !833, !tbaa !167
  %shr = lshr i32 %4, 8, !dbg !835
  %conv = trunc i32 %shr to i8, !dbg !833
  %5 = load ptr, ptr %alpha.addr, align 8, !dbg !836, !tbaa !162
  %6 = load i32, ptr %i, align 4, !dbg !837, !tbaa !167
  %idxprom1 = sext i32 %6 to i64, !dbg !836
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %idxprom1, !dbg !836
  store i8 %conv, ptr %arrayidx2, align 1, !dbg !838, !tbaa !261
  br label %for.inc, !dbg !836

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !839, !tbaa !167
  %inc = add nsw i32 %7, 1, !dbg !839
  store i32 %inc, ptr %i, align 4, !dbg !839, !tbaa !167
  br label %for.cond, !dbg !840, !llvm.loop !841

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !843
  ret void, !dbg !843
}

; Function Attrs: nounwind uwtable
define internal i32 @HasAlpha8b_C(ptr noundef %src, i32 noundef %length) #0 !dbg !844 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !846, metadata !DIExpression()), !dbg !848
  store i32 %length, ptr %length.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !847, metadata !DIExpression()), !dbg !849
  br label %while.cond, !dbg !850

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %length.addr, align 4, !dbg !851, !tbaa !167
  %dec = add nsw i32 %0, -1, !dbg !851
  store i32 %dec, ptr %length.addr, align 4, !dbg !851, !tbaa !167
  %cmp = icmp sgt i32 %0, 0, !dbg !852
  br i1 %cmp, label %while.body, label %while.end, !dbg !850

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !853, !tbaa !162
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !853
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !853, !tbaa !162
  %2 = load i8, ptr %1, align 1, !dbg !855, !tbaa !261
  %conv = zext i8 %2 to i32, !dbg !855
  %cmp1 = icmp ne i32 %conv, 255, !dbg !856
  br i1 %cmp1, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4, !dbg !858
  br label %return, !dbg !858

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !850, !llvm.loop !859

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !861
  br label %return, !dbg !861

return:                                           ; preds = %while.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !862
  ret i32 %3, !dbg !862
}

; Function Attrs: nounwind uwtable
define internal i32 @HasAlpha32b_C(ptr noundef %src, i32 noundef %length) #0 !dbg !863 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !865, metadata !DIExpression()), !dbg !868
  store i32 %length, ptr %length.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !866, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !870
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !867, metadata !DIExpression()), !dbg !871
  store i32 0, ptr %x, align 4, !dbg !872, !tbaa !167
  br label %for.cond, !dbg !874

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %length.addr, align 4, !dbg !875, !tbaa !167
  %dec = add nsw i32 %0, -1, !dbg !875
  store i32 %dec, ptr %length.addr, align 4, !dbg !875, !tbaa !167
  %cmp = icmp sgt i32 %0, 0, !dbg !877
  br i1 %cmp, label %for.body, label %for.end, !dbg !878

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !879, !tbaa !162
  %2 = load i32, ptr %x, align 4, !dbg !881, !tbaa !167
  %idxprom = sext i32 %2 to i64, !dbg !879
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom, !dbg !879
  %3 = load i8, ptr %arrayidx, align 1, !dbg !879, !tbaa !261
  %conv = zext i8 %3 to i32, !dbg !879
  %cmp1 = icmp ne i32 %conv, 255, !dbg !882
  br i1 %cmp1, label %if.then, label %if.end, !dbg !883

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !884

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !885

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %x, align 4, !dbg !886, !tbaa !167
  %add = add nsw i32 %4, 4, !dbg !886
  store i32 %add, ptr %x, align 4, !dbg !886, !tbaa !167
  br label %for.cond, !dbg !887, !llvm.loop !888

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !890

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !891
  %5 = load i32, ptr %retval, align 4, !dbg !891
  ret i32 %5, !dbg !891
}

; Function Attrs: nounwind uwtable
define internal void @AlphaReplace_C(ptr noundef %src, i32 noundef %length, i32 noundef %color) #0 !dbg !892 {
entry:
  %src.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !894, metadata !DIExpression()), !dbg !898
  store i32 %length, ptr %length.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !895, metadata !DIExpression()), !dbg !899
  store i32 %color, ptr %color.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !896, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !901
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !897, metadata !DIExpression()), !dbg !902
  store i32 0, ptr %x, align 4, !dbg !903, !tbaa !167
  br label %for.cond, !dbg !905

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4, !dbg !906, !tbaa !167
  %1 = load i32, ptr %length.addr, align 4, !dbg !908, !tbaa !167
  %cmp = icmp slt i32 %0, %1, !dbg !909
  br i1 %cmp, label %for.body, label %for.end, !dbg !910

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %src.addr, align 8, !dbg !911, !tbaa !162
  %3 = load i32, ptr %x, align 4, !dbg !913, !tbaa !167
  %idxprom = sext i32 %3 to i64, !dbg !911
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !911
  %4 = load i32, ptr %arrayidx, align 4, !dbg !911, !tbaa !167
  %shr = lshr i32 %4, 24, !dbg !914
  %cmp1 = icmp eq i32 %shr, 0, !dbg !915
  br i1 %cmp1, label %if.then, label %if.end, !dbg !916

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %color.addr, align 4, !dbg !917, !tbaa !167
  %6 = load ptr, ptr %src.addr, align 8, !dbg !918, !tbaa !162
  %7 = load i32, ptr %x, align 4, !dbg !919, !tbaa !167
  %idxprom2 = sext i32 %7 to i64, !dbg !918
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 %idxprom2, !dbg !918
  store i32 %5, ptr %arrayidx3, align 4, !dbg !920, !tbaa !167
  br label %if.end, !dbg !918

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !921

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %x, align 4, !dbg !922, !tbaa !167
  %inc = add nsw i32 %8, 1, !dbg !922
  store i32 %inc, ptr %x, align 4, !dbg !922, !tbaa !167
  br label %for.cond, !dbg !923, !llvm.loop !924

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !926
  ret void, !dbg !926
}

declare !dbg !927 void @WebPInitAlphaProcessingSSE2() #4

declare !dbg !928 void @WebPInitAlphaProcessingSSE41() #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @ApplyAlphaMultiply4444_C(ptr noundef %rgba4444, i32 noundef %w, i32 noundef %h, i32 noundef %stride, i32 noundef %rg_byte_pos) #2 !dbg !929 {
entry:
  %rgba4444.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %rg_byte_pos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rg = alloca i32, align 4
  %ba = alloca i32, align 4
  %a = alloca i8, align 1
  %mult = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store ptr %rgba4444, ptr %rgba4444.addr, align 8, !tbaa !162
  tail call void @llvm.dbg.declare(metadata ptr %rgba4444.addr, metadata !931, metadata !DIExpression()), !dbg !948
  store i32 %w, ptr %w.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !932, metadata !DIExpression()), !dbg !949
  store i32 %h, ptr %h.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !933, metadata !DIExpression()), !dbg !950
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !934, metadata !DIExpression()), !dbg !951
  store i32 %rg_byte_pos, ptr %rg_byte_pos.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %rg_byte_pos.addr, metadata !935, metadata !DIExpression()), !dbg !952
  br label %while.cond, !dbg !953

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, ptr %h.addr, align 4, !dbg !954, !tbaa !167
  %dec = add nsw i32 %0, -1, !dbg !954
  store i32 %dec, ptr %h.addr, align 4, !dbg !954, !tbaa !167
  %cmp = icmp sgt i32 %0, 0, !dbg !955
  br i1 %cmp, label %while.body, label %while.end, !dbg !953

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !956
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !936, metadata !DIExpression()), !dbg !957
  store i32 0, ptr %i, align 4, !dbg !958, !tbaa !167
  br label %for.cond, !dbg !959

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, ptr %i, align 4, !dbg !960, !tbaa !167
  %2 = load i32, ptr %w.addr, align 4, !dbg !961, !tbaa !167
  %cmp1 = icmp slt i32 %1, %2, !dbg !962
  br i1 %cmp1, label %for.body, label %for.end, !dbg !963

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %rg) #6, !dbg !964
  tail call void @llvm.dbg.declare(metadata ptr %rg, metadata !938, metadata !DIExpression()), !dbg !965
  %3 = load ptr, ptr %rgba4444.addr, align 8, !dbg !966, !tbaa !162
  %4 = load i32, ptr %i, align 4, !dbg !967, !tbaa !167
  %mul = mul nsw i32 2, %4, !dbg !968
  %5 = load i32, ptr %rg_byte_pos.addr, align 4, !dbg !969, !tbaa !167
  %add = add nsw i32 %mul, %5, !dbg !970
  %idxprom = sext i32 %add to i64, !dbg !966
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom, !dbg !966
  %6 = load i8, ptr %arrayidx, align 1, !dbg !966, !tbaa !261
  %conv = zext i8 %6 to i32, !dbg !966
  store i32 %conv, ptr %rg, align 4, !dbg !965, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 4, ptr %ba) #6, !dbg !971
  tail call void @llvm.dbg.declare(metadata ptr %ba, metadata !942, metadata !DIExpression()), !dbg !972
  %7 = load ptr, ptr %rgba4444.addr, align 8, !dbg !973, !tbaa !162
  %8 = load i32, ptr %i, align 4, !dbg !974, !tbaa !167
  %mul2 = mul nsw i32 2, %8, !dbg !975
  %9 = load i32, ptr %rg_byte_pos.addr, align 4, !dbg !976, !tbaa !167
  %xor = xor i32 %9, 1, !dbg !977
  %add3 = add nsw i32 %mul2, %xor, !dbg !978
  %idxprom4 = sext i32 %add3 to i64, !dbg !973
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %idxprom4, !dbg !973
  %10 = load i8, ptr %arrayidx5, align 1, !dbg !973, !tbaa !261
  %conv6 = zext i8 %10 to i32, !dbg !973
  store i32 %conv6, ptr %ba, align 4, !dbg !972, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 1, ptr %a) #6, !dbg !979
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !943, metadata !DIExpression()), !dbg !980
  %11 = load i32, ptr %ba, align 4, !dbg !981, !tbaa !167
  %and = and i32 %11, 15, !dbg !982
  %conv7 = trunc i32 %and to i8, !dbg !981
  store i8 %conv7, ptr %a, align 1, !dbg !980, !tbaa !261
  call void @llvm.lifetime.start.p0(i64 4, ptr %mult) #6, !dbg !983
  tail call void @llvm.dbg.declare(metadata ptr %mult, metadata !944, metadata !DIExpression()), !dbg !984
  %12 = load i8, ptr %a, align 1, !dbg !985, !tbaa !261
  %conv8 = zext i8 %12 to i32, !dbg !985
  %mul9 = mul nsw i32 %conv8, 4369, !dbg !985
  store i32 %mul9, ptr %mult, align 4, !dbg !984, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #6, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !945, metadata !DIExpression()), !dbg !987
  %13 = load i32, ptr %rg, align 4, !dbg !988, !tbaa !167
  %conv10 = trunc i32 %13 to i8, !dbg !988
  %call = call zeroext i8 @dither_hi(i8 noundef zeroext %conv10), !dbg !989
  %14 = load i32, ptr %mult, align 4, !dbg !990, !tbaa !167
  %call11 = call zeroext i8 @multiply(i8 noundef zeroext %call, i32 noundef %14), !dbg !991
  store i8 %call11, ptr %r, align 1, !dbg !987, !tbaa !261
  call void @llvm.lifetime.start.p0(i64 1, ptr %g) #6, !dbg !992
  tail call void @llvm.dbg.declare(metadata ptr %g, metadata !946, metadata !DIExpression()), !dbg !993
  %15 = load i32, ptr %rg, align 4, !dbg !994, !tbaa !167
  %conv12 = trunc i32 %15 to i8, !dbg !994
  %call13 = call zeroext i8 @dither_lo(i8 noundef zeroext %conv12), !dbg !995
  %16 = load i32, ptr %mult, align 4, !dbg !996, !tbaa !167
  %call14 = call zeroext i8 @multiply(i8 noundef zeroext %call13, i32 noundef %16), !dbg !997
  store i8 %call14, ptr %g, align 1, !dbg !993, !tbaa !261
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #6, !dbg !998
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !947, metadata !DIExpression()), !dbg !999
  %17 = load i32, ptr %ba, align 4, !dbg !1000, !tbaa !167
  %conv15 = trunc i32 %17 to i8, !dbg !1000
  %call16 = call zeroext i8 @dither_hi(i8 noundef zeroext %conv15), !dbg !1001
  %18 = load i32, ptr %mult, align 4, !dbg !1002, !tbaa !167
  %call17 = call zeroext i8 @multiply(i8 noundef zeroext %call16, i32 noundef %18), !dbg !1003
  store i8 %call17, ptr %b, align 1, !dbg !999, !tbaa !261
  %19 = load i8, ptr %r, align 1, !dbg !1004, !tbaa !261
  %conv18 = zext i8 %19 to i32, !dbg !1004
  %and19 = and i32 %conv18, 240, !dbg !1005
  %20 = load i8, ptr %g, align 1, !dbg !1006, !tbaa !261
  %conv20 = zext i8 %20 to i32, !dbg !1006
  %shr = ashr i32 %conv20, 4, !dbg !1007
  %and21 = and i32 %shr, 15, !dbg !1008
  %or = or i32 %and19, %and21, !dbg !1009
  %conv22 = trunc i32 %or to i8, !dbg !1010
  %21 = load ptr, ptr %rgba4444.addr, align 8, !dbg !1011, !tbaa !162
  %22 = load i32, ptr %i, align 4, !dbg !1012, !tbaa !167
  %mul23 = mul nsw i32 2, %22, !dbg !1013
  %23 = load i32, ptr %rg_byte_pos.addr, align 4, !dbg !1014, !tbaa !167
  %add24 = add nsw i32 %mul23, %23, !dbg !1015
  %idxprom25 = sext i32 %add24 to i64, !dbg !1011
  %arrayidx26 = getelementptr inbounds i8, ptr %21, i64 %idxprom25, !dbg !1011
  store i8 %conv22, ptr %arrayidx26, align 1, !dbg !1016, !tbaa !261
  %24 = load i8, ptr %b, align 1, !dbg !1017, !tbaa !261
  %conv27 = zext i8 %24 to i32, !dbg !1017
  %and28 = and i32 %conv27, 240, !dbg !1018
  %25 = load i8, ptr %a, align 1, !dbg !1019, !tbaa !261
  %conv29 = zext i8 %25 to i32, !dbg !1019
  %or30 = or i32 %and28, %conv29, !dbg !1020
  %conv31 = trunc i32 %or30 to i8, !dbg !1021
  %26 = load ptr, ptr %rgba4444.addr, align 8, !dbg !1022, !tbaa !162
  %27 = load i32, ptr %i, align 4, !dbg !1023, !tbaa !167
  %mul32 = mul nsw i32 2, %27, !dbg !1024
  %28 = load i32, ptr %rg_byte_pos.addr, align 4, !dbg !1025, !tbaa !167
  %xor33 = xor i32 %28, 1, !dbg !1026
  %add34 = add nsw i32 %mul32, %xor33, !dbg !1027
  %idxprom35 = sext i32 %add34 to i64, !dbg !1022
  %arrayidx36 = getelementptr inbounds i8, ptr %26, i64 %idxprom35, !dbg !1022
  store i8 %conv31, ptr %arrayidx36, align 1, !dbg !1028, !tbaa !261
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #6, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 1, ptr %g) #6, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #6, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 4, ptr %mult) #6, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 1, ptr %a) #6, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 4, ptr %ba) #6, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 4, ptr %rg) #6, !dbg !1029
  br label %for.inc, !dbg !1030

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4, !dbg !1031, !tbaa !167
  %inc = add nsw i32 %29, 1, !dbg !1031
  store i32 %inc, ptr %i, align 4, !dbg !1031, !tbaa !167
  br label %for.cond, !dbg !1032, !llvm.loop !1033

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %stride.addr, align 4, !dbg !1035, !tbaa !167
  %31 = load ptr, ptr %rgba4444.addr, align 8, !dbg !1036, !tbaa !162
  %idx.ext = sext i32 %30 to i64, !dbg !1036
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %idx.ext, !dbg !1036
  store ptr %add.ptr, ptr %rgba4444.addr, align 8, !dbg !1036, !tbaa !162
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1037
  br label %while.cond, !dbg !953, !llvm.loop !1038

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1039
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @multiply(i8 noundef zeroext %x, i32 noundef %m) #2 !dbg !1040 {
entry:
  %x.addr = alloca i8, align 1
  %m.addr = alloca i32, align 4
  store i8 %x, ptr %x.addr, align 1, !tbaa !261
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1044, metadata !DIExpression()), !dbg !1046
  store i32 %m, ptr %m.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !1045, metadata !DIExpression()), !dbg !1047
  %0 = load i8, ptr %x.addr, align 1, !dbg !1048, !tbaa !261
  %conv = zext i8 %0 to i32, !dbg !1048
  %1 = load i32, ptr %m.addr, align 4, !dbg !1049, !tbaa !167
  %mul = mul i32 %conv, %1, !dbg !1050
  %shr = lshr i32 %mul, 16, !dbg !1051
  %conv1 = trunc i32 %shr to i8, !dbg !1052
  ret i8 %conv1, !dbg !1053
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @dither_hi(i8 noundef zeroext %x) #2 !dbg !1054 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1, !tbaa !261
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1058, metadata !DIExpression()), !dbg !1059
  %0 = load i8, ptr %x.addr, align 1, !dbg !1060, !tbaa !261
  %conv = zext i8 %0 to i32, !dbg !1060
  %and = and i32 %conv, 240, !dbg !1061
  %1 = load i8, ptr %x.addr, align 1, !dbg !1062, !tbaa !261
  %conv1 = zext i8 %1 to i32, !dbg !1062
  %shr = ashr i32 %conv1, 4, !dbg !1063
  %or = or i32 %and, %shr, !dbg !1064
  %conv2 = trunc i32 %or to i8, !dbg !1065
  ret i8 %conv2, !dbg !1066
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @dither_lo(i8 noundef zeroext %x) #2 !dbg !1067 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1, !tbaa !261
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  %0 = load i8, ptr %x.addr, align 1, !dbg !1071, !tbaa !261
  %conv = zext i8 %0 to i32, !dbg !1071
  %and = and i32 %conv, 15, !dbg !1072
  %1 = load i8, ptr %x.addr, align 1, !dbg !1073, !tbaa !261
  %conv1 = zext i8 %1 to i32, !dbg !1073
  %shl = shl i32 %conv1, 4, !dbg !1074
  %or = or i32 %and, %shl, !dbg !1075
  %conv2 = trunc i32 %or to i8, !dbg !1076
  ret i8 %conv2, !dbg !1077
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MakeARGB32(i32 noundef %a, i32 noundef %r, i32 noundef %g, i32 noundef %b) #2 !dbg !1078 {
entry:
  %a.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1082, metadata !DIExpression()), !dbg !1086
  store i32 %r, ptr %r.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1083, metadata !DIExpression()), !dbg !1087
  store i32 %g, ptr %g.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !1084, metadata !DIExpression()), !dbg !1088
  store i32 %b, ptr %b.addr, align 4, !tbaa !167
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1085, metadata !DIExpression()), !dbg !1089
  %0 = load i32, ptr %a.addr, align 4, !dbg !1090, !tbaa !167
  %shl = shl i32 %0, 24, !dbg !1091
  %1 = load i32, ptr %r.addr, align 4, !dbg !1092, !tbaa !167
  %shl1 = shl i32 %1, 16, !dbg !1093
  %or = or i32 %shl, %shl1, !dbg !1094
  %2 = load i32, ptr %g.addr, align 4, !dbg !1095, !tbaa !167
  %shl2 = shl i32 %2, 8, !dbg !1096
  %or3 = or i32 %or, %shl2, !dbg !1097
  %3 = load i32, ptr %b.addr, align 4, !dbg !1098, !tbaa !167
  %or4 = or i32 %or3, %3, !dbg !1099
  ret i32 %or4, !dbg !1100
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "WebPMultARGBRow", scope: !2, file: !3, line: 181, type: !135, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "alpha_processing.c", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/dsp", checksumkind: CSK_MD5, checksum: "fbaf231e62b9c27d5c41dc1c79dd43d2")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 229, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../src/dsp/cpu.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/dsp", checksumkind: CSK_MD5, checksum: "fac006d6da3a848ac2e3ccd8a8414620")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "kSSE2", value: 0)
!10 = !DIEnumerator(name: "kSSE3", value: 1)
!11 = !DIEnumerator(name: "kSlowSSSE3", value: 2)
!12 = !DIEnumerator(name: "kSSE4_1", value: 3)
!13 = !DIEnumerator(name: "kAVX", value: 4)
!14 = !DIEnumerator(name: "kAVX2", value: 5)
!15 = !DIEnumerator(name: "kNEON", value: 6)
!16 = !DIEnumerator(name: "kMIPS32", value: 7)
!17 = !DIEnumerator(name: "kMIPSdspR2", value: 8)
!18 = !DIEnumerator(name: "kMSA", value: 9)
!19 = !{!20, !25, !31, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !7)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "VP8CPUInfo", file: !6, line: 247, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "CPUFeature", file: !6, line: 240, baseType: !5)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !{!33, !39, !0, !72, !87, !92, !97, !102, !108, !110, !118, !123, !128, !130}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "WebPInitAlphaProcessing_body_last_cpuinfo_used", scope: !35, file: !3, line: 433, type: !38, isLocal: true, isDefinition: true)
!35 = distinct !DISubprogram(name: "WebPInitAlphaProcessing", scope: !3, file: !3, line: 433, type: !36, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{null}
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "WebPInitAlphaProcessing_body_lock", scope: !35, file: !3, line: 433, type: !41, isLocal: true, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !42, line: 67, size: 320, elements: !44)
!44 = !{!45, !65, !70}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !43, file: !42, line: 69, baseType: !46, size: 320)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !47, line: 22, size: 320, elements: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!48 = !{!49, !50, !51, !52, !53, !54, !56, !57}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !46, file: !47, line: 24, baseType: !29, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !46, file: !47, line: 25, baseType: !7, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !46, file: !47, line: 26, baseType: !29, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !46, file: !47, line: 28, baseType: !7, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !46, file: !47, line: 32, baseType: !29, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !46, file: !47, line: 34, baseType: !55, size: 16, offset: 160)
!55 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !46, file: !47, line: 35, baseType: !55, size: 16, offset: 176)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !46, file: !47, line: 36, baseType: !58, size: 128, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !59, line: 55, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !59, line: 51, size: 128, elements: !61)
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !60, file: !59, line: 53, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !60, file: !59, line: 54, baseType: !63, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !43, file: !42, line: 70, baseType: !66, size: 320)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 320, elements: !68)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !{!69}
!69 = !DISubrange(count: 40)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !43, file: !42, line: 71, baseType: !71, size: 64)
!71 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "WebPMultRow", scope: !2, file: !3, line: 182, type: !74, isLocal: false, isDefinition: true)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !83, !29, !29}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "WebPApplyAlphaMultiply", scope: !2, file: !3, line: 402, type: !89, isLocal: false, isDefinition: true)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !79, !29, !29, !29, !29}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "WebPApplyAlphaMultiply4444", scope: !2, file: !3, line: 403, type: !94, isLocal: false, isDefinition: true)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !79, !29, !29, !29}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "WebPDispatchAlpha", scope: !2, file: !3, line: 404, type: !99, isLocal: false, isDefinition: true)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!29, !84, !29, !29, !29, !78, !29}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "WebPDispatchAlphaToGreen", scope: !2, file: !3, line: 406, type: !104, isLocal: false, isDefinition: true)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !84, !29, !29, !29, !107, !29}
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "WebPExtractAlpha", scope: !2, file: !3, line: 408, type: !99, isLocal: false, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "WebPExtractGreen", scope: !2, file: !3, line: 410, type: !112, isLocal: false, isDefinition: true)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !78, !29}
!115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "WebPPackRGB", scope: !2, file: !3, line: 416, type: !120, isLocal: false, isDefinition: true)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !84, !84, !84, !29, !29, !107}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "WebPHasAlpha8b", scope: !2, file: !3, line: 421, type: !125, isLocal: false, isDefinition: true)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!29, !85, !29}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "WebPHasAlpha32b", scope: !2, file: !3, line: 422, type: !125, isLocal: false, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "WebPAlphaReplace", scope: !2, file: !3, line: 423, type: !132, isLocal: false, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !20, !29, !21}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, !29, !29}
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!139 = !{i32 7, !"Dwarf Version", i32 5}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{i32 1, !"wchar_size", i32 4}
!142 = !{i32 8, !"PIC Level", i32 2}
!143 = !{i32 7, !"uwtable", i32 2}
!144 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!145 = distinct !DISubprogram(name: "WebPMultARGBRow_C", scope: !3, file: !3, line: 140, type: !136, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!146 = !{!147, !148, !149, !150, !151, !155, !160, !161}
!147 = !DILocalVariable(name: "ptr", arg: 1, scope: !145, file: !3, line: 140, type: !138)
!148 = !DILocalVariable(name: "width", arg: 2, scope: !145, file: !3, line: 140, type: !29)
!149 = !DILocalVariable(name: "inverse", arg: 3, scope: !145, file: !3, line: 140, type: !29)
!150 = !DILocalVariable(name: "x", scope: !145, file: !3, line: 141, type: !29)
!151 = !DILocalVariable(name: "argb", scope: !152, file: !3, line: 143, type: !117)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 142, column: 31)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 142, column: 3)
!154 = distinct !DILexicalBlock(scope: !145, file: !3, line: 142, column: 3)
!155 = !DILocalVariable(name: "alpha", scope: !156, file: !3, line: 148, type: !117)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 147, column: 14)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 145, column: 11)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 144, column: 29)
!159 = distinct !DILexicalBlock(scope: !152, file: !3, line: 144, column: 9)
!160 = !DILocalVariable(name: "scale", scope: !156, file: !3, line: 149, type: !117)
!161 = !DILocalVariable(name: "out", scope: !156, file: !3, line: 150, type: !21)
!162 = !{!163, !163, i64 0}
!163 = !{!"any pointer", !164, i64 0}
!164 = !{!"omnipotent char", !165, i64 0}
!165 = !{!"Simple C/C++ TBAA"}
!166 = !DILocation(line: 140, column: 40, scope: !145)
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !164, i64 0}
!169 = !DILocation(line: 140, column: 49, scope: !145)
!170 = !DILocation(line: 140, column: 60, scope: !145)
!171 = !DILocation(line: 141, column: 3, scope: !145)
!172 = !DILocation(line: 141, column: 7, scope: !145)
!173 = !DILocation(line: 142, column: 10, scope: !154)
!174 = !DILocation(line: 142, column: 8, scope: !154)
!175 = !DILocation(line: 142, column: 15, scope: !153)
!176 = !DILocation(line: 142, column: 19, scope: !153)
!177 = !DILocation(line: 142, column: 17, scope: !153)
!178 = !DILocation(line: 142, column: 3, scope: !154)
!179 = !DILocation(line: 143, column: 5, scope: !152)
!180 = !DILocation(line: 143, column: 20, scope: !152)
!181 = !DILocation(line: 143, column: 27, scope: !152)
!182 = !DILocation(line: 143, column: 31, scope: !152)
!183 = !DILocation(line: 144, column: 9, scope: !159)
!184 = !DILocation(line: 144, column: 14, scope: !159)
!185 = !DILocation(line: 144, column: 9, scope: !152)
!186 = !DILocation(line: 145, column: 11, scope: !157)
!187 = !DILocation(line: 145, column: 16, scope: !157)
!188 = !DILocation(line: 145, column: 11, scope: !158)
!189 = !DILocation(line: 146, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !157, file: !3, line: 145, column: 32)
!191 = !DILocation(line: 146, column: 13, scope: !190)
!192 = !DILocation(line: 146, column: 16, scope: !190)
!193 = !DILocation(line: 147, column: 7, scope: !190)
!194 = !DILocation(line: 148, column: 9, scope: !156)
!195 = !DILocation(line: 148, column: 24, scope: !156)
!196 = !DILocation(line: 148, column: 33, scope: !156)
!197 = !DILocation(line: 148, column: 38, scope: !156)
!198 = !DILocation(line: 148, column: 45, scope: !156)
!199 = !DILocation(line: 149, column: 9, scope: !156)
!200 = !DILocation(line: 149, column: 24, scope: !156)
!201 = !DILocation(line: 149, column: 41, scope: !156)
!202 = !DILocation(line: 149, column: 48, scope: !156)
!203 = !DILocation(line: 149, column: 32, scope: !156)
!204 = !DILocation(line: 150, column: 9, scope: !156)
!205 = !DILocation(line: 150, column: 18, scope: !156)
!206 = !DILocation(line: 150, column: 24, scope: !156)
!207 = !DILocation(line: 150, column: 29, scope: !156)
!208 = !DILocation(line: 151, column: 21, scope: !156)
!209 = !DILocation(line: 151, column: 26, scope: !156)
!210 = !DILocation(line: 151, column: 33, scope: !156)
!211 = !DILocation(line: 151, column: 16, scope: !156)
!212 = !DILocation(line: 151, column: 40, scope: !156)
!213 = !DILocation(line: 151, column: 13, scope: !156)
!214 = !DILocation(line: 152, column: 21, scope: !156)
!215 = !DILocation(line: 152, column: 26, scope: !156)
!216 = !DILocation(line: 152, column: 33, scope: !156)
!217 = !DILocation(line: 152, column: 16, scope: !156)
!218 = !DILocation(line: 152, column: 40, scope: !156)
!219 = !DILocation(line: 152, column: 13, scope: !156)
!220 = !DILocation(line: 153, column: 21, scope: !156)
!221 = !DILocation(line: 153, column: 26, scope: !156)
!222 = !DILocation(line: 153, column: 33, scope: !156)
!223 = !DILocation(line: 153, column: 16, scope: !156)
!224 = !DILocation(line: 153, column: 40, scope: !156)
!225 = !DILocation(line: 153, column: 13, scope: !156)
!226 = !DILocation(line: 154, column: 18, scope: !156)
!227 = !DILocation(line: 154, column: 9, scope: !156)
!228 = !DILocation(line: 154, column: 13, scope: !156)
!229 = !DILocation(line: 154, column: 16, scope: !156)
!230 = !DILocation(line: 155, column: 7, scope: !157)
!231 = !DILocation(line: 156, column: 5, scope: !158)
!232 = !DILocation(line: 157, column: 3, scope: !153)
!233 = !DILocation(line: 157, column: 3, scope: !152)
!234 = !DILocation(line: 142, column: 26, scope: !153)
!235 = !DILocation(line: 142, column: 3, scope: !153)
!236 = distinct !{!236, !178, !237, !238}
!237 = !DILocation(line: 157, column: 3, scope: !154)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !DILocation(line: 158, column: 1, scope: !145)
!240 = distinct !DISubprogram(name: "GetScale", scope: !3, file: !3, line: 134, type: !241, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!21, !21, !29}
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "a", arg: 1, scope: !240, file: !3, line: 134, type: !21)
!245 = !DILocalVariable(name: "inverse", arg: 2, scope: !240, file: !3, line: 134, type: !29)
!246 = !DILocation(line: 134, column: 47, scope: !240)
!247 = !DILocation(line: 134, column: 54, scope: !240)
!248 = !DILocation(line: 135, column: 10, scope: !240)
!249 = !DILocation(line: 135, column: 37, scope: !240)
!250 = !DILocation(line: 135, column: 35, scope: !240)
!251 = !DILocation(line: 135, column: 41, scope: !240)
!252 = !DILocation(line: 135, column: 43, scope: !240)
!253 = !DILocation(line: 135, column: 3, scope: !240)
!254 = distinct !DISubprogram(name: "Mult", scope: !3, file: !3, line: 29, type: !255, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{!21, !80, !21}
!257 = !{!258, !259, !260}
!258 = !DILocalVariable(name: "x", arg: 1, scope: !254, file: !3, line: 29, type: !80)
!259 = !DILocalVariable(name: "mult", arg: 2, scope: !254, file: !3, line: 29, type: !21)
!260 = !DILocalVariable(name: "v", scope: !254, file: !3, line: 30, type: !117)
!261 = !{!164, !164, i64 0}
!262 = !DILocation(line: 29, column: 30, scope: !254)
!263 = !DILocation(line: 29, column: 42, scope: !254)
!264 = !DILocation(line: 30, column: 3, scope: !254)
!265 = !DILocation(line: 30, column: 18, scope: !254)
!266 = !DILocation(line: 30, column: 23, scope: !254)
!267 = !DILocation(line: 30, column: 27, scope: !254)
!268 = !DILocation(line: 30, column: 25, scope: !254)
!269 = !DILocation(line: 30, column: 32, scope: !254)
!270 = !DILocation(line: 30, column: 40, scope: !254)
!271 = !DILocation(line: 32, column: 10, scope: !254)
!272 = !DILocation(line: 33, column: 1, scope: !254)
!273 = !DILocation(line: 32, column: 3, scope: !254)
!274 = distinct !DISubprogram(name: "WebPMultRow_C", scope: !3, file: !3, line: 160, type: !75, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !285}
!276 = !DILocalVariable(name: "ptr", arg: 1, scope: !274, file: !3, line: 160, type: !77)
!277 = !DILocalVariable(name: "alpha", arg: 2, scope: !274, file: !3, line: 161, type: !83)
!278 = !DILocalVariable(name: "width", arg: 3, scope: !274, file: !3, line: 162, type: !29)
!279 = !DILocalVariable(name: "inverse", arg: 4, scope: !274, file: !3, line: 162, type: !29)
!280 = !DILocalVariable(name: "x", scope: !274, file: !3, line: 163, type: !29)
!281 = !DILocalVariable(name: "a", scope: !282, file: !3, line: 165, type: !117)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 164, column: 31)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 164, column: 3)
!284 = distinct !DILexicalBlock(scope: !274, file: !3, line: 164, column: 3)
!285 = !DILocalVariable(name: "scale", scope: !286, file: !3, line: 170, type: !117)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 169, column: 14)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 167, column: 11)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 166, column: 19)
!289 = distinct !DILexicalBlock(scope: !282, file: !3, line: 166, column: 9)
!290 = !DILocation(line: 160, column: 49, scope: !274)
!291 = !DILocation(line: 161, column: 55, scope: !274)
!292 = !DILocation(line: 162, column: 24, scope: !274)
!293 = !DILocation(line: 162, column: 35, scope: !274)
!294 = !DILocation(line: 163, column: 3, scope: !274)
!295 = !DILocation(line: 163, column: 7, scope: !274)
!296 = !DILocation(line: 164, column: 10, scope: !284)
!297 = !DILocation(line: 164, column: 8, scope: !284)
!298 = !DILocation(line: 164, column: 15, scope: !283)
!299 = !DILocation(line: 164, column: 19, scope: !283)
!300 = !DILocation(line: 164, column: 17, scope: !283)
!301 = !DILocation(line: 164, column: 3, scope: !284)
!302 = !DILocation(line: 165, column: 5, scope: !282)
!303 = !DILocation(line: 165, column: 20, scope: !282)
!304 = !DILocation(line: 165, column: 24, scope: !282)
!305 = !DILocation(line: 165, column: 30, scope: !282)
!306 = !DILocation(line: 166, column: 9, scope: !289)
!307 = !DILocation(line: 166, column: 11, scope: !289)
!308 = !DILocation(line: 166, column: 9, scope: !282)
!309 = !DILocation(line: 167, column: 11, scope: !287)
!310 = !DILocation(line: 167, column: 13, scope: !287)
!311 = !DILocation(line: 167, column: 11, scope: !288)
!312 = !DILocation(line: 168, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !287, file: !3, line: 167, column: 19)
!314 = !DILocation(line: 168, column: 13, scope: !313)
!315 = !DILocation(line: 168, column: 16, scope: !313)
!316 = !DILocation(line: 169, column: 7, scope: !313)
!317 = !DILocation(line: 170, column: 9, scope: !286)
!318 = !DILocation(line: 170, column: 24, scope: !286)
!319 = !DILocation(line: 170, column: 41, scope: !286)
!320 = !DILocation(line: 170, column: 44, scope: !286)
!321 = !DILocation(line: 170, column: 32, scope: !286)
!322 = !DILocation(line: 171, column: 23, scope: !286)
!323 = !DILocation(line: 171, column: 27, scope: !286)
!324 = !DILocation(line: 171, column: 31, scope: !286)
!325 = !DILocation(line: 171, column: 18, scope: !286)
!326 = !DILocation(line: 171, column: 9, scope: !286)
!327 = !DILocation(line: 171, column: 13, scope: !286)
!328 = !DILocation(line: 171, column: 16, scope: !286)
!329 = !DILocation(line: 172, column: 7, scope: !287)
!330 = !DILocation(line: 173, column: 5, scope: !288)
!331 = !DILocation(line: 174, column: 3, scope: !283)
!332 = !DILocation(line: 174, column: 3, scope: !282)
!333 = !DILocation(line: 164, column: 26, scope: !283)
!334 = !DILocation(line: 164, column: 3, scope: !283)
!335 = distinct !{!335, !301, !336, !238}
!336 = !DILocation(line: 174, column: 3, scope: !284)
!337 = !DILocation(line: 175, column: 1, scope: !274)
!338 = distinct !DISubprogram(name: "WebPMultARGBRows", scope: !3, file: !3, line: 189, type: !90, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!339 = !{!340, !341, !342, !343, !344, !345}
!340 = !DILocalVariable(name: "ptr", arg: 1, scope: !338, file: !3, line: 189, type: !79)
!341 = !DILocalVariable(name: "stride", arg: 2, scope: !338, file: !3, line: 189, type: !29)
!342 = !DILocalVariable(name: "width", arg: 3, scope: !338, file: !3, line: 189, type: !29)
!343 = !DILocalVariable(name: "num_rows", arg: 4, scope: !338, file: !3, line: 189, type: !29)
!344 = !DILocalVariable(name: "inverse", arg: 5, scope: !338, file: !3, line: 190, type: !29)
!345 = !DILocalVariable(name: "n", scope: !338, file: !3, line: 191, type: !29)
!346 = !DILocation(line: 189, column: 32, scope: !338)
!347 = !DILocation(line: 189, column: 41, scope: !338)
!348 = !DILocation(line: 189, column: 53, scope: !338)
!349 = !DILocation(line: 189, column: 64, scope: !338)
!350 = !DILocation(line: 190, column: 27, scope: !338)
!351 = !DILocation(line: 191, column: 3, scope: !338)
!352 = !DILocation(line: 191, column: 7, scope: !338)
!353 = !DILocation(line: 192, column: 10, scope: !354)
!354 = distinct !DILexicalBlock(scope: !338, file: !3, line: 192, column: 3)
!355 = !DILocation(line: 192, column: 8, scope: !354)
!356 = !DILocation(line: 192, column: 15, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !3, line: 192, column: 3)
!358 = !DILocation(line: 192, column: 19, scope: !357)
!359 = !DILocation(line: 192, column: 17, scope: !357)
!360 = !DILocation(line: 192, column: 3, scope: !354)
!361 = !DILocation(line: 193, column: 5, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 192, column: 34)
!363 = !DILocation(line: 193, column: 32, scope: !362)
!364 = !DILocation(line: 193, column: 37, scope: !362)
!365 = !DILocation(line: 193, column: 44, scope: !362)
!366 = !DILocation(line: 194, column: 12, scope: !362)
!367 = !DILocation(line: 194, column: 9, scope: !362)
!368 = !DILocation(line: 195, column: 3, scope: !362)
!369 = !DILocation(line: 192, column: 29, scope: !357)
!370 = !DILocation(line: 192, column: 3, scope: !357)
!371 = distinct !{!371, !360, !372, !238}
!372 = !DILocation(line: 195, column: 3, scope: !354)
!373 = !DILocation(line: 196, column: 1, scope: !338)
!374 = distinct !DISubprogram(name: "WebPMultRows", scope: !3, file: !3, line: 198, type: !375, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !78, !29, !84, !29, !29, !29, !29}
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385}
!378 = !DILocalVariable(name: "ptr", arg: 1, scope: !374, file: !3, line: 198, type: !78)
!379 = !DILocalVariable(name: "stride", arg: 2, scope: !374, file: !3, line: 198, type: !29)
!380 = !DILocalVariable(name: "alpha", arg: 3, scope: !374, file: !3, line: 199, type: !84)
!381 = !DILocalVariable(name: "alpha_stride", arg: 4, scope: !374, file: !3, line: 199, type: !29)
!382 = !DILocalVariable(name: "width", arg: 5, scope: !374, file: !3, line: 200, type: !29)
!383 = !DILocalVariable(name: "num_rows", arg: 6, scope: !374, file: !3, line: 200, type: !29)
!384 = !DILocalVariable(name: "inverse", arg: 7, scope: !374, file: !3, line: 200, type: !29)
!385 = !DILocalVariable(name: "n", scope: !374, file: !3, line: 201, type: !29)
!386 = !DILocation(line: 198, column: 42, scope: !374)
!387 = !DILocation(line: 198, column: 51, scope: !374)
!388 = !DILocation(line: 199, column: 48, scope: !374)
!389 = !DILocation(line: 199, column: 59, scope: !374)
!390 = !DILocation(line: 200, column: 23, scope: !374)
!391 = !DILocation(line: 200, column: 34, scope: !374)
!392 = !DILocation(line: 200, column: 48, scope: !374)
!393 = !DILocation(line: 201, column: 3, scope: !374)
!394 = !DILocation(line: 201, column: 7, scope: !374)
!395 = !DILocation(line: 202, column: 10, scope: !396)
!396 = distinct !DILexicalBlock(scope: !374, file: !3, line: 202, column: 3)
!397 = !DILocation(line: 202, column: 8, scope: !396)
!398 = !DILocation(line: 202, column: 15, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 202, column: 3)
!400 = !DILocation(line: 202, column: 19, scope: !399)
!401 = !DILocation(line: 202, column: 17, scope: !399)
!402 = !DILocation(line: 202, column: 3, scope: !396)
!403 = !DILocation(line: 203, column: 5, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !3, line: 202, column: 34)
!405 = !DILocation(line: 203, column: 17, scope: !404)
!406 = !DILocation(line: 203, column: 22, scope: !404)
!407 = !DILocation(line: 203, column: 29, scope: !404)
!408 = !DILocation(line: 203, column: 36, scope: !404)
!409 = !DILocation(line: 204, column: 12, scope: !404)
!410 = !DILocation(line: 204, column: 9, scope: !404)
!411 = !DILocation(line: 205, column: 14, scope: !404)
!412 = !DILocation(line: 205, column: 11, scope: !404)
!413 = !DILocation(line: 206, column: 3, scope: !404)
!414 = !DILocation(line: 202, column: 29, scope: !399)
!415 = !DILocation(line: 202, column: 3, scope: !399)
!416 = distinct !{!416, !402, !417, !238}
!417 = !DILocation(line: 206, column: 3, scope: !396)
!418 = !DILocation(line: 207, column: 1, scope: !374)
!419 = !DILocation(line: 433, column: 1, scope: !35)
!420 = !DILocation(line: 433, column: 1, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 433, column: 1)
!422 = distinct !DILexicalBlock(scope: !35, file: !3, line: 433, column: 1)
!423 = !DILocation(line: 433, column: 1, scope: !422)
!424 = !DILocation(line: 433, column: 1, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !3, line: 433, column: 1)
!426 = !DISubprogram(name: "pthread_mutex_lock", scope: !427, file: !427, line: 794, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!428 = !DISubroutineType(types: !429)
!429 = !{!29, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!431 = distinct !DISubprogram(name: "WebPInitAlphaProcessing_body", scope: !3, file: !3, line: 433, type: !36, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!432 = !DILocation(line: 434, column: 19, scope: !431)
!433 = !DILocation(line: 435, column: 15, scope: !431)
!434 = !DILocation(line: 436, column: 30, scope: !431)
!435 = !DILocation(line: 441, column: 15, scope: !431)
!436 = !DILocation(line: 443, column: 26, scope: !431)
!437 = !DILocation(line: 444, column: 21, scope: !431)
!438 = !DILocation(line: 445, column: 28, scope: !431)
!439 = !DILocation(line: 446, column: 20, scope: !431)
!440 = !DILocation(line: 447, column: 20, scope: !431)
!441 = !DILocation(line: 450, column: 18, scope: !431)
!442 = !DILocation(line: 451, column: 19, scope: !431)
!443 = !DILocation(line: 452, column: 20, scope: !431)
!444 = !DILocation(line: 455, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !431, file: !3, line: 455, column: 7)
!446 = !DILocation(line: 455, column: 21, scope: !445)
!447 = !DILocation(line: 455, column: 7, scope: !431)
!448 = !DILocation(line: 457, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 457, column: 9)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 455, column: 30)
!451 = !DILocation(line: 457, column: 9, scope: !450)
!452 = !DILocation(line: 458, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !3, line: 457, column: 31)
!454 = !DILocation(line: 460, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !453, file: !3, line: 460, column: 11)
!456 = !DILocation(line: 460, column: 11, scope: !453)
!457 = !DILocation(line: 461, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !3, line: 460, column: 35)
!459 = !DILocation(line: 462, column: 7, scope: !458)
!460 = !DILocation(line: 464, column: 5, scope: !453)
!461 = !DILocation(line: 471, column: 3, scope: !450)
!462 = !DILocation(line: 495, column: 1, scope: !431)
!463 = !DISubprogram(name: "pthread_mutex_unlock", scope: !427, file: !427, line: 835, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = distinct !DISubprogram(name: "ApplyAlphaMultiply_16b_C", scope: !3, file: !3, line: 285, type: !95, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!465 = !{!466, !467, !468, !469}
!466 = !DILocalVariable(name: "rgba4444", arg: 1, scope: !464, file: !3, line: 285, type: !79)
!467 = !DILocalVariable(name: "w", arg: 2, scope: !464, file: !3, line: 286, type: !29)
!468 = !DILocalVariable(name: "h", arg: 3, scope: !464, file: !3, line: 286, type: !29)
!469 = !DILocalVariable(name: "stride", arg: 4, scope: !464, file: !3, line: 286, type: !29)
!470 = !DILocation(line: 285, column: 47, scope: !464)
!471 = !DILocation(line: 286, column: 42, scope: !464)
!472 = !DILocation(line: 286, column: 49, scope: !464)
!473 = !DILocation(line: 286, column: 56, scope: !464)
!474 = !DILocation(line: 290, column: 28, scope: !464)
!475 = !DILocation(line: 290, column: 38, scope: !464)
!476 = !DILocation(line: 290, column: 41, scope: !464)
!477 = !DILocation(line: 290, column: 44, scope: !464)
!478 = !DILocation(line: 290, column: 3, scope: !464)
!479 = !DILocation(line: 292, column: 1, scope: !464)
!480 = distinct !DISubprogram(name: "PackRGB_C", scope: !3, file: !3, line: 391, type: !121, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489}
!482 = !DILocalVariable(name: "r", arg: 1, scope: !480, file: !3, line: 391, type: !84)
!483 = !DILocalVariable(name: "g", arg: 2, scope: !480, file: !3, line: 392, type: !84)
!484 = !DILocalVariable(name: "b", arg: 3, scope: !480, file: !3, line: 393, type: !84)
!485 = !DILocalVariable(name: "len", arg: 4, scope: !480, file: !3, line: 394, type: !29)
!486 = !DILocalVariable(name: "step", arg: 5, scope: !480, file: !3, line: 394, type: !29)
!487 = !DILocalVariable(name: "out", arg: 6, scope: !480, file: !3, line: 394, type: !107)
!488 = !DILocalVariable(name: "i", scope: !480, file: !3, line: 395, type: !29)
!489 = !DILocalVariable(name: "offset", scope: !480, file: !3, line: 395, type: !29)
!490 = !DILocation(line: 391, column: 52, scope: !480)
!491 = !DILocation(line: 392, column: 52, scope: !480)
!492 = !DILocation(line: 393, column: 52, scope: !480)
!493 = !DILocation(line: 394, column: 27, scope: !480)
!494 = !DILocation(line: 394, column: 36, scope: !480)
!495 = !DILocation(line: 394, column: 66, scope: !480)
!496 = !DILocation(line: 395, column: 3, scope: !480)
!497 = !DILocation(line: 395, column: 7, scope: !480)
!498 = !DILocation(line: 395, column: 10, scope: !480)
!499 = !DILocation(line: 396, column: 10, scope: !500)
!500 = distinct !DILexicalBlock(scope: !480, file: !3, line: 396, column: 3)
!501 = !DILocation(line: 396, column: 8, scope: !500)
!502 = !DILocation(line: 396, column: 15, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !3, line: 396, column: 3)
!504 = !DILocation(line: 396, column: 19, scope: !503)
!505 = !DILocation(line: 396, column: 17, scope: !503)
!506 = !DILocation(line: 396, column: 3, scope: !500)
!507 = !DILocation(line: 397, column: 31, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !3, line: 396, column: 29)
!509 = !DILocation(line: 397, column: 33, scope: !508)
!510 = !DILocation(line: 397, column: 42, scope: !508)
!511 = !DILocation(line: 397, column: 44, scope: !508)
!512 = !DILocation(line: 397, column: 53, scope: !508)
!513 = !DILocation(line: 397, column: 55, scope: !508)
!514 = !DILocation(line: 397, column: 14, scope: !508)
!515 = !DILocation(line: 397, column: 5, scope: !508)
!516 = !DILocation(line: 397, column: 9, scope: !508)
!517 = !DILocation(line: 397, column: 12, scope: !508)
!518 = !DILocation(line: 398, column: 15, scope: !508)
!519 = !DILocation(line: 398, column: 12, scope: !508)
!520 = !DILocation(line: 399, column: 3, scope: !508)
!521 = !DILocation(line: 396, column: 24, scope: !503)
!522 = !DILocation(line: 396, column: 3, scope: !503)
!523 = distinct !{!523, !506, !524, !238}
!524 = !DILocation(line: 399, column: 3, scope: !500)
!525 = !DILocation(line: 400, column: 1, scope: !480)
!526 = distinct !DISubprogram(name: "ApplyAlphaMultiply_C", scope: !3, file: !3, line: 226, type: !90, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !536, !538, !539, !543}
!528 = !DILocalVariable(name: "rgba", arg: 1, scope: !526, file: !3, line: 226, type: !79)
!529 = !DILocalVariable(name: "alpha_first", arg: 2, scope: !526, file: !3, line: 226, type: !29)
!530 = !DILocalVariable(name: "w", arg: 3, scope: !526, file: !3, line: 227, type: !29)
!531 = !DILocalVariable(name: "h", arg: 4, scope: !526, file: !3, line: 227, type: !29)
!532 = !DILocalVariable(name: "stride", arg: 5, scope: !526, file: !3, line: 227, type: !29)
!533 = !DILocalVariable(name: "rgb", scope: !534, file: !3, line: 229, type: !535)
!534 = distinct !DILexicalBlock(scope: !526, file: !3, line: 228, column: 19)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!536 = !DILocalVariable(name: "alpha", scope: !534, file: !3, line: 230, type: !537)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!538 = !DILocalVariable(name: "i", scope: !534, file: !3, line: 231, type: !29)
!539 = !DILocalVariable(name: "a", scope: !540, file: !3, line: 233, type: !117)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 232, column: 29)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 232, column: 5)
!542 = distinct !DILexicalBlock(scope: !534, file: !3, line: 232, column: 5)
!543 = !DILocalVariable(name: "mult", scope: !544, file: !3, line: 235, type: !117)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 234, column: 22)
!545 = distinct !DILexicalBlock(scope: !540, file: !3, line: 234, column: 11)
!546 = !DILocation(line: 226, column: 43, scope: !526)
!547 = !DILocation(line: 226, column: 53, scope: !526)
!548 = !DILocation(line: 227, column: 38, scope: !526)
!549 = !DILocation(line: 227, column: 45, scope: !526)
!550 = !DILocation(line: 227, column: 52, scope: !526)
!551 = !DILocation(line: 228, column: 3, scope: !526)
!552 = !DILocation(line: 228, column: 11, scope: !526)
!553 = !DILocation(line: 228, column: 14, scope: !526)
!554 = !DILocation(line: 229, column: 5, scope: !534)
!555 = !DILocation(line: 229, column: 20, scope: !534)
!556 = !DILocation(line: 229, column: 26, scope: !534)
!557 = !DILocation(line: 229, column: 34, scope: !534)
!558 = !DILocation(line: 229, column: 31, scope: !534)
!559 = !DILocation(line: 230, column: 5, scope: !534)
!560 = !DILocation(line: 230, column: 26, scope: !534)
!561 = !DILocation(line: 230, column: 34, scope: !534)
!562 = !DILocation(line: 230, column: 42, scope: !534)
!563 = !DILocation(line: 230, column: 39, scope: !534)
!564 = !DILocation(line: 231, column: 5, scope: !534)
!565 = !DILocation(line: 231, column: 9, scope: !534)
!566 = !DILocation(line: 232, column: 12, scope: !542)
!567 = !DILocation(line: 232, column: 10, scope: !542)
!568 = !DILocation(line: 232, column: 17, scope: !541)
!569 = !DILocation(line: 232, column: 21, scope: !541)
!570 = !DILocation(line: 232, column: 19, scope: !541)
!571 = !DILocation(line: 232, column: 5, scope: !542)
!572 = !DILocation(line: 233, column: 7, scope: !540)
!573 = !DILocation(line: 233, column: 22, scope: !540)
!574 = !DILocation(line: 233, column: 26, scope: !540)
!575 = !DILocation(line: 233, column: 36, scope: !540)
!576 = !DILocation(line: 233, column: 34, scope: !540)
!577 = !DILocation(line: 234, column: 11, scope: !545)
!578 = !DILocation(line: 234, column: 13, scope: !545)
!579 = !DILocation(line: 234, column: 11, scope: !540)
!580 = !DILocation(line: 235, column: 9, scope: !544)
!581 = !DILocation(line: 235, column: 24, scope: !544)
!582 = !DILocation(line: 235, column: 31, scope: !544)
!583 = !DILocation(line: 236, column: 26, scope: !544)
!584 = !DILocation(line: 236, column: 9, scope: !544)
!585 = !DILocation(line: 236, column: 17, scope: !544)
!586 = !DILocation(line: 236, column: 15, scope: !544)
!587 = !DILocation(line: 236, column: 19, scope: !544)
!588 = !DILocation(line: 236, column: 24, scope: !544)
!589 = !DILocation(line: 237, column: 26, scope: !544)
!590 = !DILocation(line: 237, column: 9, scope: !544)
!591 = !DILocation(line: 237, column: 17, scope: !544)
!592 = !DILocation(line: 237, column: 15, scope: !544)
!593 = !DILocation(line: 237, column: 19, scope: !544)
!594 = !DILocation(line: 237, column: 24, scope: !544)
!595 = !DILocation(line: 238, column: 26, scope: !544)
!596 = !DILocation(line: 238, column: 9, scope: !544)
!597 = !DILocation(line: 238, column: 17, scope: !544)
!598 = !DILocation(line: 238, column: 15, scope: !544)
!599 = !DILocation(line: 238, column: 19, scope: !544)
!600 = !DILocation(line: 238, column: 24, scope: !544)
!601 = !DILocation(line: 239, column: 7, scope: !545)
!602 = !DILocation(line: 239, column: 7, scope: !544)
!603 = !DILocation(line: 240, column: 5, scope: !541)
!604 = !DILocation(line: 240, column: 5, scope: !540)
!605 = !DILocation(line: 232, column: 24, scope: !541)
!606 = !DILocation(line: 232, column: 5, scope: !541)
!607 = distinct !{!607, !571, !608, !238}
!608 = !DILocation(line: 240, column: 5, scope: !542)
!609 = !DILocation(line: 241, column: 13, scope: !534)
!610 = !DILocation(line: 241, column: 10, scope: !534)
!611 = !DILocation(line: 242, column: 3, scope: !526)
!612 = distinct !{!612, !551, !611, !238}
!613 = !DILocation(line: 243, column: 1, scope: !526)
!614 = distinct !DISubprogram(name: "DispatchAlpha_C", scope: !3, file: !3, line: 295, type: !100, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!616 = !DILocalVariable(name: "alpha", arg: 1, scope: !614, file: !3, line: 295, type: !84)
!617 = !DILocalVariable(name: "alpha_stride", arg: 2, scope: !614, file: !3, line: 295, type: !29)
!618 = !DILocalVariable(name: "width", arg: 3, scope: !614, file: !3, line: 296, type: !29)
!619 = !DILocalVariable(name: "height", arg: 4, scope: !614, file: !3, line: 296, type: !29)
!620 = !DILocalVariable(name: "dst", arg: 5, scope: !614, file: !3, line: 297, type: !78)
!621 = !DILocalVariable(name: "dst_stride", arg: 6, scope: !614, file: !3, line: 297, type: !29)
!622 = !DILocalVariable(name: "alpha_mask", scope: !614, file: !3, line: 298, type: !21)
!623 = !DILocalVariable(name: "i", scope: !614, file: !3, line: 299, type: !29)
!624 = !DILocalVariable(name: "j", scope: !614, file: !3, line: 299, type: !29)
!625 = !DILocalVariable(name: "alpha_value", scope: !626, file: !3, line: 303, type: !117)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 302, column: 33)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 302, column: 5)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 302, column: 5)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 301, column: 32)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 301, column: 3)
!631 = distinct !DILexicalBlock(scope: !614, file: !3, line: 301, column: 3)
!632 = !DILocation(line: 295, column: 57, scope: !614)
!633 = !DILocation(line: 295, column: 68, scope: !614)
!634 = !DILocation(line: 296, column: 32, scope: !614)
!635 = !DILocation(line: 296, column: 43, scope: !614)
!636 = !DILocation(line: 297, column: 51, scope: !614)
!637 = !DILocation(line: 297, column: 60, scope: !614)
!638 = !DILocation(line: 298, column: 3, scope: !614)
!639 = !DILocation(line: 298, column: 12, scope: !614)
!640 = !DILocation(line: 299, column: 3, scope: !614)
!641 = !DILocation(line: 299, column: 7, scope: !614)
!642 = !DILocation(line: 299, column: 10, scope: !614)
!643 = !DILocation(line: 301, column: 10, scope: !631)
!644 = !DILocation(line: 301, column: 8, scope: !631)
!645 = !DILocation(line: 301, column: 15, scope: !630)
!646 = !DILocation(line: 301, column: 19, scope: !630)
!647 = !DILocation(line: 301, column: 17, scope: !630)
!648 = !DILocation(line: 301, column: 3, scope: !631)
!649 = !DILocation(line: 302, column: 12, scope: !628)
!650 = !DILocation(line: 302, column: 10, scope: !628)
!651 = !DILocation(line: 302, column: 17, scope: !627)
!652 = !DILocation(line: 302, column: 21, scope: !627)
!653 = !DILocation(line: 302, column: 19, scope: !627)
!654 = !DILocation(line: 302, column: 5, scope: !628)
!655 = !DILocation(line: 303, column: 7, scope: !626)
!656 = !DILocation(line: 303, column: 22, scope: !626)
!657 = !DILocation(line: 303, column: 36, scope: !626)
!658 = !DILocation(line: 303, column: 42, scope: !626)
!659 = !DILocation(line: 304, column: 20, scope: !626)
!660 = !DILocation(line: 304, column: 7, scope: !626)
!661 = !DILocation(line: 304, column: 15, scope: !626)
!662 = !DILocation(line: 304, column: 13, scope: !626)
!663 = !DILocation(line: 304, column: 18, scope: !626)
!664 = !DILocation(line: 305, column: 21, scope: !626)
!665 = !DILocation(line: 305, column: 18, scope: !626)
!666 = !DILocation(line: 306, column: 5, scope: !627)
!667 = !DILocation(line: 306, column: 5, scope: !626)
!668 = !DILocation(line: 302, column: 28, scope: !627)
!669 = !DILocation(line: 302, column: 5, scope: !627)
!670 = distinct !{!670, !654, !671, !238}
!671 = !DILocation(line: 306, column: 5, scope: !628)
!672 = !DILocation(line: 307, column: 14, scope: !629)
!673 = !DILocation(line: 307, column: 11, scope: !629)
!674 = !DILocation(line: 308, column: 12, scope: !629)
!675 = !DILocation(line: 308, column: 9, scope: !629)
!676 = !DILocation(line: 309, column: 3, scope: !629)
!677 = !DILocation(line: 301, column: 27, scope: !630)
!678 = !DILocation(line: 301, column: 3, scope: !630)
!679 = distinct !{!679, !648, !680, !238}
!680 = !DILocation(line: 309, column: 3, scope: !631)
!681 = !DILocation(line: 311, column: 11, scope: !614)
!682 = !DILocation(line: 311, column: 22, scope: !614)
!683 = !DILocation(line: 312, column: 1, scope: !614)
!684 = !DILocation(line: 311, column: 3, scope: !614)
!685 = distinct !DISubprogram(name: "DispatchAlphaToGreen_C", scope: !3, file: !3, line: 314, type: !105, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694}
!687 = !DILocalVariable(name: "alpha", arg: 1, scope: !685, file: !3, line: 314, type: !84)
!688 = !DILocalVariable(name: "alpha_stride", arg: 2, scope: !685, file: !3, line: 315, type: !29)
!689 = !DILocalVariable(name: "width", arg: 3, scope: !685, file: !3, line: 315, type: !29)
!690 = !DILocalVariable(name: "height", arg: 4, scope: !685, file: !3, line: 315, type: !29)
!691 = !DILocalVariable(name: "dst", arg: 5, scope: !685, file: !3, line: 316, type: !107)
!692 = !DILocalVariable(name: "dst_stride", arg: 6, scope: !685, file: !3, line: 317, type: !29)
!693 = !DILocalVariable(name: "i", scope: !685, file: !3, line: 318, type: !29)
!694 = !DILocalVariable(name: "j", scope: !685, file: !3, line: 318, type: !29)
!695 = !DILocation(line: 314, column: 65, scope: !685)
!696 = !DILocation(line: 315, column: 40, scope: !685)
!697 = !DILocation(line: 315, column: 58, scope: !685)
!698 = !DILocation(line: 315, column: 69, scope: !685)
!699 = !DILocation(line: 316, column: 60, scope: !685)
!700 = !DILocation(line: 317, column: 40, scope: !685)
!701 = !DILocation(line: 318, column: 3, scope: !685)
!702 = !DILocation(line: 318, column: 7, scope: !685)
!703 = !DILocation(line: 318, column: 10, scope: !685)
!704 = !DILocation(line: 319, column: 10, scope: !705)
!705 = distinct !DILexicalBlock(scope: !685, file: !3, line: 319, column: 3)
!706 = !DILocation(line: 319, column: 8, scope: !705)
!707 = !DILocation(line: 319, column: 15, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !3, line: 319, column: 3)
!709 = !DILocation(line: 319, column: 19, scope: !708)
!710 = !DILocation(line: 319, column: 17, scope: !708)
!711 = !DILocation(line: 319, column: 3, scope: !705)
!712 = !DILocation(line: 320, column: 12, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 320, column: 5)
!714 = distinct !DILexicalBlock(scope: !708, file: !3, line: 319, column: 32)
!715 = !DILocation(line: 320, column: 10, scope: !713)
!716 = !DILocation(line: 320, column: 17, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !3, line: 320, column: 5)
!718 = !DILocation(line: 320, column: 21, scope: !717)
!719 = !DILocation(line: 320, column: 19, scope: !717)
!720 = !DILocation(line: 320, column: 5, scope: !713)
!721 = !DILocation(line: 321, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !3, line: 320, column: 33)
!723 = !DILocation(line: 321, column: 22, scope: !722)
!724 = !DILocation(line: 321, column: 25, scope: !722)
!725 = !DILocation(line: 321, column: 7, scope: !722)
!726 = !DILocation(line: 321, column: 11, scope: !722)
!727 = !DILocation(line: 321, column: 14, scope: !722)
!728 = !DILocation(line: 322, column: 5, scope: !722)
!729 = !DILocation(line: 320, column: 28, scope: !717)
!730 = !DILocation(line: 320, column: 5, scope: !717)
!731 = distinct !{!731, !720, !732, !238}
!732 = !DILocation(line: 322, column: 5, scope: !713)
!733 = !DILocation(line: 323, column: 14, scope: !714)
!734 = !DILocation(line: 323, column: 11, scope: !714)
!735 = !DILocation(line: 324, column: 12, scope: !714)
!736 = !DILocation(line: 324, column: 9, scope: !714)
!737 = !DILocation(line: 325, column: 3, scope: !714)
!738 = !DILocation(line: 319, column: 27, scope: !708)
!739 = !DILocation(line: 319, column: 3, scope: !708)
!740 = distinct !{!740, !711, !741, !238}
!741 = !DILocation(line: 325, column: 3, scope: !705)
!742 = !DILocation(line: 326, column: 1, scope: !685)
!743 = distinct !DISubprogram(name: "ExtractAlpha_C", scope: !3, file: !3, line: 328, type: !100, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!745 = !DILocalVariable(name: "argb", arg: 1, scope: !743, file: !3, line: 328, type: !84)
!746 = !DILocalVariable(name: "argb_stride", arg: 2, scope: !743, file: !3, line: 328, type: !29)
!747 = !DILocalVariable(name: "width", arg: 3, scope: !743, file: !3, line: 329, type: !29)
!748 = !DILocalVariable(name: "height", arg: 4, scope: !743, file: !3, line: 329, type: !29)
!749 = !DILocalVariable(name: "alpha", arg: 5, scope: !743, file: !3, line: 330, type: !78)
!750 = !DILocalVariable(name: "alpha_stride", arg: 6, scope: !743, file: !3, line: 330, type: !29)
!751 = !DILocalVariable(name: "alpha_mask", scope: !743, file: !3, line: 331, type: !80)
!752 = !DILocalVariable(name: "i", scope: !743, file: !3, line: 332, type: !29)
!753 = !DILocalVariable(name: "j", scope: !743, file: !3, line: 332, type: !29)
!754 = !DILocalVariable(name: "alpha_value", scope: !755, file: !3, line: 336, type: !86)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 335, column: 33)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 335, column: 5)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 335, column: 5)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 334, column: 32)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 334, column: 3)
!760 = distinct !DILexicalBlock(scope: !743, file: !3, line: 334, column: 3)
!761 = !DILocation(line: 328, column: 56, scope: !743)
!762 = !DILocation(line: 328, column: 66, scope: !743)
!763 = !DILocation(line: 329, column: 31, scope: !743)
!764 = !DILocation(line: 329, column: 42, scope: !743)
!765 = !DILocation(line: 330, column: 50, scope: !743)
!766 = !DILocation(line: 330, column: 61, scope: !743)
!767 = !DILocation(line: 331, column: 3, scope: !743)
!768 = !DILocation(line: 331, column: 11, scope: !743)
!769 = !DILocation(line: 332, column: 3, scope: !743)
!770 = !DILocation(line: 332, column: 7, scope: !743)
!771 = !DILocation(line: 332, column: 10, scope: !743)
!772 = !DILocation(line: 334, column: 10, scope: !760)
!773 = !DILocation(line: 334, column: 8, scope: !760)
!774 = !DILocation(line: 334, column: 15, scope: !759)
!775 = !DILocation(line: 334, column: 19, scope: !759)
!776 = !DILocation(line: 334, column: 17, scope: !759)
!777 = !DILocation(line: 334, column: 3, scope: !760)
!778 = !DILocation(line: 335, column: 12, scope: !757)
!779 = !DILocation(line: 335, column: 10, scope: !757)
!780 = !DILocation(line: 335, column: 17, scope: !756)
!781 = !DILocation(line: 335, column: 21, scope: !756)
!782 = !DILocation(line: 335, column: 19, scope: !756)
!783 = !DILocation(line: 335, column: 5, scope: !757)
!784 = !DILocation(line: 336, column: 7, scope: !755)
!785 = !DILocation(line: 336, column: 21, scope: !755)
!786 = !DILocation(line: 336, column: 35, scope: !755)
!787 = !DILocation(line: 336, column: 44, scope: !755)
!788 = !DILocation(line: 336, column: 42, scope: !755)
!789 = !DILocation(line: 337, column: 18, scope: !755)
!790 = !DILocation(line: 337, column: 7, scope: !755)
!791 = !DILocation(line: 337, column: 13, scope: !755)
!792 = !DILocation(line: 337, column: 16, scope: !755)
!793 = !DILocation(line: 338, column: 21, scope: !755)
!794 = !DILocation(line: 338, column: 18, scope: !755)
!795 = !DILocation(line: 339, column: 5, scope: !756)
!796 = !DILocation(line: 339, column: 5, scope: !755)
!797 = !DILocation(line: 335, column: 28, scope: !756)
!798 = !DILocation(line: 335, column: 5, scope: !756)
!799 = distinct !{!799, !783, !800, !238}
!800 = !DILocation(line: 339, column: 5, scope: !757)
!801 = !DILocation(line: 340, column: 13, scope: !758)
!802 = !DILocation(line: 340, column: 10, scope: !758)
!803 = !DILocation(line: 341, column: 14, scope: !758)
!804 = !DILocation(line: 341, column: 11, scope: !758)
!805 = !DILocation(line: 342, column: 3, scope: !758)
!806 = !DILocation(line: 334, column: 27, scope: !759)
!807 = !DILocation(line: 334, column: 3, scope: !759)
!808 = distinct !{!808, !777, !809, !238}
!809 = !DILocation(line: 342, column: 3, scope: !760)
!810 = !DILocation(line: 343, column: 11, scope: !743)
!811 = !DILocation(line: 343, column: 22, scope: !743)
!812 = !DILocation(line: 344, column: 1, scope: !743)
!813 = !DILocation(line: 343, column: 3, scope: !743)
!814 = distinct !DISubprogram(name: "ExtractGreen_C", scope: !3, file: !3, line: 346, type: !113, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!815 = !{!816, !817, !818, !819}
!816 = !DILocalVariable(name: "argb", arg: 1, scope: !814, file: !3, line: 346, type: !115)
!817 = !DILocalVariable(name: "alpha", arg: 2, scope: !814, file: !3, line: 347, type: !78)
!818 = !DILocalVariable(name: "size", arg: 3, scope: !814, file: !3, line: 347, type: !29)
!819 = !DILocalVariable(name: "i", scope: !814, file: !3, line: 348, type: !29)
!820 = !DILocation(line: 346, column: 58, scope: !814)
!821 = !DILocation(line: 347, column: 51, scope: !814)
!822 = !DILocation(line: 347, column: 62, scope: !814)
!823 = !DILocation(line: 348, column: 3, scope: !814)
!824 = !DILocation(line: 348, column: 7, scope: !814)
!825 = !DILocation(line: 349, column: 10, scope: !826)
!826 = distinct !DILexicalBlock(scope: !814, file: !3, line: 349, column: 3)
!827 = !DILocation(line: 349, column: 8, scope: !826)
!828 = !DILocation(line: 349, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 349, column: 3)
!830 = !DILocation(line: 349, column: 19, scope: !829)
!831 = !DILocation(line: 349, column: 17, scope: !829)
!832 = !DILocation(line: 349, column: 3, scope: !826)
!833 = !DILocation(line: 349, column: 41, scope: !829)
!834 = !DILocation(line: 349, column: 46, scope: !829)
!835 = !DILocation(line: 349, column: 49, scope: !829)
!836 = !DILocation(line: 349, column: 30, scope: !829)
!837 = !DILocation(line: 349, column: 36, scope: !829)
!838 = !DILocation(line: 349, column: 39, scope: !829)
!839 = !DILocation(line: 349, column: 25, scope: !829)
!840 = !DILocation(line: 349, column: 3, scope: !829)
!841 = distinct !{!841, !832, !842, !238}
!842 = !DILocation(line: 349, column: 52, scope: !826)
!843 = !DILocation(line: 350, column: 1, scope: !814)
!844 = distinct !DISubprogram(name: "HasAlpha8b_C", scope: !3, file: !3, line: 355, type: !126, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !845)
!845 = !{!846, !847}
!846 = !DILocalVariable(name: "src", arg: 1, scope: !844, file: !3, line: 355, type: !85)
!847 = !DILocalVariable(name: "length", arg: 2, scope: !844, file: !3, line: 355, type: !29)
!848 = !DILocation(line: 355, column: 40, scope: !844)
!849 = !DILocation(line: 355, column: 49, scope: !844)
!850 = !DILocation(line: 356, column: 3, scope: !844)
!851 = !DILocation(line: 356, column: 16, scope: !844)
!852 = !DILocation(line: 356, column: 19, scope: !844)
!853 = !DILocation(line: 356, column: 32, scope: !854)
!854 = distinct !DILexicalBlock(scope: !844, file: !3, line: 356, column: 28)
!855 = !DILocation(line: 356, column: 28, scope: !854)
!856 = !DILocation(line: 356, column: 35, scope: !854)
!857 = !DILocation(line: 356, column: 28, scope: !844)
!858 = !DILocation(line: 356, column: 44, scope: !854)
!859 = distinct !{!859, !850, !860, !238}
!860 = !DILocation(line: 356, column: 51, scope: !844)
!861 = !DILocation(line: 357, column: 3, scope: !844)
!862 = !DILocation(line: 358, column: 1, scope: !844)
!863 = distinct !DISubprogram(name: "HasAlpha32b_C", scope: !3, file: !3, line: 360, type: !126, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!864 = !{!865, !866, !867}
!865 = !DILocalVariable(name: "src", arg: 1, scope: !863, file: !3, line: 360, type: !85)
!866 = !DILocalVariable(name: "length", arg: 2, scope: !863, file: !3, line: 360, type: !29)
!867 = !DILocalVariable(name: "x", scope: !863, file: !3, line: 361, type: !29)
!868 = !DILocation(line: 360, column: 41, scope: !863)
!869 = !DILocation(line: 360, column: 50, scope: !863)
!870 = !DILocation(line: 361, column: 3, scope: !863)
!871 = !DILocation(line: 361, column: 7, scope: !863)
!872 = !DILocation(line: 362, column: 10, scope: !873)
!873 = distinct !DILexicalBlock(scope: !863, file: !3, line: 362, column: 3)
!874 = !DILocation(line: 362, column: 8, scope: !873)
!875 = !DILocation(line: 362, column: 21, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 362, column: 3)
!877 = !DILocation(line: 362, column: 24, scope: !876)
!878 = !DILocation(line: 362, column: 3, scope: !873)
!879 = !DILocation(line: 362, column: 41, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 362, column: 41)
!881 = !DILocation(line: 362, column: 45, scope: !880)
!882 = !DILocation(line: 362, column: 48, scope: !880)
!883 = !DILocation(line: 362, column: 41, scope: !876)
!884 = !DILocation(line: 362, column: 57, scope: !880)
!885 = !DILocation(line: 362, column: 51, scope: !880)
!886 = !DILocation(line: 362, column: 31, scope: !876)
!887 = !DILocation(line: 362, column: 3, scope: !876)
!888 = distinct !{!888, !878, !889, !238}
!889 = !DILocation(line: 362, column: 64, scope: !873)
!890 = !DILocation(line: 363, column: 3, scope: !863)
!891 = !DILocation(line: 364, column: 1, scope: !863)
!892 = distinct !DISubprogram(name: "AlphaReplace_C", scope: !3, file: !3, line: 366, type: !133, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!893 = !{!894, !895, !896, !897}
!894 = !DILocalVariable(name: "src", arg: 1, scope: !892, file: !3, line: 366, type: !20)
!895 = !DILocalVariable(name: "length", arg: 2, scope: !892, file: !3, line: 366, type: !29)
!896 = !DILocalVariable(name: "color", arg: 3, scope: !892, file: !3, line: 366, type: !21)
!897 = !DILocalVariable(name: "x", scope: !892, file: !3, line: 367, type: !29)
!898 = !DILocation(line: 366, column: 38, scope: !892)
!899 = !DILocation(line: 366, column: 47, scope: !892)
!900 = !DILocation(line: 366, column: 64, scope: !892)
!901 = !DILocation(line: 367, column: 3, scope: !892)
!902 = !DILocation(line: 367, column: 7, scope: !892)
!903 = !DILocation(line: 368, column: 10, scope: !904)
!904 = distinct !DILexicalBlock(scope: !892, file: !3, line: 368, column: 3)
!905 = !DILocation(line: 368, column: 8, scope: !904)
!906 = !DILocation(line: 368, column: 15, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 368, column: 3)
!908 = !DILocation(line: 368, column: 19, scope: !907)
!909 = !DILocation(line: 368, column: 17, scope: !907)
!910 = !DILocation(line: 368, column: 3, scope: !904)
!911 = !DILocation(line: 368, column: 37, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !3, line: 368, column: 36)
!913 = !DILocation(line: 368, column: 41, scope: !912)
!914 = !DILocation(line: 368, column: 44, scope: !912)
!915 = !DILocation(line: 368, column: 51, scope: !912)
!916 = !DILocation(line: 368, column: 36, scope: !907)
!917 = !DILocation(line: 368, column: 66, scope: !912)
!918 = !DILocation(line: 368, column: 57, scope: !912)
!919 = !DILocation(line: 368, column: 61, scope: !912)
!920 = !DILocation(line: 368, column: 64, scope: !912)
!921 = !DILocation(line: 368, column: 54, scope: !912)
!922 = !DILocation(line: 368, column: 27, scope: !907)
!923 = !DILocation(line: 368, column: 3, scope: !907)
!924 = distinct !{!924, !910, !925, !238}
!925 = !DILocation(line: 368, column: 66, scope: !904)
!926 = !DILocation(line: 369, column: 1, scope: !892)
!927 = !DISubprogram(name: "WebPInitAlphaProcessingSSE2", scope: !3, file: !3, line: 429, type: !36, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DISubprogram(name: "WebPInitAlphaProcessingSSE41", scope: !3, file: !3, line: 430, type: !36, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = distinct !DISubprogram(name: "ApplyAlphaMultiply4444_C", scope: !3, file: !3, line: 264, type: !90, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !930)
!930 = !{!931, !932, !933, !934, !935, !936, !938, !942, !943, !944, !945, !946, !947}
!931 = !DILocalVariable(name: "rgba4444", arg: 1, scope: !929, file: !3, line: 264, type: !79)
!932 = !DILocalVariable(name: "w", arg: 2, scope: !929, file: !3, line: 265, type: !29)
!933 = !DILocalVariable(name: "h", arg: 3, scope: !929, file: !3, line: 265, type: !29)
!934 = !DILocalVariable(name: "stride", arg: 4, scope: !929, file: !3, line: 265, type: !29)
!935 = !DILocalVariable(name: "rg_byte_pos", arg: 5, scope: !929, file: !3, line: 266, type: !29)
!936 = !DILocalVariable(name: "i", scope: !937, file: !3, line: 268, type: !29)
!937 = distinct !DILexicalBlock(scope: !929, file: !3, line: 267, column: 19)
!938 = !DILocalVariable(name: "rg", scope: !939, file: !3, line: 270, type: !117)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 269, column: 29)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 269, column: 5)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 269, column: 5)
!942 = !DILocalVariable(name: "ba", scope: !939, file: !3, line: 271, type: !117)
!943 = !DILocalVariable(name: "a", scope: !939, file: !3, line: 272, type: !86)
!944 = !DILocalVariable(name: "mult", scope: !939, file: !3, line: 273, type: !117)
!945 = !DILocalVariable(name: "r", scope: !939, file: !3, line: 274, type: !86)
!946 = !DILocalVariable(name: "g", scope: !939, file: !3, line: 275, type: !86)
!947 = !DILocalVariable(name: "b", scope: !939, file: !3, line: 276, type: !86)
!948 = !DILocation(line: 264, column: 59, scope: !929)
!949 = !DILocation(line: 265, column: 54, scope: !929)
!950 = !DILocation(line: 265, column: 61, scope: !929)
!951 = !DILocation(line: 265, column: 68, scope: !929)
!952 = !DILocation(line: 266, column: 54, scope: !929)
!953 = !DILocation(line: 267, column: 3, scope: !929)
!954 = !DILocation(line: 267, column: 11, scope: !929)
!955 = !DILocation(line: 267, column: 14, scope: !929)
!956 = !DILocation(line: 268, column: 5, scope: !937)
!957 = !DILocation(line: 268, column: 9, scope: !937)
!958 = !DILocation(line: 269, column: 12, scope: !941)
!959 = !DILocation(line: 269, column: 10, scope: !941)
!960 = !DILocation(line: 269, column: 17, scope: !940)
!961 = !DILocation(line: 269, column: 21, scope: !940)
!962 = !DILocation(line: 269, column: 19, scope: !940)
!963 = !DILocation(line: 269, column: 5, scope: !941)
!964 = !DILocation(line: 270, column: 7, scope: !939)
!965 = !DILocation(line: 270, column: 22, scope: !939)
!966 = !DILocation(line: 270, column: 27, scope: !939)
!967 = !DILocation(line: 270, column: 40, scope: !939)
!968 = !DILocation(line: 270, column: 38, scope: !939)
!969 = !DILocation(line: 270, column: 44, scope: !939)
!970 = !DILocation(line: 270, column: 42, scope: !939)
!971 = !DILocation(line: 271, column: 7, scope: !939)
!972 = !DILocation(line: 271, column: 22, scope: !939)
!973 = !DILocation(line: 271, column: 27, scope: !939)
!974 = !DILocation(line: 271, column: 40, scope: !939)
!975 = !DILocation(line: 271, column: 38, scope: !939)
!976 = !DILocation(line: 271, column: 45, scope: !939)
!977 = !DILocation(line: 271, column: 57, scope: !939)
!978 = !DILocation(line: 271, column: 42, scope: !939)
!979 = !DILocation(line: 272, column: 7, scope: !939)
!980 = !DILocation(line: 272, column: 21, scope: !939)
!981 = !DILocation(line: 272, column: 25, scope: !939)
!982 = !DILocation(line: 272, column: 28, scope: !939)
!983 = !DILocation(line: 273, column: 7, scope: !939)
!984 = !DILocation(line: 273, column: 22, scope: !939)
!985 = !DILocation(line: 273, column: 29, scope: !939)
!986 = !DILocation(line: 274, column: 7, scope: !939)
!987 = !DILocation(line: 274, column: 21, scope: !939)
!988 = !DILocation(line: 274, column: 44, scope: !939)
!989 = !DILocation(line: 274, column: 34, scope: !939)
!990 = !DILocation(line: 274, column: 49, scope: !939)
!991 = !DILocation(line: 274, column: 25, scope: !939)
!992 = !DILocation(line: 275, column: 7, scope: !939)
!993 = !DILocation(line: 275, column: 21, scope: !939)
!994 = !DILocation(line: 275, column: 44, scope: !939)
!995 = !DILocation(line: 275, column: 34, scope: !939)
!996 = !DILocation(line: 275, column: 49, scope: !939)
!997 = !DILocation(line: 275, column: 25, scope: !939)
!998 = !DILocation(line: 276, column: 7, scope: !939)
!999 = !DILocation(line: 276, column: 21, scope: !939)
!1000 = !DILocation(line: 276, column: 44, scope: !939)
!1001 = !DILocation(line: 276, column: 34, scope: !939)
!1002 = !DILocation(line: 276, column: 49, scope: !939)
!1003 = !DILocation(line: 276, column: 25, scope: !939)
!1004 = !DILocation(line: 277, column: 40, scope: !939)
!1005 = !DILocation(line: 277, column: 42, scope: !939)
!1006 = !DILocation(line: 277, column: 54, scope: !939)
!1007 = !DILocation(line: 277, column: 56, scope: !939)
!1008 = !DILocation(line: 277, column: 62, scope: !939)
!1009 = !DILocation(line: 277, column: 50, scope: !939)
!1010 = !DILocation(line: 277, column: 39, scope: !939)
!1011 = !DILocation(line: 277, column: 7, scope: !939)
!1012 = !DILocation(line: 277, column: 20, scope: !939)
!1013 = !DILocation(line: 277, column: 18, scope: !939)
!1014 = !DILocation(line: 277, column: 24, scope: !939)
!1015 = !DILocation(line: 277, column: 22, scope: !939)
!1016 = !DILocation(line: 277, column: 37, scope: !939)
!1017 = !DILocation(line: 278, column: 46, scope: !939)
!1018 = !DILocation(line: 278, column: 48, scope: !939)
!1019 = !DILocation(line: 278, column: 58, scope: !939)
!1020 = !DILocation(line: 278, column: 56, scope: !939)
!1021 = !DILocation(line: 278, column: 45, scope: !939)
!1022 = !DILocation(line: 278, column: 7, scope: !939)
!1023 = !DILocation(line: 278, column: 20, scope: !939)
!1024 = !DILocation(line: 278, column: 18, scope: !939)
!1025 = !DILocation(line: 278, column: 25, scope: !939)
!1026 = !DILocation(line: 278, column: 37, scope: !939)
!1027 = !DILocation(line: 278, column: 22, scope: !939)
!1028 = !DILocation(line: 278, column: 43, scope: !939)
!1029 = !DILocation(line: 279, column: 5, scope: !940)
!1030 = !DILocation(line: 279, column: 5, scope: !939)
!1031 = !DILocation(line: 269, column: 24, scope: !940)
!1032 = !DILocation(line: 269, column: 5, scope: !940)
!1033 = distinct !{!1033, !963, !1034, !238}
!1034 = !DILocation(line: 279, column: 5, scope: !941)
!1035 = !DILocation(line: 280, column: 17, scope: !937)
!1036 = !DILocation(line: 280, column: 14, scope: !937)
!1037 = !DILocation(line: 281, column: 3, scope: !929)
!1038 = distinct !{!1038, !953, !1037, !238}
!1039 = !DILocation(line: 282, column: 1, scope: !929)
!1040 = distinct !DISubprogram(name: "multiply", scope: !3, file: !3, line: 260, type: !1041, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!80, !80, !21}
!1043 = !{!1044, !1045}
!1044 = !DILocalVariable(name: "x", arg: 1, scope: !1040, file: !3, line: 260, type: !80)
!1045 = !DILocalVariable(name: "m", arg: 2, scope: !1040, file: !3, line: 260, type: !21)
!1046 = !DILocation(line: 260, column: 45, scope: !1040)
!1047 = !DILocation(line: 260, column: 57, scope: !1040)
!1048 = !DILocation(line: 261, column: 11, scope: !1040)
!1049 = !DILocation(line: 261, column: 15, scope: !1040)
!1050 = !DILocation(line: 261, column: 13, scope: !1040)
!1051 = !DILocation(line: 261, column: 18, scope: !1040)
!1052 = !DILocation(line: 261, column: 10, scope: !1040)
!1053 = !DILocation(line: 261, column: 3, scope: !1040)
!1054 = distinct !DISubprogram(name: "dither_hi", scope: !3, file: !3, line: 252, type: !1055, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!80, !80}
!1057 = !{!1058}
!1058 = !DILocalVariable(name: "x", arg: 1, scope: !1054, file: !3, line: 252, type: !80)
!1059 = !DILocation(line: 252, column: 46, scope: !1054)
!1060 = !DILocation(line: 253, column: 11, scope: !1054)
!1061 = !DILocation(line: 253, column: 13, scope: !1054)
!1062 = !DILocation(line: 253, column: 24, scope: !1054)
!1063 = !DILocation(line: 253, column: 26, scope: !1054)
!1064 = !DILocation(line: 253, column: 21, scope: !1054)
!1065 = !DILocation(line: 253, column: 10, scope: !1054)
!1066 = !DILocation(line: 253, column: 3, scope: !1054)
!1067 = distinct !DISubprogram(name: "dither_lo", scope: !3, file: !3, line: 256, type: !1055, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "x", arg: 1, scope: !1067, file: !3, line: 256, type: !80)
!1070 = !DILocation(line: 256, column: 46, scope: !1067)
!1071 = !DILocation(line: 257, column: 11, scope: !1067)
!1072 = !DILocation(line: 257, column: 13, scope: !1067)
!1073 = !DILocation(line: 257, column: 24, scope: !1067)
!1074 = !DILocation(line: 257, column: 26, scope: !1067)
!1075 = !DILocation(line: 257, column: 21, scope: !1067)
!1076 = !DILocation(line: 257, column: 10, scope: !1067)
!1077 = !DILocation(line: 257, column: 3, scope: !1067)
!1078 = distinct !DISubprogram(name: "MakeARGB32", scope: !3, file: !3, line: 374, type: !1079, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!21, !29, !29, !29, !29}
!1081 = !{!1082, !1083, !1084, !1085}
!1082 = !DILocalVariable(name: "a", arg: 1, scope: !1078, file: !3, line: 374, type: !29)
!1083 = !DILocalVariable(name: "r", arg: 2, scope: !1078, file: !3, line: 374, type: !29)
!1084 = !DILocalVariable(name: "g", arg: 3, scope: !1078, file: !3, line: 374, type: !29)
!1085 = !DILocalVariable(name: "b", arg: 4, scope: !1078, file: !3, line: 374, type: !29)
!1086 = !DILocation(line: 374, column: 44, scope: !1078)
!1087 = !DILocation(line: 374, column: 51, scope: !1078)
!1088 = !DILocation(line: 374, column: 58, scope: !1078)
!1089 = !DILocation(line: 374, column: 65, scope: !1078)
!1090 = !DILocation(line: 375, column: 22, scope: !1078)
!1091 = !DILocation(line: 375, column: 24, scope: !1078)
!1092 = !DILocation(line: 375, column: 34, scope: !1078)
!1093 = !DILocation(line: 375, column: 36, scope: !1078)
!1094 = !DILocation(line: 375, column: 31, scope: !1078)
!1095 = !DILocation(line: 375, column: 46, scope: !1078)
!1096 = !DILocation(line: 375, column: 48, scope: !1078)
!1097 = !DILocation(line: 375, column: 43, scope: !1078)
!1098 = !DILocation(line: 375, column: 56, scope: !1078)
!1099 = !DILocation(line: 375, column: 54, scope: !1078)
!1100 = !DILocation(line: 375, column: 3, scope: !1078)

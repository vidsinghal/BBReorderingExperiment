; ModuleID = 'samples/951.bc'
source_filename = "picture_tools_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WebPPicture = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, [2 x i32], ptr, i32, [3 x i32], ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, [3 x i32], ptr, ptr, [8 x i32], ptr, ptr, [2 x ptr] }

@WebPAlphaReplace = external global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @WebPReplaceTransparentPixels(ptr noundef %pic, i32 noundef %color) #0 !dbg !45 {
entry:
  %pic.addr = alloca ptr, align 8
  %color.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %argb = alloca ptr, align 8
  store ptr %pic, ptr %pic.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %pic.addr, metadata !150, metadata !DIExpression()), !dbg !160
  store i32 %color, ptr %color.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !151, metadata !DIExpression()), !dbg !163
  %0 = load ptr, ptr %pic.addr, align 8, !dbg !164, !tbaa !156
  %cmp = icmp ne ptr %0, null, !dbg !165
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !166

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pic.addr, align 8, !dbg !167, !tbaa !156
  %use_argb = getelementptr inbounds %struct.WebPPicture, ptr %1, i32 0, i32 0, !dbg !168
  %2 = load i32, ptr %use_argb, align 8, !dbg !168, !tbaa !169
  %tobool = icmp ne i32 %2, 0, !dbg !167
  br i1 %tobool, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6, !dbg !172
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !152, metadata !DIExpression()), !dbg !173
  %3 = load ptr, ptr %pic.addr, align 8, !dbg !174, !tbaa !156
  %height = getelementptr inbounds %struct.WebPPicture, ptr %3, i32 0, i32 3, !dbg !175
  %4 = load i32, ptr %height, align 4, !dbg !175, !tbaa !176
  store i32 %4, ptr %y, align 4, !dbg !173, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %argb) #6, !dbg !177
  tail call void @llvm.dbg.declare(metadata ptr %argb, metadata !155, metadata !DIExpression()), !dbg !178
  %5 = load ptr, ptr %pic.addr, align 8, !dbg !179, !tbaa !156
  %argb1 = getelementptr inbounds %struct.WebPPicture, ptr %5, i32 0, i32 12, !dbg !180
  %6 = load ptr, ptr %argb1, align 8, !dbg !180, !tbaa !181
  store ptr %6, ptr %argb, align 8, !dbg !178, !tbaa !156
  %7 = load i32, ptr %color.addr, align 4, !dbg !182, !tbaa !161
  %and = and i32 %7, 16777215, !dbg !182
  store i32 %and, ptr %color.addr, align 4, !dbg !182, !tbaa !161
  call void @WebPInitAlphaProcessing(), !dbg !183
  br label %while.cond, !dbg !184

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i32, ptr %y, align 4, !dbg !185, !tbaa !161
  %dec = add nsw i32 %8, -1, !dbg !185
  store i32 %dec, ptr %y, align 4, !dbg !185, !tbaa !161
  %cmp2 = icmp sgt i32 %8, 0, !dbg !186
  br i1 %cmp2, label %while.body, label %while.end, !dbg !184

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr @WebPAlphaReplace, align 8, !dbg !187, !tbaa !156
  %10 = load ptr, ptr %argb, align 8, !dbg !189, !tbaa !156
  %11 = load ptr, ptr %pic.addr, align 8, !dbg !190, !tbaa !156
  %width = getelementptr inbounds %struct.WebPPicture, ptr %11, i32 0, i32 2, !dbg !191
  %12 = load i32, ptr %width, align 8, !dbg !191, !tbaa !192
  %13 = load i32, ptr %color.addr, align 4, !dbg !193, !tbaa !161
  call void %9(ptr noundef %10, i32 noundef %12, i32 noundef %13), !dbg !187
  %14 = load ptr, ptr %pic.addr, align 8, !dbg !194, !tbaa !156
  %argb_stride = getelementptr inbounds %struct.WebPPicture, ptr %14, i32 0, i32 13, !dbg !195
  %15 = load i32, ptr %argb_stride, align 8, !dbg !195, !tbaa !196
  %16 = load ptr, ptr %argb, align 8, !dbg !197, !tbaa !156
  %idx.ext = sext i32 %15 to i64, !dbg !197
  %add.ptr = getelementptr inbounds i32, ptr %16, i64 %idx.ext, !dbg !197
  store ptr %add.ptr, ptr %argb, align 8, !dbg !197, !tbaa !156
  br label %while.cond, !dbg !184, !llvm.loop !198

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %argb) #6, !dbg !201
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6, !dbg !201
  br label %if.end, !dbg !202

if.end:                                           ; preds = %while.end, %land.lhs.true, %entry
  ret void, !dbg !203
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !204 void @WebPInitAlphaProcessing() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @WebPCleanupTransparentArea(ptr noundef %pic) #0 !dbg !208 {
entry:
  %pic.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %argb_value = alloca i32, align 4
  %need_reset = alloca i32, align 4
  %off = alloca i32, align 4
  %width24 = alloca i32, align 4
  %height26 = alloca i32, align 4
  %y_stride = alloca i32, align 4
  %uv_stride = alloca i32, align 4
  %a_stride = alloca i32, align 4
  %y_ptr = alloca ptr, align 8
  %u_ptr = alloca ptr, align 8
  %v_ptr = alloca ptr, align 8
  %a_ptr = alloca ptr, align 8
  %values = alloca [3 x i32], align 4
  %need_reset44 = alloca i32, align 4
  %sub_height = alloca i32, align 4
  store ptr %pic, ptr %pic.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %pic.addr, metadata !212, metadata !DIExpression()), !dbg !247
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !248
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !213, metadata !DIExpression()), !dbg !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6, !dbg !248
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !214, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #6, !dbg !248
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !215, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #6, !dbg !248
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !216, metadata !DIExpression()), !dbg !252
  %0 = load ptr, ptr %pic.addr, align 8, !dbg !253, !tbaa !156
  %cmp = icmp eq ptr %0, null, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup149, !dbg !257

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pic.addr, align 8, !dbg !258, !tbaa !156
  %width = getelementptr inbounds %struct.WebPPicture, ptr %1, i32 0, i32 2, !dbg !259
  %2 = load i32, ptr %width, align 8, !dbg !259, !tbaa !192
  %div = sdiv i32 %2, 8, !dbg !260
  store i32 %div, ptr %w, align 4, !dbg !261, !tbaa !161
  %3 = load ptr, ptr %pic.addr, align 8, !dbg !262, !tbaa !156
  %height = getelementptr inbounds %struct.WebPPicture, ptr %3, i32 0, i32 3, !dbg !263
  %4 = load i32, ptr %height, align 4, !dbg !263, !tbaa !176
  %div1 = sdiv i32 %4, 8, !dbg !264
  store i32 %div1, ptr %h, align 4, !dbg !265, !tbaa !161
  %5 = load ptr, ptr %pic.addr, align 8, !dbg !266, !tbaa !156
  %use_argb = getelementptr inbounds %struct.WebPPicture, ptr %5, i32 0, i32 0, !dbg !267
  %6 = load i32, ptr %use_argb, align 8, !dbg !267, !tbaa !169
  %tobool = icmp ne i32 %6, 0, !dbg !266
  br i1 %tobool, label %if.then2, label %if.else23, !dbg !268

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %argb_value) #6, !dbg !269
  tail call void @llvm.dbg.declare(metadata ptr %argb_value, metadata !217, metadata !DIExpression()), !dbg !270
  store i32 0, ptr %argb_value, align 4, !dbg !270, !tbaa !161
  store i32 0, ptr %y, align 4, !dbg !271, !tbaa !161
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %for.inc20, %if.then2
  %7 = load i32, ptr %y, align 4, !dbg !273, !tbaa !161
  %8 = load i32, ptr %h, align 4, !dbg !274, !tbaa !161
  %cmp3 = icmp slt i32 %7, %8, !dbg !275
  br i1 %cmp3, label %for.body, label %for.end22, !dbg !276

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %need_reset) #6, !dbg !277
  tail call void @llvm.dbg.declare(metadata ptr %need_reset, metadata !220, metadata !DIExpression()), !dbg !278
  store i32 1, ptr %need_reset, align 4, !dbg !278, !tbaa !161
  store i32 0, ptr %x, align 4, !dbg !279, !tbaa !161
  br label %for.cond4, !dbg !280

for.cond4:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %x, align 4, !dbg !281, !tbaa !161
  %10 = load i32, ptr %w, align 4, !dbg !282, !tbaa !161
  %cmp5 = icmp slt i32 %9, %10, !dbg !283
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !284

for.body6:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #6, !dbg !285
  tail call void @llvm.dbg.declare(metadata ptr %off, metadata !224, metadata !DIExpression()), !dbg !286
  %11 = load i32, ptr %y, align 4, !dbg !287, !tbaa !161
  %12 = load ptr, ptr %pic.addr, align 8, !dbg !288, !tbaa !156
  %argb_stride = getelementptr inbounds %struct.WebPPicture, ptr %12, i32 0, i32 13, !dbg !289
  %13 = load i32, ptr %argb_stride, align 8, !dbg !289, !tbaa !196
  %mul = mul nsw i32 %11, %13, !dbg !290
  %14 = load i32, ptr %x, align 4, !dbg !291, !tbaa !161
  %add = add nsw i32 %mul, %14, !dbg !292
  %mul7 = mul nsw i32 %add, 8, !dbg !293
  store i32 %mul7, ptr %off, align 4, !dbg !286, !tbaa !161
  %15 = load ptr, ptr %pic.addr, align 8, !dbg !294, !tbaa !156
  %argb = getelementptr inbounds %struct.WebPPicture, ptr %15, i32 0, i32 12, !dbg !296
  %16 = load ptr, ptr %argb, align 8, !dbg !296, !tbaa !181
  %17 = load i32, ptr %off, align 4, !dbg !297, !tbaa !161
  %idx.ext = sext i32 %17 to i64, !dbg !298
  %add.ptr = getelementptr inbounds i32, ptr %16, i64 %idx.ext, !dbg !298
  %18 = load ptr, ptr %pic.addr, align 8, !dbg !299, !tbaa !156
  %argb_stride8 = getelementptr inbounds %struct.WebPPicture, ptr %18, i32 0, i32 13, !dbg !300
  %19 = load i32, ptr %argb_stride8, align 8, !dbg !300, !tbaa !196
  %call = call i32 @IsTransparentARGBArea(ptr noundef %add.ptr, i32 noundef %19, i32 noundef 8), !dbg !301
  %tobool9 = icmp ne i32 %call, 0, !dbg !301
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !302

if.then10:                                        ; preds = %for.body6
  %20 = load i32, ptr %need_reset, align 4, !dbg !303, !tbaa !161
  %tobool11 = icmp ne i32 %20, 0, !dbg !303
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !306

if.then12:                                        ; preds = %if.then10
  %21 = load ptr, ptr %pic.addr, align 8, !dbg !307, !tbaa !156
  %argb13 = getelementptr inbounds %struct.WebPPicture, ptr %21, i32 0, i32 12, !dbg !309
  %22 = load ptr, ptr %argb13, align 8, !dbg !309, !tbaa !181
  %23 = load i32, ptr %off, align 4, !dbg !310, !tbaa !161
  %idxprom = sext i32 %23 to i64, !dbg !307
  %arrayidx = getelementptr inbounds i32, ptr %22, i64 %idxprom, !dbg !307
  %24 = load i32, ptr %arrayidx, align 4, !dbg !307, !tbaa !161
  store i32 %24, ptr %argb_value, align 4, !dbg !311, !tbaa !161
  store i32 0, ptr %need_reset, align 4, !dbg !312, !tbaa !161
  br label %if.end14, !dbg !313

if.end14:                                         ; preds = %if.then12, %if.then10
  %25 = load ptr, ptr %pic.addr, align 8, !dbg !314, !tbaa !156
  %argb15 = getelementptr inbounds %struct.WebPPicture, ptr %25, i32 0, i32 12, !dbg !315
  %26 = load ptr, ptr %argb15, align 8, !dbg !315, !tbaa !181
  %27 = load i32, ptr %off, align 4, !dbg !316, !tbaa !161
  %idx.ext16 = sext i32 %27 to i64, !dbg !317
  %add.ptr17 = getelementptr inbounds i32, ptr %26, i64 %idx.ext16, !dbg !317
  %28 = load i32, ptr %argb_value, align 4, !dbg !318, !tbaa !161
  %29 = load ptr, ptr %pic.addr, align 8, !dbg !319, !tbaa !156
  %argb_stride18 = getelementptr inbounds %struct.WebPPicture, ptr %29, i32 0, i32 13, !dbg !320
  %30 = load i32, ptr %argb_stride18, align 8, !dbg !320, !tbaa !196
  call void @FlattenARGB(ptr noundef %add.ptr17, i32 noundef %28, i32 noundef %30, i32 noundef 8), !dbg !321
  br label %if.end19, !dbg !322

if.else:                                          ; preds = %for.body6
  store i32 1, ptr %need_reset, align 4, !dbg !323, !tbaa !161
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end14
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #6, !dbg !325
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %if.end19
  %31 = load i32, ptr %x, align 4, !dbg !327, !tbaa !161
  %inc = add nsw i32 %31, 1, !dbg !327
  store i32 %inc, ptr %x, align 4, !dbg !327, !tbaa !161
  br label %for.cond4, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 4, ptr %need_reset) #6, !dbg !331
  br label %for.inc20, !dbg !332

for.inc20:                                        ; preds = %for.end
  %32 = load i32, ptr %y, align 4, !dbg !333, !tbaa !161
  %inc21 = add nsw i32 %32, 1, !dbg !333
  store i32 %inc21, ptr %y, align 4, !dbg !333, !tbaa !161
  br label %for.cond, !dbg !334, !llvm.loop !335

for.end22:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %argb_value) #6, !dbg !337
  br label %if.end148, !dbg !338

if.else23:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %width24) #6, !dbg !339
  tail call void @llvm.dbg.declare(metadata ptr %width24, metadata !229, metadata !DIExpression()), !dbg !340
  %33 = load ptr, ptr %pic.addr, align 8, !dbg !341, !tbaa !156
  %width25 = getelementptr inbounds %struct.WebPPicture, ptr %33, i32 0, i32 2, !dbg !342
  %34 = load i32, ptr %width25, align 8, !dbg !342, !tbaa !192
  store i32 %34, ptr %width24, align 4, !dbg !340, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %height26) #6, !dbg !343
  tail call void @llvm.dbg.declare(metadata ptr %height26, metadata !231, metadata !DIExpression()), !dbg !344
  %35 = load ptr, ptr %pic.addr, align 8, !dbg !345, !tbaa !156
  %height27 = getelementptr inbounds %struct.WebPPicture, ptr %35, i32 0, i32 3, !dbg !346
  %36 = load i32, ptr %height27, align 4, !dbg !346, !tbaa !176
  store i32 %36, ptr %height26, align 4, !dbg !344, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_stride) #6, !dbg !347
  tail call void @llvm.dbg.declare(metadata ptr %y_stride, metadata !232, metadata !DIExpression()), !dbg !348
  %37 = load ptr, ptr %pic.addr, align 8, !dbg !349, !tbaa !156
  %y_stride28 = getelementptr inbounds %struct.WebPPicture, ptr %37, i32 0, i32 7, !dbg !350
  %38 = load i32, ptr %y_stride28, align 8, !dbg !350, !tbaa !351
  store i32 %38, ptr %y_stride, align 4, !dbg !348, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %uv_stride) #6, !dbg !352
  tail call void @llvm.dbg.declare(metadata ptr %uv_stride, metadata !233, metadata !DIExpression()), !dbg !353
  %39 = load ptr, ptr %pic.addr, align 8, !dbg !354, !tbaa !156
  %uv_stride29 = getelementptr inbounds %struct.WebPPicture, ptr %39, i32 0, i32 8, !dbg !355
  %40 = load i32, ptr %uv_stride29, align 4, !dbg !355, !tbaa !356
  store i32 %40, ptr %uv_stride, align 4, !dbg !353, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_stride) #6, !dbg !357
  tail call void @llvm.dbg.declare(metadata ptr %a_stride, metadata !234, metadata !DIExpression()), !dbg !358
  %41 = load ptr, ptr %pic.addr, align 8, !dbg !359, !tbaa !156
  %a_stride30 = getelementptr inbounds %struct.WebPPicture, ptr %41, i32 0, i32 10, !dbg !360
  %42 = load i32, ptr %a_stride30, align 8, !dbg !360, !tbaa !361
  store i32 %42, ptr %a_stride, align 4, !dbg !358, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ptr) #6, !dbg !362
  tail call void @llvm.dbg.declare(metadata ptr %y_ptr, metadata !235, metadata !DIExpression()), !dbg !363
  %43 = load ptr, ptr %pic.addr, align 8, !dbg !364, !tbaa !156
  %y31 = getelementptr inbounds %struct.WebPPicture, ptr %43, i32 0, i32 4, !dbg !365
  %44 = load ptr, ptr %y31, align 8, !dbg !365, !tbaa !366
  store ptr %44, ptr %y_ptr, align 8, !dbg !363, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %u_ptr) #6, !dbg !367
  tail call void @llvm.dbg.declare(metadata ptr %u_ptr, metadata !236, metadata !DIExpression()), !dbg !368
  %45 = load ptr, ptr %pic.addr, align 8, !dbg !369, !tbaa !156
  %u = getelementptr inbounds %struct.WebPPicture, ptr %45, i32 0, i32 5, !dbg !370
  %46 = load ptr, ptr %u, align 8, !dbg !370, !tbaa !371
  store ptr %46, ptr %u_ptr, align 8, !dbg !368, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_ptr) #6, !dbg !372
  tail call void @llvm.dbg.declare(metadata ptr %v_ptr, metadata !237, metadata !DIExpression()), !dbg !373
  %47 = load ptr, ptr %pic.addr, align 8, !dbg !374, !tbaa !156
  %v = getelementptr inbounds %struct.WebPPicture, ptr %47, i32 0, i32 6, !dbg !375
  %48 = load ptr, ptr %v, align 8, !dbg !375, !tbaa !376
  store ptr %48, ptr %v_ptr, align 8, !dbg !373, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_ptr) #6, !dbg !377
  tail call void @llvm.dbg.declare(metadata ptr %a_ptr, metadata !238, metadata !DIExpression()), !dbg !378
  %49 = load ptr, ptr %pic.addr, align 8, !dbg !379, !tbaa !156
  %a = getelementptr inbounds %struct.WebPPicture, ptr %49, i32 0, i32 9, !dbg !380
  %50 = load ptr, ptr %a, align 8, !dbg !380, !tbaa !381
  store ptr %50, ptr %a_ptr, align 8, !dbg !378, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 12, ptr %values) #6, !dbg !382
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !239, metadata !DIExpression()), !dbg !383
  call void @llvm.memset.p0.i64(ptr align 4 %values, i8 0, i64 12, i1 false), !dbg !383
  %51 = load ptr, ptr %a_ptr, align 8, !dbg !384, !tbaa !156
  %cmp32 = icmp eq ptr %51, null, !dbg !386
  br i1 %cmp32, label %if.then38, label %lor.lhs.false, !dbg !387

lor.lhs.false:                                    ; preds = %if.else23
  %52 = load ptr, ptr %y_ptr, align 8, !dbg !388, !tbaa !156
  %cmp33 = icmp eq ptr %52, null, !dbg !389
  br i1 %cmp33, label %if.then38, label %lor.lhs.false34, !dbg !390

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %53 = load ptr, ptr %u_ptr, align 8, !dbg !391, !tbaa !156
  %cmp35 = icmp eq ptr %53, null, !dbg !392
  br i1 %cmp35, label %if.then38, label %lor.lhs.false36, !dbg !393

lor.lhs.false36:                                  ; preds = %lor.lhs.false34
  %54 = load ptr, ptr %v_ptr, align 8, !dbg !394, !tbaa !156
  %cmp37 = icmp eq ptr %54, null, !dbg !395
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !396

if.then38:                                        ; preds = %lor.lhs.false36, %lor.lhs.false34, %lor.lhs.false, %if.else23
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !397

if.end39:                                         ; preds = %lor.lhs.false36
  store i32 0, ptr %y, align 4, !dbg !399, !tbaa !161
  br label %for.cond40, !dbg !400

for.cond40:                                       ; preds = %for.inc108, %if.end39
  %55 = load i32, ptr %y, align 4, !dbg !401, !tbaa !161
  %add41 = add nsw i32 %55, 8, !dbg !402
  %56 = load i32, ptr %height26, align 4, !dbg !403, !tbaa !161
  %cmp42 = icmp sle i32 %add41, %56, !dbg !404
  br i1 %cmp42, label %for.body43, label %for.end110, !dbg !405

for.body43:                                       ; preds = %for.cond40
  call void @llvm.lifetime.start.p0(i64 4, ptr %need_reset44) #6, !dbg !406
  tail call void @llvm.dbg.declare(metadata ptr %need_reset44, metadata !240, metadata !DIExpression()), !dbg !407
  store i32 1, ptr %need_reset44, align 4, !dbg !407, !tbaa !161
  store i32 0, ptr %x, align 4, !dbg !408, !tbaa !161
  br label %for.cond45, !dbg !410

for.cond45:                                       ; preds = %for.inc84, %for.body43
  %57 = load i32, ptr %x, align 4, !dbg !411, !tbaa !161
  %add46 = add nsw i32 %57, 8, !dbg !413
  %58 = load i32, ptr %width24, align 4, !dbg !414, !tbaa !161
  %cmp47 = icmp sle i32 %add46, %58, !dbg !415
  br i1 %cmp47, label %for.body48, label %for.end86, !dbg !416

for.body48:                                       ; preds = %for.cond45
  %59 = load ptr, ptr %a_ptr, align 8, !dbg !417, !tbaa !156
  %60 = load i32, ptr %x, align 4, !dbg !420, !tbaa !161
  %idx.ext49 = sext i32 %60 to i64, !dbg !421
  %add.ptr50 = getelementptr inbounds i8, ptr %59, i64 %idx.ext49, !dbg !421
  %61 = load i32, ptr %a_stride, align 4, !dbg !422, !tbaa !161
  %62 = load ptr, ptr %y_ptr, align 8, !dbg !423, !tbaa !156
  %63 = load i32, ptr %x, align 4, !dbg !424, !tbaa !161
  %idx.ext51 = sext i32 %63 to i64, !dbg !425
  %add.ptr52 = getelementptr inbounds i8, ptr %62, i64 %idx.ext51, !dbg !425
  %64 = load i32, ptr %y_stride, align 4, !dbg !426, !tbaa !161
  %call53 = call i32 @SmoothenBlock(ptr noundef %add.ptr50, i32 noundef %61, ptr noundef %add.ptr52, i32 noundef %64, i32 noundef 8, i32 noundef 8), !dbg !427
  %tobool54 = icmp ne i32 %call53, 0, !dbg !427
  br i1 %tobool54, label %if.then55, label %if.else82, !dbg !428

if.then55:                                        ; preds = %for.body48
  %65 = load i32, ptr %need_reset44, align 4, !dbg !429, !tbaa !161
  %tobool56 = icmp ne i32 %65, 0, !dbg !429
  br i1 %tobool56, label %if.then57, label %if.end70, !dbg !432

if.then57:                                        ; preds = %if.then55
  %66 = load ptr, ptr %y_ptr, align 8, !dbg !433, !tbaa !156
  %67 = load i32, ptr %x, align 4, !dbg !435, !tbaa !161
  %idxprom58 = sext i32 %67 to i64, !dbg !433
  %arrayidx59 = getelementptr inbounds i8, ptr %66, i64 %idxprom58, !dbg !433
  %68 = load i8, ptr %arrayidx59, align 1, !dbg !433, !tbaa !436
  %conv = zext i8 %68 to i32, !dbg !433
  %arrayidx60 = getelementptr inbounds [3 x i32], ptr %values, i64 0, i64 0, !dbg !437
  store i32 %conv, ptr %arrayidx60, align 4, !dbg !438, !tbaa !161
  %69 = load ptr, ptr %u_ptr, align 8, !dbg !439, !tbaa !156
  %70 = load i32, ptr %x, align 4, !dbg !440, !tbaa !161
  %shr = ashr i32 %70, 1, !dbg !441
  %idxprom61 = sext i32 %shr to i64, !dbg !439
  %arrayidx62 = getelementptr inbounds i8, ptr %69, i64 %idxprom61, !dbg !439
  %71 = load i8, ptr %arrayidx62, align 1, !dbg !439, !tbaa !436
  %conv63 = zext i8 %71 to i32, !dbg !439
  %arrayidx64 = getelementptr inbounds [3 x i32], ptr %values, i64 0, i64 1, !dbg !442
  store i32 %conv63, ptr %arrayidx64, align 4, !dbg !443, !tbaa !161
  %72 = load ptr, ptr %v_ptr, align 8, !dbg !444, !tbaa !156
  %73 = load i32, ptr %x, align 4, !dbg !445, !tbaa !161
  %shr65 = ashr i32 %73, 1, !dbg !446
  %idxprom66 = sext i32 %shr65 to i64, !dbg !444
  %arrayidx67 = getelementptr inbounds i8, ptr %72, i64 %idxprom66, !dbg !444
  %74 = load i8, ptr %arrayidx67, align 1, !dbg !444, !tbaa !436
  %conv68 = zext i8 %74 to i32, !dbg !444
  %arrayidx69 = getelementptr inbounds [3 x i32], ptr %values, i64 0, i64 2, !dbg !447
  store i32 %conv68, ptr %arrayidx69, align 4, !dbg !448, !tbaa !161
  store i32 0, ptr %need_reset44, align 4, !dbg !449, !tbaa !161
  br label %if.end70, !dbg !450

if.end70:                                         ; preds = %if.then57, %if.then55
  %75 = load ptr, ptr %y_ptr, align 8, !dbg !451, !tbaa !156
  %76 = load i32, ptr %x, align 4, !dbg !452, !tbaa !161
  %idx.ext71 = sext i32 %76 to i64, !dbg !453
  %add.ptr72 = getelementptr inbounds i8, ptr %75, i64 %idx.ext71, !dbg !453
  %arrayidx73 = getelementptr inbounds [3 x i32], ptr %values, i64 0, i64 0, !dbg !454
  %77 = load i32, ptr %arrayidx73, align 4, !dbg !454, !tbaa !161
  %78 = load i32, ptr %y_stride, align 4, !dbg !455, !tbaa !161
  call void @Flatten(ptr noundef %add.ptr72, i32 noundef %77, i32 noundef %78, i32 noundef 8), !dbg !456
  %79 = load ptr, ptr %u_ptr, align 8, !dbg !457, !tbaa !156
  %80 = load i32, ptr %x, align 4, !dbg !458, !tbaa !161
  %shr74 = ashr i32 %80, 1, !dbg !459
  %idx.ext75 = sext i32 %shr74 to i64, !dbg !460
  %add.ptr76 = getelementptr inbounds i8, ptr %79, i64 %idx.ext75, !dbg !460
  %arrayidx77 = getelementptr inbounds [3 x i32], ptr %values, i64 0, i64 1, !dbg !461
  %81 = load i32, ptr %arrayidx77, align 4, !dbg !461, !tbaa !161
  %82 = load i32, ptr %uv_stride, align 4, !dbg !462, !tbaa !161
  call void @Flatten(ptr noundef %add.ptr76, i32 noundef %81, i32 noundef %82, i32 noundef 4), !dbg !463
  %83 = load ptr, ptr %v_ptr, align 8, !dbg !464, !tbaa !156
  %84 = load i32, ptr %x, align 4, !dbg !465, !tbaa !161
  %shr78 = ashr i32 %84, 1, !dbg !466
  %idx.ext79 = sext i32 %shr78 to i64, !dbg !467
  %add.ptr80 = getelementptr inbounds i8, ptr %83, i64 %idx.ext79, !dbg !467
  %arrayidx81 = getelementptr inbounds [3 x i32], ptr %values, i64 0, i64 2, !dbg !468
  %85 = load i32, ptr %arrayidx81, align 4, !dbg !468, !tbaa !161
  %86 = load i32, ptr %uv_stride, align 4, !dbg !469, !tbaa !161
  call void @Flatten(ptr noundef %add.ptr80, i32 noundef %85, i32 noundef %86, i32 noundef 4), !dbg !470
  br label %if.end83, !dbg !471

if.else82:                                        ; preds = %for.body48
  store i32 1, ptr %need_reset44, align 4, !dbg !472, !tbaa !161
  br label %if.end83

if.end83:                                         ; preds = %if.else82, %if.end70
  br label %for.inc84, !dbg !474

for.inc84:                                        ; preds = %if.end83
  %87 = load i32, ptr %x, align 4, !dbg !475, !tbaa !161
  %add85 = add nsw i32 %87, 8, !dbg !475
  store i32 %add85, ptr %x, align 4, !dbg !475, !tbaa !161
  br label %for.cond45, !dbg !476, !llvm.loop !477

for.end86:                                        ; preds = %for.cond45
  %88 = load i32, ptr %x, align 4, !dbg !479, !tbaa !161
  %89 = load i32, ptr %width24, align 4, !dbg !481, !tbaa !161
  %cmp87 = icmp slt i32 %88, %89, !dbg !482
  br i1 %cmp87, label %if.then89, label %if.end95, !dbg !483

if.then89:                                        ; preds = %for.end86
  %90 = load ptr, ptr %a_ptr, align 8, !dbg !484, !tbaa !156
  %91 = load i32, ptr %x, align 4, !dbg !486, !tbaa !161
  %idx.ext90 = sext i32 %91 to i64, !dbg !487
  %add.ptr91 = getelementptr inbounds i8, ptr %90, i64 %idx.ext90, !dbg !487
  %92 = load i32, ptr %a_stride, align 4, !dbg !488, !tbaa !161
  %93 = load ptr, ptr %y_ptr, align 8, !dbg !489, !tbaa !156
  %94 = load i32, ptr %x, align 4, !dbg !490, !tbaa !161
  %idx.ext92 = sext i32 %94 to i64, !dbg !491
  %add.ptr93 = getelementptr inbounds i8, ptr %93, i64 %idx.ext92, !dbg !491
  %95 = load i32, ptr %y_stride, align 4, !dbg !492, !tbaa !161
  %96 = load i32, ptr %width24, align 4, !dbg !493, !tbaa !161
  %97 = load i32, ptr %x, align 4, !dbg !494, !tbaa !161
  %sub = sub nsw i32 %96, %97, !dbg !495
  %call94 = call i32 @SmoothenBlock(ptr noundef %add.ptr91, i32 noundef %92, ptr noundef %add.ptr93, i32 noundef %95, i32 noundef %sub, i32 noundef 8), !dbg !496
  br label %if.end95, !dbg !497

if.end95:                                         ; preds = %if.then89, %for.end86
  %98 = load i32, ptr %a_stride, align 4, !dbg !498, !tbaa !161
  %mul96 = mul nsw i32 8, %98, !dbg !499
  %99 = load ptr, ptr %a_ptr, align 8, !dbg !500, !tbaa !156
  %idx.ext97 = sext i32 %mul96 to i64, !dbg !500
  %add.ptr98 = getelementptr inbounds i8, ptr %99, i64 %idx.ext97, !dbg !500
  store ptr %add.ptr98, ptr %a_ptr, align 8, !dbg !500, !tbaa !156
  %100 = load i32, ptr %y_stride, align 4, !dbg !501, !tbaa !161
  %mul99 = mul nsw i32 8, %100, !dbg !502
  %101 = load ptr, ptr %y_ptr, align 8, !dbg !503, !tbaa !156
  %idx.ext100 = sext i32 %mul99 to i64, !dbg !503
  %add.ptr101 = getelementptr inbounds i8, ptr %101, i64 %idx.ext100, !dbg !503
  store ptr %add.ptr101, ptr %y_ptr, align 8, !dbg !503, !tbaa !156
  %102 = load i32, ptr %uv_stride, align 4, !dbg !504, !tbaa !161
  %mul102 = mul nsw i32 4, %102, !dbg !505
  %103 = load ptr, ptr %u_ptr, align 8, !dbg !506, !tbaa !156
  %idx.ext103 = sext i32 %mul102 to i64, !dbg !506
  %add.ptr104 = getelementptr inbounds i8, ptr %103, i64 %idx.ext103, !dbg !506
  store ptr %add.ptr104, ptr %u_ptr, align 8, !dbg !506, !tbaa !156
  %104 = load i32, ptr %uv_stride, align 4, !dbg !507, !tbaa !161
  %mul105 = mul nsw i32 4, %104, !dbg !508
  %105 = load ptr, ptr %v_ptr, align 8, !dbg !509, !tbaa !156
  %idx.ext106 = sext i32 %mul105 to i64, !dbg !509
  %add.ptr107 = getelementptr inbounds i8, ptr %105, i64 %idx.ext106, !dbg !509
  store ptr %add.ptr107, ptr %v_ptr, align 8, !dbg !509, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %need_reset44) #6, !dbg !510
  br label %for.inc108, !dbg !511

for.inc108:                                       ; preds = %if.end95
  %106 = load i32, ptr %y, align 4, !dbg !512, !tbaa !161
  %add109 = add nsw i32 %106, 8, !dbg !512
  store i32 %add109, ptr %y, align 4, !dbg !512, !tbaa !161
  br label %for.cond40, !dbg !513, !llvm.loop !514

for.end110:                                       ; preds = %for.cond40
  %107 = load i32, ptr %y, align 4, !dbg !516, !tbaa !161
  %108 = load i32, ptr %height26, align 4, !dbg !517, !tbaa !161
  %cmp111 = icmp slt i32 %107, %108, !dbg !518
  br i1 %cmp111, label %if.then113, label %if.end138, !dbg !519

if.then113:                                       ; preds = %for.end110
  call void @llvm.lifetime.start.p0(i64 4, ptr %sub_height) #6, !dbg !520
  tail call void @llvm.dbg.declare(metadata ptr %sub_height, metadata !244, metadata !DIExpression()), !dbg !521
  %109 = load i32, ptr %height26, align 4, !dbg !522, !tbaa !161
  %110 = load i32, ptr %y, align 4, !dbg !523, !tbaa !161
  %sub114 = sub nsw i32 %109, %110, !dbg !524
  store i32 %sub114, ptr %sub_height, align 4, !dbg !521, !tbaa !161
  store i32 0, ptr %x, align 4, !dbg !525, !tbaa !161
  br label %for.cond115, !dbg !527

for.cond115:                                      ; preds = %for.inc125, %if.then113
  %111 = load i32, ptr %x, align 4, !dbg !528, !tbaa !161
  %add116 = add nsw i32 %111, 8, !dbg !530
  %112 = load i32, ptr %width24, align 4, !dbg !531, !tbaa !161
  %cmp117 = icmp sle i32 %add116, %112, !dbg !532
  br i1 %cmp117, label %for.body119, label %for.end127, !dbg !533

for.body119:                                      ; preds = %for.cond115
  %113 = load ptr, ptr %a_ptr, align 8, !dbg !534, !tbaa !156
  %114 = load i32, ptr %x, align 4, !dbg !536, !tbaa !161
  %idx.ext120 = sext i32 %114 to i64, !dbg !537
  %add.ptr121 = getelementptr inbounds i8, ptr %113, i64 %idx.ext120, !dbg !537
  %115 = load i32, ptr %a_stride, align 4, !dbg !538, !tbaa !161
  %116 = load ptr, ptr %y_ptr, align 8, !dbg !539, !tbaa !156
  %117 = load i32, ptr %x, align 4, !dbg !540, !tbaa !161
  %idx.ext122 = sext i32 %117 to i64, !dbg !541
  %add.ptr123 = getelementptr inbounds i8, ptr %116, i64 %idx.ext122, !dbg !541
  %118 = load i32, ptr %y_stride, align 4, !dbg !542, !tbaa !161
  %119 = load i32, ptr %sub_height, align 4, !dbg !543, !tbaa !161
  %call124 = call i32 @SmoothenBlock(ptr noundef %add.ptr121, i32 noundef %115, ptr noundef %add.ptr123, i32 noundef %118, i32 noundef 8, i32 noundef %119), !dbg !544
  br label %for.inc125, !dbg !545

for.inc125:                                       ; preds = %for.body119
  %120 = load i32, ptr %x, align 4, !dbg !546, !tbaa !161
  %add126 = add nsw i32 %120, 8, !dbg !546
  store i32 %add126, ptr %x, align 4, !dbg !546, !tbaa !161
  br label %for.cond115, !dbg !547, !llvm.loop !548

for.end127:                                       ; preds = %for.cond115
  %121 = load i32, ptr %x, align 4, !dbg !550, !tbaa !161
  %122 = load i32, ptr %width24, align 4, !dbg !552, !tbaa !161
  %cmp128 = icmp slt i32 %121, %122, !dbg !553
  br i1 %cmp128, label %if.then130, label %if.end137, !dbg !554

if.then130:                                       ; preds = %for.end127
  %123 = load ptr, ptr %a_ptr, align 8, !dbg !555, !tbaa !156
  %124 = load i32, ptr %x, align 4, !dbg !557, !tbaa !161
  %idx.ext131 = sext i32 %124 to i64, !dbg !558
  %add.ptr132 = getelementptr inbounds i8, ptr %123, i64 %idx.ext131, !dbg !558
  %125 = load i32, ptr %a_stride, align 4, !dbg !559, !tbaa !161
  %126 = load ptr, ptr %y_ptr, align 8, !dbg !560, !tbaa !156
  %127 = load i32, ptr %x, align 4, !dbg !561, !tbaa !161
  %idx.ext133 = sext i32 %127 to i64, !dbg !562
  %add.ptr134 = getelementptr inbounds i8, ptr %126, i64 %idx.ext133, !dbg !562
  %128 = load i32, ptr %y_stride, align 4, !dbg !563, !tbaa !161
  %129 = load i32, ptr %width24, align 4, !dbg !564, !tbaa !161
  %130 = load i32, ptr %x, align 4, !dbg !565, !tbaa !161
  %sub135 = sub nsw i32 %129, %130, !dbg !566
  %131 = load i32, ptr %sub_height, align 4, !dbg !567, !tbaa !161
  %call136 = call i32 @SmoothenBlock(ptr noundef %add.ptr132, i32 noundef %125, ptr noundef %add.ptr134, i32 noundef %128, i32 noundef %sub135, i32 noundef %131), !dbg !568
  br label %if.end137, !dbg !569

if.end137:                                        ; preds = %if.then130, %for.end127
  call void @llvm.lifetime.end.p0(i64 4, ptr %sub_height) #6, !dbg !570
  br label %if.end138, !dbg !571

if.end138:                                        ; preds = %if.end137, %for.end110
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !572
  br label %cleanup, !dbg !572

cleanup:                                          ; preds = %if.end138, %if.then38
  call void @llvm.lifetime.end.p0(i64 12, ptr %values) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_ptr) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_ptr) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 8, ptr %u_ptr) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ptr) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_stride) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 4, ptr %uv_stride) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_stride) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 4, ptr %height26) #6, !dbg !572
  call void @llvm.lifetime.end.p0(i64 4, ptr %width24) #6, !dbg !572
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup149 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end148

if.end148:                                        ; preds = %cleanup.cont, %for.end22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !573
  br label %cleanup149, !dbg !573

cleanup149:                                       ; preds = %if.end148, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #6, !dbg !573
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #6, !dbg !573
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6, !dbg !573
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !573
  %cleanup.dest153 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest153, label %unreachable [
    i32 0, label %cleanup.cont154
    i32 1, label %cleanup.cont154
  ]

cleanup.cont154:                                  ; preds = %cleanup149, %cleanup149
  ret void, !dbg !573

unreachable:                                      ; preds = %cleanup149
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @IsTransparentARGBArea(ptr noundef %ptr, i32 noundef %stride, i32 noundef %size) #0 !dbg !574 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %stride.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !580, metadata !DIExpression()), !dbg !585
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !581, metadata !DIExpression()), !dbg !586
  store i32 %size, ptr %size.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !582, metadata !DIExpression()), !dbg !587
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6, !dbg !588
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !583, metadata !DIExpression()), !dbg !589
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !588
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !584, metadata !DIExpression()), !dbg !590
  store i32 0, ptr %y, align 4, !dbg !591, !tbaa !161
  br label %for.cond, !dbg !593

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %y, align 4, !dbg !594, !tbaa !161
  %1 = load i32, ptr %size.addr, align 4, !dbg !596, !tbaa !161
  %cmp = icmp slt i32 %0, %1, !dbg !597
  br i1 %cmp, label %for.body, label %for.end6, !dbg !598

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !dbg !599, !tbaa !161
  br label %for.cond1, !dbg !602

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %x, align 4, !dbg !603, !tbaa !161
  %3 = load i32, ptr %size.addr, align 4, !dbg !605, !tbaa !161
  %cmp2 = icmp slt i32 %2, %3, !dbg !606
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !607

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !608, !tbaa !156
  %5 = load i32, ptr %x, align 4, !dbg !611, !tbaa !161
  %idxprom = sext i32 %5 to i64, !dbg !608
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom, !dbg !608
  %6 = load i32, ptr %arrayidx, align 4, !dbg !608, !tbaa !161
  %and = and i32 %6, -16777216, !dbg !612
  %tobool = icmp ne i32 %and, 0, !dbg !612
  br i1 %tobool, label %if.then, label %if.end, !dbg !613

if.then:                                          ; preds = %for.body3
  store i32 0, ptr %retval, align 4, !dbg !614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !614

if.end:                                           ; preds = %for.body3
  br label %for.inc, !dbg !616

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %x, align 4, !dbg !617, !tbaa !161
  %inc = add nsw i32 %7, 1, !dbg !617
  store i32 %inc, ptr %x, align 4, !dbg !617, !tbaa !161
  br label %for.cond1, !dbg !618, !llvm.loop !619

for.end:                                          ; preds = %for.cond1
  %8 = load i32, ptr %stride.addr, align 4, !dbg !621, !tbaa !161
  %9 = load ptr, ptr %ptr.addr, align 8, !dbg !622, !tbaa !156
  %idx.ext = sext i32 %8 to i64, !dbg !622
  %add.ptr = getelementptr inbounds i32, ptr %9, i64 %idx.ext, !dbg !622
  store ptr %add.ptr, ptr %ptr.addr, align 8, !dbg !622, !tbaa !156
  br label %for.inc4, !dbg !623

for.inc4:                                         ; preds = %for.end
  %10 = load i32, ptr %y, align 4, !dbg !624, !tbaa !161
  %inc5 = add nsw i32 %10, 1, !dbg !624
  store i32 %inc5, ptr %y, align 4, !dbg !624, !tbaa !161
  br label %for.cond, !dbg !625, !llvm.loop !626

for.end6:                                         ; preds = %for.cond
  store i32 1, ptr %retval, align 4, !dbg !628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !628

cleanup:                                          ; preds = %for.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !629
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6, !dbg !629
  %11 = load i32, ptr %retval, align 4, !dbg !629
  ret i32 %11, !dbg !629
}

; Function Attrs: nounwind uwtable
define internal void @FlattenARGB(ptr noundef %ptr, i32 noundef %v, i32 noundef %stride, i32 noundef %size) #0 !dbg !630 {
entry:
  %ptr.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !634, metadata !DIExpression()), !dbg !640
  store i32 %v, ptr %v.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !635, metadata !DIExpression()), !dbg !641
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !636, metadata !DIExpression()), !dbg !642
  store i32 %size, ptr %size.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !637, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !644
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !638, metadata !DIExpression()), !dbg !645
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6, !dbg !644
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !639, metadata !DIExpression()), !dbg !646
  store i32 0, ptr %y, align 4, !dbg !647, !tbaa !161
  br label %for.cond, !dbg !649

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %y, align 4, !dbg !650, !tbaa !161
  %1 = load i32, ptr %size.addr, align 4, !dbg !652, !tbaa !161
  %cmp = icmp slt i32 %0, %1, !dbg !653
  br i1 %cmp, label %for.body, label %for.end6, !dbg !654

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !dbg !655, !tbaa !161
  br label %for.cond1, !dbg !658

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %x, align 4, !dbg !659, !tbaa !161
  %3 = load i32, ptr %size.addr, align 4, !dbg !661, !tbaa !161
  %cmp2 = icmp slt i32 %2, %3, !dbg !662
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !663

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %v.addr, align 4, !dbg !664, !tbaa !161
  %5 = load ptr, ptr %ptr.addr, align 8, !dbg !665, !tbaa !156
  %6 = load i32, ptr %x, align 4, !dbg !666, !tbaa !161
  %idxprom = sext i32 %6 to i64, !dbg !665
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom, !dbg !665
  store i32 %4, ptr %arrayidx, align 4, !dbg !667, !tbaa !161
  br label %for.inc, !dbg !665

for.inc:                                          ; preds = %for.body3
  %7 = load i32, ptr %x, align 4, !dbg !668, !tbaa !161
  %inc = add nsw i32 %7, 1, !dbg !668
  store i32 %inc, ptr %x, align 4, !dbg !668, !tbaa !161
  br label %for.cond1, !dbg !669, !llvm.loop !670

for.end:                                          ; preds = %for.cond1
  %8 = load i32, ptr %stride.addr, align 4, !dbg !672, !tbaa !161
  %9 = load ptr, ptr %ptr.addr, align 8, !dbg !673, !tbaa !156
  %idx.ext = sext i32 %8 to i64, !dbg !673
  %add.ptr = getelementptr inbounds i32, ptr %9, i64 %idx.ext, !dbg !673
  store ptr %add.ptr, ptr %ptr.addr, align 8, !dbg !673, !tbaa !156
  br label %for.inc4, !dbg !674

for.inc4:                                         ; preds = %for.end
  %10 = load i32, ptr %y, align 4, !dbg !675, !tbaa !161
  %inc5 = add nsw i32 %10, 1, !dbg !675
  store i32 %inc5, ptr %y, align 4, !dbg !675, !tbaa !161
  br label %for.cond, !dbg !676, !llvm.loop !677

for.end6:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6, !dbg !679
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !679
  ret void, !dbg !679
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal i32 @SmoothenBlock(ptr noundef %a_ptr, i32 noundef %a_stride, ptr noundef %y_ptr, i32 noundef %y_stride, i32 noundef %width, i32 noundef %height) #0 !dbg !680 {
entry:
  %a_ptr.addr = alloca ptr, align 8
  %a_stride.addr = alloca i32, align 4
  %y_ptr.addr = alloca ptr, align 8
  %y_stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %count = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %alpha_ptr = alloca ptr, align 8
  %luma_ptr = alloca ptr, align 8
  %avg_u8 = alloca i8, align 1
  store ptr %a_ptr, ptr %a_ptr.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %a_ptr.addr, metadata !684, metadata !DIExpression()), !dbg !699
  store i32 %a_stride, ptr %a_stride.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %a_stride.addr, metadata !685, metadata !DIExpression()), !dbg !700
  store ptr %y_ptr, ptr %y_ptr.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %y_ptr.addr, metadata !686, metadata !DIExpression()), !dbg !701
  store i32 %y_stride, ptr %y_stride.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %y_stride.addr, metadata !687, metadata !DIExpression()), !dbg !702
  store i32 %width, ptr %width.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !688, metadata !DIExpression()), !dbg !703
  store i32 %height, ptr %height.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %height.addr, metadata !689, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #6, !dbg !705
  tail call void @llvm.dbg.declare(metadata ptr %sum, metadata !690, metadata !DIExpression()), !dbg !706
  store i32 0, ptr %sum, align 4, !dbg !706, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !705
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !691, metadata !DIExpression()), !dbg !707
  store i32 0, ptr %count, align 4, !dbg !707, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !708
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !692, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6, !dbg !708
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !693, metadata !DIExpression()), !dbg !710
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_ptr) #6, !dbg !711
  tail call void @llvm.dbg.declare(metadata ptr %alpha_ptr, metadata !694, metadata !DIExpression()), !dbg !712
  %0 = load ptr, ptr %a_ptr.addr, align 8, !dbg !713, !tbaa !156
  store ptr %0, ptr %alpha_ptr, align 8, !dbg !712, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %luma_ptr) #6, !dbg !714
  tail call void @llvm.dbg.declare(metadata ptr %luma_ptr, metadata !695, metadata !DIExpression()), !dbg !715
  %1 = load ptr, ptr %y_ptr.addr, align 8, !dbg !716, !tbaa !156
  store ptr %1, ptr %luma_ptr, align 8, !dbg !715, !tbaa !156
  store i32 0, ptr %y, align 4, !dbg !717, !tbaa !161
  br label %for.cond, !dbg !719

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, ptr %y, align 4, !dbg !720, !tbaa !161
  %3 = load i32, ptr %height.addr, align 4, !dbg !722, !tbaa !161
  %cmp = icmp slt i32 %2, %3, !dbg !723
  br i1 %cmp, label %for.body, label %for.end14, !dbg !724

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !dbg !725, !tbaa !161
  br label %for.cond1, !dbg !728

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %x, align 4, !dbg !729, !tbaa !161
  %5 = load i32, ptr %width.addr, align 4, !dbg !731, !tbaa !161
  %cmp2 = icmp slt i32 %4, %5, !dbg !732
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !733

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %alpha_ptr, align 8, !dbg !734, !tbaa !156
  %7 = load i32, ptr %x, align 4, !dbg !737, !tbaa !161
  %idxprom = sext i32 %7 to i64, !dbg !734
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom, !dbg !734
  %8 = load i8, ptr %arrayidx, align 1, !dbg !734, !tbaa !436
  %conv = zext i8 %8 to i32, !dbg !734
  %cmp4 = icmp ne i32 %conv, 0, !dbg !738
  br i1 %cmp4, label %if.then, label %if.end, !dbg !739

if.then:                                          ; preds = %for.body3
  %9 = load i32, ptr %count, align 4, !dbg !740, !tbaa !161
  %inc = add nsw i32 %9, 1, !dbg !740
  store i32 %inc, ptr %count, align 4, !dbg !740, !tbaa !161
  %10 = load ptr, ptr %luma_ptr, align 8, !dbg !742, !tbaa !156
  %11 = load i32, ptr %x, align 4, !dbg !743, !tbaa !161
  %idxprom6 = sext i32 %11 to i64, !dbg !742
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %idxprom6, !dbg !742
  %12 = load i8, ptr %arrayidx7, align 1, !dbg !742, !tbaa !436
  %conv8 = zext i8 %12 to i32, !dbg !742
  %13 = load i32, ptr %sum, align 4, !dbg !744, !tbaa !161
  %add = add nsw i32 %13, %conv8, !dbg !744
  store i32 %add, ptr %sum, align 4, !dbg !744, !tbaa !161
  br label %if.end, !dbg !745

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc, !dbg !746

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %x, align 4, !dbg !747, !tbaa !161
  %inc9 = add nsw i32 %14, 1, !dbg !747
  store i32 %inc9, ptr %x, align 4, !dbg !747, !tbaa !161
  br label %for.cond1, !dbg !748, !llvm.loop !749

for.end:                                          ; preds = %for.cond1
  %15 = load i32, ptr %a_stride.addr, align 4, !dbg !751, !tbaa !161
  %16 = load ptr, ptr %alpha_ptr, align 8, !dbg !752, !tbaa !156
  %idx.ext = sext i32 %15 to i64, !dbg !752
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext, !dbg !752
  store ptr %add.ptr, ptr %alpha_ptr, align 8, !dbg !752, !tbaa !156
  %17 = load i32, ptr %y_stride.addr, align 4, !dbg !753, !tbaa !161
  %18 = load ptr, ptr %luma_ptr, align 8, !dbg !754, !tbaa !156
  %idx.ext10 = sext i32 %17 to i64, !dbg !754
  %add.ptr11 = getelementptr inbounds i8, ptr %18, i64 %idx.ext10, !dbg !754
  store ptr %add.ptr11, ptr %luma_ptr, align 8, !dbg !754, !tbaa !156
  br label %for.inc12, !dbg !755

for.inc12:                                        ; preds = %for.end
  %19 = load i32, ptr %y, align 4, !dbg !756, !tbaa !161
  %inc13 = add nsw i32 %19, 1, !dbg !756
  store i32 %inc13, ptr %y, align 4, !dbg !756, !tbaa !161
  br label %for.cond, !dbg !757, !llvm.loop !758

for.end14:                                        ; preds = %for.cond
  %20 = load i32, ptr %count, align 4, !dbg !760, !tbaa !161
  %cmp15 = icmp sgt i32 %20, 0, !dbg !761
  br i1 %cmp15, label %land.lhs.true, label %if.end48, !dbg !762

land.lhs.true:                                    ; preds = %for.end14
  %21 = load i32, ptr %count, align 4, !dbg !763, !tbaa !161
  %22 = load i32, ptr %width.addr, align 4, !dbg !764, !tbaa !161
  %23 = load i32, ptr %height.addr, align 4, !dbg !765, !tbaa !161
  %mul = mul nsw i32 %22, %23, !dbg !766
  %cmp17 = icmp slt i32 %21, %mul, !dbg !767
  br i1 %cmp17, label %if.then19, label %if.end48, !dbg !768

if.then19:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr %avg_u8) #6, !dbg !769
  tail call void @llvm.dbg.declare(metadata ptr %avg_u8, metadata !696, metadata !DIExpression()), !dbg !770
  %24 = load i32, ptr %sum, align 4, !dbg !771, !tbaa !161
  %25 = load i32, ptr %count, align 4, !dbg !772, !tbaa !161
  %div = sdiv i32 %24, %25, !dbg !773
  %conv20 = trunc i32 %div to i8, !dbg !774
  store i8 %conv20, ptr %avg_u8, align 1, !dbg !770, !tbaa !436
  %26 = load ptr, ptr %a_ptr.addr, align 8, !dbg !775, !tbaa !156
  store ptr %26, ptr %alpha_ptr, align 8, !dbg !776, !tbaa !156
  %27 = load ptr, ptr %y_ptr.addr, align 8, !dbg !777, !tbaa !156
  store ptr %27, ptr %luma_ptr, align 8, !dbg !778, !tbaa !156
  store i32 0, ptr %y, align 4, !dbg !779, !tbaa !161
  br label %for.cond21, !dbg !781

for.cond21:                                       ; preds = %for.inc45, %if.then19
  %28 = load i32, ptr %y, align 4, !dbg !782, !tbaa !161
  %29 = load i32, ptr %height.addr, align 4, !dbg !784, !tbaa !161
  %cmp22 = icmp slt i32 %28, %29, !dbg !785
  br i1 %cmp22, label %for.body24, label %for.end47, !dbg !786

for.body24:                                       ; preds = %for.cond21
  store i32 0, ptr %x, align 4, !dbg !787, !tbaa !161
  br label %for.cond25, !dbg !790

for.cond25:                                       ; preds = %for.inc38, %for.body24
  %30 = load i32, ptr %x, align 4, !dbg !791, !tbaa !161
  %31 = load i32, ptr %width.addr, align 4, !dbg !793, !tbaa !161
  %cmp26 = icmp slt i32 %30, %31, !dbg !794
  br i1 %cmp26, label %for.body28, label %for.end40, !dbg !795

for.body28:                                       ; preds = %for.cond25
  %32 = load ptr, ptr %alpha_ptr, align 8, !dbg !796, !tbaa !156
  %33 = load i32, ptr %x, align 4, !dbg !799, !tbaa !161
  %idxprom29 = sext i32 %33 to i64, !dbg !796
  %arrayidx30 = getelementptr inbounds i8, ptr %32, i64 %idxprom29, !dbg !796
  %34 = load i8, ptr %arrayidx30, align 1, !dbg !796, !tbaa !436
  %conv31 = zext i8 %34 to i32, !dbg !796
  %cmp32 = icmp eq i32 %conv31, 0, !dbg !800
  br i1 %cmp32, label %if.then34, label %if.end37, !dbg !801

if.then34:                                        ; preds = %for.body28
  %35 = load i8, ptr %avg_u8, align 1, !dbg !802, !tbaa !436
  %36 = load ptr, ptr %luma_ptr, align 8, !dbg !803, !tbaa !156
  %37 = load i32, ptr %x, align 4, !dbg !804, !tbaa !161
  %idxprom35 = sext i32 %37 to i64, !dbg !803
  %arrayidx36 = getelementptr inbounds i8, ptr %36, i64 %idxprom35, !dbg !803
  store i8 %35, ptr %arrayidx36, align 1, !dbg !805, !tbaa !436
  br label %if.end37, !dbg !803

if.end37:                                         ; preds = %if.then34, %for.body28
  br label %for.inc38, !dbg !806

for.inc38:                                        ; preds = %if.end37
  %38 = load i32, ptr %x, align 4, !dbg !807, !tbaa !161
  %inc39 = add nsw i32 %38, 1, !dbg !807
  store i32 %inc39, ptr %x, align 4, !dbg !807, !tbaa !161
  br label %for.cond25, !dbg !808, !llvm.loop !809

for.end40:                                        ; preds = %for.cond25
  %39 = load i32, ptr %a_stride.addr, align 4, !dbg !811, !tbaa !161
  %40 = load ptr, ptr %alpha_ptr, align 8, !dbg !812, !tbaa !156
  %idx.ext41 = sext i32 %39 to i64, !dbg !812
  %add.ptr42 = getelementptr inbounds i8, ptr %40, i64 %idx.ext41, !dbg !812
  store ptr %add.ptr42, ptr %alpha_ptr, align 8, !dbg !812, !tbaa !156
  %41 = load i32, ptr %y_stride.addr, align 4, !dbg !813, !tbaa !161
  %42 = load ptr, ptr %luma_ptr, align 8, !dbg !814, !tbaa !156
  %idx.ext43 = sext i32 %41 to i64, !dbg !814
  %add.ptr44 = getelementptr inbounds i8, ptr %42, i64 %idx.ext43, !dbg !814
  store ptr %add.ptr44, ptr %luma_ptr, align 8, !dbg !814, !tbaa !156
  br label %for.inc45, !dbg !815

for.inc45:                                        ; preds = %for.end40
  %43 = load i32, ptr %y, align 4, !dbg !816, !tbaa !161
  %inc46 = add nsw i32 %43, 1, !dbg !816
  store i32 %inc46, ptr %y, align 4, !dbg !816, !tbaa !161
  br label %for.cond21, !dbg !817, !llvm.loop !818

for.end47:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 1, ptr %avg_u8) #6, !dbg !820
  br label %if.end48, !dbg !821

if.end48:                                         ; preds = %for.end47, %land.lhs.true, %for.end14
  %44 = load i32, ptr %count, align 4, !dbg !822, !tbaa !161
  %cmp49 = icmp eq i32 %44, 0, !dbg !823
  %conv50 = zext i1 %cmp49 to i32, !dbg !823
  call void @llvm.lifetime.end.p0(i64 8, ptr %luma_ptr) #6, !dbg !824
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_ptr) #6, !dbg !824
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6, !dbg !824
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !824
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !824
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #6, !dbg !824
  ret i32 %conv50, !dbg !825
}

; Function Attrs: nounwind uwtable
define internal void @Flatten(ptr noundef %ptr, i32 noundef %v, i32 noundef %stride, i32 noundef %size) #0 !dbg !826 {
entry:
  %ptr.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !830, metadata !DIExpression()), !dbg !835
  store i32 %v, ptr %v.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !831, metadata !DIExpression()), !dbg !836
  store i32 %stride, ptr %stride.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %stride.addr, metadata !832, metadata !DIExpression()), !dbg !837
  store i32 %size, ptr %size.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !833, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6, !dbg !839
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !834, metadata !DIExpression()), !dbg !840
  store i32 0, ptr %y, align 4, !dbg !841, !tbaa !161
  br label %for.cond, !dbg !843

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %y, align 4, !dbg !844, !tbaa !161
  %1 = load i32, ptr %size.addr, align 4, !dbg !846, !tbaa !161
  %cmp = icmp slt i32 %0, %1, !dbg !847
  br i1 %cmp, label %for.body, label %for.end, !dbg !848

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !849, !tbaa !156
  %3 = load i32, ptr %v.addr, align 4, !dbg !851, !tbaa !161
  %4 = trunc i32 %3 to i8, !dbg !852
  %5 = load i32, ptr %size.addr, align 4, !dbg !853, !tbaa !161
  %conv = sext i32 %5 to i64, !dbg !853
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 %4, i64 %conv, i1 false), !dbg !852
  %6 = load i32, ptr %stride.addr, align 4, !dbg !854, !tbaa !161
  %7 = load ptr, ptr %ptr.addr, align 8, !dbg !855, !tbaa !156
  %idx.ext = sext i32 %6 to i64, !dbg !855
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext, !dbg !855
  store ptr %add.ptr, ptr %ptr.addr, align 8, !dbg !855, !tbaa !156
  br label %for.inc, !dbg !856

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %y, align 4, !dbg !857, !tbaa !161
  %inc = add nsw i32 %8, 1, !dbg !857
  store i32 %inc, ptr %y, align 4, !dbg !857, !tbaa !161
  br label %for.cond, !dbg !858, !llvm.loop !859

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6, !dbg !861
  ret void, !dbg !861
}

; Function Attrs: nounwind uwtable
define void @WebPBlendAlpha(ptr noundef %picture, i32 noundef %background_rgb) #0 !dbg !862 {
entry:
  %picture.addr = alloca ptr, align 8
  %background_rgb.addr = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %uv_width = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %U0 = alloca i32, align 4
  %V0 = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %y_ptr = alloca ptr, align 8
  %u_ptr = alloca ptr, align 8
  %v_ptr = alloca ptr, align 8
  %a_ptr = alloca ptr, align 8
  %alpha = alloca i8, align 1
  %a_ptr2 = alloca ptr, align 8
  %alpha54 = alloca i32, align 4
  %alpha111 = alloca i32, align 4
  %argb = alloca ptr, align 8
  %background = alloca i32, align 4
  %alpha188 = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store ptr %picture, ptr %picture.addr, align 8, !tbaa !156
  tail call void @llvm.dbg.declare(metadata ptr %picture.addr, metadata !866, metadata !DIExpression()), !dbg !919
  store i32 %background_rgb, ptr %background_rgb.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %background_rgb.addr, metadata !867, metadata !DIExpression()), !dbg !920
  call void @llvm.lifetime.start.p0(i64 4, ptr %red) #6, !dbg !921
  tail call void @llvm.dbg.declare(metadata ptr %red, metadata !868, metadata !DIExpression()), !dbg !922
  %0 = load i32, ptr %background_rgb.addr, align 4, !dbg !923, !tbaa !161
  %shr = lshr i32 %0, 16, !dbg !924
  %and = and i32 %shr, 255, !dbg !925
  store i32 %and, ptr %red, align 4, !dbg !922, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %green) #6, !dbg !926
  tail call void @llvm.dbg.declare(metadata ptr %green, metadata !869, metadata !DIExpression()), !dbg !927
  %1 = load i32, ptr %background_rgb.addr, align 4, !dbg !928, !tbaa !161
  %shr1 = lshr i32 %1, 8, !dbg !929
  %and2 = and i32 %shr1, 255, !dbg !930
  store i32 %and2, ptr %green, align 4, !dbg !927, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %blue) #6, !dbg !931
  tail call void @llvm.dbg.declare(metadata ptr %blue, metadata !870, metadata !DIExpression()), !dbg !932
  %2 = load i32, ptr %background_rgb.addr, align 4, !dbg !933, !tbaa !161
  %shr3 = lshr i32 %2, 0, !dbg !934
  %and4 = and i32 %shr3, 255, !dbg !935
  store i32 %and4, ptr %blue, align 4, !dbg !932, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #6, !dbg !936
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !871, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #6, !dbg !936
  tail call void @llvm.dbg.declare(metadata ptr %y, metadata !872, metadata !DIExpression()), !dbg !938
  %3 = load ptr, ptr %picture.addr, align 8, !dbg !939, !tbaa !156
  %cmp = icmp eq ptr %3, null, !dbg !941
  br i1 %cmp, label %if.then, label %if.end, !dbg !942

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249, !dbg !943

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %picture.addr, align 8, !dbg !944, !tbaa !156
  %use_argb = getelementptr inbounds %struct.WebPPicture, ptr %4, i32 0, i32 0, !dbg !945
  %5 = load i32, ptr %use_argb, align 8, !dbg !945, !tbaa !169
  %tobool = icmp ne i32 %5, 0, !dbg !944
  br i1 %tobool, label %if.else175, label %if.then5, !dbg !946

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %uv_width) #6, !dbg !947
  tail call void @llvm.dbg.declare(metadata ptr %uv_width, metadata !873, metadata !DIExpression()), !dbg !948
  %6 = load ptr, ptr %picture.addr, align 8, !dbg !949, !tbaa !156
  %width = getelementptr inbounds %struct.WebPPicture, ptr %6, i32 0, i32 2, !dbg !950
  %7 = load i32, ptr %width, align 8, !dbg !950, !tbaa !192
  %shr6 = ashr i32 %7, 1, !dbg !951
  store i32 %shr6, ptr %uv_width, align 4, !dbg !948, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %Y0) #6, !dbg !952
  tail call void @llvm.dbg.declare(metadata ptr %Y0, metadata !876, metadata !DIExpression()), !dbg !953
  %8 = load i32, ptr %red, align 4, !dbg !954, !tbaa !161
  %9 = load i32, ptr %green, align 4, !dbg !955, !tbaa !161
  %10 = load i32, ptr %blue, align 4, !dbg !956, !tbaa !161
  %call = call i32 @VP8RGBToY(i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef 32768), !dbg !957
  store i32 %call, ptr %Y0, align 4, !dbg !953, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %U0) #6, !dbg !958
  tail call void @llvm.dbg.declare(metadata ptr %U0, metadata !877, metadata !DIExpression()), !dbg !959
  %11 = load i32, ptr %red, align 4, !dbg !960, !tbaa !161
  %mul = mul nsw i32 4, %11, !dbg !961
  %12 = load i32, ptr %green, align 4, !dbg !962, !tbaa !161
  %mul7 = mul nsw i32 4, %12, !dbg !963
  %13 = load i32, ptr %blue, align 4, !dbg !964, !tbaa !161
  %mul8 = mul nsw i32 4, %13, !dbg !965
  %call9 = call i32 @VP8RGBToU(i32 noundef %mul, i32 noundef %mul7, i32 noundef %mul8, i32 noundef 131072), !dbg !966
  store i32 %call9, ptr %U0, align 4, !dbg !959, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %V0) #6, !dbg !967
  tail call void @llvm.dbg.declare(metadata ptr %V0, metadata !878, metadata !DIExpression()), !dbg !968
  %14 = load i32, ptr %red, align 4, !dbg !969, !tbaa !161
  %mul10 = mul nsw i32 4, %14, !dbg !970
  %15 = load i32, ptr %green, align 4, !dbg !971, !tbaa !161
  %mul11 = mul nsw i32 4, %15, !dbg !972
  %16 = load i32, ptr %blue, align 4, !dbg !973, !tbaa !161
  %mul12 = mul nsw i32 4, %16, !dbg !974
  %call13 = call i32 @VP8RGBToV(i32 noundef %mul10, i32 noundef %mul11, i32 noundef %mul12, i32 noundef 131072), !dbg !975
  store i32 %call13, ptr %V0, align 4, !dbg !968, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_alpha) #6, !dbg !976
  tail call void @llvm.dbg.declare(metadata ptr %has_alpha, metadata !879, metadata !DIExpression()), !dbg !977
  %17 = load ptr, ptr %picture.addr, align 8, !dbg !978, !tbaa !156
  %colorspace = getelementptr inbounds %struct.WebPPicture, ptr %17, i32 0, i32 1, !dbg !979
  %18 = load i32, ptr %colorspace, align 4, !dbg !979, !tbaa !980
  %and14 = and i32 %18, 4, !dbg !981
  store i32 %and14, ptr %has_alpha, align 4, !dbg !977, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ptr) #6, !dbg !982
  tail call void @llvm.dbg.declare(metadata ptr %y_ptr, metadata !880, metadata !DIExpression()), !dbg !983
  %19 = load ptr, ptr %picture.addr, align 8, !dbg !984, !tbaa !156
  %y15 = getelementptr inbounds %struct.WebPPicture, ptr %19, i32 0, i32 4, !dbg !985
  %20 = load ptr, ptr %y15, align 8, !dbg !985, !tbaa !366
  store ptr %20, ptr %y_ptr, align 8, !dbg !983, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %u_ptr) #6, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %u_ptr, metadata !881, metadata !DIExpression()), !dbg !987
  %21 = load ptr, ptr %picture.addr, align 8, !dbg !988, !tbaa !156
  %u = getelementptr inbounds %struct.WebPPicture, ptr %21, i32 0, i32 5, !dbg !989
  %22 = load ptr, ptr %u, align 8, !dbg !989, !tbaa !371
  store ptr %22, ptr %u_ptr, align 8, !dbg !987, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_ptr) #6, !dbg !990
  tail call void @llvm.dbg.declare(metadata ptr %v_ptr, metadata !882, metadata !DIExpression()), !dbg !991
  %23 = load ptr, ptr %picture.addr, align 8, !dbg !992, !tbaa !156
  %v = getelementptr inbounds %struct.WebPPicture, ptr %23, i32 0, i32 6, !dbg !993
  %24 = load ptr, ptr %v, align 8, !dbg !993, !tbaa !376
  store ptr %24, ptr %v_ptr, align 8, !dbg !991, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_ptr) #6, !dbg !994
  tail call void @llvm.dbg.declare(metadata ptr %a_ptr, metadata !883, metadata !DIExpression()), !dbg !995
  %25 = load ptr, ptr %picture.addr, align 8, !dbg !996, !tbaa !156
  %a = getelementptr inbounds %struct.WebPPicture, ptr %25, i32 0, i32 9, !dbg !997
  %26 = load ptr, ptr %a, align 8, !dbg !997, !tbaa !381
  store ptr %26, ptr %a_ptr, align 8, !dbg !995, !tbaa !156
  %27 = load i32, ptr %has_alpha, align 4, !dbg !998, !tbaa !161
  %tobool16 = icmp ne i32 %27, 0, !dbg !998
  br i1 %tobool16, label %lor.lhs.false, label %if.then18, !dbg !1000

lor.lhs.false:                                    ; preds = %if.then5
  %28 = load ptr, ptr %a_ptr, align 8, !dbg !1001, !tbaa !156
  %cmp17 = icmp eq ptr %28, null, !dbg !1002
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1003

if.then18:                                        ; preds = %lor.lhs.false, %if.then5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1004

if.end19:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %y, align 4, !dbg !1005, !tbaa !161
  br label %for.cond, !dbg !1006

for.cond:                                         ; preds = %for.inc164, %if.end19
  %29 = load i32, ptr %y, align 4, !dbg !1007, !tbaa !161
  %30 = load ptr, ptr %picture.addr, align 8, !dbg !1008, !tbaa !156
  %height = getelementptr inbounds %struct.WebPPicture, ptr %30, i32 0, i32 3, !dbg !1009
  %31 = load i32, ptr %height, align 4, !dbg !1009, !tbaa !176
  %cmp20 = icmp slt i32 %29, %31, !dbg !1010
  br i1 %cmp20, label %for.body, label %for.end166, !dbg !1011

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !dbg !1012, !tbaa !161
  br label %for.cond21, !dbg !1013

for.cond21:                                       ; preds = %for.inc, %for.body
  %32 = load i32, ptr %x, align 4, !dbg !1014, !tbaa !161
  %33 = load ptr, ptr %picture.addr, align 8, !dbg !1015, !tbaa !156
  %width22 = getelementptr inbounds %struct.WebPPicture, ptr %33, i32 0, i32 2, !dbg !1016
  %34 = load i32, ptr %width22, align 8, !dbg !1016, !tbaa !192
  %cmp23 = icmp slt i32 %32, %34, !dbg !1017
  br i1 %cmp23, label %for.body24, label %for.end, !dbg !1018

for.body24:                                       ; preds = %for.cond21
  call void @llvm.lifetime.start.p0(i64 1, ptr %alpha) #6, !dbg !1019
  tail call void @llvm.dbg.declare(metadata ptr %alpha, metadata !884, metadata !DIExpression()), !dbg !1020
  %35 = load ptr, ptr %a_ptr, align 8, !dbg !1021, !tbaa !156
  %36 = load i32, ptr %x, align 4, !dbg !1022, !tbaa !161
  %idxprom = sext i32 %36 to i64, !dbg !1021
  %arrayidx = getelementptr inbounds i8, ptr %35, i64 %idxprom, !dbg !1021
  %37 = load i8, ptr %arrayidx, align 1, !dbg !1021, !tbaa !436
  store i8 %37, ptr %alpha, align 1, !dbg !1020, !tbaa !436
  %38 = load i8, ptr %alpha, align 1, !dbg !1023, !tbaa !436
  %conv = zext i8 %38 to i32, !dbg !1023
  %cmp25 = icmp slt i32 %conv, 255, !dbg !1025
  br i1 %cmp25, label %if.then27, label %if.end41, !dbg !1026

if.then27:                                        ; preds = %for.body24
  %39 = load i32, ptr %Y0, align 4, !dbg !1027, !tbaa !161
  %40 = load i8, ptr %alpha, align 1, !dbg !1027, !tbaa !436
  %conv28 = zext i8 %40 to i32, !dbg !1027
  %sub = sub nsw i32 255, %conv28, !dbg !1027
  %mul29 = mul nsw i32 %39, %sub, !dbg !1027
  %41 = load ptr, ptr %y_ptr, align 8, !dbg !1027, !tbaa !156
  %42 = load i32, ptr %x, align 4, !dbg !1027, !tbaa !161
  %idxprom30 = sext i32 %42 to i64, !dbg !1027
  %arrayidx31 = getelementptr inbounds i8, ptr %41, i64 %idxprom30, !dbg !1027
  %43 = load i8, ptr %arrayidx31, align 1, !dbg !1027, !tbaa !436
  %conv32 = zext i8 %43 to i32, !dbg !1027
  %44 = load i8, ptr %alpha, align 1, !dbg !1027, !tbaa !436
  %conv33 = zext i8 %44 to i32, !dbg !1027
  %mul34 = mul nsw i32 %conv32, %conv33, !dbg !1027
  %add = add nsw i32 %mul29, %mul34, !dbg !1027
  %mul35 = mul nsw i32 %add, 257, !dbg !1027
  %add36 = add nsw i32 %mul35, 256, !dbg !1027
  %shr37 = ashr i32 %add36, 16, !dbg !1027
  %conv38 = trunc i32 %shr37 to i8, !dbg !1027
  %45 = load ptr, ptr %y_ptr, align 8, !dbg !1029, !tbaa !156
  %46 = load i32, ptr %x, align 4, !dbg !1030, !tbaa !161
  %idxprom39 = sext i32 %46 to i64, !dbg !1029
  %arrayidx40 = getelementptr inbounds i8, ptr %45, i64 %idxprom39, !dbg !1029
  store i8 %conv38, ptr %arrayidx40, align 1, !dbg !1031, !tbaa !436
  br label %if.end41, !dbg !1032

if.end41:                                         ; preds = %if.then27, %for.body24
  call void @llvm.lifetime.end.p0(i64 1, ptr %alpha) #6, !dbg !1033
  br label %for.inc, !dbg !1034

for.inc:                                          ; preds = %if.end41
  %47 = load i32, ptr %x, align 4, !dbg !1035, !tbaa !161
  %inc = add nsw i32 %47, 1, !dbg !1035
  store i32 %inc, ptr %x, align 4, !dbg !1035, !tbaa !161
  br label %for.cond21, !dbg !1036, !llvm.loop !1037

for.end:                                          ; preds = %for.cond21
  %48 = load i32, ptr %y, align 4, !dbg !1039, !tbaa !161
  %and42 = and i32 %48, 1, !dbg !1040
  %cmp43 = icmp eq i32 %and42, 0, !dbg !1041
  br i1 %cmp43, label %if.then45, label %if.else, !dbg !1042

if.then45:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_ptr2) #6, !dbg !1043
  tail call void @llvm.dbg.declare(metadata ptr %a_ptr2, metadata !891, metadata !DIExpression()), !dbg !1044
  %49 = load i32, ptr %y, align 4, !dbg !1045, !tbaa !161
  %add46 = add nsw i32 %49, 1, !dbg !1046
  %50 = load ptr, ptr %picture.addr, align 8, !dbg !1047, !tbaa !156
  %height47 = getelementptr inbounds %struct.WebPPicture, ptr %50, i32 0, i32 3, !dbg !1048
  %51 = load i32, ptr %height47, align 4, !dbg !1048, !tbaa !176
  %cmp48 = icmp eq i32 %add46, %51, !dbg !1049
  br i1 %cmp48, label %cond.true, label %cond.false, !dbg !1050

cond.true:                                        ; preds = %if.then45
  %52 = load ptr, ptr %a_ptr, align 8, !dbg !1051, !tbaa !156
  br label %cond.end, !dbg !1050

cond.false:                                       ; preds = %if.then45
  %53 = load ptr, ptr %a_ptr, align 8, !dbg !1052, !tbaa !156
  %54 = load ptr, ptr %picture.addr, align 8, !dbg !1053, !tbaa !156
  %a_stride = getelementptr inbounds %struct.WebPPicture, ptr %54, i32 0, i32 10, !dbg !1054
  %55 = load i32, ptr %a_stride, align 8, !dbg !1054, !tbaa !361
  %idx.ext = sext i32 %55 to i64, !dbg !1055
  %add.ptr = getelementptr inbounds i8, ptr %53, i64 %idx.ext, !dbg !1055
  br label %cond.end, !dbg !1050

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %52, %cond.true ], [ %add.ptr, %cond.false ], !dbg !1050
  store ptr %cond, ptr %a_ptr2, align 8, !dbg !1044, !tbaa !156
  store i32 0, ptr %x, align 4, !dbg !1056, !tbaa !161
  br label %for.cond50, !dbg !1057

for.cond50:                                       ; preds = %for.inc104, %cond.end
  %56 = load i32, ptr %x, align 4, !dbg !1058, !tbaa !161
  %57 = load i32, ptr %uv_width, align 4, !dbg !1059, !tbaa !161
  %cmp51 = icmp slt i32 %56, %57, !dbg !1060
  br i1 %cmp51, label %for.body53, label %for.end106, !dbg !1061

for.body53:                                       ; preds = %for.cond50
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha54) #6, !dbg !1062
  tail call void @llvm.dbg.declare(metadata ptr %alpha54, metadata !895, metadata !DIExpression()), !dbg !1063
  %58 = load ptr, ptr %a_ptr, align 8, !dbg !1064, !tbaa !156
  %59 = load i32, ptr %x, align 4, !dbg !1065, !tbaa !161
  %mul55 = mul nsw i32 2, %59, !dbg !1066
  %add56 = add nsw i32 %mul55, 0, !dbg !1067
  %idxprom57 = sext i32 %add56 to i64, !dbg !1064
  %arrayidx58 = getelementptr inbounds i8, ptr %58, i64 %idxprom57, !dbg !1064
  %60 = load i8, ptr %arrayidx58, align 1, !dbg !1064, !tbaa !436
  %conv59 = zext i8 %60 to i32, !dbg !1064
  %61 = load ptr, ptr %a_ptr, align 8, !dbg !1068, !tbaa !156
  %62 = load i32, ptr %x, align 4, !dbg !1069, !tbaa !161
  %mul60 = mul nsw i32 2, %62, !dbg !1070
  %add61 = add nsw i32 %mul60, 1, !dbg !1071
  %idxprom62 = sext i32 %add61 to i64, !dbg !1068
  %arrayidx63 = getelementptr inbounds i8, ptr %61, i64 %idxprom62, !dbg !1068
  %63 = load i8, ptr %arrayidx63, align 1, !dbg !1068, !tbaa !436
  %conv64 = zext i8 %63 to i32, !dbg !1068
  %add65 = add nsw i32 %conv59, %conv64, !dbg !1072
  %64 = load ptr, ptr %a_ptr2, align 8, !dbg !1073, !tbaa !156
  %65 = load i32, ptr %x, align 4, !dbg !1074, !tbaa !161
  %mul66 = mul nsw i32 2, %65, !dbg !1075
  %add67 = add nsw i32 %mul66, 0, !dbg !1076
  %idxprom68 = sext i32 %add67 to i64, !dbg !1073
  %arrayidx69 = getelementptr inbounds i8, ptr %64, i64 %idxprom68, !dbg !1073
  %66 = load i8, ptr %arrayidx69, align 1, !dbg !1073, !tbaa !436
  %conv70 = zext i8 %66 to i32, !dbg !1073
  %add71 = add nsw i32 %add65, %conv70, !dbg !1077
  %67 = load ptr, ptr %a_ptr2, align 8, !dbg !1078, !tbaa !156
  %68 = load i32, ptr %x, align 4, !dbg !1079, !tbaa !161
  %mul72 = mul nsw i32 2, %68, !dbg !1080
  %add73 = add nsw i32 %mul72, 1, !dbg !1081
  %idxprom74 = sext i32 %add73 to i64, !dbg !1078
  %arrayidx75 = getelementptr inbounds i8, ptr %67, i64 %idxprom74, !dbg !1078
  %69 = load i8, ptr %arrayidx75, align 1, !dbg !1078, !tbaa !436
  %conv76 = zext i8 %69 to i32, !dbg !1078
  %add77 = add nsw i32 %add71, %conv76, !dbg !1082
  store i32 %add77, ptr %alpha54, align 4, !dbg !1063, !tbaa !161
  %70 = load i32, ptr %U0, align 4, !dbg !1083, !tbaa !161
  %71 = load i32, ptr %alpha54, align 4, !dbg !1083, !tbaa !161
  %sub78 = sub i32 1020, %71, !dbg !1083
  %mul79 = mul i32 %70, %sub78, !dbg !1083
  %72 = load ptr, ptr %u_ptr, align 8, !dbg !1083, !tbaa !156
  %73 = load i32, ptr %x, align 4, !dbg !1083, !tbaa !161
  %idxprom80 = sext i32 %73 to i64, !dbg !1083
  %arrayidx81 = getelementptr inbounds i8, ptr %72, i64 %idxprom80, !dbg !1083
  %74 = load i8, ptr %arrayidx81, align 1, !dbg !1083, !tbaa !436
  %conv82 = zext i8 %74 to i32, !dbg !1083
  %75 = load i32, ptr %alpha54, align 4, !dbg !1083, !tbaa !161
  %mul83 = mul i32 %conv82, %75, !dbg !1083
  %add84 = add i32 %mul79, %mul83, !dbg !1083
  %mul85 = mul i32 %add84, 257, !dbg !1083
  %add86 = add i32 %mul85, 1024, !dbg !1083
  %shr87 = lshr i32 %add86, 18, !dbg !1083
  %conv88 = trunc i32 %shr87 to i8, !dbg !1083
  %76 = load ptr, ptr %u_ptr, align 8, !dbg !1084, !tbaa !156
  %77 = load i32, ptr %x, align 4, !dbg !1085, !tbaa !161
  %idxprom89 = sext i32 %77 to i64, !dbg !1084
  %arrayidx90 = getelementptr inbounds i8, ptr %76, i64 %idxprom89, !dbg !1084
  store i8 %conv88, ptr %arrayidx90, align 1, !dbg !1086, !tbaa !436
  %78 = load i32, ptr %V0, align 4, !dbg !1087, !tbaa !161
  %79 = load i32, ptr %alpha54, align 4, !dbg !1087, !tbaa !161
  %sub91 = sub i32 1020, %79, !dbg !1087
  %mul92 = mul i32 %78, %sub91, !dbg !1087
  %80 = load ptr, ptr %v_ptr, align 8, !dbg !1087, !tbaa !156
  %81 = load i32, ptr %x, align 4, !dbg !1087, !tbaa !161
  %idxprom93 = sext i32 %81 to i64, !dbg !1087
  %arrayidx94 = getelementptr inbounds i8, ptr %80, i64 %idxprom93, !dbg !1087
  %82 = load i8, ptr %arrayidx94, align 1, !dbg !1087, !tbaa !436
  %conv95 = zext i8 %82 to i32, !dbg !1087
  %83 = load i32, ptr %alpha54, align 4, !dbg !1087, !tbaa !161
  %mul96 = mul i32 %conv95, %83, !dbg !1087
  %add97 = add i32 %mul92, %mul96, !dbg !1087
  %mul98 = mul i32 %add97, 257, !dbg !1087
  %add99 = add i32 %mul98, 1024, !dbg !1087
  %shr100 = lshr i32 %add99, 18, !dbg !1087
  %conv101 = trunc i32 %shr100 to i8, !dbg !1087
  %84 = load ptr, ptr %v_ptr, align 8, !dbg !1088, !tbaa !156
  %85 = load i32, ptr %x, align 4, !dbg !1089, !tbaa !161
  %idxprom102 = sext i32 %85 to i64, !dbg !1088
  %arrayidx103 = getelementptr inbounds i8, ptr %84, i64 %idxprom102, !dbg !1088
  store i8 %conv101, ptr %arrayidx103, align 1, !dbg !1090, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha54) #6, !dbg !1091
  br label %for.inc104, !dbg !1092

for.inc104:                                       ; preds = %for.body53
  %86 = load i32, ptr %x, align 4, !dbg !1093, !tbaa !161
  %inc105 = add nsw i32 %86, 1, !dbg !1093
  store i32 %inc105, ptr %x, align 4, !dbg !1093, !tbaa !161
  br label %for.cond50, !dbg !1094, !llvm.loop !1095

for.end106:                                       ; preds = %for.cond50
  %87 = load ptr, ptr %picture.addr, align 8, !dbg !1097, !tbaa !156
  %width107 = getelementptr inbounds %struct.WebPPicture, ptr %87, i32 0, i32 2, !dbg !1098
  %88 = load i32, ptr %width107, align 8, !dbg !1098, !tbaa !192
  %and108 = and i32 %88, 1, !dbg !1099
  %tobool109 = icmp ne i32 %and108, 0, !dbg !1099
  br i1 %tobool109, label %if.then110, label %if.end150, !dbg !1100

if.then110:                                       ; preds = %for.end106
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha111) #6, !dbg !1101
  tail call void @llvm.dbg.declare(metadata ptr %alpha111, metadata !899, metadata !DIExpression()), !dbg !1102
  %89 = load ptr, ptr %a_ptr, align 8, !dbg !1103, !tbaa !156
  %90 = load i32, ptr %x, align 4, !dbg !1104, !tbaa !161
  %mul112 = mul nsw i32 2, %90, !dbg !1105
  %add113 = add nsw i32 %mul112, 0, !dbg !1106
  %idxprom114 = sext i32 %add113 to i64, !dbg !1103
  %arrayidx115 = getelementptr inbounds i8, ptr %89, i64 %idxprom114, !dbg !1103
  %91 = load i8, ptr %arrayidx115, align 1, !dbg !1103, !tbaa !436
  %conv116 = zext i8 %91 to i32, !dbg !1103
  %92 = load ptr, ptr %a_ptr2, align 8, !dbg !1107, !tbaa !156
  %93 = load i32, ptr %x, align 4, !dbg !1108, !tbaa !161
  %mul117 = mul nsw i32 2, %93, !dbg !1109
  %add118 = add nsw i32 %mul117, 0, !dbg !1110
  %idxprom119 = sext i32 %add118 to i64, !dbg !1107
  %arrayidx120 = getelementptr inbounds i8, ptr %92, i64 %idxprom119, !dbg !1107
  %94 = load i8, ptr %arrayidx120, align 1, !dbg !1107, !tbaa !436
  %conv121 = zext i8 %94 to i32, !dbg !1107
  %add122 = add nsw i32 %conv116, %conv121, !dbg !1111
  %mul123 = mul nsw i32 2, %add122, !dbg !1112
  store i32 %mul123, ptr %alpha111, align 4, !dbg !1102, !tbaa !161
  %95 = load i32, ptr %U0, align 4, !dbg !1113, !tbaa !161
  %96 = load i32, ptr %alpha111, align 4, !dbg !1113, !tbaa !161
  %sub124 = sub i32 1020, %96, !dbg !1113
  %mul125 = mul i32 %95, %sub124, !dbg !1113
  %97 = load ptr, ptr %u_ptr, align 8, !dbg !1113, !tbaa !156
  %98 = load i32, ptr %x, align 4, !dbg !1113, !tbaa !161
  %idxprom126 = sext i32 %98 to i64, !dbg !1113
  %arrayidx127 = getelementptr inbounds i8, ptr %97, i64 %idxprom126, !dbg !1113
  %99 = load i8, ptr %arrayidx127, align 1, !dbg !1113, !tbaa !436
  %conv128 = zext i8 %99 to i32, !dbg !1113
  %100 = load i32, ptr %alpha111, align 4, !dbg !1113, !tbaa !161
  %mul129 = mul i32 %conv128, %100, !dbg !1113
  %add130 = add i32 %mul125, %mul129, !dbg !1113
  %mul131 = mul i32 %add130, 257, !dbg !1113
  %add132 = add i32 %mul131, 1024, !dbg !1113
  %shr133 = lshr i32 %add132, 18, !dbg !1113
  %conv134 = trunc i32 %shr133 to i8, !dbg !1113
  %101 = load ptr, ptr %u_ptr, align 8, !dbg !1114, !tbaa !156
  %102 = load i32, ptr %x, align 4, !dbg !1115, !tbaa !161
  %idxprom135 = sext i32 %102 to i64, !dbg !1114
  %arrayidx136 = getelementptr inbounds i8, ptr %101, i64 %idxprom135, !dbg !1114
  store i8 %conv134, ptr %arrayidx136, align 1, !dbg !1116, !tbaa !436
  %103 = load i32, ptr %V0, align 4, !dbg !1117, !tbaa !161
  %104 = load i32, ptr %alpha111, align 4, !dbg !1117, !tbaa !161
  %sub137 = sub i32 1020, %104, !dbg !1117
  %mul138 = mul i32 %103, %sub137, !dbg !1117
  %105 = load ptr, ptr %v_ptr, align 8, !dbg !1117, !tbaa !156
  %106 = load i32, ptr %x, align 4, !dbg !1117, !tbaa !161
  %idxprom139 = sext i32 %106 to i64, !dbg !1117
  %arrayidx140 = getelementptr inbounds i8, ptr %105, i64 %idxprom139, !dbg !1117
  %107 = load i8, ptr %arrayidx140, align 1, !dbg !1117, !tbaa !436
  %conv141 = zext i8 %107 to i32, !dbg !1117
  %108 = load i32, ptr %alpha111, align 4, !dbg !1117, !tbaa !161
  %mul142 = mul i32 %conv141, %108, !dbg !1117
  %add143 = add i32 %mul138, %mul142, !dbg !1117
  %mul144 = mul i32 %add143, 257, !dbg !1117
  %add145 = add i32 %mul144, 1024, !dbg !1117
  %shr146 = lshr i32 %add145, 18, !dbg !1117
  %conv147 = trunc i32 %shr146 to i8, !dbg !1117
  %109 = load ptr, ptr %v_ptr, align 8, !dbg !1118, !tbaa !156
  %110 = load i32, ptr %x, align 4, !dbg !1119, !tbaa !161
  %idxprom148 = sext i32 %110 to i64, !dbg !1118
  %arrayidx149 = getelementptr inbounds i8, ptr %109, i64 %idxprom148, !dbg !1118
  store i8 %conv147, ptr %arrayidx149, align 1, !dbg !1120, !tbaa !436
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha111) #6, !dbg !1121
  br label %if.end150, !dbg !1122

if.end150:                                        ; preds = %if.then110, %for.end106
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_ptr2) #6, !dbg !1123
  br label %if.end156, !dbg !1124

if.else:                                          ; preds = %for.end
  %111 = load ptr, ptr %picture.addr, align 8, !dbg !1125, !tbaa !156
  %uv_stride = getelementptr inbounds %struct.WebPPicture, ptr %111, i32 0, i32 8, !dbg !1127
  %112 = load i32, ptr %uv_stride, align 4, !dbg !1127, !tbaa !356
  %113 = load ptr, ptr %u_ptr, align 8, !dbg !1128, !tbaa !156
  %idx.ext151 = sext i32 %112 to i64, !dbg !1128
  %add.ptr152 = getelementptr inbounds i8, ptr %113, i64 %idx.ext151, !dbg !1128
  store ptr %add.ptr152, ptr %u_ptr, align 8, !dbg !1128, !tbaa !156
  %114 = load ptr, ptr %picture.addr, align 8, !dbg !1129, !tbaa !156
  %uv_stride153 = getelementptr inbounds %struct.WebPPicture, ptr %114, i32 0, i32 8, !dbg !1130
  %115 = load i32, ptr %uv_stride153, align 4, !dbg !1130, !tbaa !356
  %116 = load ptr, ptr %v_ptr, align 8, !dbg !1131, !tbaa !156
  %idx.ext154 = sext i32 %115 to i64, !dbg !1131
  %add.ptr155 = getelementptr inbounds i8, ptr %116, i64 %idx.ext154, !dbg !1131
  store ptr %add.ptr155, ptr %v_ptr, align 8, !dbg !1131, !tbaa !156
  br label %if.end156

if.end156:                                        ; preds = %if.else, %if.end150
  %117 = load ptr, ptr %a_ptr, align 8, !dbg !1132, !tbaa !156
  %118 = load ptr, ptr %picture.addr, align 8, !dbg !1133, !tbaa !156
  %width157 = getelementptr inbounds %struct.WebPPicture, ptr %118, i32 0, i32 2, !dbg !1134
  %119 = load i32, ptr %width157, align 8, !dbg !1134, !tbaa !192
  %conv158 = sext i32 %119 to i64, !dbg !1133
  call void @llvm.memset.p0.i64(ptr align 1 %117, i8 -1, i64 %conv158, i1 false), !dbg !1135
  %120 = load ptr, ptr %picture.addr, align 8, !dbg !1136, !tbaa !156
  %a_stride159 = getelementptr inbounds %struct.WebPPicture, ptr %120, i32 0, i32 10, !dbg !1137
  %121 = load i32, ptr %a_stride159, align 8, !dbg !1137, !tbaa !361
  %122 = load ptr, ptr %a_ptr, align 8, !dbg !1138, !tbaa !156
  %idx.ext160 = sext i32 %121 to i64, !dbg !1138
  %add.ptr161 = getelementptr inbounds i8, ptr %122, i64 %idx.ext160, !dbg !1138
  store ptr %add.ptr161, ptr %a_ptr, align 8, !dbg !1138, !tbaa !156
  %123 = load ptr, ptr %picture.addr, align 8, !dbg !1139, !tbaa !156
  %y_stride = getelementptr inbounds %struct.WebPPicture, ptr %123, i32 0, i32 7, !dbg !1140
  %124 = load i32, ptr %y_stride, align 8, !dbg !1140, !tbaa !351
  %125 = load ptr, ptr %y_ptr, align 8, !dbg !1141, !tbaa !156
  %idx.ext162 = sext i32 %124 to i64, !dbg !1141
  %add.ptr163 = getelementptr inbounds i8, ptr %125, i64 %idx.ext162, !dbg !1141
  store ptr %add.ptr163, ptr %y_ptr, align 8, !dbg !1141, !tbaa !156
  br label %for.inc164, !dbg !1142

for.inc164:                                       ; preds = %if.end156
  %126 = load i32, ptr %y, align 4, !dbg !1143, !tbaa !161
  %inc165 = add nsw i32 %126, 1, !dbg !1143
  store i32 %inc165, ptr %y, align 4, !dbg !1143, !tbaa !161
  br label %for.cond, !dbg !1144, !llvm.loop !1145

for.end166:                                       ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1147
  br label %cleanup, !dbg !1147

cleanup:                                          ; preds = %for.end166, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_ptr) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_ptr) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 8, ptr %u_ptr) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ptr) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_alpha) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 4, ptr %V0) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 4, ptr %U0) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 4, ptr %Y0) #6, !dbg !1147
  call void @llvm.lifetime.end.p0(i64 4, ptr %uv_width) #6, !dbg !1147
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup249 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end248, !dbg !1148

if.else175:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %argb) #6, !dbg !1149
  tail call void @llvm.dbg.declare(metadata ptr %argb, metadata !902, metadata !DIExpression()), !dbg !1150
  %127 = load ptr, ptr %picture.addr, align 8, !dbg !1151, !tbaa !156
  %argb176 = getelementptr inbounds %struct.WebPPicture, ptr %127, i32 0, i32 12, !dbg !1152
  %128 = load ptr, ptr %argb176, align 8, !dbg !1152, !tbaa !181
  store ptr %128, ptr %argb, align 8, !dbg !1150, !tbaa !156
  call void @llvm.lifetime.start.p0(i64 4, ptr %background) #6, !dbg !1153
  tail call void @llvm.dbg.declare(metadata ptr %background, metadata !904, metadata !DIExpression()), !dbg !1154
  %129 = load i32, ptr %red, align 4, !dbg !1155, !tbaa !161
  %130 = load i32, ptr %green, align 4, !dbg !1156, !tbaa !161
  %131 = load i32, ptr %blue, align 4, !dbg !1157, !tbaa !161
  %call177 = call i32 @MakeARGB32(i32 noundef %129, i32 noundef %130, i32 noundef %131), !dbg !1158
  store i32 %call177, ptr %background, align 4, !dbg !1154, !tbaa !161
  store i32 0, ptr %y, align 4, !dbg !1159, !tbaa !161
  br label %for.cond178, !dbg !1160

for.cond178:                                      ; preds = %for.inc245, %if.else175
  %132 = load i32, ptr %y, align 4, !dbg !1161, !tbaa !161
  %133 = load ptr, ptr %picture.addr, align 8, !dbg !1162, !tbaa !156
  %height179 = getelementptr inbounds %struct.WebPPicture, ptr %133, i32 0, i32 3, !dbg !1163
  %134 = load i32, ptr %height179, align 4, !dbg !1163, !tbaa !176
  %cmp180 = icmp slt i32 %132, %134, !dbg !1164
  br i1 %cmp180, label %for.body182, label %for.end247, !dbg !1165

for.body182:                                      ; preds = %for.cond178
  store i32 0, ptr %x, align 4, !dbg !1166, !tbaa !161
  br label %for.cond183, !dbg !1167

for.cond183:                                      ; preds = %for.inc240, %for.body182
  %135 = load i32, ptr %x, align 4, !dbg !1168, !tbaa !161
  %136 = load ptr, ptr %picture.addr, align 8, !dbg !1169, !tbaa !156
  %width184 = getelementptr inbounds %struct.WebPPicture, ptr %136, i32 0, i32 2, !dbg !1170
  %137 = load i32, ptr %width184, align 8, !dbg !1170, !tbaa !192
  %cmp185 = icmp slt i32 %135, %137, !dbg !1171
  br i1 %cmp185, label %for.body187, label %for.end242, !dbg !1172

for.body187:                                      ; preds = %for.cond183
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha188) #6, !dbg !1173
  tail call void @llvm.dbg.declare(metadata ptr %alpha188, metadata !905, metadata !DIExpression()), !dbg !1174
  %138 = load ptr, ptr %argb, align 8, !dbg !1175, !tbaa !156
  %139 = load i32, ptr %x, align 4, !dbg !1176, !tbaa !161
  %idxprom189 = sext i32 %139 to i64, !dbg !1175
  %arrayidx190 = getelementptr inbounds i32, ptr %138, i64 %idxprom189, !dbg !1175
  %140 = load i32, ptr %arrayidx190, align 4, !dbg !1175, !tbaa !161
  %shr191 = lshr i32 %140, 24, !dbg !1177
  %and192 = and i32 %shr191, 255, !dbg !1178
  store i32 %and192, ptr %alpha188, align 4, !dbg !1174, !tbaa !161
  %141 = load i32, ptr %alpha188, align 4, !dbg !1179, !tbaa !161
  %cmp193 = icmp ne i32 %141, 255, !dbg !1180
  br i1 %cmp193, label %if.then195, label %if.end239, !dbg !1181

if.then195:                                       ; preds = %for.body187
  %142 = load i32, ptr %alpha188, align 4, !dbg !1182, !tbaa !161
  %cmp196 = icmp sgt i32 %142, 0, !dbg !1183
  br i1 %cmp196, label %if.then198, label %if.else235, !dbg !1184

if.then198:                                       ; preds = %if.then195
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #6, !dbg !1185
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !912, metadata !DIExpression()), !dbg !1186
  %143 = load ptr, ptr %argb, align 8, !dbg !1187, !tbaa !156
  %144 = load i32, ptr %x, align 4, !dbg !1188, !tbaa !161
  %idxprom199 = sext i32 %144 to i64, !dbg !1187
  %arrayidx200 = getelementptr inbounds i32, ptr %143, i64 %idxprom199, !dbg !1187
  %145 = load i32, ptr %arrayidx200, align 4, !dbg !1187, !tbaa !161
  %shr201 = lshr i32 %145, 16, !dbg !1189
  %and202 = and i32 %shr201, 255, !dbg !1190
  store i32 %and202, ptr %r, align 4, !dbg !1186, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #6, !dbg !1191
  tail call void @llvm.dbg.declare(metadata ptr %g, metadata !917, metadata !DIExpression()), !dbg !1192
  %146 = load ptr, ptr %argb, align 8, !dbg !1193, !tbaa !156
  %147 = load i32, ptr %x, align 4, !dbg !1194, !tbaa !161
  %idxprom203 = sext i32 %147 to i64, !dbg !1193
  %arrayidx204 = getelementptr inbounds i32, ptr %146, i64 %idxprom203, !dbg !1193
  %148 = load i32, ptr %arrayidx204, align 4, !dbg !1193, !tbaa !161
  %shr205 = lshr i32 %148, 8, !dbg !1195
  %and206 = and i32 %shr205, 255, !dbg !1196
  store i32 %and206, ptr %g, align 4, !dbg !1192, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #6, !dbg !1197
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !918, metadata !DIExpression()), !dbg !1198
  %149 = load ptr, ptr %argb, align 8, !dbg !1199, !tbaa !156
  %150 = load i32, ptr %x, align 4, !dbg !1200, !tbaa !161
  %idxprom207 = sext i32 %150 to i64, !dbg !1199
  %arrayidx208 = getelementptr inbounds i32, ptr %149, i64 %idxprom207, !dbg !1199
  %151 = load i32, ptr %arrayidx208, align 4, !dbg !1199, !tbaa !161
  %shr209 = lshr i32 %151, 0, !dbg !1201
  %and210 = and i32 %shr209, 255, !dbg !1202
  store i32 %and210, ptr %b, align 4, !dbg !1198, !tbaa !161
  %152 = load i32, ptr %red, align 4, !dbg !1203, !tbaa !161
  %153 = load i32, ptr %alpha188, align 4, !dbg !1203, !tbaa !161
  %sub211 = sub nsw i32 255, %153, !dbg !1203
  %mul212 = mul nsw i32 %152, %sub211, !dbg !1203
  %154 = load i32, ptr %r, align 4, !dbg !1203, !tbaa !161
  %155 = load i32, ptr %alpha188, align 4, !dbg !1203, !tbaa !161
  %mul213 = mul nsw i32 %154, %155, !dbg !1203
  %add214 = add nsw i32 %mul212, %mul213, !dbg !1203
  %mul215 = mul nsw i32 %add214, 257, !dbg !1203
  %add216 = add nsw i32 %mul215, 256, !dbg !1203
  %shr217 = ashr i32 %add216, 16, !dbg !1203
  store i32 %shr217, ptr %r, align 4, !dbg !1204, !tbaa !161
  %156 = load i32, ptr %green, align 4, !dbg !1205, !tbaa !161
  %157 = load i32, ptr %alpha188, align 4, !dbg !1205, !tbaa !161
  %sub218 = sub nsw i32 255, %157, !dbg !1205
  %mul219 = mul nsw i32 %156, %sub218, !dbg !1205
  %158 = load i32, ptr %g, align 4, !dbg !1205, !tbaa !161
  %159 = load i32, ptr %alpha188, align 4, !dbg !1205, !tbaa !161
  %mul220 = mul nsw i32 %158, %159, !dbg !1205
  %add221 = add nsw i32 %mul219, %mul220, !dbg !1205
  %mul222 = mul nsw i32 %add221, 257, !dbg !1205
  %add223 = add nsw i32 %mul222, 256, !dbg !1205
  %shr224 = ashr i32 %add223, 16, !dbg !1205
  store i32 %shr224, ptr %g, align 4, !dbg !1206, !tbaa !161
  %160 = load i32, ptr %blue, align 4, !dbg !1207, !tbaa !161
  %161 = load i32, ptr %alpha188, align 4, !dbg !1207, !tbaa !161
  %sub225 = sub nsw i32 255, %161, !dbg !1207
  %mul226 = mul nsw i32 %160, %sub225, !dbg !1207
  %162 = load i32, ptr %b, align 4, !dbg !1207, !tbaa !161
  %163 = load i32, ptr %alpha188, align 4, !dbg !1207, !tbaa !161
  %mul227 = mul nsw i32 %162, %163, !dbg !1207
  %add228 = add nsw i32 %mul226, %mul227, !dbg !1207
  %mul229 = mul nsw i32 %add228, 257, !dbg !1207
  %add230 = add nsw i32 %mul229, 256, !dbg !1207
  %shr231 = ashr i32 %add230, 16, !dbg !1207
  store i32 %shr231, ptr %b, align 4, !dbg !1208, !tbaa !161
  %164 = load i32, ptr %r, align 4, !dbg !1209, !tbaa !161
  %165 = load i32, ptr %g, align 4, !dbg !1210, !tbaa !161
  %166 = load i32, ptr %b, align 4, !dbg !1211, !tbaa !161
  %call232 = call i32 @MakeARGB32(i32 noundef %164, i32 noundef %165, i32 noundef %166), !dbg !1212
  %167 = load ptr, ptr %argb, align 8, !dbg !1213, !tbaa !156
  %168 = load i32, ptr %x, align 4, !dbg !1214, !tbaa !161
  %idxprom233 = sext i32 %168 to i64, !dbg !1213
  %arrayidx234 = getelementptr inbounds i32, ptr %167, i64 %idxprom233, !dbg !1213
  store i32 %call232, ptr %arrayidx234, align 4, !dbg !1215, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #6, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #6, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #6, !dbg !1216
  br label %if.end238, !dbg !1217

if.else235:                                       ; preds = %if.then195
  %169 = load i32, ptr %background, align 4, !dbg !1218, !tbaa !161
  %170 = load ptr, ptr %argb, align 8, !dbg !1220, !tbaa !156
  %171 = load i32, ptr %x, align 4, !dbg !1221, !tbaa !161
  %idxprom236 = sext i32 %171 to i64, !dbg !1220
  %arrayidx237 = getelementptr inbounds i32, ptr %170, i64 %idxprom236, !dbg !1220
  store i32 %169, ptr %arrayidx237, align 4, !dbg !1222, !tbaa !161
  br label %if.end238

if.end238:                                        ; preds = %if.else235, %if.then198
  br label %if.end239, !dbg !1223

if.end239:                                        ; preds = %if.end238, %for.body187
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha188) #6, !dbg !1224
  br label %for.inc240, !dbg !1225

for.inc240:                                       ; preds = %if.end239
  %172 = load i32, ptr %x, align 4, !dbg !1226, !tbaa !161
  %inc241 = add nsw i32 %172, 1, !dbg !1226
  store i32 %inc241, ptr %x, align 4, !dbg !1226, !tbaa !161
  br label %for.cond183, !dbg !1227, !llvm.loop !1228

for.end242:                                       ; preds = %for.cond183
  %173 = load ptr, ptr %picture.addr, align 8, !dbg !1230, !tbaa !156
  %argb_stride = getelementptr inbounds %struct.WebPPicture, ptr %173, i32 0, i32 13, !dbg !1231
  %174 = load i32, ptr %argb_stride, align 8, !dbg !1231, !tbaa !196
  %175 = load ptr, ptr %argb, align 8, !dbg !1232, !tbaa !156
  %idx.ext243 = sext i32 %174 to i64, !dbg !1232
  %add.ptr244 = getelementptr inbounds i32, ptr %175, i64 %idx.ext243, !dbg !1232
  store ptr %add.ptr244, ptr %argb, align 8, !dbg !1232, !tbaa !156
  br label %for.inc245, !dbg !1233

for.inc245:                                       ; preds = %for.end242
  %176 = load i32, ptr %y, align 4, !dbg !1234, !tbaa !161
  %inc246 = add nsw i32 %176, 1, !dbg !1234
  store i32 %inc246, ptr %y, align 4, !dbg !1234, !tbaa !161
  br label %for.cond178, !dbg !1235, !llvm.loop !1236

for.end247:                                       ; preds = %for.cond178
  call void @llvm.lifetime.end.p0(i64 4, ptr %background) #6, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 8, ptr %argb) #6, !dbg !1238
  br label %if.end248

if.end248:                                        ; preds = %for.end247, %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1239
  br label %cleanup249, !dbg !1239

cleanup249:                                       ; preds = %if.end248, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #6, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #6, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %blue) #6, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %green) #6, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %red) #6, !dbg !1239
  %cleanup.dest254 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest254, label %unreachable [
    i32 0, label %cleanup.cont255
    i32 1, label %cleanup.cont255
  ]

cleanup.cont255:                                  ; preds = %cleanup249, %cleanup249
  ret void, !dbg !1239

unreachable:                                      ; preds = %cleanup249
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VP8RGBToY(i32 noundef %r, i32 noundef %g, i32 noundef %b, i32 noundef %rounding) #4 !dbg !1240 {
entry:
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %rounding.addr = alloca i32, align 4
  %luma = alloca i32, align 4
  store i32 %r, ptr %r.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1244, metadata !DIExpression()), !dbg !1249
  store i32 %g, ptr %g.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !1245, metadata !DIExpression()), !dbg !1250
  store i32 %b, ptr %b.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1246, metadata !DIExpression()), !dbg !1251
  store i32 %rounding, ptr %rounding.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %rounding.addr, metadata !1247, metadata !DIExpression()), !dbg !1252
  call void @llvm.lifetime.start.p0(i64 4, ptr %luma) #6, !dbg !1253
  tail call void @llvm.dbg.declare(metadata ptr %luma, metadata !1248, metadata !DIExpression()), !dbg !1254
  %0 = load i32, ptr %r.addr, align 4, !dbg !1255, !tbaa !161
  %mul = mul nsw i32 16839, %0, !dbg !1256
  %1 = load i32, ptr %g.addr, align 4, !dbg !1257, !tbaa !161
  %mul1 = mul nsw i32 33059, %1, !dbg !1258
  %add = add nsw i32 %mul, %mul1, !dbg !1259
  %2 = load i32, ptr %b.addr, align 4, !dbg !1260, !tbaa !161
  %mul2 = mul nsw i32 6420, %2, !dbg !1261
  %add3 = add nsw i32 %add, %mul2, !dbg !1262
  store i32 %add3, ptr %luma, align 4, !dbg !1254, !tbaa !161
  %3 = load i32, ptr %luma, align 4, !dbg !1263, !tbaa !161
  %4 = load i32, ptr %rounding.addr, align 4, !dbg !1264, !tbaa !161
  %add4 = add nsw i32 %3, %4, !dbg !1265
  %add5 = add nsw i32 %add4, 1048576, !dbg !1266
  %shr = ashr i32 %add5, 16, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 4, ptr %luma) #6, !dbg !1268
  ret i32 %shr, !dbg !1269
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VP8RGBToU(i32 noundef %r, i32 noundef %g, i32 noundef %b, i32 noundef %rounding) #4 !dbg !1270 {
entry:
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %rounding.addr = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %r, ptr %r.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1272, metadata !DIExpression()), !dbg !1277
  store i32 %g, ptr %g.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !1273, metadata !DIExpression()), !dbg !1278
  store i32 %b, ptr %b.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1274, metadata !DIExpression()), !dbg !1279
  store i32 %rounding, ptr %rounding.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %rounding.addr, metadata !1275, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #6, !dbg !1281
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !1276, metadata !DIExpression()), !dbg !1282
  %0 = load i32, ptr %r.addr, align 4, !dbg !1283, !tbaa !161
  %mul = mul nsw i32 -9719, %0, !dbg !1284
  %1 = load i32, ptr %g.addr, align 4, !dbg !1285, !tbaa !161
  %mul1 = mul nsw i32 19081, %1, !dbg !1286
  %sub = sub nsw i32 %mul, %mul1, !dbg !1287
  %2 = load i32, ptr %b.addr, align 4, !dbg !1288, !tbaa !161
  %mul2 = mul nsw i32 28800, %2, !dbg !1289
  %add = add nsw i32 %sub, %mul2, !dbg !1290
  store i32 %add, ptr %u, align 4, !dbg !1282, !tbaa !161
  %3 = load i32, ptr %u, align 4, !dbg !1291, !tbaa !161
  %4 = load i32, ptr %rounding.addr, align 4, !dbg !1292, !tbaa !161
  %call = call i32 @VP8ClipUV(i32 noundef %3, i32 noundef %4), !dbg !1293
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #6, !dbg !1294
  ret i32 %call, !dbg !1295
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VP8RGBToV(i32 noundef %r, i32 noundef %g, i32 noundef %b, i32 noundef %rounding) #4 !dbg !1296 {
entry:
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %rounding.addr = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 %r, ptr %r.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1298, metadata !DIExpression()), !dbg !1303
  store i32 %g, ptr %g.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !1299, metadata !DIExpression()), !dbg !1304
  store i32 %b, ptr %b.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1300, metadata !DIExpression()), !dbg !1305
  store i32 %rounding, ptr %rounding.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %rounding.addr, metadata !1301, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #6, !dbg !1307
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !1302, metadata !DIExpression()), !dbg !1308
  %0 = load i32, ptr %r.addr, align 4, !dbg !1309, !tbaa !161
  %mul = mul nsw i32 28800, %0, !dbg !1310
  %1 = load i32, ptr %g.addr, align 4, !dbg !1311, !tbaa !161
  %mul1 = mul nsw i32 24116, %1, !dbg !1312
  %sub = sub nsw i32 %mul, %mul1, !dbg !1313
  %2 = load i32, ptr %b.addr, align 4, !dbg !1314, !tbaa !161
  %mul2 = mul nsw i32 4684, %2, !dbg !1315
  %sub3 = sub nsw i32 %sub, %mul2, !dbg !1316
  store i32 %sub3, ptr %v, align 4, !dbg !1308, !tbaa !161
  %3 = load i32, ptr %v, align 4, !dbg !1317, !tbaa !161
  %4 = load i32, ptr %rounding.addr, align 4, !dbg !1318, !tbaa !161
  %call = call i32 @VP8ClipUV(i32 noundef %3, i32 noundef %4), !dbg !1319
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #6, !dbg !1320
  ret i32 %call, !dbg !1321
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MakeARGB32(i32 noundef %r, i32 noundef %g, i32 noundef %b) #4 !dbg !1322 {
entry:
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %r, ptr %r.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1326, metadata !DIExpression()), !dbg !1329
  store i32 %g, ptr %g.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %g.addr, metadata !1327, metadata !DIExpression()), !dbg !1330
  store i32 %b, ptr %b.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1328, metadata !DIExpression()), !dbg !1331
  %0 = load i32, ptr %r.addr, align 4, !dbg !1332, !tbaa !161
  %shl = shl i32 %0, 16, !dbg !1333
  %or = or i32 -16777216, %shl, !dbg !1334
  %1 = load i32, ptr %g.addr, align 4, !dbg !1335, !tbaa !161
  %shl1 = shl i32 %1, 8, !dbg !1336
  %or2 = or i32 %or, %shl1, !dbg !1337
  %2 = load i32, ptr %b.addr, align 4, !dbg !1338, !tbaa !161
  %or3 = or i32 %or2, %2, !dbg !1339
  ret i32 %or3, !dbg !1340
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @VP8ClipUV(i32 noundef %uv, i32 noundef %rounding) #4 !dbg !1341 {
entry:
  %uv.addr = alloca i32, align 4
  %rounding.addr = alloca i32, align 4
  store i32 %uv, ptr %uv.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %uv.addr, metadata !1345, metadata !DIExpression()), !dbg !1347
  store i32 %rounding, ptr %rounding.addr, align 4, !tbaa !161
  tail call void @llvm.dbg.declare(metadata ptr %rounding.addr, metadata !1346, metadata !DIExpression()), !dbg !1348
  %0 = load i32, ptr %uv.addr, align 4, !dbg !1349, !tbaa !161
  %1 = load i32, ptr %rounding.addr, align 4, !dbg !1350, !tbaa !161
  %add = add nsw i32 %0, %1, !dbg !1351
  %add1 = add nsw i32 %add, 33554432, !dbg !1352
  %shr = ashr i32 %add1, 18, !dbg !1353
  store i32 %shr, ptr %uv.addr, align 4, !dbg !1354, !tbaa !161
  %2 = load i32, ptr %uv.addr, align 4, !dbg !1355, !tbaa !161
  %and = and i32 %2, -256, !dbg !1356
  %cmp = icmp eq i32 %and, 0, !dbg !1357
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1358

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %uv.addr, align 4, !dbg !1359, !tbaa !161
  br label %cond.end, !dbg !1358

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %uv.addr, align 4, !dbg !1360, !tbaa !161
  %cmp2 = icmp slt i32 %4, 0, !dbg !1361
  %5 = zext i1 %cmp2 to i64, !dbg !1362
  %cond = select i1 %cmp2, i32 0, i32 255, !dbg !1362
  br label %cond.end, !dbg !1358

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ %3, %cond.true ], [ %cond, %cond.false ], !dbg !1358
  ret i32 %cond3, !dbg !1363
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "picture_tools_enc.c", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/enc", checksumkind: CSK_MD5, checksum: "f6fa8b228f4a9048d9407d04be61ac40")
!2 = !{!3, !11, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "WebPEncCSP", file: !4, line: 267, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../../src/webp/encode.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/enc", checksumkind: CSK_MD5, checksum: "86d494680aadc831975159afeec19bc9")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "WEBP_YUV420", value: 0)
!8 = !DIEnumerator(name: "WEBP_YUV420A", value: 4)
!9 = !DIEnumerator(name: "WEBP_CSP_UV_MASK", value: 3)
!10 = !DIEnumerator(name: "WEBP_CSP_ALPHA_BIT", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "WebPEncodingError", file: !4, line: 276, baseType: !5, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!13 = !DIEnumerator(name: "VP8_ENC_OK", value: 0)
!14 = !DIEnumerator(name: "VP8_ENC_ERROR_OUT_OF_MEMORY", value: 1)
!15 = !DIEnumerator(name: "VP8_ENC_ERROR_BITSTREAM_OUT_OF_MEMORY", value: 2)
!16 = !DIEnumerator(name: "VP8_ENC_ERROR_NULL_PARAMETER", value: 3)
!17 = !DIEnumerator(name: "VP8_ENC_ERROR_INVALID_CONFIGURATION", value: 4)
!18 = !DIEnumerator(name: "VP8_ENC_ERROR_BAD_DIMENSION", value: 5)
!19 = !DIEnumerator(name: "VP8_ENC_ERROR_PARTITION0_OVERFLOW", value: 6)
!20 = !DIEnumerator(name: "VP8_ENC_ERROR_PARTITION_OVERFLOW", value: 7)
!21 = !DIEnumerator(name: "VP8_ENC_ERROR_BAD_WRITE", value: 8)
!22 = !DIEnumerator(name: "VP8_ENC_ERROR_FILE_TOO_BIG", value: 9)
!23 = !DIEnumerator(name: "VP8_ENC_ERROR_USER_ABORT", value: 10)
!24 = !DIEnumerator(name: "VP8_ENC_ERROR_LAST", value: 11)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 48, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "../../src/dsp/yuv.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/enc", checksumkind: CSK_MD5, checksum: "1424f80f70d28c76091089aacc37b81e")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "YUV_FIX", value: 16)
!29 = !DIEnumerator(name: "YUV_HALF", value: 32768)
!30 = !DIEnumerator(name: "YUV_FIX2", value: 6)
!31 = !DIEnumerator(name: "YUV_MASK2", value: 16383)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 24, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !37, line: 38, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 8, !"PIC Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!45 = distinct !DISubprogram(name: "WebPReplaceTransparentPixels", scope: !1, file: !1, line: 86, type: !46, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !69}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPPicture", file: !4, line: 32, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WebPPicture", file: !4, line: 300, size: 2048, elements: !52)
!52 = !{!53, !55, !57, !58, !59, !61, !62, !63, !64, !65, !66, !67, !73, !75, !76, !80, !92, !93, !94, !95, !130, !132, !137, !138, !139, !140, !141, !145, !146, !147}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "use_argb", scope: !51, file: !4, line: 307, baseType: !54, size: 32)
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !51, file: !4, line: 310, baseType: !56, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPEncCSP", file: !4, line: 273, baseType: !3)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !51, file: !4, line: 311, baseType: !54, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !51, file: !4, line: 311, baseType: !54, size: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !51, file: !4, line: 312, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !51, file: !4, line: 312, baseType: !60, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !51, file: !4, line: 312, baseType: !60, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "y_stride", scope: !51, file: !4, line: 313, baseType: !54, size: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "uv_stride", scope: !51, file: !4, line: 313, baseType: !54, size: 32, offset: 352)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !51, file: !4, line: 314, baseType: !60, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "a_stride", scope: !51, file: !4, line: 315, baseType: !54, size: 32, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !51, file: !4, line: 316, baseType: !68, size: 64, offset: 480)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !71)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 26, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 42, baseType: !5)
!71 = !{!72}
!72 = !DISubrange(count: 2)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "argb", scope: !51, file: !4, line: 319, baseType: !74, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "argb_stride", scope: !51, file: !4, line: 320, baseType: !54, size: 32, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !51, file: !4, line: 321, baseType: !77, size: 96, offset: 672)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 96, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !51, file: !4, line: 326, baseType: !81, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPWriterFunction", file: !4, line: 237, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!54, !85, !87, !90}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 70, baseType: !89)
!88 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "custom_ptr", scope: !51, file: !4, line: 327, baseType: !33, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "extra_info_type", scope: !51, file: !4, line: 330, baseType: !54, size: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "extra_info", scope: !51, file: !4, line: 334, baseType: !60, size: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !51, file: !4, line: 342, baseType: !96, size: 64, offset: 1024)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPAuxStats", file: !4, line: 33, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WebPAuxStats", file: !4, line: 204, size: 1504, elements: !99)
!99 = !{!100, !101, !106, !108, !110, !114, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "coded_size", scope: !98, file: !4, line: 205, baseType: !54, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "PSNR", scope: !98, file: !4, line: 207, baseType: !102, size: 160, offset: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 160, elements: !104)
!103 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!104 = !{!105}
!105 = !DISubrange(count: 5)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !98, file: !4, line: 208, baseType: !107, size: 96, offset: 192)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 96, elements: !78)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "header_bytes", scope: !98, file: !4, line: 209, baseType: !109, size: 64, offset: 288)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !71)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "residual_bytes", scope: !98, file: !4, line: 211, baseType: !111, size: 384, offset: 352)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 384, elements: !112)
!112 = !{!79, !113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "segment_size", scope: !98, file: !4, line: 213, baseType: !115, size: 128, offset: 736)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !116)
!116 = !{!113}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "segment_quant", scope: !98, file: !4, line: 214, baseType: !115, size: 128, offset: 864)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "segment_level", scope: !98, file: !4, line: 215, baseType: !115, size: 128, offset: 992)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_data_size", scope: !98, file: !4, line: 217, baseType: !54, size: 32, offset: 1120)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "layer_data_size", scope: !98, file: !4, line: 218, baseType: !54, size: 32, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_features", scope: !98, file: !4, line: 221, baseType: !69, size: 32, offset: 1184)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "histogram_bits", scope: !98, file: !4, line: 223, baseType: !54, size: 32, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "transform_bits", scope: !98, file: !4, line: 224, baseType: !54, size: 32, offset: 1248)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bits", scope: !98, file: !4, line: 225, baseType: !54, size: 32, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "palette_size", scope: !98, file: !4, line: 226, baseType: !54, size: 32, offset: 1312)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_size", scope: !98, file: !4, line: 227, baseType: !54, size: 32, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_hdr_size", scope: !98, file: !4, line: 228, baseType: !54, size: 32, offset: 1376)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_data_size", scope: !98, file: !4, line: 229, baseType: !54, size: 32, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !98, file: !4, line: 231, baseType: !68, size: 64, offset: 1440)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !51, file: !4, line: 345, baseType: !131, size: 32, offset: 1088)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPEncodingError", file: !4, line: 289, baseType: !11)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "progress_hook", scope: !51, file: !4, line: 348, baseType: !133, size: 64, offset: 1152)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPProgressHook", file: !4, line: 264, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!54, !54, !90}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !51, file: !4, line: 350, baseType: !33, size: 64, offset: 1216)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pad3", scope: !51, file: !4, line: 353, baseType: !77, size: 96, offset: 1280)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pad4", scope: !51, file: !4, line: 356, baseType: !60, size: 64, offset: 1408)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pad5", scope: !51, file: !4, line: 356, baseType: !60, size: 64, offset: 1472)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pad6", scope: !51, file: !4, line: 357, baseType: !142, size: 256, offset: 1536)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "memory_", scope: !51, file: !4, line: 361, baseType: !33, size: 64, offset: 1792)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "memory_argb_", scope: !51, file: !4, line: 362, baseType: !33, size: 64, offset: 1856)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pad7", scope: !51, file: !4, line: 363, baseType: !148, size: 128, offset: 1920)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !71)
!149 = !{!150, !151, !152, !155}
!150 = !DILocalVariable(name: "pic", arg: 1, scope: !45, file: !1, line: 86, type: !48)
!151 = !DILocalVariable(name: "color", arg: 2, scope: !45, file: !1, line: 86, type: !69)
!152 = !DILocalVariable(name: "y", scope: !153, file: !1, line: 88, type: !54)
!153 = distinct !DILexicalBlock(scope: !154, file: !1, line: 87, column: 37)
!154 = distinct !DILexicalBlock(scope: !45, file: !1, line: 87, column: 7)
!155 = !DILocalVariable(name: "argb", scope: !153, file: !1, line: 89, type: !74)
!156 = !{!157, !157, i64 0}
!157 = !{!"any pointer", !158, i64 0}
!158 = !{!"omnipotent char", !159, i64 0}
!159 = !{!"Simple C/C++ TBAA"}
!160 = !DILocation(line: 86, column: 54, scope: !45)
!161 = !{!162, !162, i64 0}
!162 = !{!"int", !158, i64 0}
!163 = !DILocation(line: 86, column: 68, scope: !45)
!164 = !DILocation(line: 87, column: 7, scope: !154)
!165 = !DILocation(line: 87, column: 11, scope: !154)
!166 = !DILocation(line: 87, column: 19, scope: !154)
!167 = !DILocation(line: 87, column: 22, scope: !154)
!168 = !DILocation(line: 87, column: 27, scope: !154)
!169 = !{!170, !162, i64 0}
!170 = !{!"WebPPicture", !162, i64 0, !158, i64 4, !162, i64 8, !162, i64 12, !157, i64 16, !157, i64 24, !157, i64 32, !162, i64 40, !162, i64 44, !157, i64 48, !162, i64 56, !158, i64 60, !157, i64 72, !162, i64 80, !158, i64 84, !157, i64 96, !157, i64 104, !162, i64 112, !157, i64 120, !157, i64 128, !158, i64 136, !157, i64 144, !157, i64 152, !158, i64 160, !157, i64 176, !157, i64 184, !158, i64 192, !157, i64 224, !157, i64 232, !158, i64 240}
!171 = !DILocation(line: 87, column: 7, scope: !45)
!172 = !DILocation(line: 88, column: 5, scope: !153)
!173 = !DILocation(line: 88, column: 9, scope: !153)
!174 = !DILocation(line: 88, column: 13, scope: !153)
!175 = !DILocation(line: 88, column: 18, scope: !153)
!176 = !{!170, !162, i64 12}
!177 = !DILocation(line: 89, column: 5, scope: !153)
!178 = !DILocation(line: 89, column: 15, scope: !153)
!179 = !DILocation(line: 89, column: 22, scope: !153)
!180 = !DILocation(line: 89, column: 27, scope: !153)
!181 = !{!170, !157, i64 72}
!182 = !DILocation(line: 90, column: 11, scope: !153)
!183 = !DILocation(line: 91, column: 5, scope: !153)
!184 = !DILocation(line: 92, column: 5, scope: !153)
!185 = !DILocation(line: 92, column: 13, scope: !153)
!186 = !DILocation(line: 92, column: 16, scope: !153)
!187 = !DILocation(line: 93, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !153, file: !1, line: 92, column: 21)
!189 = !DILocation(line: 93, column: 24, scope: !188)
!190 = !DILocation(line: 93, column: 30, scope: !188)
!191 = !DILocation(line: 93, column: 35, scope: !188)
!192 = !{!170, !162, i64 8}
!193 = !DILocation(line: 93, column: 42, scope: !188)
!194 = !DILocation(line: 94, column: 15, scope: !188)
!195 = !DILocation(line: 94, column: 20, scope: !188)
!196 = !{!170, !162, i64 80}
!197 = !DILocation(line: 94, column: 12, scope: !188)
!198 = distinct !{!198, !184, !199, !200}
!199 = !DILocation(line: 95, column: 5, scope: !153)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 96, column: 3, scope: !154)
!202 = !DILocation(line: 96, column: 3, scope: !153)
!203 = !DILocation(line: 97, column: 1, scope: !45)
!204 = !DISubprogram(name: "WebPInitAlphaProcessing", scope: !205, file: !205, line: 463, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DIFile(filename: "../../src/dsp/dsp.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/enc", checksumkind: CSK_MD5, checksum: "dbe806d5b797a3b0e88178b7b50247ce")
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = distinct !DISubprogram(name: "WebPCleanupTransparentArea", scope: !1, file: !1, line: 99, type: !209, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !49}
!211 = !{!212, !213, !214, !215, !216, !217, !220, !224, !229, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !244}
!212 = !DILocalVariable(name: "pic", arg: 1, scope: !208, file: !1, line: 99, type: !49)
!213 = !DILocalVariable(name: "x", scope: !208, file: !1, line: 100, type: !54)
!214 = !DILocalVariable(name: "y", scope: !208, file: !1, line: 100, type: !54)
!215 = !DILocalVariable(name: "w", scope: !208, file: !1, line: 100, type: !54)
!216 = !DILocalVariable(name: "h", scope: !208, file: !1, line: 100, type: !54)
!217 = !DILocalVariable(name: "argb_value", scope: !218, file: !1, line: 107, type: !69)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 106, column: 22)
!219 = distinct !DILexicalBlock(scope: !208, file: !1, line: 106, column: 7)
!220 = !DILocalVariable(name: "need_reset", scope: !221, file: !1, line: 109, type: !54)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 108, column: 29)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 108, column: 5)
!223 = distinct !DILexicalBlock(scope: !218, file: !1, line: 108, column: 5)
!224 = !DILocalVariable(name: "off", scope: !225, file: !1, line: 111, type: !228)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 110, column: 31)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 110, column: 7)
!227 = distinct !DILexicalBlock(scope: !221, file: !1, line: 110, column: 7)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!229 = !DILocalVariable(name: "width", scope: !230, file: !1, line: 124, type: !228)
!230 = distinct !DILexicalBlock(scope: !219, file: !1, line: 123, column: 10)
!231 = !DILocalVariable(name: "height", scope: !230, file: !1, line: 125, type: !228)
!232 = !DILocalVariable(name: "y_stride", scope: !230, file: !1, line: 126, type: !228)
!233 = !DILocalVariable(name: "uv_stride", scope: !230, file: !1, line: 127, type: !228)
!234 = !DILocalVariable(name: "a_stride", scope: !230, file: !1, line: 128, type: !228)
!235 = !DILocalVariable(name: "y_ptr", scope: !230, file: !1, line: 129, type: !60)
!236 = !DILocalVariable(name: "u_ptr", scope: !230, file: !1, line: 130, type: !60)
!237 = !DILocalVariable(name: "v_ptr", scope: !230, file: !1, line: 131, type: !60)
!238 = !DILocalVariable(name: "a_ptr", scope: !230, file: !1, line: 132, type: !85)
!239 = !DILocalVariable(name: "values", scope: !230, file: !1, line: 133, type: !107)
!240 = !DILocalVariable(name: "need_reset", scope: !241, file: !1, line: 138, type: !54)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 137, column: 48)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 137, column: 5)
!243 = distinct !DILexicalBlock(scope: !230, file: !1, line: 137, column: 5)
!244 = !DILocalVariable(name: "sub_height", scope: !245, file: !1, line: 165, type: !228)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 164, column: 21)
!246 = distinct !DILexicalBlock(scope: !230, file: !1, line: 164, column: 9)
!247 = !DILocation(line: 99, column: 46, scope: !208)
!248 = !DILocation(line: 100, column: 3, scope: !208)
!249 = !DILocation(line: 100, column: 7, scope: !208)
!250 = !DILocation(line: 100, column: 10, scope: !208)
!251 = !DILocation(line: 100, column: 13, scope: !208)
!252 = !DILocation(line: 100, column: 16, scope: !208)
!253 = !DILocation(line: 101, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !208, file: !1, line: 101, column: 7)
!255 = !DILocation(line: 101, column: 11, scope: !254)
!256 = !DILocation(line: 101, column: 7, scope: !208)
!257 = !DILocation(line: 101, column: 20, scope: !254)
!258 = !DILocation(line: 102, column: 7, scope: !208)
!259 = !DILocation(line: 102, column: 12, scope: !208)
!260 = !DILocation(line: 102, column: 18, scope: !208)
!261 = !DILocation(line: 102, column: 5, scope: !208)
!262 = !DILocation(line: 103, column: 7, scope: !208)
!263 = !DILocation(line: 103, column: 12, scope: !208)
!264 = !DILocation(line: 103, column: 19, scope: !208)
!265 = !DILocation(line: 103, column: 5, scope: !208)
!266 = !DILocation(line: 106, column: 7, scope: !219)
!267 = !DILocation(line: 106, column: 12, scope: !219)
!268 = !DILocation(line: 106, column: 7, scope: !208)
!269 = !DILocation(line: 107, column: 5, scope: !218)
!270 = !DILocation(line: 107, column: 14, scope: !218)
!271 = !DILocation(line: 108, column: 12, scope: !223)
!272 = !DILocation(line: 108, column: 10, scope: !223)
!273 = !DILocation(line: 108, column: 17, scope: !222)
!274 = !DILocation(line: 108, column: 21, scope: !222)
!275 = !DILocation(line: 108, column: 19, scope: !222)
!276 = !DILocation(line: 108, column: 5, scope: !223)
!277 = !DILocation(line: 109, column: 7, scope: !221)
!278 = !DILocation(line: 109, column: 11, scope: !221)
!279 = !DILocation(line: 110, column: 14, scope: !227)
!280 = !DILocation(line: 110, column: 12, scope: !227)
!281 = !DILocation(line: 110, column: 19, scope: !226)
!282 = !DILocation(line: 110, column: 23, scope: !226)
!283 = !DILocation(line: 110, column: 21, scope: !226)
!284 = !DILocation(line: 110, column: 7, scope: !227)
!285 = !DILocation(line: 111, column: 9, scope: !225)
!286 = !DILocation(line: 111, column: 19, scope: !225)
!287 = !DILocation(line: 111, column: 26, scope: !225)
!288 = !DILocation(line: 111, column: 30, scope: !225)
!289 = !DILocation(line: 111, column: 35, scope: !225)
!290 = !DILocation(line: 111, column: 28, scope: !225)
!291 = !DILocation(line: 111, column: 49, scope: !225)
!292 = !DILocation(line: 111, column: 47, scope: !225)
!293 = !DILocation(line: 111, column: 52, scope: !225)
!294 = !DILocation(line: 112, column: 35, scope: !295)
!295 = distinct !DILexicalBlock(scope: !225, file: !1, line: 112, column: 13)
!296 = !DILocation(line: 112, column: 40, scope: !295)
!297 = !DILocation(line: 112, column: 47, scope: !295)
!298 = !DILocation(line: 112, column: 45, scope: !295)
!299 = !DILocation(line: 112, column: 52, scope: !295)
!300 = !DILocation(line: 112, column: 57, scope: !295)
!301 = !DILocation(line: 112, column: 13, scope: !295)
!302 = !DILocation(line: 112, column: 13, scope: !225)
!303 = !DILocation(line: 113, column: 15, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 113, column: 15)
!305 = distinct !DILexicalBlock(scope: !295, file: !1, line: 112, column: 77)
!306 = !DILocation(line: 113, column: 15, scope: !305)
!307 = !DILocation(line: 114, column: 26, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !1, line: 113, column: 27)
!309 = !DILocation(line: 114, column: 31, scope: !308)
!310 = !DILocation(line: 114, column: 36, scope: !308)
!311 = !DILocation(line: 114, column: 24, scope: !308)
!312 = !DILocation(line: 115, column: 24, scope: !308)
!313 = !DILocation(line: 116, column: 11, scope: !308)
!314 = !DILocation(line: 117, column: 23, scope: !305)
!315 = !DILocation(line: 117, column: 28, scope: !305)
!316 = !DILocation(line: 117, column: 35, scope: !305)
!317 = !DILocation(line: 117, column: 33, scope: !305)
!318 = !DILocation(line: 117, column: 40, scope: !305)
!319 = !DILocation(line: 117, column: 52, scope: !305)
!320 = !DILocation(line: 117, column: 57, scope: !305)
!321 = !DILocation(line: 117, column: 11, scope: !305)
!322 = !DILocation(line: 118, column: 9, scope: !305)
!323 = !DILocation(line: 119, column: 22, scope: !324)
!324 = distinct !DILexicalBlock(scope: !295, file: !1, line: 118, column: 16)
!325 = !DILocation(line: 121, column: 7, scope: !226)
!326 = !DILocation(line: 121, column: 7, scope: !225)
!327 = !DILocation(line: 110, column: 26, scope: !226)
!328 = !DILocation(line: 110, column: 7, scope: !226)
!329 = distinct !{!329, !284, !330, !200}
!330 = !DILocation(line: 121, column: 7, scope: !227)
!331 = !DILocation(line: 122, column: 5, scope: !222)
!332 = !DILocation(line: 122, column: 5, scope: !221)
!333 = !DILocation(line: 108, column: 24, scope: !222)
!334 = !DILocation(line: 108, column: 5, scope: !222)
!335 = distinct !{!335, !276, !336, !200}
!336 = !DILocation(line: 122, column: 5, scope: !223)
!337 = !DILocation(line: 123, column: 3, scope: !219)
!338 = !DILocation(line: 123, column: 3, scope: !218)
!339 = !DILocation(line: 124, column: 5, scope: !230)
!340 = !DILocation(line: 124, column: 15, scope: !230)
!341 = !DILocation(line: 124, column: 23, scope: !230)
!342 = !DILocation(line: 124, column: 28, scope: !230)
!343 = !DILocation(line: 125, column: 5, scope: !230)
!344 = !DILocation(line: 125, column: 15, scope: !230)
!345 = !DILocation(line: 125, column: 24, scope: !230)
!346 = !DILocation(line: 125, column: 29, scope: !230)
!347 = !DILocation(line: 126, column: 5, scope: !230)
!348 = !DILocation(line: 126, column: 15, scope: !230)
!349 = !DILocation(line: 126, column: 26, scope: !230)
!350 = !DILocation(line: 126, column: 31, scope: !230)
!351 = !{!170, !162, i64 40}
!352 = !DILocation(line: 127, column: 5, scope: !230)
!353 = !DILocation(line: 127, column: 15, scope: !230)
!354 = !DILocation(line: 127, column: 27, scope: !230)
!355 = !DILocation(line: 127, column: 32, scope: !230)
!356 = !{!170, !162, i64 44}
!357 = !DILocation(line: 128, column: 5, scope: !230)
!358 = !DILocation(line: 128, column: 15, scope: !230)
!359 = !DILocation(line: 128, column: 26, scope: !230)
!360 = !DILocation(line: 128, column: 31, scope: !230)
!361 = !{!170, !162, i64 56}
!362 = !DILocation(line: 129, column: 5, scope: !230)
!363 = !DILocation(line: 129, column: 14, scope: !230)
!364 = !DILocation(line: 129, column: 22, scope: !230)
!365 = !DILocation(line: 129, column: 27, scope: !230)
!366 = !{!170, !157, i64 16}
!367 = !DILocation(line: 130, column: 5, scope: !230)
!368 = !DILocation(line: 130, column: 14, scope: !230)
!369 = !DILocation(line: 130, column: 22, scope: !230)
!370 = !DILocation(line: 130, column: 27, scope: !230)
!371 = !{!170, !157, i64 24}
!372 = !DILocation(line: 131, column: 5, scope: !230)
!373 = !DILocation(line: 131, column: 14, scope: !230)
!374 = !DILocation(line: 131, column: 22, scope: !230)
!375 = !DILocation(line: 131, column: 27, scope: !230)
!376 = !{!170, !157, i64 32}
!377 = !DILocation(line: 132, column: 5, scope: !230)
!378 = !DILocation(line: 132, column: 20, scope: !230)
!379 = !DILocation(line: 132, column: 28, scope: !230)
!380 = !DILocation(line: 132, column: 33, scope: !230)
!381 = !{!170, !157, i64 48}
!382 = !DILocation(line: 133, column: 5, scope: !230)
!383 = !DILocation(line: 133, column: 9, scope: !230)
!384 = !DILocation(line: 134, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !230, file: !1, line: 134, column: 9)
!386 = !DILocation(line: 134, column: 15, scope: !385)
!387 = !DILocation(line: 134, column: 23, scope: !385)
!388 = !DILocation(line: 134, column: 26, scope: !385)
!389 = !DILocation(line: 134, column: 32, scope: !385)
!390 = !DILocation(line: 134, column: 40, scope: !385)
!391 = !DILocation(line: 134, column: 43, scope: !385)
!392 = !DILocation(line: 134, column: 49, scope: !385)
!393 = !DILocation(line: 134, column: 57, scope: !385)
!394 = !DILocation(line: 134, column: 60, scope: !385)
!395 = !DILocation(line: 134, column: 66, scope: !385)
!396 = !DILocation(line: 134, column: 9, scope: !230)
!397 = !DILocation(line: 135, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !385, file: !1, line: 134, column: 75)
!399 = !DILocation(line: 137, column: 12, scope: !243)
!400 = !DILocation(line: 137, column: 10, scope: !243)
!401 = !DILocation(line: 137, column: 17, scope: !242)
!402 = !DILocation(line: 137, column: 19, scope: !242)
!403 = !DILocation(line: 137, column: 29, scope: !242)
!404 = !DILocation(line: 137, column: 26, scope: !242)
!405 = !DILocation(line: 137, column: 5, scope: !243)
!406 = !DILocation(line: 138, column: 7, scope: !241)
!407 = !DILocation(line: 138, column: 11, scope: !241)
!408 = !DILocation(line: 139, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !241, file: !1, line: 139, column: 7)
!410 = !DILocation(line: 139, column: 12, scope: !409)
!411 = !DILocation(line: 139, column: 19, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !1, line: 139, column: 7)
!413 = !DILocation(line: 139, column: 21, scope: !412)
!414 = !DILocation(line: 139, column: 31, scope: !412)
!415 = !DILocation(line: 139, column: 28, scope: !412)
!416 = !DILocation(line: 139, column: 7, scope: !409)
!417 = !DILocation(line: 140, column: 27, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 140, column: 13)
!419 = distinct !DILexicalBlock(scope: !412, file: !1, line: 139, column: 49)
!420 = !DILocation(line: 140, column: 35, scope: !418)
!421 = !DILocation(line: 140, column: 33, scope: !418)
!422 = !DILocation(line: 140, column: 38, scope: !418)
!423 = !DILocation(line: 140, column: 48, scope: !418)
!424 = !DILocation(line: 140, column: 56, scope: !418)
!425 = !DILocation(line: 140, column: 54, scope: !418)
!426 = !DILocation(line: 140, column: 59, scope: !418)
!427 = !DILocation(line: 140, column: 13, scope: !418)
!428 = !DILocation(line: 140, column: 13, scope: !419)
!429 = !DILocation(line: 142, column: 15, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 142, column: 15)
!431 = distinct !DILexicalBlock(scope: !418, file: !1, line: 141, column: 40)
!432 = !DILocation(line: 142, column: 15, scope: !431)
!433 = !DILocation(line: 143, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 142, column: 27)
!435 = !DILocation(line: 143, column: 31, scope: !434)
!436 = !{!158, !158, i64 0}
!437 = !DILocation(line: 143, column: 13, scope: !434)
!438 = !DILocation(line: 143, column: 23, scope: !434)
!439 = !DILocation(line: 144, column: 25, scope: !434)
!440 = !DILocation(line: 144, column: 31, scope: !434)
!441 = !DILocation(line: 144, column: 33, scope: !434)
!442 = !DILocation(line: 144, column: 13, scope: !434)
!443 = !DILocation(line: 144, column: 23, scope: !434)
!444 = !DILocation(line: 145, column: 25, scope: !434)
!445 = !DILocation(line: 145, column: 31, scope: !434)
!446 = !DILocation(line: 145, column: 33, scope: !434)
!447 = !DILocation(line: 145, column: 13, scope: !434)
!448 = !DILocation(line: 145, column: 23, scope: !434)
!449 = !DILocation(line: 146, column: 24, scope: !434)
!450 = !DILocation(line: 147, column: 11, scope: !434)
!451 = !DILocation(line: 148, column: 19, scope: !431)
!452 = !DILocation(line: 148, column: 27, scope: !431)
!453 = !DILocation(line: 148, column: 25, scope: !431)
!454 = !DILocation(line: 148, column: 37, scope: !431)
!455 = !DILocation(line: 148, column: 48, scope: !431)
!456 = !DILocation(line: 148, column: 11, scope: !431)
!457 = !DILocation(line: 149, column: 19, scope: !431)
!458 = !DILocation(line: 149, column: 28, scope: !431)
!459 = !DILocation(line: 149, column: 30, scope: !431)
!460 = !DILocation(line: 149, column: 25, scope: !431)
!461 = !DILocation(line: 149, column: 37, scope: !431)
!462 = !DILocation(line: 149, column: 48, scope: !431)
!463 = !DILocation(line: 149, column: 11, scope: !431)
!464 = !DILocation(line: 150, column: 19, scope: !431)
!465 = !DILocation(line: 150, column: 28, scope: !431)
!466 = !DILocation(line: 150, column: 30, scope: !431)
!467 = !DILocation(line: 150, column: 25, scope: !431)
!468 = !DILocation(line: 150, column: 37, scope: !431)
!469 = !DILocation(line: 150, column: 48, scope: !431)
!470 = !DILocation(line: 150, column: 11, scope: !431)
!471 = !DILocation(line: 151, column: 9, scope: !431)
!472 = !DILocation(line: 152, column: 22, scope: !473)
!473 = distinct !DILexicalBlock(scope: !418, file: !1, line: 151, column: 16)
!474 = !DILocation(line: 154, column: 7, scope: !419)
!475 = !DILocation(line: 139, column: 40, scope: !412)
!476 = !DILocation(line: 139, column: 7, scope: !412)
!477 = distinct !{!477, !416, !478, !200}
!478 = !DILocation(line: 154, column: 7, scope: !409)
!479 = !DILocation(line: 155, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !241, file: !1, line: 155, column: 11)
!481 = !DILocation(line: 155, column: 15, scope: !480)
!482 = !DILocation(line: 155, column: 13, scope: !480)
!483 = !DILocation(line: 155, column: 11, scope: !241)
!484 = !DILocation(line: 156, column: 23, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !1, line: 155, column: 22)
!486 = !DILocation(line: 156, column: 31, scope: !485)
!487 = !DILocation(line: 156, column: 29, scope: !485)
!488 = !DILocation(line: 156, column: 34, scope: !485)
!489 = !DILocation(line: 156, column: 44, scope: !485)
!490 = !DILocation(line: 156, column: 52, scope: !485)
!491 = !DILocation(line: 156, column: 50, scope: !485)
!492 = !DILocation(line: 156, column: 55, scope: !485)
!493 = !DILocation(line: 157, column: 23, scope: !485)
!494 = !DILocation(line: 157, column: 31, scope: !485)
!495 = !DILocation(line: 157, column: 29, scope: !485)
!496 = !DILocation(line: 156, column: 9, scope: !485)
!497 = !DILocation(line: 158, column: 7, scope: !485)
!498 = !DILocation(line: 159, column: 23, scope: !241)
!499 = !DILocation(line: 159, column: 21, scope: !241)
!500 = !DILocation(line: 159, column: 13, scope: !241)
!501 = !DILocation(line: 160, column: 23, scope: !241)
!502 = !DILocation(line: 160, column: 21, scope: !241)
!503 = !DILocation(line: 160, column: 13, scope: !241)
!504 = !DILocation(line: 161, column: 24, scope: !241)
!505 = !DILocation(line: 161, column: 22, scope: !241)
!506 = !DILocation(line: 161, column: 13, scope: !241)
!507 = !DILocation(line: 162, column: 24, scope: !241)
!508 = !DILocation(line: 162, column: 22, scope: !241)
!509 = !DILocation(line: 162, column: 13, scope: !241)
!510 = !DILocation(line: 163, column: 5, scope: !242)
!511 = !DILocation(line: 163, column: 5, scope: !241)
!512 = !DILocation(line: 137, column: 39, scope: !242)
!513 = !DILocation(line: 137, column: 5, scope: !242)
!514 = distinct !{!514, !405, !515, !200}
!515 = !DILocation(line: 163, column: 5, scope: !243)
!516 = !DILocation(line: 164, column: 9, scope: !246)
!517 = !DILocation(line: 164, column: 13, scope: !246)
!518 = !DILocation(line: 164, column: 11, scope: !246)
!519 = !DILocation(line: 164, column: 9, scope: !230)
!520 = !DILocation(line: 165, column: 7, scope: !245)
!521 = !DILocation(line: 165, column: 17, scope: !245)
!522 = !DILocation(line: 165, column: 30, scope: !245)
!523 = !DILocation(line: 165, column: 39, scope: !245)
!524 = !DILocation(line: 165, column: 37, scope: !245)
!525 = !DILocation(line: 166, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !245, file: !1, line: 166, column: 7)
!527 = !DILocation(line: 166, column: 12, scope: !526)
!528 = !DILocation(line: 166, column: 19, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !1, line: 166, column: 7)
!530 = !DILocation(line: 166, column: 21, scope: !529)
!531 = !DILocation(line: 166, column: 31, scope: !529)
!532 = !DILocation(line: 166, column: 28, scope: !529)
!533 = !DILocation(line: 166, column: 7, scope: !526)
!534 = !DILocation(line: 167, column: 23, scope: !535)
!535 = distinct !DILexicalBlock(scope: !529, file: !1, line: 166, column: 49)
!536 = !DILocation(line: 167, column: 31, scope: !535)
!537 = !DILocation(line: 167, column: 29, scope: !535)
!538 = !DILocation(line: 167, column: 34, scope: !535)
!539 = !DILocation(line: 167, column: 44, scope: !535)
!540 = !DILocation(line: 167, column: 52, scope: !535)
!541 = !DILocation(line: 167, column: 50, scope: !535)
!542 = !DILocation(line: 167, column: 55, scope: !535)
!543 = !DILocation(line: 168, column: 29, scope: !535)
!544 = !DILocation(line: 167, column: 9, scope: !535)
!545 = !DILocation(line: 169, column: 7, scope: !535)
!546 = !DILocation(line: 166, column: 40, scope: !529)
!547 = !DILocation(line: 166, column: 7, scope: !529)
!548 = distinct !{!548, !533, !549, !200}
!549 = !DILocation(line: 169, column: 7, scope: !526)
!550 = !DILocation(line: 170, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !245, file: !1, line: 170, column: 11)
!552 = !DILocation(line: 170, column: 15, scope: !551)
!553 = !DILocation(line: 170, column: 13, scope: !551)
!554 = !DILocation(line: 170, column: 11, scope: !245)
!555 = !DILocation(line: 171, column: 23, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !1, line: 170, column: 22)
!557 = !DILocation(line: 171, column: 31, scope: !556)
!558 = !DILocation(line: 171, column: 29, scope: !556)
!559 = !DILocation(line: 171, column: 34, scope: !556)
!560 = !DILocation(line: 171, column: 44, scope: !556)
!561 = !DILocation(line: 171, column: 52, scope: !556)
!562 = !DILocation(line: 171, column: 50, scope: !556)
!563 = !DILocation(line: 171, column: 55, scope: !556)
!564 = !DILocation(line: 172, column: 23, scope: !556)
!565 = !DILocation(line: 172, column: 31, scope: !556)
!566 = !DILocation(line: 172, column: 29, scope: !556)
!567 = !DILocation(line: 172, column: 34, scope: !556)
!568 = !DILocation(line: 171, column: 9, scope: !556)
!569 = !DILocation(line: 173, column: 7, scope: !556)
!570 = !DILocation(line: 174, column: 5, scope: !246)
!571 = !DILocation(line: 174, column: 5, scope: !245)
!572 = !DILocation(line: 175, column: 3, scope: !219)
!573 = !DILocation(line: 176, column: 1, scope: !208)
!574 = distinct !DISubprogram(name: "IsTransparentARGBArea", scope: !1, file: !1, line: 24, type: !575, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !579)
!575 = !DISubroutineType(types: !576)
!576 = !{!54, !577, !54, !54}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!579 = !{!580, !581, !582, !583, !584}
!580 = !DILocalVariable(name: "ptr", arg: 1, scope: !574, file: !1, line: 24, type: !577)
!581 = !DILocalVariable(name: "stride", arg: 2, scope: !574, file: !1, line: 24, type: !54)
!582 = !DILocalVariable(name: "size", arg: 3, scope: !574, file: !1, line: 24, type: !54)
!583 = !DILocalVariable(name: "y", scope: !574, file: !1, line: 25, type: !54)
!584 = !DILocalVariable(name: "x", scope: !574, file: !1, line: 25, type: !54)
!585 = !DILocation(line: 24, column: 50, scope: !574)
!586 = !DILocation(line: 24, column: 59, scope: !574)
!587 = !DILocation(line: 24, column: 71, scope: !574)
!588 = !DILocation(line: 25, column: 3, scope: !574)
!589 = !DILocation(line: 25, column: 7, scope: !574)
!590 = !DILocation(line: 25, column: 10, scope: !574)
!591 = !DILocation(line: 26, column: 10, scope: !592)
!592 = distinct !DILexicalBlock(scope: !574, file: !1, line: 26, column: 3)
!593 = !DILocation(line: 26, column: 8, scope: !592)
!594 = !DILocation(line: 26, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !1, line: 26, column: 3)
!596 = !DILocation(line: 26, column: 19, scope: !595)
!597 = !DILocation(line: 26, column: 17, scope: !595)
!598 = !DILocation(line: 26, column: 3, scope: !592)
!599 = !DILocation(line: 27, column: 12, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 27, column: 5)
!601 = distinct !DILexicalBlock(scope: !595, file: !1, line: 26, column: 30)
!602 = !DILocation(line: 27, column: 10, scope: !600)
!603 = !DILocation(line: 27, column: 17, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !1, line: 27, column: 5)
!605 = !DILocation(line: 27, column: 21, scope: !604)
!606 = !DILocation(line: 27, column: 19, scope: !604)
!607 = !DILocation(line: 27, column: 5, scope: !600)
!608 = !DILocation(line: 28, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 28, column: 11)
!610 = distinct !DILexicalBlock(scope: !604, file: !1, line: 27, column: 32)
!611 = !DILocation(line: 28, column: 15, scope: !609)
!612 = !DILocation(line: 28, column: 18, scope: !609)
!613 = !DILocation(line: 28, column: 11, scope: !610)
!614 = !DILocation(line: 29, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !1, line: 28, column: 33)
!616 = !DILocation(line: 31, column: 5, scope: !610)
!617 = !DILocation(line: 27, column: 27, scope: !604)
!618 = !DILocation(line: 27, column: 5, scope: !604)
!619 = distinct !{!619, !607, !620, !200}
!620 = !DILocation(line: 31, column: 5, scope: !600)
!621 = !DILocation(line: 32, column: 12, scope: !601)
!622 = !DILocation(line: 32, column: 9, scope: !601)
!623 = !DILocation(line: 33, column: 3, scope: !601)
!624 = !DILocation(line: 26, column: 25, scope: !595)
!625 = !DILocation(line: 26, column: 3, scope: !595)
!626 = distinct !{!626, !598, !627, !200}
!627 = !DILocation(line: 33, column: 3, scope: !592)
!628 = !DILocation(line: 34, column: 3, scope: !574)
!629 = !DILocation(line: 35, column: 1, scope: !574)
!630 = distinct !DISubprogram(name: "FlattenARGB", scope: !1, file: !1, line: 45, type: !631, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !74, !69, !54, !54}
!633 = !{!634, !635, !636, !637, !638, !639}
!634 = !DILocalVariable(name: "ptr", arg: 1, scope: !630, file: !1, line: 45, type: !74)
!635 = !DILocalVariable(name: "v", arg: 2, scope: !630, file: !1, line: 45, type: !69)
!636 = !DILocalVariable(name: "stride", arg: 3, scope: !630, file: !1, line: 45, type: !54)
!637 = !DILocalVariable(name: "size", arg: 4, scope: !630, file: !1, line: 45, type: !54)
!638 = !DILocalVariable(name: "x", scope: !630, file: !1, line: 46, type: !54)
!639 = !DILocalVariable(name: "y", scope: !630, file: !1, line: 46, type: !54)
!640 = !DILocation(line: 45, column: 35, scope: !630)
!641 = !DILocation(line: 45, column: 49, scope: !630)
!642 = !DILocation(line: 45, column: 56, scope: !630)
!643 = !DILocation(line: 45, column: 68, scope: !630)
!644 = !DILocation(line: 46, column: 3, scope: !630)
!645 = !DILocation(line: 46, column: 7, scope: !630)
!646 = !DILocation(line: 46, column: 10, scope: !630)
!647 = !DILocation(line: 47, column: 10, scope: !648)
!648 = distinct !DILexicalBlock(scope: !630, file: !1, line: 47, column: 3)
!649 = !DILocation(line: 47, column: 8, scope: !648)
!650 = !DILocation(line: 47, column: 15, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !1, line: 47, column: 3)
!652 = !DILocation(line: 47, column: 19, scope: !651)
!653 = !DILocation(line: 47, column: 17, scope: !651)
!654 = !DILocation(line: 47, column: 3, scope: !648)
!655 = !DILocation(line: 48, column: 12, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 48, column: 5)
!657 = distinct !DILexicalBlock(scope: !651, file: !1, line: 47, column: 30)
!658 = !DILocation(line: 48, column: 10, scope: !656)
!659 = !DILocation(line: 48, column: 17, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !1, line: 48, column: 5)
!661 = !DILocation(line: 48, column: 21, scope: !660)
!662 = !DILocation(line: 48, column: 19, scope: !660)
!663 = !DILocation(line: 48, column: 5, scope: !656)
!664 = !DILocation(line: 48, column: 41, scope: !660)
!665 = !DILocation(line: 48, column: 32, scope: !660)
!666 = !DILocation(line: 48, column: 36, scope: !660)
!667 = !DILocation(line: 48, column: 39, scope: !660)
!668 = !DILocation(line: 48, column: 27, scope: !660)
!669 = !DILocation(line: 48, column: 5, scope: !660)
!670 = distinct !{!670, !663, !671, !200}
!671 = !DILocation(line: 48, column: 41, scope: !656)
!672 = !DILocation(line: 49, column: 12, scope: !657)
!673 = !DILocation(line: 49, column: 9, scope: !657)
!674 = !DILocation(line: 50, column: 3, scope: !657)
!675 = !DILocation(line: 47, column: 25, scope: !651)
!676 = !DILocation(line: 47, column: 3, scope: !651)
!677 = distinct !{!677, !654, !678, !200}
!678 = !DILocation(line: 50, column: 3, scope: !648)
!679 = !DILocation(line: 51, column: 1, scope: !630)
!680 = distinct !DISubprogram(name: "SmoothenBlock", scope: !1, file: !1, line: 55, type: !681, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!54, !85, !54, !60, !54, !54, !54}
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!684 = !DILocalVariable(name: "a_ptr", arg: 1, scope: !680, file: !1, line: 55, type: !85)
!685 = !DILocalVariable(name: "a_stride", arg: 2, scope: !680, file: !1, line: 55, type: !54)
!686 = !DILocalVariable(name: "y_ptr", arg: 3, scope: !680, file: !1, line: 55, type: !60)
!687 = !DILocalVariable(name: "y_stride", arg: 4, scope: !680, file: !1, line: 56, type: !54)
!688 = !DILocalVariable(name: "width", arg: 5, scope: !680, file: !1, line: 56, type: !54)
!689 = !DILocalVariable(name: "height", arg: 6, scope: !680, file: !1, line: 56, type: !54)
!690 = !DILocalVariable(name: "sum", scope: !680, file: !1, line: 57, type: !54)
!691 = !DILocalVariable(name: "count", scope: !680, file: !1, line: 57, type: !54)
!692 = !DILocalVariable(name: "x", scope: !680, file: !1, line: 58, type: !54)
!693 = !DILocalVariable(name: "y", scope: !680, file: !1, line: 58, type: !54)
!694 = !DILocalVariable(name: "alpha_ptr", scope: !680, file: !1, line: 59, type: !85)
!695 = !DILocalVariable(name: "luma_ptr", scope: !680, file: !1, line: 60, type: !60)
!696 = !DILocalVariable(name: "avg_u8", scope: !697, file: !1, line: 72, type: !86)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 71, column: 44)
!698 = distinct !DILexicalBlock(scope: !680, file: !1, line: 71, column: 7)
!699 = !DILocation(line: 55, column: 41, scope: !680)
!700 = !DILocation(line: 55, column: 52, scope: !680)
!701 = !DILocation(line: 55, column: 71, scope: !680)
!702 = !DILocation(line: 56, column: 30, scope: !680)
!703 = !DILocation(line: 56, column: 44, scope: !680)
!704 = !DILocation(line: 56, column: 55, scope: !680)
!705 = !DILocation(line: 57, column: 3, scope: !680)
!706 = !DILocation(line: 57, column: 7, scope: !680)
!707 = !DILocation(line: 57, column: 16, scope: !680)
!708 = !DILocation(line: 58, column: 3, scope: !680)
!709 = !DILocation(line: 58, column: 7, scope: !680)
!710 = !DILocation(line: 58, column: 10, scope: !680)
!711 = !DILocation(line: 59, column: 3, scope: !680)
!712 = !DILocation(line: 59, column: 18, scope: !680)
!713 = !DILocation(line: 59, column: 30, scope: !680)
!714 = !DILocation(line: 60, column: 3, scope: !680)
!715 = !DILocation(line: 60, column: 12, scope: !680)
!716 = !DILocation(line: 60, column: 23, scope: !680)
!717 = !DILocation(line: 61, column: 10, scope: !718)
!718 = distinct !DILexicalBlock(scope: !680, file: !1, line: 61, column: 3)
!719 = !DILocation(line: 61, column: 8, scope: !718)
!720 = !DILocation(line: 61, column: 15, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !1, line: 61, column: 3)
!722 = !DILocation(line: 61, column: 19, scope: !721)
!723 = !DILocation(line: 61, column: 17, scope: !721)
!724 = !DILocation(line: 61, column: 3, scope: !718)
!725 = !DILocation(line: 62, column: 12, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 62, column: 5)
!727 = distinct !DILexicalBlock(scope: !721, file: !1, line: 61, column: 32)
!728 = !DILocation(line: 62, column: 10, scope: !726)
!729 = !DILocation(line: 62, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !1, line: 62, column: 5)
!731 = !DILocation(line: 62, column: 21, scope: !730)
!732 = !DILocation(line: 62, column: 19, scope: !730)
!733 = !DILocation(line: 62, column: 5, scope: !726)
!734 = !DILocation(line: 63, column: 11, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 63, column: 11)
!736 = distinct !DILexicalBlock(scope: !730, file: !1, line: 62, column: 33)
!737 = !DILocation(line: 63, column: 21, scope: !735)
!738 = !DILocation(line: 63, column: 24, scope: !735)
!739 = !DILocation(line: 63, column: 11, scope: !736)
!740 = !DILocation(line: 64, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !735, file: !1, line: 63, column: 30)
!742 = !DILocation(line: 65, column: 16, scope: !741)
!743 = !DILocation(line: 65, column: 25, scope: !741)
!744 = !DILocation(line: 65, column: 13, scope: !741)
!745 = !DILocation(line: 66, column: 7, scope: !741)
!746 = !DILocation(line: 67, column: 5, scope: !736)
!747 = !DILocation(line: 62, column: 28, scope: !730)
!748 = !DILocation(line: 62, column: 5, scope: !730)
!749 = distinct !{!749, !733, !750, !200}
!750 = !DILocation(line: 67, column: 5, scope: !726)
!751 = !DILocation(line: 68, column: 18, scope: !727)
!752 = !DILocation(line: 68, column: 15, scope: !727)
!753 = !DILocation(line: 69, column: 17, scope: !727)
!754 = !DILocation(line: 69, column: 14, scope: !727)
!755 = !DILocation(line: 70, column: 3, scope: !727)
!756 = !DILocation(line: 61, column: 27, scope: !721)
!757 = !DILocation(line: 61, column: 3, scope: !721)
!758 = distinct !{!758, !724, !759, !200}
!759 = !DILocation(line: 70, column: 3, scope: !718)
!760 = !DILocation(line: 71, column: 7, scope: !698)
!761 = !DILocation(line: 71, column: 13, scope: !698)
!762 = !DILocation(line: 71, column: 17, scope: !698)
!763 = !DILocation(line: 71, column: 20, scope: !698)
!764 = !DILocation(line: 71, column: 28, scope: !698)
!765 = !DILocation(line: 71, column: 36, scope: !698)
!766 = !DILocation(line: 71, column: 34, scope: !698)
!767 = !DILocation(line: 71, column: 26, scope: !698)
!768 = !DILocation(line: 71, column: 7, scope: !680)
!769 = !DILocation(line: 72, column: 5, scope: !697)
!770 = !DILocation(line: 72, column: 19, scope: !697)
!771 = !DILocation(line: 72, column: 38, scope: !697)
!772 = !DILocation(line: 72, column: 44, scope: !697)
!773 = !DILocation(line: 72, column: 42, scope: !697)
!774 = !DILocation(line: 72, column: 28, scope: !697)
!775 = !DILocation(line: 73, column: 17, scope: !697)
!776 = !DILocation(line: 73, column: 15, scope: !697)
!777 = !DILocation(line: 74, column: 16, scope: !697)
!778 = !DILocation(line: 74, column: 14, scope: !697)
!779 = !DILocation(line: 75, column: 12, scope: !780)
!780 = distinct !DILexicalBlock(scope: !697, file: !1, line: 75, column: 5)
!781 = !DILocation(line: 75, column: 10, scope: !780)
!782 = !DILocation(line: 75, column: 17, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !1, line: 75, column: 5)
!784 = !DILocation(line: 75, column: 21, scope: !783)
!785 = !DILocation(line: 75, column: 19, scope: !783)
!786 = !DILocation(line: 75, column: 5, scope: !780)
!787 = !DILocation(line: 76, column: 14, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !1, line: 76, column: 7)
!789 = distinct !DILexicalBlock(scope: !783, file: !1, line: 75, column: 34)
!790 = !DILocation(line: 76, column: 12, scope: !788)
!791 = !DILocation(line: 76, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !1, line: 76, column: 7)
!793 = !DILocation(line: 76, column: 23, scope: !792)
!794 = !DILocation(line: 76, column: 21, scope: !792)
!795 = !DILocation(line: 76, column: 7, scope: !788)
!796 = !DILocation(line: 77, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !1, line: 77, column: 13)
!798 = distinct !DILexicalBlock(scope: !792, file: !1, line: 76, column: 35)
!799 = !DILocation(line: 77, column: 23, scope: !797)
!800 = !DILocation(line: 77, column: 26, scope: !797)
!801 = !DILocation(line: 77, column: 13, scope: !798)
!802 = !DILocation(line: 77, column: 46, scope: !797)
!803 = !DILocation(line: 77, column: 32, scope: !797)
!804 = !DILocation(line: 77, column: 41, scope: !797)
!805 = !DILocation(line: 77, column: 44, scope: !797)
!806 = !DILocation(line: 78, column: 7, scope: !798)
!807 = !DILocation(line: 76, column: 30, scope: !792)
!808 = !DILocation(line: 76, column: 7, scope: !792)
!809 = distinct !{!809, !795, !810, !200}
!810 = !DILocation(line: 78, column: 7, scope: !788)
!811 = !DILocation(line: 79, column: 20, scope: !789)
!812 = !DILocation(line: 79, column: 17, scope: !789)
!813 = !DILocation(line: 80, column: 19, scope: !789)
!814 = !DILocation(line: 80, column: 16, scope: !789)
!815 = !DILocation(line: 81, column: 5, scope: !789)
!816 = !DILocation(line: 75, column: 29, scope: !783)
!817 = !DILocation(line: 75, column: 5, scope: !783)
!818 = distinct !{!818, !786, !819, !200}
!819 = !DILocation(line: 81, column: 5, scope: !780)
!820 = !DILocation(line: 82, column: 3, scope: !698)
!821 = !DILocation(line: 82, column: 3, scope: !697)
!822 = !DILocation(line: 83, column: 11, scope: !680)
!823 = !DILocation(line: 83, column: 17, scope: !680)
!824 = !DILocation(line: 84, column: 1, scope: !680)
!825 = !DILocation(line: 83, column: 3, scope: !680)
!826 = distinct !DISubprogram(name: "Flatten", scope: !1, file: !1, line: 37, type: !827, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !60, !54, !54, !54}
!829 = !{!830, !831, !832, !833, !834}
!830 = !DILocalVariable(name: "ptr", arg: 1, scope: !826, file: !1, line: 37, type: !60)
!831 = !DILocalVariable(name: "v", arg: 2, scope: !826, file: !1, line: 37, type: !54)
!832 = !DILocalVariable(name: "stride", arg: 3, scope: !826, file: !1, line: 37, type: !54)
!833 = !DILocalVariable(name: "size", arg: 4, scope: !826, file: !1, line: 37, type: !54)
!834 = !DILocalVariable(name: "y", scope: !826, file: !1, line: 38, type: !54)
!835 = !DILocation(line: 37, column: 30, scope: !826)
!836 = !DILocation(line: 37, column: 39, scope: !826)
!837 = !DILocation(line: 37, column: 46, scope: !826)
!838 = !DILocation(line: 37, column: 58, scope: !826)
!839 = !DILocation(line: 38, column: 3, scope: !826)
!840 = !DILocation(line: 38, column: 7, scope: !826)
!841 = !DILocation(line: 39, column: 10, scope: !842)
!842 = distinct !DILexicalBlock(scope: !826, file: !1, line: 39, column: 3)
!843 = !DILocation(line: 39, column: 8, scope: !842)
!844 = !DILocation(line: 39, column: 15, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !1, line: 39, column: 3)
!846 = !DILocation(line: 39, column: 19, scope: !845)
!847 = !DILocation(line: 39, column: 17, scope: !845)
!848 = !DILocation(line: 39, column: 3, scope: !842)
!849 = !DILocation(line: 40, column: 12, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !1, line: 39, column: 30)
!851 = !DILocation(line: 40, column: 17, scope: !850)
!852 = !DILocation(line: 40, column: 5, scope: !850)
!853 = !DILocation(line: 40, column: 20, scope: !850)
!854 = !DILocation(line: 41, column: 12, scope: !850)
!855 = !DILocation(line: 41, column: 9, scope: !850)
!856 = !DILocation(line: 42, column: 3, scope: !850)
!857 = !DILocation(line: 39, column: 25, scope: !845)
!858 = !DILocation(line: 39, column: 3, scope: !845)
!859 = distinct !{!859, !848, !860, !200}
!860 = !DILocation(line: 42, column: 3, scope: !842)
!861 = !DILocation(line: 43, column: 1, scope: !826)
!862 = distinct !DISubprogram(name: "WebPBlendAlpha", scope: !1, file: !1, line: 193, type: !863, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !49, !69}
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !876, !877, !878, !879, !880, !881, !882, !883, !884, !891, !895, !899, !902, !904, !905, !912, !917, !918}
!866 = !DILocalVariable(name: "picture", arg: 1, scope: !862, file: !1, line: 193, type: !49)
!867 = !DILocalVariable(name: "background_rgb", arg: 2, scope: !862, file: !1, line: 193, type: !69)
!868 = !DILocalVariable(name: "red", scope: !862, file: !1, line: 194, type: !228)
!869 = !DILocalVariable(name: "green", scope: !862, file: !1, line: 195, type: !228)
!870 = !DILocalVariable(name: "blue", scope: !862, file: !1, line: 196, type: !228)
!871 = !DILocalVariable(name: "x", scope: !862, file: !1, line: 197, type: !54)
!872 = !DILocalVariable(name: "y", scope: !862, file: !1, line: 197, type: !54)
!873 = !DILocalVariable(name: "uv_width", scope: !874, file: !1, line: 201, type: !228)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 199, column: 27)
!875 = distinct !DILexicalBlock(scope: !862, file: !1, line: 199, column: 7)
!876 = !DILocalVariable(name: "Y0", scope: !874, file: !1, line: 202, type: !228)
!877 = !DILocalVariable(name: "U0", scope: !874, file: !1, line: 204, type: !228)
!878 = !DILocalVariable(name: "V0", scope: !874, file: !1, line: 205, type: !228)
!879 = !DILocalVariable(name: "has_alpha", scope: !874, file: !1, line: 206, type: !228)
!880 = !DILocalVariable(name: "y_ptr", scope: !874, file: !1, line: 207, type: !60)
!881 = !DILocalVariable(name: "u_ptr", scope: !874, file: !1, line: 208, type: !60)
!882 = !DILocalVariable(name: "v_ptr", scope: !874, file: !1, line: 209, type: !60)
!883 = !DILocalVariable(name: "a_ptr", scope: !874, file: !1, line: 210, type: !60)
!884 = !DILocalVariable(name: "alpha", scope: !885, file: !1, line: 215, type: !86)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 214, column: 44)
!886 = distinct !DILexicalBlock(scope: !887, file: !1, line: 214, column: 7)
!887 = distinct !DILexicalBlock(scope: !888, file: !1, line: 214, column: 7)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 212, column: 43)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 212, column: 5)
!890 = distinct !DILexicalBlock(scope: !874, file: !1, line: 212, column: 5)
!891 = !DILocalVariable(name: "a_ptr2", scope: !892, file: !1, line: 222, type: !894)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 221, column: 25)
!893 = distinct !DILexicalBlock(scope: !888, file: !1, line: 221, column: 11)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!895 = !DILocalVariable(name: "alpha", scope: !896, file: !1, line: 227, type: !578)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 224, column: 40)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 224, column: 9)
!898 = distinct !DILexicalBlock(scope: !892, file: !1, line: 224, column: 9)
!899 = !DILocalVariable(name: "alpha", scope: !900, file: !1, line: 234, type: !578)
!900 = distinct !DILexicalBlock(scope: !901, file: !1, line: 233, column: 33)
!901 = distinct !DILexicalBlock(scope: !892, file: !1, line: 233, column: 13)
!902 = !DILocalVariable(name: "argb", scope: !903, file: !1, line: 247, type: !74)
!903 = distinct !DILexicalBlock(scope: !875, file: !1, line: 246, column: 10)
!904 = !DILocalVariable(name: "background", scope: !903, file: !1, line: 248, type: !578)
!905 = !DILocalVariable(name: "alpha", scope: !906, file: !1, line: 251, type: !228)
!906 = distinct !DILexicalBlock(scope: !907, file: !1, line: 250, column: 44)
!907 = distinct !DILexicalBlock(scope: !908, file: !1, line: 250, column: 7)
!908 = distinct !DILexicalBlock(scope: !909, file: !1, line: 250, column: 7)
!909 = distinct !DILexicalBlock(scope: !910, file: !1, line: 249, column: 43)
!910 = distinct !DILexicalBlock(scope: !911, file: !1, line: 249, column: 5)
!911 = distinct !DILexicalBlock(scope: !903, file: !1, line: 249, column: 5)
!912 = !DILocalVariable(name: "r", scope: !913, file: !1, line: 254, type: !54)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 253, column: 26)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 253, column: 15)
!915 = distinct !DILexicalBlock(scope: !916, file: !1, line: 252, column: 28)
!916 = distinct !DILexicalBlock(scope: !906, file: !1, line: 252, column: 13)
!917 = !DILocalVariable(name: "g", scope: !913, file: !1, line: 255, type: !54)
!918 = !DILocalVariable(name: "b", scope: !913, file: !1, line: 256, type: !54)
!919 = !DILocation(line: 193, column: 34, scope: !862)
!920 = !DILocation(line: 193, column: 52, scope: !862)
!921 = !DILocation(line: 194, column: 3, scope: !862)
!922 = !DILocation(line: 194, column: 13, scope: !862)
!923 = !DILocation(line: 194, column: 20, scope: !862)
!924 = !DILocation(line: 194, column: 35, scope: !862)
!925 = !DILocation(line: 194, column: 42, scope: !862)
!926 = !DILocation(line: 195, column: 3, scope: !862)
!927 = !DILocation(line: 195, column: 13, scope: !862)
!928 = !DILocation(line: 195, column: 22, scope: !862)
!929 = !DILocation(line: 195, column: 37, scope: !862)
!930 = !DILocation(line: 195, column: 43, scope: !862)
!931 = !DILocation(line: 196, column: 3, scope: !862)
!932 = !DILocation(line: 196, column: 13, scope: !862)
!933 = !DILocation(line: 196, column: 21, scope: !862)
!934 = !DILocation(line: 196, column: 36, scope: !862)
!935 = !DILocation(line: 196, column: 42, scope: !862)
!936 = !DILocation(line: 197, column: 3, scope: !862)
!937 = !DILocation(line: 197, column: 7, scope: !862)
!938 = !DILocation(line: 197, column: 10, scope: !862)
!939 = !DILocation(line: 198, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !862, file: !1, line: 198, column: 7)
!941 = !DILocation(line: 198, column: 15, scope: !940)
!942 = !DILocation(line: 198, column: 7, scope: !862)
!943 = !DILocation(line: 198, column: 24, scope: !940)
!944 = !DILocation(line: 199, column: 8, scope: !875)
!945 = !DILocation(line: 199, column: 17, scope: !875)
!946 = !DILocation(line: 199, column: 7, scope: !862)
!947 = !DILocation(line: 201, column: 5, scope: !874)
!948 = !DILocation(line: 201, column: 15, scope: !874)
!949 = !DILocation(line: 201, column: 27, scope: !874)
!950 = !DILocation(line: 201, column: 36, scope: !874)
!951 = !DILocation(line: 201, column: 42, scope: !874)
!952 = !DILocation(line: 202, column: 5, scope: !874)
!953 = !DILocation(line: 202, column: 15, scope: !874)
!954 = !DILocation(line: 202, column: 30, scope: !874)
!955 = !DILocation(line: 202, column: 35, scope: !874)
!956 = !DILocation(line: 202, column: 42, scope: !874)
!957 = !DILocation(line: 202, column: 20, scope: !874)
!958 = !DILocation(line: 204, column: 5, scope: !874)
!959 = !DILocation(line: 204, column: 15, scope: !874)
!960 = !DILocation(line: 204, column: 34, scope: !874)
!961 = !DILocation(line: 204, column: 32, scope: !874)
!962 = !DILocation(line: 204, column: 43, scope: !874)
!963 = !DILocation(line: 204, column: 41, scope: !874)
!964 = !DILocation(line: 204, column: 54, scope: !874)
!965 = !DILocation(line: 204, column: 52, scope: !874)
!966 = !DILocation(line: 204, column: 20, scope: !874)
!967 = !DILocation(line: 205, column: 5, scope: !874)
!968 = !DILocation(line: 205, column: 15, scope: !874)
!969 = !DILocation(line: 205, column: 34, scope: !874)
!970 = !DILocation(line: 205, column: 32, scope: !874)
!971 = !DILocation(line: 205, column: 43, scope: !874)
!972 = !DILocation(line: 205, column: 41, scope: !874)
!973 = !DILocation(line: 205, column: 54, scope: !874)
!974 = !DILocation(line: 205, column: 52, scope: !874)
!975 = !DILocation(line: 205, column: 20, scope: !874)
!976 = !DILocation(line: 206, column: 5, scope: !874)
!977 = !DILocation(line: 206, column: 15, scope: !874)
!978 = !DILocation(line: 206, column: 27, scope: !874)
!979 = !DILocation(line: 206, column: 36, scope: !874)
!980 = !{!170, !158, i64 4}
!981 = !DILocation(line: 206, column: 47, scope: !874)
!982 = !DILocation(line: 207, column: 5, scope: !874)
!983 = !DILocation(line: 207, column: 14, scope: !874)
!984 = !DILocation(line: 207, column: 22, scope: !874)
!985 = !DILocation(line: 207, column: 31, scope: !874)
!986 = !DILocation(line: 208, column: 5, scope: !874)
!987 = !DILocation(line: 208, column: 14, scope: !874)
!988 = !DILocation(line: 208, column: 22, scope: !874)
!989 = !DILocation(line: 208, column: 31, scope: !874)
!990 = !DILocation(line: 209, column: 5, scope: !874)
!991 = !DILocation(line: 209, column: 14, scope: !874)
!992 = !DILocation(line: 209, column: 22, scope: !874)
!993 = !DILocation(line: 209, column: 31, scope: !874)
!994 = !DILocation(line: 210, column: 5, scope: !874)
!995 = !DILocation(line: 210, column: 14, scope: !874)
!996 = !DILocation(line: 210, column: 22, scope: !874)
!997 = !DILocation(line: 210, column: 31, scope: !874)
!998 = !DILocation(line: 211, column: 10, scope: !999)
!999 = distinct !DILexicalBlock(scope: !874, file: !1, line: 211, column: 9)
!1000 = !DILocation(line: 211, column: 20, scope: !999)
!1001 = !DILocation(line: 211, column: 23, scope: !999)
!1002 = !DILocation(line: 211, column: 29, scope: !999)
!1003 = !DILocation(line: 211, column: 9, scope: !874)
!1004 = !DILocation(line: 211, column: 38, scope: !999)
!1005 = !DILocation(line: 212, column: 12, scope: !890)
!1006 = !DILocation(line: 212, column: 10, scope: !890)
!1007 = !DILocation(line: 212, column: 17, scope: !889)
!1008 = !DILocation(line: 212, column: 21, scope: !889)
!1009 = !DILocation(line: 212, column: 30, scope: !889)
!1010 = !DILocation(line: 212, column: 19, scope: !889)
!1011 = !DILocation(line: 212, column: 5, scope: !890)
!1012 = !DILocation(line: 214, column: 14, scope: !887)
!1013 = !DILocation(line: 214, column: 12, scope: !887)
!1014 = !DILocation(line: 214, column: 19, scope: !886)
!1015 = !DILocation(line: 214, column: 23, scope: !886)
!1016 = !DILocation(line: 214, column: 32, scope: !886)
!1017 = !DILocation(line: 214, column: 21, scope: !886)
!1018 = !DILocation(line: 214, column: 7, scope: !887)
!1019 = !DILocation(line: 215, column: 9, scope: !885)
!1020 = !DILocation(line: 215, column: 23, scope: !885)
!1021 = !DILocation(line: 215, column: 31, scope: !885)
!1022 = !DILocation(line: 215, column: 37, scope: !885)
!1023 = !DILocation(line: 216, column: 13, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !885, file: !1, line: 216, column: 13)
!1025 = !DILocation(line: 216, column: 19, scope: !1024)
!1026 = !DILocation(line: 216, column: 13, scope: !885)
!1027 = !DILocation(line: 217, column: 22, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 216, column: 27)
!1029 = !DILocation(line: 217, column: 11, scope: !1028)
!1030 = !DILocation(line: 217, column: 17, scope: !1028)
!1031 = !DILocation(line: 217, column: 20, scope: !1028)
!1032 = !DILocation(line: 218, column: 9, scope: !1028)
!1033 = !DILocation(line: 219, column: 7, scope: !886)
!1034 = !DILocation(line: 219, column: 7, scope: !885)
!1035 = !DILocation(line: 214, column: 39, scope: !886)
!1036 = !DILocation(line: 214, column: 7, scope: !886)
!1037 = distinct !{!1037, !1018, !1038, !200}
!1038 = !DILocation(line: 219, column: 7, scope: !887)
!1039 = !DILocation(line: 221, column: 12, scope: !893)
!1040 = !DILocation(line: 221, column: 14, scope: !893)
!1041 = !DILocation(line: 221, column: 19, scope: !893)
!1042 = !DILocation(line: 221, column: 11, scope: !888)
!1043 = !DILocation(line: 222, column: 9, scope: !892)
!1044 = !DILocation(line: 222, column: 24, scope: !892)
!1045 = !DILocation(line: 223, column: 14, scope: !892)
!1046 = !DILocation(line: 223, column: 16, scope: !892)
!1047 = !DILocation(line: 223, column: 23, scope: !892)
!1048 = !DILocation(line: 223, column: 32, scope: !892)
!1049 = !DILocation(line: 223, column: 20, scope: !892)
!1050 = !DILocation(line: 223, column: 13, scope: !892)
!1051 = !DILocation(line: 223, column: 42, scope: !892)
!1052 = !DILocation(line: 223, column: 50, scope: !892)
!1053 = !DILocation(line: 223, column: 58, scope: !892)
!1054 = !DILocation(line: 223, column: 67, scope: !892)
!1055 = !DILocation(line: 223, column: 56, scope: !892)
!1056 = !DILocation(line: 224, column: 16, scope: !898)
!1057 = !DILocation(line: 224, column: 14, scope: !898)
!1058 = !DILocation(line: 224, column: 21, scope: !897)
!1059 = !DILocation(line: 224, column: 25, scope: !897)
!1060 = !DILocation(line: 224, column: 23, scope: !897)
!1061 = !DILocation(line: 224, column: 9, scope: !898)
!1062 = !DILocation(line: 227, column: 11, scope: !896)
!1063 = !DILocation(line: 227, column: 26, scope: !896)
!1064 = !DILocation(line: 228, column: 15, scope: !896)
!1065 = !DILocation(line: 228, column: 25, scope: !896)
!1066 = !DILocation(line: 228, column: 23, scope: !896)
!1067 = !DILocation(line: 228, column: 27, scope: !896)
!1068 = !DILocation(line: 228, column: 34, scope: !896)
!1069 = !DILocation(line: 228, column: 44, scope: !896)
!1070 = !DILocation(line: 228, column: 42, scope: !896)
!1071 = !DILocation(line: 228, column: 46, scope: !896)
!1072 = !DILocation(line: 228, column: 32, scope: !896)
!1073 = !DILocation(line: 229, column: 15, scope: !896)
!1074 = !DILocation(line: 229, column: 26, scope: !896)
!1075 = !DILocation(line: 229, column: 24, scope: !896)
!1076 = !DILocation(line: 229, column: 28, scope: !896)
!1077 = !DILocation(line: 228, column: 51, scope: !896)
!1078 = !DILocation(line: 229, column: 35, scope: !896)
!1079 = !DILocation(line: 229, column: 46, scope: !896)
!1080 = !DILocation(line: 229, column: 44, scope: !896)
!1081 = !DILocation(line: 229, column: 48, scope: !896)
!1082 = !DILocation(line: 229, column: 33, scope: !896)
!1083 = !DILocation(line: 230, column: 22, scope: !896)
!1084 = !DILocation(line: 230, column: 11, scope: !896)
!1085 = !DILocation(line: 230, column: 17, scope: !896)
!1086 = !DILocation(line: 230, column: 20, scope: !896)
!1087 = !DILocation(line: 231, column: 22, scope: !896)
!1088 = !DILocation(line: 231, column: 11, scope: !896)
!1089 = !DILocation(line: 231, column: 17, scope: !896)
!1090 = !DILocation(line: 231, column: 20, scope: !896)
!1091 = !DILocation(line: 232, column: 9, scope: !897)
!1092 = !DILocation(line: 232, column: 9, scope: !896)
!1093 = !DILocation(line: 224, column: 35, scope: !897)
!1094 = !DILocation(line: 224, column: 9, scope: !897)
!1095 = distinct !{!1095, !1061, !1096, !200}
!1096 = !DILocation(line: 232, column: 9, scope: !898)
!1097 = !DILocation(line: 233, column: 13, scope: !901)
!1098 = !DILocation(line: 233, column: 22, scope: !901)
!1099 = !DILocation(line: 233, column: 28, scope: !901)
!1100 = !DILocation(line: 233, column: 13, scope: !892)
!1101 = !DILocation(line: 234, column: 11, scope: !900)
!1102 = !DILocation(line: 234, column: 26, scope: !900)
!1103 = !DILocation(line: 234, column: 39, scope: !900)
!1104 = !DILocation(line: 234, column: 49, scope: !900)
!1105 = !DILocation(line: 234, column: 47, scope: !900)
!1106 = !DILocation(line: 234, column: 51, scope: !900)
!1107 = !DILocation(line: 234, column: 58, scope: !900)
!1108 = !DILocation(line: 234, column: 69, scope: !900)
!1109 = !DILocation(line: 234, column: 67, scope: !900)
!1110 = !DILocation(line: 234, column: 71, scope: !900)
!1111 = !DILocation(line: 234, column: 56, scope: !900)
!1112 = !DILocation(line: 234, column: 36, scope: !900)
!1113 = !DILocation(line: 235, column: 22, scope: !900)
!1114 = !DILocation(line: 235, column: 11, scope: !900)
!1115 = !DILocation(line: 235, column: 17, scope: !900)
!1116 = !DILocation(line: 235, column: 20, scope: !900)
!1117 = !DILocation(line: 236, column: 22, scope: !900)
!1118 = !DILocation(line: 236, column: 11, scope: !900)
!1119 = !DILocation(line: 236, column: 17, scope: !900)
!1120 = !DILocation(line: 236, column: 20, scope: !900)
!1121 = !DILocation(line: 237, column: 9, scope: !901)
!1122 = !DILocation(line: 237, column: 9, scope: !900)
!1123 = !DILocation(line: 238, column: 7, scope: !893)
!1124 = !DILocation(line: 238, column: 7, scope: !892)
!1125 = !DILocation(line: 239, column: 18, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !893, file: !1, line: 238, column: 14)
!1127 = !DILocation(line: 239, column: 27, scope: !1126)
!1128 = !DILocation(line: 239, column: 15, scope: !1126)
!1129 = !DILocation(line: 240, column: 18, scope: !1126)
!1130 = !DILocation(line: 240, column: 27, scope: !1126)
!1131 = !DILocation(line: 240, column: 15, scope: !1126)
!1132 = !DILocation(line: 242, column: 14, scope: !888)
!1133 = !DILocation(line: 242, column: 27, scope: !888)
!1134 = !DILocation(line: 242, column: 36, scope: !888)
!1135 = !DILocation(line: 242, column: 7, scope: !888)
!1136 = !DILocation(line: 243, column: 16, scope: !888)
!1137 = !DILocation(line: 243, column: 25, scope: !888)
!1138 = !DILocation(line: 243, column: 13, scope: !888)
!1139 = !DILocation(line: 244, column: 16, scope: !888)
!1140 = !DILocation(line: 244, column: 25, scope: !888)
!1141 = !DILocation(line: 244, column: 13, scope: !888)
!1142 = !DILocation(line: 245, column: 5, scope: !888)
!1143 = !DILocation(line: 212, column: 38, scope: !889)
!1144 = !DILocation(line: 212, column: 5, scope: !889)
!1145 = distinct !{!1145, !1011, !1146, !200}
!1146 = !DILocation(line: 245, column: 5, scope: !890)
!1147 = !DILocation(line: 246, column: 3, scope: !875)
!1148 = !DILocation(line: 246, column: 3, scope: !874)
!1149 = !DILocation(line: 247, column: 5, scope: !903)
!1150 = !DILocation(line: 247, column: 15, scope: !903)
!1151 = !DILocation(line: 247, column: 22, scope: !903)
!1152 = !DILocation(line: 247, column: 31, scope: !903)
!1153 = !DILocation(line: 248, column: 5, scope: !903)
!1154 = !DILocation(line: 248, column: 20, scope: !903)
!1155 = !DILocation(line: 248, column: 44, scope: !903)
!1156 = !DILocation(line: 248, column: 49, scope: !903)
!1157 = !DILocation(line: 248, column: 56, scope: !903)
!1158 = !DILocation(line: 248, column: 33, scope: !903)
!1159 = !DILocation(line: 249, column: 12, scope: !911)
!1160 = !DILocation(line: 249, column: 10, scope: !911)
!1161 = !DILocation(line: 249, column: 17, scope: !910)
!1162 = !DILocation(line: 249, column: 21, scope: !910)
!1163 = !DILocation(line: 249, column: 30, scope: !910)
!1164 = !DILocation(line: 249, column: 19, scope: !910)
!1165 = !DILocation(line: 249, column: 5, scope: !911)
!1166 = !DILocation(line: 250, column: 14, scope: !908)
!1167 = !DILocation(line: 250, column: 12, scope: !908)
!1168 = !DILocation(line: 250, column: 19, scope: !907)
!1169 = !DILocation(line: 250, column: 23, scope: !907)
!1170 = !DILocation(line: 250, column: 32, scope: !907)
!1171 = !DILocation(line: 250, column: 21, scope: !907)
!1172 = !DILocation(line: 250, column: 7, scope: !908)
!1173 = !DILocation(line: 251, column: 9, scope: !906)
!1174 = !DILocation(line: 251, column: 19, scope: !906)
!1175 = !DILocation(line: 251, column: 28, scope: !906)
!1176 = !DILocation(line: 251, column: 33, scope: !906)
!1177 = !DILocation(line: 251, column: 36, scope: !906)
!1178 = !DILocation(line: 251, column: 43, scope: !906)
!1179 = !DILocation(line: 252, column: 13, scope: !916)
!1180 = !DILocation(line: 252, column: 19, scope: !916)
!1181 = !DILocation(line: 252, column: 13, scope: !906)
!1182 = !DILocation(line: 253, column: 15, scope: !914)
!1183 = !DILocation(line: 253, column: 21, scope: !914)
!1184 = !DILocation(line: 253, column: 15, scope: !915)
!1185 = !DILocation(line: 254, column: 13, scope: !913)
!1186 = !DILocation(line: 254, column: 17, scope: !913)
!1187 = !DILocation(line: 254, column: 22, scope: !913)
!1188 = !DILocation(line: 254, column: 27, scope: !913)
!1189 = !DILocation(line: 254, column: 30, scope: !913)
!1190 = !DILocation(line: 254, column: 37, scope: !913)
!1191 = !DILocation(line: 255, column: 13, scope: !913)
!1192 = !DILocation(line: 255, column: 17, scope: !913)
!1193 = !DILocation(line: 255, column: 22, scope: !913)
!1194 = !DILocation(line: 255, column: 27, scope: !913)
!1195 = !DILocation(line: 255, column: 30, scope: !913)
!1196 = !DILocation(line: 255, column: 37, scope: !913)
!1197 = !DILocation(line: 256, column: 13, scope: !913)
!1198 = !DILocation(line: 256, column: 17, scope: !913)
!1199 = !DILocation(line: 256, column: 22, scope: !913)
!1200 = !DILocation(line: 256, column: 27, scope: !913)
!1201 = !DILocation(line: 256, column: 30, scope: !913)
!1202 = !DILocation(line: 256, column: 37, scope: !913)
!1203 = !DILocation(line: 257, column: 17, scope: !913)
!1204 = !DILocation(line: 257, column: 15, scope: !913)
!1205 = !DILocation(line: 258, column: 17, scope: !913)
!1206 = !DILocation(line: 258, column: 15, scope: !913)
!1207 = !DILocation(line: 259, column: 17, scope: !913)
!1208 = !DILocation(line: 259, column: 15, scope: !913)
!1209 = !DILocation(line: 260, column: 34, scope: !913)
!1210 = !DILocation(line: 260, column: 37, scope: !913)
!1211 = !DILocation(line: 260, column: 40, scope: !913)
!1212 = !DILocation(line: 260, column: 23, scope: !913)
!1213 = !DILocation(line: 260, column: 13, scope: !913)
!1214 = !DILocation(line: 260, column: 18, scope: !913)
!1215 = !DILocation(line: 260, column: 21, scope: !913)
!1216 = !DILocation(line: 261, column: 11, scope: !914)
!1217 = !DILocation(line: 261, column: 11, scope: !913)
!1218 = !DILocation(line: 262, column: 23, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !914, file: !1, line: 261, column: 18)
!1220 = !DILocation(line: 262, column: 13, scope: !1219)
!1221 = !DILocation(line: 262, column: 18, scope: !1219)
!1222 = !DILocation(line: 262, column: 21, scope: !1219)
!1223 = !DILocation(line: 264, column: 9, scope: !915)
!1224 = !DILocation(line: 265, column: 7, scope: !907)
!1225 = !DILocation(line: 265, column: 7, scope: !906)
!1226 = !DILocation(line: 250, column: 39, scope: !907)
!1227 = !DILocation(line: 250, column: 7, scope: !907)
!1228 = distinct !{!1228, !1172, !1229, !200}
!1229 = !DILocation(line: 265, column: 7, scope: !908)
!1230 = !DILocation(line: 266, column: 15, scope: !909)
!1231 = !DILocation(line: 266, column: 24, scope: !909)
!1232 = !DILocation(line: 266, column: 12, scope: !909)
!1233 = !DILocation(line: 267, column: 5, scope: !909)
!1234 = !DILocation(line: 249, column: 38, scope: !910)
!1235 = !DILocation(line: 249, column: 5, scope: !910)
!1236 = distinct !{!1236, !1165, !1237, !200}
!1237 = !DILocation(line: 267, column: 5, scope: !911)
!1238 = !DILocation(line: 268, column: 3, scope: !875)
!1239 = !DILocation(line: 269, column: 1, scope: !862)
!1240 = distinct !DISubprogram(name: "VP8RGBToY", scope: !26, file: !26, line: 191, type: !1241, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!54, !54, !54, !54, !54}
!1243 = !{!1244, !1245, !1246, !1247, !1248}
!1244 = !DILocalVariable(name: "r", arg: 1, scope: !1240, file: !26, line: 191, type: !54)
!1245 = !DILocalVariable(name: "g", arg: 2, scope: !1240, file: !26, line: 191, type: !54)
!1246 = !DILocalVariable(name: "b", arg: 3, scope: !1240, file: !26, line: 191, type: !54)
!1247 = !DILocalVariable(name: "rounding", arg: 4, scope: !1240, file: !26, line: 191, type: !54)
!1248 = !DILocalVariable(name: "luma", scope: !1240, file: !26, line: 192, type: !228)
!1249 = !DILocation(line: 191, column: 38, scope: !1240)
!1250 = !DILocation(line: 191, column: 45, scope: !1240)
!1251 = !DILocation(line: 191, column: 52, scope: !1240)
!1252 = !DILocation(line: 191, column: 59, scope: !1240)
!1253 = !DILocation(line: 192, column: 3, scope: !1240)
!1254 = !DILocation(line: 192, column: 13, scope: !1240)
!1255 = !DILocation(line: 192, column: 28, scope: !1240)
!1256 = !DILocation(line: 192, column: 26, scope: !1240)
!1257 = !DILocation(line: 192, column: 40, scope: !1240)
!1258 = !DILocation(line: 192, column: 38, scope: !1240)
!1259 = !DILocation(line: 192, column: 30, scope: !1240)
!1260 = !DILocation(line: 192, column: 51, scope: !1240)
!1261 = !DILocation(line: 192, column: 49, scope: !1240)
!1262 = !DILocation(line: 192, column: 42, scope: !1240)
!1263 = !DILocation(line: 193, column: 11, scope: !1240)
!1264 = !DILocation(line: 193, column: 18, scope: !1240)
!1265 = !DILocation(line: 193, column: 16, scope: !1240)
!1266 = !DILocation(line: 193, column: 27, scope: !1240)
!1267 = !DILocation(line: 193, column: 46, scope: !1240)
!1268 = !DILocation(line: 194, column: 1, scope: !1240)
!1269 = !DILocation(line: 193, column: 3, scope: !1240)
!1270 = distinct !DISubprogram(name: "VP8RGBToU", scope: !26, file: !26, line: 196, type: !1241, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276}
!1272 = !DILocalVariable(name: "r", arg: 1, scope: !1270, file: !26, line: 196, type: !54)
!1273 = !DILocalVariable(name: "g", arg: 2, scope: !1270, file: !26, line: 196, type: !54)
!1274 = !DILocalVariable(name: "b", arg: 3, scope: !1270, file: !26, line: 196, type: !54)
!1275 = !DILocalVariable(name: "rounding", arg: 4, scope: !1270, file: !26, line: 196, type: !54)
!1276 = !DILocalVariable(name: "u", scope: !1270, file: !26, line: 197, type: !228)
!1277 = !DILocation(line: 196, column: 38, scope: !1270)
!1278 = !DILocation(line: 196, column: 45, scope: !1270)
!1279 = !DILocation(line: 196, column: 52, scope: !1270)
!1280 = !DILocation(line: 196, column: 59, scope: !1270)
!1281 = !DILocation(line: 197, column: 3, scope: !1270)
!1282 = !DILocation(line: 197, column: 13, scope: !1270)
!1283 = !DILocation(line: 197, column: 25, scope: !1270)
!1284 = !DILocation(line: 197, column: 23, scope: !1270)
!1285 = !DILocation(line: 197, column: 37, scope: !1270)
!1286 = !DILocation(line: 197, column: 35, scope: !1270)
!1287 = !DILocation(line: 197, column: 27, scope: !1270)
!1288 = !DILocation(line: 197, column: 49, scope: !1270)
!1289 = !DILocation(line: 197, column: 47, scope: !1270)
!1290 = !DILocation(line: 197, column: 39, scope: !1270)
!1291 = !DILocation(line: 198, column: 20, scope: !1270)
!1292 = !DILocation(line: 198, column: 23, scope: !1270)
!1293 = !DILocation(line: 198, column: 10, scope: !1270)
!1294 = !DILocation(line: 199, column: 1, scope: !1270)
!1295 = !DILocation(line: 198, column: 3, scope: !1270)
!1296 = distinct !DISubprogram(name: "VP8RGBToV", scope: !26, file: !26, line: 201, type: !1241, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DILocalVariable(name: "r", arg: 1, scope: !1296, file: !26, line: 201, type: !54)
!1299 = !DILocalVariable(name: "g", arg: 2, scope: !1296, file: !26, line: 201, type: !54)
!1300 = !DILocalVariable(name: "b", arg: 3, scope: !1296, file: !26, line: 201, type: !54)
!1301 = !DILocalVariable(name: "rounding", arg: 4, scope: !1296, file: !26, line: 201, type: !54)
!1302 = !DILocalVariable(name: "v", scope: !1296, file: !26, line: 202, type: !228)
!1303 = !DILocation(line: 201, column: 38, scope: !1296)
!1304 = !DILocation(line: 201, column: 45, scope: !1296)
!1305 = !DILocation(line: 201, column: 52, scope: !1296)
!1306 = !DILocation(line: 201, column: 59, scope: !1296)
!1307 = !DILocation(line: 202, column: 3, scope: !1296)
!1308 = !DILocation(line: 202, column: 13, scope: !1296)
!1309 = !DILocation(line: 202, column: 26, scope: !1296)
!1310 = !DILocation(line: 202, column: 24, scope: !1296)
!1311 = !DILocation(line: 202, column: 38, scope: !1296)
!1312 = !DILocation(line: 202, column: 36, scope: !1296)
!1313 = !DILocation(line: 202, column: 28, scope: !1296)
!1314 = !DILocation(line: 202, column: 49, scope: !1296)
!1315 = !DILocation(line: 202, column: 47, scope: !1296)
!1316 = !DILocation(line: 202, column: 40, scope: !1296)
!1317 = !DILocation(line: 203, column: 20, scope: !1296)
!1318 = !DILocation(line: 203, column: 23, scope: !1296)
!1319 = !DILocation(line: 203, column: 10, scope: !1296)
!1320 = !DILocation(line: 204, column: 1, scope: !1296)
!1321 = !DILocation(line: 203, column: 3, scope: !1296)
!1322 = distinct !DISubprogram(name: "MakeARGB32", scope: !1, file: !1, line: 189, type: !1323, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!69, !54, !54, !54}
!1325 = !{!1326, !1327, !1328}
!1326 = !DILocalVariable(name: "r", arg: 1, scope: !1322, file: !1, line: 189, type: !54)
!1327 = !DILocalVariable(name: "g", arg: 2, scope: !1322, file: !1, line: 189, type: !54)
!1328 = !DILocalVariable(name: "b", arg: 3, scope: !1322, file: !1, line: 189, type: !54)
!1329 = !DILocation(line: 189, column: 44, scope: !1322)
!1330 = !DILocation(line: 189, column: 51, scope: !1322)
!1331 = !DILocation(line: 189, column: 58, scope: !1322)
!1332 = !DILocation(line: 190, column: 26, scope: !1322)
!1333 = !DILocation(line: 190, column: 28, scope: !1322)
!1334 = !DILocation(line: 190, column: 23, scope: !1322)
!1335 = !DILocation(line: 190, column: 38, scope: !1322)
!1336 = !DILocation(line: 190, column: 40, scope: !1322)
!1337 = !DILocation(line: 190, column: 35, scope: !1322)
!1338 = !DILocation(line: 190, column: 48, scope: !1322)
!1339 = !DILocation(line: 190, column: 46, scope: !1322)
!1340 = !DILocation(line: 190, column: 3, scope: !1322)
!1341 = distinct !DISubprogram(name: "VP8ClipUV", scope: !26, file: !26, line: 186, type: !1342, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!54, !54, !54}
!1344 = !{!1345, !1346}
!1345 = !DILocalVariable(name: "uv", arg: 1, scope: !1341, file: !26, line: 186, type: !54)
!1346 = !DILocalVariable(name: "rounding", arg: 2, scope: !1341, file: !26, line: 186, type: !54)
!1347 = !DILocation(line: 186, column: 38, scope: !1341)
!1348 = !DILocation(line: 186, column: 46, scope: !1341)
!1349 = !DILocation(line: 187, column: 9, scope: !1341)
!1350 = !DILocation(line: 187, column: 14, scope: !1341)
!1351 = !DILocation(line: 187, column: 12, scope: !1341)
!1352 = !DILocation(line: 187, column: 23, scope: !1341)
!1353 = !DILocation(line: 187, column: 49, scope: !1341)
!1354 = !DILocation(line: 187, column: 6, scope: !1341)
!1355 = !DILocation(line: 188, column: 12, scope: !1341)
!1356 = !DILocation(line: 188, column: 15, scope: !1341)
!1357 = !DILocation(line: 188, column: 24, scope: !1341)
!1358 = !DILocation(line: 188, column: 10, scope: !1341)
!1359 = !DILocation(line: 188, column: 32, scope: !1341)
!1360 = !DILocation(line: 188, column: 38, scope: !1341)
!1361 = !DILocation(line: 188, column: 41, scope: !1341)
!1362 = !DILocation(line: 188, column: 37, scope: !1341)
!1363 = !DILocation(line: 188, column: 3, scope: !1341)

; ModuleID = 'samples/427.bc'
source_filename = "src/bitmap/pcfwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PCFTable = type { i32, i32, i32, i32 }
%struct._Font = type { i32, %struct._FontInfo, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct._FontInfo = type { i16, i16, i16, i16, i16, i16, i16, i16, %struct.xCharInfo, %struct.xCharInfo, %struct.xCharInfo, %struct.xCharInfo, i16, i16, i32, ptr, ptr }
%struct.xCharInfo = type { i16, i16, i16, i16, i16, i16 }
%struct._BitmapFont = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._BitmapExtra = type { ptr, ptr, [4 x i32], %struct._FontInfo }
%struct._FontProp = type { i64, i64 }
%struct._CharInfo = type { %struct.xCharInfo, ptr }
%struct._buffile = type { ptr, i32, i32, [8192 x i8], ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [54 x i8] c"pcfWriteFont(): Couldn't allocate offsetProps (%d*%d)\00", align 1, !dbg !0
@current_position = internal global i32 0, align 4, !dbg !7
@.str.1 = private unnamed_addr constant [31 x i8] c"can't go backwards... %d > %d\0A\00", align 1, !dbg !118

; Function Attrs: nounwind uwtable
define hidden i32 @pcfWriteFont(ptr noundef %pFont, ptr noundef %file) #0 !dbg !129 {
entry:
  %retval = alloca i32, align 4
  %pFont.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %tables = alloca [32 x %struct._PCFTable], align 16
  %table = alloca ptr, align 8
  %mask = alloca i32, align 4
  %bit = alloca i32, align 4
  %ntables = alloca i32, align 4
  %size = alloca i32, align 4
  %format = alloca i32, align 4
  %i = alloca i32, align 4
  %cur_table = alloca i32, align 4
  %prop_string_size = alloca i32, align 4
  %glyph_string_size = alloca i32, align 4
  %minbounds = alloca ptr, align 8
  %maxbounds = alloca ptr, align 8
  %ink_minbounds = alloca ptr, align 8
  %ink_maxbounds = alloca ptr, align 8
  %bitmapFont = alloca ptr, align 8
  %nencodings = alloca i32, align 4
  %header_size = alloca i32, align 4
  %offsetProps = alloca ptr, align 8
  %prop_pad = alloca i32, align 4
  %atom_name = alloca ptr, align 8
  %glyph = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pFont, ptr %pFont.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pFont.addr, metadata !208, metadata !DIExpression()), !dbg !247
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !209, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 512, ptr %tables) #6, !dbg !249
  tail call void @llvm.dbg.declare(metadata ptr %tables, metadata !210, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #6, !dbg !249
  tail call void @llvm.dbg.declare(metadata ptr %table, metadata !222, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #6, !dbg !252
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !224, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #6, !dbg !252
  tail call void @llvm.dbg.declare(metadata ptr %bit, metadata !225, metadata !DIExpression()), !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %ntables) #6, !dbg !255
  tail call void @llvm.dbg.declare(metadata ptr %ntables, metadata !226, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #6, !dbg !257
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !227, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 4, ptr %format) #6, !dbg !259
  tail call void @llvm.dbg.declare(metadata ptr %format, metadata !228, metadata !DIExpression()), !dbg !260
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !261
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !229, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_table) #6, !dbg !263
  tail call void @llvm.dbg.declare(metadata ptr %cur_table, metadata !230, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 4, ptr %prop_string_size) #6, !dbg !265
  tail call void @llvm.dbg.declare(metadata ptr %prop_string_size, metadata !231, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 4, ptr %glyph_string_size) #6, !dbg !267
  tail call void @llvm.dbg.declare(metadata ptr %glyph_string_size, metadata !232, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 8, ptr %minbounds) #6, !dbg !269
  tail call void @llvm.dbg.declare(metadata ptr %minbounds, metadata !233, metadata !DIExpression()), !dbg !270
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxbounds) #6, !dbg !269
  tail call void @llvm.dbg.declare(metadata ptr %maxbounds, metadata !234, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %ink_minbounds) #6, !dbg !272
  tail call void @llvm.dbg.declare(metadata ptr %ink_minbounds, metadata !235, metadata !DIExpression()), !dbg !273
  call void @llvm.lifetime.start.p0(i64 8, ptr %ink_maxbounds) #6, !dbg !272
  tail call void @llvm.dbg.declare(metadata ptr %ink_maxbounds, metadata !236, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitmapFont) #6, !dbg !275
  tail call void @llvm.dbg.declare(metadata ptr %bitmapFont, metadata !237, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 4, ptr %nencodings) #6, !dbg !277
  tail call void @llvm.dbg.declare(metadata ptr %nencodings, metadata !238, metadata !DIExpression()), !dbg !278
  store i32 0, ptr %nencodings, align 4, !dbg !278
  call void @llvm.lifetime.start.p0(i64 4, ptr %header_size) #6, !dbg !279
  tail call void @llvm.dbg.declare(metadata ptr %header_size, metadata !239, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 8, ptr %offsetProps) #6, !dbg !281
  tail call void @llvm.dbg.declare(metadata ptr %offsetProps, metadata !240, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 4, ptr %prop_pad) #6, !dbg !283
  tail call void @llvm.dbg.declare(metadata ptr %prop_pad, metadata !241, metadata !DIExpression()), !dbg !284
  store i32 0, ptr %prop_pad, align 4, !dbg !284
  call void @llvm.lifetime.start.p0(i64 8, ptr %atom_name) #6, !dbg !285
  tail call void @llvm.dbg.declare(metadata ptr %atom_name, metadata !242, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 4, ptr %glyph) #6, !dbg !287
  tail call void @llvm.dbg.declare(metadata ptr %glyph, metadata !245, metadata !DIExpression()), !dbg !288
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #6, !dbg !289
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !246, metadata !DIExpression()), !dbg !290
  %0 = load ptr, ptr %pFont.addr, align 8, !dbg !291
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %0, i32 0, i32 13, !dbg !292
  %1 = load ptr, ptr %fontPrivate, align 8, !dbg !292
  store ptr %1, ptr %bitmapFont, align 8, !dbg !293
  %2 = load ptr, ptr %bitmapFont, align 8, !dbg !294
  %bitmapExtra = getelementptr inbounds %struct._BitmapFont, ptr %2, i32 0, i32 8, !dbg !296
  %3 = load ptr, ptr %bitmapExtra, align 8, !dbg !296
  %tobool = icmp ne ptr %3, null, !dbg !294
  br i1 %tobool, label %if.then, label %if.else, !dbg !297

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bitmapFont, align 8, !dbg !298
  %bitmapExtra1 = getelementptr inbounds %struct._BitmapFont, ptr %4, i32 0, i32 8, !dbg !300
  %5 = load ptr, ptr %bitmapExtra1, align 8, !dbg !300
  %info = getelementptr inbounds %struct._BitmapExtra, ptr %5, i32 0, i32 3, !dbg !301
  %minbounds2 = getelementptr inbounds %struct._FontInfo, ptr %info, i32 0, i32 9, !dbg !302
  store ptr %minbounds2, ptr %minbounds, align 8, !dbg !303
  %6 = load ptr, ptr %bitmapFont, align 8, !dbg !304
  %bitmapExtra3 = getelementptr inbounds %struct._BitmapFont, ptr %6, i32 0, i32 8, !dbg !305
  %7 = load ptr, ptr %bitmapExtra3, align 8, !dbg !305
  %info4 = getelementptr inbounds %struct._BitmapExtra, ptr %7, i32 0, i32 3, !dbg !306
  %maxbounds5 = getelementptr inbounds %struct._FontInfo, ptr %info4, i32 0, i32 8, !dbg !307
  store ptr %maxbounds5, ptr %maxbounds, align 8, !dbg !308
  %8 = load ptr, ptr %bitmapFont, align 8, !dbg !309
  %bitmapExtra6 = getelementptr inbounds %struct._BitmapFont, ptr %8, i32 0, i32 8, !dbg !310
  %9 = load ptr, ptr %bitmapExtra6, align 8, !dbg !310
  %info7 = getelementptr inbounds %struct._BitmapExtra, ptr %9, i32 0, i32 3, !dbg !311
  %ink_minbounds8 = getelementptr inbounds %struct._FontInfo, ptr %info7, i32 0, i32 11, !dbg !312
  store ptr %ink_minbounds8, ptr %ink_minbounds, align 8, !dbg !313
  %10 = load ptr, ptr %bitmapFont, align 8, !dbg !314
  %bitmapExtra9 = getelementptr inbounds %struct._BitmapFont, ptr %10, i32 0, i32 8, !dbg !315
  %11 = load ptr, ptr %bitmapExtra9, align 8, !dbg !315
  %info10 = getelementptr inbounds %struct._BitmapExtra, ptr %11, i32 0, i32 3, !dbg !316
  %ink_maxbounds11 = getelementptr inbounds %struct._FontInfo, ptr %info10, i32 0, i32 10, !dbg !317
  store ptr %ink_maxbounds11, ptr %ink_maxbounds, align 8, !dbg !318
  br label %if.end, !dbg !319

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %pFont.addr, align 8, !dbg !320
  %info12 = getelementptr inbounds %struct._Font, ptr %12, i32 0, i32 1, !dbg !322
  %minbounds13 = getelementptr inbounds %struct._FontInfo, ptr %info12, i32 0, i32 9, !dbg !323
  store ptr %minbounds13, ptr %minbounds, align 8, !dbg !324
  %13 = load ptr, ptr %pFont.addr, align 8, !dbg !325
  %info14 = getelementptr inbounds %struct._Font, ptr %13, i32 0, i32 1, !dbg !326
  %maxbounds15 = getelementptr inbounds %struct._FontInfo, ptr %info14, i32 0, i32 8, !dbg !327
  store ptr %maxbounds15, ptr %maxbounds, align 8, !dbg !328
  %14 = load ptr, ptr %pFont.addr, align 8, !dbg !329
  %info16 = getelementptr inbounds %struct._Font, ptr %14, i32 0, i32 1, !dbg !330
  %ink_minbounds17 = getelementptr inbounds %struct._FontInfo, ptr %info16, i32 0, i32 11, !dbg !331
  store ptr %ink_minbounds17, ptr %ink_minbounds, align 8, !dbg !332
  %15 = load ptr, ptr %pFont.addr, align 8, !dbg !333
  %info18 = getelementptr inbounds %struct._Font, ptr %15, i32 0, i32 1, !dbg !334
  %ink_maxbounds19 = getelementptr inbounds %struct._FontInfo, ptr %info18, i32 0, i32 10, !dbg !335
  store ptr %ink_maxbounds19, ptr %ink_maxbounds, align 8, !dbg !336
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %pFont.addr, align 8, !dbg !337
  %info20 = getelementptr inbounds %struct._Font, ptr %16, i32 0, i32 1, !dbg !337
  %nprops = getelementptr inbounds %struct._FontInfo, ptr %info20, i32 0, i32 14, !dbg !337
  %17 = load i32, ptr %nprops, align 4, !dbg !337
  %conv = sext i32 %17 to i64, !dbg !337
  %call = call ptr @reallocarray(ptr noundef null, i64 noundef %conv, i64 noundef 16) #6, !dbg !337
  store ptr %call, ptr %offsetProps, align 8, !dbg !338
  %18 = load ptr, ptr %offsetProps, align 8, !dbg !339
  %tobool21 = icmp ne ptr %18, null, !dbg !339
  br i1 %tobool21, label %if.end25, label %if.then22, !dbg !341

if.then22:                                        ; preds = %if.end
  %19 = load ptr, ptr %pFont.addr, align 8, !dbg !342
  %info23 = getelementptr inbounds %struct._Font, ptr %19, i32 0, i32 1, !dbg !344
  %nprops24 = getelementptr inbounds %struct._FontInfo, ptr %info23, i32 0, i32 14, !dbg !345
  %20 = load i32, ptr %nprops24, align 4, !dbg !345
  call void (ptr, ...) @pcfError(ptr noundef @.str, i32 noundef %20, i32 noundef 16), !dbg !346
  store i32 80, ptr %retval, align 4, !dbg !347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !347

if.end25:                                         ; preds = %if.end
  store i32 0, ptr %prop_string_size, align 4, !dbg !348
  store i32 0, ptr %i, align 4, !dbg !349
  br label %for.cond, !dbg !351

for.cond:                                         ; preds = %for.inc, %if.end25
  %21 = load i32, ptr %i, align 4, !dbg !352
  %22 = load ptr, ptr %pFont.addr, align 8, !dbg !354
  %info26 = getelementptr inbounds %struct._Font, ptr %22, i32 0, i32 1, !dbg !355
  %nprops27 = getelementptr inbounds %struct._FontInfo, ptr %info26, i32 0, i32 14, !dbg !356
  %23 = load i32, ptr %nprops27, align 4, !dbg !356
  %cmp = icmp slt i32 %21, %23, !dbg !357
  br i1 %cmp, label %for.body, label %for.end, !dbg !358

for.body:                                         ; preds = %for.cond
  %24 = load i32, ptr %prop_string_size, align 4, !dbg !359
  %conv29 = sext i32 %24 to i64, !dbg !359
  %25 = load ptr, ptr %offsetProps, align 8, !dbg !361
  %26 = load i32, ptr %i, align 4, !dbg !362
  %idxprom = sext i32 %26 to i64, !dbg !361
  %arrayidx = getelementptr inbounds %struct._FontProp, ptr %25, i64 %idxprom, !dbg !361
  %name = getelementptr inbounds %struct._FontProp, ptr %arrayidx, i32 0, i32 0, !dbg !363
  store i64 %conv29, ptr %name, align 8, !dbg !364
  %27 = load ptr, ptr %pFont.addr, align 8, !dbg !365
  %info30 = getelementptr inbounds %struct._Font, ptr %27, i32 0, i32 1, !dbg !366
  %props = getelementptr inbounds %struct._FontInfo, ptr %info30, i32 0, i32 15, !dbg !367
  %28 = load ptr, ptr %props, align 8, !dbg !367
  %29 = load i32, ptr %i, align 4, !dbg !368
  %idxprom31 = sext i32 %29 to i64, !dbg !365
  %arrayidx32 = getelementptr inbounds %struct._FontProp, ptr %28, i64 %idxprom31, !dbg !365
  %name33 = getelementptr inbounds %struct._FontProp, ptr %arrayidx32, i32 0, i32 0, !dbg !369
  %30 = load i64, ptr %name33, align 8, !dbg !369
  %call34 = call ptr @pcfNameForAtom(i64 noundef %30), !dbg !370
  %call35 = call i64 @strlen(ptr noundef %call34) #7, !dbg !371
  %add = add i64 %call35, 1, !dbg !372
  %31 = load i32, ptr %prop_string_size, align 4, !dbg !373
  %conv36 = sext i32 %31 to i64, !dbg !373
  %add37 = add i64 %conv36, %add, !dbg !373
  %conv38 = trunc i64 %add37 to i32, !dbg !373
  store i32 %conv38, ptr %prop_string_size, align 4, !dbg !373
  %32 = load ptr, ptr %pFont.addr, align 8, !dbg !374
  %info39 = getelementptr inbounds %struct._Font, ptr %32, i32 0, i32 1, !dbg !376
  %isStringProp = getelementptr inbounds %struct._FontInfo, ptr %info39, i32 0, i32 16, !dbg !377
  %33 = load ptr, ptr %isStringProp, align 8, !dbg !377
  %34 = load i32, ptr %i, align 4, !dbg !378
  %idxprom40 = sext i32 %34 to i64, !dbg !374
  %arrayidx41 = getelementptr inbounds i8, ptr %33, i64 %idxprom40, !dbg !374
  %35 = load i8, ptr %arrayidx41, align 1, !dbg !374
  %tobool42 = icmp ne i8 %35, 0, !dbg !374
  br i1 %tobool42, label %if.then43, label %if.else58, !dbg !379

if.then43:                                        ; preds = %for.body
  %36 = load i32, ptr %prop_string_size, align 4, !dbg !380
  %conv44 = sext i32 %36 to i64, !dbg !380
  %37 = load ptr, ptr %offsetProps, align 8, !dbg !382
  %38 = load i32, ptr %i, align 4, !dbg !383
  %idxprom45 = sext i32 %38 to i64, !dbg !382
  %arrayidx46 = getelementptr inbounds %struct._FontProp, ptr %37, i64 %idxprom45, !dbg !382
  %value = getelementptr inbounds %struct._FontProp, ptr %arrayidx46, i32 0, i32 1, !dbg !384
  store i64 %conv44, ptr %value, align 8, !dbg !385
  %39 = load ptr, ptr %pFont.addr, align 8, !dbg !386
  %info47 = getelementptr inbounds %struct._Font, ptr %39, i32 0, i32 1, !dbg !387
  %props48 = getelementptr inbounds %struct._FontInfo, ptr %info47, i32 0, i32 15, !dbg !388
  %40 = load ptr, ptr %props48, align 8, !dbg !388
  %41 = load i32, ptr %i, align 4, !dbg !389
  %idxprom49 = sext i32 %41 to i64, !dbg !386
  %arrayidx50 = getelementptr inbounds %struct._FontProp, ptr %40, i64 %idxprom49, !dbg !386
  %value51 = getelementptr inbounds %struct._FontProp, ptr %arrayidx50, i32 0, i32 1, !dbg !390
  %42 = load i64, ptr %value51, align 8, !dbg !390
  %call52 = call ptr @pcfNameForAtom(i64 noundef %42), !dbg !391
  %call53 = call i64 @strlen(ptr noundef %call52) #7, !dbg !392
  %add54 = add i64 %call53, 1, !dbg !393
  %43 = load i32, ptr %prop_string_size, align 4, !dbg !394
  %conv55 = sext i32 %43 to i64, !dbg !394
  %add56 = add i64 %conv55, %add54, !dbg !394
  %conv57 = trunc i64 %add56 to i32, !dbg !394
  store i32 %conv57, ptr %prop_string_size, align 4, !dbg !394
  br label %if.end67, !dbg !395

if.else58:                                        ; preds = %for.body
  %44 = load ptr, ptr %pFont.addr, align 8, !dbg !396
  %info59 = getelementptr inbounds %struct._Font, ptr %44, i32 0, i32 1, !dbg !397
  %props60 = getelementptr inbounds %struct._FontInfo, ptr %info59, i32 0, i32 15, !dbg !398
  %45 = load ptr, ptr %props60, align 8, !dbg !398
  %46 = load i32, ptr %i, align 4, !dbg !399
  %idxprom61 = sext i32 %46 to i64, !dbg !396
  %arrayidx62 = getelementptr inbounds %struct._FontProp, ptr %45, i64 %idxprom61, !dbg !396
  %value63 = getelementptr inbounds %struct._FontProp, ptr %arrayidx62, i32 0, i32 1, !dbg !400
  %47 = load i64, ptr %value63, align 8, !dbg !400
  %48 = load ptr, ptr %offsetProps, align 8, !dbg !401
  %49 = load i32, ptr %i, align 4, !dbg !402
  %idxprom64 = sext i32 %49 to i64, !dbg !401
  %arrayidx65 = getelementptr inbounds %struct._FontProp, ptr %48, i64 %idxprom64, !dbg !401
  %value66 = getelementptr inbounds %struct._FontProp, ptr %arrayidx65, i32 0, i32 1, !dbg !403
  store i64 %47, ptr %value66, align 8, !dbg !404
  br label %if.end67

if.end67:                                         ; preds = %if.else58, %if.then43
  br label %for.inc, !dbg !405

for.inc:                                          ; preds = %if.end67
  %50 = load i32, ptr %i, align 4, !dbg !406
  %inc = add nsw i32 %50, 1, !dbg !406
  store i32 %inc, ptr %i, align 4, !dbg !406
  br label %for.cond, !dbg !407, !llvm.loop !408

for.end:                                          ; preds = %for.cond
  %51 = load ptr, ptr %pFont.addr, align 8, !dbg !411
  %scan = getelementptr inbounds %struct._Font, ptr %51, i32 0, i32 5, !dbg !411
  %52 = load i8, ptr %scan, align 1, !dbg !411
  %conv68 = sext i8 %52 to i32, !dbg !411
  %cmp69 = icmp eq i32 %conv68, 4, !dbg !411
  br i1 %cmp69, label %cond.true, label %cond.false, !dbg !411

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !411

cond.false:                                       ; preds = %for.end
  %53 = load ptr, ptr %pFont.addr, align 8, !dbg !411
  %scan71 = getelementptr inbounds %struct._Font, ptr %53, i32 0, i32 5, !dbg !411
  %54 = load i8, ptr %scan71, align 1, !dbg !411
  %conv72 = sext i8 %54 to i32, !dbg !411
  %cmp73 = icmp eq i32 %conv72, 2, !dbg !411
  %55 = zext i1 %cmp73 to i64, !dbg !411
  %cond = select i1 %cmp73, i32 1, i32 0, !dbg !411
  br label %cond.end, !dbg !411

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond75 = phi i32 [ 2, %cond.true ], [ %cond, %cond.false ], !dbg !411
  %shl = shl i32 %cond75, 4, !dbg !411
  %56 = load ptr, ptr %pFont.addr, align 8, !dbg !411
  %bit76 = getelementptr inbounds %struct._Font, ptr %56, i32 0, i32 2, !dbg !411
  %57 = load i8, ptr %bit76, align 8, !dbg !411
  %conv77 = sext i8 %57 to i32, !dbg !411
  %cmp78 = icmp eq i32 %conv77, 1, !dbg !411
  %58 = zext i1 %cmp78 to i64, !dbg !411
  %cond80 = select i1 %cmp78, i32 1, i32 0, !dbg !411
  %shl81 = shl i32 %cond80, 3, !dbg !411
  %or = or i32 %shl, %shl81, !dbg !411
  %59 = load ptr, ptr %pFont.addr, align 8, !dbg !411
  %byte = getelementptr inbounds %struct._Font, ptr %59, i32 0, i32 3, !dbg !411
  %60 = load i8, ptr %byte, align 1, !dbg !411
  %conv82 = sext i8 %60 to i32, !dbg !411
  %cmp83 = icmp eq i32 %conv82, 1, !dbg !411
  %61 = zext i1 %cmp83 to i64, !dbg !411
  %cond85 = select i1 %cmp83, i32 1, i32 0, !dbg !411
  %shl86 = shl i32 %cond85, 2, !dbg !411
  %or87 = or i32 %or, %shl86, !dbg !411
  %62 = load ptr, ptr %pFont.addr, align 8, !dbg !411
  %glyph88 = getelementptr inbounds %struct._Font, ptr %62, i32 0, i32 4, !dbg !411
  %63 = load i8, ptr %glyph88, align 2, !dbg !411
  %conv89 = sext i8 %63 to i32, !dbg !411
  %cmp90 = icmp eq i32 %conv89, 4, !dbg !411
  br i1 %cmp90, label %cond.true92, label %cond.false93, !dbg !411

cond.true92:                                      ; preds = %cond.end
  br label %cond.end99, !dbg !411

cond.false93:                                     ; preds = %cond.end
  %64 = load ptr, ptr %pFont.addr, align 8, !dbg !411
  %glyph94 = getelementptr inbounds %struct._Font, ptr %64, i32 0, i32 4, !dbg !411
  %65 = load i8, ptr %glyph94, align 2, !dbg !411
  %conv95 = sext i8 %65 to i32, !dbg !411
  %cmp96 = icmp eq i32 %conv95, 2, !dbg !411
  %66 = zext i1 %cmp96 to i64, !dbg !411
  %cond98 = select i1 %cmp96, i32 1, i32 0, !dbg !411
  br label %cond.end99, !dbg !411

cond.end99:                                       ; preds = %cond.false93, %cond.true92
  %cond100 = phi i32 [ 2, %cond.true92 ], [ %cond98, %cond.false93 ], !dbg !411
  %shl101 = shl i32 %cond100, 0, !dbg !411
  %or102 = or i32 %or87, %shl101, !dbg !411
  store i32 %or102, ptr %format, align 4, !dbg !412
  store i32 268435455, ptr %mask, align 4, !dbg !413
  store i32 0, ptr %ntables, align 4, !dbg !414
  %arraydecay = getelementptr inbounds [32 x %struct._PCFTable], ptr %tables, i64 0, i64 0, !dbg !415
  store ptr %arraydecay, ptr %table, align 8, !dbg !416
  br label %while.cond, !dbg !417

while.cond:                                       ; preds = %sw.epilog, %cond.end99
  %67 = load i32, ptr %mask, align 4, !dbg !418
  %tobool103 = icmp ne i32 %67, 0, !dbg !417
  br i1 %tobool103, label %while.body, label %while.end, !dbg !417

while.body:                                       ; preds = %while.cond
  %68 = load i32, ptr %mask, align 4, !dbg !419
  %69 = load i32, ptr %mask, align 4, !dbg !419
  %not = xor i32 %69, -1, !dbg !419
  %add104 = add i32 %not, 1, !dbg !419
  %and = and i32 %68, %add104, !dbg !419
  store i32 %and, ptr %bit, align 4, !dbg !421
  %70 = load i32, ptr %bit, align 4, !dbg !422
  %not105 = xor i32 %70, -1, !dbg !423
  %71 = load i32, ptr %mask, align 4, !dbg !424
  %and106 = and i32 %71, %not105, !dbg !424
  store i32 %and106, ptr %mask, align 4, !dbg !424
  %72 = load i32, ptr %bit, align 4, !dbg !425
  %73 = load ptr, ptr %table, align 8, !dbg !426
  %type = getelementptr inbounds %struct._PCFTable, ptr %73, i32 0, i32 0, !dbg !427
  store i32 %72, ptr %type, align 4, !dbg !428
  %74 = load i32, ptr %bit, align 4, !dbg !429
  switch i32 %74, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb121
    i32 4, label %sw.bb134
    i32 8, label %sw.bb254
    i32 16, label %sw.bb270
    i32 32, label %sw.bb401
    i32 64, label %sw.bb423
    i32 128, label %sw.bb431
    i32 256, label %sw.bb460
  ], !dbg !430

sw.bb:                                            ; preds = %while.body
  %75 = load i32, ptr %format, align 4, !dbg !431
  %or107 = or i32 0, %75, !dbg !433
  %76 = load ptr, ptr %table, align 8, !dbg !434
  %format108 = getelementptr inbounds %struct._PCFTable, ptr %76, i32 0, i32 1, !dbg !435
  store i32 %or107, ptr %format108, align 4, !dbg !436
  %77 = load ptr, ptr %pFont.addr, align 8, !dbg !437
  %info109 = getelementptr inbounds %struct._Font, ptr %77, i32 0, i32 1, !dbg !438
  %nprops110 = getelementptr inbounds %struct._FontInfo, ptr %info109, i32 0, i32 14, !dbg !439
  %78 = load i32, ptr %nprops110, align 4, !dbg !439
  %mul = mul nsw i32 9, %78, !dbg !440
  %add111 = add nsw i32 8, %mul, !dbg !441
  store i32 %add111, ptr %size, align 4, !dbg !442
  %79 = load i32, ptr %size, align 4, !dbg !443
  %add112 = add nsw i32 %79, 3, !dbg !443
  %and113 = and i32 %add112, -4, !dbg !443
  %80 = load i32, ptr %size, align 4, !dbg !443
  %sub = sub nsw i32 %and113, %80, !dbg !443
  store i32 %sub, ptr %prop_pad, align 4, !dbg !444
  %81 = load i32, ptr %size, align 4, !dbg !445
  %add114 = add nsw i32 %81, 3, !dbg !445
  %and115 = and i32 %add114, -4, !dbg !445
  %add116 = add nsw i32 %and115, 4, !dbg !446
  %82 = load i32, ptr %prop_string_size, align 4, !dbg !447
  %add117 = add nsw i32 %82, 3, !dbg !447
  %and118 = and i32 %add117, -4, !dbg !447
  %add119 = add nsw i32 %add116, %and118, !dbg !448
  %83 = load ptr, ptr %table, align 8, !dbg !449
  %size120 = getelementptr inbounds %struct._PCFTable, ptr %83, i32 0, i32 2, !dbg !450
  store i32 %add119, ptr %size120, align 4, !dbg !451
  %84 = load ptr, ptr %table, align 8, !dbg !452
  %incdec.ptr = getelementptr inbounds %struct._PCFTable, ptr %84, i32 1, !dbg !452
  store ptr %incdec.ptr, ptr %table, align 8, !dbg !452
  br label %sw.epilog, !dbg !453

sw.bb121:                                         ; preds = %while.body
  %85 = load ptr, ptr %bitmapFont, align 8, !dbg !454
  %bitmapExtra122 = getelementptr inbounds %struct._BitmapFont, ptr %85, i32 0, i32 8, !dbg !456
  %86 = load ptr, ptr %bitmapExtra122, align 8, !dbg !456
  %info123 = getelementptr inbounds %struct._BitmapExtra, ptr %86, i32 0, i32 3, !dbg !457
  %inkMetrics = getelementptr inbounds %struct._FontInfo, ptr %info123, i32 0, i32 5, !dbg !458
  %bf.load = load i16, ptr %inkMetrics, align 2, !dbg !458
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !458
  %bf.clear = and i16 %bf.lshr, 1, !dbg !458
  %bf.cast = zext i16 %bf.clear to i32, !dbg !458
  %tobool124 = icmp ne i32 %bf.cast, 0, !dbg !454
  br i1 %tobool124, label %if.then125, label %if.else128, !dbg !459

if.then125:                                       ; preds = %sw.bb121
  %87 = load i32, ptr %format, align 4, !dbg !460
  %or126 = or i32 256, %87, !dbg !461
  %88 = load ptr, ptr %table, align 8, !dbg !462
  %format127 = getelementptr inbounds %struct._PCFTable, ptr %88, i32 0, i32 1, !dbg !463
  store i32 %or126, ptr %format127, align 4, !dbg !464
  br label %if.end131, !dbg !462

if.else128:                                       ; preds = %sw.bb121
  %89 = load i32, ptr %format, align 4, !dbg !465
  %or129 = or i32 0, %89, !dbg !466
  %90 = load ptr, ptr %table, align 8, !dbg !467
  %format130 = getelementptr inbounds %struct._PCFTable, ptr %90, i32 0, i32 1, !dbg !468
  store i32 %or129, ptr %format130, align 4, !dbg !469
  br label %if.end131

if.end131:                                        ; preds = %if.else128, %if.then125
  %91 = load ptr, ptr %table, align 8, !dbg !470
  %size132 = getelementptr inbounds %struct._PCFTable, ptr %91, i32 0, i32 2, !dbg !471
  store i32 100, ptr %size132, align 4, !dbg !472
  %92 = load ptr, ptr %table, align 8, !dbg !473
  %incdec.ptr133 = getelementptr inbounds %struct._PCFTable, ptr %92, i32 1, !dbg !473
  store ptr %incdec.ptr133, ptr %table, align 8, !dbg !473
  br label %sw.epilog, !dbg !474

sw.bb134:                                         ; preds = %while.body
  %93 = load ptr, ptr %minbounds, align 8, !dbg !475
  %leftSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %93, i32 0, i32 0, !dbg !475
  %94 = load i16, ptr %leftSideBearing, align 2, !dbg !475
  %conv135 = sext i16 %94 to i32, !dbg !475
  %cmp136 = icmp sle i32 -128, %conv135, !dbg !475
  br i1 %cmp136, label %land.lhs.true, label %if.else245, !dbg !475

land.lhs.true:                                    ; preds = %sw.bb134
  %95 = load ptr, ptr %minbounds, align 8, !dbg !475
  %leftSideBearing138 = getelementptr inbounds %struct.xCharInfo, ptr %95, i32 0, i32 0, !dbg !475
  %96 = load i16, ptr %leftSideBearing138, align 2, !dbg !475
  %conv139 = sext i16 %96 to i32, !dbg !475
  %cmp140 = icmp sle i32 %conv139, 127, !dbg !475
  br i1 %cmp140, label %land.lhs.true142, label %if.else245, !dbg !475

land.lhs.true142:                                 ; preds = %land.lhs.true
  %97 = load ptr, ptr %minbounds, align 8, !dbg !475
  %rightSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %97, i32 0, i32 1, !dbg !475
  %98 = load i16, ptr %rightSideBearing, align 2, !dbg !475
  %conv143 = sext i16 %98 to i32, !dbg !475
  %cmp144 = icmp sle i32 -128, %conv143, !dbg !475
  br i1 %cmp144, label %land.lhs.true146, label %if.else245, !dbg !475

land.lhs.true146:                                 ; preds = %land.lhs.true142
  %99 = load ptr, ptr %minbounds, align 8, !dbg !475
  %rightSideBearing147 = getelementptr inbounds %struct.xCharInfo, ptr %99, i32 0, i32 1, !dbg !475
  %100 = load i16, ptr %rightSideBearing147, align 2, !dbg !475
  %conv148 = sext i16 %100 to i32, !dbg !475
  %cmp149 = icmp sle i32 %conv148, 127, !dbg !475
  br i1 %cmp149, label %land.lhs.true151, label %if.else245, !dbg !475

land.lhs.true151:                                 ; preds = %land.lhs.true146
  %101 = load ptr, ptr %minbounds, align 8, !dbg !475
  %characterWidth = getelementptr inbounds %struct.xCharInfo, ptr %101, i32 0, i32 2, !dbg !475
  %102 = load i16, ptr %characterWidth, align 2, !dbg !475
  %conv152 = sext i16 %102 to i32, !dbg !475
  %cmp153 = icmp sle i32 -128, %conv152, !dbg !475
  br i1 %cmp153, label %land.lhs.true155, label %if.else245, !dbg !475

land.lhs.true155:                                 ; preds = %land.lhs.true151
  %103 = load ptr, ptr %minbounds, align 8, !dbg !475
  %characterWidth156 = getelementptr inbounds %struct.xCharInfo, ptr %103, i32 0, i32 2, !dbg !475
  %104 = load i16, ptr %characterWidth156, align 2, !dbg !475
  %conv157 = sext i16 %104 to i32, !dbg !475
  %cmp158 = icmp sle i32 %conv157, 127, !dbg !475
  br i1 %cmp158, label %land.lhs.true160, label %if.else245, !dbg !475

land.lhs.true160:                                 ; preds = %land.lhs.true155
  %105 = load ptr, ptr %minbounds, align 8, !dbg !475
  %ascent = getelementptr inbounds %struct.xCharInfo, ptr %105, i32 0, i32 3, !dbg !475
  %106 = load i16, ptr %ascent, align 2, !dbg !475
  %conv161 = sext i16 %106 to i32, !dbg !475
  %cmp162 = icmp sle i32 -128, %conv161, !dbg !475
  br i1 %cmp162, label %land.lhs.true164, label %if.else245, !dbg !475

land.lhs.true164:                                 ; preds = %land.lhs.true160
  %107 = load ptr, ptr %minbounds, align 8, !dbg !475
  %ascent165 = getelementptr inbounds %struct.xCharInfo, ptr %107, i32 0, i32 3, !dbg !475
  %108 = load i16, ptr %ascent165, align 2, !dbg !475
  %conv166 = sext i16 %108 to i32, !dbg !475
  %cmp167 = icmp sle i32 %conv166, 127, !dbg !475
  br i1 %cmp167, label %land.lhs.true169, label %if.else245, !dbg !475

land.lhs.true169:                                 ; preds = %land.lhs.true164
  %109 = load ptr, ptr %minbounds, align 8, !dbg !475
  %descent = getelementptr inbounds %struct.xCharInfo, ptr %109, i32 0, i32 4, !dbg !475
  %110 = load i16, ptr %descent, align 2, !dbg !475
  %conv170 = sext i16 %110 to i32, !dbg !475
  %cmp171 = icmp sle i32 -128, %conv170, !dbg !475
  br i1 %cmp171, label %land.lhs.true173, label %if.else245, !dbg !475

land.lhs.true173:                                 ; preds = %land.lhs.true169
  %111 = load ptr, ptr %minbounds, align 8, !dbg !475
  %descent174 = getelementptr inbounds %struct.xCharInfo, ptr %111, i32 0, i32 4, !dbg !475
  %112 = load i16, ptr %descent174, align 2, !dbg !475
  %conv175 = sext i16 %112 to i32, !dbg !475
  %cmp176 = icmp sle i32 %conv175, 127, !dbg !475
  br i1 %cmp176, label %land.lhs.true178, label %if.else245, !dbg !475

land.lhs.true178:                                 ; preds = %land.lhs.true173
  %113 = load ptr, ptr %minbounds, align 8, !dbg !475
  %attributes = getelementptr inbounds %struct.xCharInfo, ptr %113, i32 0, i32 5, !dbg !475
  %114 = load i16, ptr %attributes, align 2, !dbg !475
  %conv179 = zext i16 %114 to i32, !dbg !475
  %cmp180 = icmp eq i32 %conv179, 0, !dbg !475
  br i1 %cmp180, label %land.lhs.true182, label %if.else245, !dbg !475

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %115 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %leftSideBearing183 = getelementptr inbounds %struct.xCharInfo, ptr %115, i32 0, i32 0, !dbg !475
  %116 = load i16, ptr %leftSideBearing183, align 2, !dbg !475
  %conv184 = sext i16 %116 to i32, !dbg !475
  %cmp185 = icmp sle i32 -128, %conv184, !dbg !475
  br i1 %cmp185, label %land.lhs.true187, label %if.else245, !dbg !475

land.lhs.true187:                                 ; preds = %land.lhs.true182
  %117 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %leftSideBearing188 = getelementptr inbounds %struct.xCharInfo, ptr %117, i32 0, i32 0, !dbg !475
  %118 = load i16, ptr %leftSideBearing188, align 2, !dbg !475
  %conv189 = sext i16 %118 to i32, !dbg !475
  %cmp190 = icmp sle i32 %conv189, 127, !dbg !475
  br i1 %cmp190, label %land.lhs.true192, label %if.else245, !dbg !475

land.lhs.true192:                                 ; preds = %land.lhs.true187
  %119 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %rightSideBearing193 = getelementptr inbounds %struct.xCharInfo, ptr %119, i32 0, i32 1, !dbg !475
  %120 = load i16, ptr %rightSideBearing193, align 2, !dbg !475
  %conv194 = sext i16 %120 to i32, !dbg !475
  %cmp195 = icmp sle i32 -128, %conv194, !dbg !475
  br i1 %cmp195, label %land.lhs.true197, label %if.else245, !dbg !475

land.lhs.true197:                                 ; preds = %land.lhs.true192
  %121 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %rightSideBearing198 = getelementptr inbounds %struct.xCharInfo, ptr %121, i32 0, i32 1, !dbg !475
  %122 = load i16, ptr %rightSideBearing198, align 2, !dbg !475
  %conv199 = sext i16 %122 to i32, !dbg !475
  %cmp200 = icmp sle i32 %conv199, 127, !dbg !475
  br i1 %cmp200, label %land.lhs.true202, label %if.else245, !dbg !475

land.lhs.true202:                                 ; preds = %land.lhs.true197
  %123 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %characterWidth203 = getelementptr inbounds %struct.xCharInfo, ptr %123, i32 0, i32 2, !dbg !475
  %124 = load i16, ptr %characterWidth203, align 2, !dbg !475
  %conv204 = sext i16 %124 to i32, !dbg !475
  %cmp205 = icmp sle i32 -128, %conv204, !dbg !475
  br i1 %cmp205, label %land.lhs.true207, label %if.else245, !dbg !475

land.lhs.true207:                                 ; preds = %land.lhs.true202
  %125 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %characterWidth208 = getelementptr inbounds %struct.xCharInfo, ptr %125, i32 0, i32 2, !dbg !475
  %126 = load i16, ptr %characterWidth208, align 2, !dbg !475
  %conv209 = sext i16 %126 to i32, !dbg !475
  %cmp210 = icmp sle i32 %conv209, 127, !dbg !475
  br i1 %cmp210, label %land.lhs.true212, label %if.else245, !dbg !475

land.lhs.true212:                                 ; preds = %land.lhs.true207
  %127 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %ascent213 = getelementptr inbounds %struct.xCharInfo, ptr %127, i32 0, i32 3, !dbg !475
  %128 = load i16, ptr %ascent213, align 2, !dbg !475
  %conv214 = sext i16 %128 to i32, !dbg !475
  %cmp215 = icmp sle i32 -128, %conv214, !dbg !475
  br i1 %cmp215, label %land.lhs.true217, label %if.else245, !dbg !475

land.lhs.true217:                                 ; preds = %land.lhs.true212
  %129 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %ascent218 = getelementptr inbounds %struct.xCharInfo, ptr %129, i32 0, i32 3, !dbg !475
  %130 = load i16, ptr %ascent218, align 2, !dbg !475
  %conv219 = sext i16 %130 to i32, !dbg !475
  %cmp220 = icmp sle i32 %conv219, 127, !dbg !475
  br i1 %cmp220, label %land.lhs.true222, label %if.else245, !dbg !475

land.lhs.true222:                                 ; preds = %land.lhs.true217
  %131 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %descent223 = getelementptr inbounds %struct.xCharInfo, ptr %131, i32 0, i32 4, !dbg !475
  %132 = load i16, ptr %descent223, align 2, !dbg !475
  %conv224 = sext i16 %132 to i32, !dbg !475
  %cmp225 = icmp sle i32 -128, %conv224, !dbg !475
  br i1 %cmp225, label %land.lhs.true227, label %if.else245, !dbg !475

land.lhs.true227:                                 ; preds = %land.lhs.true222
  %133 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %descent228 = getelementptr inbounds %struct.xCharInfo, ptr %133, i32 0, i32 4, !dbg !475
  %134 = load i16, ptr %descent228, align 2, !dbg !475
  %conv229 = sext i16 %134 to i32, !dbg !475
  %cmp230 = icmp sle i32 %conv229, 127, !dbg !475
  br i1 %cmp230, label %land.lhs.true232, label %if.else245, !dbg !475

land.lhs.true232:                                 ; preds = %land.lhs.true227
  %135 = load ptr, ptr %maxbounds, align 8, !dbg !475
  %attributes233 = getelementptr inbounds %struct.xCharInfo, ptr %135, i32 0, i32 5, !dbg !475
  %136 = load i16, ptr %attributes233, align 2, !dbg !475
  %conv234 = zext i16 %136 to i32, !dbg !475
  %cmp235 = icmp eq i32 %conv234, 0, !dbg !475
  br i1 %cmp235, label %if.then237, label %if.else245, !dbg !477

if.then237:                                       ; preds = %land.lhs.true232
  %137 = load i32, ptr %format, align 4, !dbg !478
  %or238 = or i32 256, %137, !dbg !480
  %138 = load ptr, ptr %table, align 8, !dbg !481
  %format239 = getelementptr inbounds %struct._PCFTable, ptr %138, i32 0, i32 1, !dbg !482
  store i32 %or238, ptr %format239, align 4, !dbg !483
  %139 = load ptr, ptr %bitmapFont, align 8, !dbg !484
  %num_chars = getelementptr inbounds %struct._BitmapFont, ptr %139, i32 0, i32 1, !dbg !485
  %140 = load i32, ptr %num_chars, align 4, !dbg !485
  %mul240 = mul nsw i32 %140, 5, !dbg !486
  %add241 = add nsw i32 6, %mul240, !dbg !487
  store i32 %add241, ptr %size, align 4, !dbg !488
  %141 = load i32, ptr %size, align 4, !dbg !489
  %add242 = add nsw i32 %141, 3, !dbg !489
  %and243 = and i32 %add242, -4, !dbg !489
  %142 = load ptr, ptr %table, align 8, !dbg !490
  %size244 = getelementptr inbounds %struct._PCFTable, ptr %142, i32 0, i32 2, !dbg !491
  store i32 %and243, ptr %size244, align 4, !dbg !492
  br label %if.end252, !dbg !493

if.else245:                                       ; preds = %land.lhs.true232, %land.lhs.true227, %land.lhs.true222, %land.lhs.true217, %land.lhs.true212, %land.lhs.true207, %land.lhs.true202, %land.lhs.true197, %land.lhs.true192, %land.lhs.true187, %land.lhs.true182, %land.lhs.true178, %land.lhs.true173, %land.lhs.true169, %land.lhs.true164, %land.lhs.true160, %land.lhs.true155, %land.lhs.true151, %land.lhs.true146, %land.lhs.true142, %land.lhs.true, %sw.bb134
  %143 = load i32, ptr %format, align 4, !dbg !494
  %or246 = or i32 0, %143, !dbg !496
  %144 = load ptr, ptr %table, align 8, !dbg !497
  %format247 = getelementptr inbounds %struct._PCFTable, ptr %144, i32 0, i32 1, !dbg !498
  store i32 %or246, ptr %format247, align 4, !dbg !499
  %145 = load ptr, ptr %bitmapFont, align 8, !dbg !500
  %num_chars248 = getelementptr inbounds %struct._BitmapFont, ptr %145, i32 0, i32 1, !dbg !501
  %146 = load i32, ptr %num_chars248, align 4, !dbg !501
  %mul249 = mul nsw i32 %146, 12, !dbg !502
  %add250 = add nsw i32 8, %mul249, !dbg !503
  %147 = load ptr, ptr %table, align 8, !dbg !504
  %size251 = getelementptr inbounds %struct._PCFTable, ptr %147, i32 0, i32 2, !dbg !505
  store i32 %add250, ptr %size251, align 4, !dbg !506
  br label %if.end252

if.end252:                                        ; preds = %if.else245, %if.then237
  %148 = load ptr, ptr %table, align 8, !dbg !507
  %incdec.ptr253 = getelementptr inbounds %struct._PCFTable, ptr %148, i32 1, !dbg !507
  store ptr %incdec.ptr253, ptr %table, align 8, !dbg !507
  br label %sw.epilog, !dbg !508

sw.bb254:                                         ; preds = %while.body
  %149 = load i32, ptr %format, align 4, !dbg !509
  %or255 = or i32 0, %149, !dbg !510
  %150 = load ptr, ptr %table, align 8, !dbg !511
  %format256 = getelementptr inbounds %struct._PCFTable, ptr %150, i32 0, i32 1, !dbg !512
  store i32 %or255, ptr %format256, align 4, !dbg !513
  %151 = load ptr, ptr %bitmapFont, align 8, !dbg !514
  %num_chars257 = getelementptr inbounds %struct._BitmapFont, ptr %151, i32 0, i32 1, !dbg !515
  %152 = load i32, ptr %num_chars257, align 4, !dbg !515
  %mul258 = mul nsw i32 %152, 4, !dbg !516
  %add259 = add nsw i32 8, %mul258, !dbg !517
  %add260 = add nsw i32 %add259, 16, !dbg !518
  %153 = load ptr, ptr %bitmapFont, align 8, !dbg !519
  %bitmapExtra261 = getelementptr inbounds %struct._BitmapFont, ptr %153, i32 0, i32 8, !dbg !520
  %154 = load ptr, ptr %bitmapExtra261, align 8, !dbg !520
  %bitmapsSizes = getelementptr inbounds %struct._BitmapExtra, ptr %154, i32 0, i32 2, !dbg !521
  %155 = load i32, ptr %format, align 4, !dbg !522
  %and262 = and i32 %155, 3, !dbg !522
  %idxprom263 = zext i32 %and262 to i64, !dbg !519
  %arrayidx264 = getelementptr inbounds [4 x i32], ptr %bitmapsSizes, i64 0, i64 %idxprom263, !dbg !519
  %156 = load i32, ptr %arrayidx264, align 4, !dbg !519
  %add265 = add i32 %add260, %156, !dbg !523
  store i32 %add265, ptr %size, align 4, !dbg !524
  %157 = load i32, ptr %size, align 4, !dbg !525
  %add266 = add nsw i32 %157, 3, !dbg !525
  %and267 = and i32 %add266, -4, !dbg !525
  %158 = load ptr, ptr %table, align 8, !dbg !526
  %size268 = getelementptr inbounds %struct._PCFTable, ptr %158, i32 0, i32 2, !dbg !527
  store i32 %and267, ptr %size268, align 4, !dbg !528
  %159 = load ptr, ptr %table, align 8, !dbg !529
  %incdec.ptr269 = getelementptr inbounds %struct._PCFTable, ptr %159, i32 1, !dbg !529
  store ptr %incdec.ptr269, ptr %table, align 8, !dbg !529
  br label %sw.epilog, !dbg !530

sw.bb270:                                         ; preds = %while.body
  %160 = load ptr, ptr %bitmapFont, align 8, !dbg !531
  %ink_metrics = getelementptr inbounds %struct._BitmapFont, ptr %160, i32 0, i32 4, !dbg !533
  %161 = load ptr, ptr %ink_metrics, align 8, !dbg !533
  %tobool271 = icmp ne ptr %161, null, !dbg !531
  br i1 %tobool271, label %if.then272, label %if.end400, !dbg !534

if.then272:                                       ; preds = %sw.bb270
  %162 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %leftSideBearing273 = getelementptr inbounds %struct.xCharInfo, ptr %162, i32 0, i32 0, !dbg !535
  %163 = load i16, ptr %leftSideBearing273, align 2, !dbg !535
  %conv274 = sext i16 %163 to i32, !dbg !535
  %cmp275 = icmp sle i32 -128, %conv274, !dbg !535
  br i1 %cmp275, label %land.lhs.true277, label %if.else391, !dbg !535

land.lhs.true277:                                 ; preds = %if.then272
  %164 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %leftSideBearing278 = getelementptr inbounds %struct.xCharInfo, ptr %164, i32 0, i32 0, !dbg !535
  %165 = load i16, ptr %leftSideBearing278, align 2, !dbg !535
  %conv279 = sext i16 %165 to i32, !dbg !535
  %cmp280 = icmp sle i32 %conv279, 127, !dbg !535
  br i1 %cmp280, label %land.lhs.true282, label %if.else391, !dbg !535

land.lhs.true282:                                 ; preds = %land.lhs.true277
  %166 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %rightSideBearing283 = getelementptr inbounds %struct.xCharInfo, ptr %166, i32 0, i32 1, !dbg !535
  %167 = load i16, ptr %rightSideBearing283, align 2, !dbg !535
  %conv284 = sext i16 %167 to i32, !dbg !535
  %cmp285 = icmp sle i32 -128, %conv284, !dbg !535
  br i1 %cmp285, label %land.lhs.true287, label %if.else391, !dbg !535

land.lhs.true287:                                 ; preds = %land.lhs.true282
  %168 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %rightSideBearing288 = getelementptr inbounds %struct.xCharInfo, ptr %168, i32 0, i32 1, !dbg !535
  %169 = load i16, ptr %rightSideBearing288, align 2, !dbg !535
  %conv289 = sext i16 %169 to i32, !dbg !535
  %cmp290 = icmp sle i32 %conv289, 127, !dbg !535
  br i1 %cmp290, label %land.lhs.true292, label %if.else391, !dbg !535

land.lhs.true292:                                 ; preds = %land.lhs.true287
  %170 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %characterWidth293 = getelementptr inbounds %struct.xCharInfo, ptr %170, i32 0, i32 2, !dbg !535
  %171 = load i16, ptr %characterWidth293, align 2, !dbg !535
  %conv294 = sext i16 %171 to i32, !dbg !535
  %cmp295 = icmp sle i32 -128, %conv294, !dbg !535
  br i1 %cmp295, label %land.lhs.true297, label %if.else391, !dbg !535

land.lhs.true297:                                 ; preds = %land.lhs.true292
  %172 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %characterWidth298 = getelementptr inbounds %struct.xCharInfo, ptr %172, i32 0, i32 2, !dbg !535
  %173 = load i16, ptr %characterWidth298, align 2, !dbg !535
  %conv299 = sext i16 %173 to i32, !dbg !535
  %cmp300 = icmp sle i32 %conv299, 127, !dbg !535
  br i1 %cmp300, label %land.lhs.true302, label %if.else391, !dbg !535

land.lhs.true302:                                 ; preds = %land.lhs.true297
  %174 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %ascent303 = getelementptr inbounds %struct.xCharInfo, ptr %174, i32 0, i32 3, !dbg !535
  %175 = load i16, ptr %ascent303, align 2, !dbg !535
  %conv304 = sext i16 %175 to i32, !dbg !535
  %cmp305 = icmp sle i32 -128, %conv304, !dbg !535
  br i1 %cmp305, label %land.lhs.true307, label %if.else391, !dbg !535

land.lhs.true307:                                 ; preds = %land.lhs.true302
  %176 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %ascent308 = getelementptr inbounds %struct.xCharInfo, ptr %176, i32 0, i32 3, !dbg !535
  %177 = load i16, ptr %ascent308, align 2, !dbg !535
  %conv309 = sext i16 %177 to i32, !dbg !535
  %cmp310 = icmp sle i32 %conv309, 127, !dbg !535
  br i1 %cmp310, label %land.lhs.true312, label %if.else391, !dbg !535

land.lhs.true312:                                 ; preds = %land.lhs.true307
  %178 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %descent313 = getelementptr inbounds %struct.xCharInfo, ptr %178, i32 0, i32 4, !dbg !535
  %179 = load i16, ptr %descent313, align 2, !dbg !535
  %conv314 = sext i16 %179 to i32, !dbg !535
  %cmp315 = icmp sle i32 -128, %conv314, !dbg !535
  br i1 %cmp315, label %land.lhs.true317, label %if.else391, !dbg !535

land.lhs.true317:                                 ; preds = %land.lhs.true312
  %180 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %descent318 = getelementptr inbounds %struct.xCharInfo, ptr %180, i32 0, i32 4, !dbg !535
  %181 = load i16, ptr %descent318, align 2, !dbg !535
  %conv319 = sext i16 %181 to i32, !dbg !535
  %cmp320 = icmp sle i32 %conv319, 127, !dbg !535
  br i1 %cmp320, label %land.lhs.true322, label %if.else391, !dbg !535

land.lhs.true322:                                 ; preds = %land.lhs.true317
  %182 = load ptr, ptr %ink_minbounds, align 8, !dbg !535
  %attributes323 = getelementptr inbounds %struct.xCharInfo, ptr %182, i32 0, i32 5, !dbg !535
  %183 = load i16, ptr %attributes323, align 2, !dbg !535
  %conv324 = zext i16 %183 to i32, !dbg !535
  %cmp325 = icmp eq i32 %conv324, 0, !dbg !535
  br i1 %cmp325, label %land.lhs.true327, label %if.else391, !dbg !535

land.lhs.true327:                                 ; preds = %land.lhs.true322
  %184 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %leftSideBearing328 = getelementptr inbounds %struct.xCharInfo, ptr %184, i32 0, i32 0, !dbg !535
  %185 = load i16, ptr %leftSideBearing328, align 2, !dbg !535
  %conv329 = sext i16 %185 to i32, !dbg !535
  %cmp330 = icmp sle i32 -128, %conv329, !dbg !535
  br i1 %cmp330, label %land.lhs.true332, label %if.else391, !dbg !535

land.lhs.true332:                                 ; preds = %land.lhs.true327
  %186 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %leftSideBearing333 = getelementptr inbounds %struct.xCharInfo, ptr %186, i32 0, i32 0, !dbg !535
  %187 = load i16, ptr %leftSideBearing333, align 2, !dbg !535
  %conv334 = sext i16 %187 to i32, !dbg !535
  %cmp335 = icmp sle i32 %conv334, 127, !dbg !535
  br i1 %cmp335, label %land.lhs.true337, label %if.else391, !dbg !535

land.lhs.true337:                                 ; preds = %land.lhs.true332
  %188 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %rightSideBearing338 = getelementptr inbounds %struct.xCharInfo, ptr %188, i32 0, i32 1, !dbg !535
  %189 = load i16, ptr %rightSideBearing338, align 2, !dbg !535
  %conv339 = sext i16 %189 to i32, !dbg !535
  %cmp340 = icmp sle i32 -128, %conv339, !dbg !535
  br i1 %cmp340, label %land.lhs.true342, label %if.else391, !dbg !535

land.lhs.true342:                                 ; preds = %land.lhs.true337
  %190 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %rightSideBearing343 = getelementptr inbounds %struct.xCharInfo, ptr %190, i32 0, i32 1, !dbg !535
  %191 = load i16, ptr %rightSideBearing343, align 2, !dbg !535
  %conv344 = sext i16 %191 to i32, !dbg !535
  %cmp345 = icmp sle i32 %conv344, 127, !dbg !535
  br i1 %cmp345, label %land.lhs.true347, label %if.else391, !dbg !535

land.lhs.true347:                                 ; preds = %land.lhs.true342
  %192 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %characterWidth348 = getelementptr inbounds %struct.xCharInfo, ptr %192, i32 0, i32 2, !dbg !535
  %193 = load i16, ptr %characterWidth348, align 2, !dbg !535
  %conv349 = sext i16 %193 to i32, !dbg !535
  %cmp350 = icmp sle i32 -128, %conv349, !dbg !535
  br i1 %cmp350, label %land.lhs.true352, label %if.else391, !dbg !535

land.lhs.true352:                                 ; preds = %land.lhs.true347
  %194 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %characterWidth353 = getelementptr inbounds %struct.xCharInfo, ptr %194, i32 0, i32 2, !dbg !535
  %195 = load i16, ptr %characterWidth353, align 2, !dbg !535
  %conv354 = sext i16 %195 to i32, !dbg !535
  %cmp355 = icmp sle i32 %conv354, 127, !dbg !535
  br i1 %cmp355, label %land.lhs.true357, label %if.else391, !dbg !535

land.lhs.true357:                                 ; preds = %land.lhs.true352
  %196 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %ascent358 = getelementptr inbounds %struct.xCharInfo, ptr %196, i32 0, i32 3, !dbg !535
  %197 = load i16, ptr %ascent358, align 2, !dbg !535
  %conv359 = sext i16 %197 to i32, !dbg !535
  %cmp360 = icmp sle i32 -128, %conv359, !dbg !535
  br i1 %cmp360, label %land.lhs.true362, label %if.else391, !dbg !535

land.lhs.true362:                                 ; preds = %land.lhs.true357
  %198 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %ascent363 = getelementptr inbounds %struct.xCharInfo, ptr %198, i32 0, i32 3, !dbg !535
  %199 = load i16, ptr %ascent363, align 2, !dbg !535
  %conv364 = sext i16 %199 to i32, !dbg !535
  %cmp365 = icmp sle i32 %conv364, 127, !dbg !535
  br i1 %cmp365, label %land.lhs.true367, label %if.else391, !dbg !535

land.lhs.true367:                                 ; preds = %land.lhs.true362
  %200 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %descent368 = getelementptr inbounds %struct.xCharInfo, ptr %200, i32 0, i32 4, !dbg !535
  %201 = load i16, ptr %descent368, align 2, !dbg !535
  %conv369 = sext i16 %201 to i32, !dbg !535
  %cmp370 = icmp sle i32 -128, %conv369, !dbg !535
  br i1 %cmp370, label %land.lhs.true372, label %if.else391, !dbg !535

land.lhs.true372:                                 ; preds = %land.lhs.true367
  %202 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %descent373 = getelementptr inbounds %struct.xCharInfo, ptr %202, i32 0, i32 4, !dbg !535
  %203 = load i16, ptr %descent373, align 2, !dbg !535
  %conv374 = sext i16 %203 to i32, !dbg !535
  %cmp375 = icmp sle i32 %conv374, 127, !dbg !535
  br i1 %cmp375, label %land.lhs.true377, label %if.else391, !dbg !535

land.lhs.true377:                                 ; preds = %land.lhs.true372
  %204 = load ptr, ptr %ink_maxbounds, align 8, !dbg !535
  %attributes378 = getelementptr inbounds %struct.xCharInfo, ptr %204, i32 0, i32 5, !dbg !535
  %205 = load i16, ptr %attributes378, align 2, !dbg !535
  %conv379 = zext i16 %205 to i32, !dbg !535
  %cmp380 = icmp eq i32 %conv379, 0, !dbg !535
  br i1 %cmp380, label %if.then382, label %if.else391, !dbg !538

if.then382:                                       ; preds = %land.lhs.true377
  %206 = load i32, ptr %format, align 4, !dbg !539
  %or383 = or i32 256, %206, !dbg !541
  %207 = load ptr, ptr %table, align 8, !dbg !542
  %format384 = getelementptr inbounds %struct._PCFTable, ptr %207, i32 0, i32 1, !dbg !543
  store i32 %or383, ptr %format384, align 4, !dbg !544
  %208 = load ptr, ptr %bitmapFont, align 8, !dbg !545
  %num_chars385 = getelementptr inbounds %struct._BitmapFont, ptr %208, i32 0, i32 1, !dbg !546
  %209 = load i32, ptr %num_chars385, align 4, !dbg !546
  %mul386 = mul nsw i32 %209, 5, !dbg !547
  %add387 = add nsw i32 6, %mul386, !dbg !548
  store i32 %add387, ptr %size, align 4, !dbg !549
  %210 = load i32, ptr %size, align 4, !dbg !550
  %add388 = add nsw i32 %210, 3, !dbg !550
  %and389 = and i32 %add388, -4, !dbg !550
  %211 = load ptr, ptr %table, align 8, !dbg !551
  %size390 = getelementptr inbounds %struct._PCFTable, ptr %211, i32 0, i32 2, !dbg !552
  store i32 %and389, ptr %size390, align 4, !dbg !553
  br label %if.end398, !dbg !554

if.else391:                                       ; preds = %land.lhs.true377, %land.lhs.true372, %land.lhs.true367, %land.lhs.true362, %land.lhs.true357, %land.lhs.true352, %land.lhs.true347, %land.lhs.true342, %land.lhs.true337, %land.lhs.true332, %land.lhs.true327, %land.lhs.true322, %land.lhs.true317, %land.lhs.true312, %land.lhs.true307, %land.lhs.true302, %land.lhs.true297, %land.lhs.true292, %land.lhs.true287, %land.lhs.true282, %land.lhs.true277, %if.then272
  %212 = load i32, ptr %format, align 4, !dbg !555
  %or392 = or i32 0, %212, !dbg !557
  %213 = load ptr, ptr %table, align 8, !dbg !558
  %format393 = getelementptr inbounds %struct._PCFTable, ptr %213, i32 0, i32 1, !dbg !559
  store i32 %or392, ptr %format393, align 4, !dbg !560
  %214 = load ptr, ptr %bitmapFont, align 8, !dbg !561
  %num_chars394 = getelementptr inbounds %struct._BitmapFont, ptr %214, i32 0, i32 1, !dbg !562
  %215 = load i32, ptr %num_chars394, align 4, !dbg !562
  %mul395 = mul nsw i32 %215, 12, !dbg !563
  %add396 = add nsw i32 8, %mul395, !dbg !564
  %216 = load ptr, ptr %table, align 8, !dbg !565
  %size397 = getelementptr inbounds %struct._PCFTable, ptr %216, i32 0, i32 2, !dbg !566
  store i32 %add396, ptr %size397, align 4, !dbg !567
  br label %if.end398

if.end398:                                        ; preds = %if.else391, %if.then382
  %217 = load ptr, ptr %table, align 8, !dbg !568
  %incdec.ptr399 = getelementptr inbounds %struct._PCFTable, ptr %217, i32 1, !dbg !568
  store ptr %incdec.ptr399, ptr %table, align 8, !dbg !568
  br label %if.end400, !dbg !569

if.end400:                                        ; preds = %if.end398, %sw.bb270
  br label %sw.epilog, !dbg !570

sw.bb401:                                         ; preds = %while.body
  %218 = load i32, ptr %format, align 4, !dbg !571
  %or402 = or i32 0, %218, !dbg !572
  %219 = load ptr, ptr %table, align 8, !dbg !573
  %format403 = getelementptr inbounds %struct._PCFTable, ptr %219, i32 0, i32 1, !dbg !574
  store i32 %or402, ptr %format403, align 4, !dbg !575
  %220 = load ptr, ptr %pFont.addr, align 8, !dbg !576
  %info404 = getelementptr inbounds %struct._Font, ptr %220, i32 0, i32 1, !dbg !577
  %lastRow = getelementptr inbounds %struct._FontInfo, ptr %info404, i32 0, i32 3, !dbg !578
  %221 = load i16, ptr %lastRow, align 2, !dbg !578
  %conv405 = zext i16 %221 to i32, !dbg !576
  %222 = load ptr, ptr %pFont.addr, align 8, !dbg !579
  %info406 = getelementptr inbounds %struct._Font, ptr %222, i32 0, i32 1, !dbg !580
  %firstRow = getelementptr inbounds %struct._FontInfo, ptr %info406, i32 0, i32 2, !dbg !581
  %223 = load i16, ptr %firstRow, align 4, !dbg !581
  %conv407 = zext i16 %223 to i32, !dbg !579
  %sub408 = sub nsw i32 %conv405, %conv407, !dbg !582
  %add409 = add nsw i32 %sub408, 1, !dbg !583
  %224 = load ptr, ptr %pFont.addr, align 8, !dbg !584
  %info410 = getelementptr inbounds %struct._Font, ptr %224, i32 0, i32 1, !dbg !585
  %lastCol = getelementptr inbounds %struct._FontInfo, ptr %info410, i32 0, i32 1, !dbg !586
  %225 = load i16, ptr %lastCol, align 2, !dbg !586
  %conv411 = zext i16 %225 to i32, !dbg !584
  %226 = load ptr, ptr %pFont.addr, align 8, !dbg !587
  %info412 = getelementptr inbounds %struct._Font, ptr %226, i32 0, i32 1, !dbg !588
  %firstCol = getelementptr inbounds %struct._FontInfo, ptr %info412, i32 0, i32 0, !dbg !589
  %227 = load i16, ptr %firstCol, align 8, !dbg !589
  %conv413 = zext i16 %227 to i32, !dbg !587
  %sub414 = sub nsw i32 %conv411, %conv413, !dbg !590
  %add415 = add nsw i32 %sub414, 1, !dbg !591
  %mul416 = mul nsw i32 %add409, %add415, !dbg !592
  store i32 %mul416, ptr %nencodings, align 4, !dbg !593
  %228 = load i32, ptr %nencodings, align 4, !dbg !594
  %mul417 = mul nsw i32 %228, 2, !dbg !595
  %add418 = add nsw i32 14, %mul417, !dbg !596
  store i32 %add418, ptr %size, align 4, !dbg !597
  %229 = load i32, ptr %size, align 4, !dbg !598
  %add419 = add nsw i32 %229, 3, !dbg !598
  %and420 = and i32 %add419, -4, !dbg !598
  %230 = load ptr, ptr %table, align 8, !dbg !599
  %size421 = getelementptr inbounds %struct._PCFTable, ptr %230, i32 0, i32 2, !dbg !600
  store i32 %and420, ptr %size421, align 4, !dbg !601
  %231 = load ptr, ptr %table, align 8, !dbg !602
  %incdec.ptr422 = getelementptr inbounds %struct._PCFTable, ptr %231, i32 1, !dbg !602
  store ptr %incdec.ptr422, ptr %table, align 8, !dbg !602
  br label %sw.epilog, !dbg !603

sw.bb423:                                         ; preds = %while.body
  %232 = load i32, ptr %format, align 4, !dbg !604
  %or424 = or i32 0, %232, !dbg !605
  %233 = load ptr, ptr %table, align 8, !dbg !606
  %format425 = getelementptr inbounds %struct._PCFTable, ptr %233, i32 0, i32 1, !dbg !607
  store i32 %or424, ptr %format425, align 4, !dbg !608
  %234 = load ptr, ptr %bitmapFont, align 8, !dbg !609
  %num_chars426 = getelementptr inbounds %struct._BitmapFont, ptr %234, i32 0, i32 1, !dbg !610
  %235 = load i32, ptr %num_chars426, align 4, !dbg !610
  %mul427 = mul nsw i32 %235, 4, !dbg !611
  %add428 = add nsw i32 8, %mul427, !dbg !612
  %236 = load ptr, ptr %table, align 8, !dbg !613
  %size429 = getelementptr inbounds %struct._PCFTable, ptr %236, i32 0, i32 2, !dbg !614
  store i32 %add428, ptr %size429, align 4, !dbg !615
  %237 = load ptr, ptr %table, align 8, !dbg !616
  %incdec.ptr430 = getelementptr inbounds %struct._PCFTable, ptr %237, i32 1, !dbg !616
  store ptr %incdec.ptr430, ptr %table, align 8, !dbg !616
  br label %sw.epilog, !dbg !617

sw.bb431:                                         ; preds = %while.body
  %238 = load i32, ptr %format, align 4, !dbg !618
  %or432 = or i32 0, %238, !dbg !619
  %239 = load ptr, ptr %table, align 8, !dbg !620
  %format433 = getelementptr inbounds %struct._PCFTable, ptr %239, i32 0, i32 1, !dbg !621
  store i32 %or432, ptr %format433, align 4, !dbg !622
  store i32 0, ptr %glyph_string_size, align 4, !dbg !623
  store i32 0, ptr %i, align 4, !dbg !624
  br label %for.cond434, !dbg !626

for.cond434:                                      ; preds = %for.inc448, %sw.bb431
  %240 = load i32, ptr %i, align 4, !dbg !627
  %241 = load ptr, ptr %bitmapFont, align 8, !dbg !629
  %num_chars435 = getelementptr inbounds %struct._BitmapFont, ptr %241, i32 0, i32 1, !dbg !630
  %242 = load i32, ptr %num_chars435, align 4, !dbg !630
  %cmp436 = icmp slt i32 %240, %242, !dbg !631
  br i1 %cmp436, label %for.body438, label %for.end450, !dbg !632

for.body438:                                      ; preds = %for.cond434
  %243 = load ptr, ptr %bitmapFont, align 8, !dbg !633
  %bitmapExtra439 = getelementptr inbounds %struct._BitmapFont, ptr %243, i32 0, i32 8, !dbg !634
  %244 = load ptr, ptr %bitmapExtra439, align 8, !dbg !634
  %glyphNames = getelementptr inbounds %struct._BitmapExtra, ptr %244, i32 0, i32 0, !dbg !635
  %245 = load ptr, ptr %glyphNames, align 8, !dbg !635
  %246 = load i32, ptr %i, align 4, !dbg !636
  %idxprom440 = sext i32 %246 to i64, !dbg !633
  %arrayidx441 = getelementptr inbounds i64, ptr %245, i64 %idxprom440, !dbg !633
  %247 = load i64, ptr %arrayidx441, align 8, !dbg !633
  %call442 = call ptr @pcfNameForAtom(i64 noundef %247), !dbg !637
  %call443 = call i64 @strlen(ptr noundef %call442) #7, !dbg !638
  %add444 = add i64 %call443, 1, !dbg !639
  %248 = load i32, ptr %glyph_string_size, align 4, !dbg !640
  %conv445 = sext i32 %248 to i64, !dbg !640
  %add446 = add i64 %conv445, %add444, !dbg !640
  %conv447 = trunc i64 %add446 to i32, !dbg !640
  store i32 %conv447, ptr %glyph_string_size, align 4, !dbg !640
  br label %for.inc448, !dbg !641

for.inc448:                                       ; preds = %for.body438
  %249 = load i32, ptr %i, align 4, !dbg !642
  %inc449 = add nsw i32 %249, 1, !dbg !642
  store i32 %inc449, ptr %i, align 4, !dbg !642
  br label %for.cond434, !dbg !643, !llvm.loop !644

for.end450:                                       ; preds = %for.cond434
  %250 = load ptr, ptr %bitmapFont, align 8, !dbg !646
  %num_chars451 = getelementptr inbounds %struct._BitmapFont, ptr %250, i32 0, i32 1, !dbg !647
  %251 = load i32, ptr %num_chars451, align 4, !dbg !647
  %mul452 = mul nsw i32 %251, 4, !dbg !648
  %add453 = add nsw i32 8, %mul452, !dbg !649
  %add454 = add nsw i32 %add453, 4, !dbg !650
  %252 = load i32, ptr %glyph_string_size, align 4, !dbg !651
  %add455 = add nsw i32 %252, 3, !dbg !651
  %and456 = and i32 %add455, -4, !dbg !651
  %add457 = add nsw i32 %add454, %and456, !dbg !652
  %253 = load ptr, ptr %table, align 8, !dbg !653
  %size458 = getelementptr inbounds %struct._PCFTable, ptr %253, i32 0, i32 2, !dbg !654
  store i32 %add457, ptr %size458, align 4, !dbg !655
  %254 = load ptr, ptr %table, align 8, !dbg !656
  %incdec.ptr459 = getelementptr inbounds %struct._PCFTable, ptr %254, i32 1, !dbg !656
  store ptr %incdec.ptr459, ptr %table, align 8, !dbg !656
  br label %sw.epilog, !dbg !657

sw.bb460:                                         ; preds = %while.body
  %255 = load ptr, ptr %pFont.addr, align 8, !dbg !658
  %info461 = getelementptr inbounds %struct._Font, ptr %255, i32 0, i32 1, !dbg !660
  %inkMetrics462 = getelementptr inbounds %struct._FontInfo, ptr %info461, i32 0, i32 5, !dbg !661
  %bf.load463 = load i16, ptr %inkMetrics462, align 2, !dbg !661
  %bf.lshr464 = lshr i16 %bf.load463, 5, !dbg !661
  %bf.clear465 = and i16 %bf.lshr464, 1, !dbg !661
  %bf.cast466 = zext i16 %bf.clear465 to i32, !dbg !661
  %tobool467 = icmp ne i32 %bf.cast466, 0, !dbg !658
  br i1 %tobool467, label %if.then468, label %if.else471, !dbg !662

if.then468:                                       ; preds = %sw.bb460
  %256 = load i32, ptr %format, align 4, !dbg !663
  %or469 = or i32 256, %256, !dbg !664
  %257 = load ptr, ptr %table, align 8, !dbg !665
  %format470 = getelementptr inbounds %struct._PCFTable, ptr %257, i32 0, i32 1, !dbg !666
  store i32 %or469, ptr %format470, align 4, !dbg !667
  br label %if.end474, !dbg !665

if.else471:                                       ; preds = %sw.bb460
  %258 = load i32, ptr %format, align 4, !dbg !668
  %or472 = or i32 0, %258, !dbg !669
  %259 = load ptr, ptr %table, align 8, !dbg !670
  %format473 = getelementptr inbounds %struct._PCFTable, ptr %259, i32 0, i32 1, !dbg !671
  store i32 %or472, ptr %format473, align 4, !dbg !672
  br label %if.end474

if.end474:                                        ; preds = %if.else471, %if.then468
  %260 = load ptr, ptr %table, align 8, !dbg !673
  %size475 = getelementptr inbounds %struct._PCFTable, ptr %260, i32 0, i32 2, !dbg !674
  store i32 100, ptr %size475, align 4, !dbg !675
  %261 = load ptr, ptr %table, align 8, !dbg !676
  %incdec.ptr476 = getelementptr inbounds %struct._PCFTable, ptr %261, i32 1, !dbg !676
  store ptr %incdec.ptr476, ptr %table, align 8, !dbg !676
  br label %sw.epilog, !dbg !677

sw.epilog:                                        ; preds = %while.body, %if.end474, %for.end450, %sw.bb423, %sw.bb401, %if.end400, %sw.bb254, %if.end252, %if.end131, %sw.bb
  br label %while.cond, !dbg !417, !llvm.loop !678

while.end:                                        ; preds = %while.cond
  %262 = load ptr, ptr %table, align 8, !dbg !680
  %arraydecay477 = getelementptr inbounds [32 x %struct._PCFTable], ptr %tables, i64 0, i64 0, !dbg !681
  %sub.ptr.lhs.cast = ptrtoint ptr %262 to i64, !dbg !682
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay477 to i64, !dbg !682
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !682
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16, !dbg !682
  %conv478 = trunc i64 %sub.ptr.div to i32, !dbg !680
  store i32 %conv478, ptr %ntables, align 4, !dbg !683
  store i32 0, ptr %offset, align 4, !dbg !684
  %263 = load i32, ptr %ntables, align 4, !dbg !685
  %mul479 = mul nsw i32 %263, 16, !dbg !686
  %add480 = add nsw i32 8, %mul479, !dbg !687
  store i32 %add480, ptr %header_size, align 4, !dbg !688
  %264 = load i32, ptr %header_size, align 4, !dbg !689
  store i32 %264, ptr %offset, align 4, !dbg !690
  store i32 0, ptr %cur_table, align 4, !dbg !691
  %arraydecay481 = getelementptr inbounds [32 x %struct._PCFTable], ptr %tables, i64 0, i64 0, !dbg !693
  store ptr %arraydecay481, ptr %table, align 8, !dbg !694
  br label %for.cond482, !dbg !695

for.cond482:                                      ; preds = %for.inc489, %while.end
  %265 = load i32, ptr %cur_table, align 4, !dbg !696
  %266 = load i32, ptr %ntables, align 4, !dbg !698
  %cmp483 = icmp slt i32 %265, %266, !dbg !699
  br i1 %cmp483, label %for.body485, label %for.end492, !dbg !700

for.body485:                                      ; preds = %for.cond482
  %267 = load i32, ptr %offset, align 4, !dbg !701
  %268 = load ptr, ptr %table, align 8, !dbg !703
  %offset486 = getelementptr inbounds %struct._PCFTable, ptr %268, i32 0, i32 3, !dbg !704
  store i32 %267, ptr %offset486, align 4, !dbg !705
  %269 = load ptr, ptr %table, align 8, !dbg !706
  %size487 = getelementptr inbounds %struct._PCFTable, ptr %269, i32 0, i32 2, !dbg !707
  %270 = load i32, ptr %size487, align 4, !dbg !707
  %271 = load i32, ptr %offset, align 4, !dbg !708
  %add488 = add i32 %271, %270, !dbg !708
  store i32 %add488, ptr %offset, align 4, !dbg !708
  br label %for.inc489, !dbg !709

for.inc489:                                       ; preds = %for.body485
  %272 = load i32, ptr %cur_table, align 4, !dbg !710
  %inc490 = add nsw i32 %272, 1, !dbg !710
  store i32 %inc490, ptr %cur_table, align 4, !dbg !710
  %273 = load ptr, ptr %table, align 8, !dbg !711
  %incdec.ptr491 = getelementptr inbounds %struct._PCFTable, ptr %273, i32 1, !dbg !711
  store ptr %incdec.ptr491, ptr %table, align 8, !dbg !711
  br label %for.cond482, !dbg !712, !llvm.loop !713

for.end492:                                       ; preds = %for.cond482
  store i32 0, ptr @current_position, align 4, !dbg !715
  %274 = load ptr, ptr %file.addr, align 8, !dbg !716
  %arraydecay493 = getelementptr inbounds [32 x %struct._PCFTable], ptr %tables, i64 0, i64 0, !dbg !717
  %275 = load i32, ptr %ntables, align 4, !dbg !718
  call void @pcfWriteTOC(ptr noundef %274, ptr noundef %arraydecay493, i32 noundef %275), !dbg !719
  store i32 0, ptr %cur_table, align 4, !dbg !720
  %arraydecay494 = getelementptr inbounds [32 x %struct._PCFTable], ptr %tables, i64 0, i64 0, !dbg !722
  store ptr %arraydecay494, ptr %table, align 8, !dbg !723
  br label %for.cond495, !dbg !724

for.cond495:                                      ; preds = %for.inc926, %for.end492
  %276 = load i32, ptr %cur_table, align 4, !dbg !725
  %277 = load i32, ptr %ntables, align 4, !dbg !727
  %cmp496 = icmp slt i32 %276, %277, !dbg !728
  br i1 %cmp496, label %for.body498, label %for.end929, !dbg !729

for.body498:                                      ; preds = %for.cond495
  %278 = load i32, ptr @current_position, align 4, !dbg !730
  %279 = load ptr, ptr %table, align 8, !dbg !733
  %offset499 = getelementptr inbounds %struct._PCFTable, ptr %279, i32 0, i32 3, !dbg !734
  %280 = load i32, ptr %offset499, align 4, !dbg !734
  %cmp500 = icmp ugt i32 %278, %280, !dbg !735
  br i1 %cmp500, label %if.then502, label %if.end505, !dbg !736

if.then502:                                       ; preds = %for.body498
  %281 = load i32, ptr @current_position, align 4, !dbg !737
  %282 = load ptr, ptr %table, align 8, !dbg !739
  %offset503 = getelementptr inbounds %struct._PCFTable, ptr %282, i32 0, i32 3, !dbg !740
  %283 = load i32, ptr %offset503, align 4, !dbg !740
  %call504 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %281, i32 noundef %283), !dbg !741
  %284 = load ptr, ptr %offsetProps, align 8, !dbg !742
  call void @free(ptr noundef %284) #6, !dbg !743
  store i32 83, ptr %retval, align 4, !dbg !744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !744

if.end505:                                        ; preds = %for.body498
  br label %while.cond506, !dbg !745

while.cond506:                                    ; preds = %while.body510, %if.end505
  %285 = load i32, ptr @current_position, align 4, !dbg !746
  %286 = load ptr, ptr %table, align 8, !dbg !747
  %offset507 = getelementptr inbounds %struct._PCFTable, ptr %286, i32 0, i32 3, !dbg !748
  %287 = load i32, ptr %offset507, align 4, !dbg !748
  %cmp508 = icmp ult i32 %285, %287, !dbg !749
  br i1 %cmp508, label %while.body510, label %while.end512, !dbg !745

while.body510:                                    ; preds = %while.cond506
  %288 = load ptr, ptr %file.addr, align 8, !dbg !750
  %289 = load i32, ptr %format, align 4, !dbg !751
  %call511 = call i32 @pcfPutINT8(ptr noundef %288, i32 noundef %289, i32 noundef 0), !dbg !752
  br label %while.cond506, !dbg !745, !llvm.loop !753

while.end512:                                     ; preds = %while.cond506
  %290 = load ptr, ptr %file.addr, align 8, !dbg !755
  %291 = load ptr, ptr %table, align 8, !dbg !756
  %format513 = getelementptr inbounds %struct._PCFTable, ptr %291, i32 0, i32 1, !dbg !757
  %292 = load i32, ptr %format513, align 4, !dbg !757
  %call514 = call i32 @pcfPutLSB32(ptr noundef %290, i32 noundef %292), !dbg !758
  %293 = load ptr, ptr %table, align 8, !dbg !759
  %type515 = getelementptr inbounds %struct._PCFTable, ptr %293, i32 0, i32 0, !dbg !760
  %294 = load i32, ptr %type515, align 4, !dbg !760
  switch i32 %294, label %sw.epilog925 [
    i32 1, label %sw.bb516
    i32 2, label %sw.bb590
    i32 4, label %sw.bb594
    i32 8, label %sw.bb629
    i32 16, label %sw.bb767
    i32 32, label %sw.bb801
    i32 64, label %sw.bb867
    i32 128, label %sw.bb882
    i32 256, label %sw.bb922
  ], !dbg !761

sw.bb516:                                         ; preds = %while.end512
  %295 = load ptr, ptr %file.addr, align 8, !dbg !762
  %296 = load i32, ptr %format, align 4, !dbg !764
  %297 = load ptr, ptr %pFont.addr, align 8, !dbg !765
  %info517 = getelementptr inbounds %struct._Font, ptr %297, i32 0, i32 1, !dbg !766
  %nprops518 = getelementptr inbounds %struct._FontInfo, ptr %info517, i32 0, i32 14, !dbg !767
  %298 = load i32, ptr %nprops518, align 4, !dbg !767
  %call519 = call i32 @pcfPutINT32(ptr noundef %295, i32 noundef %296, i32 noundef %298), !dbg !768
  store i32 0, ptr %i, align 4, !dbg !769
  br label %for.cond520, !dbg !771

for.cond520:                                      ; preds = %for.inc542, %sw.bb516
  %299 = load i32, ptr %i, align 4, !dbg !772
  %300 = load ptr, ptr %pFont.addr, align 8, !dbg !774
  %info521 = getelementptr inbounds %struct._Font, ptr %300, i32 0, i32 1, !dbg !775
  %nprops522 = getelementptr inbounds %struct._FontInfo, ptr %info521, i32 0, i32 14, !dbg !776
  %301 = load i32, ptr %nprops522, align 4, !dbg !776
  %cmp523 = icmp slt i32 %299, %301, !dbg !777
  br i1 %cmp523, label %for.body525, label %for.end544, !dbg !778

for.body525:                                      ; preds = %for.cond520
  %302 = load ptr, ptr %file.addr, align 8, !dbg !779
  %303 = load i32, ptr %format, align 4, !dbg !781
  %304 = load ptr, ptr %offsetProps, align 8, !dbg !782
  %305 = load i32, ptr %i, align 4, !dbg !783
  %idxprom526 = sext i32 %305 to i64, !dbg !782
  %arrayidx527 = getelementptr inbounds %struct._FontProp, ptr %304, i64 %idxprom526, !dbg !782
  %name528 = getelementptr inbounds %struct._FontProp, ptr %arrayidx527, i32 0, i32 0, !dbg !784
  %306 = load i64, ptr %name528, align 8, !dbg !784
  %conv529 = trunc i64 %306 to i32, !dbg !782
  %call530 = call i32 @pcfPutINT32(ptr noundef %302, i32 noundef %303, i32 noundef %conv529), !dbg !785
  %307 = load ptr, ptr %file.addr, align 8, !dbg !786
  %308 = load i32, ptr %format, align 4, !dbg !787
  %309 = load ptr, ptr %pFont.addr, align 8, !dbg !788
  %info531 = getelementptr inbounds %struct._Font, ptr %309, i32 0, i32 1, !dbg !789
  %isStringProp532 = getelementptr inbounds %struct._FontInfo, ptr %info531, i32 0, i32 16, !dbg !790
  %310 = load ptr, ptr %isStringProp532, align 8, !dbg !790
  %311 = load i32, ptr %i, align 4, !dbg !791
  %idxprom533 = sext i32 %311 to i64, !dbg !788
  %arrayidx534 = getelementptr inbounds i8, ptr %310, i64 %idxprom533, !dbg !788
  %312 = load i8, ptr %arrayidx534, align 1, !dbg !788
  %conv535 = sext i8 %312 to i32, !dbg !788
  %call536 = call i32 @pcfPutINT8(ptr noundef %307, i32 noundef %308, i32 noundef %conv535), !dbg !792
  %313 = load ptr, ptr %file.addr, align 8, !dbg !793
  %314 = load i32, ptr %format, align 4, !dbg !794
  %315 = load ptr, ptr %offsetProps, align 8, !dbg !795
  %316 = load i32, ptr %i, align 4, !dbg !796
  %idxprom537 = sext i32 %316 to i64, !dbg !795
  %arrayidx538 = getelementptr inbounds %struct._FontProp, ptr %315, i64 %idxprom537, !dbg !795
  %value539 = getelementptr inbounds %struct._FontProp, ptr %arrayidx538, i32 0, i32 1, !dbg !797
  %317 = load i64, ptr %value539, align 8, !dbg !797
  %conv540 = trunc i64 %317 to i32, !dbg !795
  %call541 = call i32 @pcfPutINT32(ptr noundef %313, i32 noundef %314, i32 noundef %conv540), !dbg !798
  br label %for.inc542, !dbg !799

for.inc542:                                       ; preds = %for.body525
  %318 = load i32, ptr %i, align 4, !dbg !800
  %inc543 = add nsw i32 %318, 1, !dbg !800
  store i32 %inc543, ptr %i, align 4, !dbg !800
  br label %for.cond520, !dbg !801, !llvm.loop !802

for.end544:                                       ; preds = %for.cond520
  store i32 0, ptr %i, align 4, !dbg !804
  br label %for.cond545, !dbg !806

for.cond545:                                      ; preds = %for.inc550, %for.end544
  %319 = load i32, ptr %i, align 4, !dbg !807
  %320 = load i32, ptr %prop_pad, align 4, !dbg !809
  %cmp546 = icmp slt i32 %319, %320, !dbg !810
  br i1 %cmp546, label %for.body548, label %for.end552, !dbg !811

for.body548:                                      ; preds = %for.cond545
  %321 = load ptr, ptr %file.addr, align 8, !dbg !812
  %322 = load i32, ptr %format, align 4, !dbg !813
  %call549 = call i32 @pcfPutINT8(ptr noundef %321, i32 noundef %322, i32 noundef 0), !dbg !814
  br label %for.inc550, !dbg !814

for.inc550:                                       ; preds = %for.body548
  %323 = load i32, ptr %i, align 4, !dbg !815
  %inc551 = add nsw i32 %323, 1, !dbg !815
  store i32 %inc551, ptr %i, align 4, !dbg !815
  br label %for.cond545, !dbg !816, !llvm.loop !817

for.end552:                                       ; preds = %for.cond545
  %324 = load ptr, ptr %file.addr, align 8, !dbg !819
  %325 = load i32, ptr %format, align 4, !dbg !820
  %326 = load i32, ptr %prop_string_size, align 4, !dbg !821
  %call553 = call i32 @pcfPutINT32(ptr noundef %324, i32 noundef %325, i32 noundef %326), !dbg !822
  store i32 0, ptr %i, align 4, !dbg !823
  br label %for.cond554, !dbg !825

for.cond554:                                      ; preds = %for.inc587, %for.end552
  %327 = load i32, ptr %i, align 4, !dbg !826
  %328 = load ptr, ptr %pFont.addr, align 8, !dbg !828
  %info555 = getelementptr inbounds %struct._Font, ptr %328, i32 0, i32 1, !dbg !829
  %nprops556 = getelementptr inbounds %struct._FontInfo, ptr %info555, i32 0, i32 14, !dbg !830
  %329 = load i32, ptr %nprops556, align 4, !dbg !830
  %cmp557 = icmp slt i32 %327, %329, !dbg !831
  br i1 %cmp557, label %for.body559, label %for.end589, !dbg !832

for.body559:                                      ; preds = %for.cond554
  %330 = load ptr, ptr %pFont.addr, align 8, !dbg !833
  %info560 = getelementptr inbounds %struct._Font, ptr %330, i32 0, i32 1, !dbg !835
  %props561 = getelementptr inbounds %struct._FontInfo, ptr %info560, i32 0, i32 15, !dbg !836
  %331 = load ptr, ptr %props561, align 8, !dbg !836
  %332 = load i32, ptr %i, align 4, !dbg !837
  %idxprom562 = sext i32 %332 to i64, !dbg !833
  %arrayidx563 = getelementptr inbounds %struct._FontProp, ptr %331, i64 %idxprom562, !dbg !833
  %name564 = getelementptr inbounds %struct._FontProp, ptr %arrayidx563, i32 0, i32 0, !dbg !838
  %333 = load i64, ptr %name564, align 8, !dbg !838
  %call565 = call ptr @pcfNameForAtom(i64 noundef %333), !dbg !839
  store ptr %call565, ptr %atom_name, align 8, !dbg !840
  %334 = load ptr, ptr %file.addr, align 8, !dbg !841
  %335 = load ptr, ptr %atom_name, align 8, !dbg !842
  %336 = load ptr, ptr %atom_name, align 8, !dbg !843
  %call566 = call i64 @strlen(ptr noundef %336) #7, !dbg !844
  %add567 = add i64 %call566, 1, !dbg !845
  %conv568 = trunc i64 %add567 to i32, !dbg !844
  %call569 = call i32 @pcfWrite(ptr noundef %334, ptr noundef %335, i32 noundef %conv568), !dbg !846
  %337 = load ptr, ptr %pFont.addr, align 8, !dbg !847
  %info570 = getelementptr inbounds %struct._Font, ptr %337, i32 0, i32 1, !dbg !849
  %isStringProp571 = getelementptr inbounds %struct._FontInfo, ptr %info570, i32 0, i32 16, !dbg !850
  %338 = load ptr, ptr %isStringProp571, align 8, !dbg !850
  %339 = load i32, ptr %i, align 4, !dbg !851
  %idxprom572 = sext i32 %339 to i64, !dbg !847
  %arrayidx573 = getelementptr inbounds i8, ptr %338, i64 %idxprom572, !dbg !847
  %340 = load i8, ptr %arrayidx573, align 1, !dbg !847
  %tobool574 = icmp ne i8 %340, 0, !dbg !847
  br i1 %tobool574, label %if.then575, label %if.end586, !dbg !852

if.then575:                                       ; preds = %for.body559
  %341 = load ptr, ptr %pFont.addr, align 8, !dbg !853
  %info576 = getelementptr inbounds %struct._Font, ptr %341, i32 0, i32 1, !dbg !855
  %props577 = getelementptr inbounds %struct._FontInfo, ptr %info576, i32 0, i32 15, !dbg !856
  %342 = load ptr, ptr %props577, align 8, !dbg !856
  %343 = load i32, ptr %i, align 4, !dbg !857
  %idxprom578 = sext i32 %343 to i64, !dbg !853
  %arrayidx579 = getelementptr inbounds %struct._FontProp, ptr %342, i64 %idxprom578, !dbg !853
  %value580 = getelementptr inbounds %struct._FontProp, ptr %arrayidx579, i32 0, i32 1, !dbg !858
  %344 = load i64, ptr %value580, align 8, !dbg !858
  %call581 = call ptr @pcfNameForAtom(i64 noundef %344), !dbg !859
  store ptr %call581, ptr %atom_name, align 8, !dbg !860
  %345 = load ptr, ptr %file.addr, align 8, !dbg !861
  %346 = load ptr, ptr %atom_name, align 8, !dbg !862
  %347 = load ptr, ptr %atom_name, align 8, !dbg !863
  %call582 = call i64 @strlen(ptr noundef %347) #7, !dbg !864
  %add583 = add i64 %call582, 1, !dbg !865
  %conv584 = trunc i64 %add583 to i32, !dbg !864
  %call585 = call i32 @pcfWrite(ptr noundef %345, ptr noundef %346, i32 noundef %conv584), !dbg !866
  br label %if.end586, !dbg !867

if.end586:                                        ; preds = %if.then575, %for.body559
  br label %for.inc587, !dbg !868

for.inc587:                                       ; preds = %if.end586
  %348 = load i32, ptr %i, align 4, !dbg !869
  %inc588 = add nsw i32 %348, 1, !dbg !869
  store i32 %inc588, ptr %i, align 4, !dbg !869
  br label %for.cond554, !dbg !870, !llvm.loop !871

for.end589:                                       ; preds = %for.cond554
  br label %sw.epilog925, !dbg !873

sw.bb590:                                         ; preds = %while.end512
  %349 = load ptr, ptr %file.addr, align 8, !dbg !874
  %350 = load ptr, ptr %table, align 8, !dbg !875
  %format591 = getelementptr inbounds %struct._PCFTable, ptr %350, i32 0, i32 1, !dbg !876
  %351 = load i32, ptr %format591, align 4, !dbg !876
  %352 = load ptr, ptr %bitmapFont, align 8, !dbg !877
  %bitmapExtra592 = getelementptr inbounds %struct._BitmapFont, ptr %352, i32 0, i32 8, !dbg !878
  %353 = load ptr, ptr %bitmapExtra592, align 8, !dbg !878
  %info593 = getelementptr inbounds %struct._BitmapExtra, ptr %353, i32 0, i32 3, !dbg !879
  call void @pcfPutAccel(ptr noundef %349, i32 noundef %351, ptr noundef %info593), !dbg !880
  br label %sw.epilog925, !dbg !881

sw.bb594:                                         ; preds = %while.end512
  %354 = load ptr, ptr %table, align 8, !dbg !882
  %format595 = getelementptr inbounds %struct._PCFTable, ptr %354, i32 0, i32 1, !dbg !882
  %355 = load i32, ptr %format595, align 4, !dbg !882
  %and596 = and i32 %355, -256, !dbg !882
  %cmp597 = icmp eq i32 %and596, 256, !dbg !882
  br i1 %cmp597, label %if.then599, label %if.else613, !dbg !884

if.then599:                                       ; preds = %sw.bb594
  %356 = load ptr, ptr %file.addr, align 8, !dbg !885
  %357 = load i32, ptr %format, align 4, !dbg !887
  %358 = load ptr, ptr %bitmapFont, align 8, !dbg !888
  %num_chars600 = getelementptr inbounds %struct._BitmapFont, ptr %358, i32 0, i32 1, !dbg !889
  %359 = load i32, ptr %num_chars600, align 4, !dbg !889
  %call601 = call i32 @pcfPutINT16(ptr noundef %356, i32 noundef %357, i32 noundef %359), !dbg !890
  store i32 0, ptr %i, align 4, !dbg !891
  br label %for.cond602, !dbg !893

for.cond602:                                      ; preds = %for.inc610, %if.then599
  %360 = load i32, ptr %i, align 4, !dbg !894
  %361 = load ptr, ptr %bitmapFont, align 8, !dbg !896
  %num_chars603 = getelementptr inbounds %struct._BitmapFont, ptr %361, i32 0, i32 1, !dbg !897
  %362 = load i32, ptr %num_chars603, align 4, !dbg !897
  %cmp604 = icmp slt i32 %360, %362, !dbg !898
  br i1 %cmp604, label %for.body606, label %for.end612, !dbg !899

for.body606:                                      ; preds = %for.cond602
  %363 = load ptr, ptr %file.addr, align 8, !dbg !900
  %364 = load i32, ptr %format, align 4, !dbg !901
  %365 = load ptr, ptr %bitmapFont, align 8, !dbg !902
  %metrics = getelementptr inbounds %struct._BitmapFont, ptr %365, i32 0, i32 3, !dbg !903
  %366 = load ptr, ptr %metrics, align 8, !dbg !903
  %367 = load i32, ptr %i, align 4, !dbg !904
  %idxprom607 = sext i32 %367 to i64, !dbg !902
  %arrayidx608 = getelementptr inbounds %struct._CharInfo, ptr %366, i64 %idxprom607, !dbg !902
  %metrics609 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx608, i32 0, i32 0, !dbg !905
  call void @pcfPutCompressedMetric(ptr noundef %363, i32 noundef %364, ptr noundef %metrics609), !dbg !906
  br label %for.inc610, !dbg !906

for.inc610:                                       ; preds = %for.body606
  %368 = load i32, ptr %i, align 4, !dbg !907
  %inc611 = add nsw i32 %368, 1, !dbg !907
  store i32 %inc611, ptr %i, align 4, !dbg !907
  br label %for.cond602, !dbg !908, !llvm.loop !909

for.end612:                                       ; preds = %for.cond602
  br label %if.end628, !dbg !911

if.else613:                                       ; preds = %sw.bb594
  %369 = load ptr, ptr %file.addr, align 8, !dbg !912
  %370 = load i32, ptr %format, align 4, !dbg !914
  %371 = load ptr, ptr %bitmapFont, align 8, !dbg !915
  %num_chars614 = getelementptr inbounds %struct._BitmapFont, ptr %371, i32 0, i32 1, !dbg !916
  %372 = load i32, ptr %num_chars614, align 4, !dbg !916
  %call615 = call i32 @pcfPutINT32(ptr noundef %369, i32 noundef %370, i32 noundef %372), !dbg !917
  store i32 0, ptr %i, align 4, !dbg !918
  br label %for.cond616, !dbg !920

for.cond616:                                      ; preds = %for.inc625, %if.else613
  %373 = load i32, ptr %i, align 4, !dbg !921
  %374 = load ptr, ptr %bitmapFont, align 8, !dbg !923
  %num_chars617 = getelementptr inbounds %struct._BitmapFont, ptr %374, i32 0, i32 1, !dbg !924
  %375 = load i32, ptr %num_chars617, align 4, !dbg !924
  %cmp618 = icmp slt i32 %373, %375, !dbg !925
  br i1 %cmp618, label %for.body620, label %for.end627, !dbg !926

for.body620:                                      ; preds = %for.cond616
  %376 = load ptr, ptr %file.addr, align 8, !dbg !927
  %377 = load i32, ptr %format, align 4, !dbg !928
  %378 = load ptr, ptr %bitmapFont, align 8, !dbg !929
  %metrics621 = getelementptr inbounds %struct._BitmapFont, ptr %378, i32 0, i32 3, !dbg !930
  %379 = load ptr, ptr %metrics621, align 8, !dbg !930
  %380 = load i32, ptr %i, align 4, !dbg !931
  %idxprom622 = sext i32 %380 to i64, !dbg !929
  %arrayidx623 = getelementptr inbounds %struct._CharInfo, ptr %379, i64 %idxprom622, !dbg !929
  %metrics624 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx623, i32 0, i32 0, !dbg !932
  call void @pcfPutMetric(ptr noundef %376, i32 noundef %377, ptr noundef %metrics624), !dbg !933
  br label %for.inc625, !dbg !933

for.inc625:                                       ; preds = %for.body620
  %381 = load i32, ptr %i, align 4, !dbg !934
  %inc626 = add nsw i32 %381, 1, !dbg !934
  store i32 %inc626, ptr %i, align 4, !dbg !934
  br label %for.cond616, !dbg !935, !llvm.loop !936

for.end627:                                       ; preds = %for.cond616
  br label %if.end628

if.end628:                                        ; preds = %for.end627, %for.end612
  br label %sw.epilog925, !dbg !938

sw.bb629:                                         ; preds = %while.end512
  %382 = load ptr, ptr %file.addr, align 8, !dbg !939
  %383 = load i32, ptr %format, align 4, !dbg !940
  %384 = load ptr, ptr %bitmapFont, align 8, !dbg !941
  %num_chars630 = getelementptr inbounds %struct._BitmapFont, ptr %384, i32 0, i32 1, !dbg !942
  %385 = load i32, ptr %num_chars630, align 4, !dbg !942
  %call631 = call i32 @pcfPutINT32(ptr noundef %382, i32 noundef %383, i32 noundef %385), !dbg !943
  %386 = load i32, ptr %format, align 4, !dbg !944
  %and632 = and i32 %386, 3, !dbg !944
  %shl633 = shl i32 1, %and632, !dbg !944
  store i32 %shl633, ptr %glyph, align 4, !dbg !945
  store i32 0, ptr %offset, align 4, !dbg !946
  store i32 0, ptr %i, align 4, !dbg !947
  br label %for.cond634, !dbg !949

for.cond634:                                      ; preds = %for.inc741, %sw.bb629
  %387 = load i32, ptr %i, align 4, !dbg !950
  %388 = load ptr, ptr %bitmapFont, align 8, !dbg !952
  %num_chars635 = getelementptr inbounds %struct._BitmapFont, ptr %388, i32 0, i32 1, !dbg !953
  %389 = load i32, ptr %num_chars635, align 4, !dbg !953
  %cmp636 = icmp slt i32 %387, %389, !dbg !954
  br i1 %cmp636, label %for.body638, label %for.end743, !dbg !955

for.body638:                                      ; preds = %for.cond634
  %390 = load ptr, ptr %file.addr, align 8, !dbg !956
  %391 = load i32, ptr %format, align 4, !dbg !958
  %392 = load i32, ptr %offset, align 4, !dbg !959
  %call639 = call i32 @pcfPutINT32(ptr noundef %390, i32 noundef %391, i32 noundef %392), !dbg !960
  %393 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics640 = getelementptr inbounds %struct._BitmapFont, ptr %393, i32 0, i32 3, !dbg !961
  %394 = load ptr, ptr %metrics640, align 8, !dbg !961
  %395 = load i32, ptr %i, align 4, !dbg !961
  %idxprom641 = sext i32 %395 to i64, !dbg !961
  %arrayidx642 = getelementptr inbounds %struct._CharInfo, ptr %394, i64 %idxprom641, !dbg !961
  %metrics643 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx642, i32 0, i32 0, !dbg !961
  %ascent644 = getelementptr inbounds %struct.xCharInfo, ptr %metrics643, i32 0, i32 3, !dbg !961
  %396 = load i16, ptr %ascent644, align 2, !dbg !961
  %conv645 = sext i16 %396 to i32, !dbg !961
  %397 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics646 = getelementptr inbounds %struct._BitmapFont, ptr %397, i32 0, i32 3, !dbg !961
  %398 = load ptr, ptr %metrics646, align 8, !dbg !961
  %399 = load i32, ptr %i, align 4, !dbg !961
  %idxprom647 = sext i32 %399 to i64, !dbg !961
  %arrayidx648 = getelementptr inbounds %struct._CharInfo, ptr %398, i64 %idxprom647, !dbg !961
  %metrics649 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx648, i32 0, i32 0, !dbg !961
  %descent650 = getelementptr inbounds %struct.xCharInfo, ptr %metrics649, i32 0, i32 4, !dbg !961
  %400 = load i16, ptr %descent650, align 8, !dbg !961
  %conv651 = sext i16 %400 to i32, !dbg !961
  %add652 = add nsw i32 %conv645, %conv651, !dbg !961
  %401 = load i32, ptr %glyph, align 4, !dbg !961
  %cmp653 = icmp eq i32 %401, 1, !dbg !961
  br i1 %cmp653, label %cond.true655, label %cond.false670, !dbg !961

cond.true655:                                     ; preds = %for.body638
  %402 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics656 = getelementptr inbounds %struct._BitmapFont, ptr %402, i32 0, i32 3, !dbg !961
  %403 = load ptr, ptr %metrics656, align 8, !dbg !961
  %404 = load i32, ptr %i, align 4, !dbg !961
  %idxprom657 = sext i32 %404 to i64, !dbg !961
  %arrayidx658 = getelementptr inbounds %struct._CharInfo, ptr %403, i64 %idxprom657, !dbg !961
  %metrics659 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx658, i32 0, i32 0, !dbg !961
  %rightSideBearing660 = getelementptr inbounds %struct.xCharInfo, ptr %metrics659, i32 0, i32 1, !dbg !961
  %405 = load i16, ptr %rightSideBearing660, align 2, !dbg !961
  %conv661 = sext i16 %405 to i32, !dbg !961
  %406 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics662 = getelementptr inbounds %struct._BitmapFont, ptr %406, i32 0, i32 3, !dbg !961
  %407 = load ptr, ptr %metrics662, align 8, !dbg !961
  %408 = load i32, ptr %i, align 4, !dbg !961
  %idxprom663 = sext i32 %408 to i64, !dbg !961
  %arrayidx664 = getelementptr inbounds %struct._CharInfo, ptr %407, i64 %idxprom663, !dbg !961
  %metrics665 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx664, i32 0, i32 0, !dbg !961
  %leftSideBearing666 = getelementptr inbounds %struct.xCharInfo, ptr %metrics665, i32 0, i32 0, !dbg !961
  %409 = load i16, ptr %leftSideBearing666, align 8, !dbg !961
  %conv667 = sext i16 %409 to i32, !dbg !961
  %sub668 = sub nsw i32 %conv661, %conv667, !dbg !961
  %add669 = add nsw i32 %sub668, 7, !dbg !961
  %shr = ashr i32 %add669, 3, !dbg !961
  br label %cond.end737, !dbg !961

cond.false670:                                    ; preds = %for.body638
  %410 = load i32, ptr %glyph, align 4, !dbg !961
  %cmp671 = icmp eq i32 %410, 2, !dbg !961
  br i1 %cmp671, label %cond.true673, label %cond.false690, !dbg !961

cond.true673:                                     ; preds = %cond.false670
  %411 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics674 = getelementptr inbounds %struct._BitmapFont, ptr %411, i32 0, i32 3, !dbg !961
  %412 = load ptr, ptr %metrics674, align 8, !dbg !961
  %413 = load i32, ptr %i, align 4, !dbg !961
  %idxprom675 = sext i32 %413 to i64, !dbg !961
  %arrayidx676 = getelementptr inbounds %struct._CharInfo, ptr %412, i64 %idxprom675, !dbg !961
  %metrics677 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx676, i32 0, i32 0, !dbg !961
  %rightSideBearing678 = getelementptr inbounds %struct.xCharInfo, ptr %metrics677, i32 0, i32 1, !dbg !961
  %414 = load i16, ptr %rightSideBearing678, align 2, !dbg !961
  %conv679 = sext i16 %414 to i32, !dbg !961
  %415 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics680 = getelementptr inbounds %struct._BitmapFont, ptr %415, i32 0, i32 3, !dbg !961
  %416 = load ptr, ptr %metrics680, align 8, !dbg !961
  %417 = load i32, ptr %i, align 4, !dbg !961
  %idxprom681 = sext i32 %417 to i64, !dbg !961
  %arrayidx682 = getelementptr inbounds %struct._CharInfo, ptr %416, i64 %idxprom681, !dbg !961
  %metrics683 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx682, i32 0, i32 0, !dbg !961
  %leftSideBearing684 = getelementptr inbounds %struct.xCharInfo, ptr %metrics683, i32 0, i32 0, !dbg !961
  %418 = load i16, ptr %leftSideBearing684, align 8, !dbg !961
  %conv685 = sext i16 %418 to i32, !dbg !961
  %sub686 = sub nsw i32 %conv679, %conv685, !dbg !961
  %add687 = add nsw i32 %sub686, 15, !dbg !961
  %shr688 = ashr i32 %add687, 3, !dbg !961
  %and689 = and i32 %shr688, -2, !dbg !961
  br label %cond.end735, !dbg !961

cond.false690:                                    ; preds = %cond.false670
  %419 = load i32, ptr %glyph, align 4, !dbg !961
  %cmp691 = icmp eq i32 %419, 4, !dbg !961
  br i1 %cmp691, label %cond.true693, label %cond.false710, !dbg !961

cond.true693:                                     ; preds = %cond.false690
  %420 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics694 = getelementptr inbounds %struct._BitmapFont, ptr %420, i32 0, i32 3, !dbg !961
  %421 = load ptr, ptr %metrics694, align 8, !dbg !961
  %422 = load i32, ptr %i, align 4, !dbg !961
  %idxprom695 = sext i32 %422 to i64, !dbg !961
  %arrayidx696 = getelementptr inbounds %struct._CharInfo, ptr %421, i64 %idxprom695, !dbg !961
  %metrics697 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx696, i32 0, i32 0, !dbg !961
  %rightSideBearing698 = getelementptr inbounds %struct.xCharInfo, ptr %metrics697, i32 0, i32 1, !dbg !961
  %423 = load i16, ptr %rightSideBearing698, align 2, !dbg !961
  %conv699 = sext i16 %423 to i32, !dbg !961
  %424 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics700 = getelementptr inbounds %struct._BitmapFont, ptr %424, i32 0, i32 3, !dbg !961
  %425 = load ptr, ptr %metrics700, align 8, !dbg !961
  %426 = load i32, ptr %i, align 4, !dbg !961
  %idxprom701 = sext i32 %426 to i64, !dbg !961
  %arrayidx702 = getelementptr inbounds %struct._CharInfo, ptr %425, i64 %idxprom701, !dbg !961
  %metrics703 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx702, i32 0, i32 0, !dbg !961
  %leftSideBearing704 = getelementptr inbounds %struct.xCharInfo, ptr %metrics703, i32 0, i32 0, !dbg !961
  %427 = load i16, ptr %leftSideBearing704, align 8, !dbg !961
  %conv705 = sext i16 %427 to i32, !dbg !961
  %sub706 = sub nsw i32 %conv699, %conv705, !dbg !961
  %add707 = add nsw i32 %sub706, 31, !dbg !961
  %shr708 = ashr i32 %add707, 3, !dbg !961
  %and709 = and i32 %shr708, -4, !dbg !961
  br label %cond.end733, !dbg !961

cond.false710:                                    ; preds = %cond.false690
  %428 = load i32, ptr %glyph, align 4, !dbg !961
  %cmp711 = icmp eq i32 %428, 8, !dbg !961
  br i1 %cmp711, label %cond.true713, label %cond.false730, !dbg !961

cond.true713:                                     ; preds = %cond.false710
  %429 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics714 = getelementptr inbounds %struct._BitmapFont, ptr %429, i32 0, i32 3, !dbg !961
  %430 = load ptr, ptr %metrics714, align 8, !dbg !961
  %431 = load i32, ptr %i, align 4, !dbg !961
  %idxprom715 = sext i32 %431 to i64, !dbg !961
  %arrayidx716 = getelementptr inbounds %struct._CharInfo, ptr %430, i64 %idxprom715, !dbg !961
  %metrics717 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx716, i32 0, i32 0, !dbg !961
  %rightSideBearing718 = getelementptr inbounds %struct.xCharInfo, ptr %metrics717, i32 0, i32 1, !dbg !961
  %432 = load i16, ptr %rightSideBearing718, align 2, !dbg !961
  %conv719 = sext i16 %432 to i32, !dbg !961
  %433 = load ptr, ptr %bitmapFont, align 8, !dbg !961
  %metrics720 = getelementptr inbounds %struct._BitmapFont, ptr %433, i32 0, i32 3, !dbg !961
  %434 = load ptr, ptr %metrics720, align 8, !dbg !961
  %435 = load i32, ptr %i, align 4, !dbg !961
  %idxprom721 = sext i32 %435 to i64, !dbg !961
  %arrayidx722 = getelementptr inbounds %struct._CharInfo, ptr %434, i64 %idxprom721, !dbg !961
  %metrics723 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx722, i32 0, i32 0, !dbg !961
  %leftSideBearing724 = getelementptr inbounds %struct.xCharInfo, ptr %metrics723, i32 0, i32 0, !dbg !961
  %436 = load i16, ptr %leftSideBearing724, align 8, !dbg !961
  %conv725 = sext i16 %436 to i32, !dbg !961
  %sub726 = sub nsw i32 %conv719, %conv725, !dbg !961
  %add727 = add nsw i32 %sub726, 63, !dbg !961
  %shr728 = ashr i32 %add727, 3, !dbg !961
  %and729 = and i32 %shr728, -8, !dbg !961
  br label %cond.end731, !dbg !961

cond.false730:                                    ; preds = %cond.false710
  br label %cond.end731, !dbg !961

cond.end731:                                      ; preds = %cond.false730, %cond.true713
  %cond732 = phi i32 [ %and729, %cond.true713 ], [ 0, %cond.false730 ], !dbg !961
  br label %cond.end733, !dbg !961

cond.end733:                                      ; preds = %cond.end731, %cond.true693
  %cond734 = phi i32 [ %and709, %cond.true693 ], [ %cond732, %cond.end731 ], !dbg !961
  br label %cond.end735, !dbg !961

cond.end735:                                      ; preds = %cond.end733, %cond.true673
  %cond736 = phi i32 [ %and689, %cond.true673 ], [ %cond734, %cond.end733 ], !dbg !961
  br label %cond.end737, !dbg !961

cond.end737:                                      ; preds = %cond.end735, %cond.true655
  %cond738 = phi i32 [ %shr, %cond.true655 ], [ %cond736, %cond.end735 ], !dbg !961
  %mul739 = mul nsw i32 %add652, %cond738, !dbg !961
  %437 = load i32, ptr %offset, align 4, !dbg !962
  %add740 = add i32 %437, %mul739, !dbg !962
  store i32 %add740, ptr %offset, align 4, !dbg !962
  br label %for.inc741, !dbg !963

for.inc741:                                       ; preds = %cond.end737
  %438 = load i32, ptr %i, align 4, !dbg !964
  %inc742 = add nsw i32 %438, 1, !dbg !964
  store i32 %inc742, ptr %i, align 4, !dbg !964
  br label %for.cond634, !dbg !965, !llvm.loop !966

for.end743:                                       ; preds = %for.cond634
  store i32 0, ptr %i, align 4, !dbg !968
  br label %for.cond744, !dbg !970

for.cond744:                                      ; preds = %for.inc753, %for.end743
  %439 = load i32, ptr %i, align 4, !dbg !971
  %cmp745 = icmp slt i32 %439, 4, !dbg !973
  br i1 %cmp745, label %for.body747, label %for.end755, !dbg !974

for.body747:                                      ; preds = %for.cond744
  %440 = load ptr, ptr %file.addr, align 8, !dbg !975
  %441 = load i32, ptr %format, align 4, !dbg !977
  %442 = load ptr, ptr %bitmapFont, align 8, !dbg !978
  %bitmapExtra748 = getelementptr inbounds %struct._BitmapFont, ptr %442, i32 0, i32 8, !dbg !979
  %443 = load ptr, ptr %bitmapExtra748, align 8, !dbg !979
  %bitmapsSizes749 = getelementptr inbounds %struct._BitmapExtra, ptr %443, i32 0, i32 2, !dbg !980
  %444 = load i32, ptr %i, align 4, !dbg !981
  %idxprom750 = sext i32 %444 to i64, !dbg !978
  %arrayidx751 = getelementptr inbounds [4 x i32], ptr %bitmapsSizes749, i64 0, i64 %idxprom750, !dbg !978
  %445 = load i32, ptr %arrayidx751, align 4, !dbg !978
  %call752 = call i32 @pcfPutINT32(ptr noundef %440, i32 noundef %441, i32 noundef %445), !dbg !982
  br label %for.inc753, !dbg !983

for.inc753:                                       ; preds = %for.body747
  %446 = load i32, ptr %i, align 4, !dbg !984
  %inc754 = add nsw i32 %446, 1, !dbg !984
  store i32 %inc754, ptr %i, align 4, !dbg !984
  br label %for.cond744, !dbg !985, !llvm.loop !986

for.end755:                                       ; preds = %for.cond744
  store i32 0, ptr %i, align 4, !dbg !988
  br label %for.cond756, !dbg !990

for.cond756:                                      ; preds = %for.inc764, %for.end755
  %447 = load i32, ptr %i, align 4, !dbg !991
  %448 = load ptr, ptr %bitmapFont, align 8, !dbg !993
  %num_chars757 = getelementptr inbounds %struct._BitmapFont, ptr %448, i32 0, i32 1, !dbg !994
  %449 = load i32, ptr %num_chars757, align 4, !dbg !994
  %cmp758 = icmp slt i32 %447, %449, !dbg !995
  br i1 %cmp758, label %for.body760, label %for.end766, !dbg !996

for.body760:                                      ; preds = %for.cond756
  %450 = load ptr, ptr %file.addr, align 8, !dbg !997
  %451 = load i32, ptr %format, align 4, !dbg !998
  %452 = load ptr, ptr %bitmapFont, align 8, !dbg !999
  %metrics761 = getelementptr inbounds %struct._BitmapFont, ptr %452, i32 0, i32 3, !dbg !1000
  %453 = load ptr, ptr %metrics761, align 8, !dbg !1000
  %454 = load i32, ptr %i, align 4, !dbg !1001
  %idxprom762 = sext i32 %454 to i64, !dbg !999
  %arrayidx763 = getelementptr inbounds %struct._CharInfo, ptr %453, i64 %idxprom762, !dbg !999
  call void @pcfPutBitmap(ptr noundef %450, i32 noundef %451, ptr noundef %arrayidx763), !dbg !1002
  br label %for.inc764, !dbg !1002

for.inc764:                                       ; preds = %for.body760
  %455 = load i32, ptr %i, align 4, !dbg !1003
  %inc765 = add nsw i32 %455, 1, !dbg !1003
  store i32 %inc765, ptr %i, align 4, !dbg !1003
  br label %for.cond756, !dbg !1004, !llvm.loop !1005

for.end766:                                       ; preds = %for.cond756
  br label %sw.epilog925, !dbg !1007

sw.bb767:                                         ; preds = %while.end512
  %456 = load ptr, ptr %table, align 8, !dbg !1008
  %format768 = getelementptr inbounds %struct._PCFTable, ptr %456, i32 0, i32 1, !dbg !1008
  %457 = load i32, ptr %format768, align 4, !dbg !1008
  %and769 = and i32 %457, -256, !dbg !1008
  %cmp770 = icmp eq i32 %and769, 256, !dbg !1008
  br i1 %cmp770, label %if.then772, label %if.else786, !dbg !1010

if.then772:                                       ; preds = %sw.bb767
  %458 = load ptr, ptr %file.addr, align 8, !dbg !1011
  %459 = load i32, ptr %format, align 4, !dbg !1013
  %460 = load ptr, ptr %bitmapFont, align 8, !dbg !1014
  %num_chars773 = getelementptr inbounds %struct._BitmapFont, ptr %460, i32 0, i32 1, !dbg !1015
  %461 = load i32, ptr %num_chars773, align 4, !dbg !1015
  %call774 = call i32 @pcfPutINT16(ptr noundef %458, i32 noundef %459, i32 noundef %461), !dbg !1016
  store i32 0, ptr %i, align 4, !dbg !1017
  br label %for.cond775, !dbg !1019

for.cond775:                                      ; preds = %for.inc783, %if.then772
  %462 = load i32, ptr %i, align 4, !dbg !1020
  %463 = load ptr, ptr %bitmapFont, align 8, !dbg !1022
  %num_chars776 = getelementptr inbounds %struct._BitmapFont, ptr %463, i32 0, i32 1, !dbg !1023
  %464 = load i32, ptr %num_chars776, align 4, !dbg !1023
  %cmp777 = icmp slt i32 %462, %464, !dbg !1024
  br i1 %cmp777, label %for.body779, label %for.end785, !dbg !1025

for.body779:                                      ; preds = %for.cond775
  %465 = load ptr, ptr %file.addr, align 8, !dbg !1026
  %466 = load i32, ptr %format, align 4, !dbg !1027
  %467 = load ptr, ptr %bitmapFont, align 8, !dbg !1028
  %ink_metrics780 = getelementptr inbounds %struct._BitmapFont, ptr %467, i32 0, i32 4, !dbg !1029
  %468 = load ptr, ptr %ink_metrics780, align 8, !dbg !1029
  %469 = load i32, ptr %i, align 4, !dbg !1030
  %idxprom781 = sext i32 %469 to i64, !dbg !1028
  %arrayidx782 = getelementptr inbounds %struct.xCharInfo, ptr %468, i64 %idxprom781, !dbg !1028
  call void @pcfPutCompressedMetric(ptr noundef %465, i32 noundef %466, ptr noundef %arrayidx782), !dbg !1031
  br label %for.inc783, !dbg !1031

for.inc783:                                       ; preds = %for.body779
  %470 = load i32, ptr %i, align 4, !dbg !1032
  %inc784 = add nsw i32 %470, 1, !dbg !1032
  store i32 %inc784, ptr %i, align 4, !dbg !1032
  br label %for.cond775, !dbg !1033, !llvm.loop !1034

for.end785:                                       ; preds = %for.cond775
  br label %if.end800, !dbg !1036

if.else786:                                       ; preds = %sw.bb767
  %471 = load ptr, ptr %file.addr, align 8, !dbg !1037
  %472 = load i32, ptr %format, align 4, !dbg !1039
  %473 = load ptr, ptr %bitmapFont, align 8, !dbg !1040
  %num_chars787 = getelementptr inbounds %struct._BitmapFont, ptr %473, i32 0, i32 1, !dbg !1041
  %474 = load i32, ptr %num_chars787, align 4, !dbg !1041
  %call788 = call i32 @pcfPutINT32(ptr noundef %471, i32 noundef %472, i32 noundef %474), !dbg !1042
  store i32 0, ptr %i, align 4, !dbg !1043
  br label %for.cond789, !dbg !1045

for.cond789:                                      ; preds = %for.inc797, %if.else786
  %475 = load i32, ptr %i, align 4, !dbg !1046
  %476 = load ptr, ptr %bitmapFont, align 8, !dbg !1048
  %num_chars790 = getelementptr inbounds %struct._BitmapFont, ptr %476, i32 0, i32 1, !dbg !1049
  %477 = load i32, ptr %num_chars790, align 4, !dbg !1049
  %cmp791 = icmp slt i32 %475, %477, !dbg !1050
  br i1 %cmp791, label %for.body793, label %for.end799, !dbg !1051

for.body793:                                      ; preds = %for.cond789
  %478 = load ptr, ptr %file.addr, align 8, !dbg !1052
  %479 = load i32, ptr %format, align 4, !dbg !1053
  %480 = load ptr, ptr %bitmapFont, align 8, !dbg !1054
  %ink_metrics794 = getelementptr inbounds %struct._BitmapFont, ptr %480, i32 0, i32 4, !dbg !1055
  %481 = load ptr, ptr %ink_metrics794, align 8, !dbg !1055
  %482 = load i32, ptr %i, align 4, !dbg !1056
  %idxprom795 = sext i32 %482 to i64, !dbg !1054
  %arrayidx796 = getelementptr inbounds %struct.xCharInfo, ptr %481, i64 %idxprom795, !dbg !1054
  call void @pcfPutMetric(ptr noundef %478, i32 noundef %479, ptr noundef %arrayidx796), !dbg !1057
  br label %for.inc797, !dbg !1057

for.inc797:                                       ; preds = %for.body793
  %483 = load i32, ptr %i, align 4, !dbg !1058
  %inc798 = add nsw i32 %483, 1, !dbg !1058
  store i32 %inc798, ptr %i, align 4, !dbg !1058
  br label %for.cond789, !dbg !1059, !llvm.loop !1060

for.end799:                                       ; preds = %for.cond789
  br label %if.end800

if.end800:                                        ; preds = %for.end799, %for.end785
  br label %sw.epilog925, !dbg !1062

sw.bb801:                                         ; preds = %while.end512
  %484 = load ptr, ptr %file.addr, align 8, !dbg !1063
  %485 = load i32, ptr %format, align 4, !dbg !1064
  %486 = load ptr, ptr %pFont.addr, align 8, !dbg !1065
  %info802 = getelementptr inbounds %struct._Font, ptr %486, i32 0, i32 1, !dbg !1066
  %firstCol803 = getelementptr inbounds %struct._FontInfo, ptr %info802, i32 0, i32 0, !dbg !1067
  %487 = load i16, ptr %firstCol803, align 8, !dbg !1067
  %conv804 = zext i16 %487 to i32, !dbg !1065
  %call805 = call i32 @pcfPutINT16(ptr noundef %484, i32 noundef %485, i32 noundef %conv804), !dbg !1068
  %488 = load ptr, ptr %file.addr, align 8, !dbg !1069
  %489 = load i32, ptr %format, align 4, !dbg !1070
  %490 = load ptr, ptr %pFont.addr, align 8, !dbg !1071
  %info806 = getelementptr inbounds %struct._Font, ptr %490, i32 0, i32 1, !dbg !1072
  %lastCol807 = getelementptr inbounds %struct._FontInfo, ptr %info806, i32 0, i32 1, !dbg !1073
  %491 = load i16, ptr %lastCol807, align 2, !dbg !1073
  %conv808 = zext i16 %491 to i32, !dbg !1071
  %call809 = call i32 @pcfPutINT16(ptr noundef %488, i32 noundef %489, i32 noundef %conv808), !dbg !1074
  %492 = load ptr, ptr %file.addr, align 8, !dbg !1075
  %493 = load i32, ptr %format, align 4, !dbg !1076
  %494 = load ptr, ptr %pFont.addr, align 8, !dbg !1077
  %info810 = getelementptr inbounds %struct._Font, ptr %494, i32 0, i32 1, !dbg !1078
  %firstRow811 = getelementptr inbounds %struct._FontInfo, ptr %info810, i32 0, i32 2, !dbg !1079
  %495 = load i16, ptr %firstRow811, align 4, !dbg !1079
  %conv812 = zext i16 %495 to i32, !dbg !1077
  %call813 = call i32 @pcfPutINT16(ptr noundef %492, i32 noundef %493, i32 noundef %conv812), !dbg !1080
  %496 = load ptr, ptr %file.addr, align 8, !dbg !1081
  %497 = load i32, ptr %format, align 4, !dbg !1082
  %498 = load ptr, ptr %pFont.addr, align 8, !dbg !1083
  %info814 = getelementptr inbounds %struct._Font, ptr %498, i32 0, i32 1, !dbg !1084
  %lastRow815 = getelementptr inbounds %struct._FontInfo, ptr %info814, i32 0, i32 3, !dbg !1085
  %499 = load i16, ptr %lastRow815, align 2, !dbg !1085
  %conv816 = zext i16 %499 to i32, !dbg !1083
  %call817 = call i32 @pcfPutINT16(ptr noundef %496, i32 noundef %497, i32 noundef %conv816), !dbg !1086
  %500 = load ptr, ptr %file.addr, align 8, !dbg !1087
  %501 = load i32, ptr %format, align 4, !dbg !1088
  %502 = load ptr, ptr %pFont.addr, align 8, !dbg !1089
  %info818 = getelementptr inbounds %struct._Font, ptr %502, i32 0, i32 1, !dbg !1090
  %defaultCh = getelementptr inbounds %struct._FontInfo, ptr %info818, i32 0, i32 4, !dbg !1091
  %503 = load i16, ptr %defaultCh, align 8, !dbg !1091
  %conv819 = zext i16 %503 to i32, !dbg !1089
  %call820 = call i32 @pcfPutINT16(ptr noundef %500, i32 noundef %501, i32 noundef %conv819), !dbg !1092
  store i32 0, ptr %i, align 4, !dbg !1093
  br label %for.cond821, !dbg !1095

for.cond821:                                      ; preds = %for.inc864, %sw.bb801
  %504 = load i32, ptr %i, align 4, !dbg !1096
  %505 = load i32, ptr %nencodings, align 4, !dbg !1098
  %cmp822 = icmp slt i32 %504, %505, !dbg !1099
  br i1 %cmp822, label %for.body824, label %for.end866, !dbg !1100

for.body824:                                      ; preds = %for.cond821
  %506 = load ptr, ptr %bitmapFont, align 8, !dbg !1101
  %encoding = getelementptr inbounds %struct._BitmapFont, ptr %506, i32 0, i32 6, !dbg !1101
  %507 = load ptr, ptr %encoding, align 8, !dbg !1101
  %508 = load i32, ptr %i, align 4, !dbg !1101
  %div = sdiv i32 %508, 128, !dbg !1101
  %idxprom825 = sext i32 %div to i64, !dbg !1101
  %arrayidx826 = getelementptr inbounds ptr, ptr %507, i64 %idxprom825, !dbg !1101
  %509 = load ptr, ptr %arrayidx826, align 8, !dbg !1101
  %tobool827 = icmp ne ptr %509, null, !dbg !1101
  br i1 %tobool827, label %cond.true828, label %cond.false836, !dbg !1104

cond.true828:                                     ; preds = %for.body824
  %510 = load ptr, ptr %bitmapFont, align 8, !dbg !1101
  %encoding829 = getelementptr inbounds %struct._BitmapFont, ptr %510, i32 0, i32 6, !dbg !1101
  %511 = load ptr, ptr %encoding829, align 8, !dbg !1101
  %512 = load i32, ptr %i, align 4, !dbg !1101
  %div830 = sdiv i32 %512, 128, !dbg !1101
  %idxprom831 = sext i32 %div830 to i64, !dbg !1101
  %arrayidx832 = getelementptr inbounds ptr, ptr %511, i64 %idxprom831, !dbg !1101
  %513 = load ptr, ptr %arrayidx832, align 8, !dbg !1101
  %514 = load i32, ptr %i, align 4, !dbg !1101
  %rem = srem i32 %514, 128, !dbg !1101
  %idxprom833 = sext i32 %rem to i64, !dbg !1101
  %arrayidx834 = getelementptr inbounds ptr, ptr %513, i64 %idxprom833, !dbg !1101
  %515 = load ptr, ptr %arrayidx834, align 8, !dbg !1101
  %tobool835 = icmp ne ptr %515, null, !dbg !1101
  br i1 %tobool835, label %if.then837, label %if.else861, !dbg !1101

cond.false836:                                    ; preds = %for.body824
  br i1 false, label %if.then837, label %if.else861, !dbg !1104

if.then837:                                       ; preds = %cond.false836, %cond.true828
  %516 = load ptr, ptr %file.addr, align 8, !dbg !1105
  %517 = load i32, ptr %format, align 4, !dbg !1106
  %518 = load ptr, ptr %bitmapFont, align 8, !dbg !1107
  %encoding838 = getelementptr inbounds %struct._BitmapFont, ptr %518, i32 0, i32 6, !dbg !1107
  %519 = load ptr, ptr %encoding838, align 8, !dbg !1107
  %520 = load i32, ptr %i, align 4, !dbg !1107
  %div839 = sdiv i32 %520, 128, !dbg !1107
  %idxprom840 = sext i32 %div839 to i64, !dbg !1107
  %arrayidx841 = getelementptr inbounds ptr, ptr %519, i64 %idxprom840, !dbg !1107
  %521 = load ptr, ptr %arrayidx841, align 8, !dbg !1107
  %tobool842 = icmp ne ptr %521, null, !dbg !1107
  br i1 %tobool842, label %cond.true843, label %cond.false851, !dbg !1107

cond.true843:                                     ; preds = %if.then837
  %522 = load ptr, ptr %bitmapFont, align 8, !dbg !1107
  %encoding844 = getelementptr inbounds %struct._BitmapFont, ptr %522, i32 0, i32 6, !dbg !1107
  %523 = load ptr, ptr %encoding844, align 8, !dbg !1107
  %524 = load i32, ptr %i, align 4, !dbg !1107
  %div845 = sdiv i32 %524, 128, !dbg !1107
  %idxprom846 = sext i32 %div845 to i64, !dbg !1107
  %arrayidx847 = getelementptr inbounds ptr, ptr %523, i64 %idxprom846, !dbg !1107
  %525 = load ptr, ptr %arrayidx847, align 8, !dbg !1107
  %526 = load i32, ptr %i, align 4, !dbg !1107
  %rem848 = srem i32 %526, 128, !dbg !1107
  %idxprom849 = sext i32 %rem848 to i64, !dbg !1107
  %arrayidx850 = getelementptr inbounds ptr, ptr %525, i64 %idxprom849, !dbg !1107
  %527 = load ptr, ptr %arrayidx850, align 8, !dbg !1107
  br label %cond.end852, !dbg !1107

cond.false851:                                    ; preds = %if.then837
  br label %cond.end852, !dbg !1107

cond.end852:                                      ; preds = %cond.false851, %cond.true843
  %cond853 = phi ptr [ %527, %cond.true843 ], [ null, %cond.false851 ], !dbg !1107
  %528 = load ptr, ptr %bitmapFont, align 8, !dbg !1108
  %metrics854 = getelementptr inbounds %struct._BitmapFont, ptr %528, i32 0, i32 3, !dbg !1109
  %529 = load ptr, ptr %metrics854, align 8, !dbg !1109
  %sub.ptr.lhs.cast855 = ptrtoint ptr %cond853 to i64, !dbg !1110
  %sub.ptr.rhs.cast856 = ptrtoint ptr %529 to i64, !dbg !1110
  %sub.ptr.sub857 = sub i64 %sub.ptr.lhs.cast855, %sub.ptr.rhs.cast856, !dbg !1110
  %sub.ptr.div858 = sdiv exact i64 %sub.ptr.sub857, 24, !dbg !1110
  %conv859 = trunc i64 %sub.ptr.div858 to i32, !dbg !1107
  %call860 = call i32 @pcfPutINT16(ptr noundef %516, i32 noundef %517, i32 noundef %conv859), !dbg !1111
  br label %if.end863, !dbg !1111

if.else861:                                       ; preds = %cond.false836, %cond.true828
  %530 = load ptr, ptr %file.addr, align 8, !dbg !1112
  %531 = load i32, ptr %format, align 4, !dbg !1113
  %call862 = call i32 @pcfPutINT16(ptr noundef %530, i32 noundef %531, i32 noundef 65535), !dbg !1114
  br label %if.end863

if.end863:                                        ; preds = %if.else861, %cond.end852
  br label %for.inc864, !dbg !1115

for.inc864:                                       ; preds = %if.end863
  %532 = load i32, ptr %i, align 4, !dbg !1116
  %inc865 = add nsw i32 %532, 1, !dbg !1116
  store i32 %inc865, ptr %i, align 4, !dbg !1116
  br label %for.cond821, !dbg !1117, !llvm.loop !1118

for.end866:                                       ; preds = %for.cond821
  br label %sw.epilog925, !dbg !1120

sw.bb867:                                         ; preds = %while.end512
  %533 = load ptr, ptr %file.addr, align 8, !dbg !1121
  %534 = load i32, ptr %format, align 4, !dbg !1122
  %535 = load ptr, ptr %bitmapFont, align 8, !dbg !1123
  %num_chars868 = getelementptr inbounds %struct._BitmapFont, ptr %535, i32 0, i32 1, !dbg !1124
  %536 = load i32, ptr %num_chars868, align 4, !dbg !1124
  %call869 = call i32 @pcfPutINT32(ptr noundef %533, i32 noundef %534, i32 noundef %536), !dbg !1125
  store i32 0, ptr %i, align 4, !dbg !1126
  br label %for.cond870, !dbg !1128

for.cond870:                                      ; preds = %for.inc879, %sw.bb867
  %537 = load i32, ptr %i, align 4, !dbg !1129
  %538 = load ptr, ptr %bitmapFont, align 8, !dbg !1131
  %num_chars871 = getelementptr inbounds %struct._BitmapFont, ptr %538, i32 0, i32 1, !dbg !1132
  %539 = load i32, ptr %num_chars871, align 4, !dbg !1132
  %cmp872 = icmp slt i32 %537, %539, !dbg !1133
  br i1 %cmp872, label %for.body874, label %for.end881, !dbg !1134

for.body874:                                      ; preds = %for.cond870
  %540 = load ptr, ptr %file.addr, align 8, !dbg !1135
  %541 = load i32, ptr %format, align 4, !dbg !1136
  %542 = load ptr, ptr %bitmapFont, align 8, !dbg !1137
  %bitmapExtra875 = getelementptr inbounds %struct._BitmapFont, ptr %542, i32 0, i32 8, !dbg !1138
  %543 = load ptr, ptr %bitmapExtra875, align 8, !dbg !1138
  %sWidths = getelementptr inbounds %struct._BitmapExtra, ptr %543, i32 0, i32 1, !dbg !1139
  %544 = load ptr, ptr %sWidths, align 8, !dbg !1139
  %545 = load i32, ptr %i, align 4, !dbg !1140
  %idxprom876 = sext i32 %545 to i64, !dbg !1137
  %arrayidx877 = getelementptr inbounds i32, ptr %544, i64 %idxprom876, !dbg !1137
  %546 = load i32, ptr %arrayidx877, align 4, !dbg !1137
  %call878 = call i32 @pcfPutINT32(ptr noundef %540, i32 noundef %541, i32 noundef %546), !dbg !1141
  br label %for.inc879, !dbg !1141

for.inc879:                                       ; preds = %for.body874
  %547 = load i32, ptr %i, align 4, !dbg !1142
  %inc880 = add nsw i32 %547, 1, !dbg !1142
  store i32 %inc880, ptr %i, align 4, !dbg !1142
  br label %for.cond870, !dbg !1143, !llvm.loop !1144

for.end881:                                       ; preds = %for.cond870
  br label %sw.epilog925, !dbg !1146

sw.bb882:                                         ; preds = %while.end512
  %548 = load ptr, ptr %file.addr, align 8, !dbg !1147
  %549 = load i32, ptr %format, align 4, !dbg !1148
  %550 = load ptr, ptr %bitmapFont, align 8, !dbg !1149
  %num_chars883 = getelementptr inbounds %struct._BitmapFont, ptr %550, i32 0, i32 1, !dbg !1150
  %551 = load i32, ptr %num_chars883, align 4, !dbg !1150
  %call884 = call i32 @pcfPutINT32(ptr noundef %548, i32 noundef %549, i32 noundef %551), !dbg !1151
  store i32 0, ptr %offset, align 4, !dbg !1152
  store i32 0, ptr %i, align 4, !dbg !1153
  br label %for.cond885, !dbg !1155

for.cond885:                                      ; preds = %for.inc901, %sw.bb882
  %552 = load i32, ptr %i, align 4, !dbg !1156
  %553 = load ptr, ptr %bitmapFont, align 8, !dbg !1158
  %num_chars886 = getelementptr inbounds %struct._BitmapFont, ptr %553, i32 0, i32 1, !dbg !1159
  %554 = load i32, ptr %num_chars886, align 4, !dbg !1159
  %cmp887 = icmp slt i32 %552, %554, !dbg !1160
  br i1 %cmp887, label %for.body889, label %for.end903, !dbg !1161

for.body889:                                      ; preds = %for.cond885
  %555 = load ptr, ptr %file.addr, align 8, !dbg !1162
  %556 = load i32, ptr %format, align 4, !dbg !1164
  %557 = load i32, ptr %offset, align 4, !dbg !1165
  %call890 = call i32 @pcfPutINT32(ptr noundef %555, i32 noundef %556, i32 noundef %557), !dbg !1166
  %558 = load ptr, ptr %bitmapFont, align 8, !dbg !1167
  %bitmapExtra891 = getelementptr inbounds %struct._BitmapFont, ptr %558, i32 0, i32 8, !dbg !1168
  %559 = load ptr, ptr %bitmapExtra891, align 8, !dbg !1168
  %glyphNames892 = getelementptr inbounds %struct._BitmapExtra, ptr %559, i32 0, i32 0, !dbg !1169
  %560 = load ptr, ptr %glyphNames892, align 8, !dbg !1169
  %561 = load i32, ptr %i, align 4, !dbg !1170
  %idxprom893 = sext i32 %561 to i64, !dbg !1167
  %arrayidx894 = getelementptr inbounds i64, ptr %560, i64 %idxprom893, !dbg !1167
  %562 = load i64, ptr %arrayidx894, align 8, !dbg !1167
  %call895 = call ptr @pcfNameForAtom(i64 noundef %562), !dbg !1171
  %call896 = call i64 @strlen(ptr noundef %call895) #7, !dbg !1172
  %add897 = add i64 %call896, 1, !dbg !1173
  %563 = load i32, ptr %offset, align 4, !dbg !1174
  %conv898 = zext i32 %563 to i64, !dbg !1174
  %add899 = add i64 %conv898, %add897, !dbg !1174
  %conv900 = trunc i64 %add899 to i32, !dbg !1174
  store i32 %conv900, ptr %offset, align 4, !dbg !1174
  br label %for.inc901, !dbg !1175

for.inc901:                                       ; preds = %for.body889
  %564 = load i32, ptr %i, align 4, !dbg !1176
  %inc902 = add nsw i32 %564, 1, !dbg !1176
  store i32 %inc902, ptr %i, align 4, !dbg !1176
  br label %for.cond885, !dbg !1177, !llvm.loop !1178

for.end903:                                       ; preds = %for.cond885
  %565 = load ptr, ptr %file.addr, align 8, !dbg !1180
  %566 = load i32, ptr %format, align 4, !dbg !1181
  %567 = load i32, ptr %offset, align 4, !dbg !1182
  %call904 = call i32 @pcfPutINT32(ptr noundef %565, i32 noundef %566, i32 noundef %567), !dbg !1183
  store i32 0, ptr %i, align 4, !dbg !1184
  br label %for.cond905, !dbg !1186

for.cond905:                                      ; preds = %for.inc919, %for.end903
  %568 = load i32, ptr %i, align 4, !dbg !1187
  %569 = load ptr, ptr %bitmapFont, align 8, !dbg !1189
  %num_chars906 = getelementptr inbounds %struct._BitmapFont, ptr %569, i32 0, i32 1, !dbg !1190
  %570 = load i32, ptr %num_chars906, align 4, !dbg !1190
  %cmp907 = icmp slt i32 %568, %570, !dbg !1191
  br i1 %cmp907, label %for.body909, label %for.end921, !dbg !1192

for.body909:                                      ; preds = %for.cond905
  %571 = load ptr, ptr %bitmapFont, align 8, !dbg !1193
  %bitmapExtra910 = getelementptr inbounds %struct._BitmapFont, ptr %571, i32 0, i32 8, !dbg !1195
  %572 = load ptr, ptr %bitmapExtra910, align 8, !dbg !1195
  %glyphNames911 = getelementptr inbounds %struct._BitmapExtra, ptr %572, i32 0, i32 0, !dbg !1196
  %573 = load ptr, ptr %glyphNames911, align 8, !dbg !1196
  %574 = load i32, ptr %i, align 4, !dbg !1197
  %idxprom912 = sext i32 %574 to i64, !dbg !1193
  %arrayidx913 = getelementptr inbounds i64, ptr %573, i64 %idxprom912, !dbg !1193
  %575 = load i64, ptr %arrayidx913, align 8, !dbg !1193
  %call914 = call ptr @pcfNameForAtom(i64 noundef %575), !dbg !1198
  store ptr %call914, ptr %atom_name, align 8, !dbg !1199
  %576 = load ptr, ptr %file.addr, align 8, !dbg !1200
  %577 = load ptr, ptr %atom_name, align 8, !dbg !1201
  %578 = load ptr, ptr %atom_name, align 8, !dbg !1202
  %call915 = call i64 @strlen(ptr noundef %578) #7, !dbg !1203
  %add916 = add i64 %call915, 1, !dbg !1204
  %conv917 = trunc i64 %add916 to i32, !dbg !1203
  %call918 = call i32 @pcfWrite(ptr noundef %576, ptr noundef %577, i32 noundef %conv917), !dbg !1205
  br label %for.inc919, !dbg !1206

for.inc919:                                       ; preds = %for.body909
  %579 = load i32, ptr %i, align 4, !dbg !1207
  %inc920 = add nsw i32 %579, 1, !dbg !1207
  store i32 %inc920, ptr %i, align 4, !dbg !1207
  br label %for.cond905, !dbg !1208, !llvm.loop !1209

for.end921:                                       ; preds = %for.cond905
  br label %sw.epilog925, !dbg !1211

sw.bb922:                                         ; preds = %while.end512
  %580 = load ptr, ptr %file.addr, align 8, !dbg !1212
  %581 = load ptr, ptr %table, align 8, !dbg !1213
  %format923 = getelementptr inbounds %struct._PCFTable, ptr %581, i32 0, i32 1, !dbg !1214
  %582 = load i32, ptr %format923, align 4, !dbg !1214
  %583 = load ptr, ptr %pFont.addr, align 8, !dbg !1215
  %info924 = getelementptr inbounds %struct._Font, ptr %583, i32 0, i32 1, !dbg !1216
  call void @pcfPutAccel(ptr noundef %580, i32 noundef %582, ptr noundef %info924), !dbg !1217
  br label %sw.epilog925, !dbg !1218

sw.epilog925:                                     ; preds = %while.end512, %sw.bb922, %for.end921, %for.end881, %for.end866, %if.end800, %for.end766, %if.end628, %sw.bb590, %for.end589
  br label %for.inc926, !dbg !1219

for.inc926:                                       ; preds = %sw.epilog925
  %584 = load i32, ptr %cur_table, align 4, !dbg !1220
  %inc927 = add nsw i32 %584, 1, !dbg !1220
  store i32 %inc927, ptr %cur_table, align 4, !dbg !1220
  %585 = load ptr, ptr %table, align 8, !dbg !1221
  %incdec.ptr928 = getelementptr inbounds %struct._PCFTable, ptr %585, i32 1, !dbg !1221
  store ptr %incdec.ptr928, ptr %table, align 8, !dbg !1221
  br label %for.cond495, !dbg !1222, !llvm.loop !1223

for.end929:                                       ; preds = %for.cond495
  %586 = load ptr, ptr %offsetProps, align 8, !dbg !1225
  call void @free(ptr noundef %586) #6, !dbg !1226
  store i32 85, ptr %retval, align 4, !dbg !1227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1227

cleanup:                                          ; preds = %for.end929, %if.then502, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %glyph) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %atom_name) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %prop_pad) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %offsetProps) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %header_size) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %nencodings) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitmapFont) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %ink_maxbounds) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %ink_minbounds) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxbounds) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %minbounds) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %glyph_string_size) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %prop_string_size) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_table) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %format) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %ntables) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #6, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 512, ptr %tables) #6, !dbg !1228
  %587 = load i32, ptr %retval, align 4, !dbg !1228
  ret i32 %587, !dbg !1228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !1229 ptr @reallocarray(ptr noundef, i64 noundef, i64 noundef) #2

declare !dbg !1235 void @pcfError(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1238 i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @pcfNameForAtom(i64 noundef %a) #0 !dbg !1242 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  %0 = load i64, ptr %a.addr, align 8, !dbg !1248
  %call = call ptr @__libxfont__NameForAtom(i64 noundef %0), !dbg !1249
  ret ptr %call, !dbg !1250
}

; Function Attrs: nounwind uwtable
define internal void @pcfWriteTOC(ptr noundef %file, ptr noundef %table, i32 noundef %count) #0 !dbg !1251 {
entry:
  %file.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %version = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1257, metadata !DIExpression()), !dbg !1262
  store ptr %table, ptr %table.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !1258, metadata !DIExpression()), !dbg !1263
  store i32 %count, ptr %count.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1259, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #6, !dbg !1265
  tail call void @llvm.dbg.declare(metadata ptr %version, metadata !1260, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1267
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1261, metadata !DIExpression()), !dbg !1268
  store i32 1885562369, ptr %version, align 4, !dbg !1269
  %0 = load ptr, ptr %file.addr, align 8, !dbg !1270
  %1 = load i32, ptr %version, align 4, !dbg !1271
  %call = call i32 @pcfPutLSB32(ptr noundef %0, i32 noundef %1), !dbg !1272
  %2 = load ptr, ptr %file.addr, align 8, !dbg !1273
  %3 = load i32, ptr %count.addr, align 4, !dbg !1274
  %call1 = call i32 @pcfPutLSB32(ptr noundef %2, i32 noundef %3), !dbg !1275
  store i32 0, ptr %i, align 4, !dbg !1276
  br label %for.cond, !dbg !1278

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !1279
  %5 = load i32, ptr %count.addr, align 4, !dbg !1281
  %cmp = icmp slt i32 %4, %5, !dbg !1282
  br i1 %cmp, label %for.body, label %for.end, !dbg !1283

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %file.addr, align 8, !dbg !1284
  %7 = load ptr, ptr %table.addr, align 8, !dbg !1286
  %type = getelementptr inbounds %struct._PCFTable, ptr %7, i32 0, i32 0, !dbg !1287
  %8 = load i32, ptr %type, align 4, !dbg !1287
  %call2 = call i32 @pcfPutLSB32(ptr noundef %6, i32 noundef %8), !dbg !1288
  %9 = load ptr, ptr %file.addr, align 8, !dbg !1289
  %10 = load ptr, ptr %table.addr, align 8, !dbg !1290
  %format = getelementptr inbounds %struct._PCFTable, ptr %10, i32 0, i32 1, !dbg !1291
  %11 = load i32, ptr %format, align 4, !dbg !1291
  %call3 = call i32 @pcfPutLSB32(ptr noundef %9, i32 noundef %11), !dbg !1292
  %12 = load ptr, ptr %file.addr, align 8, !dbg !1293
  %13 = load ptr, ptr %table.addr, align 8, !dbg !1294
  %size = getelementptr inbounds %struct._PCFTable, ptr %13, i32 0, i32 2, !dbg !1295
  %14 = load i32, ptr %size, align 4, !dbg !1295
  %call4 = call i32 @pcfPutLSB32(ptr noundef %12, i32 noundef %14), !dbg !1296
  %15 = load ptr, ptr %file.addr, align 8, !dbg !1297
  %16 = load ptr, ptr %table.addr, align 8, !dbg !1298
  %offset = getelementptr inbounds %struct._PCFTable, ptr %16, i32 0, i32 3, !dbg !1299
  %17 = load i32, ptr %offset, align 4, !dbg !1299
  %call5 = call i32 @pcfPutLSB32(ptr noundef %15, i32 noundef %17), !dbg !1300
  %18 = load ptr, ptr %table.addr, align 8, !dbg !1301
  %incdec.ptr = getelementptr inbounds %struct._PCFTable, ptr %18, i32 1, !dbg !1301
  store ptr %incdec.ptr, ptr %table.addr, align 8, !dbg !1301
  br label %for.inc, !dbg !1302

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !dbg !1303
  %inc = add nsw i32 %19, 1, !dbg !1303
  store i32 %inc, ptr %i, align 4, !dbg !1303
  br label %for.cond, !dbg !1304, !llvm.loop !1305

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #6, !dbg !1307
  ret void, !dbg !1307
}

declare !dbg !1308 i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare !dbg !1313 void @free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @pcfPutINT8(ptr noundef %file, i32 noundef %format, i32 noundef %c) #0 !dbg !1316 {
entry:
  %file.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1320, metadata !DIExpression()), !dbg !1323
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1321, metadata !DIExpression()), !dbg !1324
  store i32 %c, ptr %c.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1322, metadata !DIExpression()), !dbg !1325
  %0 = load i32, ptr @current_position, align 4, !dbg !1326
  %add = add i32 %0, 1, !dbg !1326
  store i32 %add, ptr @current_position, align 4, !dbg !1326
  %1 = load ptr, ptr %file.addr, align 8, !dbg !1327
  %left = getelementptr inbounds %struct._buffile, ptr %1, i32 0, i32 1, !dbg !1327
  %2 = load i32, ptr %left, align 8, !dbg !1327
  %dec = add nsw i32 %2, -1, !dbg !1327
  store i32 %dec, ptr %left, align 8, !dbg !1327
  %tobool = icmp ne i32 %dec, 0, !dbg !1327
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1327

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %c.addr, align 4, !dbg !1327
  %conv = trunc i32 %3 to i8, !dbg !1327
  %4 = load ptr, ptr %file.addr, align 8, !dbg !1327
  %bufp = getelementptr inbounds %struct._buffile, ptr %4, i32 0, i32 0, !dbg !1327
  %5 = load ptr, ptr %bufp, align 8, !dbg !1327
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !1327
  store ptr %incdec.ptr, ptr %bufp, align 8, !dbg !1327
  store i8 %conv, ptr %5, align 1, !dbg !1327
  %conv1 = zext i8 %conv to i32, !dbg !1327
  br label %cond.end, !dbg !1327

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %file.addr, align 8, !dbg !1327
  %output = getelementptr inbounds %struct._buffile, ptr %6, i32 0, i32 5, !dbg !1327
  %7 = load ptr, ptr %output, align 8, !dbg !1327
  %8 = load i32, ptr %c.addr, align 4, !dbg !1327
  %conv2 = trunc i32 %8 to i8, !dbg !1327
  %conv3 = zext i8 %conv2 to i32, !dbg !1327
  %9 = load ptr, ptr %file.addr, align 8, !dbg !1327
  %call = call i32 %7(i32 noundef %conv3, ptr noundef %9), !dbg !1327
  br label %cond.end, !dbg !1327

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv1, %cond.true ], [ %call, %cond.false ], !dbg !1327
  ret i32 %cond, !dbg !1328
}

; Function Attrs: nounwind uwtable
define internal i32 @pcfPutLSB32(ptr noundef %file, i32 noundef %c) #0 !dbg !1329 {
entry:
  %file.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1333, metadata !DIExpression()), !dbg !1335
  store i32 %c, ptr %c.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1334, metadata !DIExpression()), !dbg !1336
  %0 = load i32, ptr @current_position, align 4, !dbg !1337
  %add = add i32 %0, 4, !dbg !1337
  store i32 %add, ptr @current_position, align 4, !dbg !1337
  %1 = load ptr, ptr %file.addr, align 8, !dbg !1338
  %left = getelementptr inbounds %struct._buffile, ptr %1, i32 0, i32 1, !dbg !1338
  %2 = load i32, ptr %left, align 8, !dbg !1338
  %dec = add nsw i32 %2, -1, !dbg !1338
  store i32 %dec, ptr %left, align 8, !dbg !1338
  %tobool = icmp ne i32 %dec, 0, !dbg !1338
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1338

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %c.addr, align 4, !dbg !1338
  %conv = trunc i32 %3 to i8, !dbg !1338
  %4 = load ptr, ptr %file.addr, align 8, !dbg !1338
  %bufp = getelementptr inbounds %struct._buffile, ptr %4, i32 0, i32 0, !dbg !1338
  %5 = load ptr, ptr %bufp, align 8, !dbg !1338
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !1338
  store ptr %incdec.ptr, ptr %bufp, align 8, !dbg !1338
  store i8 %conv, ptr %5, align 1, !dbg !1338
  %conv1 = zext i8 %conv to i32, !dbg !1338
  br label %cond.end, !dbg !1338

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %file.addr, align 8, !dbg !1338
  %output = getelementptr inbounds %struct._buffile, ptr %6, i32 0, i32 5, !dbg !1338
  %7 = load ptr, ptr %output, align 8, !dbg !1338
  %8 = load i32, ptr %c.addr, align 4, !dbg !1338
  %conv2 = trunc i32 %8 to i8, !dbg !1338
  %conv3 = zext i8 %conv2 to i32, !dbg !1338
  %9 = load ptr, ptr %file.addr, align 8, !dbg !1338
  %call = call i32 %7(i32 noundef %conv3, ptr noundef %9), !dbg !1338
  br label %cond.end, !dbg !1338

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv1, %cond.true ], [ %call, %cond.false ], !dbg !1338
  %10 = load ptr, ptr %file.addr, align 8, !dbg !1339
  %left4 = getelementptr inbounds %struct._buffile, ptr %10, i32 0, i32 1, !dbg !1339
  %11 = load i32, ptr %left4, align 8, !dbg !1339
  %dec5 = add nsw i32 %11, -1, !dbg !1339
  store i32 %dec5, ptr %left4, align 8, !dbg !1339
  %tobool6 = icmp ne i32 %dec5, 0, !dbg !1339
  br i1 %tobool6, label %cond.true7, label %cond.false12, !dbg !1339

cond.true7:                                       ; preds = %cond.end
  %12 = load i32, ptr %c.addr, align 4, !dbg !1339
  %shr = ashr i32 %12, 8, !dbg !1339
  %conv8 = trunc i32 %shr to i8, !dbg !1339
  %13 = load ptr, ptr %file.addr, align 8, !dbg !1339
  %bufp9 = getelementptr inbounds %struct._buffile, ptr %13, i32 0, i32 0, !dbg !1339
  %14 = load ptr, ptr %bufp9, align 8, !dbg !1339
  %incdec.ptr10 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !1339
  store ptr %incdec.ptr10, ptr %bufp9, align 8, !dbg !1339
  store i8 %conv8, ptr %14, align 1, !dbg !1339
  %conv11 = zext i8 %conv8 to i32, !dbg !1339
  br label %cond.end18, !dbg !1339

cond.false12:                                     ; preds = %cond.end
  %15 = load ptr, ptr %file.addr, align 8, !dbg !1339
  %output13 = getelementptr inbounds %struct._buffile, ptr %15, i32 0, i32 5, !dbg !1339
  %16 = load ptr, ptr %output13, align 8, !dbg !1339
  %17 = load i32, ptr %c.addr, align 4, !dbg !1339
  %shr14 = ashr i32 %17, 8, !dbg !1339
  %conv15 = trunc i32 %shr14 to i8, !dbg !1339
  %conv16 = zext i8 %conv15 to i32, !dbg !1339
  %18 = load ptr, ptr %file.addr, align 8, !dbg !1339
  %call17 = call i32 %16(i32 noundef %conv16, ptr noundef %18), !dbg !1339
  br label %cond.end18, !dbg !1339

cond.end18:                                       ; preds = %cond.false12, %cond.true7
  %cond19 = phi i32 [ %conv11, %cond.true7 ], [ %call17, %cond.false12 ], !dbg !1339
  %19 = load ptr, ptr %file.addr, align 8, !dbg !1340
  %left20 = getelementptr inbounds %struct._buffile, ptr %19, i32 0, i32 1, !dbg !1340
  %20 = load i32, ptr %left20, align 8, !dbg !1340
  %dec21 = add nsw i32 %20, -1, !dbg !1340
  store i32 %dec21, ptr %left20, align 8, !dbg !1340
  %tobool22 = icmp ne i32 %dec21, 0, !dbg !1340
  br i1 %tobool22, label %cond.true23, label %cond.false29, !dbg !1340

cond.true23:                                      ; preds = %cond.end18
  %21 = load i32, ptr %c.addr, align 4, !dbg !1340
  %shr24 = ashr i32 %21, 16, !dbg !1340
  %conv25 = trunc i32 %shr24 to i8, !dbg !1340
  %22 = load ptr, ptr %file.addr, align 8, !dbg !1340
  %bufp26 = getelementptr inbounds %struct._buffile, ptr %22, i32 0, i32 0, !dbg !1340
  %23 = load ptr, ptr %bufp26, align 8, !dbg !1340
  %incdec.ptr27 = getelementptr inbounds i8, ptr %23, i32 1, !dbg !1340
  store ptr %incdec.ptr27, ptr %bufp26, align 8, !dbg !1340
  store i8 %conv25, ptr %23, align 1, !dbg !1340
  %conv28 = zext i8 %conv25 to i32, !dbg !1340
  br label %cond.end35, !dbg !1340

cond.false29:                                     ; preds = %cond.end18
  %24 = load ptr, ptr %file.addr, align 8, !dbg !1340
  %output30 = getelementptr inbounds %struct._buffile, ptr %24, i32 0, i32 5, !dbg !1340
  %25 = load ptr, ptr %output30, align 8, !dbg !1340
  %26 = load i32, ptr %c.addr, align 4, !dbg !1340
  %shr31 = ashr i32 %26, 16, !dbg !1340
  %conv32 = trunc i32 %shr31 to i8, !dbg !1340
  %conv33 = zext i8 %conv32 to i32, !dbg !1340
  %27 = load ptr, ptr %file.addr, align 8, !dbg !1340
  %call34 = call i32 %25(i32 noundef %conv33, ptr noundef %27), !dbg !1340
  br label %cond.end35, !dbg !1340

cond.end35:                                       ; preds = %cond.false29, %cond.true23
  %cond36 = phi i32 [ %conv28, %cond.true23 ], [ %call34, %cond.false29 ], !dbg !1340
  %28 = load ptr, ptr %file.addr, align 8, !dbg !1341
  %left37 = getelementptr inbounds %struct._buffile, ptr %28, i32 0, i32 1, !dbg !1341
  %29 = load i32, ptr %left37, align 8, !dbg !1341
  %dec38 = add nsw i32 %29, -1, !dbg !1341
  store i32 %dec38, ptr %left37, align 8, !dbg !1341
  %tobool39 = icmp ne i32 %dec38, 0, !dbg !1341
  br i1 %tobool39, label %cond.true40, label %cond.false46, !dbg !1341

cond.true40:                                      ; preds = %cond.end35
  %30 = load i32, ptr %c.addr, align 4, !dbg !1341
  %shr41 = ashr i32 %30, 24, !dbg !1341
  %conv42 = trunc i32 %shr41 to i8, !dbg !1341
  %31 = load ptr, ptr %file.addr, align 8, !dbg !1341
  %bufp43 = getelementptr inbounds %struct._buffile, ptr %31, i32 0, i32 0, !dbg !1341
  %32 = load ptr, ptr %bufp43, align 8, !dbg !1341
  %incdec.ptr44 = getelementptr inbounds i8, ptr %32, i32 1, !dbg !1341
  store ptr %incdec.ptr44, ptr %bufp43, align 8, !dbg !1341
  store i8 %conv42, ptr %32, align 1, !dbg !1341
  %conv45 = zext i8 %conv42 to i32, !dbg !1341
  br label %cond.end52, !dbg !1341

cond.false46:                                     ; preds = %cond.end35
  %33 = load ptr, ptr %file.addr, align 8, !dbg !1341
  %output47 = getelementptr inbounds %struct._buffile, ptr %33, i32 0, i32 5, !dbg !1341
  %34 = load ptr, ptr %output47, align 8, !dbg !1341
  %35 = load i32, ptr %c.addr, align 4, !dbg !1341
  %shr48 = ashr i32 %35, 24, !dbg !1341
  %conv49 = trunc i32 %shr48 to i8, !dbg !1341
  %conv50 = zext i8 %conv49 to i32, !dbg !1341
  %36 = load ptr, ptr %file.addr, align 8, !dbg !1341
  %call51 = call i32 %34(i32 noundef %conv50, ptr noundef %36), !dbg !1341
  br label %cond.end52, !dbg !1341

cond.end52:                                       ; preds = %cond.false46, %cond.true40
  %cond53 = phi i32 [ %conv45, %cond.true40 ], [ %call51, %cond.false46 ], !dbg !1341
  ret i32 %cond53, !dbg !1342
}

; Function Attrs: nounwind uwtable
define internal i32 @pcfPutINT32(ptr noundef %file, i32 noundef %format, i32 noundef %c) #0 !dbg !1343 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1345, metadata !DIExpression()), !dbg !1348
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1346, metadata !DIExpression()), !dbg !1349
  store i32 %c, ptr %c.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1347, metadata !DIExpression()), !dbg !1350
  %0 = load i32, ptr @current_position, align 4, !dbg !1351
  %add = add i32 %0, 4, !dbg !1351
  store i32 %add, ptr @current_position, align 4, !dbg !1351
  %1 = load i32, ptr %format.addr, align 4, !dbg !1352
  %and = and i32 %1, 4, !dbg !1352
  %tobool = icmp ne i32 %and, 0, !dbg !1352
  %2 = zext i1 %tobool to i64, !dbg !1352
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !1352
  %cmp = icmp eq i32 %cond, 1, !dbg !1354
  br i1 %cmp, label %if.then, label %if.else, !dbg !1355

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !1356
  %left = getelementptr inbounds %struct._buffile, ptr %3, i32 0, i32 1, !dbg !1356
  %4 = load i32, ptr %left, align 8, !dbg !1356
  %dec = add nsw i32 %4, -1, !dbg !1356
  store i32 %dec, ptr %left, align 8, !dbg !1356
  %tobool1 = icmp ne i32 %dec, 0, !dbg !1356
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1356

cond.true:                                        ; preds = %if.then
  %5 = load i32, ptr %c.addr, align 4, !dbg !1356
  %shr = ashr i32 %5, 24, !dbg !1356
  %conv = trunc i32 %shr to i8, !dbg !1356
  %6 = load ptr, ptr %file.addr, align 8, !dbg !1356
  %bufp = getelementptr inbounds %struct._buffile, ptr %6, i32 0, i32 0, !dbg !1356
  %7 = load ptr, ptr %bufp, align 8, !dbg !1356
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !1356
  store ptr %incdec.ptr, ptr %bufp, align 8, !dbg !1356
  store i8 %conv, ptr %7, align 1, !dbg !1356
  %conv2 = zext i8 %conv to i32, !dbg !1356
  br label %cond.end, !dbg !1356

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %file.addr, align 8, !dbg !1356
  %output = getelementptr inbounds %struct._buffile, ptr %8, i32 0, i32 5, !dbg !1356
  %9 = load ptr, ptr %output, align 8, !dbg !1356
  %10 = load i32, ptr %c.addr, align 4, !dbg !1356
  %shr3 = ashr i32 %10, 24, !dbg !1356
  %conv4 = trunc i32 %shr3 to i8, !dbg !1356
  %conv5 = zext i8 %conv4 to i32, !dbg !1356
  %11 = load ptr, ptr %file.addr, align 8, !dbg !1356
  %call = call i32 %9(i32 noundef %conv5, ptr noundef %11), !dbg !1356
  br label %cond.end, !dbg !1356

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ %conv2, %cond.true ], [ %call, %cond.false ], !dbg !1356
  %12 = load ptr, ptr %file.addr, align 8, !dbg !1358
  %left7 = getelementptr inbounds %struct._buffile, ptr %12, i32 0, i32 1, !dbg !1358
  %13 = load i32, ptr %left7, align 8, !dbg !1358
  %dec8 = add nsw i32 %13, -1, !dbg !1358
  store i32 %dec8, ptr %left7, align 8, !dbg !1358
  %tobool9 = icmp ne i32 %dec8, 0, !dbg !1358
  br i1 %tobool9, label %cond.true10, label %cond.false16, !dbg !1358

cond.true10:                                      ; preds = %cond.end
  %14 = load i32, ptr %c.addr, align 4, !dbg !1358
  %shr11 = ashr i32 %14, 16, !dbg !1358
  %conv12 = trunc i32 %shr11 to i8, !dbg !1358
  %15 = load ptr, ptr %file.addr, align 8, !dbg !1358
  %bufp13 = getelementptr inbounds %struct._buffile, ptr %15, i32 0, i32 0, !dbg !1358
  %16 = load ptr, ptr %bufp13, align 8, !dbg !1358
  %incdec.ptr14 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !1358
  store ptr %incdec.ptr14, ptr %bufp13, align 8, !dbg !1358
  store i8 %conv12, ptr %16, align 1, !dbg !1358
  %conv15 = zext i8 %conv12 to i32, !dbg !1358
  br label %cond.end22, !dbg !1358

cond.false16:                                     ; preds = %cond.end
  %17 = load ptr, ptr %file.addr, align 8, !dbg !1358
  %output17 = getelementptr inbounds %struct._buffile, ptr %17, i32 0, i32 5, !dbg !1358
  %18 = load ptr, ptr %output17, align 8, !dbg !1358
  %19 = load i32, ptr %c.addr, align 4, !dbg !1358
  %shr18 = ashr i32 %19, 16, !dbg !1358
  %conv19 = trunc i32 %shr18 to i8, !dbg !1358
  %conv20 = zext i8 %conv19 to i32, !dbg !1358
  %20 = load ptr, ptr %file.addr, align 8, !dbg !1358
  %call21 = call i32 %18(i32 noundef %conv20, ptr noundef %20), !dbg !1358
  br label %cond.end22, !dbg !1358

cond.end22:                                       ; preds = %cond.false16, %cond.true10
  %cond23 = phi i32 [ %conv15, %cond.true10 ], [ %call21, %cond.false16 ], !dbg !1358
  %21 = load ptr, ptr %file.addr, align 8, !dbg !1359
  %left24 = getelementptr inbounds %struct._buffile, ptr %21, i32 0, i32 1, !dbg !1359
  %22 = load i32, ptr %left24, align 8, !dbg !1359
  %dec25 = add nsw i32 %22, -1, !dbg !1359
  store i32 %dec25, ptr %left24, align 8, !dbg !1359
  %tobool26 = icmp ne i32 %dec25, 0, !dbg !1359
  br i1 %tobool26, label %cond.true27, label %cond.false33, !dbg !1359

cond.true27:                                      ; preds = %cond.end22
  %23 = load i32, ptr %c.addr, align 4, !dbg !1359
  %shr28 = ashr i32 %23, 8, !dbg !1359
  %conv29 = trunc i32 %shr28 to i8, !dbg !1359
  %24 = load ptr, ptr %file.addr, align 8, !dbg !1359
  %bufp30 = getelementptr inbounds %struct._buffile, ptr %24, i32 0, i32 0, !dbg !1359
  %25 = load ptr, ptr %bufp30, align 8, !dbg !1359
  %incdec.ptr31 = getelementptr inbounds i8, ptr %25, i32 1, !dbg !1359
  store ptr %incdec.ptr31, ptr %bufp30, align 8, !dbg !1359
  store i8 %conv29, ptr %25, align 1, !dbg !1359
  %conv32 = zext i8 %conv29 to i32, !dbg !1359
  br label %cond.end39, !dbg !1359

cond.false33:                                     ; preds = %cond.end22
  %26 = load ptr, ptr %file.addr, align 8, !dbg !1359
  %output34 = getelementptr inbounds %struct._buffile, ptr %26, i32 0, i32 5, !dbg !1359
  %27 = load ptr, ptr %output34, align 8, !dbg !1359
  %28 = load i32, ptr %c.addr, align 4, !dbg !1359
  %shr35 = ashr i32 %28, 8, !dbg !1359
  %conv36 = trunc i32 %shr35 to i8, !dbg !1359
  %conv37 = zext i8 %conv36 to i32, !dbg !1359
  %29 = load ptr, ptr %file.addr, align 8, !dbg !1359
  %call38 = call i32 %27(i32 noundef %conv37, ptr noundef %29), !dbg !1359
  br label %cond.end39, !dbg !1359

cond.end39:                                       ; preds = %cond.false33, %cond.true27
  %cond40 = phi i32 [ %conv32, %cond.true27 ], [ %call38, %cond.false33 ], !dbg !1359
  %30 = load ptr, ptr %file.addr, align 8, !dbg !1360
  %left41 = getelementptr inbounds %struct._buffile, ptr %30, i32 0, i32 1, !dbg !1360
  %31 = load i32, ptr %left41, align 8, !dbg !1360
  %dec42 = add nsw i32 %31, -1, !dbg !1360
  store i32 %dec42, ptr %left41, align 8, !dbg !1360
  %tobool43 = icmp ne i32 %dec42, 0, !dbg !1360
  br i1 %tobool43, label %cond.true44, label %cond.false49, !dbg !1360

cond.true44:                                      ; preds = %cond.end39
  %32 = load i32, ptr %c.addr, align 4, !dbg !1360
  %conv45 = trunc i32 %32 to i8, !dbg !1360
  %33 = load ptr, ptr %file.addr, align 8, !dbg !1360
  %bufp46 = getelementptr inbounds %struct._buffile, ptr %33, i32 0, i32 0, !dbg !1360
  %34 = load ptr, ptr %bufp46, align 8, !dbg !1360
  %incdec.ptr47 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !1360
  store ptr %incdec.ptr47, ptr %bufp46, align 8, !dbg !1360
  store i8 %conv45, ptr %34, align 1, !dbg !1360
  %conv48 = zext i8 %conv45 to i32, !dbg !1360
  br label %cond.end54, !dbg !1360

cond.false49:                                     ; preds = %cond.end39
  %35 = load ptr, ptr %file.addr, align 8, !dbg !1360
  %output50 = getelementptr inbounds %struct._buffile, ptr %35, i32 0, i32 5, !dbg !1360
  %36 = load ptr, ptr %output50, align 8, !dbg !1360
  %37 = load i32, ptr %c.addr, align 4, !dbg !1360
  %conv51 = trunc i32 %37 to i8, !dbg !1360
  %conv52 = zext i8 %conv51 to i32, !dbg !1360
  %38 = load ptr, ptr %file.addr, align 8, !dbg !1360
  %call53 = call i32 %36(i32 noundef %conv52, ptr noundef %38), !dbg !1360
  br label %cond.end54, !dbg !1360

cond.end54:                                       ; preds = %cond.false49, %cond.true44
  %cond55 = phi i32 [ %conv48, %cond.true44 ], [ %call53, %cond.false49 ], !dbg !1360
  store i32 %cond55, ptr %retval, align 4, !dbg !1361
  br label %return, !dbg !1361

if.else:                                          ; preds = %entry
  %39 = load ptr, ptr %file.addr, align 8, !dbg !1362
  %left56 = getelementptr inbounds %struct._buffile, ptr %39, i32 0, i32 1, !dbg !1362
  %40 = load i32, ptr %left56, align 8, !dbg !1362
  %dec57 = add nsw i32 %40, -1, !dbg !1362
  store i32 %dec57, ptr %left56, align 8, !dbg !1362
  %tobool58 = icmp ne i32 %dec57, 0, !dbg !1362
  br i1 %tobool58, label %cond.true59, label %cond.false64, !dbg !1362

cond.true59:                                      ; preds = %if.else
  %41 = load i32, ptr %c.addr, align 4, !dbg !1362
  %conv60 = trunc i32 %41 to i8, !dbg !1362
  %42 = load ptr, ptr %file.addr, align 8, !dbg !1362
  %bufp61 = getelementptr inbounds %struct._buffile, ptr %42, i32 0, i32 0, !dbg !1362
  %43 = load ptr, ptr %bufp61, align 8, !dbg !1362
  %incdec.ptr62 = getelementptr inbounds i8, ptr %43, i32 1, !dbg !1362
  store ptr %incdec.ptr62, ptr %bufp61, align 8, !dbg !1362
  store i8 %conv60, ptr %43, align 1, !dbg !1362
  %conv63 = zext i8 %conv60 to i32, !dbg !1362
  br label %cond.end69, !dbg !1362

cond.false64:                                     ; preds = %if.else
  %44 = load ptr, ptr %file.addr, align 8, !dbg !1362
  %output65 = getelementptr inbounds %struct._buffile, ptr %44, i32 0, i32 5, !dbg !1362
  %45 = load ptr, ptr %output65, align 8, !dbg !1362
  %46 = load i32, ptr %c.addr, align 4, !dbg !1362
  %conv66 = trunc i32 %46 to i8, !dbg !1362
  %conv67 = zext i8 %conv66 to i32, !dbg !1362
  %47 = load ptr, ptr %file.addr, align 8, !dbg !1362
  %call68 = call i32 %45(i32 noundef %conv67, ptr noundef %47), !dbg !1362
  br label %cond.end69, !dbg !1362

cond.end69:                                       ; preds = %cond.false64, %cond.true59
  %cond70 = phi i32 [ %conv63, %cond.true59 ], [ %call68, %cond.false64 ], !dbg !1362
  %48 = load ptr, ptr %file.addr, align 8, !dbg !1364
  %left71 = getelementptr inbounds %struct._buffile, ptr %48, i32 0, i32 1, !dbg !1364
  %49 = load i32, ptr %left71, align 8, !dbg !1364
  %dec72 = add nsw i32 %49, -1, !dbg !1364
  store i32 %dec72, ptr %left71, align 8, !dbg !1364
  %tobool73 = icmp ne i32 %dec72, 0, !dbg !1364
  br i1 %tobool73, label %cond.true74, label %cond.false80, !dbg !1364

cond.true74:                                      ; preds = %cond.end69
  %50 = load i32, ptr %c.addr, align 4, !dbg !1364
  %shr75 = ashr i32 %50, 8, !dbg !1364
  %conv76 = trunc i32 %shr75 to i8, !dbg !1364
  %51 = load ptr, ptr %file.addr, align 8, !dbg !1364
  %bufp77 = getelementptr inbounds %struct._buffile, ptr %51, i32 0, i32 0, !dbg !1364
  %52 = load ptr, ptr %bufp77, align 8, !dbg !1364
  %incdec.ptr78 = getelementptr inbounds i8, ptr %52, i32 1, !dbg !1364
  store ptr %incdec.ptr78, ptr %bufp77, align 8, !dbg !1364
  store i8 %conv76, ptr %52, align 1, !dbg !1364
  %conv79 = zext i8 %conv76 to i32, !dbg !1364
  br label %cond.end86, !dbg !1364

cond.false80:                                     ; preds = %cond.end69
  %53 = load ptr, ptr %file.addr, align 8, !dbg !1364
  %output81 = getelementptr inbounds %struct._buffile, ptr %53, i32 0, i32 5, !dbg !1364
  %54 = load ptr, ptr %output81, align 8, !dbg !1364
  %55 = load i32, ptr %c.addr, align 4, !dbg !1364
  %shr82 = ashr i32 %55, 8, !dbg !1364
  %conv83 = trunc i32 %shr82 to i8, !dbg !1364
  %conv84 = zext i8 %conv83 to i32, !dbg !1364
  %56 = load ptr, ptr %file.addr, align 8, !dbg !1364
  %call85 = call i32 %54(i32 noundef %conv84, ptr noundef %56), !dbg !1364
  br label %cond.end86, !dbg !1364

cond.end86:                                       ; preds = %cond.false80, %cond.true74
  %cond87 = phi i32 [ %conv79, %cond.true74 ], [ %call85, %cond.false80 ], !dbg !1364
  %57 = load ptr, ptr %file.addr, align 8, !dbg !1365
  %left88 = getelementptr inbounds %struct._buffile, ptr %57, i32 0, i32 1, !dbg !1365
  %58 = load i32, ptr %left88, align 8, !dbg !1365
  %dec89 = add nsw i32 %58, -1, !dbg !1365
  store i32 %dec89, ptr %left88, align 8, !dbg !1365
  %tobool90 = icmp ne i32 %dec89, 0, !dbg !1365
  br i1 %tobool90, label %cond.true91, label %cond.false97, !dbg !1365

cond.true91:                                      ; preds = %cond.end86
  %59 = load i32, ptr %c.addr, align 4, !dbg !1365
  %shr92 = ashr i32 %59, 16, !dbg !1365
  %conv93 = trunc i32 %shr92 to i8, !dbg !1365
  %60 = load ptr, ptr %file.addr, align 8, !dbg !1365
  %bufp94 = getelementptr inbounds %struct._buffile, ptr %60, i32 0, i32 0, !dbg !1365
  %61 = load ptr, ptr %bufp94, align 8, !dbg !1365
  %incdec.ptr95 = getelementptr inbounds i8, ptr %61, i32 1, !dbg !1365
  store ptr %incdec.ptr95, ptr %bufp94, align 8, !dbg !1365
  store i8 %conv93, ptr %61, align 1, !dbg !1365
  %conv96 = zext i8 %conv93 to i32, !dbg !1365
  br label %cond.end103, !dbg !1365

cond.false97:                                     ; preds = %cond.end86
  %62 = load ptr, ptr %file.addr, align 8, !dbg !1365
  %output98 = getelementptr inbounds %struct._buffile, ptr %62, i32 0, i32 5, !dbg !1365
  %63 = load ptr, ptr %output98, align 8, !dbg !1365
  %64 = load i32, ptr %c.addr, align 4, !dbg !1365
  %shr99 = ashr i32 %64, 16, !dbg !1365
  %conv100 = trunc i32 %shr99 to i8, !dbg !1365
  %conv101 = zext i8 %conv100 to i32, !dbg !1365
  %65 = load ptr, ptr %file.addr, align 8, !dbg !1365
  %call102 = call i32 %63(i32 noundef %conv101, ptr noundef %65), !dbg !1365
  br label %cond.end103, !dbg !1365

cond.end103:                                      ; preds = %cond.false97, %cond.true91
  %cond104 = phi i32 [ %conv96, %cond.true91 ], [ %call102, %cond.false97 ], !dbg !1365
  %66 = load ptr, ptr %file.addr, align 8, !dbg !1366
  %left105 = getelementptr inbounds %struct._buffile, ptr %66, i32 0, i32 1, !dbg !1366
  %67 = load i32, ptr %left105, align 8, !dbg !1366
  %dec106 = add nsw i32 %67, -1, !dbg !1366
  store i32 %dec106, ptr %left105, align 8, !dbg !1366
  %tobool107 = icmp ne i32 %dec106, 0, !dbg !1366
  br i1 %tobool107, label %cond.true108, label %cond.false114, !dbg !1366

cond.true108:                                     ; preds = %cond.end103
  %68 = load i32, ptr %c.addr, align 4, !dbg !1366
  %shr109 = ashr i32 %68, 24, !dbg !1366
  %conv110 = trunc i32 %shr109 to i8, !dbg !1366
  %69 = load ptr, ptr %file.addr, align 8, !dbg !1366
  %bufp111 = getelementptr inbounds %struct._buffile, ptr %69, i32 0, i32 0, !dbg !1366
  %70 = load ptr, ptr %bufp111, align 8, !dbg !1366
  %incdec.ptr112 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !1366
  store ptr %incdec.ptr112, ptr %bufp111, align 8, !dbg !1366
  store i8 %conv110, ptr %70, align 1, !dbg !1366
  %conv113 = zext i8 %conv110 to i32, !dbg !1366
  br label %cond.end120, !dbg !1366

cond.false114:                                    ; preds = %cond.end103
  %71 = load ptr, ptr %file.addr, align 8, !dbg !1366
  %output115 = getelementptr inbounds %struct._buffile, ptr %71, i32 0, i32 5, !dbg !1366
  %72 = load ptr, ptr %output115, align 8, !dbg !1366
  %73 = load i32, ptr %c.addr, align 4, !dbg !1366
  %shr116 = ashr i32 %73, 24, !dbg !1366
  %conv117 = trunc i32 %shr116 to i8, !dbg !1366
  %conv118 = zext i8 %conv117 to i32, !dbg !1366
  %74 = load ptr, ptr %file.addr, align 8, !dbg !1366
  %call119 = call i32 %72(i32 noundef %conv118, ptr noundef %74), !dbg !1366
  br label %cond.end120, !dbg !1366

cond.end120:                                      ; preds = %cond.false114, %cond.true108
  %cond121 = phi i32 [ %conv113, %cond.true108 ], [ %call119, %cond.false114 ], !dbg !1366
  store i32 %cond121, ptr %retval, align 4, !dbg !1367
  br label %return, !dbg !1367

return:                                           ; preds = %cond.end120, %cond.end54
  %75 = load i32, ptr %retval, align 4, !dbg !1368
  ret i32 %75, !dbg !1368
}

; Function Attrs: nounwind uwtable
define internal i32 @pcfWrite(ptr noundef %file, ptr noundef %b, i32 noundef %c) #0 !dbg !1369 {
entry:
  %file.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1373, metadata !DIExpression()), !dbg !1376
  store ptr %b, ptr %b.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1374, metadata !DIExpression()), !dbg !1377
  store i32 %c, ptr %c.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1375, metadata !DIExpression()), !dbg !1378
  %0 = load i32, ptr %c.addr, align 4, !dbg !1379
  %1 = load i32, ptr @current_position, align 4, !dbg !1380
  %add = add i32 %1, %0, !dbg !1380
  store i32 %add, ptr @current_position, align 4, !dbg !1380
  %2 = load ptr, ptr %file.addr, align 8, !dbg !1381
  %3 = load ptr, ptr %b.addr, align 8, !dbg !1381
  %4 = load i32, ptr %c.addr, align 4, !dbg !1381
  %call = call i32 @BufFileWrite(ptr noundef %2, ptr noundef %3, i32 noundef %4), !dbg !1381
  ret i32 %call, !dbg !1382
}

; Function Attrs: nounwind uwtable
define internal void @pcfPutAccel(ptr noundef %file, i32 noundef %format, ptr noundef %pFontInfo) #0 !dbg !1383 {
entry:
  %file.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %pFontInfo.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1389, metadata !DIExpression()), !dbg !1392
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1390, metadata !DIExpression()), !dbg !1393
  store ptr %pFontInfo, ptr %pFontInfo.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pFontInfo.addr, metadata !1391, metadata !DIExpression()), !dbg !1394
  %0 = load ptr, ptr %file.addr, align 8, !dbg !1395
  %1 = load i32, ptr %format.addr, align 4, !dbg !1396
  %2 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1397
  %noOverlap = getelementptr inbounds %struct._FontInfo, ptr %2, i32 0, i32 5, !dbg !1398
  %bf.load = load i16, ptr %noOverlap, align 2, !dbg !1398
  %bf.clear = and i16 %bf.load, 1, !dbg !1398
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1398
  %call = call i32 @pcfPutINT8(ptr noundef %0, i32 noundef %1, i32 noundef %bf.cast), !dbg !1399
  %3 = load ptr, ptr %file.addr, align 8, !dbg !1400
  %4 = load i32, ptr %format.addr, align 4, !dbg !1401
  %5 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1402
  %constantMetrics = getelementptr inbounds %struct._FontInfo, ptr %5, i32 0, i32 5, !dbg !1403
  %bf.load1 = load i16, ptr %constantMetrics, align 2, !dbg !1403
  %bf.lshr = lshr i16 %bf.load1, 2, !dbg !1403
  %bf.clear2 = and i16 %bf.lshr, 1, !dbg !1403
  %bf.cast3 = zext i16 %bf.clear2 to i32, !dbg !1403
  %call4 = call i32 @pcfPutINT8(ptr noundef %3, i32 noundef %4, i32 noundef %bf.cast3), !dbg !1404
  %6 = load ptr, ptr %file.addr, align 8, !dbg !1405
  %7 = load i32, ptr %format.addr, align 4, !dbg !1406
  %8 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1407
  %terminalFont = getelementptr inbounds %struct._FontInfo, ptr %8, i32 0, i32 5, !dbg !1408
  %bf.load5 = load i16, ptr %terminalFont, align 2, !dbg !1408
  %bf.lshr6 = lshr i16 %bf.load5, 1, !dbg !1408
  %bf.clear7 = and i16 %bf.lshr6, 1, !dbg !1408
  %bf.cast8 = zext i16 %bf.clear7 to i32, !dbg !1408
  %call9 = call i32 @pcfPutINT8(ptr noundef %6, i32 noundef %7, i32 noundef %bf.cast8), !dbg !1409
  %9 = load ptr, ptr %file.addr, align 8, !dbg !1410
  %10 = load i32, ptr %format.addr, align 4, !dbg !1411
  %11 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1412
  %constantWidth = getelementptr inbounds %struct._FontInfo, ptr %11, i32 0, i32 5, !dbg !1413
  %bf.load10 = load i16, ptr %constantWidth, align 2, !dbg !1413
  %bf.lshr11 = lshr i16 %bf.load10, 3, !dbg !1413
  %bf.clear12 = and i16 %bf.lshr11, 1, !dbg !1413
  %bf.cast13 = zext i16 %bf.clear12 to i32, !dbg !1413
  %call14 = call i32 @pcfPutINT8(ptr noundef %9, i32 noundef %10, i32 noundef %bf.cast13), !dbg !1414
  %12 = load ptr, ptr %file.addr, align 8, !dbg !1415
  %13 = load i32, ptr %format.addr, align 4, !dbg !1416
  %14 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1417
  %inkInside = getelementptr inbounds %struct._FontInfo, ptr %14, i32 0, i32 5, !dbg !1418
  %bf.load15 = load i16, ptr %inkInside, align 2, !dbg !1418
  %bf.lshr16 = lshr i16 %bf.load15, 4, !dbg !1418
  %bf.clear17 = and i16 %bf.lshr16, 1, !dbg !1418
  %bf.cast18 = zext i16 %bf.clear17 to i32, !dbg !1418
  %call19 = call i32 @pcfPutINT8(ptr noundef %12, i32 noundef %13, i32 noundef %bf.cast18), !dbg !1419
  %15 = load ptr, ptr %file.addr, align 8, !dbg !1420
  %16 = load i32, ptr %format.addr, align 4, !dbg !1421
  %17 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1422
  %inkMetrics = getelementptr inbounds %struct._FontInfo, ptr %17, i32 0, i32 5, !dbg !1423
  %bf.load20 = load i16, ptr %inkMetrics, align 2, !dbg !1423
  %bf.lshr21 = lshr i16 %bf.load20, 5, !dbg !1423
  %bf.clear22 = and i16 %bf.lshr21, 1, !dbg !1423
  %bf.cast23 = zext i16 %bf.clear22 to i32, !dbg !1423
  %call24 = call i32 @pcfPutINT8(ptr noundef %15, i32 noundef %16, i32 noundef %bf.cast23), !dbg !1424
  %18 = load ptr, ptr %file.addr, align 8, !dbg !1425
  %19 = load i32, ptr %format.addr, align 4, !dbg !1426
  %20 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1427
  %drawDirection = getelementptr inbounds %struct._FontInfo, ptr %20, i32 0, i32 5, !dbg !1428
  %bf.load25 = load i16, ptr %drawDirection, align 2, !dbg !1428
  %bf.lshr26 = lshr i16 %bf.load25, 7, !dbg !1428
  %bf.clear27 = and i16 %bf.lshr26, 3, !dbg !1428
  %bf.cast28 = zext i16 %bf.clear27 to i32, !dbg !1428
  %call29 = call i32 @pcfPutINT8(ptr noundef %18, i32 noundef %19, i32 noundef %bf.cast28), !dbg !1429
  %21 = load ptr, ptr %file.addr, align 8, !dbg !1430
  %22 = load i32, ptr %format.addr, align 4, !dbg !1431
  %call30 = call i32 @pcfPutINT8(ptr noundef %21, i32 noundef %22, i32 noundef 0), !dbg !1432
  %23 = load ptr, ptr %file.addr, align 8, !dbg !1433
  %24 = load i32, ptr %format.addr, align 4, !dbg !1434
  %25 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1435
  %fontAscent = getelementptr inbounds %struct._FontInfo, ptr %25, i32 0, i32 12, !dbg !1436
  %26 = load i16, ptr %fontAscent, align 8, !dbg !1436
  %conv = sext i16 %26 to i32, !dbg !1435
  %call31 = call i32 @pcfPutINT32(ptr noundef %23, i32 noundef %24, i32 noundef %conv), !dbg !1437
  %27 = load ptr, ptr %file.addr, align 8, !dbg !1438
  %28 = load i32, ptr %format.addr, align 4, !dbg !1439
  %29 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1440
  %fontDescent = getelementptr inbounds %struct._FontInfo, ptr %29, i32 0, i32 13, !dbg !1441
  %30 = load i16, ptr %fontDescent, align 2, !dbg !1441
  %conv32 = sext i16 %30 to i32, !dbg !1440
  %call33 = call i32 @pcfPutINT32(ptr noundef %27, i32 noundef %28, i32 noundef %conv32), !dbg !1442
  %31 = load ptr, ptr %file.addr, align 8, !dbg !1443
  %32 = load i32, ptr %format.addr, align 4, !dbg !1444
  %33 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1445
  %maxOverlap = getelementptr inbounds %struct._FontInfo, ptr %33, i32 0, i32 6, !dbg !1446
  %34 = load i16, ptr %maxOverlap, align 4, !dbg !1446
  %conv34 = sext i16 %34 to i32, !dbg !1445
  %call35 = call i32 @pcfPutINT32(ptr noundef %31, i32 noundef %32, i32 noundef %conv34), !dbg !1447
  %35 = load ptr, ptr %file.addr, align 8, !dbg !1448
  %36 = load i32, ptr %format.addr, align 4, !dbg !1449
  %37 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1450
  %minbounds = getelementptr inbounds %struct._FontInfo, ptr %37, i32 0, i32 9, !dbg !1451
  call void @pcfPutMetric(ptr noundef %35, i32 noundef %36, ptr noundef %minbounds), !dbg !1452
  %38 = load ptr, ptr %file.addr, align 8, !dbg !1453
  %39 = load i32, ptr %format.addr, align 4, !dbg !1454
  %40 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1455
  %maxbounds = getelementptr inbounds %struct._FontInfo, ptr %40, i32 0, i32 8, !dbg !1456
  call void @pcfPutMetric(ptr noundef %38, i32 noundef %39, ptr noundef %maxbounds), !dbg !1457
  %41 = load i32, ptr %format.addr, align 4, !dbg !1458
  %and = and i32 %41, -256, !dbg !1458
  %cmp = icmp eq i32 %and, 256, !dbg !1458
  br i1 %cmp, label %if.then, label %if.end, !dbg !1460

if.then:                                          ; preds = %entry
  %42 = load ptr, ptr %file.addr, align 8, !dbg !1461
  %43 = load i32, ptr %format.addr, align 4, !dbg !1463
  %44 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1464
  %ink_minbounds = getelementptr inbounds %struct._FontInfo, ptr %44, i32 0, i32 11, !dbg !1465
  call void @pcfPutMetric(ptr noundef %42, i32 noundef %43, ptr noundef %ink_minbounds), !dbg !1466
  %45 = load ptr, ptr %file.addr, align 8, !dbg !1467
  %46 = load i32, ptr %format.addr, align 4, !dbg !1468
  %47 = load ptr, ptr %pFontInfo.addr, align 8, !dbg !1469
  %ink_maxbounds = getelementptr inbounds %struct._FontInfo, ptr %47, i32 0, i32 10, !dbg !1470
  call void @pcfPutMetric(ptr noundef %45, i32 noundef %46, ptr noundef %ink_maxbounds), !dbg !1471
  br label %if.end, !dbg !1472

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1473
}

; Function Attrs: nounwind uwtable
define internal i32 @pcfPutINT16(ptr noundef %file, i32 noundef %format, i32 noundef %c) #0 !dbg !1474 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1476, metadata !DIExpression()), !dbg !1479
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1477, metadata !DIExpression()), !dbg !1480
  store i32 %c, ptr %c.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1478, metadata !DIExpression()), !dbg !1481
  %0 = load i32, ptr @current_position, align 4, !dbg !1482
  %add = add i32 %0, 2, !dbg !1482
  store i32 %add, ptr @current_position, align 4, !dbg !1482
  %1 = load i32, ptr %format.addr, align 4, !dbg !1483
  %and = and i32 %1, 4, !dbg !1483
  %tobool = icmp ne i32 %and, 0, !dbg !1483
  %2 = zext i1 %tobool to i64, !dbg !1483
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !1483
  %cmp = icmp eq i32 %cond, 1, !dbg !1485
  br i1 %cmp, label %if.then, label %if.else, !dbg !1486

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !1487
  %left = getelementptr inbounds %struct._buffile, ptr %3, i32 0, i32 1, !dbg !1487
  %4 = load i32, ptr %left, align 8, !dbg !1487
  %dec = add nsw i32 %4, -1, !dbg !1487
  store i32 %dec, ptr %left, align 8, !dbg !1487
  %tobool1 = icmp ne i32 %dec, 0, !dbg !1487
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1487

cond.true:                                        ; preds = %if.then
  %5 = load i32, ptr %c.addr, align 4, !dbg !1487
  %shr = ashr i32 %5, 8, !dbg !1487
  %conv = trunc i32 %shr to i8, !dbg !1487
  %6 = load ptr, ptr %file.addr, align 8, !dbg !1487
  %bufp = getelementptr inbounds %struct._buffile, ptr %6, i32 0, i32 0, !dbg !1487
  %7 = load ptr, ptr %bufp, align 8, !dbg !1487
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !1487
  store ptr %incdec.ptr, ptr %bufp, align 8, !dbg !1487
  store i8 %conv, ptr %7, align 1, !dbg !1487
  %conv2 = zext i8 %conv to i32, !dbg !1487
  br label %cond.end, !dbg !1487

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %file.addr, align 8, !dbg !1487
  %output = getelementptr inbounds %struct._buffile, ptr %8, i32 0, i32 5, !dbg !1487
  %9 = load ptr, ptr %output, align 8, !dbg !1487
  %10 = load i32, ptr %c.addr, align 4, !dbg !1487
  %shr3 = ashr i32 %10, 8, !dbg !1487
  %conv4 = trunc i32 %shr3 to i8, !dbg !1487
  %conv5 = zext i8 %conv4 to i32, !dbg !1487
  %11 = load ptr, ptr %file.addr, align 8, !dbg !1487
  %call = call i32 %9(i32 noundef %conv5, ptr noundef %11), !dbg !1487
  br label %cond.end, !dbg !1487

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ %conv2, %cond.true ], [ %call, %cond.false ], !dbg !1487
  %12 = load ptr, ptr %file.addr, align 8, !dbg !1489
  %left7 = getelementptr inbounds %struct._buffile, ptr %12, i32 0, i32 1, !dbg !1489
  %13 = load i32, ptr %left7, align 8, !dbg !1489
  %dec8 = add nsw i32 %13, -1, !dbg !1489
  store i32 %dec8, ptr %left7, align 8, !dbg !1489
  %tobool9 = icmp ne i32 %dec8, 0, !dbg !1489
  br i1 %tobool9, label %cond.true10, label %cond.false15, !dbg !1489

cond.true10:                                      ; preds = %cond.end
  %14 = load i32, ptr %c.addr, align 4, !dbg !1489
  %conv11 = trunc i32 %14 to i8, !dbg !1489
  %15 = load ptr, ptr %file.addr, align 8, !dbg !1489
  %bufp12 = getelementptr inbounds %struct._buffile, ptr %15, i32 0, i32 0, !dbg !1489
  %16 = load ptr, ptr %bufp12, align 8, !dbg !1489
  %incdec.ptr13 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !1489
  store ptr %incdec.ptr13, ptr %bufp12, align 8, !dbg !1489
  store i8 %conv11, ptr %16, align 1, !dbg !1489
  %conv14 = zext i8 %conv11 to i32, !dbg !1489
  br label %cond.end20, !dbg !1489

cond.false15:                                     ; preds = %cond.end
  %17 = load ptr, ptr %file.addr, align 8, !dbg !1489
  %output16 = getelementptr inbounds %struct._buffile, ptr %17, i32 0, i32 5, !dbg !1489
  %18 = load ptr, ptr %output16, align 8, !dbg !1489
  %19 = load i32, ptr %c.addr, align 4, !dbg !1489
  %conv17 = trunc i32 %19 to i8, !dbg !1489
  %conv18 = zext i8 %conv17 to i32, !dbg !1489
  %20 = load ptr, ptr %file.addr, align 8, !dbg !1489
  %call19 = call i32 %18(i32 noundef %conv18, ptr noundef %20), !dbg !1489
  br label %cond.end20, !dbg !1489

cond.end20:                                       ; preds = %cond.false15, %cond.true10
  %cond21 = phi i32 [ %conv14, %cond.true10 ], [ %call19, %cond.false15 ], !dbg !1489
  store i32 %cond21, ptr %retval, align 4, !dbg !1490
  br label %return, !dbg !1490

if.else:                                          ; preds = %entry
  %21 = load ptr, ptr %file.addr, align 8, !dbg !1491
  %left22 = getelementptr inbounds %struct._buffile, ptr %21, i32 0, i32 1, !dbg !1491
  %22 = load i32, ptr %left22, align 8, !dbg !1491
  %dec23 = add nsw i32 %22, -1, !dbg !1491
  store i32 %dec23, ptr %left22, align 8, !dbg !1491
  %tobool24 = icmp ne i32 %dec23, 0, !dbg !1491
  br i1 %tobool24, label %cond.true25, label %cond.false30, !dbg !1491

cond.true25:                                      ; preds = %if.else
  %23 = load i32, ptr %c.addr, align 4, !dbg !1491
  %conv26 = trunc i32 %23 to i8, !dbg !1491
  %24 = load ptr, ptr %file.addr, align 8, !dbg !1491
  %bufp27 = getelementptr inbounds %struct._buffile, ptr %24, i32 0, i32 0, !dbg !1491
  %25 = load ptr, ptr %bufp27, align 8, !dbg !1491
  %incdec.ptr28 = getelementptr inbounds i8, ptr %25, i32 1, !dbg !1491
  store ptr %incdec.ptr28, ptr %bufp27, align 8, !dbg !1491
  store i8 %conv26, ptr %25, align 1, !dbg !1491
  %conv29 = zext i8 %conv26 to i32, !dbg !1491
  br label %cond.end35, !dbg !1491

cond.false30:                                     ; preds = %if.else
  %26 = load ptr, ptr %file.addr, align 8, !dbg !1491
  %output31 = getelementptr inbounds %struct._buffile, ptr %26, i32 0, i32 5, !dbg !1491
  %27 = load ptr, ptr %output31, align 8, !dbg !1491
  %28 = load i32, ptr %c.addr, align 4, !dbg !1491
  %conv32 = trunc i32 %28 to i8, !dbg !1491
  %conv33 = zext i8 %conv32 to i32, !dbg !1491
  %29 = load ptr, ptr %file.addr, align 8, !dbg !1491
  %call34 = call i32 %27(i32 noundef %conv33, ptr noundef %29), !dbg !1491
  br label %cond.end35, !dbg !1491

cond.end35:                                       ; preds = %cond.false30, %cond.true25
  %cond36 = phi i32 [ %conv29, %cond.true25 ], [ %call34, %cond.false30 ], !dbg !1491
  %30 = load ptr, ptr %file.addr, align 8, !dbg !1493
  %left37 = getelementptr inbounds %struct._buffile, ptr %30, i32 0, i32 1, !dbg !1493
  %31 = load i32, ptr %left37, align 8, !dbg !1493
  %dec38 = add nsw i32 %31, -1, !dbg !1493
  store i32 %dec38, ptr %left37, align 8, !dbg !1493
  %tobool39 = icmp ne i32 %dec38, 0, !dbg !1493
  br i1 %tobool39, label %cond.true40, label %cond.false46, !dbg !1493

cond.true40:                                      ; preds = %cond.end35
  %32 = load i32, ptr %c.addr, align 4, !dbg !1493
  %shr41 = ashr i32 %32, 8, !dbg !1493
  %conv42 = trunc i32 %shr41 to i8, !dbg !1493
  %33 = load ptr, ptr %file.addr, align 8, !dbg !1493
  %bufp43 = getelementptr inbounds %struct._buffile, ptr %33, i32 0, i32 0, !dbg !1493
  %34 = load ptr, ptr %bufp43, align 8, !dbg !1493
  %incdec.ptr44 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !1493
  store ptr %incdec.ptr44, ptr %bufp43, align 8, !dbg !1493
  store i8 %conv42, ptr %34, align 1, !dbg !1493
  %conv45 = zext i8 %conv42 to i32, !dbg !1493
  br label %cond.end52, !dbg !1493

cond.false46:                                     ; preds = %cond.end35
  %35 = load ptr, ptr %file.addr, align 8, !dbg !1493
  %output47 = getelementptr inbounds %struct._buffile, ptr %35, i32 0, i32 5, !dbg !1493
  %36 = load ptr, ptr %output47, align 8, !dbg !1493
  %37 = load i32, ptr %c.addr, align 4, !dbg !1493
  %shr48 = ashr i32 %37, 8, !dbg !1493
  %conv49 = trunc i32 %shr48 to i8, !dbg !1493
  %conv50 = zext i8 %conv49 to i32, !dbg !1493
  %38 = load ptr, ptr %file.addr, align 8, !dbg !1493
  %call51 = call i32 %36(i32 noundef %conv50, ptr noundef %38), !dbg !1493
  br label %cond.end52, !dbg !1493

cond.end52:                                       ; preds = %cond.false46, %cond.true40
  %cond53 = phi i32 [ %conv45, %cond.true40 ], [ %call51, %cond.false46 ], !dbg !1493
  store i32 %cond53, ptr %retval, align 4, !dbg !1494
  br label %return, !dbg !1494

return:                                           ; preds = %cond.end52, %cond.end20
  %39 = load i32, ptr %retval, align 4, !dbg !1495
  ret i32 %39, !dbg !1495
}

; Function Attrs: nounwind uwtable
define internal void @pcfPutCompressedMetric(ptr noundef %file, i32 noundef %format, ptr noundef %metric) #0 !dbg !1496 {
entry:
  %file.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %metric.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1500, metadata !DIExpression()), !dbg !1503
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1501, metadata !DIExpression()), !dbg !1504
  store ptr %metric, ptr %metric.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %metric.addr, metadata !1502, metadata !DIExpression()), !dbg !1505
  %0 = load ptr, ptr %file.addr, align 8, !dbg !1506
  %1 = load i32, ptr %format.addr, align 4, !dbg !1507
  %2 = load ptr, ptr %metric.addr, align 8, !dbg !1508
  %leftSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %2, i32 0, i32 0, !dbg !1509
  %3 = load i16, ptr %leftSideBearing, align 2, !dbg !1509
  %conv = sext i16 %3 to i32, !dbg !1508
  %add = add nsw i32 %conv, 128, !dbg !1510
  %call = call i32 @pcfPutINT8(ptr noundef %0, i32 noundef %1, i32 noundef %add), !dbg !1511
  %4 = load ptr, ptr %file.addr, align 8, !dbg !1512
  %5 = load i32, ptr %format.addr, align 4, !dbg !1513
  %6 = load ptr, ptr %metric.addr, align 8, !dbg !1514
  %rightSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %6, i32 0, i32 1, !dbg !1515
  %7 = load i16, ptr %rightSideBearing, align 2, !dbg !1515
  %conv1 = sext i16 %7 to i32, !dbg !1514
  %add2 = add nsw i32 %conv1, 128, !dbg !1516
  %call3 = call i32 @pcfPutINT8(ptr noundef %4, i32 noundef %5, i32 noundef %add2), !dbg !1517
  %8 = load ptr, ptr %file.addr, align 8, !dbg !1518
  %9 = load i32, ptr %format.addr, align 4, !dbg !1519
  %10 = load ptr, ptr %metric.addr, align 8, !dbg !1520
  %characterWidth = getelementptr inbounds %struct.xCharInfo, ptr %10, i32 0, i32 2, !dbg !1521
  %11 = load i16, ptr %characterWidth, align 2, !dbg !1521
  %conv4 = sext i16 %11 to i32, !dbg !1520
  %add5 = add nsw i32 %conv4, 128, !dbg !1522
  %call6 = call i32 @pcfPutINT8(ptr noundef %8, i32 noundef %9, i32 noundef %add5), !dbg !1523
  %12 = load ptr, ptr %file.addr, align 8, !dbg !1524
  %13 = load i32, ptr %format.addr, align 4, !dbg !1525
  %14 = load ptr, ptr %metric.addr, align 8, !dbg !1526
  %ascent = getelementptr inbounds %struct.xCharInfo, ptr %14, i32 0, i32 3, !dbg !1527
  %15 = load i16, ptr %ascent, align 2, !dbg !1527
  %conv7 = sext i16 %15 to i32, !dbg !1526
  %add8 = add nsw i32 %conv7, 128, !dbg !1528
  %call9 = call i32 @pcfPutINT8(ptr noundef %12, i32 noundef %13, i32 noundef %add8), !dbg !1529
  %16 = load ptr, ptr %file.addr, align 8, !dbg !1530
  %17 = load i32, ptr %format.addr, align 4, !dbg !1531
  %18 = load ptr, ptr %metric.addr, align 8, !dbg !1532
  %descent = getelementptr inbounds %struct.xCharInfo, ptr %18, i32 0, i32 4, !dbg !1533
  %19 = load i16, ptr %descent, align 2, !dbg !1533
  %conv10 = sext i16 %19 to i32, !dbg !1532
  %add11 = add nsw i32 %conv10, 128, !dbg !1534
  %call12 = call i32 @pcfPutINT8(ptr noundef %16, i32 noundef %17, i32 noundef %add11), !dbg !1535
  ret void, !dbg !1536
}

; Function Attrs: nounwind uwtable
define internal void @pcfPutMetric(ptr noundef %file, i32 noundef %format, ptr noundef %metric) #0 !dbg !1537 {
entry:
  %file.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %metric.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1539, metadata !DIExpression()), !dbg !1542
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1540, metadata !DIExpression()), !dbg !1543
  store ptr %metric, ptr %metric.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %metric.addr, metadata !1541, metadata !DIExpression()), !dbg !1544
  %0 = load ptr, ptr %file.addr, align 8, !dbg !1545
  %1 = load i32, ptr %format.addr, align 4, !dbg !1546
  %2 = load ptr, ptr %metric.addr, align 8, !dbg !1547
  %leftSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %2, i32 0, i32 0, !dbg !1548
  %3 = load i16, ptr %leftSideBearing, align 2, !dbg !1548
  %conv = sext i16 %3 to i32, !dbg !1547
  %call = call i32 @pcfPutINT16(ptr noundef %0, i32 noundef %1, i32 noundef %conv), !dbg !1549
  %4 = load ptr, ptr %file.addr, align 8, !dbg !1550
  %5 = load i32, ptr %format.addr, align 4, !dbg !1551
  %6 = load ptr, ptr %metric.addr, align 8, !dbg !1552
  %rightSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %6, i32 0, i32 1, !dbg !1553
  %7 = load i16, ptr %rightSideBearing, align 2, !dbg !1553
  %conv1 = sext i16 %7 to i32, !dbg !1552
  %call2 = call i32 @pcfPutINT16(ptr noundef %4, i32 noundef %5, i32 noundef %conv1), !dbg !1554
  %8 = load ptr, ptr %file.addr, align 8, !dbg !1555
  %9 = load i32, ptr %format.addr, align 4, !dbg !1556
  %10 = load ptr, ptr %metric.addr, align 8, !dbg !1557
  %characterWidth = getelementptr inbounds %struct.xCharInfo, ptr %10, i32 0, i32 2, !dbg !1558
  %11 = load i16, ptr %characterWidth, align 2, !dbg !1558
  %conv3 = sext i16 %11 to i32, !dbg !1557
  %call4 = call i32 @pcfPutINT16(ptr noundef %8, i32 noundef %9, i32 noundef %conv3), !dbg !1559
  %12 = load ptr, ptr %file.addr, align 8, !dbg !1560
  %13 = load i32, ptr %format.addr, align 4, !dbg !1561
  %14 = load ptr, ptr %metric.addr, align 8, !dbg !1562
  %ascent = getelementptr inbounds %struct.xCharInfo, ptr %14, i32 0, i32 3, !dbg !1563
  %15 = load i16, ptr %ascent, align 2, !dbg !1563
  %conv5 = sext i16 %15 to i32, !dbg !1562
  %call6 = call i32 @pcfPutINT16(ptr noundef %12, i32 noundef %13, i32 noundef %conv5), !dbg !1564
  %16 = load ptr, ptr %file.addr, align 8, !dbg !1565
  %17 = load i32, ptr %format.addr, align 4, !dbg !1566
  %18 = load ptr, ptr %metric.addr, align 8, !dbg !1567
  %descent = getelementptr inbounds %struct.xCharInfo, ptr %18, i32 0, i32 4, !dbg !1568
  %19 = load i16, ptr %descent, align 2, !dbg !1568
  %conv7 = sext i16 %19 to i32, !dbg !1567
  %call8 = call i32 @pcfPutINT16(ptr noundef %16, i32 noundef %17, i32 noundef %conv7), !dbg !1569
  %20 = load ptr, ptr %file.addr, align 8, !dbg !1570
  %21 = load i32, ptr %format.addr, align 4, !dbg !1571
  %22 = load ptr, ptr %metric.addr, align 8, !dbg !1572
  %attributes = getelementptr inbounds %struct.xCharInfo, ptr %22, i32 0, i32 5, !dbg !1573
  %23 = load i16, ptr %attributes, align 2, !dbg !1573
  %conv9 = zext i16 %23 to i32, !dbg !1572
  %call10 = call i32 @pcfPutINT16(ptr noundef %20, i32 noundef %21, i32 noundef %conv9), !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: nounwind uwtable
define internal void @pcfPutBitmap(ptr noundef %file, i32 noundef %format, ptr noundef %pCI) #0 !dbg !1576 {
entry:
  %file.addr = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %pCI.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %bits = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !1580, metadata !DIExpression()), !dbg !1585
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1581, metadata !DIExpression()), !dbg !1586
  store ptr %pCI, ptr %pCI.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pCI.addr, metadata !1582, metadata !DIExpression()), !dbg !1587
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !1588
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !1583, metadata !DIExpression()), !dbg !1589
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #6, !dbg !1590
  tail call void @llvm.dbg.declare(metadata ptr %bits, metadata !1584, metadata !DIExpression()), !dbg !1591
  %0 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics = getelementptr inbounds %struct._CharInfo, ptr %0, i32 0, i32 0, !dbg !1592
  %ascent = getelementptr inbounds %struct.xCharInfo, ptr %metrics, i32 0, i32 3, !dbg !1592
  %1 = load i16, ptr %ascent, align 2, !dbg !1592
  %conv = sext i16 %1 to i32, !dbg !1592
  %2 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics1 = getelementptr inbounds %struct._CharInfo, ptr %2, i32 0, i32 0, !dbg !1592
  %descent = getelementptr inbounds %struct.xCharInfo, ptr %metrics1, i32 0, i32 4, !dbg !1592
  %3 = load i16, ptr %descent, align 8, !dbg !1592
  %conv2 = sext i16 %3 to i32, !dbg !1592
  %add = add nsw i32 %conv, %conv2, !dbg !1592
  %4 = load i32, ptr %format.addr, align 4, !dbg !1592
  %and = and i32 %4, 3, !dbg !1592
  %shl = shl i32 1, %and, !dbg !1592
  %cmp = icmp eq i32 %shl, 1, !dbg !1592
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1592

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics4 = getelementptr inbounds %struct._CharInfo, ptr %5, i32 0, i32 0, !dbg !1592
  %rightSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %metrics4, i32 0, i32 1, !dbg !1592
  %6 = load i16, ptr %rightSideBearing, align 2, !dbg !1592
  %conv5 = sext i16 %6 to i32, !dbg !1592
  %7 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics6 = getelementptr inbounds %struct._CharInfo, ptr %7, i32 0, i32 0, !dbg !1592
  %leftSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %metrics6, i32 0, i32 0, !dbg !1592
  %8 = load i16, ptr %leftSideBearing, align 8, !dbg !1592
  %conv7 = sext i16 %8 to i32, !dbg !1592
  %sub = sub nsw i32 %conv5, %conv7, !dbg !1592
  %add8 = add nsw i32 %sub, 7, !dbg !1592
  %shr = ashr i32 %add8, 3, !dbg !1592
  br label %cond.end61, !dbg !1592

cond.false:                                       ; preds = %entry
  %9 = load i32, ptr %format.addr, align 4, !dbg !1592
  %and9 = and i32 %9, 3, !dbg !1592
  %shl10 = shl i32 1, %and9, !dbg !1592
  %cmp11 = icmp eq i32 %shl10, 2, !dbg !1592
  br i1 %cmp11, label %cond.true13, label %cond.false24, !dbg !1592

cond.true13:                                      ; preds = %cond.false
  %10 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics14 = getelementptr inbounds %struct._CharInfo, ptr %10, i32 0, i32 0, !dbg !1592
  %rightSideBearing15 = getelementptr inbounds %struct.xCharInfo, ptr %metrics14, i32 0, i32 1, !dbg !1592
  %11 = load i16, ptr %rightSideBearing15, align 2, !dbg !1592
  %conv16 = sext i16 %11 to i32, !dbg !1592
  %12 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics17 = getelementptr inbounds %struct._CharInfo, ptr %12, i32 0, i32 0, !dbg !1592
  %leftSideBearing18 = getelementptr inbounds %struct.xCharInfo, ptr %metrics17, i32 0, i32 0, !dbg !1592
  %13 = load i16, ptr %leftSideBearing18, align 8, !dbg !1592
  %conv19 = sext i16 %13 to i32, !dbg !1592
  %sub20 = sub nsw i32 %conv16, %conv19, !dbg !1592
  %add21 = add nsw i32 %sub20, 15, !dbg !1592
  %shr22 = ashr i32 %add21, 3, !dbg !1592
  %and23 = and i32 %shr22, -2, !dbg !1592
  br label %cond.end59, !dbg !1592

cond.false24:                                     ; preds = %cond.false
  %14 = load i32, ptr %format.addr, align 4, !dbg !1592
  %and25 = and i32 %14, 3, !dbg !1592
  %shl26 = shl i32 1, %and25, !dbg !1592
  %cmp27 = icmp eq i32 %shl26, 4, !dbg !1592
  br i1 %cmp27, label %cond.true29, label %cond.false40, !dbg !1592

cond.true29:                                      ; preds = %cond.false24
  %15 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics30 = getelementptr inbounds %struct._CharInfo, ptr %15, i32 0, i32 0, !dbg !1592
  %rightSideBearing31 = getelementptr inbounds %struct.xCharInfo, ptr %metrics30, i32 0, i32 1, !dbg !1592
  %16 = load i16, ptr %rightSideBearing31, align 2, !dbg !1592
  %conv32 = sext i16 %16 to i32, !dbg !1592
  %17 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics33 = getelementptr inbounds %struct._CharInfo, ptr %17, i32 0, i32 0, !dbg !1592
  %leftSideBearing34 = getelementptr inbounds %struct.xCharInfo, ptr %metrics33, i32 0, i32 0, !dbg !1592
  %18 = load i16, ptr %leftSideBearing34, align 8, !dbg !1592
  %conv35 = sext i16 %18 to i32, !dbg !1592
  %sub36 = sub nsw i32 %conv32, %conv35, !dbg !1592
  %add37 = add nsw i32 %sub36, 31, !dbg !1592
  %shr38 = ashr i32 %add37, 3, !dbg !1592
  %and39 = and i32 %shr38, -4, !dbg !1592
  br label %cond.end57, !dbg !1592

cond.false40:                                     ; preds = %cond.false24
  %19 = load i32, ptr %format.addr, align 4, !dbg !1592
  %and41 = and i32 %19, 3, !dbg !1592
  %shl42 = shl i32 1, %and41, !dbg !1592
  %cmp43 = icmp eq i32 %shl42, 8, !dbg !1592
  br i1 %cmp43, label %cond.true45, label %cond.false56, !dbg !1592

cond.true45:                                      ; preds = %cond.false40
  %20 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics46 = getelementptr inbounds %struct._CharInfo, ptr %20, i32 0, i32 0, !dbg !1592
  %rightSideBearing47 = getelementptr inbounds %struct.xCharInfo, ptr %metrics46, i32 0, i32 1, !dbg !1592
  %21 = load i16, ptr %rightSideBearing47, align 2, !dbg !1592
  %conv48 = sext i16 %21 to i32, !dbg !1592
  %22 = load ptr, ptr %pCI.addr, align 8, !dbg !1592
  %metrics49 = getelementptr inbounds %struct._CharInfo, ptr %22, i32 0, i32 0, !dbg !1592
  %leftSideBearing50 = getelementptr inbounds %struct.xCharInfo, ptr %metrics49, i32 0, i32 0, !dbg !1592
  %23 = load i16, ptr %leftSideBearing50, align 8, !dbg !1592
  %conv51 = sext i16 %23 to i32, !dbg !1592
  %sub52 = sub nsw i32 %conv48, %conv51, !dbg !1592
  %add53 = add nsw i32 %sub52, 63, !dbg !1592
  %shr54 = ashr i32 %add53, 3, !dbg !1592
  %and55 = and i32 %shr54, -8, !dbg !1592
  br label %cond.end, !dbg !1592

cond.false56:                                     ; preds = %cond.false40
  br label %cond.end, !dbg !1592

cond.end:                                         ; preds = %cond.false56, %cond.true45
  %cond = phi i32 [ %and55, %cond.true45 ], [ 0, %cond.false56 ], !dbg !1592
  br label %cond.end57, !dbg !1592

cond.end57:                                       ; preds = %cond.end, %cond.true29
  %cond58 = phi i32 [ %and39, %cond.true29 ], [ %cond, %cond.end ], !dbg !1592
  br label %cond.end59, !dbg !1592

cond.end59:                                       ; preds = %cond.end57, %cond.true13
  %cond60 = phi i32 [ %and23, %cond.true13 ], [ %cond58, %cond.end57 ], !dbg !1592
  br label %cond.end61, !dbg !1592

cond.end61:                                       ; preds = %cond.end59, %cond.true
  %cond62 = phi i32 [ %shr, %cond.true ], [ %cond60, %cond.end59 ], !dbg !1592
  %mul = mul nsw i32 %add, %cond62, !dbg !1592
  store i32 %mul, ptr %count, align 4, !dbg !1593
  %24 = load ptr, ptr %pCI.addr, align 8, !dbg !1594
  %bits63 = getelementptr inbounds %struct._CharInfo, ptr %24, i32 0, i32 1, !dbg !1595
  %25 = load ptr, ptr %bits63, align 8, !dbg !1595
  store ptr %25, ptr %bits, align 8, !dbg !1596
  %26 = load i32, ptr %count, align 4, !dbg !1597
  %27 = load i32, ptr @current_position, align 4, !dbg !1598
  %add64 = add i32 %27, %26, !dbg !1598
  store i32 %add64, ptr @current_position, align 4, !dbg !1598
  br label %while.cond, !dbg !1599

while.cond:                                       ; preds = %cond.end73, %cond.end61
  %28 = load i32, ptr %count, align 4, !dbg !1600
  %dec = add nsw i32 %28, -1, !dbg !1600
  store i32 %dec, ptr %count, align 4, !dbg !1600
  %tobool = icmp ne i32 %28, 0, !dbg !1599
  br i1 %tobool, label %while.body, label %while.end, !dbg !1599

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %file.addr, align 8, !dbg !1601
  %left = getelementptr inbounds %struct._buffile, ptr %29, i32 0, i32 1, !dbg !1601
  %30 = load i32, ptr %left, align 8, !dbg !1601
  %dec65 = add nsw i32 %30, -1, !dbg !1601
  store i32 %dec65, ptr %left, align 8, !dbg !1601
  %tobool66 = icmp ne i32 %dec65, 0, !dbg !1601
  br i1 %tobool66, label %cond.true67, label %cond.false70, !dbg !1601

cond.true67:                                      ; preds = %while.body
  %31 = load ptr, ptr %bits, align 8, !dbg !1601
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i32 1, !dbg !1601
  store ptr %incdec.ptr, ptr %bits, align 8, !dbg !1601
  %32 = load i8, ptr %31, align 1, !dbg !1601
  %33 = load ptr, ptr %file.addr, align 8, !dbg !1601
  %bufp = getelementptr inbounds %struct._buffile, ptr %33, i32 0, i32 0, !dbg !1601
  %34 = load ptr, ptr %bufp, align 8, !dbg !1601
  %incdec.ptr68 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !1601
  store ptr %incdec.ptr68, ptr %bufp, align 8, !dbg !1601
  store i8 %32, ptr %34, align 1, !dbg !1601
  %conv69 = zext i8 %32 to i32, !dbg !1601
  br label %cond.end73, !dbg !1601

cond.false70:                                     ; preds = %while.body
  %35 = load ptr, ptr %file.addr, align 8, !dbg !1601
  %output = getelementptr inbounds %struct._buffile, ptr %35, i32 0, i32 5, !dbg !1601
  %36 = load ptr, ptr %output, align 8, !dbg !1601
  %37 = load ptr, ptr %bits, align 8, !dbg !1601
  %incdec.ptr71 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !1601
  store ptr %incdec.ptr71, ptr %bits, align 8, !dbg !1601
  %38 = load i8, ptr %37, align 1, !dbg !1601
  %conv72 = zext i8 %38 to i32, !dbg !1601
  %39 = load ptr, ptr %file.addr, align 8, !dbg !1601
  %call = call i32 %36(i32 noundef %conv72, ptr noundef %39), !dbg !1601
  br label %cond.end73, !dbg !1601

cond.end73:                                       ; preds = %cond.false70, %cond.true67
  %cond74 = phi i32 [ %conv69, %cond.true67 ], [ %call, %cond.false70 ], !dbg !1601
  br label %while.cond, !dbg !1599, !llvm.loop !1602

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #6, !dbg !1603
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !1603
  ret void, !dbg !1603
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1604 ptr @__libxfont__NameForAtom(i64 noundef) #3

declare !dbg !1606 i32 @BufFileWrite(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bitmap/pcfwrite.c", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "bf3b563397f51a9c50cd71f519c0bcd0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 54)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "current_position", scope: !9, file: !2, line: 45, type: !74, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !19, globals: !117, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 162, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/font.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "a41ff5d042660dc9657472c9cc981807")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "Linear8Bit", value: 0)
!16 = !DIEnumerator(name: "TwoD8Bit", value: 1)
!17 = !DIEnumerator(name: "Linear16Bit", value: 2)
!18 = !DIEnumerator(name: "TwoD16Bit", value: 3)
!19 = !{!20, !114, !27, !115, !116}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "BitmapFontPtr", file: !21, line: 63, baseType: !22)
!21 = !DIFile(filename: "./include/X11/fonts/bitmap.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "599e6bd1ca60ce2738e4529407d8b5fd")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_BitmapFont", file: !21, line: 53, size: 512, elements: !24)
!24 = !{!25, !26, !28, !29, !53, !55, !56, !59, !60}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "version_num", scope: !23, file: !21, line: 54, baseType: !13, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "num_chars", scope: !23, file: !21, line: 55, baseType: !27, size: 32, offset: 32)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "num_tables", scope: !23, file: !21, line: 56, baseType: !27, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !23, file: !21, line: 57, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "CharInfoPtr", file: !12, line: 43, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CharInfo", file: !33, line: 63, size: 192, elements: !34)
!33 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/fontstruct.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "83a2b2a763f7c1e423b85aece6a41bc2")
!34 = !{!35, !51}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !32, file: !33, line: 64, baseType: !36, size: 96)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xCharInfo", file: !37, line: 385, baseType: !38)
!37 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/Xproto.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "9480d28dfcb38412fb2746e48b2eb919")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 378, size: 96, elements: !39)
!39 = !{!40, !44, !45, !46, !47, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "leftSideBearing", scope: !38, file: !37, line: 379, baseType: !41, size: 16)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !42, line: 102, baseType: !43)
!42 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/Xmd.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "6659907b96ce8071adc5e93d9bbce63a")
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "rightSideBearing", scope: !38, file: !37, line: 380, baseType: !41, size: 16, offset: 16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "characterWidth", scope: !38, file: !37, line: 381, baseType: !41, size: 16, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ascent", scope: !38, file: !37, line: 382, baseType: !41, size: 16, offset: 48)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "descent", scope: !38, file: !37, line: 383, baseType: !41, size: 16, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !38, file: !37, line: 384, baseType: !49, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "CARD16", file: !42, line: 113, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !32, file: !33, line: 65, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ink_metrics", scope: !23, file: !21, line: 58, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "bitmaps", scope: !23, file: !21, line: 59, baseType: !52, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !23, file: !21, line: 60, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "pDefault", scope: !23, file: !21, line: 61, baseType: !30, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "bitmapExtra", scope: !23, file: !21, line: 62, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "BitmapExtraPtr", file: !21, line: 51, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_BitmapExtra", file: !21, line: 46, size: 960, elements: !64)
!64 = !{!65, !70, !72, !77}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "glyphNames", scope: !63, file: !21, line: 47, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atom", file: !68, line: 38, baseType: !69)
!68 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/Xdefs.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "3cf4f3a89c166d4994924d34661b81e6")
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "sWidths", scope: !63, file: !21, line: 48, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "bitmapsSizes", scope: !63, file: !21, line: 49, baseType: !73, size: 128, offset: 128)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !75)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "CARD32", file: !42, line: 108, baseType: !13)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !63, file: !21, line: 50, baseType: !78, size: 704, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontInfoRec", file: !33, line: 100, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontInfo", file: !33, line: 73, size: 704, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !113}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "firstCol", scope: !79, file: !33, line: 74, baseType: !50, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "lastCol", scope: !79, file: !33, line: 75, baseType: !50, size: 16, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "firstRow", scope: !79, file: !33, line: 76, baseType: !50, size: 16, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "lastRow", scope: !79, file: !33, line: 77, baseType: !50, size: 16, offset: 48)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "defaultCh", scope: !79, file: !33, line: 78, baseType: !50, size: 16, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "noOverlap", scope: !79, file: !33, line: 79, baseType: !13, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "terminalFont", scope: !79, file: !33, line: 80, baseType: !13, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "constantMetrics", scope: !79, file: !33, line: 81, baseType: !13, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "constantWidth", scope: !79, file: !33, line: 82, baseType: !13, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "inkInside", scope: !79, file: !33, line: 83, baseType: !13, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "inkMetrics", scope: !79, file: !33, line: 84, baseType: !13, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "allExist", scope: !79, file: !33, line: 85, baseType: !13, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "drawDirection", scope: !79, file: !33, line: 86, baseType: !13, size: 2, offset: 87, flags: DIFlagBitField, extraData: i64 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cachable", scope: !79, file: !33, line: 87, baseType: !13, size: 1, offset: 89, flags: DIFlagBitField, extraData: i64 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "anamorphic", scope: !79, file: !33, line: 88, baseType: !13, size: 1, offset: 90, flags: DIFlagBitField, extraData: i64 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "maxOverlap", scope: !79, file: !33, line: 89, baseType: !43, size: 16, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !79, file: !33, line: 90, baseType: !43, size: 16, offset: 112)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "maxbounds", scope: !79, file: !33, line: 91, baseType: !36, size: 96, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "minbounds", scope: !79, file: !33, line: 92, baseType: !36, size: 96, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ink_maxbounds", scope: !79, file: !33, line: 93, baseType: !36, size: 96, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ink_minbounds", scope: !79, file: !33, line: 94, baseType: !36, size: 96, offset: 416)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fontAscent", scope: !79, file: !33, line: 95, baseType: !43, size: 16, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "fontDescent", scope: !79, file: !33, line: 96, baseType: !43, size: 16, offset: 528)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nprops", scope: !79, file: !33, line: 97, baseType: !27, size: 32, offset: 544)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !79, file: !33, line: 98, baseType: !106, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontPropPtr", file: !12, line: 38, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontProp", file: !33, line: 41, size: 128, elements: !109)
!109 = !{!110, !112}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !33, line: 42, baseType: !111, size: 64)
!111 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !108, file: !33, line: 43, baseType: !111, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "isStringProp", scope: !79, file: !33, line: 99, baseType: !52, size: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!117 = !{!0, !118, !7}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 31)
!123 = !{i32 7, !"Dwarf Version", i32 5}
!124 = !{i32 2, !"Debug Info Version", i32 3}
!125 = !{i32 1, !"wchar_size", i32 4}
!126 = !{i32 8, !"PIC Level", i32 2}
!127 = !{i32 7, !"uwtable", i32 2}
!128 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!129 = distinct !DISubprogram(name: "pcfWriteFont", scope: !2, file: !2, line: 201, type: !130, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !207)
!130 = !DISubroutineType(types: !131)
!131 = !{!27, !132, !177}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontPtr", file: !68, line: 81, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Font", file: !33, line: 102, size: 1472, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !145, !151, !156, !160, !161, !171, !172, !173, !174, !175}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !134, file: !33, line: 103, baseType: !27, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !134, file: !33, line: 104, baseType: !78, size: 704, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !134, file: !33, line: 105, baseType: !4, size: 8, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !134, file: !33, line: 106, baseType: !4, size: 8, offset: 776)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "glyph", scope: !134, file: !33, line: 107, baseType: !4, size: 8, offset: 784)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !134, file: !33, line: 108, baseType: !4, size: 8, offset: 792)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !134, file: !33, line: 109, baseType: !143, size: 32, offset: 800)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsBitmapFormat", file: !144, line: 94, baseType: !74)
!144 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/fsmasks.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "4bfc20aced0cbacb54e9d5fba7414335")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "get_glyphs", scope: !134, file: !33, line: 110, baseType: !146, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!27, !132, !69, !116, !149, !150, !58}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontEncoding", file: !12, line: 164, baseType: !11)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "get_metrics", scope: !134, file: !33, line: 116, baseType: !152, size: 64, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!27, !132, !69, !116, !149, !150, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "unload_font", scope: !134, file: !33, line: 122, baseType: !157, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !132}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "unload_glyphs", scope: !134, file: !33, line: 123, baseType: !157, size: 64, offset: 1024)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fpe", scope: !134, file: !33, line: 124, baseType: !162, size: 64, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontPathElementPtr", file: !12, line: 40, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontPathElement", file: !33, line: 148, size: 256, elements: !165)
!165 = !{!166, !167, !168, !169, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !164, file: !33, line: 149, baseType: !27, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !33, line: 153, baseType: !52, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !33, line: 154, baseType: !27, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !164, file: !33, line: 155, baseType: !27, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !164, file: !33, line: 156, baseType: !114, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "svrPrivate", scope: !134, file: !33, line: 125, baseType: !114, size: 64, offset: 1152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "fontPrivate", scope: !134, file: !33, line: 126, baseType: !114, size: 64, offset: 1216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "fpePrivate", scope: !134, file: !33, line: 127, baseType: !114, size: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "maxPrivate", scope: !134, file: !33, line: 128, baseType: !27, size: 32, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "devPrivates", scope: !134, file: !33, line: 129, baseType: !176, size: 64, offset: 1408)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontFilePtr", file: !178, line: 36, baseType: !179)
!178 = !DIFile(filename: "./include/X11/fonts/fntfilio.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "ed4d0ca2df22c6eac9550225d5c488a2")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "BufFilePtr", file: !180, line: 38, baseType: !181)
!180 = !DIFile(filename: "./include/X11/fonts/bufio.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "ba374ef79e87eca9b48bd9401ca2a64e")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_buffile", file: !180, line: 40, size: 65984, elements: !183)
!183 = !{!184, !187, !188, !189, !193, !197, !201, !205, !206}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "bufp", scope: !182, file: !180, line: 41, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "BufChar", file: !180, line: 37, baseType: !115)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !182, file: !180, line: 42, baseType: !27, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !182, file: !180, line: 43, baseType: !27, size: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !182, file: !180, line: 44, baseType: !190, size: 65536, offset: 128)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 65536, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 8192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !182, file: !180, line: 45, baseType: !194, size: 64, offset: 65664)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!27, !179}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !182, file: !180, line: 46, baseType: !198, size: 64, offset: 65728)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!27, !27, !179}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !182, file: !180, line: 47, baseType: !202, size: 64, offset: 65792)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!27, !179, !27}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !182, file: !180, line: 48, baseType: !202, size: 64, offset: 65856)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !182, file: !180, line: 49, baseType: !52, size: 64, offset: 65920)
!207 = !{!208, !209, !210, !222, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !245, !246}
!208 = !DILocalVariable(name: "pFont", arg: 1, scope: !129, file: !2, line: 201, type: !132)
!209 = !DILocalVariable(name: "file", arg: 2, scope: !129, file: !2, line: 201, type: !177)
!210 = !DILocalVariable(name: "tables", scope: !129, file: !2, line: 203, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 4096, elements: !220)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCFTableRec", file: !213, line: 47, baseType: !214)
!213 = !DIFile(filename: "./include/X11/fonts/pcf.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "aebd33b466df7850f741ebf71b68d792")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PCFTable", file: !213, line: 42, size: 128, elements: !215)
!215 = !{!216, !217, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !214, file: !213, line: 43, baseType: !74, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !214, file: !213, line: 44, baseType: !74, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !214, file: !213, line: 45, baseType: !74, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !214, file: !213, line: 46, baseType: !74, size: 32, offset: 96)
!220 = !{!221}
!221 = !DISubrange(count: 32)
!222 = !DILocalVariable(name: "table", scope: !129, file: !2, line: 204, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!224 = !DILocalVariable(name: "mask", scope: !129, file: !2, line: 205, type: !74)
!225 = !DILocalVariable(name: "bit", scope: !129, file: !2, line: 206, type: !74)
!226 = !DILocalVariable(name: "ntables", scope: !129, file: !2, line: 207, type: !27)
!227 = !DILocalVariable(name: "size", scope: !129, file: !2, line: 208, type: !27)
!228 = !DILocalVariable(name: "format", scope: !129, file: !2, line: 209, type: !74)
!229 = !DILocalVariable(name: "i", scope: !129, file: !2, line: 210, type: !27)
!230 = !DILocalVariable(name: "cur_table", scope: !129, file: !2, line: 211, type: !27)
!231 = !DILocalVariable(name: "prop_string_size", scope: !129, file: !2, line: 212, type: !27)
!232 = !DILocalVariable(name: "glyph_string_size", scope: !129, file: !2, line: 213, type: !27)
!233 = !DILocalVariable(name: "minbounds", scope: !129, file: !2, line: 214, type: !54)
!234 = !DILocalVariable(name: "maxbounds", scope: !129, file: !2, line: 215, type: !54)
!235 = !DILocalVariable(name: "ink_minbounds", scope: !129, file: !2, line: 216, type: !54)
!236 = !DILocalVariable(name: "ink_maxbounds", scope: !129, file: !2, line: 217, type: !54)
!237 = !DILocalVariable(name: "bitmapFont", scope: !129, file: !2, line: 218, type: !20)
!238 = !DILocalVariable(name: "nencodings", scope: !129, file: !2, line: 219, type: !27)
!239 = !DILocalVariable(name: "header_size", scope: !129, file: !2, line: 220, type: !27)
!240 = !DILocalVariable(name: "offsetProps", scope: !129, file: !2, line: 221, type: !106)
!241 = !DILocalVariable(name: "prop_pad", scope: !129, file: !2, line: 222, type: !27)
!242 = !DILocalVariable(name: "atom_name", scope: !129, file: !2, line: 223, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!245 = !DILocalVariable(name: "glyph", scope: !129, file: !2, line: 224, type: !27)
!246 = !DILocalVariable(name: "offset", scope: !129, file: !2, line: 225, type: !74)
!247 = !DILocation(line: 201, column: 22, scope: !129)
!248 = !DILocation(line: 201, column: 41, scope: !129)
!249 = !DILocation(line: 203, column: 5, scope: !129)
!250 = !DILocation(line: 203, column: 17, scope: !129)
!251 = !DILocation(line: 204, column: 17, scope: !129)
!252 = !DILocation(line: 205, column: 5, scope: !129)
!253 = !DILocation(line: 205, column: 17, scope: !129)
!254 = !DILocation(line: 206, column: 17, scope: !129)
!255 = !DILocation(line: 207, column: 5, scope: !129)
!256 = !DILocation(line: 207, column: 17, scope: !129)
!257 = !DILocation(line: 208, column: 5, scope: !129)
!258 = !DILocation(line: 208, column: 17, scope: !129)
!259 = !DILocation(line: 209, column: 5, scope: !129)
!260 = !DILocation(line: 209, column: 17, scope: !129)
!261 = !DILocation(line: 210, column: 5, scope: !129)
!262 = !DILocation(line: 210, column: 17, scope: !129)
!263 = !DILocation(line: 211, column: 5, scope: !129)
!264 = !DILocation(line: 211, column: 17, scope: !129)
!265 = !DILocation(line: 212, column: 5, scope: !129)
!266 = !DILocation(line: 212, column: 17, scope: !129)
!267 = !DILocation(line: 213, column: 5, scope: !129)
!268 = !DILocation(line: 213, column: 17, scope: !129)
!269 = !DILocation(line: 214, column: 5, scope: !129)
!270 = !DILocation(line: 214, column: 17, scope: !129)
!271 = !DILocation(line: 215, column: 17, scope: !129)
!272 = !DILocation(line: 216, column: 5, scope: !129)
!273 = !DILocation(line: 216, column: 17, scope: !129)
!274 = !DILocation(line: 217, column: 17, scope: !129)
!275 = !DILocation(line: 218, column: 5, scope: !129)
!276 = !DILocation(line: 218, column: 20, scope: !129)
!277 = !DILocation(line: 219, column: 5, scope: !129)
!278 = !DILocation(line: 219, column: 17, scope: !129)
!279 = !DILocation(line: 220, column: 5, scope: !129)
!280 = !DILocation(line: 220, column: 17, scope: !129)
!281 = !DILocation(line: 221, column: 5, scope: !129)
!282 = !DILocation(line: 221, column: 17, scope: !129)
!283 = !DILocation(line: 222, column: 5, scope: !129)
!284 = !DILocation(line: 222, column: 17, scope: !129)
!285 = !DILocation(line: 223, column: 5, scope: !129)
!286 = !DILocation(line: 223, column: 18, scope: !129)
!287 = !DILocation(line: 224, column: 5, scope: !129)
!288 = !DILocation(line: 224, column: 17, scope: !129)
!289 = !DILocation(line: 225, column: 5, scope: !129)
!290 = !DILocation(line: 225, column: 17, scope: !129)
!291 = !DILocation(line: 227, column: 34, scope: !129)
!292 = !DILocation(line: 227, column: 41, scope: !129)
!293 = !DILocation(line: 227, column: 16, scope: !129)
!294 = !DILocation(line: 228, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !129, file: !2, line: 228, column: 9)
!296 = !DILocation(line: 228, column: 21, scope: !295)
!297 = !DILocation(line: 228, column: 9, scope: !129)
!298 = !DILocation(line: 229, column: 15, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !2, line: 228, column: 34)
!300 = !DILocation(line: 229, column: 27, scope: !299)
!301 = !DILocation(line: 229, column: 40, scope: !299)
!302 = !DILocation(line: 229, column: 45, scope: !299)
!303 = !DILocation(line: 229, column: 12, scope: !299)
!304 = !DILocation(line: 230, column: 15, scope: !299)
!305 = !DILocation(line: 230, column: 27, scope: !299)
!306 = !DILocation(line: 230, column: 40, scope: !299)
!307 = !DILocation(line: 230, column: 45, scope: !299)
!308 = !DILocation(line: 230, column: 12, scope: !299)
!309 = !DILocation(line: 231, column: 19, scope: !299)
!310 = !DILocation(line: 231, column: 31, scope: !299)
!311 = !DILocation(line: 231, column: 44, scope: !299)
!312 = !DILocation(line: 231, column: 49, scope: !299)
!313 = !DILocation(line: 231, column: 16, scope: !299)
!314 = !DILocation(line: 232, column: 19, scope: !299)
!315 = !DILocation(line: 232, column: 31, scope: !299)
!316 = !DILocation(line: 232, column: 44, scope: !299)
!317 = !DILocation(line: 232, column: 49, scope: !299)
!318 = !DILocation(line: 232, column: 16, scope: !299)
!319 = !DILocation(line: 233, column: 5, scope: !299)
!320 = !DILocation(line: 234, column: 15, scope: !321)
!321 = distinct !DILexicalBlock(scope: !295, file: !2, line: 233, column: 12)
!322 = !DILocation(line: 234, column: 22, scope: !321)
!323 = !DILocation(line: 234, column: 27, scope: !321)
!324 = !DILocation(line: 234, column: 12, scope: !321)
!325 = !DILocation(line: 235, column: 15, scope: !321)
!326 = !DILocation(line: 235, column: 22, scope: !321)
!327 = !DILocation(line: 235, column: 27, scope: !321)
!328 = !DILocation(line: 235, column: 12, scope: !321)
!329 = !DILocation(line: 236, column: 19, scope: !321)
!330 = !DILocation(line: 236, column: 26, scope: !321)
!331 = !DILocation(line: 236, column: 31, scope: !321)
!332 = !DILocation(line: 236, column: 16, scope: !321)
!333 = !DILocation(line: 237, column: 19, scope: !321)
!334 = !DILocation(line: 237, column: 26, scope: !321)
!335 = !DILocation(line: 237, column: 31, scope: !321)
!336 = !DILocation(line: 237, column: 16, scope: !321)
!337 = !DILocation(line: 239, column: 19, scope: !129)
!338 = !DILocation(line: 239, column: 17, scope: !129)
!339 = !DILocation(line: 240, column: 10, scope: !340)
!340 = distinct !DILexicalBlock(scope: !129, file: !2, line: 240, column: 9)
!341 = !DILocation(line: 240, column: 9, scope: !129)
!342 = !DILocation(line: 242, column: 4, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !2, line: 240, column: 23)
!344 = !DILocation(line: 242, column: 11, scope: !343)
!345 = !DILocation(line: 242, column: 16, scope: !343)
!346 = !DILocation(line: 241, column: 2, scope: !343)
!347 = !DILocation(line: 243, column: 2, scope: !343)
!348 = !DILocation(line: 245, column: 22, scope: !129)
!349 = !DILocation(line: 246, column: 12, scope: !350)
!350 = distinct !DILexicalBlock(scope: !129, file: !2, line: 246, column: 5)
!351 = !DILocation(line: 246, column: 10, scope: !350)
!352 = !DILocation(line: 246, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 246, column: 5)
!354 = !DILocation(line: 246, column: 21, scope: !353)
!355 = !DILocation(line: 246, column: 28, scope: !353)
!356 = !DILocation(line: 246, column: 33, scope: !353)
!357 = !DILocation(line: 246, column: 19, scope: !353)
!358 = !DILocation(line: 246, column: 5, scope: !350)
!359 = !DILocation(line: 247, column: 24, scope: !360)
!360 = distinct !DILexicalBlock(scope: !353, file: !2, line: 246, column: 46)
!361 = !DILocation(line: 247, column: 2, scope: !360)
!362 = !DILocation(line: 247, column: 14, scope: !360)
!363 = !DILocation(line: 247, column: 17, scope: !360)
!364 = !DILocation(line: 247, column: 22, scope: !360)
!365 = !DILocation(line: 248, column: 44, scope: !360)
!366 = !DILocation(line: 248, column: 51, scope: !360)
!367 = !DILocation(line: 248, column: 56, scope: !360)
!368 = !DILocation(line: 248, column: 62, scope: !360)
!369 = !DILocation(line: 248, column: 65, scope: !360)
!370 = !DILocation(line: 248, column: 29, scope: !360)
!371 = !DILocation(line: 248, column: 22, scope: !360)
!372 = !DILocation(line: 248, column: 72, scope: !360)
!373 = !DILocation(line: 248, column: 19, scope: !360)
!374 = !DILocation(line: 249, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !360, file: !2, line: 249, column: 6)
!376 = !DILocation(line: 249, column: 13, scope: !375)
!377 = !DILocation(line: 249, column: 18, scope: !375)
!378 = !DILocation(line: 249, column: 31, scope: !375)
!379 = !DILocation(line: 249, column: 6, scope: !360)
!380 = !DILocation(line: 250, column: 29, scope: !381)
!381 = distinct !DILexicalBlock(scope: !375, file: !2, line: 249, column: 35)
!382 = !DILocation(line: 250, column: 6, scope: !381)
!383 = !DILocation(line: 250, column: 18, scope: !381)
!384 = !DILocation(line: 250, column: 21, scope: !381)
!385 = !DILocation(line: 250, column: 27, scope: !381)
!386 = !DILocation(line: 251, column: 48, scope: !381)
!387 = !DILocation(line: 251, column: 55, scope: !381)
!388 = !DILocation(line: 251, column: 60, scope: !381)
!389 = !DILocation(line: 251, column: 66, scope: !381)
!390 = !DILocation(line: 251, column: 69, scope: !381)
!391 = !DILocation(line: 251, column: 33, scope: !381)
!392 = !DILocation(line: 251, column: 26, scope: !381)
!393 = !DILocation(line: 251, column: 77, scope: !381)
!394 = !DILocation(line: 251, column: 23, scope: !381)
!395 = !DILocation(line: 252, column: 2, scope: !381)
!396 = !DILocation(line: 253, column: 29, scope: !375)
!397 = !DILocation(line: 253, column: 36, scope: !375)
!398 = !DILocation(line: 253, column: 41, scope: !375)
!399 = !DILocation(line: 253, column: 47, scope: !375)
!400 = !DILocation(line: 253, column: 50, scope: !375)
!401 = !DILocation(line: 253, column: 6, scope: !375)
!402 = !DILocation(line: 253, column: 18, scope: !375)
!403 = !DILocation(line: 253, column: 21, scope: !375)
!404 = !DILocation(line: 253, column: 27, scope: !375)
!405 = !DILocation(line: 254, column: 5, scope: !360)
!406 = !DILocation(line: 246, column: 42, scope: !353)
!407 = !DILocation(line: 246, column: 5, scope: !353)
!408 = distinct !{!408, !358, !409, !410}
!409 = !DILocation(line: 254, column: 5, scope: !350)
!410 = !{!"llvm.loop.mustprogress"}
!411 = !DILocation(line: 255, column: 14, scope: !129)
!412 = !DILocation(line: 255, column: 12, scope: !129)
!413 = !DILocation(line: 256, column: 10, scope: !129)
!414 = !DILocation(line: 257, column: 13, scope: !129)
!415 = !DILocation(line: 258, column: 13, scope: !129)
!416 = !DILocation(line: 258, column: 11, scope: !129)
!417 = !DILocation(line: 259, column: 5, scope: !129)
!418 = !DILocation(line: 259, column: 12, scope: !129)
!419 = !DILocation(line: 260, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !129, file: !2, line: 259, column: 18)
!421 = !DILocation(line: 260, column: 6, scope: !420)
!422 = !DILocation(line: 261, column: 11, scope: !420)
!423 = !DILocation(line: 261, column: 10, scope: !420)
!424 = !DILocation(line: 261, column: 7, scope: !420)
!425 = !DILocation(line: 262, column: 16, scope: !420)
!426 = !DILocation(line: 262, column: 2, scope: !420)
!427 = !DILocation(line: 262, column: 9, scope: !420)
!428 = !DILocation(line: 262, column: 14, scope: !420)
!429 = !DILocation(line: 263, column: 10, scope: !420)
!430 = !DILocation(line: 263, column: 2, scope: !420)
!431 = !DILocation(line: 265, column: 43, scope: !432)
!432 = distinct !DILexicalBlock(scope: !420, file: !2, line: 263, column: 15)
!433 = !DILocation(line: 265, column: 41, scope: !432)
!434 = !DILocation(line: 265, column: 6, scope: !432)
!435 = !DILocation(line: 265, column: 13, scope: !432)
!436 = !DILocation(line: 265, column: 20, scope: !432)
!437 = !DILocation(line: 266, column: 44, scope: !432)
!438 = !DILocation(line: 266, column: 51, scope: !432)
!439 = !DILocation(line: 266, column: 56, scope: !432)
!440 = !DILocation(line: 266, column: 42, scope: !432)
!441 = !DILocation(line: 266, column: 23, scope: !432)
!442 = !DILocation(line: 266, column: 11, scope: !432)
!443 = !DILocation(line: 267, column: 17, scope: !432)
!444 = !DILocation(line: 267, column: 15, scope: !432)
!445 = !DILocation(line: 268, column: 20, scope: !432)
!446 = !DILocation(line: 268, column: 34, scope: !432)
!447 = !DILocation(line: 269, column: 3, scope: !432)
!448 = !DILocation(line: 268, column: 40, scope: !432)
!449 = !DILocation(line: 268, column: 6, scope: !432)
!450 = !DILocation(line: 268, column: 13, scope: !432)
!451 = !DILocation(line: 268, column: 18, scope: !432)
!452 = !DILocation(line: 270, column: 11, scope: !432)
!453 = !DILocation(line: 271, column: 6, scope: !432)
!454 = !DILocation(line: 273, column: 10, scope: !455)
!455 = distinct !DILexicalBlock(scope: !432, file: !2, line: 273, column: 10)
!456 = !DILocation(line: 273, column: 22, scope: !455)
!457 = !DILocation(line: 273, column: 35, scope: !455)
!458 = !DILocation(line: 273, column: 40, scope: !455)
!459 = !DILocation(line: 273, column: 10, scope: !432)
!460 = !DILocation(line: 274, column: 43, scope: !455)
!461 = !DILocation(line: 274, column: 41, scope: !455)
!462 = !DILocation(line: 274, column: 3, scope: !455)
!463 = !DILocation(line: 274, column: 10, scope: !455)
!464 = !DILocation(line: 274, column: 17, scope: !455)
!465 = !DILocation(line: 276, column: 40, scope: !455)
!466 = !DILocation(line: 276, column: 38, scope: !455)
!467 = !DILocation(line: 276, column: 3, scope: !455)
!468 = !DILocation(line: 276, column: 10, scope: !455)
!469 = !DILocation(line: 276, column: 17, scope: !455)
!470 = !DILocation(line: 277, column: 6, scope: !432)
!471 = !DILocation(line: 277, column: 13, scope: !432)
!472 = !DILocation(line: 277, column: 18, scope: !432)
!473 = !DILocation(line: 278, column: 11, scope: !432)
!474 = !DILocation(line: 279, column: 6, scope: !432)
!475 = !DILocation(line: 281, column: 10, scope: !476)
!476 = distinct !DILexicalBlock(scope: !432, file: !2, line: 281, column: 10)
!477 = !DILocation(line: 281, column: 10, scope: !432)
!478 = !DILocation(line: 282, column: 44, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !2, line: 281, column: 52)
!480 = !DILocation(line: 282, column: 42, scope: !479)
!481 = !DILocation(line: 282, column: 3, scope: !479)
!482 = !DILocation(line: 282, column: 10, scope: !479)
!483 = !DILocation(line: 282, column: 17, scope: !479)
!484 = !DILocation(line: 283, column: 22, scope: !479)
!485 = !DILocation(line: 283, column: 34, scope: !479)
!486 = !DILocation(line: 283, column: 44, scope: !479)
!487 = !DILocation(line: 283, column: 20, scope: !479)
!488 = !DILocation(line: 283, column: 8, scope: !479)
!489 = !DILocation(line: 284, column: 17, scope: !479)
!490 = !DILocation(line: 284, column: 3, scope: !479)
!491 = !DILocation(line: 284, column: 10, scope: !479)
!492 = !DILocation(line: 284, column: 15, scope: !479)
!493 = !DILocation(line: 285, column: 6, scope: !479)
!494 = !DILocation(line: 286, column: 40, scope: !495)
!495 = distinct !DILexicalBlock(scope: !476, file: !2, line: 285, column: 13)
!496 = !DILocation(line: 286, column: 38, scope: !495)
!497 = !DILocation(line: 286, column: 3, scope: !495)
!498 = !DILocation(line: 286, column: 10, scope: !495)
!499 = !DILocation(line: 286, column: 17, scope: !495)
!500 = !DILocation(line: 287, column: 29, scope: !495)
!501 = !DILocation(line: 287, column: 41, scope: !495)
!502 = !DILocation(line: 287, column: 51, scope: !495)
!503 = !DILocation(line: 287, column: 27, scope: !495)
!504 = !DILocation(line: 287, column: 3, scope: !495)
!505 = !DILocation(line: 287, column: 10, scope: !495)
!506 = !DILocation(line: 287, column: 15, scope: !495)
!507 = !DILocation(line: 289, column: 11, scope: !432)
!508 = !DILocation(line: 290, column: 6, scope: !432)
!509 = !DILocation(line: 292, column: 43, scope: !432)
!510 = !DILocation(line: 292, column: 41, scope: !432)
!511 = !DILocation(line: 292, column: 6, scope: !432)
!512 = !DILocation(line: 292, column: 13, scope: !432)
!513 = !DILocation(line: 292, column: 20, scope: !432)
!514 = !DILocation(line: 293, column: 25, scope: !432)
!515 = !DILocation(line: 293, column: 37, scope: !432)
!516 = !DILocation(line: 293, column: 47, scope: !432)
!517 = !DILocation(line: 293, column: 23, scope: !432)
!518 = !DILocation(line: 293, column: 53, scope: !432)
!519 = !DILocation(line: 295, column: 3, scope: !432)
!520 = !DILocation(line: 295, column: 15, scope: !432)
!521 = !DILocation(line: 295, column: 28, scope: !432)
!522 = !DILocation(line: 295, column: 41, scope: !432)
!523 = !DILocation(line: 294, column: 25, scope: !432)
!524 = !DILocation(line: 293, column: 11, scope: !432)
!525 = !DILocation(line: 296, column: 20, scope: !432)
!526 = !DILocation(line: 296, column: 6, scope: !432)
!527 = !DILocation(line: 296, column: 13, scope: !432)
!528 = !DILocation(line: 296, column: 18, scope: !432)
!529 = !DILocation(line: 297, column: 11, scope: !432)
!530 = !DILocation(line: 298, column: 6, scope: !432)
!531 = !DILocation(line: 300, column: 10, scope: !532)
!532 = distinct !DILexicalBlock(scope: !432, file: !2, line: 300, column: 10)
!533 = !DILocation(line: 300, column: 22, scope: !532)
!534 = !DILocation(line: 300, column: 10, scope: !432)
!535 = !DILocation(line: 301, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 301, column: 7)
!537 = distinct !DILexicalBlock(scope: !532, file: !2, line: 300, column: 35)
!538 = !DILocation(line: 301, column: 7, scope: !537)
!539 = !DILocation(line: 302, column: 48, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !2, line: 301, column: 57)
!541 = !DILocation(line: 302, column: 46, scope: !540)
!542 = !DILocation(line: 302, column: 7, scope: !540)
!543 = !DILocation(line: 302, column: 14, scope: !540)
!544 = !DILocation(line: 302, column: 21, scope: !540)
!545 = !DILocation(line: 303, column: 26, scope: !540)
!546 = !DILocation(line: 303, column: 38, scope: !540)
!547 = !DILocation(line: 303, column: 48, scope: !540)
!548 = !DILocation(line: 303, column: 24, scope: !540)
!549 = !DILocation(line: 303, column: 12, scope: !540)
!550 = !DILocation(line: 304, column: 21, scope: !540)
!551 = !DILocation(line: 304, column: 7, scope: !540)
!552 = !DILocation(line: 304, column: 14, scope: !540)
!553 = !DILocation(line: 304, column: 19, scope: !540)
!554 = !DILocation(line: 305, column: 3, scope: !540)
!555 = !DILocation(line: 306, column: 44, scope: !556)
!556 = distinct !DILexicalBlock(scope: !536, file: !2, line: 305, column: 10)
!557 = !DILocation(line: 306, column: 42, scope: !556)
!558 = !DILocation(line: 306, column: 7, scope: !556)
!559 = !DILocation(line: 306, column: 14, scope: !556)
!560 = !DILocation(line: 306, column: 21, scope: !556)
!561 = !DILocation(line: 307, column: 33, scope: !556)
!562 = !DILocation(line: 307, column: 45, scope: !556)
!563 = !DILocation(line: 307, column: 55, scope: !556)
!564 = !DILocation(line: 307, column: 31, scope: !556)
!565 = !DILocation(line: 307, column: 7, scope: !556)
!566 = !DILocation(line: 307, column: 14, scope: !556)
!567 = !DILocation(line: 307, column: 19, scope: !556)
!568 = !DILocation(line: 309, column: 8, scope: !537)
!569 = !DILocation(line: 310, column: 6, scope: !537)
!570 = !DILocation(line: 311, column: 6, scope: !432)
!571 = !DILocation(line: 313, column: 43, scope: !432)
!572 = !DILocation(line: 313, column: 41, scope: !432)
!573 = !DILocation(line: 313, column: 6, scope: !432)
!574 = !DILocation(line: 313, column: 13, scope: !432)
!575 = !DILocation(line: 313, column: 20, scope: !432)
!576 = !DILocation(line: 314, column: 20, scope: !432)
!577 = !DILocation(line: 314, column: 27, scope: !432)
!578 = !DILocation(line: 314, column: 32, scope: !432)
!579 = !DILocation(line: 314, column: 42, scope: !432)
!580 = !DILocation(line: 314, column: 49, scope: !432)
!581 = !DILocation(line: 314, column: 54, scope: !432)
!582 = !DILocation(line: 314, column: 40, scope: !432)
!583 = !DILocation(line: 314, column: 63, scope: !432)
!584 = !DILocation(line: 315, column: 4, scope: !432)
!585 = !DILocation(line: 315, column: 11, scope: !432)
!586 = !DILocation(line: 315, column: 16, scope: !432)
!587 = !DILocation(line: 315, column: 26, scope: !432)
!588 = !DILocation(line: 315, column: 33, scope: !432)
!589 = !DILocation(line: 315, column: 38, scope: !432)
!590 = !DILocation(line: 315, column: 24, scope: !432)
!591 = !DILocation(line: 315, column: 47, scope: !432)
!592 = !DILocation(line: 314, column: 68, scope: !432)
!593 = !DILocation(line: 314, column: 17, scope: !432)
!594 = !DILocation(line: 316, column: 29, scope: !432)
!595 = !DILocation(line: 316, column: 40, scope: !432)
!596 = !DILocation(line: 316, column: 27, scope: !432)
!597 = !DILocation(line: 316, column: 11, scope: !432)
!598 = !DILocation(line: 317, column: 20, scope: !432)
!599 = !DILocation(line: 317, column: 6, scope: !432)
!600 = !DILocation(line: 317, column: 13, scope: !432)
!601 = !DILocation(line: 317, column: 18, scope: !432)
!602 = !DILocation(line: 318, column: 11, scope: !432)
!603 = !DILocation(line: 319, column: 6, scope: !432)
!604 = !DILocation(line: 321, column: 43, scope: !432)
!605 = !DILocation(line: 321, column: 41, scope: !432)
!606 = !DILocation(line: 321, column: 6, scope: !432)
!607 = !DILocation(line: 321, column: 13, scope: !432)
!608 = !DILocation(line: 321, column: 20, scope: !432)
!609 = !DILocation(line: 322, column: 32, scope: !432)
!610 = !DILocation(line: 322, column: 44, scope: !432)
!611 = !DILocation(line: 322, column: 54, scope: !432)
!612 = !DILocation(line: 322, column: 30, scope: !432)
!613 = !DILocation(line: 322, column: 6, scope: !432)
!614 = !DILocation(line: 322, column: 13, scope: !432)
!615 = !DILocation(line: 322, column: 18, scope: !432)
!616 = !DILocation(line: 323, column: 11, scope: !432)
!617 = !DILocation(line: 324, column: 6, scope: !432)
!618 = !DILocation(line: 326, column: 43, scope: !432)
!619 = !DILocation(line: 326, column: 41, scope: !432)
!620 = !DILocation(line: 326, column: 6, scope: !432)
!621 = !DILocation(line: 326, column: 13, scope: !432)
!622 = !DILocation(line: 326, column: 20, scope: !432)
!623 = !DILocation(line: 327, column: 24, scope: !432)
!624 = !DILocation(line: 328, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !432, file: !2, line: 328, column: 6)
!626 = !DILocation(line: 328, column: 11, scope: !625)
!627 = !DILocation(line: 328, column: 18, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !2, line: 328, column: 6)
!629 = !DILocation(line: 328, column: 22, scope: !628)
!630 = !DILocation(line: 328, column: 34, scope: !628)
!631 = !DILocation(line: 328, column: 20, scope: !628)
!632 = !DILocation(line: 328, column: 6, scope: !625)
!633 = !DILocation(line: 329, column: 46, scope: !628)
!634 = !DILocation(line: 329, column: 58, scope: !628)
!635 = !DILocation(line: 329, column: 71, scope: !628)
!636 = !DILocation(line: 329, column: 82, scope: !628)
!637 = !DILocation(line: 329, column: 31, scope: !628)
!638 = !DILocation(line: 329, column: 24, scope: !628)
!639 = !DILocation(line: 329, column: 87, scope: !628)
!640 = !DILocation(line: 329, column: 21, scope: !628)
!641 = !DILocation(line: 329, column: 3, scope: !628)
!642 = !DILocation(line: 328, column: 46, scope: !628)
!643 = !DILocation(line: 328, column: 6, scope: !628)
!644 = distinct !{!644, !632, !645, !410}
!645 = !DILocation(line: 329, column: 89, scope: !625)
!646 = !DILocation(line: 330, column: 32, scope: !432)
!647 = !DILocation(line: 330, column: 44, scope: !432)
!648 = !DILocation(line: 330, column: 54, scope: !432)
!649 = !DILocation(line: 330, column: 30, scope: !432)
!650 = !DILocation(line: 330, column: 60, scope: !432)
!651 = !DILocation(line: 331, column: 9, scope: !432)
!652 = !DILocation(line: 331, column: 7, scope: !432)
!653 = !DILocation(line: 330, column: 6, scope: !432)
!654 = !DILocation(line: 330, column: 13, scope: !432)
!655 = !DILocation(line: 330, column: 18, scope: !432)
!656 = !DILocation(line: 332, column: 11, scope: !432)
!657 = !DILocation(line: 333, column: 6, scope: !432)
!658 = !DILocation(line: 335, column: 10, scope: !659)
!659 = distinct !DILexicalBlock(scope: !432, file: !2, line: 335, column: 10)
!660 = !DILocation(line: 335, column: 17, scope: !659)
!661 = !DILocation(line: 335, column: 22, scope: !659)
!662 = !DILocation(line: 335, column: 10, scope: !432)
!663 = !DILocation(line: 336, column: 43, scope: !659)
!664 = !DILocation(line: 336, column: 41, scope: !659)
!665 = !DILocation(line: 336, column: 3, scope: !659)
!666 = !DILocation(line: 336, column: 10, scope: !659)
!667 = !DILocation(line: 336, column: 17, scope: !659)
!668 = !DILocation(line: 338, column: 40, scope: !659)
!669 = !DILocation(line: 338, column: 38, scope: !659)
!670 = !DILocation(line: 338, column: 3, scope: !659)
!671 = !DILocation(line: 338, column: 10, scope: !659)
!672 = !DILocation(line: 338, column: 17, scope: !659)
!673 = !DILocation(line: 339, column: 6, scope: !432)
!674 = !DILocation(line: 339, column: 13, scope: !432)
!675 = !DILocation(line: 339, column: 18, scope: !432)
!676 = !DILocation(line: 340, column: 11, scope: !432)
!677 = !DILocation(line: 341, column: 6, scope: !432)
!678 = distinct !{!678, !417, !679, !410}
!679 = !DILocation(line: 343, column: 5, scope: !129)
!680 = !DILocation(line: 344, column: 15, scope: !129)
!681 = !DILocation(line: 344, column: 23, scope: !129)
!682 = !DILocation(line: 344, column: 21, scope: !129)
!683 = !DILocation(line: 344, column: 13, scope: !129)
!684 = !DILocation(line: 345, column: 12, scope: !129)
!685 = !DILocation(line: 346, column: 31, scope: !129)
!686 = !DILocation(line: 346, column: 39, scope: !129)
!687 = !DILocation(line: 346, column: 29, scope: !129)
!688 = !DILocation(line: 346, column: 17, scope: !129)
!689 = !DILocation(line: 347, column: 14, scope: !129)
!690 = !DILocation(line: 347, column: 12, scope: !129)
!691 = !DILocation(line: 348, column: 20, scope: !692)
!692 = distinct !DILexicalBlock(scope: !129, file: !2, line: 348, column: 5)
!693 = !DILocation(line: 348, column: 33, scope: !692)
!694 = !DILocation(line: 348, column: 31, scope: !692)
!695 = !DILocation(line: 348, column: 10, scope: !692)
!696 = !DILocation(line: 349, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !692, file: !2, line: 348, column: 5)
!698 = !DILocation(line: 349, column: 18, scope: !697)
!699 = !DILocation(line: 349, column: 16, scope: !697)
!700 = !DILocation(line: 348, column: 5, scope: !692)
!701 = !DILocation(line: 351, column: 18, scope: !702)
!702 = distinct !DILexicalBlock(scope: !697, file: !2, line: 350, column: 28)
!703 = !DILocation(line: 351, column: 2, scope: !702)
!704 = !DILocation(line: 351, column: 9, scope: !702)
!705 = !DILocation(line: 351, column: 16, scope: !702)
!706 = !DILocation(line: 352, column: 12, scope: !702)
!707 = !DILocation(line: 352, column: 19, scope: !702)
!708 = !DILocation(line: 352, column: 9, scope: !702)
!709 = !DILocation(line: 353, column: 5, scope: !702)
!710 = !DILocation(line: 350, column: 15, scope: !697)
!711 = !DILocation(line: 350, column: 24, scope: !697)
!712 = !DILocation(line: 348, column: 5, scope: !697)
!713 = distinct !{!713, !700, !714, !410}
!714 = !DILocation(line: 353, column: 5, scope: !692)
!715 = !DILocation(line: 354, column: 22, scope: !129)
!716 = !DILocation(line: 355, column: 17, scope: !129)
!717 = !DILocation(line: 355, column: 23, scope: !129)
!718 = !DILocation(line: 355, column: 31, scope: !129)
!719 = !DILocation(line: 355, column: 5, scope: !129)
!720 = !DILocation(line: 356, column: 20, scope: !721)
!721 = distinct !DILexicalBlock(scope: !129, file: !2, line: 356, column: 5)
!722 = !DILocation(line: 356, column: 33, scope: !721)
!723 = !DILocation(line: 356, column: 31, scope: !721)
!724 = !DILocation(line: 356, column: 10, scope: !721)
!725 = !DILocation(line: 357, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !2, line: 356, column: 5)
!727 = !DILocation(line: 357, column: 18, scope: !726)
!728 = !DILocation(line: 357, column: 16, scope: !726)
!729 = !DILocation(line: 356, column: 5, scope: !721)
!730 = !DILocation(line: 359, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !2, line: 359, column: 6)
!732 = distinct !DILexicalBlock(scope: !726, file: !2, line: 358, column: 28)
!733 = !DILocation(line: 359, column: 25, scope: !731)
!734 = !DILocation(line: 359, column: 32, scope: !731)
!735 = !DILocation(line: 359, column: 23, scope: !731)
!736 = !DILocation(line: 359, column: 6, scope: !732)
!737 = !DILocation(line: 361, column: 11, scope: !738)
!738 = distinct !DILexicalBlock(scope: !731, file: !2, line: 359, column: 40)
!739 = !DILocation(line: 361, column: 34, scope: !738)
!740 = !DILocation(line: 361, column: 41, scope: !738)
!741 = !DILocation(line: 360, column: 6, scope: !738)
!742 = !DILocation(line: 362, column: 11, scope: !738)
!743 = !DILocation(line: 362, column: 6, scope: !738)
!744 = !DILocation(line: 363, column: 6, scope: !738)
!745 = !DILocation(line: 365, column: 2, scope: !732)
!746 = !DILocation(line: 365, column: 9, scope: !732)
!747 = !DILocation(line: 365, column: 28, scope: !732)
!748 = !DILocation(line: 365, column: 35, scope: !732)
!749 = !DILocation(line: 365, column: 26, scope: !732)
!750 = !DILocation(line: 366, column: 17, scope: !732)
!751 = !DILocation(line: 366, column: 23, scope: !732)
!752 = !DILocation(line: 366, column: 6, scope: !732)
!753 = distinct !{!753, !745, !754, !410}
!754 = !DILocation(line: 366, column: 35, scope: !732)
!755 = !DILocation(line: 367, column: 14, scope: !732)
!756 = !DILocation(line: 367, column: 20, scope: !732)
!757 = !DILocation(line: 367, column: 27, scope: !732)
!758 = !DILocation(line: 367, column: 2, scope: !732)
!759 = !DILocation(line: 368, column: 10, scope: !732)
!760 = !DILocation(line: 368, column: 17, scope: !732)
!761 = !DILocation(line: 368, column: 2, scope: !732)
!762 = !DILocation(line: 370, column: 18, scope: !763)
!763 = distinct !DILexicalBlock(scope: !732, file: !2, line: 368, column: 23)
!764 = !DILocation(line: 370, column: 24, scope: !763)
!765 = !DILocation(line: 370, column: 32, scope: !763)
!766 = !DILocation(line: 370, column: 39, scope: !763)
!767 = !DILocation(line: 370, column: 44, scope: !763)
!768 = !DILocation(line: 370, column: 6, scope: !763)
!769 = !DILocation(line: 371, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !763, file: !2, line: 371, column: 6)
!771 = !DILocation(line: 371, column: 11, scope: !770)
!772 = !DILocation(line: 371, column: 18, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !2, line: 371, column: 6)
!774 = !DILocation(line: 371, column: 22, scope: !773)
!775 = !DILocation(line: 371, column: 29, scope: !773)
!776 = !DILocation(line: 371, column: 34, scope: !773)
!777 = !DILocation(line: 371, column: 20, scope: !773)
!778 = !DILocation(line: 371, column: 6, scope: !770)
!779 = !DILocation(line: 372, column: 15, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !2, line: 371, column: 47)
!781 = !DILocation(line: 372, column: 21, scope: !780)
!782 = !DILocation(line: 372, column: 29, scope: !780)
!783 = !DILocation(line: 372, column: 41, scope: !780)
!784 = !DILocation(line: 372, column: 44, scope: !780)
!785 = !DILocation(line: 372, column: 3, scope: !780)
!786 = !DILocation(line: 373, column: 14, scope: !780)
!787 = !DILocation(line: 373, column: 20, scope: !780)
!788 = !DILocation(line: 373, column: 28, scope: !780)
!789 = !DILocation(line: 373, column: 35, scope: !780)
!790 = !DILocation(line: 373, column: 40, scope: !780)
!791 = !DILocation(line: 373, column: 53, scope: !780)
!792 = !DILocation(line: 373, column: 3, scope: !780)
!793 = !DILocation(line: 374, column: 15, scope: !780)
!794 = !DILocation(line: 374, column: 21, scope: !780)
!795 = !DILocation(line: 374, column: 29, scope: !780)
!796 = !DILocation(line: 374, column: 41, scope: !780)
!797 = !DILocation(line: 374, column: 44, scope: !780)
!798 = !DILocation(line: 374, column: 3, scope: !780)
!799 = !DILocation(line: 375, column: 6, scope: !780)
!800 = !DILocation(line: 371, column: 43, scope: !773)
!801 = !DILocation(line: 371, column: 6, scope: !773)
!802 = distinct !{!802, !778, !803, !410}
!803 = !DILocation(line: 375, column: 6, scope: !770)
!804 = !DILocation(line: 376, column: 13, scope: !805)
!805 = distinct !DILexicalBlock(scope: !763, file: !2, line: 376, column: 6)
!806 = !DILocation(line: 376, column: 11, scope: !805)
!807 = !DILocation(line: 376, column: 18, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !2, line: 376, column: 6)
!809 = !DILocation(line: 376, column: 22, scope: !808)
!810 = !DILocation(line: 376, column: 20, scope: !808)
!811 = !DILocation(line: 376, column: 6, scope: !805)
!812 = !DILocation(line: 377, column: 14, scope: !808)
!813 = !DILocation(line: 377, column: 20, scope: !808)
!814 = !DILocation(line: 377, column: 3, scope: !808)
!815 = !DILocation(line: 376, column: 33, scope: !808)
!816 = !DILocation(line: 376, column: 6, scope: !808)
!817 = distinct !{!817, !811, !818, !410}
!818 = !DILocation(line: 377, column: 29, scope: !805)
!819 = !DILocation(line: 378, column: 18, scope: !763)
!820 = !DILocation(line: 378, column: 24, scope: !763)
!821 = !DILocation(line: 378, column: 32, scope: !763)
!822 = !DILocation(line: 378, column: 6, scope: !763)
!823 = !DILocation(line: 379, column: 13, scope: !824)
!824 = distinct !DILexicalBlock(scope: !763, file: !2, line: 379, column: 6)
!825 = !DILocation(line: 379, column: 11, scope: !824)
!826 = !DILocation(line: 379, column: 18, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !2, line: 379, column: 6)
!828 = !DILocation(line: 379, column: 22, scope: !827)
!829 = !DILocation(line: 379, column: 29, scope: !827)
!830 = !DILocation(line: 379, column: 34, scope: !827)
!831 = !DILocation(line: 379, column: 20, scope: !827)
!832 = !DILocation(line: 379, column: 6, scope: !824)
!833 = !DILocation(line: 380, column: 30, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !2, line: 379, column: 47)
!835 = !DILocation(line: 380, column: 37, scope: !834)
!836 = !DILocation(line: 380, column: 42, scope: !834)
!837 = !DILocation(line: 380, column: 48, scope: !834)
!838 = !DILocation(line: 380, column: 51, scope: !834)
!839 = !DILocation(line: 380, column: 15, scope: !834)
!840 = !DILocation(line: 380, column: 13, scope: !834)
!841 = !DILocation(line: 381, column: 12, scope: !834)
!842 = !DILocation(line: 381, column: 18, scope: !834)
!843 = !DILocation(line: 381, column: 36, scope: !834)
!844 = !DILocation(line: 381, column: 29, scope: !834)
!845 = !DILocation(line: 381, column: 47, scope: !834)
!846 = !DILocation(line: 381, column: 3, scope: !834)
!847 = !DILocation(line: 382, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !834, file: !2, line: 382, column: 7)
!849 = !DILocation(line: 382, column: 14, scope: !848)
!850 = !DILocation(line: 382, column: 19, scope: !848)
!851 = !DILocation(line: 382, column: 32, scope: !848)
!852 = !DILocation(line: 382, column: 7, scope: !834)
!853 = !DILocation(line: 383, column: 34, scope: !854)
!854 = distinct !DILexicalBlock(scope: !848, file: !2, line: 382, column: 36)
!855 = !DILocation(line: 383, column: 41, scope: !854)
!856 = !DILocation(line: 383, column: 46, scope: !854)
!857 = !DILocation(line: 383, column: 52, scope: !854)
!858 = !DILocation(line: 383, column: 55, scope: !854)
!859 = !DILocation(line: 383, column: 19, scope: !854)
!860 = !DILocation(line: 383, column: 17, scope: !854)
!861 = !DILocation(line: 384, column: 16, scope: !854)
!862 = !DILocation(line: 384, column: 22, scope: !854)
!863 = !DILocation(line: 384, column: 40, scope: !854)
!864 = !DILocation(line: 384, column: 33, scope: !854)
!865 = !DILocation(line: 384, column: 51, scope: !854)
!866 = !DILocation(line: 384, column: 7, scope: !854)
!867 = !DILocation(line: 385, column: 3, scope: !854)
!868 = !DILocation(line: 386, column: 6, scope: !834)
!869 = !DILocation(line: 379, column: 43, scope: !827)
!870 = !DILocation(line: 379, column: 6, scope: !827)
!871 = distinct !{!871, !832, !872, !410}
!872 = !DILocation(line: 386, column: 6, scope: !824)
!873 = !DILocation(line: 387, column: 6, scope: !763)
!874 = !DILocation(line: 389, column: 18, scope: !763)
!875 = !DILocation(line: 389, column: 24, scope: !763)
!876 = !DILocation(line: 389, column: 31, scope: !763)
!877 = !DILocation(line: 389, column: 40, scope: !763)
!878 = !DILocation(line: 389, column: 52, scope: !763)
!879 = !DILocation(line: 389, column: 65, scope: !763)
!880 = !DILocation(line: 389, column: 6, scope: !763)
!881 = !DILocation(line: 390, column: 6, scope: !763)
!882 = !DILocation(line: 392, column: 10, scope: !883)
!883 = distinct !DILexicalBlock(scope: !763, file: !2, line: 392, column: 10)
!884 = !DILocation(line: 392, column: 10, scope: !763)
!885 = !DILocation(line: 393, column: 15, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !2, line: 392, column: 67)
!887 = !DILocation(line: 393, column: 21, scope: !886)
!888 = !DILocation(line: 393, column: 29, scope: !886)
!889 = !DILocation(line: 393, column: 41, scope: !886)
!890 = !DILocation(line: 393, column: 3, scope: !886)
!891 = !DILocation(line: 394, column: 10, scope: !892)
!892 = distinct !DILexicalBlock(scope: !886, file: !2, line: 394, column: 3)
!893 = !DILocation(line: 394, column: 8, scope: !892)
!894 = !DILocation(line: 394, column: 15, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !2, line: 394, column: 3)
!896 = !DILocation(line: 394, column: 19, scope: !895)
!897 = !DILocation(line: 394, column: 31, scope: !895)
!898 = !DILocation(line: 394, column: 17, scope: !895)
!899 = !DILocation(line: 394, column: 3, scope: !892)
!900 = !DILocation(line: 395, column: 30, scope: !895)
!901 = !DILocation(line: 395, column: 36, scope: !895)
!902 = !DILocation(line: 395, column: 45, scope: !895)
!903 = !DILocation(line: 395, column: 57, scope: !895)
!904 = !DILocation(line: 395, column: 65, scope: !895)
!905 = !DILocation(line: 395, column: 68, scope: !895)
!906 = !DILocation(line: 395, column: 7, scope: !895)
!907 = !DILocation(line: 394, column: 43, scope: !895)
!908 = !DILocation(line: 394, column: 3, scope: !895)
!909 = distinct !{!909, !899, !910, !410}
!910 = !DILocation(line: 395, column: 75, scope: !892)
!911 = !DILocation(line: 396, column: 6, scope: !886)
!912 = !DILocation(line: 397, column: 15, scope: !913)
!913 = distinct !DILexicalBlock(scope: !883, file: !2, line: 396, column: 13)
!914 = !DILocation(line: 397, column: 21, scope: !913)
!915 = !DILocation(line: 397, column: 29, scope: !913)
!916 = !DILocation(line: 397, column: 41, scope: !913)
!917 = !DILocation(line: 397, column: 3, scope: !913)
!918 = !DILocation(line: 398, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !2, line: 398, column: 3)
!920 = !DILocation(line: 398, column: 8, scope: !919)
!921 = !DILocation(line: 398, column: 15, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !2, line: 398, column: 3)
!923 = !DILocation(line: 398, column: 19, scope: !922)
!924 = !DILocation(line: 398, column: 31, scope: !922)
!925 = !DILocation(line: 398, column: 17, scope: !922)
!926 = !DILocation(line: 398, column: 3, scope: !919)
!927 = !DILocation(line: 399, column: 20, scope: !922)
!928 = !DILocation(line: 399, column: 26, scope: !922)
!929 = !DILocation(line: 399, column: 35, scope: !922)
!930 = !DILocation(line: 399, column: 47, scope: !922)
!931 = !DILocation(line: 399, column: 55, scope: !922)
!932 = !DILocation(line: 399, column: 58, scope: !922)
!933 = !DILocation(line: 399, column: 7, scope: !922)
!934 = !DILocation(line: 398, column: 43, scope: !922)
!935 = !DILocation(line: 398, column: 3, scope: !922)
!936 = distinct !{!936, !926, !937, !410}
!937 = !DILocation(line: 399, column: 65, scope: !919)
!938 = !DILocation(line: 401, column: 6, scope: !763)
!939 = !DILocation(line: 403, column: 18, scope: !763)
!940 = !DILocation(line: 403, column: 24, scope: !763)
!941 = !DILocation(line: 403, column: 32, scope: !763)
!942 = !DILocation(line: 403, column: 44, scope: !763)
!943 = !DILocation(line: 403, column: 6, scope: !763)
!944 = !DILocation(line: 404, column: 14, scope: !763)
!945 = !DILocation(line: 404, column: 12, scope: !763)
!946 = !DILocation(line: 405, column: 13, scope: !763)
!947 = !DILocation(line: 406, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !763, file: !2, line: 406, column: 6)
!949 = !DILocation(line: 406, column: 11, scope: !948)
!950 = !DILocation(line: 406, column: 18, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !2, line: 406, column: 6)
!952 = !DILocation(line: 406, column: 22, scope: !951)
!953 = !DILocation(line: 406, column: 34, scope: !951)
!954 = !DILocation(line: 406, column: 20, scope: !951)
!955 = !DILocation(line: 406, column: 6, scope: !948)
!956 = !DILocation(line: 407, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !951, file: !2, line: 406, column: 50)
!958 = !DILocation(line: 407, column: 21, scope: !957)
!959 = !DILocation(line: 407, column: 29, scope: !957)
!960 = !DILocation(line: 407, column: 3, scope: !957)
!961 = !DILocation(line: 408, column: 13, scope: !957)
!962 = !DILocation(line: 408, column: 10, scope: !957)
!963 = !DILocation(line: 409, column: 6, scope: !957)
!964 = !DILocation(line: 406, column: 46, scope: !951)
!965 = !DILocation(line: 406, column: 6, scope: !951)
!966 = distinct !{!966, !955, !967, !410}
!967 = !DILocation(line: 409, column: 6, scope: !948)
!968 = !DILocation(line: 410, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !763, file: !2, line: 410, column: 6)
!970 = !DILocation(line: 410, column: 11, scope: !969)
!971 = !DILocation(line: 410, column: 18, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !2, line: 410, column: 6)
!973 = !DILocation(line: 410, column: 20, scope: !972)
!974 = !DILocation(line: 410, column: 6, scope: !969)
!975 = !DILocation(line: 411, column: 15, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !2, line: 410, column: 44)
!977 = !DILocation(line: 411, column: 21, scope: !976)
!978 = !DILocation(line: 412, column: 8, scope: !976)
!979 = !DILocation(line: 412, column: 20, scope: !976)
!980 = !DILocation(line: 412, column: 33, scope: !976)
!981 = !DILocation(line: 412, column: 46, scope: !976)
!982 = !DILocation(line: 411, column: 3, scope: !976)
!983 = !DILocation(line: 413, column: 6, scope: !976)
!984 = !DILocation(line: 410, column: 40, scope: !972)
!985 = !DILocation(line: 410, column: 6, scope: !972)
!986 = distinct !{!986, !974, !987, !410}
!987 = !DILocation(line: 413, column: 6, scope: !969)
!988 = !DILocation(line: 414, column: 13, scope: !989)
!989 = distinct !DILexicalBlock(scope: !763, file: !2, line: 414, column: 6)
!990 = !DILocation(line: 414, column: 11, scope: !989)
!991 = !DILocation(line: 414, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !2, line: 414, column: 6)
!993 = !DILocation(line: 414, column: 22, scope: !992)
!994 = !DILocation(line: 414, column: 34, scope: !992)
!995 = !DILocation(line: 414, column: 20, scope: !992)
!996 = !DILocation(line: 414, column: 6, scope: !989)
!997 = !DILocation(line: 415, column: 16, scope: !992)
!998 = !DILocation(line: 415, column: 22, scope: !992)
!999 = !DILocation(line: 415, column: 31, scope: !992)
!1000 = !DILocation(line: 415, column: 43, scope: !992)
!1001 = !DILocation(line: 415, column: 51, scope: !992)
!1002 = !DILocation(line: 415, column: 3, scope: !992)
!1003 = !DILocation(line: 414, column: 46, scope: !992)
!1004 = !DILocation(line: 414, column: 6, scope: !992)
!1005 = distinct !{!1005, !996, !1006, !410}
!1006 = !DILocation(line: 415, column: 53, scope: !989)
!1007 = !DILocation(line: 416, column: 6, scope: !763)
!1008 = !DILocation(line: 418, column: 10, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !763, file: !2, line: 418, column: 10)
!1010 = !DILocation(line: 418, column: 10, scope: !763)
!1011 = !DILocation(line: 419, column: 15, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 418, column: 67)
!1013 = !DILocation(line: 419, column: 21, scope: !1012)
!1014 = !DILocation(line: 419, column: 29, scope: !1012)
!1015 = !DILocation(line: 419, column: 41, scope: !1012)
!1016 = !DILocation(line: 419, column: 3, scope: !1012)
!1017 = !DILocation(line: 420, column: 10, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 420, column: 3)
!1019 = !DILocation(line: 420, column: 8, scope: !1018)
!1020 = !DILocation(line: 420, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 420, column: 3)
!1022 = !DILocation(line: 420, column: 19, scope: !1021)
!1023 = !DILocation(line: 420, column: 31, scope: !1021)
!1024 = !DILocation(line: 420, column: 17, scope: !1021)
!1025 = !DILocation(line: 420, column: 3, scope: !1018)
!1026 = !DILocation(line: 421, column: 30, scope: !1021)
!1027 = !DILocation(line: 421, column: 36, scope: !1021)
!1028 = !DILocation(line: 421, column: 45, scope: !1021)
!1029 = !DILocation(line: 421, column: 57, scope: !1021)
!1030 = !DILocation(line: 421, column: 69, scope: !1021)
!1031 = !DILocation(line: 421, column: 7, scope: !1021)
!1032 = !DILocation(line: 420, column: 43, scope: !1021)
!1033 = !DILocation(line: 420, column: 3, scope: !1021)
!1034 = distinct !{!1034, !1025, !1035, !410}
!1035 = !DILocation(line: 421, column: 71, scope: !1018)
!1036 = !DILocation(line: 422, column: 6, scope: !1012)
!1037 = !DILocation(line: 423, column: 15, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 422, column: 13)
!1039 = !DILocation(line: 423, column: 21, scope: !1038)
!1040 = !DILocation(line: 423, column: 29, scope: !1038)
!1041 = !DILocation(line: 423, column: 41, scope: !1038)
!1042 = !DILocation(line: 423, column: 3, scope: !1038)
!1043 = !DILocation(line: 424, column: 10, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 424, column: 3)
!1045 = !DILocation(line: 424, column: 8, scope: !1044)
!1046 = !DILocation(line: 424, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 424, column: 3)
!1048 = !DILocation(line: 424, column: 19, scope: !1047)
!1049 = !DILocation(line: 424, column: 31, scope: !1047)
!1050 = !DILocation(line: 424, column: 17, scope: !1047)
!1051 = !DILocation(line: 424, column: 3, scope: !1044)
!1052 = !DILocation(line: 425, column: 20, scope: !1047)
!1053 = !DILocation(line: 425, column: 26, scope: !1047)
!1054 = !DILocation(line: 425, column: 35, scope: !1047)
!1055 = !DILocation(line: 425, column: 47, scope: !1047)
!1056 = !DILocation(line: 425, column: 59, scope: !1047)
!1057 = !DILocation(line: 425, column: 7, scope: !1047)
!1058 = !DILocation(line: 424, column: 43, scope: !1047)
!1059 = !DILocation(line: 424, column: 3, scope: !1047)
!1060 = distinct !{!1060, !1051, !1061, !410}
!1061 = !DILocation(line: 425, column: 61, scope: !1044)
!1062 = !DILocation(line: 427, column: 6, scope: !763)
!1063 = !DILocation(line: 429, column: 18, scope: !763)
!1064 = !DILocation(line: 429, column: 24, scope: !763)
!1065 = !DILocation(line: 429, column: 32, scope: !763)
!1066 = !DILocation(line: 429, column: 39, scope: !763)
!1067 = !DILocation(line: 429, column: 44, scope: !763)
!1068 = !DILocation(line: 429, column: 6, scope: !763)
!1069 = !DILocation(line: 430, column: 18, scope: !763)
!1070 = !DILocation(line: 430, column: 24, scope: !763)
!1071 = !DILocation(line: 430, column: 32, scope: !763)
!1072 = !DILocation(line: 430, column: 39, scope: !763)
!1073 = !DILocation(line: 430, column: 44, scope: !763)
!1074 = !DILocation(line: 430, column: 6, scope: !763)
!1075 = !DILocation(line: 431, column: 18, scope: !763)
!1076 = !DILocation(line: 431, column: 24, scope: !763)
!1077 = !DILocation(line: 431, column: 32, scope: !763)
!1078 = !DILocation(line: 431, column: 39, scope: !763)
!1079 = !DILocation(line: 431, column: 44, scope: !763)
!1080 = !DILocation(line: 431, column: 6, scope: !763)
!1081 = !DILocation(line: 432, column: 18, scope: !763)
!1082 = !DILocation(line: 432, column: 24, scope: !763)
!1083 = !DILocation(line: 432, column: 32, scope: !763)
!1084 = !DILocation(line: 432, column: 39, scope: !763)
!1085 = !DILocation(line: 432, column: 44, scope: !763)
!1086 = !DILocation(line: 432, column: 6, scope: !763)
!1087 = !DILocation(line: 433, column: 18, scope: !763)
!1088 = !DILocation(line: 433, column: 24, scope: !763)
!1089 = !DILocation(line: 433, column: 32, scope: !763)
!1090 = !DILocation(line: 433, column: 39, scope: !763)
!1091 = !DILocation(line: 433, column: 44, scope: !763)
!1092 = !DILocation(line: 433, column: 6, scope: !763)
!1093 = !DILocation(line: 434, column: 13, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !763, file: !2, line: 434, column: 6)
!1095 = !DILocation(line: 434, column: 11, scope: !1094)
!1096 = !DILocation(line: 434, column: 18, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 434, column: 6)
!1098 = !DILocation(line: 434, column: 22, scope: !1097)
!1099 = !DILocation(line: 434, column: 20, scope: !1097)
!1100 = !DILocation(line: 434, column: 6, scope: !1094)
!1101 = !DILocation(line: 435, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 435, column: 7)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 434, column: 39)
!1104 = !DILocation(line: 435, column: 7, scope: !1103)
!1105 = !DILocation(line: 436, column: 19, scope: !1102)
!1106 = !DILocation(line: 436, column: 25, scope: !1102)
!1107 = !DILocation(line: 437, column: 33, scope: !1102)
!1108 = !DILocation(line: 438, column: 35, scope: !1102)
!1109 = !DILocation(line: 438, column: 47, scope: !1102)
!1110 = !DILocation(line: 437, column: 73, scope: !1102)
!1111 = !DILocation(line: 436, column: 7, scope: !1102)
!1112 = !DILocation(line: 440, column: 19, scope: !1102)
!1113 = !DILocation(line: 440, column: 25, scope: !1102)
!1114 = !DILocation(line: 440, column: 7, scope: !1102)
!1115 = !DILocation(line: 441, column: 6, scope: !1103)
!1116 = !DILocation(line: 434, column: 35, scope: !1097)
!1117 = !DILocation(line: 434, column: 6, scope: !1097)
!1118 = distinct !{!1118, !1100, !1119, !410}
!1119 = !DILocation(line: 441, column: 6, scope: !1094)
!1120 = !DILocation(line: 442, column: 6, scope: !763)
!1121 = !DILocation(line: 444, column: 18, scope: !763)
!1122 = !DILocation(line: 444, column: 24, scope: !763)
!1123 = !DILocation(line: 444, column: 32, scope: !763)
!1124 = !DILocation(line: 444, column: 44, scope: !763)
!1125 = !DILocation(line: 444, column: 6, scope: !763)
!1126 = !DILocation(line: 445, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !763, file: !2, line: 445, column: 6)
!1128 = !DILocation(line: 445, column: 11, scope: !1127)
!1129 = !DILocation(line: 445, column: 18, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 445, column: 6)
!1131 = !DILocation(line: 445, column: 22, scope: !1130)
!1132 = !DILocation(line: 445, column: 34, scope: !1130)
!1133 = !DILocation(line: 445, column: 20, scope: !1130)
!1134 = !DILocation(line: 445, column: 6, scope: !1127)
!1135 = !DILocation(line: 446, column: 15, scope: !1130)
!1136 = !DILocation(line: 446, column: 21, scope: !1130)
!1137 = !DILocation(line: 446, column: 29, scope: !1130)
!1138 = !DILocation(line: 446, column: 41, scope: !1130)
!1139 = !DILocation(line: 446, column: 54, scope: !1130)
!1140 = !DILocation(line: 446, column: 62, scope: !1130)
!1141 = !DILocation(line: 446, column: 3, scope: !1130)
!1142 = !DILocation(line: 445, column: 46, scope: !1130)
!1143 = !DILocation(line: 445, column: 6, scope: !1130)
!1144 = distinct !{!1144, !1134, !1145, !410}
!1145 = !DILocation(line: 446, column: 64, scope: !1127)
!1146 = !DILocation(line: 447, column: 6, scope: !763)
!1147 = !DILocation(line: 449, column: 18, scope: !763)
!1148 = !DILocation(line: 449, column: 24, scope: !763)
!1149 = !DILocation(line: 449, column: 32, scope: !763)
!1150 = !DILocation(line: 449, column: 44, scope: !763)
!1151 = !DILocation(line: 449, column: 6, scope: !763)
!1152 = !DILocation(line: 450, column: 13, scope: !763)
!1153 = !DILocation(line: 451, column: 13, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !763, file: !2, line: 451, column: 6)
!1155 = !DILocation(line: 451, column: 11, scope: !1154)
!1156 = !DILocation(line: 451, column: 18, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 451, column: 6)
!1158 = !DILocation(line: 451, column: 22, scope: !1157)
!1159 = !DILocation(line: 451, column: 34, scope: !1157)
!1160 = !DILocation(line: 451, column: 20, scope: !1157)
!1161 = !DILocation(line: 451, column: 6, scope: !1154)
!1162 = !DILocation(line: 452, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 451, column: 50)
!1164 = !DILocation(line: 452, column: 21, scope: !1163)
!1165 = !DILocation(line: 452, column: 29, scope: !1163)
!1166 = !DILocation(line: 452, column: 3, scope: !1163)
!1167 = !DILocation(line: 453, column: 35, scope: !1163)
!1168 = !DILocation(line: 453, column: 47, scope: !1163)
!1169 = !DILocation(line: 453, column: 60, scope: !1163)
!1170 = !DILocation(line: 453, column: 71, scope: !1163)
!1171 = !DILocation(line: 453, column: 20, scope: !1163)
!1172 = !DILocation(line: 453, column: 13, scope: !1163)
!1173 = !DILocation(line: 453, column: 76, scope: !1163)
!1174 = !DILocation(line: 453, column: 10, scope: !1163)
!1175 = !DILocation(line: 454, column: 6, scope: !1163)
!1176 = !DILocation(line: 451, column: 46, scope: !1157)
!1177 = !DILocation(line: 451, column: 6, scope: !1157)
!1178 = distinct !{!1178, !1161, !1179, !410}
!1179 = !DILocation(line: 454, column: 6, scope: !1154)
!1180 = !DILocation(line: 455, column: 18, scope: !763)
!1181 = !DILocation(line: 455, column: 24, scope: !763)
!1182 = !DILocation(line: 455, column: 32, scope: !763)
!1183 = !DILocation(line: 455, column: 6, scope: !763)
!1184 = !DILocation(line: 456, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !763, file: !2, line: 456, column: 6)
!1186 = !DILocation(line: 456, column: 11, scope: !1185)
!1187 = !DILocation(line: 456, column: 18, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 456, column: 6)
!1189 = !DILocation(line: 456, column: 22, scope: !1188)
!1190 = !DILocation(line: 456, column: 34, scope: !1188)
!1191 = !DILocation(line: 456, column: 20, scope: !1188)
!1192 = !DILocation(line: 456, column: 6, scope: !1185)
!1193 = !DILocation(line: 457, column: 30, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 456, column: 50)
!1195 = !DILocation(line: 457, column: 42, scope: !1194)
!1196 = !DILocation(line: 457, column: 55, scope: !1194)
!1197 = !DILocation(line: 457, column: 66, scope: !1194)
!1198 = !DILocation(line: 457, column: 15, scope: !1194)
!1199 = !DILocation(line: 457, column: 13, scope: !1194)
!1200 = !DILocation(line: 458, column: 12, scope: !1194)
!1201 = !DILocation(line: 458, column: 18, scope: !1194)
!1202 = !DILocation(line: 458, column: 36, scope: !1194)
!1203 = !DILocation(line: 458, column: 29, scope: !1194)
!1204 = !DILocation(line: 458, column: 47, scope: !1194)
!1205 = !DILocation(line: 458, column: 3, scope: !1194)
!1206 = !DILocation(line: 459, column: 6, scope: !1194)
!1207 = !DILocation(line: 456, column: 46, scope: !1188)
!1208 = !DILocation(line: 456, column: 6, scope: !1188)
!1209 = distinct !{!1209, !1192, !1210, !410}
!1210 = !DILocation(line: 459, column: 6, scope: !1185)
!1211 = !DILocation(line: 460, column: 6, scope: !763)
!1212 = !DILocation(line: 462, column: 18, scope: !763)
!1213 = !DILocation(line: 462, column: 24, scope: !763)
!1214 = !DILocation(line: 462, column: 31, scope: !763)
!1215 = !DILocation(line: 462, column: 40, scope: !763)
!1216 = !DILocation(line: 462, column: 47, scope: !763)
!1217 = !DILocation(line: 462, column: 6, scope: !763)
!1218 = !DILocation(line: 463, column: 6, scope: !763)
!1219 = !DILocation(line: 465, column: 5, scope: !732)
!1220 = !DILocation(line: 358, column: 15, scope: !726)
!1221 = !DILocation(line: 358, column: 24, scope: !726)
!1222 = !DILocation(line: 356, column: 5, scope: !726)
!1223 = distinct !{!1223, !729, !1224, !410}
!1224 = !DILocation(line: 465, column: 5, scope: !721)
!1225 = !DILocation(line: 467, column: 10, scope: !129)
!1226 = !DILocation(line: 467, column: 5, scope: !129)
!1227 = !DILocation(line: 468, column: 5, scope: !129)
!1228 = !DILocation(line: 469, column: 1, scope: !129)
!1229 = !DISubprogram(name: "reallocarray", scope: !1230, file: !1230, line: 569, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1230 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!114, !114, !1233, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1234, line: 70, baseType: !69)
!1234 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!1235 = !DISubprogram(name: "pcfError", scope: !213, file: !213, line: 95, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !243, null}
!1238 = !DISubprogram(name: "strlen", scope: !1239, file: !1239, line: 407, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!69, !243}
!1242 = distinct !DISubprogram(name: "pcfNameForAtom", scope: !2, file: !2, line: 195, type: !1243, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1245)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!243, !67}
!1245 = !{!1246}
!1246 = !DILocalVariable(name: "a", arg: 1, scope: !1242, file: !2, line: 195, type: !67)
!1247 = !DILocation(line: 195, column: 21, scope: !1242)
!1248 = !DILocation(line: 197, column: 24, scope: !1242)
!1249 = !DILocation(line: 197, column: 12, scope: !1242)
!1250 = !DILocation(line: 197, column: 5, scope: !1242)
!1251 = distinct !DISubprogram(name: "pcfWriteTOC", scope: !2, file: !2, line: 103, type: !1252, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1256)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !177, !1254, !27}
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCFTablePtr", file: !213, line: 47, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1256 = !{!1257, !1258, !1259, !1260, !1261}
!1257 = !DILocalVariable(name: "file", arg: 1, scope: !1251, file: !2, line: 103, type: !177)
!1258 = !DILocalVariable(name: "table", arg: 2, scope: !1251, file: !2, line: 103, type: !1254)
!1259 = !DILocalVariable(name: "count", arg: 3, scope: !1251, file: !2, line: 103, type: !27)
!1260 = !DILocalVariable(name: "version", scope: !1251, file: !2, line: 105, type: !74)
!1261 = !DILocalVariable(name: "i", scope: !1251, file: !2, line: 106, type: !27)
!1262 = !DILocation(line: 103, column: 25, scope: !1251)
!1263 = !DILocation(line: 103, column: 43, scope: !1251)
!1264 = !DILocation(line: 103, column: 54, scope: !1251)
!1265 = !DILocation(line: 105, column: 5, scope: !1251)
!1266 = !DILocation(line: 105, column: 17, scope: !1251)
!1267 = !DILocation(line: 106, column: 5, scope: !1251)
!1268 = !DILocation(line: 106, column: 17, scope: !1251)
!1269 = !DILocation(line: 108, column: 13, scope: !1251)
!1270 = !DILocation(line: 109, column: 17, scope: !1251)
!1271 = !DILocation(line: 109, column: 23, scope: !1251)
!1272 = !DILocation(line: 109, column: 5, scope: !1251)
!1273 = !DILocation(line: 110, column: 17, scope: !1251)
!1274 = !DILocation(line: 110, column: 23, scope: !1251)
!1275 = !DILocation(line: 110, column: 5, scope: !1251)
!1276 = !DILocation(line: 111, column: 12, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 111, column: 5)
!1278 = !DILocation(line: 111, column: 10, scope: !1277)
!1279 = !DILocation(line: 111, column: 17, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 111, column: 5)
!1281 = !DILocation(line: 111, column: 21, scope: !1280)
!1282 = !DILocation(line: 111, column: 19, scope: !1280)
!1283 = !DILocation(line: 111, column: 5, scope: !1277)
!1284 = !DILocation(line: 112, column: 14, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 111, column: 33)
!1286 = !DILocation(line: 112, column: 20, scope: !1285)
!1287 = !DILocation(line: 112, column: 27, scope: !1285)
!1288 = !DILocation(line: 112, column: 2, scope: !1285)
!1289 = !DILocation(line: 113, column: 14, scope: !1285)
!1290 = !DILocation(line: 113, column: 20, scope: !1285)
!1291 = !DILocation(line: 113, column: 27, scope: !1285)
!1292 = !DILocation(line: 113, column: 2, scope: !1285)
!1293 = !DILocation(line: 114, column: 14, scope: !1285)
!1294 = !DILocation(line: 114, column: 20, scope: !1285)
!1295 = !DILocation(line: 114, column: 27, scope: !1285)
!1296 = !DILocation(line: 114, column: 2, scope: !1285)
!1297 = !DILocation(line: 115, column: 14, scope: !1285)
!1298 = !DILocation(line: 115, column: 20, scope: !1285)
!1299 = !DILocation(line: 115, column: 27, scope: !1285)
!1300 = !DILocation(line: 115, column: 2, scope: !1285)
!1301 = !DILocation(line: 116, column: 7, scope: !1285)
!1302 = !DILocation(line: 117, column: 5, scope: !1285)
!1303 = !DILocation(line: 111, column: 29, scope: !1280)
!1304 = !DILocation(line: 111, column: 5, scope: !1280)
!1305 = distinct !{!1305, !1283, !1306, !410}
!1306 = !DILocation(line: 117, column: 5, scope: !1277)
!1307 = !DILocation(line: 118, column: 1, scope: !1251)
!1308 = !DISubprogram(name: "printf", scope: !1309, file: !1309, line: 356, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!27, !1312, null}
!1312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !243)
!1313 = !DISubprogram(name: "free", scope: !1230, file: !1230, line: 555, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !114}
!1316 = distinct !DISubprogram(name: "pcfPutINT8", scope: !2, file: !2, line: 96, type: !1317, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!27, !177, !74, !27}
!1319 = !{!1320, !1321, !1322}
!1320 = !DILocalVariable(name: "file", arg: 1, scope: !1316, file: !2, line: 96, type: !177)
!1321 = !DILocalVariable(name: "format", arg: 2, scope: !1316, file: !2, line: 96, type: !74)
!1322 = !DILocalVariable(name: "c", arg: 3, scope: !1316, file: !2, line: 96, type: !27)
!1323 = !DILocation(line: 96, column: 24, scope: !1316)
!1324 = !DILocation(line: 96, column: 37, scope: !1316)
!1325 = !DILocation(line: 96, column: 49, scope: !1316)
!1326 = !DILocation(line: 98, column: 22, scope: !1316)
!1327 = !DILocation(line: 99, column: 12, scope: !1316)
!1328 = !DILocation(line: 99, column: 5, scope: !1316)
!1329 = distinct !DISubprogram(name: "pcfPutLSB32", scope: !2, file: !2, line: 55, type: !1330, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!27, !177, !27}
!1332 = !{!1333, !1334}
!1333 = !DILocalVariable(name: "file", arg: 1, scope: !1329, file: !2, line: 55, type: !177)
!1334 = !DILocalVariable(name: "c", arg: 2, scope: !1329, file: !2, line: 55, type: !27)
!1335 = !DILocation(line: 55, column: 25, scope: !1329)
!1336 = !DILocation(line: 55, column: 35, scope: !1329)
!1337 = !DILocation(line: 57, column: 22, scope: !1329)
!1338 = !DILocation(line: 58, column: 12, scope: !1329)
!1339 = !DILocation(line: 59, column: 12, scope: !1329)
!1340 = !DILocation(line: 60, column: 12, scope: !1329)
!1341 = !DILocation(line: 61, column: 12, scope: !1329)
!1342 = !DILocation(line: 61, column: 5, scope: !1329)
!1343 = distinct !DISubprogram(name: "pcfPutINT32", scope: !2, file: !2, line: 65, type: !1317, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1344)
!1344 = !{!1345, !1346, !1347}
!1345 = !DILocalVariable(name: "file", arg: 1, scope: !1343, file: !2, line: 65, type: !177)
!1346 = !DILocalVariable(name: "format", arg: 2, scope: !1343, file: !2, line: 65, type: !74)
!1347 = !DILocalVariable(name: "c", arg: 3, scope: !1343, file: !2, line: 65, type: !27)
!1348 = !DILocation(line: 65, column: 25, scope: !1343)
!1349 = !DILocation(line: 65, column: 38, scope: !1343)
!1350 = !DILocation(line: 65, column: 50, scope: !1343)
!1351 = !DILocation(line: 67, column: 22, scope: !1343)
!1352 = !DILocation(line: 68, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 68, column: 9)
!1354 = !DILocation(line: 68, column: 32, scope: !1353)
!1355 = !DILocation(line: 68, column: 9, scope: !1343)
!1356 = !DILocation(line: 69, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 68, column: 45)
!1358 = !DILocation(line: 70, column: 9, scope: !1357)
!1359 = !DILocation(line: 71, column: 9, scope: !1357)
!1360 = !DILocation(line: 72, column: 9, scope: !1357)
!1361 = !DILocation(line: 72, column: 2, scope: !1357)
!1362 = !DILocation(line: 74, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 73, column: 12)
!1364 = !DILocation(line: 75, column: 9, scope: !1363)
!1365 = !DILocation(line: 76, column: 9, scope: !1363)
!1366 = !DILocation(line: 77, column: 9, scope: !1363)
!1367 = !DILocation(line: 77, column: 2, scope: !1363)
!1368 = !DILocation(line: 79, column: 1, scope: !1343)
!1369 = distinct !DISubprogram(name: "pcfWrite", scope: !2, file: !2, line: 48, type: !1370, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1372)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!27, !177, !243, !27}
!1372 = !{!1373, !1374, !1375}
!1373 = !DILocalVariable(name: "file", arg: 1, scope: !1369, file: !2, line: 48, type: !177)
!1374 = !DILocalVariable(name: "b", arg: 2, scope: !1369, file: !2, line: 48, type: !243)
!1375 = !DILocalVariable(name: "c", arg: 3, scope: !1369, file: !2, line: 48, type: !27)
!1376 = !DILocation(line: 48, column: 22, scope: !1369)
!1377 = !DILocation(line: 48, column: 40, scope: !1369)
!1378 = !DILocation(line: 48, column: 47, scope: !1369)
!1379 = !DILocation(line: 50, column: 25, scope: !1369)
!1380 = !DILocation(line: 50, column: 22, scope: !1369)
!1381 = !DILocation(line: 51, column: 12, scope: !1369)
!1382 = !DILocation(line: 51, column: 5, scope: !1369)
!1383 = distinct !DISubprogram(name: "pcfPutAccel", scope: !2, file: !2, line: 155, type: !1384, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1388)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !177, !74, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontInfoPtr", file: !12, line: 37, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1388 = !{!1389, !1390, !1391}
!1389 = !DILocalVariable(name: "file", arg: 1, scope: !1383, file: !2, line: 155, type: !177)
!1390 = !DILocalVariable(name: "format", arg: 2, scope: !1383, file: !2, line: 155, type: !74)
!1391 = !DILocalVariable(name: "pFontInfo", arg: 3, scope: !1383, file: !2, line: 155, type: !1386)
!1392 = !DILocation(line: 155, column: 25, scope: !1383)
!1393 = !DILocation(line: 155, column: 38, scope: !1383)
!1394 = !DILocation(line: 155, column: 58, scope: !1383)
!1395 = !DILocation(line: 157, column: 16, scope: !1383)
!1396 = !DILocation(line: 157, column: 22, scope: !1383)
!1397 = !DILocation(line: 157, column: 30, scope: !1383)
!1398 = !DILocation(line: 157, column: 41, scope: !1383)
!1399 = !DILocation(line: 157, column: 5, scope: !1383)
!1400 = !DILocation(line: 158, column: 16, scope: !1383)
!1401 = !DILocation(line: 158, column: 22, scope: !1383)
!1402 = !DILocation(line: 158, column: 30, scope: !1383)
!1403 = !DILocation(line: 158, column: 41, scope: !1383)
!1404 = !DILocation(line: 158, column: 5, scope: !1383)
!1405 = !DILocation(line: 159, column: 16, scope: !1383)
!1406 = !DILocation(line: 159, column: 22, scope: !1383)
!1407 = !DILocation(line: 159, column: 30, scope: !1383)
!1408 = !DILocation(line: 159, column: 41, scope: !1383)
!1409 = !DILocation(line: 159, column: 5, scope: !1383)
!1410 = !DILocation(line: 160, column: 16, scope: !1383)
!1411 = !DILocation(line: 160, column: 22, scope: !1383)
!1412 = !DILocation(line: 160, column: 30, scope: !1383)
!1413 = !DILocation(line: 160, column: 41, scope: !1383)
!1414 = !DILocation(line: 160, column: 5, scope: !1383)
!1415 = !DILocation(line: 161, column: 16, scope: !1383)
!1416 = !DILocation(line: 161, column: 22, scope: !1383)
!1417 = !DILocation(line: 161, column: 30, scope: !1383)
!1418 = !DILocation(line: 161, column: 41, scope: !1383)
!1419 = !DILocation(line: 161, column: 5, scope: !1383)
!1420 = !DILocation(line: 162, column: 16, scope: !1383)
!1421 = !DILocation(line: 162, column: 22, scope: !1383)
!1422 = !DILocation(line: 162, column: 30, scope: !1383)
!1423 = !DILocation(line: 162, column: 41, scope: !1383)
!1424 = !DILocation(line: 162, column: 5, scope: !1383)
!1425 = !DILocation(line: 163, column: 16, scope: !1383)
!1426 = !DILocation(line: 163, column: 22, scope: !1383)
!1427 = !DILocation(line: 163, column: 30, scope: !1383)
!1428 = !DILocation(line: 163, column: 41, scope: !1383)
!1429 = !DILocation(line: 163, column: 5, scope: !1383)
!1430 = !DILocation(line: 164, column: 16, scope: !1383)
!1431 = !DILocation(line: 164, column: 22, scope: !1383)
!1432 = !DILocation(line: 164, column: 5, scope: !1383)
!1433 = !DILocation(line: 165, column: 17, scope: !1383)
!1434 = !DILocation(line: 165, column: 23, scope: !1383)
!1435 = !DILocation(line: 165, column: 31, scope: !1383)
!1436 = !DILocation(line: 165, column: 42, scope: !1383)
!1437 = !DILocation(line: 165, column: 5, scope: !1383)
!1438 = !DILocation(line: 166, column: 17, scope: !1383)
!1439 = !DILocation(line: 166, column: 23, scope: !1383)
!1440 = !DILocation(line: 166, column: 31, scope: !1383)
!1441 = !DILocation(line: 166, column: 42, scope: !1383)
!1442 = !DILocation(line: 166, column: 5, scope: !1383)
!1443 = !DILocation(line: 167, column: 17, scope: !1383)
!1444 = !DILocation(line: 167, column: 23, scope: !1383)
!1445 = !DILocation(line: 167, column: 31, scope: !1383)
!1446 = !DILocation(line: 167, column: 42, scope: !1383)
!1447 = !DILocation(line: 167, column: 5, scope: !1383)
!1448 = !DILocation(line: 168, column: 18, scope: !1383)
!1449 = !DILocation(line: 168, column: 24, scope: !1383)
!1450 = !DILocation(line: 168, column: 33, scope: !1383)
!1451 = !DILocation(line: 168, column: 44, scope: !1383)
!1452 = !DILocation(line: 168, column: 5, scope: !1383)
!1453 = !DILocation(line: 169, column: 18, scope: !1383)
!1454 = !DILocation(line: 169, column: 24, scope: !1383)
!1455 = !DILocation(line: 169, column: 33, scope: !1383)
!1456 = !DILocation(line: 169, column: 44, scope: !1383)
!1457 = !DILocation(line: 169, column: 5, scope: !1383)
!1458 = !DILocation(line: 170, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 170, column: 9)
!1460 = !DILocation(line: 170, column: 9, scope: !1383)
!1461 = !DILocation(line: 171, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 170, column: 58)
!1463 = !DILocation(line: 171, column: 21, scope: !1462)
!1464 = !DILocation(line: 171, column: 30, scope: !1462)
!1465 = !DILocation(line: 171, column: 41, scope: !1462)
!1466 = !DILocation(line: 171, column: 2, scope: !1462)
!1467 = !DILocation(line: 172, column: 15, scope: !1462)
!1468 = !DILocation(line: 172, column: 21, scope: !1462)
!1469 = !DILocation(line: 172, column: 30, scope: !1462)
!1470 = !DILocation(line: 172, column: 41, scope: !1462)
!1471 = !DILocation(line: 172, column: 2, scope: !1462)
!1472 = !DILocation(line: 173, column: 5, scope: !1462)
!1473 = !DILocation(line: 174, column: 1, scope: !1383)
!1474 = distinct !DISubprogram(name: "pcfPutINT16", scope: !2, file: !2, line: 82, type: !1317, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DILocalVariable(name: "file", arg: 1, scope: !1474, file: !2, line: 82, type: !177)
!1477 = !DILocalVariable(name: "format", arg: 2, scope: !1474, file: !2, line: 82, type: !74)
!1478 = !DILocalVariable(name: "c", arg: 3, scope: !1474, file: !2, line: 82, type: !27)
!1479 = !DILocation(line: 82, column: 25, scope: !1474)
!1480 = !DILocation(line: 82, column: 38, scope: !1474)
!1481 = !DILocation(line: 82, column: 50, scope: !1474)
!1482 = !DILocation(line: 84, column: 22, scope: !1474)
!1483 = !DILocation(line: 85, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 85, column: 9)
!1485 = !DILocation(line: 85, column: 32, scope: !1484)
!1486 = !DILocation(line: 85, column: 9, scope: !1474)
!1487 = !DILocation(line: 86, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 85, column: 45)
!1489 = !DILocation(line: 87, column: 9, scope: !1488)
!1490 = !DILocation(line: 87, column: 2, scope: !1488)
!1491 = !DILocation(line: 89, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 88, column: 12)
!1493 = !DILocation(line: 90, column: 9, scope: !1492)
!1494 = !DILocation(line: 90, column: 2, scope: !1492)
!1495 = !DILocation(line: 92, column: 1, scope: !1474)
!1496 = distinct !DISubprogram(name: "pcfPutCompressedMetric", scope: !2, file: !2, line: 121, type: !1497, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !177, !74, !54}
!1499 = !{!1500, !1501, !1502}
!1500 = !DILocalVariable(name: "file", arg: 1, scope: !1496, file: !2, line: 121, type: !177)
!1501 = !DILocalVariable(name: "format", arg: 2, scope: !1496, file: !2, line: 121, type: !74)
!1502 = !DILocalVariable(name: "metric", arg: 3, scope: !1496, file: !2, line: 121, type: !54)
!1503 = !DILocation(line: 121, column: 36, scope: !1496)
!1504 = !DILocation(line: 121, column: 49, scope: !1496)
!1505 = !DILocation(line: 121, column: 68, scope: !1496)
!1506 = !DILocation(line: 123, column: 16, scope: !1496)
!1507 = !DILocation(line: 123, column: 22, scope: !1496)
!1508 = !DILocation(line: 123, column: 30, scope: !1496)
!1509 = !DILocation(line: 123, column: 38, scope: !1496)
!1510 = !DILocation(line: 123, column: 54, scope: !1496)
!1511 = !DILocation(line: 123, column: 5, scope: !1496)
!1512 = !DILocation(line: 124, column: 16, scope: !1496)
!1513 = !DILocation(line: 124, column: 22, scope: !1496)
!1514 = !DILocation(line: 124, column: 30, scope: !1496)
!1515 = !DILocation(line: 124, column: 38, scope: !1496)
!1516 = !DILocation(line: 124, column: 55, scope: !1496)
!1517 = !DILocation(line: 124, column: 5, scope: !1496)
!1518 = !DILocation(line: 125, column: 16, scope: !1496)
!1519 = !DILocation(line: 125, column: 22, scope: !1496)
!1520 = !DILocation(line: 125, column: 30, scope: !1496)
!1521 = !DILocation(line: 125, column: 38, scope: !1496)
!1522 = !DILocation(line: 125, column: 53, scope: !1496)
!1523 = !DILocation(line: 125, column: 5, scope: !1496)
!1524 = !DILocation(line: 126, column: 16, scope: !1496)
!1525 = !DILocation(line: 126, column: 22, scope: !1496)
!1526 = !DILocation(line: 126, column: 30, scope: !1496)
!1527 = !DILocation(line: 126, column: 38, scope: !1496)
!1528 = !DILocation(line: 126, column: 45, scope: !1496)
!1529 = !DILocation(line: 126, column: 5, scope: !1496)
!1530 = !DILocation(line: 127, column: 16, scope: !1496)
!1531 = !DILocation(line: 127, column: 22, scope: !1496)
!1532 = !DILocation(line: 127, column: 30, scope: !1496)
!1533 = !DILocation(line: 127, column: 38, scope: !1496)
!1534 = !DILocation(line: 127, column: 46, scope: !1496)
!1535 = !DILocation(line: 127, column: 5, scope: !1496)
!1536 = !DILocation(line: 128, column: 1, scope: !1496)
!1537 = distinct !DISubprogram(name: "pcfPutMetric", scope: !2, file: !2, line: 131, type: !1497, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DILocalVariable(name: "file", arg: 1, scope: !1537, file: !2, line: 131, type: !177)
!1540 = !DILocalVariable(name: "format", arg: 2, scope: !1537, file: !2, line: 131, type: !74)
!1541 = !DILocalVariable(name: "metric", arg: 3, scope: !1537, file: !2, line: 131, type: !54)
!1542 = !DILocation(line: 131, column: 26, scope: !1537)
!1543 = !DILocation(line: 131, column: 39, scope: !1537)
!1544 = !DILocation(line: 131, column: 58, scope: !1537)
!1545 = !DILocation(line: 133, column: 17, scope: !1537)
!1546 = !DILocation(line: 133, column: 23, scope: !1537)
!1547 = !DILocation(line: 133, column: 31, scope: !1537)
!1548 = !DILocation(line: 133, column: 39, scope: !1537)
!1549 = !DILocation(line: 133, column: 5, scope: !1537)
!1550 = !DILocation(line: 134, column: 17, scope: !1537)
!1551 = !DILocation(line: 134, column: 23, scope: !1537)
!1552 = !DILocation(line: 134, column: 31, scope: !1537)
!1553 = !DILocation(line: 134, column: 39, scope: !1537)
!1554 = !DILocation(line: 134, column: 5, scope: !1537)
!1555 = !DILocation(line: 135, column: 17, scope: !1537)
!1556 = !DILocation(line: 135, column: 23, scope: !1537)
!1557 = !DILocation(line: 135, column: 31, scope: !1537)
!1558 = !DILocation(line: 135, column: 39, scope: !1537)
!1559 = !DILocation(line: 135, column: 5, scope: !1537)
!1560 = !DILocation(line: 136, column: 17, scope: !1537)
!1561 = !DILocation(line: 136, column: 23, scope: !1537)
!1562 = !DILocation(line: 136, column: 31, scope: !1537)
!1563 = !DILocation(line: 136, column: 39, scope: !1537)
!1564 = !DILocation(line: 136, column: 5, scope: !1537)
!1565 = !DILocation(line: 137, column: 17, scope: !1537)
!1566 = !DILocation(line: 137, column: 23, scope: !1537)
!1567 = !DILocation(line: 137, column: 31, scope: !1537)
!1568 = !DILocation(line: 137, column: 39, scope: !1537)
!1569 = !DILocation(line: 137, column: 5, scope: !1537)
!1570 = !DILocation(line: 138, column: 17, scope: !1537)
!1571 = !DILocation(line: 138, column: 23, scope: !1537)
!1572 = !DILocation(line: 138, column: 31, scope: !1537)
!1573 = !DILocation(line: 138, column: 39, scope: !1537)
!1574 = !DILocation(line: 138, column: 5, scope: !1537)
!1575 = !DILocation(line: 139, column: 1, scope: !1537)
!1576 = distinct !DISubprogram(name: "pcfPutBitmap", scope: !2, file: !2, line: 142, type: !1577, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !177, !74, !30}
!1579 = !{!1580, !1581, !1582, !1583, !1584}
!1580 = !DILocalVariable(name: "file", arg: 1, scope: !1576, file: !2, line: 142, type: !177)
!1581 = !DILocalVariable(name: "format", arg: 2, scope: !1576, file: !2, line: 142, type: !74)
!1582 = !DILocalVariable(name: "pCI", arg: 3, scope: !1576, file: !2, line: 142, type: !30)
!1583 = !DILocalVariable(name: "count", scope: !1576, file: !2, line: 144, type: !27)
!1584 = !DILocalVariable(name: "bits", scope: !1576, file: !2, line: 145, type: !116)
!1585 = !DILocation(line: 142, column: 26, scope: !1576)
!1586 = !DILocation(line: 142, column: 39, scope: !1576)
!1587 = !DILocation(line: 142, column: 59, scope: !1576)
!1588 = !DILocation(line: 144, column: 5, scope: !1576)
!1589 = !DILocation(line: 144, column: 17, scope: !1576)
!1590 = !DILocation(line: 145, column: 5, scope: !1576)
!1591 = !DILocation(line: 145, column: 20, scope: !1576)
!1592 = !DILocation(line: 147, column: 13, scope: !1576)
!1593 = !DILocation(line: 147, column: 11, scope: !1576)
!1594 = !DILocation(line: 148, column: 30, scope: !1576)
!1595 = !DILocation(line: 148, column: 35, scope: !1576)
!1596 = !DILocation(line: 148, column: 10, scope: !1576)
!1597 = !DILocation(line: 149, column: 25, scope: !1576)
!1598 = !DILocation(line: 149, column: 22, scope: !1576)
!1599 = !DILocation(line: 150, column: 5, scope: !1576)
!1600 = !DILocation(line: 150, column: 17, scope: !1576)
!1601 = !DILocation(line: 151, column: 2, scope: !1576)
!1602 = distinct !{!1602, !1599, !1601, !410}
!1603 = !DILocation(line: 152, column: 1, scope: !1576)
!1604 = !DISubprogram(name: "__libxfont__NameForAtom", scope: !1605, file: !1605, line: 57, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1605 = !DIFile(filename: "./include/X11/fonts/fontmisc.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "44fdad535097608d6ee73f700751f33e")
!1606 = !DISubprogram(name: "BufFileWrite", scope: !180, file: !180, line: 69, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!27, !179, !243, !27}

; ModuleID = 'samples/298.bc'
source_filename = "fsconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsXCharInfo = type { i16, i16, i16, i16, i16, i16 }
%struct.xCharInfo = type { i16, i16, i16, i16, i16, i16 }
%struct._fs_fpe_data = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i64, %struct._fs_buf, %struct._fs_buf, i64, i32, i32, i32, i32, i32, ptr, ptr }
%struct._fs_buf = type { ptr, i64, i64, i64 }
%struct._FontInfo = type { i16, i16, i16, i16, i16, i16, i16, i16, %struct.xCharInfo, %struct.xCharInfo, %struct.xCharInfo, %struct.xCharInfo, i16, i16, i32, ptr, ptr }
%struct.fsPropOffset = type { %struct.fsOffset32, %struct.fsOffset32, i8, i8, i16 }
%struct.fsOffset32 = type { i32, i32 }
%struct.fsPropInfo = type { i32, i32 }
%struct._FontProp = type { i64, i64 }
%struct.fsListFontsWithXInfoReply = type { i8, i8, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.fsRange = type { i8, i8, i8, i8 }
%struct._Font = type { i32, %struct._FontInfo, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct._fs_font = type { ptr, ptr, ptr, ptr }
%struct._fs_font_data = type { i64, i32, i64, i32, ptr, i32, i32 }
%struct._CharInfo = type { %struct.xCharInfo, ptr }
%struct._fs_glyph = type { ptr }

@_fs_glyph_undefined = external global i8, align 1
@_fs_glyph_requested = external global i8, align 1

; Function Attrs: nounwind uwtable
define void @_fs_convert_char_info(ptr noundef %src, ptr noundef %dst) #0 !dbg !82 {
entry:
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !97, metadata !DIExpression()), !dbg !99
  store ptr %dst, ptr %dst.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !98, metadata !DIExpression()), !dbg !100
  %0 = load ptr, ptr %src.addr, align 8, !dbg !101
  %ascent = getelementptr inbounds %struct.fsXCharInfo, ptr %0, i32 0, i32 3, !dbg !102
  %1 = load i16, ptr %ascent, align 2, !dbg !102
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !103
  %ascent1 = getelementptr inbounds %struct.xCharInfo, ptr %2, i32 0, i32 3, !dbg !104
  store i16 %1, ptr %ascent1, align 2, !dbg !105
  %3 = load ptr, ptr %src.addr, align 8, !dbg !106
  %descent = getelementptr inbounds %struct.fsXCharInfo, ptr %3, i32 0, i32 4, !dbg !107
  %4 = load i16, ptr %descent, align 2, !dbg !107
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !108
  %descent2 = getelementptr inbounds %struct.xCharInfo, ptr %5, i32 0, i32 4, !dbg !109
  store i16 %4, ptr %descent2, align 2, !dbg !110
  %6 = load ptr, ptr %src.addr, align 8, !dbg !111
  %left = getelementptr inbounds %struct.fsXCharInfo, ptr %6, i32 0, i32 0, !dbg !112
  %7 = load i16, ptr %left, align 2, !dbg !112
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !113
  %leftSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %8, i32 0, i32 0, !dbg !114
  store i16 %7, ptr %leftSideBearing, align 2, !dbg !115
  %9 = load ptr, ptr %src.addr, align 8, !dbg !116
  %right = getelementptr inbounds %struct.fsXCharInfo, ptr %9, i32 0, i32 1, !dbg !117
  %10 = load i16, ptr %right, align 2, !dbg !117
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !118
  %rightSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %11, i32 0, i32 1, !dbg !119
  store i16 %10, ptr %rightSideBearing, align 2, !dbg !120
  %12 = load ptr, ptr %src.addr, align 8, !dbg !121
  %width = getelementptr inbounds %struct.fsXCharInfo, ptr %12, i32 0, i32 2, !dbg !122
  %13 = load i16, ptr %width, align 2, !dbg !122
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !123
  %characterWidth = getelementptr inbounds %struct.xCharInfo, ptr %14, i32 0, i32 2, !dbg !124
  store i16 %13, ptr %characterWidth, align 2, !dbg !125
  %15 = load ptr, ptr %src.addr, align 8, !dbg !126
  %attributes = getelementptr inbounds %struct.fsXCharInfo, ptr %15, i32 0, i32 5, !dbg !127
  %16 = load i16, ptr %attributes, align 2, !dbg !127
  %17 = load ptr, ptr %dst.addr, align 8, !dbg !128
  %attributes3 = getelementptr inbounds %struct.xCharInfo, ptr %17, i32 0, i32 5, !dbg !129
  store i16 %16, ptr %attributes3, align 2, !dbg !130
  ret void, !dbg !131
}

; Function Attrs: nounwind uwtable
define void @_fs_init_fontinfo(ptr noundef %conn, ptr noundef %pfi) #0 !dbg !132 {
entry:
  %conn.addr = alloca ptr, align 8
  %pfi.addr = alloca ptr, align 8
  %n = alloca i16, align 2
  store ptr %conn, ptr %conn.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %conn.addr, metadata !238, metadata !DIExpression()), !dbg !243
  store ptr %pfi, ptr %pfi.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pfi.addr, metadata !239, metadata !DIExpression()), !dbg !244
  %0 = load ptr, ptr %conn.addr, align 8, !dbg !245
  %fsMajorVersion = getelementptr inbounds %struct._fs_fpe_data, ptr %0, i32 0, i32 9, !dbg !246
  %1 = load i32, ptr %fsMajorVersion, align 8, !dbg !246
  %cmp = icmp eq i32 %1, 1, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr %n) #8, !dbg !249
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !240, metadata !DIExpression()), !dbg !250
  %2 = load ptr, ptr %pfi.addr, align 8, !dbg !251
  %firstCol = getelementptr inbounds %struct._FontInfo, ptr %2, i32 0, i32 0, !dbg !252
  %3 = load i16, ptr %firstCol, align 8, !dbg !252
  store i16 %3, ptr %n, align 2, !dbg !253
  %4 = load ptr, ptr %pfi.addr, align 8, !dbg !254
  %firstRow = getelementptr inbounds %struct._FontInfo, ptr %4, i32 0, i32 2, !dbg !255
  %5 = load i16, ptr %firstRow, align 4, !dbg !255
  %6 = load ptr, ptr %pfi.addr, align 8, !dbg !256
  %firstCol1 = getelementptr inbounds %struct._FontInfo, ptr %6, i32 0, i32 0, !dbg !257
  store i16 %5, ptr %firstCol1, align 8, !dbg !258
  %7 = load i16, ptr %n, align 2, !dbg !259
  %8 = load ptr, ptr %pfi.addr, align 8, !dbg !260
  %firstRow2 = getelementptr inbounds %struct._FontInfo, ptr %8, i32 0, i32 2, !dbg !261
  store i16 %7, ptr %firstRow2, align 4, !dbg !262
  %9 = load ptr, ptr %pfi.addr, align 8, !dbg !263
  %lastCol = getelementptr inbounds %struct._FontInfo, ptr %9, i32 0, i32 1, !dbg !264
  %10 = load i16, ptr %lastCol, align 2, !dbg !264
  store i16 %10, ptr %n, align 2, !dbg !265
  %11 = load ptr, ptr %pfi.addr, align 8, !dbg !266
  %lastRow = getelementptr inbounds %struct._FontInfo, ptr %11, i32 0, i32 3, !dbg !267
  %12 = load i16, ptr %lastRow, align 2, !dbg !267
  %13 = load ptr, ptr %pfi.addr, align 8, !dbg !268
  %lastCol3 = getelementptr inbounds %struct._FontInfo, ptr %13, i32 0, i32 1, !dbg !269
  store i16 %12, ptr %lastCol3, align 2, !dbg !270
  %14 = load i16, ptr %n, align 2, !dbg !271
  %15 = load ptr, ptr %pfi.addr, align 8, !dbg !272
  %lastRow4 = getelementptr inbounds %struct._FontInfo, ptr %15, i32 0, i32 3, !dbg !273
  store i16 %14, ptr %lastRow4, align 2, !dbg !274
  %16 = load ptr, ptr %pfi.addr, align 8, !dbg !275
  %defaultCh = getelementptr inbounds %struct._FontInfo, ptr %16, i32 0, i32 4, !dbg !276
  %17 = load i16, ptr %defaultCh, align 8, !dbg !276
  %conv = zext i16 %17 to i32, !dbg !275
  %shr = ashr i32 %conv, 8, !dbg !277
  %and = and i32 %shr, 255, !dbg !278
  %18 = load ptr, ptr %pfi.addr, align 8, !dbg !279
  %defaultCh5 = getelementptr inbounds %struct._FontInfo, ptr %18, i32 0, i32 4, !dbg !280
  %19 = load i16, ptr %defaultCh5, align 8, !dbg !280
  %conv6 = zext i16 %19 to i32, !dbg !279
  %and7 = and i32 %conv6, 255, !dbg !281
  %shl = shl i32 %and7, 8, !dbg !282
  %add = add nsw i32 %and, %shl, !dbg !283
  %conv8 = trunc i32 %add to i16, !dbg !284
  %20 = load ptr, ptr %pfi.addr, align 8, !dbg !285
  %defaultCh9 = getelementptr inbounds %struct._FontInfo, ptr %20, i32 0, i32 4, !dbg !286
  store i16 %conv8, ptr %defaultCh9, align 8, !dbg !287
  call void @llvm.lifetime.end.p0(i64 2, ptr %n) #8, !dbg !288
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %entry
  %21 = load ptr, ptr %pfi.addr, align 8, !dbg !290
  %call = call i32 @FontCouldBeTerminal(ptr noundef %21), !dbg !292
  %tobool = icmp ne i32 %call, 0, !dbg !292
  br i1 %tobool, label %if.then10, label %if.end16, !dbg !293

if.then10:                                        ; preds = %if.end
  %22 = load ptr, ptr %pfi.addr, align 8, !dbg !294
  %terminalFont = getelementptr inbounds %struct._FontInfo, ptr %22, i32 0, i32 5, !dbg !296
  %bf.load = load i16, ptr %terminalFont, align 2, !dbg !297
  %bf.clear = and i16 %bf.load, -3, !dbg !297
  %bf.set = or i16 %bf.clear, 2, !dbg !297
  store i16 %bf.set, ptr %terminalFont, align 2, !dbg !297
  %23 = load ptr, ptr %pfi.addr, align 8, !dbg !298
  %fontAscent = getelementptr inbounds %struct._FontInfo, ptr %23, i32 0, i32 12, !dbg !299
  %24 = load i16, ptr %fontAscent, align 8, !dbg !299
  %25 = load ptr, ptr %pfi.addr, align 8, !dbg !300
  %minbounds = getelementptr inbounds %struct._FontInfo, ptr %25, i32 0, i32 9, !dbg !301
  %ascent = getelementptr inbounds %struct.xCharInfo, ptr %minbounds, i32 0, i32 3, !dbg !302
  store i16 %24, ptr %ascent, align 2, !dbg !303
  %26 = load ptr, ptr %pfi.addr, align 8, !dbg !304
  %fontDescent = getelementptr inbounds %struct._FontInfo, ptr %26, i32 0, i32 13, !dbg !305
  %27 = load i16, ptr %fontDescent, align 2, !dbg !305
  %28 = load ptr, ptr %pfi.addr, align 8, !dbg !306
  %minbounds11 = getelementptr inbounds %struct._FontInfo, ptr %28, i32 0, i32 9, !dbg !307
  %descent = getelementptr inbounds %struct.xCharInfo, ptr %minbounds11, i32 0, i32 4, !dbg !308
  store i16 %27, ptr %descent, align 4, !dbg !309
  %29 = load ptr, ptr %pfi.addr, align 8, !dbg !310
  %minbounds12 = getelementptr inbounds %struct._FontInfo, ptr %29, i32 0, i32 9, !dbg !311
  %leftSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %minbounds12, i32 0, i32 0, !dbg !312
  store i16 0, ptr %leftSideBearing, align 4, !dbg !313
  %30 = load ptr, ptr %pfi.addr, align 8, !dbg !314
  %minbounds13 = getelementptr inbounds %struct._FontInfo, ptr %30, i32 0, i32 9, !dbg !315
  %characterWidth = getelementptr inbounds %struct.xCharInfo, ptr %minbounds13, i32 0, i32 2, !dbg !316
  %31 = load i16, ptr %characterWidth, align 4, !dbg !316
  %32 = load ptr, ptr %pfi.addr, align 8, !dbg !317
  %minbounds14 = getelementptr inbounds %struct._FontInfo, ptr %32, i32 0, i32 9, !dbg !318
  %rightSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %minbounds14, i32 0, i32 1, !dbg !319
  store i16 %31, ptr %rightSideBearing, align 2, !dbg !320
  %33 = load ptr, ptr %pfi.addr, align 8, !dbg !321
  %maxbounds = getelementptr inbounds %struct._FontInfo, ptr %33, i32 0, i32 8, !dbg !322
  %34 = load ptr, ptr %pfi.addr, align 8, !dbg !323
  %minbounds15 = getelementptr inbounds %struct._FontInfo, ptr %34, i32 0, i32 9, !dbg !324
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %maxbounds, ptr align 4 %minbounds15, i64 12, i1 false), !dbg !324
  br label %if.end16, !dbg !325

if.end16:                                         ; preds = %if.then10, %if.end
  %35 = load ptr, ptr %pfi.addr, align 8, !dbg !326
  call void @FontComputeInfoAccelerators(ptr noundef %35), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !329 i32 @FontCouldBeTerminal(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !333 void @FontComputeInfoAccelerators(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @_fs_convert_props(ptr noundef %pi, ptr noundef %po, ptr noundef %pd, ptr noundef %pfi) #0 !dbg !336 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca ptr, align 8
  %po.addr = alloca ptr, align 8
  %pd.addr = alloca ptr, align 8
  %pfi.addr = alloca ptr, align 8
  %dprop = alloca ptr, align 8
  %i = alloca i32, align 4
  %nprops = alloca i32, align 4
  %is_str = alloca ptr, align 8
  %local_off = alloca %struct.fsPropOffset, align 4
  %off_adr = alloca ptr, align 8
  %pdc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pi, ptr %pi.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pi.addr, metadata !362, metadata !DIExpression()), !dbg !381
  store ptr %po, ptr %po.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %po.addr, metadata !363, metadata !DIExpression()), !dbg !382
  store ptr %pd, ptr %pd.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pd.addr, metadata !364, metadata !DIExpression()), !dbg !383
  store ptr %pfi, ptr %pfi.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pfi.addr, metadata !365, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %dprop) #8, !dbg !385
  tail call void @llvm.dbg.declare(metadata ptr %dprop, metadata !366, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !367, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 4, ptr %nprops) #8, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %nprops, metadata !368, metadata !DIExpression()), !dbg !389
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_str) #8, !dbg !390
  tail call void @llvm.dbg.declare(metadata ptr %is_str, metadata !369, metadata !DIExpression()), !dbg !391
  call void @llvm.lifetime.start.p0(i64 20, ptr %local_off) #8, !dbg !392
  tail call void @llvm.dbg.declare(metadata ptr %local_off, metadata !370, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %off_adr) #8, !dbg !394
  tail call void @llvm.dbg.declare(metadata ptr %off_adr, metadata !371, metadata !DIExpression()), !dbg !395
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdc) #8, !dbg !396
  tail call void @llvm.dbg.declare(metadata ptr %pdc, metadata !372, metadata !DIExpression()), !dbg !397
  %0 = load ptr, ptr %pd.addr, align 8, !dbg !398
  store ptr %0, ptr %pdc, align 8, !dbg !397
  %1 = load ptr, ptr %pi.addr, align 8, !dbg !399
  %num_offsets = getelementptr inbounds %struct.fsPropInfo, ptr %1, i32 0, i32 0, !dbg !400
  %2 = load i32, ptr %num_offsets, align 4, !dbg !400
  %3 = load ptr, ptr %pfi.addr, align 8, !dbg !401
  %nprops1 = getelementptr inbounds %struct._FontInfo, ptr %3, i32 0, i32 14, !dbg !402
  store i32 %2, ptr %nprops1, align 4, !dbg !403
  store i32 %2, ptr %nprops, align 4, !dbg !404
  %4 = load i32, ptr %nprops, align 4, !dbg !405
  %cmp = icmp slt i32 %4, 0, !dbg !407
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !408

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %nprops, align 4, !dbg !409
  %conv = sext i32 %5 to i64, !dbg !409
  %cmp2 = icmp ugt i64 %conv, 1085102592571150095, !dbg !410
  br i1 %cmp2, label %if.then, label %if.end, !dbg !411

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, ptr %nprops, align 4, !dbg !413
  %conv4 = sext i32 %6 to i64, !dbg !413
  %mul = mul i64 16, %conv4, !dbg !414
  %7 = load i32, ptr %nprops, align 4, !dbg !415
  %conv5 = sext i32 %7 to i64, !dbg !415
  %mul6 = mul i64 1, %conv5, !dbg !416
  %add = add i64 %mul, %mul6, !dbg !417
  %call = call noalias ptr @malloc(i64 noundef %add) #9, !dbg !418
  store ptr %call, ptr %dprop, align 8, !dbg !419
  %8 = load ptr, ptr %dprop, align 8, !dbg !420
  %tobool = icmp ne ptr %8, null, !dbg !420
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !422

if.then7:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %dprop, align 8, !dbg !424
  %10 = load i32, ptr %nprops, align 4, !dbg !425
  %idx.ext = sext i32 %10 to i64, !dbg !426
  %add.ptr = getelementptr inbounds %struct._FontProp, ptr %9, i64 %idx.ext, !dbg !426
  store ptr %add.ptr, ptr %is_str, align 8, !dbg !427
  %11 = load ptr, ptr %dprop, align 8, !dbg !428
  %12 = load ptr, ptr %pfi.addr, align 8, !dbg !429
  %props = getelementptr inbounds %struct._FontInfo, ptr %12, i32 0, i32 15, !dbg !430
  store ptr %11, ptr %props, align 8, !dbg !431
  %13 = load ptr, ptr %is_str, align 8, !dbg !432
  %14 = load ptr, ptr %pfi.addr, align 8, !dbg !433
  %isStringProp = getelementptr inbounds %struct._FontInfo, ptr %14, i32 0, i32 16, !dbg !434
  store ptr %13, ptr %isStringProp, align 8, !dbg !435
  %15 = load ptr, ptr %po.addr, align 8, !dbg !436
  store ptr %15, ptr %off_adr, align 8, !dbg !437
  store i32 0, ptr %i, align 4, !dbg !438
  br label %for.cond, !dbg !439

for.cond:                                         ; preds = %for.inc, %if.end8
  %16 = load i32, ptr %i, align 4, !dbg !440
  %17 = load i32, ptr %nprops, align 4, !dbg !441
  %cmp9 = icmp slt i32 %16, %17, !dbg !442
  br i1 %cmp9, label %for.body, label %for.end, !dbg !443

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %off_adr, align 8, !dbg !444
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %local_off, ptr align 1 %18, i64 20, i1 false), !dbg !445
  %name = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 0, !dbg !446
  %position = getelementptr inbounds %struct.fsOffset32, ptr %name, i32 0, i32 0, !dbg !448
  %19 = load i32, ptr %position, align 4, !dbg !448
  %20 = load ptr, ptr %pi.addr, align 8, !dbg !449
  %data_len = getelementptr inbounds %struct.fsPropInfo, ptr %20, i32 0, i32 1, !dbg !450
  %21 = load i32, ptr %data_len, align 4, !dbg !450
  %cmp11 = icmp uge i32 %19, %21, !dbg !451
  br i1 %cmp11, label %if.then20, label %lor.lhs.false13, !dbg !452

lor.lhs.false13:                                  ; preds = %for.body
  %name14 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 0, !dbg !453
  %length = getelementptr inbounds %struct.fsOffset32, ptr %name14, i32 0, i32 1, !dbg !454
  %22 = load i32, ptr %length, align 4, !dbg !454
  %23 = load ptr, ptr %pi.addr, align 8, !dbg !455
  %data_len15 = getelementptr inbounds %struct.fsPropInfo, ptr %23, i32 0, i32 1, !dbg !456
  %24 = load i32, ptr %data_len15, align 4, !dbg !456
  %name16 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 0, !dbg !457
  %position17 = getelementptr inbounds %struct.fsOffset32, ptr %name16, i32 0, i32 0, !dbg !458
  %25 = load i32, ptr %position17, align 4, !dbg !458
  %sub = sub i32 %24, %25, !dbg !459
  %cmp18 = icmp ugt i32 %22, %sub, !dbg !460
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !461

if.then20:                                        ; preds = %lor.lhs.false13, %for.body
  br label %bail, !dbg !462

if.end21:                                         ; preds = %lor.lhs.false13
  %26 = load ptr, ptr %pdc, align 8, !dbg !463
  %name22 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 0, !dbg !464
  %position23 = getelementptr inbounds %struct.fsOffset32, ptr %name22, i32 0, i32 0, !dbg !465
  %27 = load i32, ptr %position23, align 4, !dbg !465
  %idxprom = zext i32 %27 to i64, !dbg !463
  %arrayidx = getelementptr inbounds i8, ptr %26, i64 %idxprom, !dbg !463
  %name24 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 0, !dbg !466
  %length25 = getelementptr inbounds %struct.fsOffset32, ptr %name24, i32 0, i32 1, !dbg !467
  %28 = load i32, ptr %length25, align 4, !dbg !467
  %call26 = call i64 @MakeAtom(ptr noundef %arrayidx, i32 noundef %28, i32 noundef 1), !dbg !468
  %29 = load ptr, ptr %dprop, align 8, !dbg !469
  %name27 = getelementptr inbounds %struct._FontProp, ptr %29, i32 0, i32 0, !dbg !470
  store i64 %call26, ptr %name27, align 8, !dbg !471
  %type = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 2, !dbg !472
  %30 = load i8, ptr %type, align 4, !dbg !472
  %conv28 = zext i8 %30 to i32, !dbg !473
  %cmp29 = icmp ne i32 %conv28, 0, !dbg !474
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !475

if.then31:                                        ; preds = %if.end21
  %31 = load ptr, ptr %is_str, align 8, !dbg !476
  store i8 0, ptr %31, align 1, !dbg !478
  %value = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 1, !dbg !479
  %position32 = getelementptr inbounds %struct.fsOffset32, ptr %value, i32 0, i32 0, !dbg !480
  %32 = load i32, ptr %position32, align 4, !dbg !480
  %conv33 = zext i32 %32 to i64, !dbg !481
  %33 = load ptr, ptr %dprop, align 8, !dbg !482
  %value34 = getelementptr inbounds %struct._FontProp, ptr %33, i32 0, i32 1, !dbg !483
  store i64 %conv33, ptr %value34, align 8, !dbg !484
  br label %if.end70, !dbg !485

if.else:                                          ; preds = %if.end21
  %34 = load ptr, ptr %is_str, align 8, !dbg !486
  store i8 1, ptr %34, align 1, !dbg !487
  %value35 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 1, !dbg !488
  %position36 = getelementptr inbounds %struct.fsOffset32, ptr %value35, i32 0, i32 0, !dbg !490
  %35 = load i32, ptr %position36, align 4, !dbg !490
  %36 = load ptr, ptr %pi.addr, align 8, !dbg !491
  %data_len37 = getelementptr inbounds %struct.fsPropInfo, ptr %36, i32 0, i32 1, !dbg !492
  %37 = load i32, ptr %data_len37, align 4, !dbg !492
  %cmp38 = icmp uge i32 %35, %37, !dbg !493
  br i1 %cmp38, label %if.then49, label %lor.lhs.false40, !dbg !494

lor.lhs.false40:                                  ; preds = %if.else
  %value41 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 1, !dbg !495
  %length42 = getelementptr inbounds %struct.fsOffset32, ptr %value41, i32 0, i32 1, !dbg !496
  %38 = load i32, ptr %length42, align 4, !dbg !496
  %39 = load ptr, ptr %pi.addr, align 8, !dbg !497
  %data_len43 = getelementptr inbounds %struct.fsPropInfo, ptr %39, i32 0, i32 1, !dbg !498
  %40 = load i32, ptr %data_len43, align 4, !dbg !498
  %value44 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 1, !dbg !499
  %position45 = getelementptr inbounds %struct.fsOffset32, ptr %value44, i32 0, i32 0, !dbg !500
  %41 = load i32, ptr %position45, align 4, !dbg !500
  %sub46 = sub i32 %40, %41, !dbg !501
  %cmp47 = icmp ugt i32 %38, %sub46, !dbg !502
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !503

if.then49:                                        ; preds = %lor.lhs.false40, %if.else
  br label %bail, !dbg !504

if.end50:                                         ; preds = %lor.lhs.false40
  %42 = load ptr, ptr %pdc, align 8, !dbg !505
  %value51 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 1, !dbg !506
  %position52 = getelementptr inbounds %struct.fsOffset32, ptr %value51, i32 0, i32 0, !dbg !507
  %43 = load i32, ptr %position52, align 4, !dbg !507
  %idxprom53 = zext i32 %43 to i64, !dbg !505
  %arrayidx54 = getelementptr inbounds i8, ptr %42, i64 %idxprom53, !dbg !505
  %value55 = getelementptr inbounds %struct.fsPropOffset, ptr %local_off, i32 0, i32 1, !dbg !508
  %length56 = getelementptr inbounds %struct.fsOffset32, ptr %value55, i32 0, i32 1, !dbg !509
  %44 = load i32, ptr %length56, align 4, !dbg !509
  %call57 = call i64 @MakeAtom(ptr noundef %arrayidx54, i32 noundef %44, i32 noundef 1), !dbg !510
  %conv58 = trunc i64 %call57 to i32, !dbg !511
  %conv59 = sext i32 %conv58 to i64, !dbg !511
  %45 = load ptr, ptr %dprop, align 8, !dbg !512
  %value60 = getelementptr inbounds %struct._FontProp, ptr %45, i32 0, i32 1, !dbg !513
  store i64 %conv59, ptr %value60, align 8, !dbg !514
  %46 = load ptr, ptr %dprop, align 8, !dbg !515
  %value61 = getelementptr inbounds %struct._FontProp, ptr %46, i32 0, i32 1, !dbg !516
  %47 = load i64, ptr %value61, align 8, !dbg !516
  %cmp62 = icmp eq i64 %47, 3758096384, !dbg !517
  br i1 %cmp62, label %if.then64, label %if.end69, !dbg !518

if.then64:                                        ; preds = %if.end50
  br label %bail, !dbg !519

bail:                                             ; preds = %if.then64, %if.then49, %if.then20
  tail call void @llvm.dbg.label(metadata !373), !dbg !520
  %48 = load ptr, ptr %pfi.addr, align 8, !dbg !521
  %props65 = getelementptr inbounds %struct._FontInfo, ptr %48, i32 0, i32 15, !dbg !522
  %49 = load ptr, ptr %props65, align 8, !dbg !522
  call void @free(ptr noundef %49) #8, !dbg !523
  %50 = load ptr, ptr %pfi.addr, align 8, !dbg !524
  %nprops66 = getelementptr inbounds %struct._FontInfo, ptr %50, i32 0, i32 14, !dbg !525
  store i32 0, ptr %nprops66, align 4, !dbg !526
  %51 = load ptr, ptr %pfi.addr, align 8, !dbg !527
  %props67 = getelementptr inbounds %struct._FontInfo, ptr %51, i32 0, i32 15, !dbg !528
  store ptr null, ptr %props67, align 8, !dbg !529
  %52 = load ptr, ptr %pfi.addr, align 8, !dbg !530
  %isStringProp68 = getelementptr inbounds %struct._FontInfo, ptr %52, i32 0, i32 16, !dbg !531
  store ptr null, ptr %isStringProp68, align 8, !dbg !532
  store i32 -1, ptr %retval, align 4, !dbg !533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !533

if.end69:                                         ; preds = %if.end50
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then31
  %53 = load ptr, ptr %off_adr, align 8, !dbg !534
  %add.ptr71 = getelementptr inbounds i8, ptr %53, i64 20, !dbg !534
  store ptr %add.ptr71, ptr %off_adr, align 8, !dbg !534
  br label %for.inc, !dbg !535

for.inc:                                          ; preds = %if.end70
  %54 = load i32, ptr %i, align 4, !dbg !536
  %inc = add nsw i32 %54, 1, !dbg !536
  store i32 %inc, ptr %i, align 4, !dbg !536
  %55 = load ptr, ptr %dprop, align 8, !dbg !537
  %incdec.ptr = getelementptr inbounds %struct._FontProp, ptr %55, i32 1, !dbg !537
  store ptr %incdec.ptr, ptr %dprop, align 8, !dbg !537
  %56 = load ptr, ptr %is_str, align 8, !dbg !538
  %incdec.ptr72 = getelementptr inbounds i8, ptr %56, i32 1, !dbg !538
  store ptr %incdec.ptr72, ptr %is_str, align 8, !dbg !538
  br label %for.cond, !dbg !539, !llvm.loop !540

for.end:                                          ; preds = %for.cond
  %57 = load i32, ptr %nprops, align 4, !dbg !543
  store i32 %57, ptr %retval, align 4, !dbg !544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !544

cleanup:                                          ; preds = %for.end, %bail, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdc) #8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %off_adr) #8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 20, ptr %local_off) #8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_str) #8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 4, ptr %nprops) #8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %dprop) #8, !dbg !545
  %58 = load i32, ptr %retval, align 4, !dbg !545
  ret i32 %58, !dbg !545
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !546 noalias ptr @malloc(i64 noundef) #4

declare !dbg !552 i64 @MakeAtom(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !559 void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define void @_fs_free_props(ptr noundef %pfi) #0 !dbg !562 {
entry:
  %pfi.addr = alloca ptr, align 8
  store ptr %pfi, ptr %pfi.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pfi.addr, metadata !564, metadata !DIExpression()), !dbg !565
  %0 = load ptr, ptr %pfi.addr, align 8, !dbg !566
  %props = getelementptr inbounds %struct._FontInfo, ptr %0, i32 0, i32 15, !dbg !568
  %1 = load ptr, ptr %props, align 8, !dbg !568
  %tobool = icmp ne ptr %1, null, !dbg !566
  br i1 %tobool, label %if.then, label %if.end, !dbg !569

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pfi.addr, align 8, !dbg !570
  %props1 = getelementptr inbounds %struct._FontInfo, ptr %2, i32 0, i32 15, !dbg !572
  %3 = load ptr, ptr %props1, align 8, !dbg !572
  call void @free(ptr noundef %3) #8, !dbg !573
  %4 = load ptr, ptr %pfi.addr, align 8, !dbg !574
  %nprops = getelementptr inbounds %struct._FontInfo, ptr %4, i32 0, i32 14, !dbg !575
  store i32 0, ptr %nprops, align 4, !dbg !576
  %5 = load ptr, ptr %pfi.addr, align 8, !dbg !577
  %props2 = getelementptr inbounds %struct._FontInfo, ptr %5, i32 0, i32 15, !dbg !578
  store ptr null, ptr %props2, align 8, !dbg !579
  br label %if.end, !dbg !580

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !581
}

; Function Attrs: nounwind uwtable
define i32 @_fs_convert_lfwi_reply(ptr noundef %conn, ptr noundef %pfi, ptr noundef %fsrep, ptr noundef %pi, ptr noundef %po, ptr noundef %pd) #0 !dbg !582 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %pfi.addr = alloca ptr, align 8
  %fsrep.addr = alloca ptr, align 8
  %pi.addr = alloca ptr, align 8
  %po.addr = alloca ptr, align 8
  %pd.addr = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %conn.addr, metadata !618, metadata !DIExpression()), !dbg !624
  store ptr %pfi, ptr %pfi.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pfi.addr, metadata !619, metadata !DIExpression()), !dbg !625
  store ptr %fsrep, ptr %fsrep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fsrep.addr, metadata !620, metadata !DIExpression()), !dbg !626
  store ptr %pi, ptr %pi.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pi.addr, metadata !621, metadata !DIExpression()), !dbg !627
  store ptr %po, ptr %po.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %po.addr, metadata !622, metadata !DIExpression()), !dbg !628
  store ptr %pd, ptr %pd.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pd.addr, metadata !623, metadata !DIExpression()), !dbg !629
  %0 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_flags = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %0, i32 0, i32 5, !dbg !630
  %1 = load i32, ptr %font_header_flags, align 4, !dbg !630
  %conv = zext i32 %1 to i64, !dbg !630
  %and = and i64 %conv, 1, !dbg !630
  %cmp = icmp ne i64 %and, 0, !dbg !630
  %conv1 = zext i1 %cmp to i32, !dbg !630
  %2 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %allExist = getelementptr inbounds %struct._FontInfo, ptr %2, i32 0, i32 5, !dbg !630
  %3 = trunc i32 %conv1 to i16, !dbg !630
  %bf.load = load i16, ptr %allExist, align 2, !dbg !630
  %bf.value = and i16 %3, 1, !dbg !630
  %bf.shl = shl i16 %bf.value, 6, !dbg !630
  %bf.clear = and i16 %bf.load, -65, !dbg !630
  %bf.set = or i16 %bf.clear, %bf.shl, !dbg !630
  store i16 %bf.set, ptr %allExist, align 2, !dbg !630
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !630
  %4 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_draw_direction = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %4, i32 0, i32 10, !dbg !630
  %5 = load i8, ptr %font_header_draw_direction, align 4, !dbg !630
  %conv2 = zext i8 %5 to i32, !dbg !630
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !630
  %6 = zext i1 %cmp3 to i64, !dbg !630
  %cond = select i1 %cmp3, i32 0, i32 1, !dbg !630
  %7 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %drawDirection = getelementptr inbounds %struct._FontInfo, ptr %7, i32 0, i32 5, !dbg !630
  %8 = trunc i32 %cond to i16, !dbg !630
  %bf.load5 = load i16, ptr %drawDirection, align 2, !dbg !630
  %bf.value6 = and i16 %8, 3, !dbg !630
  %bf.shl7 = shl i16 %bf.value6, 7, !dbg !630
  %bf.clear8 = and i16 %bf.load5, -385, !dbg !630
  %bf.set9 = or i16 %bf.clear8, %bf.shl7, !dbg !630
  store i16 %bf.set9, ptr %drawDirection, align 2, !dbg !630
  %bf.result.cast10 = zext i16 %bf.value6 to i32, !dbg !630
  %9 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_flags11 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %9, i32 0, i32 5, !dbg !630
  %10 = load i32, ptr %font_header_flags11, align 4, !dbg !630
  %conv12 = zext i32 %10 to i64, !dbg !630
  %and13 = and i64 %conv12, 2, !dbg !630
  %cmp14 = icmp ne i64 %and13, 0, !dbg !630
  %conv15 = zext i1 %cmp14 to i32, !dbg !630
  %11 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %inkInside = getelementptr inbounds %struct._FontInfo, ptr %11, i32 0, i32 5, !dbg !630
  %12 = trunc i32 %conv15 to i16, !dbg !630
  %bf.load16 = load i16, ptr %inkInside, align 2, !dbg !630
  %bf.value17 = and i16 %12, 1, !dbg !630
  %bf.shl18 = shl i16 %bf.value17, 4, !dbg !630
  %bf.clear19 = and i16 %bf.load16, -17, !dbg !630
  %bf.set20 = or i16 %bf.clear19, %bf.shl18, !dbg !630
  store i16 %bf.set20, ptr %inkInside, align 2, !dbg !630
  %bf.result.cast21 = zext i16 %bf.value17 to i32, !dbg !630
  %13 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_hdr_char_range_min_char_high = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %13, i32 0, i32 6, !dbg !630
  %14 = load i8, ptr %font_hdr_char_range_min_char_high, align 4, !dbg !630
  %conv22 = zext i8 %14 to i16, !dbg !630
  %15 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %firstRow = getelementptr inbounds %struct._FontInfo, ptr %15, i32 0, i32 2, !dbg !630
  store i16 %conv22, ptr %firstRow, align 4, !dbg !630
  %16 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_hdr_char_range_min_char_low = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %16, i32 0, i32 7, !dbg !630
  %17 = load i8, ptr %font_hdr_char_range_min_char_low, align 1, !dbg !630
  %conv23 = zext i8 %17 to i16, !dbg !630
  %18 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %firstCol = getelementptr inbounds %struct._FontInfo, ptr %18, i32 0, i32 0, !dbg !630
  store i16 %conv23, ptr %firstCol, align 8, !dbg !630
  %19 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_hdr_char_range_max_char_high = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %19, i32 0, i32 8, !dbg !630
  %20 = load i8, ptr %font_hdr_char_range_max_char_high, align 2, !dbg !630
  %conv24 = zext i8 %20 to i16, !dbg !630
  %21 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %lastRow = getelementptr inbounds %struct._FontInfo, ptr %21, i32 0, i32 3, !dbg !630
  store i16 %conv24, ptr %lastRow, align 2, !dbg !630
  %22 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_hdr_char_range_max_char_low = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %22, i32 0, i32 9, !dbg !630
  %23 = load i8, ptr %font_hdr_char_range_max_char_low, align 1, !dbg !630
  %conv25 = zext i8 %23 to i16, !dbg !630
  %24 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %lastCol = getelementptr inbounds %struct._FontInfo, ptr %24, i32 0, i32 1, !dbg !630
  store i16 %conv25, ptr %lastCol, align 2, !dbg !630
  %25 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_default_char_low = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %25, i32 0, i32 13, !dbg !630
  %26 = load i8, ptr %font_header_default_char_low, align 1, !dbg !630
  %conv26 = zext i8 %26 to i32, !dbg !630
  %27 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_default_char_high = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %27, i32 0, i32 12, !dbg !630
  %28 = load i8, ptr %font_header_default_char_high, align 2, !dbg !630
  %conv27 = zext i8 %28 to i32, !dbg !630
  %shl = shl i32 %conv27, 8, !dbg !630
  %add = add nsw i32 %conv26, %shl, !dbg !630
  %conv28 = trunc i32 %add to i16, !dbg !630
  %29 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %defaultCh = getelementptr inbounds %struct._FontInfo, ptr %29, i32 0, i32 4, !dbg !630
  store i16 %conv28, ptr %defaultCh, align 8, !dbg !630
  %30 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_font_descent = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %30, i32 0, i32 27, !dbg !630
  %31 = load i16, ptr %font_header_font_descent, align 2, !dbg !630
  %32 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %fontDescent = getelementptr inbounds %struct._FontInfo, ptr %32, i32 0, i32 13, !dbg !630
  store i16 %31, ptr %fontDescent, align 2, !dbg !630
  %33 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_font_ascent = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %33, i32 0, i32 26, !dbg !630
  %34 = load i16, ptr %font_header_font_ascent, align 4, !dbg !630
  %35 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %fontAscent = getelementptr inbounds %struct._FontInfo, ptr %35, i32 0, i32 12, !dbg !630
  store i16 %34, ptr %fontAscent, align 8, !dbg !630
  %36 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_left = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %36, i32 0, i32 14, !dbg !630
  %37 = load i16, ptr %font_header_min_bounds_left, align 4, !dbg !630
  %38 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %minbounds = getelementptr inbounds %struct._FontInfo, ptr %38, i32 0, i32 9, !dbg !630
  %leftSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %minbounds, i32 0, i32 0, !dbg !630
  store i16 %37, ptr %leftSideBearing, align 4, !dbg !630
  %39 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_right = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %39, i32 0, i32 15, !dbg !630
  %40 = load i16, ptr %font_header_min_bounds_right, align 2, !dbg !630
  %41 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %minbounds29 = getelementptr inbounds %struct._FontInfo, ptr %41, i32 0, i32 9, !dbg !630
  %rightSideBearing = getelementptr inbounds %struct.xCharInfo, ptr %minbounds29, i32 0, i32 1, !dbg !630
  store i16 %40, ptr %rightSideBearing, align 2, !dbg !630
  %42 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_width = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %42, i32 0, i32 16, !dbg !630
  %43 = load i16, ptr %font_header_min_bounds_width, align 4, !dbg !630
  %44 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %minbounds30 = getelementptr inbounds %struct._FontInfo, ptr %44, i32 0, i32 9, !dbg !630
  %characterWidth = getelementptr inbounds %struct.xCharInfo, ptr %minbounds30, i32 0, i32 2, !dbg !630
  store i16 %43, ptr %characterWidth, align 4, !dbg !630
  %45 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_ascent = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %45, i32 0, i32 17, !dbg !630
  %46 = load i16, ptr %font_header_min_bounds_ascent, align 2, !dbg !630
  %47 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %minbounds31 = getelementptr inbounds %struct._FontInfo, ptr %47, i32 0, i32 9, !dbg !630
  %ascent = getelementptr inbounds %struct.xCharInfo, ptr %minbounds31, i32 0, i32 3, !dbg !630
  store i16 %46, ptr %ascent, align 2, !dbg !630
  %48 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_descent = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %48, i32 0, i32 18, !dbg !630
  %49 = load i16, ptr %font_header_min_bounds_descent, align 4, !dbg !630
  %50 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %minbounds32 = getelementptr inbounds %struct._FontInfo, ptr %50, i32 0, i32 9, !dbg !630
  %descent = getelementptr inbounds %struct.xCharInfo, ptr %minbounds32, i32 0, i32 4, !dbg !630
  store i16 %49, ptr %descent, align 4, !dbg !630
  %51 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_attributes = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %51, i32 0, i32 19, !dbg !630
  %52 = load i16, ptr %font_header_min_bounds_attributes, align 2, !dbg !630
  %53 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %minbounds33 = getelementptr inbounds %struct._FontInfo, ptr %53, i32 0, i32 9, !dbg !630
  %attributes = getelementptr inbounds %struct.xCharInfo, ptr %minbounds33, i32 0, i32 5, !dbg !630
  store i16 %52, ptr %attributes, align 2, !dbg !630
  %54 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_left34 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %54, i32 0, i32 14, !dbg !630
  %55 = load i16, ptr %font_header_min_bounds_left34, align 4, !dbg !630
  %56 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_minbounds = getelementptr inbounds %struct._FontInfo, ptr %56, i32 0, i32 11, !dbg !630
  %leftSideBearing35 = getelementptr inbounds %struct.xCharInfo, ptr %ink_minbounds, i32 0, i32 0, !dbg !630
  store i16 %55, ptr %leftSideBearing35, align 4, !dbg !630
  %57 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_right36 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %57, i32 0, i32 15, !dbg !630
  %58 = load i16, ptr %font_header_min_bounds_right36, align 2, !dbg !630
  %59 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_minbounds37 = getelementptr inbounds %struct._FontInfo, ptr %59, i32 0, i32 11, !dbg !630
  %rightSideBearing38 = getelementptr inbounds %struct.xCharInfo, ptr %ink_minbounds37, i32 0, i32 1, !dbg !630
  store i16 %58, ptr %rightSideBearing38, align 2, !dbg !630
  %60 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_width39 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %60, i32 0, i32 16, !dbg !630
  %61 = load i16, ptr %font_header_min_bounds_width39, align 4, !dbg !630
  %62 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_minbounds40 = getelementptr inbounds %struct._FontInfo, ptr %62, i32 0, i32 11, !dbg !630
  %characterWidth41 = getelementptr inbounds %struct.xCharInfo, ptr %ink_minbounds40, i32 0, i32 2, !dbg !630
  store i16 %61, ptr %characterWidth41, align 4, !dbg !630
  %63 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_ascent42 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %63, i32 0, i32 17, !dbg !630
  %64 = load i16, ptr %font_header_min_bounds_ascent42, align 2, !dbg !630
  %65 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_minbounds43 = getelementptr inbounds %struct._FontInfo, ptr %65, i32 0, i32 11, !dbg !630
  %ascent44 = getelementptr inbounds %struct.xCharInfo, ptr %ink_minbounds43, i32 0, i32 3, !dbg !630
  store i16 %64, ptr %ascent44, align 2, !dbg !630
  %66 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_descent45 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %66, i32 0, i32 18, !dbg !630
  %67 = load i16, ptr %font_header_min_bounds_descent45, align 4, !dbg !630
  %68 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_minbounds46 = getelementptr inbounds %struct._FontInfo, ptr %68, i32 0, i32 11, !dbg !630
  %descent47 = getelementptr inbounds %struct.xCharInfo, ptr %ink_minbounds46, i32 0, i32 4, !dbg !630
  store i16 %67, ptr %descent47, align 4, !dbg !630
  %69 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_min_bounds_attributes48 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %69, i32 0, i32 19, !dbg !630
  %70 = load i16, ptr %font_header_min_bounds_attributes48, align 2, !dbg !630
  %71 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_minbounds49 = getelementptr inbounds %struct._FontInfo, ptr %71, i32 0, i32 11, !dbg !630
  %attributes50 = getelementptr inbounds %struct.xCharInfo, ptr %ink_minbounds49, i32 0, i32 5, !dbg !630
  store i16 %70, ptr %attributes50, align 2, !dbg !630
  %72 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_left = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %72, i32 0, i32 20, !dbg !630
  %73 = load i16, ptr %font_header_max_bounds_left, align 4, !dbg !630
  %74 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %maxbounds = getelementptr inbounds %struct._FontInfo, ptr %74, i32 0, i32 8, !dbg !630
  %leftSideBearing51 = getelementptr inbounds %struct.xCharInfo, ptr %maxbounds, i32 0, i32 0, !dbg !630
  store i16 %73, ptr %leftSideBearing51, align 8, !dbg !630
  %75 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_right = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %75, i32 0, i32 21, !dbg !630
  %76 = load i16, ptr %font_header_max_bounds_right, align 2, !dbg !630
  %77 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %maxbounds52 = getelementptr inbounds %struct._FontInfo, ptr %77, i32 0, i32 8, !dbg !630
  %rightSideBearing53 = getelementptr inbounds %struct.xCharInfo, ptr %maxbounds52, i32 0, i32 1, !dbg !630
  store i16 %76, ptr %rightSideBearing53, align 2, !dbg !630
  %78 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_width = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %78, i32 0, i32 22, !dbg !630
  %79 = load i16, ptr %font_header_max_bounds_width, align 4, !dbg !630
  %80 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %maxbounds54 = getelementptr inbounds %struct._FontInfo, ptr %80, i32 0, i32 8, !dbg !630
  %characterWidth55 = getelementptr inbounds %struct.xCharInfo, ptr %maxbounds54, i32 0, i32 2, !dbg !630
  store i16 %79, ptr %characterWidth55, align 4, !dbg !630
  %81 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_ascent = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %81, i32 0, i32 23, !dbg !630
  %82 = load i16, ptr %font_header_max_bounds_ascent, align 2, !dbg !630
  %83 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %maxbounds56 = getelementptr inbounds %struct._FontInfo, ptr %83, i32 0, i32 8, !dbg !630
  %ascent57 = getelementptr inbounds %struct.xCharInfo, ptr %maxbounds56, i32 0, i32 3, !dbg !630
  store i16 %82, ptr %ascent57, align 2, !dbg !630
  %84 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_descent = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %84, i32 0, i32 24, !dbg !630
  %85 = load i16, ptr %font_header_max_bounds_descent, align 4, !dbg !630
  %86 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %maxbounds58 = getelementptr inbounds %struct._FontInfo, ptr %86, i32 0, i32 8, !dbg !630
  %descent59 = getelementptr inbounds %struct.xCharInfo, ptr %maxbounds58, i32 0, i32 4, !dbg !630
  store i16 %85, ptr %descent59, align 8, !dbg !630
  %87 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_attributes = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %87, i32 0, i32 25, !dbg !630
  %88 = load i16, ptr %font_header_max_bounds_attributes, align 2, !dbg !630
  %89 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %maxbounds60 = getelementptr inbounds %struct._FontInfo, ptr %89, i32 0, i32 8, !dbg !630
  %attributes61 = getelementptr inbounds %struct.xCharInfo, ptr %maxbounds60, i32 0, i32 5, !dbg !630
  store i16 %88, ptr %attributes61, align 2, !dbg !630
  %90 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_left62 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %90, i32 0, i32 20, !dbg !630
  %91 = load i16, ptr %font_header_max_bounds_left62, align 4, !dbg !630
  %92 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_maxbounds = getelementptr inbounds %struct._FontInfo, ptr %92, i32 0, i32 10, !dbg !630
  %leftSideBearing63 = getelementptr inbounds %struct.xCharInfo, ptr %ink_maxbounds, i32 0, i32 0, !dbg !630
  store i16 %91, ptr %leftSideBearing63, align 8, !dbg !630
  %93 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_right64 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %93, i32 0, i32 21, !dbg !630
  %94 = load i16, ptr %font_header_max_bounds_right64, align 2, !dbg !630
  %95 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_maxbounds65 = getelementptr inbounds %struct._FontInfo, ptr %95, i32 0, i32 10, !dbg !630
  %rightSideBearing66 = getelementptr inbounds %struct.xCharInfo, ptr %ink_maxbounds65, i32 0, i32 1, !dbg !630
  store i16 %94, ptr %rightSideBearing66, align 2, !dbg !630
  %96 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_width67 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %96, i32 0, i32 22, !dbg !630
  %97 = load i16, ptr %font_header_max_bounds_width67, align 4, !dbg !630
  %98 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_maxbounds68 = getelementptr inbounds %struct._FontInfo, ptr %98, i32 0, i32 10, !dbg !630
  %characterWidth69 = getelementptr inbounds %struct.xCharInfo, ptr %ink_maxbounds68, i32 0, i32 2, !dbg !630
  store i16 %97, ptr %characterWidth69, align 4, !dbg !630
  %99 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_ascent70 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %99, i32 0, i32 23, !dbg !630
  %100 = load i16, ptr %font_header_max_bounds_ascent70, align 2, !dbg !630
  %101 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_maxbounds71 = getelementptr inbounds %struct._FontInfo, ptr %101, i32 0, i32 10, !dbg !630
  %ascent72 = getelementptr inbounds %struct.xCharInfo, ptr %ink_maxbounds71, i32 0, i32 3, !dbg !630
  store i16 %100, ptr %ascent72, align 2, !dbg !630
  %102 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_descent73 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %102, i32 0, i32 24, !dbg !630
  %103 = load i16, ptr %font_header_max_bounds_descent73, align 4, !dbg !630
  %104 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_maxbounds74 = getelementptr inbounds %struct._FontInfo, ptr %104, i32 0, i32 10, !dbg !630
  %descent75 = getelementptr inbounds %struct.xCharInfo, ptr %ink_maxbounds74, i32 0, i32 4, !dbg !630
  store i16 %103, ptr %descent75, align 8, !dbg !630
  %105 = load ptr, ptr %fsrep.addr, align 8, !dbg !630
  %font_header_max_bounds_attributes76 = getelementptr inbounds %struct.fsListFontsWithXInfoReply, ptr %105, i32 0, i32 25, !dbg !630
  %106 = load i16, ptr %font_header_max_bounds_attributes76, align 2, !dbg !630
  %107 = load ptr, ptr %pfi.addr, align 8, !dbg !630
  %ink_maxbounds77 = getelementptr inbounds %struct._FontInfo, ptr %107, i32 0, i32 10, !dbg !630
  %attributes78 = getelementptr inbounds %struct.xCharInfo, ptr %ink_maxbounds77, i32 0, i32 5, !dbg !630
  store i16 %106, ptr %attributes78, align 2, !dbg !630
  %108 = load ptr, ptr %conn.addr, align 8, !dbg !631
  %109 = load ptr, ptr %pfi.addr, align 8, !dbg !632
  call void @_fs_init_fontinfo(ptr noundef %108, ptr noundef %109), !dbg !633
  %110 = load ptr, ptr %pi.addr, align 8, !dbg !634
  %111 = load ptr, ptr %po.addr, align 8, !dbg !636
  %112 = load ptr, ptr %pd.addr, align 8, !dbg !637
  %113 = load ptr, ptr %pfi.addr, align 8, !dbg !638
  %call = call i32 @_fs_convert_props(ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113), !dbg !639
  %cmp79 = icmp eq i32 %call, -1, !dbg !640
  br i1 %cmp79, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %entry
  store i32 80, ptr %retval, align 4, !dbg !642
  br label %return, !dbg !642

if.end:                                           ; preds = %entry
  store i32 85, ptr %retval, align 4, !dbg !643
  br label %return, !dbg !643

return:                                           ; preds = %if.end, %if.then
  %114 = load i32, ptr %retval, align 4, !dbg !644
  ret i32 %114, !dbg !644
}

; Function Attrs: nounwind uwtable
define i32 @fs_build_range(ptr noundef %pfont, i32 noundef %range_flag, i32 noundef %count, i32 noundef %item_size, ptr noundef %data, ptr noundef %nranges, ptr noundef %ranges) #0 !dbg !645 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca ptr, align 8
  %range_flag.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %item_size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %nranges.addr = alloca ptr, align 8
  %ranges.addr = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  %fsfont = alloca ptr, align 8
  %encoding = alloca ptr, align 8
  %pfi = alloca ptr, align 8
  %range = alloca %struct.fsRange, align 1
  %access_done = alloca i32, align 4
  %err = alloca i32, align 4
  %firstrow = alloca i64, align 8
  %lastrow = alloca i64, align 8
  %firstcol = alloca i64, align 8
  %lastcol = alloca i64, align 8
  %row = alloca i64, align 8
  %col = alloca i64, align 8
  %loc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %col1 = alloca i32, align 4
  %col2 = alloca i32, align 4
  %fullrange = alloca [1 x %struct.fsRange], align 1
  %row1 = alloca i32, align 4
  %col1133 = alloca i32, align 4
  %row2 = alloca i32, align 4
  %col2134 = alloca i32, align 4
  store ptr %pfont, ptr %pfont.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pfont.addr, metadata !704, metadata !DIExpression()), !dbg !746
  store i32 %range_flag, ptr %range_flag.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %range_flag.addr, metadata !705, metadata !DIExpression()), !dbg !747
  store i32 %count, ptr %count.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !706, metadata !DIExpression()), !dbg !748
  store i32 %item_size, ptr %item_size.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %item_size.addr, metadata !707, metadata !DIExpression()), !dbg !749
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !708, metadata !DIExpression()), !dbg !750
  store ptr %nranges, ptr %nranges.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %nranges.addr, metadata !709, metadata !DIExpression()), !dbg !751
  store ptr %ranges, ptr %ranges.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ranges.addr, metadata !710, metadata !DIExpression()), !dbg !752
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #8, !dbg !753
  tail call void @llvm.dbg.declare(metadata ptr %fsd, metadata !711, metadata !DIExpression()), !dbg !754
  %0 = load ptr, ptr %pfont.addr, align 8, !dbg !755
  %fpePrivate = getelementptr inbounds %struct._Font, ptr %0, i32 0, i32 14, !dbg !756
  %1 = load ptr, ptr %fpePrivate, align 8, !dbg !756
  store ptr %1, ptr %fsd, align 8, !dbg !754
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsfont) #8, !dbg !757
  tail call void @llvm.dbg.declare(metadata ptr %fsfont, metadata !712, metadata !DIExpression()), !dbg !758
  %2 = load ptr, ptr %pfont.addr, align 8, !dbg !759
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %2, i32 0, i32 13, !dbg !760
  %3 = load ptr, ptr %fontPrivate, align 8, !dbg !760
  store ptr %3, ptr %fsfont, align 8, !dbg !758
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoding) #8, !dbg !761
  tail call void @llvm.dbg.declare(metadata ptr %encoding, metadata !713, metadata !DIExpression()), !dbg !762
  %4 = load ptr, ptr %fsfont, align 8, !dbg !763
  %encoding1 = getelementptr inbounds %struct._fs_font, ptr %4, i32 0, i32 1, !dbg !764
  %5 = load ptr, ptr %encoding1, align 8, !dbg !764
  store ptr %5, ptr %encoding, align 8, !dbg !762
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfi) #8, !dbg !765
  tail call void @llvm.dbg.declare(metadata ptr %pfi, metadata !714, metadata !DIExpression()), !dbg !766
  %6 = load ptr, ptr %pfont.addr, align 8, !dbg !767
  %info = getelementptr inbounds %struct._Font, ptr %6, i32 0, i32 1, !dbg !768
  store ptr %info, ptr %pfi, align 8, !dbg !766
  call void @llvm.lifetime.start.p0(i64 4, ptr %range) #8, !dbg !769
  tail call void @llvm.dbg.declare(metadata ptr %range, metadata !715, metadata !DIExpression()), !dbg !770
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_done) #8, !dbg !771
  tail call void @llvm.dbg.declare(metadata ptr %access_done, metadata !716, metadata !DIExpression()), !dbg !772
  store i32 1, ptr %access_done, align 4, !dbg !772
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !773
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !717, metadata !DIExpression()), !dbg !774
  call void @llvm.lifetime.start.p0(i64 8, ptr %firstrow) #8, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %firstrow, metadata !718, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastrow) #8, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %lastrow, metadata !719, metadata !DIExpression()), !dbg !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %firstcol) #8, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %firstcol, metadata !720, metadata !DIExpression()), !dbg !778
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastcol) #8, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %lastcol, metadata !721, metadata !DIExpression()), !dbg !779
  call void @llvm.lifetime.start.p0(i64 8, ptr %row) #8, !dbg !780
  tail call void @llvm.dbg.declare(metadata ptr %row, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.lifetime.start.p0(i64 8, ptr %col) #8, !dbg !782
  tail call void @llvm.dbg.declare(metadata ptr %col, metadata !723, metadata !DIExpression()), !dbg !783
  call void @llvm.lifetime.start.p0(i64 8, ptr %loc) #8, !dbg !784
  tail call void @llvm.dbg.declare(metadata ptr %loc, metadata !724, metadata !DIExpression()), !dbg !785
  %7 = load ptr, ptr %fsd, align 8, !dbg !786
  %glyphs_to_get = getelementptr inbounds %struct._fs_font_data, ptr %7, i32 0, i32 2, !dbg !788
  %8 = load i64, ptr %glyphs_to_get, align 8, !dbg !788
  %tobool = icmp ne i64 %8, 0, !dbg !786
  br i1 %tobool, label %if.end, label %if.then, !dbg !789

if.then:                                          ; preds = %entry
  store i32 1024, ptr %retval, align 4, !dbg !790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !790

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pfi, align 8, !dbg !791
  %firstRow = getelementptr inbounds %struct._FontInfo, ptr %9, i32 0, i32 2, !dbg !792
  %10 = load i16, ptr %firstRow, align 4, !dbg !792
  %conv = zext i16 %10 to i64, !dbg !791
  store i64 %conv, ptr %firstrow, align 8, !dbg !793
  %11 = load ptr, ptr %pfi, align 8, !dbg !794
  %lastRow = getelementptr inbounds %struct._FontInfo, ptr %11, i32 0, i32 3, !dbg !795
  %12 = load i16, ptr %lastRow, align 2, !dbg !795
  %conv2 = zext i16 %12 to i64, !dbg !794
  store i64 %conv2, ptr %lastrow, align 8, !dbg !796
  %13 = load ptr, ptr %pfi, align 8, !dbg !797
  %firstCol = getelementptr inbounds %struct._FontInfo, ptr %13, i32 0, i32 0, !dbg !798
  %14 = load i16, ptr %firstCol, align 8, !dbg !798
  %conv3 = zext i16 %14 to i64, !dbg !797
  store i64 %conv3, ptr %firstcol, align 8, !dbg !799
  %15 = load ptr, ptr %pfi, align 8, !dbg !800
  %lastCol = getelementptr inbounds %struct._FontInfo, ptr %15, i32 0, i32 1, !dbg !801
  %16 = load i16, ptr %lastCol, align 2, !dbg !801
  %conv4 = zext i16 %16 to i64, !dbg !800
  store i64 %conv4, ptr %lastcol, align 8, !dbg !802
  %17 = load ptr, ptr %fsfont, align 8, !dbg !803
  %pDefault = getelementptr inbounds %struct._fs_font, ptr %17, i32 0, i32 0, !dbg !805
  %18 = load ptr, ptr %pDefault, align 8, !dbg !805
  %tobool5 = icmp ne ptr %18, null, !dbg !803
  br i1 %tobool5, label %land.lhs.true, label %if.end26, !dbg !806

land.lhs.true:                                    ; preds = %if.end
  %19 = load ptr, ptr %fsfont, align 8, !dbg !807
  %pDefault6 = getelementptr inbounds %struct._fs_font, ptr %19, i32 0, i32 0, !dbg !807
  %20 = load ptr, ptr %pDefault6, align 8, !dbg !807
  %bits = getelementptr inbounds %struct._CharInfo, ptr %20, i32 0, i32 1, !dbg !807
  %21 = load ptr, ptr %bits, align 8, !dbg !807
  %cmp = icmp eq ptr %21, @_fs_glyph_undefined, !dbg !807
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !808

cond.true:                                        ; preds = %land.lhs.true
  br i1 true, label %if.then13, label %if.end26, !dbg !807

cond.false:                                       ; preds = %land.lhs.true
  %22 = load i32, ptr %access_done, align 4, !dbg !807
  %tobool8 = icmp ne i32 %22, 0, !dbg !807
  br i1 %tobool8, label %land.rhs, label %land.end, !dbg !807

land.rhs:                                         ; preds = %cond.false
  %23 = load ptr, ptr %fsfont, align 8, !dbg !807
  %pDefault9 = getelementptr inbounds %struct._fs_font, ptr %23, i32 0, i32 0, !dbg !807
  %24 = load ptr, ptr %pDefault9, align 8, !dbg !807
  %bits10 = getelementptr inbounds %struct._CharInfo, ptr %24, i32 0, i32 1, !dbg !807
  %25 = load ptr, ptr %bits10, align 8, !dbg !807
  %cmp11 = icmp ne ptr %25, @_fs_glyph_requested, !dbg !807
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %26 = phi i1 [ false, %cond.false ], [ %cmp11, %land.rhs ], !dbg !809
  %land.ext = zext i1 %26 to i32, !dbg !807
  store i32 %land.ext, ptr %access_done, align 4, !dbg !807
  br i1 false, label %if.then13, label %if.end26, !dbg !808

if.then13:                                        ; preds = %land.end, %cond.true
  %27 = load ptr, ptr %fsfont, align 8, !dbg !810
  %pDefault14 = getelementptr inbounds %struct._fs_font, ptr %27, i32 0, i32 0, !dbg !812
  %28 = load ptr, ptr %pDefault14, align 8, !dbg !812
  %29 = load ptr, ptr %encoding, align 8, !dbg !813
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64, !dbg !814
  %sub.ptr.rhs.cast = ptrtoint ptr %29 to i64, !dbg !814
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !814
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24, !dbg !814
  store i64 %sub.ptr.div, ptr %loc, align 8, !dbg !815
  %30 = load i64, ptr %loc, align 8, !dbg !816
  %31 = load i64, ptr %lastcol, align 8, !dbg !817
  %32 = load i64, ptr %firstcol, align 8, !dbg !818
  %sub = sub i64 %31, %32, !dbg !819
  %add = add i64 %sub, 1, !dbg !820
  %div = udiv i64 %30, %add, !dbg !821
  %33 = load i64, ptr %firstrow, align 8, !dbg !822
  %add15 = add i64 %div, %33, !dbg !823
  store i64 %add15, ptr %row, align 8, !dbg !824
  %34 = load i64, ptr %loc, align 8, !dbg !825
  %35 = load i64, ptr %lastcol, align 8, !dbg !826
  %36 = load i64, ptr %firstcol, align 8, !dbg !827
  %sub16 = sub i64 %35, %36, !dbg !828
  %add17 = add i64 %sub16, 1, !dbg !829
  %rem = urem i64 %34, %add17, !dbg !830
  %37 = load i64, ptr %firstcol, align 8, !dbg !831
  %add18 = add i64 %rem, %37, !dbg !832
  store i64 %add18, ptr %col, align 8, !dbg !833
  %38 = load i64, ptr %col, align 8, !dbg !834
  %conv19 = trunc i64 %38 to i8, !dbg !834
  %max_char_low = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 3, !dbg !835
  store i8 %conv19, ptr %max_char_low, align 1, !dbg !836
  %min_char_low = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 1, !dbg !837
  store i8 %conv19, ptr %min_char_low, align 1, !dbg !838
  %39 = load i64, ptr %row, align 8, !dbg !839
  %conv20 = trunc i64 %39 to i8, !dbg !839
  %max_char_high = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 2, !dbg !840
  store i8 %conv20, ptr %max_char_high, align 1, !dbg !841
  %min_char_high = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 0, !dbg !842
  store i8 %conv20, ptr %min_char_high, align 1, !dbg !843
  %40 = load ptr, ptr %nranges.addr, align 8, !dbg !844
  %41 = load ptr, ptr %ranges.addr, align 8, !dbg !846
  %call = call i32 @add_range(ptr noundef %range, ptr noundef %40, ptr noundef %41, i32 noundef 0), !dbg !847
  store i32 %call, ptr %err, align 4, !dbg !848
  %cmp21 = icmp ne i32 %call, 85, !dbg !849
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !850

if.then23:                                        ; preds = %if.then13
  %42 = load i32, ptr %err, align 4, !dbg !851
  store i32 %42, ptr %retval, align 4, !dbg !852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !852

if.end24:                                         ; preds = %if.then13
  %43 = load ptr, ptr %encoding, align 8, !dbg !853
  %44 = load i64, ptr %loc, align 8, !dbg !854
  %arrayidx = getelementptr inbounds %struct._CharInfo, ptr %43, i64 %44, !dbg !853
  %bits25 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx, i32 0, i32 1, !dbg !855
  store ptr @_fs_glyph_requested, ptr %bits25, align 8, !dbg !856
  store i32 0, ptr %access_done, align 4, !dbg !857
  br label %if.end26, !dbg !858

if.end26:                                         ; preds = %if.end24, %land.end, %cond.true, %if.end
  %45 = load i32, ptr %range_flag.addr, align 4, !dbg !859
  %tobool27 = icmp ne i32 %45, 0, !dbg !859
  br i1 %tobool27, label %if.else, label %land.lhs.true28, !dbg !860

land.lhs.true28:                                  ; preds = %if.end26
  %46 = load i32, ptr %item_size.addr, align 4, !dbg !861
  %cmp29 = icmp eq i32 %46, 1, !dbg !862
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !863

if.then31:                                        ; preds = %land.lhs.true28
  %47 = load i64, ptr %firstrow, align 8, !dbg !864
  %cmp32 = icmp ne i64 %47, 0, !dbg !866
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !867

if.then34:                                        ; preds = %if.then31
  store i32 1024, ptr %retval, align 4, !dbg !868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !868

if.end35:                                         ; preds = %if.then31
  br label %while.cond, !dbg !869

while.cond:                                       ; preds = %if.end110, %if.end35
  %48 = load i32, ptr %count.addr, align 4, !dbg !870
  %dec = add i32 %48, -1, !dbg !870
  store i32 %dec, ptr %count.addr, align 4, !dbg !870
  %tobool36 = icmp ne i32 %48, 0, !dbg !869
  br i1 %tobool36, label %while.body, label %while.end, !dbg !869

while.body:                                       ; preds = %while.cond
  %49 = load ptr, ptr %data.addr, align 8, !dbg !871
  %incdec.ptr = getelementptr inbounds i8, ptr %49, i32 1, !dbg !871
  store ptr %incdec.ptr, ptr %data.addr, align 8, !dbg !871
  %50 = load i8, ptr %49, align 1, !dbg !872
  %conv37 = zext i8 %50 to i64, !dbg !872
  store i64 %conv37, ptr %col, align 8, !dbg !873
  %51 = load i64, ptr %col, align 8, !dbg !874
  %52 = load i64, ptr %firstcol, align 8, !dbg !875
  %cmp38 = icmp uge i64 %51, %52, !dbg !876
  br i1 %cmp38, label %land.lhs.true40, label %if.end110, !dbg !877

land.lhs.true40:                                  ; preds = %while.body
  %53 = load i64, ptr %col, align 8, !dbg !878
  %54 = load i64, ptr %lastcol, align 8, !dbg !879
  %cmp41 = icmp ule i64 %53, %54, !dbg !880
  br i1 %cmp41, label %land.lhs.true43, label %if.end110, !dbg !881

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %55 = load ptr, ptr %encoding, align 8, !dbg !882
  %56 = load i64, ptr %col, align 8, !dbg !882
  %57 = load i64, ptr %firstcol, align 8, !dbg !882
  %sub44 = sub i64 %56, %57, !dbg !882
  %add.ptr = getelementptr inbounds %struct._CharInfo, ptr %55, i64 %sub44, !dbg !882
  %bits45 = getelementptr inbounds %struct._CharInfo, ptr %add.ptr, i32 0, i32 1, !dbg !882
  %58 = load ptr, ptr %bits45, align 8, !dbg !882
  %cmp46 = icmp eq ptr %58, @_fs_glyph_undefined, !dbg !882
  br i1 %cmp46, label %cond.true48, label %cond.false49, !dbg !883

cond.true48:                                      ; preds = %land.lhs.true43
  br i1 true, label %if.then59, label %if.end110, !dbg !882

cond.false49:                                     ; preds = %land.lhs.true43
  %59 = load i32, ptr %access_done, align 4, !dbg !882
  %tobool50 = icmp ne i32 %59, 0, !dbg !882
  br i1 %tobool50, label %land.rhs51, label %land.end57, !dbg !882

land.rhs51:                                       ; preds = %cond.false49
  %60 = load ptr, ptr %encoding, align 8, !dbg !882
  %61 = load i64, ptr %col, align 8, !dbg !882
  %62 = load i64, ptr %firstcol, align 8, !dbg !882
  %sub52 = sub i64 %61, %62, !dbg !882
  %add.ptr53 = getelementptr inbounds %struct._CharInfo, ptr %60, i64 %sub52, !dbg !882
  %bits54 = getelementptr inbounds %struct._CharInfo, ptr %add.ptr53, i32 0, i32 1, !dbg !882
  %63 = load ptr, ptr %bits54, align 8, !dbg !882
  %cmp55 = icmp ne ptr %63, @_fs_glyph_requested, !dbg !882
  br label %land.end57

land.end57:                                       ; preds = %land.rhs51, %cond.false49
  %64 = phi i1 [ false, %cond.false49 ], [ %cmp55, %land.rhs51 ], !dbg !884
  %land.ext58 = zext i1 %64 to i32, !dbg !882
  store i32 %land.ext58, ptr %access_done, align 4, !dbg !882
  br i1 false, label %if.then59, label %if.end110, !dbg !883

if.then59:                                        ; preds = %land.end57, %cond.true48
  call void @llvm.lifetime.start.p0(i64 4, ptr %col1) #8, !dbg !885
  tail call void @llvm.dbg.declare(metadata ptr %col1, metadata !725, metadata !DIExpression()), !dbg !886
  call void @llvm.lifetime.start.p0(i64 4, ptr %col2) #8, !dbg !885
  tail call void @llvm.dbg.declare(metadata ptr %col2, metadata !731, metadata !DIExpression()), !dbg !887
  %65 = load i64, ptr %col, align 8, !dbg !888
  %and = and i64 %65, 240, !dbg !889
  %conv60 = trunc i64 %and to i32, !dbg !888
  store i32 %conv60, ptr %col1, align 4, !dbg !890
  %66 = load i32, ptr %col1, align 4, !dbg !891
  %add61 = add nsw i32 %66, 15, !dbg !892
  store i32 %add61, ptr %col2, align 4, !dbg !893
  %67 = load i32, ptr %col1, align 4, !dbg !894
  %conv62 = sext i32 %67 to i64, !dbg !894
  %68 = load i64, ptr %firstcol, align 8, !dbg !896
  %cmp63 = icmp ult i64 %conv62, %68, !dbg !897
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !898

if.then65:                                        ; preds = %if.then59
  %69 = load i64, ptr %firstcol, align 8, !dbg !899
  %conv66 = trunc i64 %69 to i32, !dbg !899
  store i32 %conv66, ptr %col1, align 4, !dbg !900
  br label %if.end67, !dbg !901

if.end67:                                         ; preds = %if.then65, %if.then59
  %70 = load i32, ptr %col2, align 4, !dbg !902
  %conv68 = sext i32 %70 to i64, !dbg !902
  %71 = load i64, ptr %lastcol, align 8, !dbg !904
  %cmp69 = icmp ugt i64 %conv68, %71, !dbg !905
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !906

if.then71:                                        ; preds = %if.end67
  %72 = load i64, ptr %lastcol, align 8, !dbg !907
  %conv72 = trunc i64 %72 to i32, !dbg !907
  store i32 %conv72, ptr %col2, align 4, !dbg !908
  br label %if.end73, !dbg !909

if.end73:                                         ; preds = %if.then71, %if.end67
  %73 = load i32, ptr %col1, align 4, !dbg !910
  %conv74 = sext i32 %73 to i64, !dbg !910
  store i64 %conv74, ptr %col, align 8, !dbg !912
  br label %for.cond, !dbg !913

for.cond:                                         ; preds = %for.inc, %if.end73
  %74 = load i64, ptr %col, align 8, !dbg !914
  %75 = load i32, ptr %col2, align 4, !dbg !916
  %conv75 = sext i32 %75 to i64, !dbg !916
  %cmp76 = icmp ule i64 %74, %conv75, !dbg !917
  br i1 %cmp76, label %for.body, label %for.end, !dbg !918

for.body:                                         ; preds = %for.cond
  %76 = load ptr, ptr %encoding, align 8, !dbg !919
  %77 = load i64, ptr %col, align 8, !dbg !919
  %78 = load i64, ptr %firstcol, align 8, !dbg !919
  %sub78 = sub i64 %77, %78, !dbg !919
  %add.ptr79 = getelementptr inbounds %struct._CharInfo, ptr %76, i64 %sub78, !dbg !919
  %bits80 = getelementptr inbounds %struct._CharInfo, ptr %add.ptr79, i32 0, i32 1, !dbg !919
  %79 = load ptr, ptr %bits80, align 8, !dbg !919
  %cmp81 = icmp eq ptr %79, @_fs_glyph_undefined, !dbg !919
  br i1 %cmp81, label %cond.true83, label %cond.false84, !dbg !922

cond.true83:                                      ; preds = %for.body
  br i1 true, label %if.end95, label %if.then94, !dbg !919

cond.false84:                                     ; preds = %for.body
  %80 = load i32, ptr %access_done, align 4, !dbg !919
  %tobool85 = icmp ne i32 %80, 0, !dbg !919
  br i1 %tobool85, label %land.rhs86, label %land.end92, !dbg !919

land.rhs86:                                       ; preds = %cond.false84
  %81 = load ptr, ptr %encoding, align 8, !dbg !919
  %82 = load i64, ptr %col, align 8, !dbg !919
  %83 = load i64, ptr %firstcol, align 8, !dbg !919
  %sub87 = sub i64 %82, %83, !dbg !919
  %add.ptr88 = getelementptr inbounds %struct._CharInfo, ptr %81, i64 %sub87, !dbg !919
  %bits89 = getelementptr inbounds %struct._CharInfo, ptr %add.ptr88, i32 0, i32 1, !dbg !919
  %84 = load ptr, ptr %bits89, align 8, !dbg !919
  %cmp90 = icmp ne ptr %84, @_fs_glyph_requested, !dbg !919
  br label %land.end92

land.end92:                                       ; preds = %land.rhs86, %cond.false84
  %85 = phi i1 [ false, %cond.false84 ], [ %cmp90, %land.rhs86 ], !dbg !923
  %land.ext93 = zext i1 %85 to i32, !dbg !919
  store i32 %land.ext93, ptr %access_done, align 4, !dbg !919
  br i1 false, label %if.end95, label %if.then94, !dbg !922

if.then94:                                        ; preds = %land.end92, %cond.true83
  br label %for.inc, !dbg !924

if.end95:                                         ; preds = %land.end92, %cond.true83
  %86 = load i64, ptr %col, align 8, !dbg !925
  %conv96 = trunc i64 %86 to i8, !dbg !925
  %max_char_low97 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 3, !dbg !926
  store i8 %conv96, ptr %max_char_low97, align 1, !dbg !927
  %min_char_low98 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 1, !dbg !928
  store i8 %conv96, ptr %min_char_low98, align 1, !dbg !929
  %max_char_high99 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 2, !dbg !930
  store i8 0, ptr %max_char_high99, align 1, !dbg !931
  %min_char_high100 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 0, !dbg !932
  store i8 0, ptr %min_char_high100, align 1, !dbg !933
  %87 = load ptr, ptr %nranges.addr, align 8, !dbg !934
  %88 = load ptr, ptr %ranges.addr, align 8, !dbg !936
  %call101 = call i32 @add_range(ptr noundef %range, ptr noundef %87, ptr noundef %88, i32 noundef 0), !dbg !937
  store i32 %call101, ptr %err, align 4, !dbg !938
  %cmp102 = icmp ne i32 %call101, 85, !dbg !939
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !940

if.then104:                                       ; preds = %if.end95
  %89 = load i32, ptr %err, align 4, !dbg !941
  store i32 %89, ptr %retval, align 4, !dbg !942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !942

if.end105:                                        ; preds = %if.end95
  %90 = load ptr, ptr %encoding, align 8, !dbg !943
  %91 = load i64, ptr %col, align 8, !dbg !944
  %92 = load i64, ptr %firstcol, align 8, !dbg !945
  %sub106 = sub i64 %91, %92, !dbg !946
  %arrayidx107 = getelementptr inbounds %struct._CharInfo, ptr %90, i64 %sub106, !dbg !943
  %bits108 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx107, i32 0, i32 1, !dbg !947
  store ptr @_fs_glyph_requested, ptr %bits108, align 8, !dbg !948
  store i32 0, ptr %access_done, align 4, !dbg !949
  br label %for.inc, !dbg !950

for.inc:                                          ; preds = %if.end105, %if.then94
  %93 = load i64, ptr %col, align 8, !dbg !951
  %inc = add i64 %93, 1, !dbg !951
  store i64 %inc, ptr %col, align 8, !dbg !951
  br label %for.cond, !dbg !952, !llvm.loop !953

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !955
  br label %cleanup, !dbg !955

cleanup:                                          ; preds = %for.end, %if.then104
  call void @llvm.lifetime.end.p0(i64 4, ptr %col2) #8, !dbg !955
  call void @llvm.lifetime.end.p0(i64 4, ptr %col1) #8, !dbg !955
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup294 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end110, !dbg !956

if.end110:                                        ; preds = %cleanup.cont, %land.end57, %cond.true48, %land.lhs.true40, %while.body
  br label %while.cond, !dbg !869, !llvm.loop !957

while.end:                                        ; preds = %while.cond
  br label %if.end292, !dbg !959

if.else:                                          ; preds = %land.lhs.true28, %if.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr %fullrange) #8, !dbg !960
  tail call void @llvm.dbg.declare(metadata ptr %fullrange, metadata !732, metadata !DIExpression()), !dbg !961
  %94 = load i32, ptr %range_flag.addr, align 4, !dbg !962
  %tobool111 = icmp ne i32 %94, 0, !dbg !962
  br i1 %tobool111, label %land.lhs.true112, label %if.end128, !dbg !964

land.lhs.true112:                                 ; preds = %if.else
  %95 = load i32, ptr %count.addr, align 4, !dbg !965
  %cmp113 = icmp eq i32 %95, 0, !dbg !966
  br i1 %cmp113, label %if.then115, label %if.end128, !dbg !967

if.then115:                                       ; preds = %land.lhs.true112
  store i32 2, ptr %count.addr, align 4, !dbg !968
  %arraydecay = getelementptr inbounds [1 x %struct.fsRange], ptr %fullrange, i64 0, i64 0, !dbg !970
  store ptr %arraydecay, ptr %data.addr, align 8, !dbg !971
  %96 = load i64, ptr %firstrow, align 8, !dbg !972
  %conv116 = trunc i64 %96 to i8, !dbg !972
  %arrayidx117 = getelementptr inbounds [1 x %struct.fsRange], ptr %fullrange, i64 0, i64 0, !dbg !973
  %min_char_high118 = getelementptr inbounds %struct.fsRange, ptr %arrayidx117, i32 0, i32 0, !dbg !974
  store i8 %conv116, ptr %min_char_high118, align 1, !dbg !975
  %97 = load i64, ptr %firstcol, align 8, !dbg !976
  %conv119 = trunc i64 %97 to i8, !dbg !976
  %arrayidx120 = getelementptr inbounds [1 x %struct.fsRange], ptr %fullrange, i64 0, i64 0, !dbg !977
  %min_char_low121 = getelementptr inbounds %struct.fsRange, ptr %arrayidx120, i32 0, i32 1, !dbg !978
  store i8 %conv119, ptr %min_char_low121, align 1, !dbg !979
  %98 = load i64, ptr %lastrow, align 8, !dbg !980
  %conv122 = trunc i64 %98 to i8, !dbg !980
  %arrayidx123 = getelementptr inbounds [1 x %struct.fsRange], ptr %fullrange, i64 0, i64 0, !dbg !981
  %max_char_high124 = getelementptr inbounds %struct.fsRange, ptr %arrayidx123, i32 0, i32 2, !dbg !982
  store i8 %conv122, ptr %max_char_high124, align 1, !dbg !983
  %99 = load i64, ptr %lastcol, align 8, !dbg !984
  %conv125 = trunc i64 %99 to i8, !dbg !984
  %arrayidx126 = getelementptr inbounds [1 x %struct.fsRange], ptr %fullrange, i64 0, i64 0, !dbg !985
  %max_char_low127 = getelementptr inbounds %struct.fsRange, ptr %arrayidx126, i32 0, i32 3, !dbg !986
  store i8 %conv125, ptr %max_char_low127, align 1, !dbg !987
  br label %if.end128, !dbg !988

if.end128:                                        ; preds = %if.then115, %land.lhs.true112, %if.else
  br label %while.cond129, !dbg !989

while.cond129:                                    ; preds = %cleanup.cont287, %cleanup282, %if.end128
  %100 = load i32, ptr %count.addr, align 4, !dbg !990
  %dec130 = add i32 %100, -1, !dbg !990
  store i32 %dec130, ptr %count.addr, align 4, !dbg !990
  %tobool131 = icmp ne i32 %100, 0, !dbg !989
  br i1 %tobool131, label %while.body132, label %while.end288, !dbg !989

while.body132:                                    ; preds = %while.cond129
  call void @llvm.lifetime.start.p0(i64 4, ptr %row1) #8, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %row1, metadata !737, metadata !DIExpression()), !dbg !992
  call void @llvm.lifetime.start.p0(i64 4, ptr %col1133) #8, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %col1133, metadata !739, metadata !DIExpression()), !dbg !993
  call void @llvm.lifetime.start.p0(i64 4, ptr %row2) #8, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %row2, metadata !740, metadata !DIExpression()), !dbg !994
  call void @llvm.lifetime.start.p0(i64 4, ptr %col2134) #8, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %col2134, metadata !741, metadata !DIExpression()), !dbg !995
  %101 = load ptr, ptr %data.addr, align 8, !dbg !996
  %incdec.ptr135 = getelementptr inbounds i8, ptr %101, i32 1, !dbg !996
  store ptr %incdec.ptr135, ptr %data.addr, align 8, !dbg !996
  %102 = load i8, ptr %101, align 1, !dbg !997
  %conv136 = zext i8 %102 to i32, !dbg !997
  store i32 %conv136, ptr %row2, align 4, !dbg !998
  store i32 %conv136, ptr %row1, align 4, !dbg !999
  %103 = load ptr, ptr %data.addr, align 8, !dbg !1000
  %incdec.ptr137 = getelementptr inbounds i8, ptr %103, i32 1, !dbg !1000
  store ptr %incdec.ptr137, ptr %data.addr, align 8, !dbg !1000
  %104 = load i8, ptr %103, align 1, !dbg !1001
  %conv138 = zext i8 %104 to i32, !dbg !1001
  store i32 %conv138, ptr %col2134, align 4, !dbg !1002
  store i32 %conv138, ptr %col1133, align 4, !dbg !1003
  %105 = load i32, ptr %range_flag.addr, align 4, !dbg !1004
  %tobool139 = icmp ne i32 %105, 0, !dbg !1004
  br i1 %tobool139, label %if.then140, label %if.else176, !dbg !1006

if.then140:                                       ; preds = %while.body132
  %106 = load i32, ptr %count.addr, align 4, !dbg !1007
  %tobool141 = icmp ne i32 %106, 0, !dbg !1007
  br i1 %tobool141, label %if.then142, label %if.else148, !dbg !1010

if.then142:                                       ; preds = %if.then140
  %107 = load ptr, ptr %data.addr, align 8, !dbg !1011
  %incdec.ptr143 = getelementptr inbounds i8, ptr %107, i32 1, !dbg !1011
  store ptr %incdec.ptr143, ptr %data.addr, align 8, !dbg !1011
  %108 = load i8, ptr %107, align 1, !dbg !1013
  %conv144 = zext i8 %108 to i32, !dbg !1013
  store i32 %conv144, ptr %row2, align 4, !dbg !1014
  %109 = load ptr, ptr %data.addr, align 8, !dbg !1015
  %incdec.ptr145 = getelementptr inbounds i8, ptr %109, i32 1, !dbg !1015
  store ptr %incdec.ptr145, ptr %data.addr, align 8, !dbg !1015
  %110 = load i8, ptr %109, align 1, !dbg !1016
  %conv146 = zext i8 %110 to i32, !dbg !1016
  store i32 %conv146, ptr %col2134, align 4, !dbg !1017
  %111 = load i32, ptr %count.addr, align 4, !dbg !1018
  %dec147 = add i32 %111, -1, !dbg !1018
  store i32 %dec147, ptr %count.addr, align 4, !dbg !1018
  br label %if.end151, !dbg !1019

if.else148:                                       ; preds = %if.then140
  %112 = load i64, ptr %lastrow, align 8, !dbg !1020
  %conv149 = trunc i64 %112 to i32, !dbg !1020
  store i32 %conv149, ptr %row2, align 4, !dbg !1022
  %113 = load i64, ptr %lastcol, align 8, !dbg !1023
  %conv150 = trunc i64 %113 to i32, !dbg !1023
  store i32 %conv150, ptr %col2134, align 4, !dbg !1024
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %if.then142
  %114 = load i32, ptr %row1, align 4, !dbg !1025
  %conv152 = sext i32 %114 to i64, !dbg !1025
  %115 = load i64, ptr %firstrow, align 8, !dbg !1027
  %cmp153 = icmp ult i64 %conv152, %115, !dbg !1028
  br i1 %cmp153, label %if.then155, label %if.end157, !dbg !1029

if.then155:                                       ; preds = %if.end151
  %116 = load i64, ptr %firstrow, align 8, !dbg !1030
  %conv156 = trunc i64 %116 to i32, !dbg !1030
  store i32 %conv156, ptr %row1, align 4, !dbg !1031
  br label %if.end157, !dbg !1032

if.end157:                                        ; preds = %if.then155, %if.end151
  %117 = load i32, ptr %row2, align 4, !dbg !1033
  %conv158 = sext i32 %117 to i64, !dbg !1033
  %118 = load i64, ptr %lastrow, align 8, !dbg !1035
  %cmp159 = icmp ugt i64 %conv158, %118, !dbg !1036
  br i1 %cmp159, label %if.then161, label %if.end163, !dbg !1037

if.then161:                                       ; preds = %if.end157
  %119 = load i64, ptr %lastrow, align 8, !dbg !1038
  %conv162 = trunc i64 %119 to i32, !dbg !1038
  store i32 %conv162, ptr %row2, align 4, !dbg !1039
  br label %if.end163, !dbg !1040

if.end163:                                        ; preds = %if.then161, %if.end157
  %120 = load i32, ptr %col1133, align 4, !dbg !1041
  %conv164 = sext i32 %120 to i64, !dbg !1041
  %121 = load i64, ptr %firstcol, align 8, !dbg !1043
  %cmp165 = icmp ult i64 %conv164, %121, !dbg !1044
  br i1 %cmp165, label %if.then167, label %if.end169, !dbg !1045

if.then167:                                       ; preds = %if.end163
  %122 = load i64, ptr %firstcol, align 8, !dbg !1046
  %conv168 = trunc i64 %122 to i32, !dbg !1046
  store i32 %conv168, ptr %col1133, align 4, !dbg !1047
  br label %if.end169, !dbg !1048

if.end169:                                        ; preds = %if.then167, %if.end163
  %123 = load i32, ptr %col2134, align 4, !dbg !1049
  %conv170 = sext i32 %123 to i64, !dbg !1049
  %124 = load i64, ptr %lastcol, align 8, !dbg !1051
  %cmp171 = icmp ugt i64 %conv170, %124, !dbg !1052
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !1053

if.then173:                                       ; preds = %if.end169
  %125 = load i64, ptr %lastcol, align 8, !dbg !1054
  %conv174 = trunc i64 %125 to i32, !dbg !1054
  store i32 %conv174, ptr %col2134, align 4, !dbg !1055
  br label %if.end175, !dbg !1056

if.end175:                                        ; preds = %if.then173, %if.end169
  br label %if.end193, !dbg !1057

if.else176:                                       ; preds = %while.body132
  %126 = load i32, ptr %row1, align 4, !dbg !1058
  %conv177 = sext i32 %126 to i64, !dbg !1058
  %127 = load i64, ptr %firstrow, align 8, !dbg !1061
  %cmp178 = icmp ult i64 %conv177, %127, !dbg !1062
  br i1 %cmp178, label %if.then191, label %lor.lhs.false, !dbg !1063

lor.lhs.false:                                    ; preds = %if.else176
  %128 = load i32, ptr %row1, align 4, !dbg !1064
  %conv180 = sext i32 %128 to i64, !dbg !1064
  %129 = load i64, ptr %lastrow, align 8, !dbg !1065
  %cmp181 = icmp ugt i64 %conv180, %129, !dbg !1066
  br i1 %cmp181, label %if.then191, label %lor.lhs.false183, !dbg !1067

lor.lhs.false183:                                 ; preds = %lor.lhs.false
  %130 = load i32, ptr %col1133, align 4, !dbg !1068
  %conv184 = sext i32 %130 to i64, !dbg !1068
  %131 = load i64, ptr %firstcol, align 8, !dbg !1069
  %cmp185 = icmp ult i64 %conv184, %131, !dbg !1070
  br i1 %cmp185, label %if.then191, label %lor.lhs.false187, !dbg !1071

lor.lhs.false187:                                 ; preds = %lor.lhs.false183
  %132 = load i32, ptr %col1133, align 4, !dbg !1072
  %conv188 = sext i32 %132 to i64, !dbg !1072
  %133 = load i64, ptr %lastcol, align 8, !dbg !1073
  %cmp189 = icmp ugt i64 %conv188, %133, !dbg !1074
  br i1 %cmp189, label %if.then191, label %if.end192, !dbg !1075

if.then191:                                       ; preds = %lor.lhs.false187, %lor.lhs.false183, %lor.lhs.false, %if.else176
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup282, !dbg !1076, !llvm.loop !1077

if.end192:                                        ; preds = %lor.lhs.false187
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end175
  %134 = load i32, ptr %row1, align 4, !dbg !1079
  %conv194 = sext i32 %134 to i64, !dbg !1079
  store i64 %conv194, ptr %row, align 8, !dbg !1080
  br label %for.cond195, !dbg !1081

for.cond195:                                      ; preds = %for.inc279, %if.end193
  %135 = load i64, ptr %row, align 8, !dbg !1082
  %136 = load i32, ptr %row2, align 4, !dbg !1083
  %conv196 = sext i32 %136 to i64, !dbg !1083
  %cmp197 = icmp ule i64 %135, %conv196, !dbg !1084
  br i1 %cmp197, label %for.body199, label %for.end281, !dbg !1085

for.body199:                                      ; preds = %for.cond195
  br label %expand_glyph_range, !dbg !1086

expand_glyph_range:                               ; preds = %if.end259, %for.body199
  tail call void @llvm.dbg.label(metadata !742), !dbg !1087
  %137 = load i64, ptr %row, align 8, !dbg !1088
  %138 = load i64, ptr %firstrow, align 8, !dbg !1089
  %sub200 = sub i64 %137, %138, !dbg !1090
  %139 = load i64, ptr %lastcol, align 8, !dbg !1091
  %add201 = add i64 %139, 1, !dbg !1092
  %140 = load i64, ptr %firstcol, align 8, !dbg !1093
  %sub202 = sub i64 %add201, %140, !dbg !1094
  %mul = mul i64 %sub200, %sub202, !dbg !1095
  %141 = load i32, ptr %col1133, align 4, !dbg !1096
  %conv203 = sext i32 %141 to i64, !dbg !1096
  %142 = load i64, ptr %firstcol, align 8, !dbg !1097
  %sub204 = sub i64 %conv203, %142, !dbg !1098
  %add205 = add i64 %mul, %sub204, !dbg !1099
  store i64 %add205, ptr %loc, align 8, !dbg !1100
  %143 = load i32, ptr %col1133, align 4, !dbg !1101
  %conv206 = sext i32 %143 to i64, !dbg !1101
  store i64 %conv206, ptr %col, align 8, !dbg !1103
  br label %for.cond207, !dbg !1104

for.cond207:                                      ; preds = %for.inc275, %expand_glyph_range
  %144 = load i64, ptr %col, align 8, !dbg !1105
  %145 = load i32, ptr %col2134, align 4, !dbg !1107
  %conv208 = sext i32 %145 to i64, !dbg !1107
  %cmp209 = icmp ule i64 %144, %conv208, !dbg !1108
  br i1 %cmp209, label %for.body211, label %for.end278, !dbg !1109

for.body211:                                      ; preds = %for.cond207
  %146 = load ptr, ptr %encoding, align 8, !dbg !1110
  %147 = load i64, ptr %loc, align 8, !dbg !1110
  %add.ptr212 = getelementptr inbounds %struct._CharInfo, ptr %146, i64 %147, !dbg !1110
  %bits213 = getelementptr inbounds %struct._CharInfo, ptr %add.ptr212, i32 0, i32 1, !dbg !1110
  %148 = load ptr, ptr %bits213, align 8, !dbg !1110
  %cmp214 = icmp eq ptr %148, @_fs_glyph_undefined, !dbg !1110
  br i1 %cmp214, label %cond.true216, label %cond.false217, !dbg !1113

cond.true216:                                     ; preds = %for.body211
  br i1 true, label %if.then226, label %if.end274, !dbg !1110

cond.false217:                                    ; preds = %for.body211
  %149 = load i32, ptr %access_done, align 4, !dbg !1110
  %tobool218 = icmp ne i32 %149, 0, !dbg !1110
  br i1 %tobool218, label %land.rhs219, label %land.end224, !dbg !1110

land.rhs219:                                      ; preds = %cond.false217
  %150 = load ptr, ptr %encoding, align 8, !dbg !1110
  %151 = load i64, ptr %loc, align 8, !dbg !1110
  %add.ptr220 = getelementptr inbounds %struct._CharInfo, ptr %150, i64 %151, !dbg !1110
  %bits221 = getelementptr inbounds %struct._CharInfo, ptr %add.ptr220, i32 0, i32 1, !dbg !1110
  %152 = load ptr, ptr %bits221, align 8, !dbg !1110
  %cmp222 = icmp ne ptr %152, @_fs_glyph_requested, !dbg !1110
  br label %land.end224

land.end224:                                      ; preds = %land.rhs219, %cond.false217
  %153 = phi i1 [ false, %cond.false217 ], [ %cmp222, %land.rhs219 ], !dbg !1114
  %land.ext225 = zext i1 %153 to i32, !dbg !1110
  store i32 %land.ext225, ptr %access_done, align 4, !dbg !1110
  br i1 false, label %if.then226, label %if.end274, !dbg !1113

if.then226:                                       ; preds = %land.end224, %cond.true216
  %154 = load i32, ptr %row1, align 4, !dbg !1115
  %155 = load i32, ptr %row2, align 4, !dbg !1118
  %cmp227 = icmp eq i32 %154, %155, !dbg !1119
  br i1 %cmp227, label %land.lhs.true229, label %if.end260, !dbg !1120

land.lhs.true229:                                 ; preds = %if.then226
  %156 = load i32, ptr %col1133, align 4, !dbg !1121
  %and230 = and i32 %156, 15, !dbg !1122
  %tobool231 = icmp ne i32 %and230, 0, !dbg !1122
  br i1 %tobool231, label %land.lhs.true232, label %lor.lhs.false236, !dbg !1123

land.lhs.true232:                                 ; preds = %land.lhs.true229
  %157 = load i32, ptr %col1133, align 4, !dbg !1124
  %conv233 = sext i32 %157 to i64, !dbg !1124
  %158 = load i64, ptr %firstcol, align 8, !dbg !1125
  %cmp234 = icmp ugt i64 %conv233, %158, !dbg !1126
  br i1 %cmp234, label %land.lhs.true240, label %lor.lhs.false236, !dbg !1127

lor.lhs.false236:                                 ; preds = %land.lhs.true232, %land.lhs.true229
  %159 = load i32, ptr %col2134, align 4, !dbg !1128
  %and237 = and i32 %159, 15, !dbg !1129
  %cmp238 = icmp ne i32 %and237, 15, !dbg !1130
  br i1 %cmp238, label %land.lhs.true240, label %if.end260, !dbg !1131

land.lhs.true240:                                 ; preds = %lor.lhs.false236, %land.lhs.true232
  %160 = load i32, ptr %col2134, align 4, !dbg !1132
  %conv241 = sext i32 %160 to i64, !dbg !1132
  %161 = load i64, ptr %lastcol, align 8, !dbg !1133
  %cmp242 = icmp ult i64 %conv241, %161, !dbg !1134
  br i1 %cmp242, label %if.then244, label %if.end260, !dbg !1135

if.then244:                                       ; preds = %land.lhs.true240
  %162 = load i32, ptr %col1133, align 4, !dbg !1136
  %and245 = and i32 %162, 240, !dbg !1136
  store i32 %and245, ptr %col1133, align 4, !dbg !1136
  %163 = load i32, ptr %col2134, align 4, !dbg !1138
  %and246 = and i32 %163, 240, !dbg !1139
  %add247 = add nsw i32 %and246, 15, !dbg !1140
  store i32 %add247, ptr %col2134, align 4, !dbg !1141
  %164 = load i32, ptr %col1133, align 4, !dbg !1142
  %conv248 = sext i32 %164 to i64, !dbg !1142
  %165 = load i64, ptr %firstcol, align 8, !dbg !1144
  %cmp249 = icmp ult i64 %conv248, %165, !dbg !1145
  br i1 %cmp249, label %if.then251, label %if.end253, !dbg !1146

if.then251:                                       ; preds = %if.then244
  %166 = load i64, ptr %firstcol, align 8, !dbg !1147
  %conv252 = trunc i64 %166 to i32, !dbg !1147
  store i32 %conv252, ptr %col1133, align 4, !dbg !1148
  br label %if.end253, !dbg !1149

if.end253:                                        ; preds = %if.then251, %if.then244
  %167 = load i32, ptr %col2134, align 4, !dbg !1150
  %conv254 = sext i32 %167 to i64, !dbg !1150
  %168 = load i64, ptr %lastcol, align 8, !dbg !1152
  %cmp255 = icmp ugt i64 %conv254, %168, !dbg !1153
  br i1 %cmp255, label %if.then257, label %if.end259, !dbg !1154

if.then257:                                       ; preds = %if.end253
  %169 = load i64, ptr %lastcol, align 8, !dbg !1155
  %conv258 = trunc i64 %169 to i32, !dbg !1155
  store i32 %conv258, ptr %col2134, align 4, !dbg !1156
  br label %if.end259, !dbg !1157

if.end259:                                        ; preds = %if.then257, %if.end253
  br label %expand_glyph_range, !dbg !1158

if.end260:                                        ; preds = %land.lhs.true240, %lor.lhs.false236, %if.then226
  %170 = load i64, ptr %col, align 8, !dbg !1159
  %conv261 = trunc i64 %170 to i8, !dbg !1159
  %max_char_low262 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 3, !dbg !1160
  store i8 %conv261, ptr %max_char_low262, align 1, !dbg !1161
  %min_char_low263 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 1, !dbg !1162
  store i8 %conv261, ptr %min_char_low263, align 1, !dbg !1163
  %171 = load i64, ptr %row, align 8, !dbg !1164
  %conv264 = trunc i64 %171 to i8, !dbg !1164
  %max_char_high265 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 2, !dbg !1165
  store i8 %conv264, ptr %max_char_high265, align 1, !dbg !1166
  %min_char_high266 = getelementptr inbounds %struct.fsRange, ptr %range, i32 0, i32 0, !dbg !1167
  store i8 %conv264, ptr %min_char_high266, align 1, !dbg !1168
  %172 = load ptr, ptr %nranges.addr, align 8, !dbg !1169
  %173 = load ptr, ptr %ranges.addr, align 8, !dbg !1171
  %call267 = call i32 @add_range(ptr noundef %range, ptr noundef %172, ptr noundef %173, i32 noundef 0), !dbg !1172
  store i32 %call267, ptr %err, align 4, !dbg !1173
  %cmp268 = icmp ne i32 %call267, 85, !dbg !1174
  br i1 %cmp268, label %if.then270, label %if.end271, !dbg !1175

if.then270:                                       ; preds = %if.end260
  %174 = load i32, ptr %err, align 4, !dbg !1176
  store i32 %174, ptr %retval, align 4, !dbg !1177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup282, !dbg !1177

if.end271:                                        ; preds = %if.end260
  %175 = load ptr, ptr %encoding, align 8, !dbg !1178
  %176 = load i64, ptr %loc, align 8, !dbg !1179
  %arrayidx272 = getelementptr inbounds %struct._CharInfo, ptr %175, i64 %176, !dbg !1178
  %bits273 = getelementptr inbounds %struct._CharInfo, ptr %arrayidx272, i32 0, i32 1, !dbg !1180
  store ptr @_fs_glyph_requested, ptr %bits273, align 8, !dbg !1181
  store i32 0, ptr %access_done, align 4, !dbg !1182
  br label %if.end274, !dbg !1183

if.end274:                                        ; preds = %if.end271, %land.end224, %cond.true216
  br label %for.inc275, !dbg !1184

for.inc275:                                       ; preds = %if.end274
  %177 = load i64, ptr %col, align 8, !dbg !1185
  %inc276 = add i64 %177, 1, !dbg !1185
  store i64 %inc276, ptr %col, align 8, !dbg !1185
  %178 = load i64, ptr %loc, align 8, !dbg !1186
  %inc277 = add i64 %178, 1, !dbg !1186
  store i64 %inc277, ptr %loc, align 8, !dbg !1186
  br label %for.cond207, !dbg !1187, !llvm.loop !1188

for.end278:                                       ; preds = %for.cond207
  br label %for.inc279, !dbg !1190

for.inc279:                                       ; preds = %for.end278
  %179 = load i64, ptr %row, align 8, !dbg !1191
  %inc280 = add i64 %179, 1, !dbg !1191
  store i64 %inc280, ptr %row, align 8, !dbg !1191
  br label %for.cond195, !dbg !1192, !llvm.loop !1193

for.end281:                                       ; preds = %for.cond195
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1078
  br label %cleanup282, !dbg !1078

cleanup282:                                       ; preds = %for.end281, %if.then270, %if.then191
  call void @llvm.lifetime.end.p0(i64 4, ptr %col2134) #8, !dbg !1078
  call void @llvm.lifetime.end.p0(i64 4, ptr %row2) #8, !dbg !1078
  call void @llvm.lifetime.end.p0(i64 4, ptr %col1133) #8, !dbg !1078
  call void @llvm.lifetime.end.p0(i64 4, ptr %row1) #8, !dbg !1078
  %cleanup.dest286 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest286, label %cleanup289 [
    i32 0, label %cleanup.cont287
    i32 7, label %while.cond129
  ]

cleanup.cont287:                                  ; preds = %cleanup282
  br label %while.cond129, !dbg !989, !llvm.loop !1077

while.end288:                                     ; preds = %while.cond129
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1195
  br label %cleanup289, !dbg !1195

cleanup289:                                       ; preds = %while.end288, %cleanup282
  call void @llvm.lifetime.end.p0(i64 4, ptr %fullrange) #8, !dbg !1195
  %cleanup.dest290 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest290, label %cleanup294 [
    i32 0, label %cleanup.cont291
  ]

cleanup.cont291:                                  ; preds = %cleanup289
  br label %if.end292

if.end292:                                        ; preds = %cleanup.cont291, %while.end
  %180 = load i32, ptr %access_done, align 4, !dbg !1196
  %tobool293 = icmp ne i32 %180, 0, !dbg !1196
  %181 = zext i1 %tobool293 to i64, !dbg !1196
  %cond = select i1 %tobool293, i32 1024, i32 85, !dbg !1196
  store i32 %cond, ptr %retval, align 4, !dbg !1197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !1197

cleanup294:                                       ; preds = %if.end292, %cleanup289, %cleanup, %if.then34, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %loc) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %col) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %row) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastcol) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %firstcol) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastrow) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %firstrow) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_done) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 4, ptr %range) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfi) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoding) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsfont) #8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #8, !dbg !1198
  %182 = load i32, ptr %retval, align 4, !dbg !1198
  ret i32 %182, !dbg !1198
}

declare !dbg !1199 i32 @add_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @_fs_clean_aborted_loadglyphs(ptr noundef %pfont, i32 noundef %num_expected_ranges, ptr noundef %expected_ranges) #0 !dbg !1202 {
entry:
  %pfont.addr = alloca ptr, align 8
  %num_expected_ranges.addr = alloca i32, align 4
  %expected_ranges.addr = alloca ptr, align 8
  %fsfont = alloca ptr, align 8
  %i = alloca i32, align 4
  %full_range = alloca [1 x %struct.fsRange], align 1
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %encoding24 = alloca ptr, align 8
  store ptr %pfont, ptr %pfont.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pfont.addr, metadata !1206, metadata !DIExpression()), !dbg !1223
  store i32 %num_expected_ranges, ptr %num_expected_ranges.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %num_expected_ranges.addr, metadata !1207, metadata !DIExpression()), !dbg !1224
  store ptr %expected_ranges, ptr %expected_ranges.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %expected_ranges.addr, metadata !1208, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsfont) #8, !dbg !1226
  tail call void @llvm.dbg.declare(metadata ptr %fsfont, metadata !1209, metadata !DIExpression()), !dbg !1227
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !1228
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1210, metadata !DIExpression()), !dbg !1229
  %0 = load ptr, ptr %pfont.addr, align 8, !dbg !1230
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %0, i32 0, i32 13, !dbg !1231
  %1 = load ptr, ptr %fontPrivate, align 8, !dbg !1231
  store ptr %1, ptr %fsfont, align 8, !dbg !1232
  %2 = load ptr, ptr %fsfont, align 8, !dbg !1233
  %encoding = getelementptr inbounds %struct._fs_font, ptr %2, i32 0, i32 1, !dbg !1234
  %3 = load ptr, ptr %encoding, align 8, !dbg !1234
  %tobool = icmp ne ptr %3, null, !dbg !1233
  br i1 %tobool, label %if.then, label %if.end68, !dbg !1235

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %full_range) #8, !dbg !1236
  tail call void @llvm.dbg.declare(metadata ptr %full_range, metadata !1211, metadata !DIExpression()), !dbg !1237
  %4 = load i32, ptr %num_expected_ranges.addr, align 4, !dbg !1238
  %tobool1 = icmp ne i32 %4, 0, !dbg !1238
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1240

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pfont.addr, align 8, !dbg !1241
  %info = getelementptr inbounds %struct._Font, ptr %5, i32 0, i32 1, !dbg !1243
  %firstCol = getelementptr inbounds %struct._FontInfo, ptr %info, i32 0, i32 0, !dbg !1244
  %6 = load i16, ptr %firstCol, align 8, !dbg !1244
  %conv = trunc i16 %6 to i8, !dbg !1241
  %arrayidx = getelementptr inbounds [1 x %struct.fsRange], ptr %full_range, i64 0, i64 0, !dbg !1245
  %min_char_low = getelementptr inbounds %struct.fsRange, ptr %arrayidx, i32 0, i32 1, !dbg !1246
  store i8 %conv, ptr %min_char_low, align 1, !dbg !1247
  %7 = load ptr, ptr %pfont.addr, align 8, !dbg !1248
  %info3 = getelementptr inbounds %struct._Font, ptr %7, i32 0, i32 1, !dbg !1249
  %firstRow = getelementptr inbounds %struct._FontInfo, ptr %info3, i32 0, i32 2, !dbg !1250
  %8 = load i16, ptr %firstRow, align 4, !dbg !1250
  %conv4 = trunc i16 %8 to i8, !dbg !1248
  %arrayidx5 = getelementptr inbounds [1 x %struct.fsRange], ptr %full_range, i64 0, i64 0, !dbg !1251
  %min_char_high = getelementptr inbounds %struct.fsRange, ptr %arrayidx5, i32 0, i32 0, !dbg !1252
  store i8 %conv4, ptr %min_char_high, align 1, !dbg !1253
  %9 = load ptr, ptr %pfont.addr, align 8, !dbg !1254
  %info6 = getelementptr inbounds %struct._Font, ptr %9, i32 0, i32 1, !dbg !1255
  %lastCol = getelementptr inbounds %struct._FontInfo, ptr %info6, i32 0, i32 1, !dbg !1256
  %10 = load i16, ptr %lastCol, align 2, !dbg !1256
  %conv7 = trunc i16 %10 to i8, !dbg !1254
  %arrayidx8 = getelementptr inbounds [1 x %struct.fsRange], ptr %full_range, i64 0, i64 0, !dbg !1257
  %max_char_low = getelementptr inbounds %struct.fsRange, ptr %arrayidx8, i32 0, i32 3, !dbg !1258
  store i8 %conv7, ptr %max_char_low, align 1, !dbg !1259
  %11 = load ptr, ptr %pfont.addr, align 8, !dbg !1260
  %info9 = getelementptr inbounds %struct._Font, ptr %11, i32 0, i32 1, !dbg !1261
  %lastRow = getelementptr inbounds %struct._FontInfo, ptr %info9, i32 0, i32 3, !dbg !1262
  %12 = load i16, ptr %lastRow, align 2, !dbg !1262
  %conv10 = trunc i16 %12 to i8, !dbg !1260
  %arrayidx11 = getelementptr inbounds [1 x %struct.fsRange], ptr %full_range, i64 0, i64 0, !dbg !1263
  %max_char_high = getelementptr inbounds %struct.fsRange, ptr %arrayidx11, i32 0, i32 2, !dbg !1264
  store i8 %conv10, ptr %max_char_high, align 1, !dbg !1265
  store i32 1, ptr %num_expected_ranges.addr, align 4, !dbg !1266
  %arraydecay = getelementptr inbounds [1 x %struct.fsRange], ptr %full_range, i64 0, i64 0, !dbg !1267
  store ptr %arraydecay, ptr %expected_ranges.addr, align 8, !dbg !1268
  br label %if.end, !dbg !1269

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, ptr %i, align 4, !dbg !1270
  br label %for.cond, !dbg !1271

for.cond:                                         ; preds = %for.inc65, %if.end
  %13 = load i32, ptr %i, align 4, !dbg !1272
  %14 = load i32, ptr %num_expected_ranges.addr, align 4, !dbg !1273
  %cmp = icmp slt i32 %13, %14, !dbg !1274
  br i1 %cmp, label %for.body, label %for.end67, !dbg !1275

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #8, !dbg !1276
  tail call void @llvm.dbg.declare(metadata ptr %row, metadata !1214, metadata !DIExpression()), !dbg !1277
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #8, !dbg !1276
  tail call void @llvm.dbg.declare(metadata ptr %col, metadata !1218, metadata !DIExpression()), !dbg !1278
  %15 = load ptr, ptr %expected_ranges.addr, align 8, !dbg !1279
  %16 = load i32, ptr %i, align 4, !dbg !1280
  %idxprom = sext i32 %16 to i64, !dbg !1279
  %arrayidx13 = getelementptr inbounds %struct.fsRange, ptr %15, i64 %idxprom, !dbg !1279
  %min_char_high14 = getelementptr inbounds %struct.fsRange, ptr %arrayidx13, i32 0, i32 0, !dbg !1281
  %17 = load i8, ptr %min_char_high14, align 1, !dbg !1281
  %conv15 = zext i8 %17 to i32, !dbg !1279
  store i32 %conv15, ptr %row, align 4, !dbg !1282
  br label %for.cond16, !dbg !1283

for.cond16:                                       ; preds = %for.inc62, %for.body
  %18 = load i32, ptr %row, align 4, !dbg !1284
  %19 = load ptr, ptr %expected_ranges.addr, align 8, !dbg !1285
  %20 = load i32, ptr %i, align 4, !dbg !1286
  %idxprom17 = sext i32 %20 to i64, !dbg !1285
  %arrayidx18 = getelementptr inbounds %struct.fsRange, ptr %19, i64 %idxprom17, !dbg !1285
  %max_char_high19 = getelementptr inbounds %struct.fsRange, ptr %arrayidx18, i32 0, i32 2, !dbg !1287
  %21 = load i8, ptr %max_char_high19, align 1, !dbg !1287
  %conv20 = zext i8 %21 to i32, !dbg !1285
  %cmp21 = icmp sle i32 %18, %conv20, !dbg !1288
  br i1 %cmp21, label %for.body23, label %for.end64, !dbg !1289

for.body23:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoding24) #8, !dbg !1290
  tail call void @llvm.dbg.declare(metadata ptr %encoding24, metadata !1219, metadata !DIExpression()), !dbg !1291
  %22 = load ptr, ptr %fsfont, align 8, !dbg !1292
  %encoding25 = getelementptr inbounds %struct._fs_font, ptr %22, i32 0, i32 1, !dbg !1293
  %23 = load ptr, ptr %encoding25, align 8, !dbg !1293
  %24 = load i32, ptr %row, align 4, !dbg !1294
  %25 = load ptr, ptr %pfont.addr, align 8, !dbg !1295
  %info26 = getelementptr inbounds %struct._Font, ptr %25, i32 0, i32 1, !dbg !1296
  %firstRow27 = getelementptr inbounds %struct._FontInfo, ptr %info26, i32 0, i32 2, !dbg !1297
  %26 = load i16, ptr %firstRow27, align 4, !dbg !1297
  %conv28 = zext i16 %26 to i32, !dbg !1295
  %sub = sub nsw i32 %24, %conv28, !dbg !1298
  %27 = load ptr, ptr %pfont.addr, align 8, !dbg !1299
  %info29 = getelementptr inbounds %struct._Font, ptr %27, i32 0, i32 1, !dbg !1300
  %lastCol30 = getelementptr inbounds %struct._FontInfo, ptr %info29, i32 0, i32 1, !dbg !1301
  %28 = load i16, ptr %lastCol30, align 2, !dbg !1301
  %conv31 = zext i16 %28 to i32, !dbg !1299
  %29 = load ptr, ptr %pfont.addr, align 8, !dbg !1302
  %info32 = getelementptr inbounds %struct._Font, ptr %29, i32 0, i32 1, !dbg !1303
  %firstCol33 = getelementptr inbounds %struct._FontInfo, ptr %info32, i32 0, i32 0, !dbg !1304
  %30 = load i16, ptr %firstCol33, align 8, !dbg !1304
  %conv34 = zext i16 %30 to i32, !dbg !1302
  %sub35 = sub nsw i32 %conv31, %conv34, !dbg !1305
  %add = add nsw i32 %sub35, 1, !dbg !1306
  %mul = mul nsw i32 %sub, %add, !dbg !1307
  %31 = load ptr, ptr %expected_ranges.addr, align 8, !dbg !1308
  %32 = load i32, ptr %i, align 4, !dbg !1309
  %idxprom36 = sext i32 %32 to i64, !dbg !1308
  %arrayidx37 = getelementptr inbounds %struct.fsRange, ptr %31, i64 %idxprom36, !dbg !1308
  %min_char_low38 = getelementptr inbounds %struct.fsRange, ptr %arrayidx37, i32 0, i32 1, !dbg !1310
  %33 = load i8, ptr %min_char_low38, align 1, !dbg !1310
  %conv39 = zext i8 %33 to i32, !dbg !1308
  %add40 = add nsw i32 %mul, %conv39, !dbg !1311
  %34 = load ptr, ptr %pfont.addr, align 8, !dbg !1312
  %info41 = getelementptr inbounds %struct._Font, ptr %34, i32 0, i32 1, !dbg !1313
  %firstCol42 = getelementptr inbounds %struct._FontInfo, ptr %info41, i32 0, i32 0, !dbg !1314
  %35 = load i16, ptr %firstCol42, align 8, !dbg !1314
  %conv43 = zext i16 %35 to i32, !dbg !1312
  %sub44 = sub nsw i32 %add40, %conv43, !dbg !1315
  %idx.ext = sext i32 %sub44 to i64, !dbg !1316
  %add.ptr = getelementptr inbounds %struct._CharInfo, ptr %23, i64 %idx.ext, !dbg !1316
  store ptr %add.ptr, ptr %encoding24, align 8, !dbg !1291
  %36 = load ptr, ptr %expected_ranges.addr, align 8, !dbg !1317
  %37 = load i32, ptr %i, align 4, !dbg !1319
  %idxprom45 = sext i32 %37 to i64, !dbg !1317
  %arrayidx46 = getelementptr inbounds %struct.fsRange, ptr %36, i64 %idxprom45, !dbg !1317
  %min_char_low47 = getelementptr inbounds %struct.fsRange, ptr %arrayidx46, i32 0, i32 1, !dbg !1320
  %38 = load i8, ptr %min_char_low47, align 1, !dbg !1320
  %conv48 = zext i8 %38 to i32, !dbg !1317
  store i32 %conv48, ptr %col, align 4, !dbg !1321
  br label %for.cond49, !dbg !1322

for.cond49:                                       ; preds = %for.inc, %for.body23
  %39 = load i32, ptr %col, align 4, !dbg !1323
  %40 = load ptr, ptr %expected_ranges.addr, align 8, !dbg !1325
  %41 = load i32, ptr %i, align 4, !dbg !1326
  %idxprom50 = sext i32 %41 to i64, !dbg !1325
  %arrayidx51 = getelementptr inbounds %struct.fsRange, ptr %40, i64 %idxprom50, !dbg !1325
  %max_char_low52 = getelementptr inbounds %struct.fsRange, ptr %arrayidx51, i32 0, i32 3, !dbg !1327
  %42 = load i8, ptr %max_char_low52, align 1, !dbg !1327
  %conv53 = zext i8 %42 to i32, !dbg !1325
  %cmp54 = icmp sle i32 %39, %conv53, !dbg !1328
  br i1 %cmp54, label %for.body56, label %for.end, !dbg !1329

for.body56:                                       ; preds = %for.cond49
  %43 = load ptr, ptr %encoding24, align 8, !dbg !1330
  %bits = getelementptr inbounds %struct._CharInfo, ptr %43, i32 0, i32 1, !dbg !1333
  %44 = load ptr, ptr %bits, align 8, !dbg !1333
  %cmp57 = icmp eq ptr %44, @_fs_glyph_requested, !dbg !1334
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !1335

if.then59:                                        ; preds = %for.body56
  %45 = load ptr, ptr %encoding24, align 8, !dbg !1336
  %bits60 = getelementptr inbounds %struct._CharInfo, ptr %45, i32 0, i32 1, !dbg !1337
  store ptr @_fs_glyph_undefined, ptr %bits60, align 8, !dbg !1338
  br label %if.end61, !dbg !1336

if.end61:                                         ; preds = %if.then59, %for.body56
  br label %for.inc, !dbg !1339

for.inc:                                          ; preds = %if.end61
  %46 = load ptr, ptr %encoding24, align 8, !dbg !1340
  %incdec.ptr = getelementptr inbounds %struct._CharInfo, ptr %46, i32 1, !dbg !1340
  store ptr %incdec.ptr, ptr %encoding24, align 8, !dbg !1340
  %47 = load i32, ptr %col, align 4, !dbg !1341
  %inc = add nsw i32 %47, 1, !dbg !1341
  store i32 %inc, ptr %col, align 4, !dbg !1341
  br label %for.cond49, !dbg !1342, !llvm.loop !1343

for.end:                                          ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoding24) #8, !dbg !1345
  br label %for.inc62, !dbg !1346

for.inc62:                                        ; preds = %for.end
  %48 = load i32, ptr %row, align 4, !dbg !1347
  %inc63 = add nsw i32 %48, 1, !dbg !1347
  store i32 %inc63, ptr %row, align 4, !dbg !1347
  br label %for.cond16, !dbg !1348, !llvm.loop !1349

for.end64:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #8, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #8, !dbg !1351
  br label %for.inc65, !dbg !1352

for.inc65:                                        ; preds = %for.end64
  %49 = load i32, ptr %i, align 4, !dbg !1353
  %inc66 = add nsw i32 %49, 1, !dbg !1353
  store i32 %inc66, ptr %i, align 4, !dbg !1353
  br label %for.cond, !dbg !1354, !llvm.loop !1355

for.end67:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %full_range) #8, !dbg !1357
  br label %if.end68, !dbg !1358

if.end68:                                         ; preds = %for.end67, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !1359
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsfont) #8, !dbg !1359
  ret void, !dbg !1359
}

; Function Attrs: nounwind uwtable
define ptr @fs_create_font(ptr noundef %fpe, ptr noundef %name, i32 noundef %namelen, i32 noundef %format, i32 noundef %fmask) #0 !dbg !1360 {
entry:
  %retval = alloca ptr, align 8
  %fpe.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %namelen.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %fmask.addr = alloca i32, align 4
  %pfont = alloca ptr, align 8
  %fsfont = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  %bit = alloca i32, align 4
  %byte = alloca i32, align 4
  %scan = alloca i32, align 4
  %glyph = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fpe, ptr %fpe.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fpe.addr, metadata !1364, metadata !DIExpression()), !dbg !1376
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1365, metadata !DIExpression()), !dbg !1377
  store i32 %namelen, ptr %namelen.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %namelen.addr, metadata !1366, metadata !DIExpression()), !dbg !1378
  store i32 %format, ptr %format.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1367, metadata !DIExpression()), !dbg !1379
  store i32 %fmask, ptr %fmask.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fmask.addr, metadata !1368, metadata !DIExpression()), !dbg !1380
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfont) #8, !dbg !1381
  tail call void @llvm.dbg.declare(metadata ptr %pfont, metadata !1369, metadata !DIExpression()), !dbg !1382
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsfont) #8, !dbg !1383
  tail call void @llvm.dbg.declare(metadata ptr %fsfont, metadata !1370, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #8, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %fsd, metadata !1371, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #8, !dbg !1387
  tail call void @llvm.dbg.declare(metadata ptr %bit, metadata !1372, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 4, ptr %byte) #8, !dbg !1387
  tail call void @llvm.dbg.declare(metadata ptr %byte, metadata !1373, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 4, ptr %scan) #8, !dbg !1387
  tail call void @llvm.dbg.declare(metadata ptr %scan, metadata !1374, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 4, ptr %glyph) #8, !dbg !1387
  tail call void @llvm.dbg.declare(metadata ptr %glyph, metadata !1375, metadata !DIExpression()), !dbg !1391
  %call = call ptr @CreateFontRec(), !dbg !1392
  store ptr %call, ptr %pfont, align 8, !dbg !1393
  %0 = load ptr, ptr %pfont, align 8, !dbg !1394
  %tobool = icmp ne ptr %0, null, !dbg !1394
  br i1 %tobool, label %if.end, label %if.then, !dbg !1396

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1397

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %namelen.addr, align 4, !dbg !1398
  %conv = sext i32 %1 to i64, !dbg !1398
  %add = add i64 80, %conv, !dbg !1399
  %add1 = add i64 %add, 1, !dbg !1400
  %call2 = call noalias ptr @malloc(i64 noundef %add1) #9, !dbg !1401
  store ptr %call2, ptr %fsfont, align 8, !dbg !1402
  %2 = load ptr, ptr %fsfont, align 8, !dbg !1403
  %tobool3 = icmp ne ptr %2, null, !dbg !1403
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1405

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %pfont, align 8, !dbg !1406
  call void @DestroyFontRec(ptr noundef %3), !dbg !1408
  store ptr null, ptr %retval, align 8, !dbg !1409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1409

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %fsfont, align 8, !dbg !1410
  %add.ptr = getelementptr inbounds %struct._fs_font, ptr %4, i64 1, !dbg !1411
  store ptr %add.ptr, ptr %fsd, align 8, !dbg !1412
  %5 = load ptr, ptr %fsfont, align 8, !dbg !1413
  call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 32, i1 false), !dbg !1413
  %6 = load ptr, ptr %fsd, align 8, !dbg !1414
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 48, i1 false), !dbg !1414
  %7 = load ptr, ptr %fpe.addr, align 8, !dbg !1415
  %8 = load ptr, ptr %pfont, align 8, !dbg !1416
  %fpe6 = getelementptr inbounds %struct._Font, ptr %8, i32 0, i32 11, !dbg !1417
  store ptr %7, ptr %fpe6, align 8, !dbg !1418
  %9 = load ptr, ptr %fsfont, align 8, !dbg !1419
  %10 = load ptr, ptr %pfont, align 8, !dbg !1420
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %10, i32 0, i32 13, !dbg !1421
  store ptr %9, ptr %fontPrivate, align 8, !dbg !1422
  %11 = load ptr, ptr %fsd, align 8, !dbg !1423
  %12 = load ptr, ptr %pfont, align 8, !dbg !1424
  %fpePrivate = getelementptr inbounds %struct._Font, ptr %12, i32 0, i32 14, !dbg !1425
  store ptr %11, ptr %fpePrivate, align 8, !dbg !1426
  %13 = load i32, ptr %format.addr, align 4, !dbg !1427
  %call7 = call i32 @CheckFSFormat(i32 noundef %13, i32 noundef 27, ptr noundef %bit, ptr noundef %byte, ptr noundef %scan, ptr noundef %glyph, ptr noundef null), !dbg !1428
  %14 = load i32, ptr %format.addr, align 4, !dbg !1429
  %15 = load ptr, ptr %pfont, align 8, !dbg !1430
  %format8 = getelementptr inbounds %struct._Font, ptr %15, i32 0, i32 6, !dbg !1431
  store i32 %14, ptr %format8, align 4, !dbg !1432
  %16 = load i32, ptr %bit, align 4, !dbg !1433
  %conv9 = trunc i32 %16 to i8, !dbg !1433
  %17 = load ptr, ptr %pfont, align 8, !dbg !1434
  %bit10 = getelementptr inbounds %struct._Font, ptr %17, i32 0, i32 2, !dbg !1435
  store i8 %conv9, ptr %bit10, align 8, !dbg !1436
  %18 = load i32, ptr %byte, align 4, !dbg !1437
  %conv11 = trunc i32 %18 to i8, !dbg !1437
  %19 = load ptr, ptr %pfont, align 8, !dbg !1438
  %byte12 = getelementptr inbounds %struct._Font, ptr %19, i32 0, i32 3, !dbg !1439
  store i8 %conv11, ptr %byte12, align 1, !dbg !1440
  %20 = load i32, ptr %scan, align 4, !dbg !1441
  %conv13 = trunc i32 %20 to i8, !dbg !1441
  %21 = load ptr, ptr %pfont, align 8, !dbg !1442
  %scan14 = getelementptr inbounds %struct._Font, ptr %21, i32 0, i32 5, !dbg !1443
  store i8 %conv13, ptr %scan14, align 1, !dbg !1444
  %22 = load i32, ptr %glyph, align 4, !dbg !1445
  %conv15 = trunc i32 %22 to i8, !dbg !1445
  %23 = load ptr, ptr %pfont, align 8, !dbg !1446
  %glyph16 = getelementptr inbounds %struct._Font, ptr %23, i32 0, i32 4, !dbg !1447
  store i8 %conv15, ptr %glyph16, align 2, !dbg !1448
  %24 = load ptr, ptr %pfont, align 8, !dbg !1449
  %info = getelementptr inbounds %struct._Font, ptr %24, i32 0, i32 1, !dbg !1450
  %nprops = getelementptr inbounds %struct._FontInfo, ptr %info, i32 0, i32 14, !dbg !1451
  store i32 0, ptr %nprops, align 4, !dbg !1452
  %25 = load ptr, ptr %pfont, align 8, !dbg !1453
  %info17 = getelementptr inbounds %struct._Font, ptr %25, i32 0, i32 1, !dbg !1454
  %props = getelementptr inbounds %struct._FontInfo, ptr %info17, i32 0, i32 15, !dbg !1455
  store ptr null, ptr %props, align 8, !dbg !1456
  %26 = load ptr, ptr %pfont, align 8, !dbg !1457
  %info18 = getelementptr inbounds %struct._Font, ptr %26, i32 0, i32 1, !dbg !1458
  %isStringProp = getelementptr inbounds %struct._FontInfo, ptr %info18, i32 0, i32 16, !dbg !1459
  store ptr null, ptr %isStringProp, align 8, !dbg !1460
  %27 = load ptr, ptr %pfont, align 8, !dbg !1461
  %get_glyphs = getelementptr inbounds %struct._Font, ptr %27, i32 0, i32 7, !dbg !1462
  store ptr @_fs_get_glyphs, ptr %get_glyphs, align 8, !dbg !1463
  %28 = load ptr, ptr %pfont, align 8, !dbg !1464
  %get_metrics = getelementptr inbounds %struct._Font, ptr %28, i32 0, i32 8, !dbg !1465
  store ptr @_fs_get_metrics, ptr %get_metrics, align 8, !dbg !1466
  %29 = load ptr, ptr %pfont, align 8, !dbg !1467
  %unload_font = getelementptr inbounds %struct._Font, ptr %29, i32 0, i32 9, !dbg !1468
  store ptr @_fs_unload_font, ptr %unload_font, align 8, !dbg !1469
  %30 = load ptr, ptr %pfont, align 8, !dbg !1470
  %unload_glyphs = getelementptr inbounds %struct._Font, ptr %30, i32 0, i32 10, !dbg !1471
  store ptr null, ptr %unload_glyphs, align 8, !dbg !1472
  %31 = load i32, ptr %format.addr, align 4, !dbg !1473
  %32 = load ptr, ptr %fsd, align 8, !dbg !1474
  %format19 = getelementptr inbounds %struct._fs_font_data, ptr %32, i32 0, i32 5, !dbg !1475
  store i32 %31, ptr %format19, align 8, !dbg !1476
  %33 = load i32, ptr %fmask.addr, align 4, !dbg !1477
  %34 = load ptr, ptr %fsd, align 8, !dbg !1478
  %fmask20 = getelementptr inbounds %struct._fs_font_data, ptr %34, i32 0, i32 6, !dbg !1479
  store i32 %33, ptr %fmask20, align 4, !dbg !1480
  %35 = load ptr, ptr %fsd, align 8, !dbg !1481
  %add.ptr21 = getelementptr inbounds %struct._fs_font_data, ptr %35, i64 1, !dbg !1482
  %36 = load ptr, ptr %fsd, align 8, !dbg !1483
  %name22 = getelementptr inbounds %struct._fs_font_data, ptr %36, i32 0, i32 4, !dbg !1484
  store ptr %add.ptr21, ptr %name22, align 8, !dbg !1485
  %37 = load ptr, ptr %fsd, align 8, !dbg !1486
  %name23 = getelementptr inbounds %struct._fs_font_data, ptr %37, i32 0, i32 4, !dbg !1487
  %38 = load ptr, ptr %name23, align 8, !dbg !1487
  %39 = load ptr, ptr %name.addr, align 8, !dbg !1488
  %40 = load i32, ptr %namelen.addr, align 4, !dbg !1489
  %conv24 = sext i32 %40 to i64, !dbg !1489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %39, i64 %conv24, i1 false), !dbg !1490
  %41 = load ptr, ptr %fsd, align 8, !dbg !1491
  %name25 = getelementptr inbounds %struct._fs_font_data, ptr %41, i32 0, i32 4, !dbg !1492
  %42 = load ptr, ptr %name25, align 8, !dbg !1492
  %43 = load i32, ptr %namelen.addr, align 4, !dbg !1493
  %idxprom = sext i32 %43 to i64, !dbg !1491
  %arrayidx = getelementptr inbounds i8, ptr %42, i64 %idxprom, !dbg !1491
  store i8 0, ptr %arrayidx, align 1, !dbg !1494
  %call26 = call i64 @GetNewFontClientID(), !dbg !1495
  %44 = load ptr, ptr %fsd, align 8, !dbg !1496
  %fontid = getelementptr inbounds %struct._fs_font_data, ptr %44, i32 0, i32 0, !dbg !1497
  store i64 %call26, ptr %fontid, align 8, !dbg !1498
  %45 = load ptr, ptr %pfont, align 8, !dbg !1499
  %46 = load ptr, ptr %fsd, align 8, !dbg !1501
  %fontid27 = getelementptr inbounds %struct._fs_font_data, ptr %46, i32 0, i32 0, !dbg !1502
  %47 = load i64, ptr %fontid27, align 8, !dbg !1502
  %call28 = call i32 @StoreFontClientFont(ptr noundef %45, i64 noundef %47), !dbg !1503
  %tobool29 = icmp ne i32 %call28, 0, !dbg !1503
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !1504

if.then30:                                        ; preds = %if.end5
  %48 = load ptr, ptr %fsfont, align 8, !dbg !1505
  call void @free(ptr noundef %48) #8, !dbg !1507
  %49 = load ptr, ptr %pfont, align 8, !dbg !1508
  call void @DestroyFontRec(ptr noundef %49), !dbg !1509
  store ptr null, ptr %retval, align 8, !dbg !1510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1510

if.end31:                                         ; preds = %if.end5
  %50 = load ptr, ptr %pfont, align 8, !dbg !1511
  store ptr %50, ptr %retval, align 8, !dbg !1512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1512

cleanup:                                          ; preds = %if.end31, %if.then30, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %glyph) #8, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 4, ptr %scan) #8, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 4, ptr %byte) #8, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #8, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #8, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsfont) #8, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfont) #8, !dbg !1513
  %51 = load ptr, ptr %retval, align 8, !dbg !1513
  ret ptr %51, !dbg !1513
}

declare !dbg !1514 ptr @CreateFontRec() #2

declare !dbg !1518 void @DestroyFontRec(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare !dbg !1519 i32 @CheckFSFormat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @_fs_get_glyphs(ptr noundef %pFont, i64 noundef %count, ptr noundef %chars, i32 noundef %charEncoding, ptr noundef %glyphCount, ptr noundef %glyphs) #0 !dbg !1522 {
entry:
  %pFont.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %chars.addr = alloca ptr, align 8
  %charEncoding.addr = alloca i32, align 4
  %glyphCount.addr = alloca ptr, align 8
  %glyphs.addr = alloca ptr, align 8
  %fsdata = alloca ptr, align 8
  %firstCol = alloca i32, align 4
  %numCols = alloca i32, align 4
  %firstRow = alloca i32, align 4
  %numRows = alloca i32, align 4
  %glyphsBase = alloca ptr, align 8
  %c = alloca i32, align 4
  %pci = alloca ptr, align 8
  %r = alloca i32, align 4
  %encoding = alloca ptr, align 8
  %pDefault = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %pFont, ptr %pFont.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pFont.addr, metadata !1524, metadata !DIExpression()), !dbg !1543
  store i64 %count, ptr %count.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1525, metadata !DIExpression()), !dbg !1544
  store ptr %chars, ptr %chars.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !1526, metadata !DIExpression()), !dbg !1545
  store i32 %charEncoding, ptr %charEncoding.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %charEncoding.addr, metadata !1527, metadata !DIExpression()), !dbg !1546
  store ptr %glyphCount, ptr %glyphCount.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %glyphCount.addr, metadata !1528, metadata !DIExpression()), !dbg !1547
  store ptr %glyphs, ptr %glyphs.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %glyphs.addr, metadata !1529, metadata !DIExpression()), !dbg !1548
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsdata) #8, !dbg !1549
  tail call void @llvm.dbg.declare(metadata ptr %fsdata, metadata !1530, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstCol) #8, !dbg !1551
  tail call void @llvm.dbg.declare(metadata ptr %firstCol, metadata !1531, metadata !DIExpression()), !dbg !1552
  call void @llvm.lifetime.start.p0(i64 4, ptr %numCols) #8, !dbg !1553
  tail call void @llvm.dbg.declare(metadata ptr %numCols, metadata !1532, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstRow) #8, !dbg !1555
  tail call void @llvm.dbg.declare(metadata ptr %firstRow, metadata !1533, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 4, ptr %numRows) #8, !dbg !1557
  tail call void @llvm.dbg.declare(metadata ptr %numRows, metadata !1534, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr %glyphsBase) #8, !dbg !1559
  tail call void @llvm.dbg.declare(metadata ptr %glyphsBase, metadata !1535, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #8, !dbg !1561
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1536, metadata !DIExpression()), !dbg !1562
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci) #8, !dbg !1563
  tail call void @llvm.dbg.declare(metadata ptr %pci, metadata !1537, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #8, !dbg !1565
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1538, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoding) #8, !dbg !1567
  tail call void @llvm.dbg.declare(metadata ptr %encoding, metadata !1539, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 8, ptr %pDefault) #8, !dbg !1569
  tail call void @llvm.dbg.declare(metadata ptr %pDefault, metadata !1540, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #8, !dbg !1571
  tail call void @llvm.dbg.declare(metadata ptr %fsd, metadata !1541, metadata !DIExpression()), !dbg !1572
  %0 = load ptr, ptr %pFont.addr, align 8, !dbg !1573
  %fpePrivate = getelementptr inbounds %struct._Font, ptr %0, i32 0, i32 14, !dbg !1574
  %1 = load ptr, ptr %fpePrivate, align 8, !dbg !1574
  store ptr %1, ptr %fsd, align 8, !dbg !1572
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !1575
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1542, metadata !DIExpression()), !dbg !1576
  store i32 85, ptr %err, align 4, !dbg !1576
  %2 = load ptr, ptr %pFont.addr, align 8, !dbg !1577
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %2, i32 0, i32 13, !dbg !1578
  %3 = load ptr, ptr %fontPrivate, align 8, !dbg !1578
  store ptr %3, ptr %fsdata, align 8, !dbg !1579
  %4 = load ptr, ptr %fsdata, align 8, !dbg !1580
  %encoding1 = getelementptr inbounds %struct._fs_font, ptr %4, i32 0, i32 1, !dbg !1581
  %5 = load ptr, ptr %encoding1, align 8, !dbg !1581
  store ptr %5, ptr %encoding, align 8, !dbg !1582
  %6 = load ptr, ptr %fsdata, align 8, !dbg !1583
  %pDefault2 = getelementptr inbounds %struct._fs_font, ptr %6, i32 0, i32 0, !dbg !1584
  %7 = load ptr, ptr %pDefault2, align 8, !dbg !1584
  store ptr %7, ptr %pDefault, align 8, !dbg !1585
  %8 = load ptr, ptr %pFont.addr, align 8, !dbg !1586
  %info = getelementptr inbounds %struct._Font, ptr %8, i32 0, i32 1, !dbg !1587
  %firstCol3 = getelementptr inbounds %struct._FontInfo, ptr %info, i32 0, i32 0, !dbg !1588
  %9 = load i16, ptr %firstCol3, align 8, !dbg !1588
  %conv = zext i16 %9 to i32, !dbg !1586
  store i32 %conv, ptr %firstCol, align 4, !dbg !1589
  %10 = load ptr, ptr %pFont.addr, align 8, !dbg !1590
  %info4 = getelementptr inbounds %struct._Font, ptr %10, i32 0, i32 1, !dbg !1591
  %lastCol = getelementptr inbounds %struct._FontInfo, ptr %info4, i32 0, i32 1, !dbg !1592
  %11 = load i16, ptr %lastCol, align 2, !dbg !1592
  %conv5 = zext i16 %11 to i32, !dbg !1590
  %12 = load i32, ptr %firstCol, align 4, !dbg !1593
  %sub = sub i32 %conv5, %12, !dbg !1594
  %add = add i32 %sub, 1, !dbg !1595
  store i32 %add, ptr %numCols, align 4, !dbg !1596
  %13 = load ptr, ptr %glyphs.addr, align 8, !dbg !1597
  store ptr %13, ptr %glyphsBase, align 8, !dbg !1598
  %14 = load i32, ptr %charEncoding.addr, align 4, !dbg !1599
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb81
    i32 3, label %sw.bb184
  ], !dbg !1600

sw.bb:                                            ; preds = %entry, %entry
  %15 = load ptr, ptr %pFont.addr, align 8, !dbg !1601
  %info6 = getelementptr inbounds %struct._Font, ptr %15, i32 0, i32 1, !dbg !1604
  %firstRow7 = getelementptr inbounds %struct._FontInfo, ptr %info6, i32 0, i32 2, !dbg !1605
  %16 = load i16, ptr %firstRow7, align 4, !dbg !1605
  %conv8 = zext i16 %16 to i32, !dbg !1601
  %cmp = icmp sgt i32 %conv8, 0, !dbg !1606
  br i1 %cmp, label %if.then, label %if.end, !dbg !1607

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !1608

if.end:                                           ; preds = %sw.bb
  %17 = load ptr, ptr %pFont.addr, align 8, !dbg !1609
  %info10 = getelementptr inbounds %struct._Font, ptr %17, i32 0, i32 1, !dbg !1611
  %allExist = getelementptr inbounds %struct._FontInfo, ptr %info10, i32 0, i32 5, !dbg !1612
  %bf.load = load i16, ptr %allExist, align 2, !dbg !1612
  %bf.lshr = lshr i16 %bf.load, 6, !dbg !1612
  %bf.clear = and i16 %bf.lshr, 1, !dbg !1612
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1612
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1609
  br i1 %tobool, label %land.lhs.true, label %if.else34, !dbg !1613

land.lhs.true:                                    ; preds = %if.end
  %18 = load ptr, ptr %pDefault, align 8, !dbg !1614
  %tobool11 = icmp ne ptr %18, null, !dbg !1614
  br i1 %tobool11, label %if.then12, label %if.else34, !dbg !1615

if.then12:                                        ; preds = %land.lhs.true
  br label %while.cond, !dbg !1616

while.cond:                                       ; preds = %if.end33, %if.then12
  %19 = load i32, ptr %err, align 4, !dbg !1618
  %cmp13 = icmp eq i32 %19, 85, !dbg !1619
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !1620

land.rhs:                                         ; preds = %while.cond
  %20 = load i64, ptr %count.addr, align 8, !dbg !1621
  %dec = add i64 %20, -1, !dbg !1621
  store i64 %dec, ptr %count.addr, align 8, !dbg !1621
  %tobool15 = icmp ne i64 %20, 0, !dbg !1620
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %tobool15, %land.rhs ], !dbg !1622
  br i1 %21, label %while.body, label %while.end, !dbg !1616

while.body:                                       ; preds = %land.end
  %22 = load ptr, ptr %chars.addr, align 8, !dbg !1623
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 1, !dbg !1623
  store ptr %incdec.ptr, ptr %chars.addr, align 8, !dbg !1623
  %23 = load i8, ptr %22, align 1, !dbg !1625
  %conv16 = zext i8 %23 to i32, !dbg !1626
  %24 = load i32, ptr %firstCol, align 4, !dbg !1627
  %sub17 = sub i32 %conv16, %24, !dbg !1628
  store i32 %sub17, ptr %c, align 4, !dbg !1629
  %25 = load i32, ptr %c, align 4, !dbg !1630
  %26 = load i32, ptr %numCols, align 4, !dbg !1632
  %cmp18 = icmp ult i32 %25, %26, !dbg !1633
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1634

if.then20:                                        ; preds = %while.body
  %27 = load ptr, ptr %encoding, align 8, !dbg !1635
  %28 = load i32, ptr %c, align 4, !dbg !1635
  %idx.ext = zext i32 %28 to i64, !dbg !1635
  %add.ptr = getelementptr inbounds %struct._CharInfo, ptr %27, i64 %idx.ext, !dbg !1635
  store ptr %add.ptr, ptr %pci, align 8, !dbg !1635
  %29 = load ptr, ptr %fsd, align 8, !dbg !1635
  %glyphs_to_get = getelementptr inbounds %struct._fs_font_data, ptr %29, i32 0, i32 2, !dbg !1635
  %30 = load i64, ptr %glyphs_to_get, align 8, !dbg !1635
  %tobool21 = icmp ne i64 %30, 0, !dbg !1635
  br i1 %tobool21, label %cond.true, label %cond.false28, !dbg !1635

cond.true:                                        ; preds = %if.then20
  %31 = load ptr, ptr %pci, align 8, !dbg !1635
  %bits = getelementptr inbounds %struct._CharInfo, ptr %31, i32 0, i32 1, !dbg !1635
  %32 = load ptr, ptr %bits, align 8, !dbg !1635
  %cmp22 = icmp eq ptr %32, @_fs_glyph_undefined, !dbg !1635
  br i1 %cmp22, label %cond.true27, label %lor.lhs.false, !dbg !1635

lor.lhs.false:                                    ; preds = %cond.true
  %33 = load ptr, ptr %pci, align 8, !dbg !1635
  %bits24 = getelementptr inbounds %struct._CharInfo, ptr %33, i32 0, i32 1, !dbg !1635
  %34 = load ptr, ptr %bits24, align 8, !dbg !1635
  %cmp25 = icmp eq ptr %34, @_fs_glyph_requested, !dbg !1635
  br i1 %cmp25, label %cond.true27, label %cond.false, !dbg !1635

cond.true27:                                      ; preds = %lor.lhs.false, %cond.true
  %35 = load ptr, ptr %pFont.addr, align 8, !dbg !1635
  %call = call i32 @fs_load_all_glyphs(ptr noundef %35), !dbg !1635
  store i32 %call, ptr %err, align 4, !dbg !1635
  %36 = load ptr, ptr %pci, align 8, !dbg !1635
  br label %cond.end, !dbg !1635

cond.false:                                       ; preds = %lor.lhs.false
  %37 = load ptr, ptr %pci, align 8, !dbg !1635
  br label %cond.end, !dbg !1635

cond.end:                                         ; preds = %cond.false, %cond.true27
  %cond = phi ptr [ %36, %cond.true27 ], [ %37, %cond.false ], !dbg !1635
  br label %cond.end29, !dbg !1635

cond.false28:                                     ; preds = %if.then20
  %38 = load ptr, ptr %pci, align 8, !dbg !1635
  br label %cond.end29, !dbg !1635

cond.end29:                                       ; preds = %cond.false28, %cond.end
  %cond30 = phi ptr [ %cond, %cond.end ], [ %38, %cond.false28 ], !dbg !1635
  %39 = load ptr, ptr %glyphs.addr, align 8, !dbg !1636
  %incdec.ptr31 = getelementptr inbounds ptr, ptr %39, i32 1, !dbg !1636
  store ptr %incdec.ptr31, ptr %glyphs.addr, align 8, !dbg !1636
  store ptr %cond30, ptr %39, align 8, !dbg !1637
  br label %if.end33, !dbg !1638

if.else:                                          ; preds = %while.body
  %40 = load ptr, ptr %pDefault, align 8, !dbg !1639
  %41 = load ptr, ptr %glyphs.addr, align 8, !dbg !1640
  %incdec.ptr32 = getelementptr inbounds ptr, ptr %41, i32 1, !dbg !1640
  store ptr %incdec.ptr32, ptr %glyphs.addr, align 8, !dbg !1640
  store ptr %40, ptr %41, align 8, !dbg !1641
  br label %if.end33

if.end33:                                         ; preds = %if.else, %cond.end29
  br label %while.cond, !dbg !1616, !llvm.loop !1642

while.end:                                        ; preds = %land.end
  br label %if.end80, !dbg !1644

if.else34:                                        ; preds = %land.lhs.true, %if.end
  br label %while.cond35, !dbg !1645

while.cond35:                                     ; preds = %if.end78, %if.else34
  %42 = load i32, ptr %err, align 4, !dbg !1647
  %cmp36 = icmp eq i32 %42, 85, !dbg !1648
  br i1 %cmp36, label %land.rhs38, label %land.end41, !dbg !1649

land.rhs38:                                       ; preds = %while.cond35
  %43 = load i64, ptr %count.addr, align 8, !dbg !1650
  %dec39 = add i64 %43, -1, !dbg !1650
  store i64 %dec39, ptr %count.addr, align 8, !dbg !1650
  %tobool40 = icmp ne i64 %43, 0, !dbg !1649
  br label %land.end41

land.end41:                                       ; preds = %land.rhs38, %while.cond35
  %44 = phi i1 [ false, %while.cond35 ], [ %tobool40, %land.rhs38 ], !dbg !1651
  br i1 %44, label %while.body42, label %while.end79, !dbg !1645

while.body42:                                     ; preds = %land.end41
  %45 = load ptr, ptr %chars.addr, align 8, !dbg !1652
  %incdec.ptr43 = getelementptr inbounds i8, ptr %45, i32 1, !dbg !1652
  store ptr %incdec.ptr43, ptr %chars.addr, align 8, !dbg !1652
  %46 = load i8, ptr %45, align 1, !dbg !1654
  %conv44 = zext i8 %46 to i32, !dbg !1655
  %47 = load i32, ptr %firstCol, align 4, !dbg !1656
  %sub45 = sub i32 %conv44, %47, !dbg !1657
  store i32 %sub45, ptr %c, align 4, !dbg !1658
  %48 = load i32, ptr %c, align 4, !dbg !1659
  %49 = load i32, ptr %numCols, align 4, !dbg !1661
  %cmp46 = icmp ult i32 %48, %49, !dbg !1662
  br i1 %cmp46, label %land.lhs.true48, label %if.else73, !dbg !1663

land.lhs.true48:                                  ; preds = %while.body42
  %50 = load ptr, ptr %encoding, align 8, !dbg !1664
  %51 = load i32, ptr %c, align 4, !dbg !1664
  %idx.ext49 = zext i32 %51 to i64, !dbg !1664
  %add.ptr50 = getelementptr inbounds %struct._CharInfo, ptr %50, i64 %idx.ext49, !dbg !1664
  store ptr %add.ptr50, ptr %pci, align 8, !dbg !1664
  %52 = load ptr, ptr %fsd, align 8, !dbg !1664
  %glyphs_to_get51 = getelementptr inbounds %struct._fs_font_data, ptr %52, i32 0, i32 2, !dbg !1664
  %53 = load i64, ptr %glyphs_to_get51, align 8, !dbg !1664
  %tobool52 = icmp ne i64 %53, 0, !dbg !1664
  br i1 %tobool52, label %cond.true53, label %cond.false66, !dbg !1664

cond.true53:                                      ; preds = %land.lhs.true48
  %54 = load ptr, ptr %pci, align 8, !dbg !1664
  %bits54 = getelementptr inbounds %struct._CharInfo, ptr %54, i32 0, i32 1, !dbg !1664
  %55 = load ptr, ptr %bits54, align 8, !dbg !1664
  %cmp55 = icmp eq ptr %55, @_fs_glyph_undefined, !dbg !1664
  br i1 %cmp55, label %cond.true61, label %lor.lhs.false57, !dbg !1664

lor.lhs.false57:                                  ; preds = %cond.true53
  %56 = load ptr, ptr %pci, align 8, !dbg !1664
  %bits58 = getelementptr inbounds %struct._CharInfo, ptr %56, i32 0, i32 1, !dbg !1664
  %57 = load ptr, ptr %bits58, align 8, !dbg !1664
  %cmp59 = icmp eq ptr %57, @_fs_glyph_requested, !dbg !1664
  br i1 %cmp59, label %cond.true61, label %cond.false63, !dbg !1664

cond.true61:                                      ; preds = %lor.lhs.false57, %cond.true53
  %58 = load ptr, ptr %pFont.addr, align 8, !dbg !1664
  %call62 = call i32 @fs_load_all_glyphs(ptr noundef %58), !dbg !1664
  store i32 %call62, ptr %err, align 4, !dbg !1664
  %59 = load ptr, ptr %pci, align 8, !dbg !1664
  br label %cond.end64, !dbg !1664

cond.false63:                                     ; preds = %lor.lhs.false57
  %60 = load ptr, ptr %pci, align 8, !dbg !1664
  br label %cond.end64, !dbg !1664

cond.end64:                                       ; preds = %cond.false63, %cond.true61
  %cond65 = phi ptr [ %59, %cond.true61 ], [ %60, %cond.false63 ], !dbg !1664
  br label %cond.end67, !dbg !1664

cond.false66:                                     ; preds = %land.lhs.true48
  %61 = load ptr, ptr %pci, align 8, !dbg !1664
  br label %cond.end67, !dbg !1664

cond.end67:                                       ; preds = %cond.false66, %cond.end64
  %cond68 = phi ptr [ %cond65, %cond.end64 ], [ %61, %cond.false66 ], !dbg !1664
  %bits69 = getelementptr inbounds %struct._CharInfo, ptr %cond68, i32 0, i32 1, !dbg !1665
  %62 = load ptr, ptr %bits69, align 8, !dbg !1665
  %tobool70 = icmp ne ptr %62, null, !dbg !1664
  br i1 %tobool70, label %if.then71, label %if.else73, !dbg !1666

if.then71:                                        ; preds = %cond.end67
  %63 = load ptr, ptr %pci, align 8, !dbg !1667
  %64 = load ptr, ptr %glyphs.addr, align 8, !dbg !1668
  %incdec.ptr72 = getelementptr inbounds ptr, ptr %64, i32 1, !dbg !1668
  store ptr %incdec.ptr72, ptr %glyphs.addr, align 8, !dbg !1668
  store ptr %63, ptr %64, align 8, !dbg !1669
  br label %if.end78, !dbg !1670

if.else73:                                        ; preds = %cond.end67, %while.body42
  %65 = load ptr, ptr %pDefault, align 8, !dbg !1671
  %tobool74 = icmp ne ptr %65, null, !dbg !1671
  br i1 %tobool74, label %if.then75, label %if.end77, !dbg !1673

if.then75:                                        ; preds = %if.else73
  %66 = load ptr, ptr %pDefault, align 8, !dbg !1674
  %67 = load ptr, ptr %glyphs.addr, align 8, !dbg !1675
  %incdec.ptr76 = getelementptr inbounds ptr, ptr %67, i32 1, !dbg !1675
  store ptr %incdec.ptr76, ptr %glyphs.addr, align 8, !dbg !1675
  store ptr %66, ptr %67, align 8, !dbg !1676
  br label %if.end77, !dbg !1677

if.end77:                                         ; preds = %if.then75, %if.else73
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then71
  br label %while.cond35, !dbg !1645, !llvm.loop !1678

while.end79:                                      ; preds = %land.end41
  br label %if.end80

if.end80:                                         ; preds = %while.end79, %while.end
  br label %sw.epilog, !dbg !1680

sw.bb81:                                          ; preds = %entry
  %68 = load ptr, ptr %pFont.addr, align 8, !dbg !1681
  %info82 = getelementptr inbounds %struct._Font, ptr %68, i32 0, i32 1, !dbg !1683
  %allExist83 = getelementptr inbounds %struct._FontInfo, ptr %info82, i32 0, i32 5, !dbg !1684
  %bf.load84 = load i16, ptr %allExist83, align 2, !dbg !1684
  %bf.lshr85 = lshr i16 %bf.load84, 6, !dbg !1684
  %bf.clear86 = and i16 %bf.lshr85, 1, !dbg !1684
  %bf.cast87 = zext i16 %bf.clear86 to i32, !dbg !1684
  %tobool88 = icmp ne i32 %bf.cast87, 0, !dbg !1681
  br i1 %tobool88, label %land.lhs.true89, label %if.else133, !dbg !1685

land.lhs.true89:                                  ; preds = %sw.bb81
  %69 = load ptr, ptr %pDefault, align 8, !dbg !1686
  %tobool90 = icmp ne ptr %69, null, !dbg !1686
  br i1 %tobool90, label %if.then91, label %if.else133, !dbg !1687

if.then91:                                        ; preds = %land.lhs.true89
  br label %while.cond92, !dbg !1688

while.cond92:                                     ; preds = %if.end131, %if.then91
  %70 = load i32, ptr %err, align 4, !dbg !1690
  %cmp93 = icmp eq i32 %70, 85, !dbg !1691
  br i1 %cmp93, label %land.rhs95, label %land.end98, !dbg !1692

land.rhs95:                                       ; preds = %while.cond92
  %71 = load i64, ptr %count.addr, align 8, !dbg !1693
  %dec96 = add i64 %71, -1, !dbg !1693
  store i64 %dec96, ptr %count.addr, align 8, !dbg !1693
  %tobool97 = icmp ne i64 %71, 0, !dbg !1692
  br label %land.end98

land.end98:                                       ; preds = %land.rhs95, %while.cond92
  %72 = phi i1 [ false, %while.cond92 ], [ %tobool97, %land.rhs95 ], !dbg !1694
  br i1 %72, label %while.body99, label %while.end132, !dbg !1688

while.body99:                                     ; preds = %land.end98
  %73 = load ptr, ptr %chars.addr, align 8, !dbg !1695
  %incdec.ptr100 = getelementptr inbounds i8, ptr %73, i32 1, !dbg !1695
  store ptr %incdec.ptr100, ptr %chars.addr, align 8, !dbg !1695
  %74 = load i8, ptr %73, align 1, !dbg !1697
  %conv101 = zext i8 %74 to i32, !dbg !1697
  %shl = shl i32 %conv101, 8, !dbg !1698
  store i32 %shl, ptr %c, align 4, !dbg !1699
  %75 = load i32, ptr %c, align 4, !dbg !1700
  %76 = load ptr, ptr %chars.addr, align 8, !dbg !1701
  %incdec.ptr102 = getelementptr inbounds i8, ptr %76, i32 1, !dbg !1701
  store ptr %incdec.ptr102, ptr %chars.addr, align 8, !dbg !1701
  %77 = load i8, ptr %76, align 1, !dbg !1702
  %conv103 = zext i8 %77 to i32, !dbg !1702
  %or = or i32 %75, %conv103, !dbg !1703
  %78 = load i32, ptr %firstCol, align 4, !dbg !1704
  %sub104 = sub i32 %or, %78, !dbg !1705
  store i32 %sub104, ptr %c, align 4, !dbg !1706
  %79 = load i32, ptr %c, align 4, !dbg !1707
  %80 = load i32, ptr %numCols, align 4, !dbg !1709
  %cmp105 = icmp ult i32 %79, %80, !dbg !1710
  br i1 %cmp105, label %if.then107, label %if.else129, !dbg !1711

if.then107:                                       ; preds = %while.body99
  %81 = load ptr, ptr %encoding, align 8, !dbg !1712
  %82 = load i32, ptr %c, align 4, !dbg !1712
  %idx.ext108 = zext i32 %82 to i64, !dbg !1712
  %add.ptr109 = getelementptr inbounds %struct._CharInfo, ptr %81, i64 %idx.ext108, !dbg !1712
  store ptr %add.ptr109, ptr %pci, align 8, !dbg !1712
  %83 = load ptr, ptr %fsd, align 8, !dbg !1712
  %glyphs_to_get110 = getelementptr inbounds %struct._fs_font_data, ptr %83, i32 0, i32 2, !dbg !1712
  %84 = load i64, ptr %glyphs_to_get110, align 8, !dbg !1712
  %tobool111 = icmp ne i64 %84, 0, !dbg !1712
  br i1 %tobool111, label %cond.true112, label %cond.false125, !dbg !1712

cond.true112:                                     ; preds = %if.then107
  %85 = load ptr, ptr %pci, align 8, !dbg !1712
  %bits113 = getelementptr inbounds %struct._CharInfo, ptr %85, i32 0, i32 1, !dbg !1712
  %86 = load ptr, ptr %bits113, align 8, !dbg !1712
  %cmp114 = icmp eq ptr %86, @_fs_glyph_undefined, !dbg !1712
  br i1 %cmp114, label %cond.true120, label %lor.lhs.false116, !dbg !1712

lor.lhs.false116:                                 ; preds = %cond.true112
  %87 = load ptr, ptr %pci, align 8, !dbg !1712
  %bits117 = getelementptr inbounds %struct._CharInfo, ptr %87, i32 0, i32 1, !dbg !1712
  %88 = load ptr, ptr %bits117, align 8, !dbg !1712
  %cmp118 = icmp eq ptr %88, @_fs_glyph_requested, !dbg !1712
  br i1 %cmp118, label %cond.true120, label %cond.false122, !dbg !1712

cond.true120:                                     ; preds = %lor.lhs.false116, %cond.true112
  %89 = load ptr, ptr %pFont.addr, align 8, !dbg !1712
  %call121 = call i32 @fs_load_all_glyphs(ptr noundef %89), !dbg !1712
  store i32 %call121, ptr %err, align 4, !dbg !1712
  %90 = load ptr, ptr %pci, align 8, !dbg !1712
  br label %cond.end123, !dbg !1712

cond.false122:                                    ; preds = %lor.lhs.false116
  %91 = load ptr, ptr %pci, align 8, !dbg !1712
  br label %cond.end123, !dbg !1712

cond.end123:                                      ; preds = %cond.false122, %cond.true120
  %cond124 = phi ptr [ %90, %cond.true120 ], [ %91, %cond.false122 ], !dbg !1712
  br label %cond.end126, !dbg !1712

cond.false125:                                    ; preds = %if.then107
  %92 = load ptr, ptr %pci, align 8, !dbg !1712
  br label %cond.end126, !dbg !1712

cond.end126:                                      ; preds = %cond.false125, %cond.end123
  %cond127 = phi ptr [ %cond124, %cond.end123 ], [ %92, %cond.false125 ], !dbg !1712
  %93 = load ptr, ptr %glyphs.addr, align 8, !dbg !1713
  %incdec.ptr128 = getelementptr inbounds ptr, ptr %93, i32 1, !dbg !1713
  store ptr %incdec.ptr128, ptr %glyphs.addr, align 8, !dbg !1713
  store ptr %cond127, ptr %93, align 8, !dbg !1714
  br label %if.end131, !dbg !1715

if.else129:                                       ; preds = %while.body99
  %94 = load ptr, ptr %pDefault, align 8, !dbg !1716
  %95 = load ptr, ptr %glyphs.addr, align 8, !dbg !1717
  %incdec.ptr130 = getelementptr inbounds ptr, ptr %95, i32 1, !dbg !1717
  store ptr %incdec.ptr130, ptr %glyphs.addr, align 8, !dbg !1717
  store ptr %94, ptr %95, align 8, !dbg !1718
  br label %if.end131

if.end131:                                        ; preds = %if.else129, %cond.end126
  br label %while.cond92, !dbg !1688, !llvm.loop !1719

while.end132:                                     ; preds = %land.end98
  br label %if.end183, !dbg !1721

if.else133:                                       ; preds = %land.lhs.true89, %sw.bb81
  br label %while.cond134, !dbg !1722

while.cond134:                                    ; preds = %if.end181, %if.else133
  %96 = load i32, ptr %err, align 4, !dbg !1724
  %cmp135 = icmp eq i32 %96, 85, !dbg !1725
  br i1 %cmp135, label %land.rhs137, label %land.end140, !dbg !1726

land.rhs137:                                      ; preds = %while.cond134
  %97 = load i64, ptr %count.addr, align 8, !dbg !1727
  %dec138 = add i64 %97, -1, !dbg !1727
  store i64 %dec138, ptr %count.addr, align 8, !dbg !1727
  %tobool139 = icmp ne i64 %97, 0, !dbg !1726
  br label %land.end140

land.end140:                                      ; preds = %land.rhs137, %while.cond134
  %98 = phi i1 [ false, %while.cond134 ], [ %tobool139, %land.rhs137 ], !dbg !1728
  br i1 %98, label %while.body141, label %while.end182, !dbg !1722

while.body141:                                    ; preds = %land.end140
  %99 = load ptr, ptr %chars.addr, align 8, !dbg !1729
  %incdec.ptr142 = getelementptr inbounds i8, ptr %99, i32 1, !dbg !1729
  store ptr %incdec.ptr142, ptr %chars.addr, align 8, !dbg !1729
  %100 = load i8, ptr %99, align 1, !dbg !1731
  %conv143 = zext i8 %100 to i32, !dbg !1731
  %shl144 = shl i32 %conv143, 8, !dbg !1732
  store i32 %shl144, ptr %c, align 4, !dbg !1733
  %101 = load i32, ptr %c, align 4, !dbg !1734
  %102 = load ptr, ptr %chars.addr, align 8, !dbg !1735
  %incdec.ptr145 = getelementptr inbounds i8, ptr %102, i32 1, !dbg !1735
  store ptr %incdec.ptr145, ptr %chars.addr, align 8, !dbg !1735
  %103 = load i8, ptr %102, align 1, !dbg !1736
  %conv146 = zext i8 %103 to i32, !dbg !1736
  %or147 = or i32 %101, %conv146, !dbg !1737
  %104 = load i32, ptr %firstCol, align 4, !dbg !1738
  %sub148 = sub i32 %or147, %104, !dbg !1739
  store i32 %sub148, ptr %c, align 4, !dbg !1740
  %105 = load i32, ptr %c, align 4, !dbg !1741
  %106 = load i32, ptr %numCols, align 4, !dbg !1743
  %cmp149 = icmp ult i32 %105, %106, !dbg !1744
  br i1 %cmp149, label %land.lhs.true151, label %if.else176, !dbg !1745

land.lhs.true151:                                 ; preds = %while.body141
  %107 = load ptr, ptr %encoding, align 8, !dbg !1746
  %108 = load i32, ptr %c, align 4, !dbg !1746
  %idx.ext152 = zext i32 %108 to i64, !dbg !1746
  %add.ptr153 = getelementptr inbounds %struct._CharInfo, ptr %107, i64 %idx.ext152, !dbg !1746
  store ptr %add.ptr153, ptr %pci, align 8, !dbg !1746
  %109 = load ptr, ptr %fsd, align 8, !dbg !1746
  %glyphs_to_get154 = getelementptr inbounds %struct._fs_font_data, ptr %109, i32 0, i32 2, !dbg !1746
  %110 = load i64, ptr %glyphs_to_get154, align 8, !dbg !1746
  %tobool155 = icmp ne i64 %110, 0, !dbg !1746
  br i1 %tobool155, label %cond.true156, label %cond.false169, !dbg !1746

cond.true156:                                     ; preds = %land.lhs.true151
  %111 = load ptr, ptr %pci, align 8, !dbg !1746
  %bits157 = getelementptr inbounds %struct._CharInfo, ptr %111, i32 0, i32 1, !dbg !1746
  %112 = load ptr, ptr %bits157, align 8, !dbg !1746
  %cmp158 = icmp eq ptr %112, @_fs_glyph_undefined, !dbg !1746
  br i1 %cmp158, label %cond.true164, label %lor.lhs.false160, !dbg !1746

lor.lhs.false160:                                 ; preds = %cond.true156
  %113 = load ptr, ptr %pci, align 8, !dbg !1746
  %bits161 = getelementptr inbounds %struct._CharInfo, ptr %113, i32 0, i32 1, !dbg !1746
  %114 = load ptr, ptr %bits161, align 8, !dbg !1746
  %cmp162 = icmp eq ptr %114, @_fs_glyph_requested, !dbg !1746
  br i1 %cmp162, label %cond.true164, label %cond.false166, !dbg !1746

cond.true164:                                     ; preds = %lor.lhs.false160, %cond.true156
  %115 = load ptr, ptr %pFont.addr, align 8, !dbg !1746
  %call165 = call i32 @fs_load_all_glyphs(ptr noundef %115), !dbg !1746
  store i32 %call165, ptr %err, align 4, !dbg !1746
  %116 = load ptr, ptr %pci, align 8, !dbg !1746
  br label %cond.end167, !dbg !1746

cond.false166:                                    ; preds = %lor.lhs.false160
  %117 = load ptr, ptr %pci, align 8, !dbg !1746
  br label %cond.end167, !dbg !1746

cond.end167:                                      ; preds = %cond.false166, %cond.true164
  %cond168 = phi ptr [ %116, %cond.true164 ], [ %117, %cond.false166 ], !dbg !1746
  br label %cond.end170, !dbg !1746

cond.false169:                                    ; preds = %land.lhs.true151
  %118 = load ptr, ptr %pci, align 8, !dbg !1746
  br label %cond.end170, !dbg !1746

cond.end170:                                      ; preds = %cond.false169, %cond.end167
  %cond171 = phi ptr [ %cond168, %cond.end167 ], [ %118, %cond.false169 ], !dbg !1746
  %bits172 = getelementptr inbounds %struct._CharInfo, ptr %cond171, i32 0, i32 1, !dbg !1747
  %119 = load ptr, ptr %bits172, align 8, !dbg !1747
  %tobool173 = icmp ne ptr %119, null, !dbg !1746
  br i1 %tobool173, label %if.then174, label %if.else176, !dbg !1748

if.then174:                                       ; preds = %cond.end170
  %120 = load ptr, ptr %pci, align 8, !dbg !1749
  %121 = load ptr, ptr %glyphs.addr, align 8, !dbg !1750
  %incdec.ptr175 = getelementptr inbounds ptr, ptr %121, i32 1, !dbg !1750
  store ptr %incdec.ptr175, ptr %glyphs.addr, align 8, !dbg !1750
  store ptr %120, ptr %121, align 8, !dbg !1751
  br label %if.end181, !dbg !1752

if.else176:                                       ; preds = %cond.end170, %while.body141
  %122 = load ptr, ptr %pDefault, align 8, !dbg !1753
  %tobool177 = icmp ne ptr %122, null, !dbg !1753
  br i1 %tobool177, label %if.then178, label %if.end180, !dbg !1755

if.then178:                                       ; preds = %if.else176
  %123 = load ptr, ptr %pDefault, align 8, !dbg !1756
  %124 = load ptr, ptr %glyphs.addr, align 8, !dbg !1757
  %incdec.ptr179 = getelementptr inbounds ptr, ptr %124, i32 1, !dbg !1757
  store ptr %incdec.ptr179, ptr %glyphs.addr, align 8, !dbg !1757
  store ptr %123, ptr %124, align 8, !dbg !1758
  br label %if.end180, !dbg !1759

if.end180:                                        ; preds = %if.then178, %if.else176
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.then174
  br label %while.cond134, !dbg !1722, !llvm.loop !1760

while.end182:                                     ; preds = %land.end140
  br label %if.end183

if.end183:                                        ; preds = %while.end182, %while.end132
  br label %sw.epilog, !dbg !1762

sw.bb184:                                         ; preds = %entry
  %125 = load ptr, ptr %pFont.addr, align 8, !dbg !1763
  %info185 = getelementptr inbounds %struct._Font, ptr %125, i32 0, i32 1, !dbg !1764
  %firstRow186 = getelementptr inbounds %struct._FontInfo, ptr %info185, i32 0, i32 2, !dbg !1765
  %126 = load i16, ptr %firstRow186, align 4, !dbg !1765
  %conv187 = zext i16 %126 to i32, !dbg !1763
  store i32 %conv187, ptr %firstRow, align 4, !dbg !1766
  %127 = load ptr, ptr %pFont.addr, align 8, !dbg !1767
  %info188 = getelementptr inbounds %struct._Font, ptr %127, i32 0, i32 1, !dbg !1768
  %lastRow = getelementptr inbounds %struct._FontInfo, ptr %info188, i32 0, i32 3, !dbg !1769
  %128 = load i16, ptr %lastRow, align 2, !dbg !1769
  %conv189 = zext i16 %128 to i32, !dbg !1767
  %129 = load i32, ptr %firstRow, align 4, !dbg !1770
  %sub190 = sub i32 %conv189, %129, !dbg !1771
  %add191 = add i32 %sub190, 1, !dbg !1772
  store i32 %add191, ptr %numRows, align 4, !dbg !1773
  br label %while.cond192, !dbg !1774

while.cond192:                                    ; preds = %if.end242, %sw.bb184
  %130 = load i32, ptr %err, align 4, !dbg !1775
  %cmp193 = icmp eq i32 %130, 85, !dbg !1776
  br i1 %cmp193, label %land.rhs195, label %land.end198, !dbg !1777

land.rhs195:                                      ; preds = %while.cond192
  %131 = load i64, ptr %count.addr, align 8, !dbg !1778
  %dec196 = add i64 %131, -1, !dbg !1778
  store i64 %dec196, ptr %count.addr, align 8, !dbg !1778
  %tobool197 = icmp ne i64 %131, 0, !dbg !1777
  br label %land.end198

land.end198:                                      ; preds = %land.rhs195, %while.cond192
  %132 = phi i1 [ false, %while.cond192 ], [ %tobool197, %land.rhs195 ], !dbg !1779
  br i1 %132, label %while.body199, label %while.end243, !dbg !1774

while.body199:                                    ; preds = %land.end198
  %133 = load ptr, ptr %chars.addr, align 8, !dbg !1780
  %incdec.ptr200 = getelementptr inbounds i8, ptr %133, i32 1, !dbg !1780
  store ptr %incdec.ptr200, ptr %chars.addr, align 8, !dbg !1780
  %134 = load i8, ptr %133, align 1, !dbg !1782
  %conv201 = zext i8 %134 to i32, !dbg !1783
  %135 = load i32, ptr %firstRow, align 4, !dbg !1784
  %sub202 = sub i32 %conv201, %135, !dbg !1785
  store i32 %sub202, ptr %r, align 4, !dbg !1786
  %136 = load ptr, ptr %chars.addr, align 8, !dbg !1787
  %incdec.ptr203 = getelementptr inbounds i8, ptr %136, i32 1, !dbg !1787
  store ptr %incdec.ptr203, ptr %chars.addr, align 8, !dbg !1787
  %137 = load i8, ptr %136, align 1, !dbg !1788
  %conv204 = zext i8 %137 to i32, !dbg !1789
  %138 = load i32, ptr %firstCol, align 4, !dbg !1790
  %sub205 = sub i32 %conv204, %138, !dbg !1791
  store i32 %sub205, ptr %c, align 4, !dbg !1792
  %139 = load i32, ptr %r, align 4, !dbg !1793
  %140 = load i32, ptr %numRows, align 4, !dbg !1795
  %cmp206 = icmp ult i32 %139, %140, !dbg !1796
  br i1 %cmp206, label %land.lhs.true208, label %if.else237, !dbg !1797

land.lhs.true208:                                 ; preds = %while.body199
  %141 = load i32, ptr %c, align 4, !dbg !1798
  %142 = load i32, ptr %numCols, align 4, !dbg !1799
  %cmp209 = icmp ult i32 %141, %142, !dbg !1800
  br i1 %cmp209, label %land.lhs.true211, label %if.else237, !dbg !1801

land.lhs.true211:                                 ; preds = %land.lhs.true208
  %143 = load ptr, ptr %encoding, align 8, !dbg !1802
  %144 = load i32, ptr %r, align 4, !dbg !1802
  %145 = load i32, ptr %numCols, align 4, !dbg !1802
  %mul = mul i32 %144, %145, !dbg !1802
  %146 = load i32, ptr %c, align 4, !dbg !1802
  %add212 = add i32 %mul, %146, !dbg !1802
  %idx.ext213 = zext i32 %add212 to i64, !dbg !1802
  %add.ptr214 = getelementptr inbounds %struct._CharInfo, ptr %143, i64 %idx.ext213, !dbg !1802
  store ptr %add.ptr214, ptr %pci, align 8, !dbg !1802
  %147 = load ptr, ptr %fsd, align 8, !dbg !1802
  %glyphs_to_get215 = getelementptr inbounds %struct._fs_font_data, ptr %147, i32 0, i32 2, !dbg !1802
  %148 = load i64, ptr %glyphs_to_get215, align 8, !dbg !1802
  %tobool216 = icmp ne i64 %148, 0, !dbg !1802
  br i1 %tobool216, label %cond.true217, label %cond.false230, !dbg !1802

cond.true217:                                     ; preds = %land.lhs.true211
  %149 = load ptr, ptr %pci, align 8, !dbg !1802
  %bits218 = getelementptr inbounds %struct._CharInfo, ptr %149, i32 0, i32 1, !dbg !1802
  %150 = load ptr, ptr %bits218, align 8, !dbg !1802
  %cmp219 = icmp eq ptr %150, @_fs_glyph_undefined, !dbg !1802
  br i1 %cmp219, label %cond.true225, label %lor.lhs.false221, !dbg !1802

lor.lhs.false221:                                 ; preds = %cond.true217
  %151 = load ptr, ptr %pci, align 8, !dbg !1802
  %bits222 = getelementptr inbounds %struct._CharInfo, ptr %151, i32 0, i32 1, !dbg !1802
  %152 = load ptr, ptr %bits222, align 8, !dbg !1802
  %cmp223 = icmp eq ptr %152, @_fs_glyph_requested, !dbg !1802
  br i1 %cmp223, label %cond.true225, label %cond.false227, !dbg !1802

cond.true225:                                     ; preds = %lor.lhs.false221, %cond.true217
  %153 = load ptr, ptr %pFont.addr, align 8, !dbg !1802
  %call226 = call i32 @fs_load_all_glyphs(ptr noundef %153), !dbg !1802
  store i32 %call226, ptr %err, align 4, !dbg !1802
  %154 = load ptr, ptr %pci, align 8, !dbg !1802
  br label %cond.end228, !dbg !1802

cond.false227:                                    ; preds = %lor.lhs.false221
  %155 = load ptr, ptr %pci, align 8, !dbg !1802
  br label %cond.end228, !dbg !1802

cond.end228:                                      ; preds = %cond.false227, %cond.true225
  %cond229 = phi ptr [ %154, %cond.true225 ], [ %155, %cond.false227 ], !dbg !1802
  br label %cond.end231, !dbg !1802

cond.false230:                                    ; preds = %land.lhs.true211
  %156 = load ptr, ptr %pci, align 8, !dbg !1802
  br label %cond.end231, !dbg !1802

cond.end231:                                      ; preds = %cond.false230, %cond.end228
  %cond232 = phi ptr [ %cond229, %cond.end228 ], [ %156, %cond.false230 ], !dbg !1802
  %bits233 = getelementptr inbounds %struct._CharInfo, ptr %cond232, i32 0, i32 1, !dbg !1803
  %157 = load ptr, ptr %bits233, align 8, !dbg !1803
  %tobool234 = icmp ne ptr %157, null, !dbg !1802
  br i1 %tobool234, label %if.then235, label %if.else237, !dbg !1804

if.then235:                                       ; preds = %cond.end231
  %158 = load ptr, ptr %pci, align 8, !dbg !1805
  %159 = load ptr, ptr %glyphs.addr, align 8, !dbg !1806
  %incdec.ptr236 = getelementptr inbounds ptr, ptr %159, i32 1, !dbg !1806
  store ptr %incdec.ptr236, ptr %glyphs.addr, align 8, !dbg !1806
  store ptr %158, ptr %159, align 8, !dbg !1807
  br label %if.end242, !dbg !1808

if.else237:                                       ; preds = %cond.end231, %land.lhs.true208, %while.body199
  %160 = load ptr, ptr %pDefault, align 8, !dbg !1809
  %tobool238 = icmp ne ptr %160, null, !dbg !1809
  br i1 %tobool238, label %if.then239, label %if.end241, !dbg !1811

if.then239:                                       ; preds = %if.else237
  %161 = load ptr, ptr %pDefault, align 8, !dbg !1812
  %162 = load ptr, ptr %glyphs.addr, align 8, !dbg !1813
  %incdec.ptr240 = getelementptr inbounds ptr, ptr %162, i32 1, !dbg !1813
  store ptr %incdec.ptr240, ptr %glyphs.addr, align 8, !dbg !1813
  store ptr %161, ptr %162, align 8, !dbg !1814
  br label %if.end241, !dbg !1815

if.end241:                                        ; preds = %if.then239, %if.else237
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then235
  br label %while.cond192, !dbg !1774, !llvm.loop !1816

while.end243:                                     ; preds = %land.end198
  br label %sw.epilog, !dbg !1818

sw.epilog:                                        ; preds = %entry, %while.end243, %if.end183, %if.end80, %if.then
  %163 = load ptr, ptr %glyphs.addr, align 8, !dbg !1819
  %164 = load ptr, ptr %glyphsBase, align 8, !dbg !1820
  %sub.ptr.lhs.cast = ptrtoint ptr %163 to i64, !dbg !1821
  %sub.ptr.rhs.cast = ptrtoint ptr %164 to i64, !dbg !1821
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1821
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !1821
  %165 = load ptr, ptr %glyphCount.addr, align 8, !dbg !1822
  store i64 %sub.ptr.div, ptr %165, align 8, !dbg !1823
  %166 = load i32, ptr %err, align 4, !dbg !1824
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 8, ptr %pDefault) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoding) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 8, ptr %glyphsBase) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 4, ptr %numRows) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstRow) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 4, ptr %numCols) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstCol) #8, !dbg !1825
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsdata) #8, !dbg !1825
  ret i32 %166, !dbg !1826
}

; Function Attrs: nounwind uwtable
define internal i32 @_fs_get_metrics(ptr noundef %pFont, i64 noundef %count, ptr noundef %chars, i32 noundef %charEncoding, ptr noundef %glyphCount, ptr noundef %glyphs) #0 !dbg !1827 {
entry:
  %pFont.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %chars.addr = alloca ptr, align 8
  %charEncoding.addr = alloca i32, align 4
  %glyphCount.addr = alloca ptr, align 8
  %glyphs.addr = alloca ptr, align 8
  %fsdata = alloca ptr, align 8
  %firstCol = alloca i32, align 4
  %numCols = alloca i32, align 4
  %firstRow = alloca i32, align 4
  %numRows = alloca i32, align 4
  %glyphsBase = alloca ptr, align 8
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  %encoding = alloca ptr, align 8
  %pDefault = alloca ptr, align 8
  store ptr %pFont, ptr %pFont.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pFont.addr, metadata !1829, metadata !DIExpression()), !dbg !1845
  store i64 %count, ptr %count.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1830, metadata !DIExpression()), !dbg !1846
  store ptr %chars, ptr %chars.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %chars.addr, metadata !1831, metadata !DIExpression()), !dbg !1847
  store i32 %charEncoding, ptr %charEncoding.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %charEncoding.addr, metadata !1832, metadata !DIExpression()), !dbg !1848
  store ptr %glyphCount, ptr %glyphCount.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %glyphCount.addr, metadata !1833, metadata !DIExpression()), !dbg !1849
  store ptr %glyphs, ptr %glyphs.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %glyphs.addr, metadata !1834, metadata !DIExpression()), !dbg !1850
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsdata) #8, !dbg !1851
  tail call void @llvm.dbg.declare(metadata ptr %fsdata, metadata !1835, metadata !DIExpression()), !dbg !1852
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstCol) #8, !dbg !1853
  tail call void @llvm.dbg.declare(metadata ptr %firstCol, metadata !1836, metadata !DIExpression()), !dbg !1854
  call void @llvm.lifetime.start.p0(i64 4, ptr %numCols) #8, !dbg !1855
  tail call void @llvm.dbg.declare(metadata ptr %numCols, metadata !1837, metadata !DIExpression()), !dbg !1856
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstRow) #8, !dbg !1857
  tail call void @llvm.dbg.declare(metadata ptr %firstRow, metadata !1838, metadata !DIExpression()), !dbg !1858
  call void @llvm.lifetime.start.p0(i64 4, ptr %numRows) #8, !dbg !1859
  tail call void @llvm.dbg.declare(metadata ptr %numRows, metadata !1839, metadata !DIExpression()), !dbg !1860
  call void @llvm.lifetime.start.p0(i64 8, ptr %glyphsBase) #8, !dbg !1861
  tail call void @llvm.dbg.declare(metadata ptr %glyphsBase, metadata !1840, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #8, !dbg !1863
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1841, metadata !DIExpression()), !dbg !1864
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #8, !dbg !1865
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1842, metadata !DIExpression()), !dbg !1866
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoding) #8, !dbg !1867
  tail call void @llvm.dbg.declare(metadata ptr %encoding, metadata !1843, metadata !DIExpression()), !dbg !1868
  call void @llvm.lifetime.start.p0(i64 8, ptr %pDefault) #8, !dbg !1869
  tail call void @llvm.dbg.declare(metadata ptr %pDefault, metadata !1844, metadata !DIExpression()), !dbg !1870
  %0 = load ptr, ptr %pFont.addr, align 8, !dbg !1871
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %0, i32 0, i32 13, !dbg !1872
  %1 = load ptr, ptr %fontPrivate, align 8, !dbg !1872
  store ptr %1, ptr %fsdata, align 8, !dbg !1873
  %2 = load ptr, ptr %fsdata, align 8, !dbg !1874
  %inkMetrics = getelementptr inbounds %struct._fs_font, ptr %2, i32 0, i32 2, !dbg !1875
  %3 = load ptr, ptr %inkMetrics, align 8, !dbg !1875
  store ptr %3, ptr %encoding, align 8, !dbg !1876
  %4 = load ptr, ptr %fsdata, align 8, !dbg !1877
  %pDefault1 = getelementptr inbounds %struct._fs_font, ptr %4, i32 0, i32 0, !dbg !1878
  %5 = load ptr, ptr %pDefault1, align 8, !dbg !1878
  store ptr %5, ptr %pDefault, align 8, !dbg !1879
  %6 = load ptr, ptr %pDefault, align 8, !dbg !1880
  %tobool = icmp ne ptr %6, null, !dbg !1880
  br i1 %tobool, label %if.then, label %if.end, !dbg !1882

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %encoding, align 8, !dbg !1883
  %8 = load ptr, ptr %pDefault, align 8, !dbg !1884
  %9 = load ptr, ptr %fsdata, align 8, !dbg !1885
  %encoding2 = getelementptr inbounds %struct._fs_font, ptr %9, i32 0, i32 1, !dbg !1886
  %10 = load ptr, ptr %encoding2, align 8, !dbg !1886
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64, !dbg !1887
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64, !dbg !1887
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1887
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24, !dbg !1887
  %add.ptr = getelementptr inbounds %struct._CharInfo, ptr %7, i64 %sub.ptr.div, !dbg !1888
  store ptr %add.ptr, ptr %pDefault, align 8, !dbg !1889
  br label %if.end, !dbg !1890

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %pFont.addr, align 8, !dbg !1891
  %info = getelementptr inbounds %struct._Font, ptr %11, i32 0, i32 1, !dbg !1892
  %firstCol3 = getelementptr inbounds %struct._FontInfo, ptr %info, i32 0, i32 0, !dbg !1893
  %12 = load i16, ptr %firstCol3, align 8, !dbg !1893
  %conv = zext i16 %12 to i32, !dbg !1891
  store i32 %conv, ptr %firstCol, align 4, !dbg !1894
  %13 = load ptr, ptr %pFont.addr, align 8, !dbg !1895
  %info4 = getelementptr inbounds %struct._Font, ptr %13, i32 0, i32 1, !dbg !1896
  %lastCol = getelementptr inbounds %struct._FontInfo, ptr %info4, i32 0, i32 1, !dbg !1897
  %14 = load i16, ptr %lastCol, align 2, !dbg !1897
  %conv5 = zext i16 %14 to i32, !dbg !1895
  %15 = load i32, ptr %firstCol, align 4, !dbg !1898
  %sub = sub i32 %conv5, %15, !dbg !1899
  %add = add i32 %sub, 1, !dbg !1900
  store i32 %add, ptr %numCols, align 4, !dbg !1901
  %16 = load ptr, ptr %glyphs.addr, align 8, !dbg !1902
  store ptr %16, ptr %glyphsBase, align 8, !dbg !1903
  %17 = load i32, ptr %charEncoding.addr, align 4, !dbg !1904
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb46
    i32 3, label %sw.bb102
  ], !dbg !1905

sw.bb:                                            ; preds = %if.end, %if.end
  %18 = load ptr, ptr %pFont.addr, align 8, !dbg !1906
  %info6 = getelementptr inbounds %struct._Font, ptr %18, i32 0, i32 1, !dbg !1909
  %firstRow7 = getelementptr inbounds %struct._FontInfo, ptr %info6, i32 0, i32 2, !dbg !1910
  %19 = load i16, ptr %firstRow7, align 4, !dbg !1910
  %conv8 = zext i16 %19 to i32, !dbg !1906
  %cmp = icmp sgt i32 %conv8, 0, !dbg !1911
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !1912

if.then10:                                        ; preds = %sw.bb
  br label %sw.epilog, !dbg !1913

if.end11:                                         ; preds = %sw.bb
  %20 = load ptr, ptr %pFont.addr, align 8, !dbg !1914
  %info12 = getelementptr inbounds %struct._Font, ptr %20, i32 0, i32 1, !dbg !1916
  %allExist = getelementptr inbounds %struct._FontInfo, ptr %info12, i32 0, i32 5, !dbg !1917
  %bf.load = load i16, ptr %allExist, align 2, !dbg !1917
  %bf.lshr = lshr i16 %bf.load, 6, !dbg !1917
  %bf.clear = and i16 %bf.lshr, 1, !dbg !1917
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1917
  %tobool13 = icmp ne i32 %bf.cast, 0, !dbg !1914
  br i1 %tobool13, label %land.lhs.true, label %if.else25, !dbg !1918

land.lhs.true:                                    ; preds = %if.end11
  %21 = load ptr, ptr %pDefault, align 8, !dbg !1919
  %tobool14 = icmp ne ptr %21, null, !dbg !1919
  br i1 %tobool14, label %if.then15, label %if.else25, !dbg !1920

if.then15:                                        ; preds = %land.lhs.true
  br label %while.cond, !dbg !1921

while.cond:                                       ; preds = %if.end24, %if.then15
  %22 = load i64, ptr %count.addr, align 8, !dbg !1923
  %dec = add i64 %22, -1, !dbg !1923
  store i64 %dec, ptr %count.addr, align 8, !dbg !1923
  %tobool16 = icmp ne i64 %22, 0, !dbg !1921
  br i1 %tobool16, label %while.body, label %while.end, !dbg !1921

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %chars.addr, align 8, !dbg !1924
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 1, !dbg !1924
  store ptr %incdec.ptr, ptr %chars.addr, align 8, !dbg !1924
  %24 = load i8, ptr %23, align 1, !dbg !1926
  %conv17 = zext i8 %24 to i32, !dbg !1927
  %25 = load i32, ptr %firstCol, align 4, !dbg !1928
  %sub18 = sub i32 %conv17, %25, !dbg !1929
  store i32 %sub18, ptr %c, align 4, !dbg !1930
  %26 = load i32, ptr %c, align 4, !dbg !1931
  %27 = load i32, ptr %numCols, align 4, !dbg !1933
  %cmp19 = icmp ult i32 %26, %27, !dbg !1934
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !1935

if.then21:                                        ; preds = %while.body
  %28 = load ptr, ptr %encoding, align 8, !dbg !1936
  %29 = load i32, ptr %c, align 4, !dbg !1937
  %idxprom = zext i32 %29 to i64, !dbg !1936
  %arrayidx = getelementptr inbounds %struct._CharInfo, ptr %28, i64 %idxprom, !dbg !1936
  %30 = load ptr, ptr %glyphs.addr, align 8, !dbg !1938
  %incdec.ptr22 = getelementptr inbounds ptr, ptr %30, i32 1, !dbg !1938
  store ptr %incdec.ptr22, ptr %glyphs.addr, align 8, !dbg !1938
  store ptr %arrayidx, ptr %30, align 8, !dbg !1939
  br label %if.end24, !dbg !1940

if.else:                                          ; preds = %while.body
  %31 = load ptr, ptr %pDefault, align 8, !dbg !1941
  %32 = load ptr, ptr %glyphs.addr, align 8, !dbg !1942
  %incdec.ptr23 = getelementptr inbounds ptr, ptr %32, i32 1, !dbg !1942
  store ptr %incdec.ptr23, ptr %glyphs.addr, align 8, !dbg !1942
  store ptr %31, ptr %32, align 8, !dbg !1943
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  br label %while.cond, !dbg !1921, !llvm.loop !1944

while.end:                                        ; preds = %while.cond
  br label %if.end45, !dbg !1946

if.else25:                                        ; preds = %land.lhs.true, %if.end11
  br label %while.cond26, !dbg !1947

while.cond26:                                     ; preds = %if.end43, %if.else25
  %33 = load i64, ptr %count.addr, align 8, !dbg !1949
  %dec27 = add i64 %33, -1, !dbg !1949
  store i64 %dec27, ptr %count.addr, align 8, !dbg !1949
  %tobool28 = icmp ne i64 %33, 0, !dbg !1947
  br i1 %tobool28, label %while.body29, label %while.end44, !dbg !1947

while.body29:                                     ; preds = %while.cond26
  %34 = load ptr, ptr %chars.addr, align 8, !dbg !1950
  %incdec.ptr30 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !1950
  store ptr %incdec.ptr30, ptr %chars.addr, align 8, !dbg !1950
  %35 = load i8, ptr %34, align 1, !dbg !1952
  %conv31 = zext i8 %35 to i32, !dbg !1953
  %36 = load i32, ptr %firstCol, align 4, !dbg !1954
  %sub32 = sub i32 %conv31, %36, !dbg !1955
  store i32 %sub32, ptr %c, align 4, !dbg !1956
  %37 = load i32, ptr %c, align 4, !dbg !1957
  %38 = load i32, ptr %numCols, align 4, !dbg !1959
  %cmp33 = icmp ult i32 %37, %38, !dbg !1960
  br i1 %cmp33, label %if.then35, label %if.else38, !dbg !1961

if.then35:                                        ; preds = %while.body29
  %39 = load ptr, ptr %encoding, align 8, !dbg !1962
  %40 = load i32, ptr %c, align 4, !dbg !1963
  %idx.ext = zext i32 %40 to i64, !dbg !1964
  %add.ptr36 = getelementptr inbounds %struct._CharInfo, ptr %39, i64 %idx.ext, !dbg !1964
  %41 = load ptr, ptr %glyphs.addr, align 8, !dbg !1965
  %incdec.ptr37 = getelementptr inbounds ptr, ptr %41, i32 1, !dbg !1965
  store ptr %incdec.ptr37, ptr %glyphs.addr, align 8, !dbg !1965
  store ptr %add.ptr36, ptr %41, align 8, !dbg !1966
  br label %if.end43, !dbg !1967

if.else38:                                        ; preds = %while.body29
  %42 = load ptr, ptr %pDefault, align 8, !dbg !1968
  %tobool39 = icmp ne ptr %42, null, !dbg !1968
  br i1 %tobool39, label %if.then40, label %if.end42, !dbg !1970

if.then40:                                        ; preds = %if.else38
  %43 = load ptr, ptr %pDefault, align 8, !dbg !1971
  %44 = load ptr, ptr %glyphs.addr, align 8, !dbg !1972
  %incdec.ptr41 = getelementptr inbounds ptr, ptr %44, i32 1, !dbg !1972
  store ptr %incdec.ptr41, ptr %glyphs.addr, align 8, !dbg !1972
  store ptr %43, ptr %44, align 8, !dbg !1973
  br label %if.end42, !dbg !1974

if.end42:                                         ; preds = %if.then40, %if.else38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then35
  br label %while.cond26, !dbg !1947, !llvm.loop !1975

while.end44:                                      ; preds = %while.cond26
  br label %if.end45

if.end45:                                         ; preds = %while.end44, %while.end
  br label %sw.epilog, !dbg !1977

sw.bb46:                                          ; preds = %if.end
  %45 = load ptr, ptr %pFont.addr, align 8, !dbg !1978
  %info47 = getelementptr inbounds %struct._Font, ptr %45, i32 0, i32 1, !dbg !1980
  %allExist48 = getelementptr inbounds %struct._FontInfo, ptr %info47, i32 0, i32 5, !dbg !1981
  %bf.load49 = load i16, ptr %allExist48, align 2, !dbg !1981
  %bf.lshr50 = lshr i16 %bf.load49, 6, !dbg !1981
  %bf.clear51 = and i16 %bf.lshr50, 1, !dbg !1981
  %bf.cast52 = zext i16 %bf.clear51 to i32, !dbg !1981
  %tobool53 = icmp ne i32 %bf.cast52, 0, !dbg !1978
  br i1 %tobool53, label %land.lhs.true54, label %if.else76, !dbg !1982

land.lhs.true54:                                  ; preds = %sw.bb46
  %46 = load ptr, ptr %pDefault, align 8, !dbg !1983
  %tobool55 = icmp ne ptr %46, null, !dbg !1983
  br i1 %tobool55, label %if.then56, label %if.else76, !dbg !1984

if.then56:                                        ; preds = %land.lhs.true54
  br label %while.cond57, !dbg !1985

while.cond57:                                     ; preds = %if.end74, %if.then56
  %47 = load i64, ptr %count.addr, align 8, !dbg !1987
  %dec58 = add i64 %47, -1, !dbg !1987
  store i64 %dec58, ptr %count.addr, align 8, !dbg !1987
  %tobool59 = icmp ne i64 %47, 0, !dbg !1985
  br i1 %tobool59, label %while.body60, label %while.end75, !dbg !1985

while.body60:                                     ; preds = %while.cond57
  %48 = load ptr, ptr %chars.addr, align 8, !dbg !1988
  %incdec.ptr61 = getelementptr inbounds i8, ptr %48, i32 1, !dbg !1988
  store ptr %incdec.ptr61, ptr %chars.addr, align 8, !dbg !1988
  %49 = load i8, ptr %48, align 1, !dbg !1990
  %conv62 = zext i8 %49 to i32, !dbg !1990
  %shl = shl i32 %conv62, 8, !dbg !1991
  store i32 %shl, ptr %c, align 4, !dbg !1992
  %50 = load i32, ptr %c, align 4, !dbg !1993
  %51 = load ptr, ptr %chars.addr, align 8, !dbg !1994
  %incdec.ptr63 = getelementptr inbounds i8, ptr %51, i32 1, !dbg !1994
  store ptr %incdec.ptr63, ptr %chars.addr, align 8, !dbg !1994
  %52 = load i8, ptr %51, align 1, !dbg !1995
  %conv64 = zext i8 %52 to i32, !dbg !1995
  %or = or i32 %50, %conv64, !dbg !1996
  %53 = load i32, ptr %firstCol, align 4, !dbg !1997
  %sub65 = sub i32 %or, %53, !dbg !1998
  store i32 %sub65, ptr %c, align 4, !dbg !1999
  %54 = load i32, ptr %c, align 4, !dbg !2000
  %55 = load i32, ptr %numCols, align 4, !dbg !2002
  %cmp66 = icmp ult i32 %54, %55, !dbg !2003
  br i1 %cmp66, label %if.then68, label %if.else72, !dbg !2004

if.then68:                                        ; preds = %while.body60
  %56 = load ptr, ptr %encoding, align 8, !dbg !2005
  %57 = load i32, ptr %c, align 4, !dbg !2006
  %idx.ext69 = zext i32 %57 to i64, !dbg !2007
  %add.ptr70 = getelementptr inbounds %struct._CharInfo, ptr %56, i64 %idx.ext69, !dbg !2007
  %58 = load ptr, ptr %glyphs.addr, align 8, !dbg !2008
  %incdec.ptr71 = getelementptr inbounds ptr, ptr %58, i32 1, !dbg !2008
  store ptr %incdec.ptr71, ptr %glyphs.addr, align 8, !dbg !2008
  store ptr %add.ptr70, ptr %58, align 8, !dbg !2009
  br label %if.end74, !dbg !2010

if.else72:                                        ; preds = %while.body60
  %59 = load ptr, ptr %pDefault, align 8, !dbg !2011
  %60 = load ptr, ptr %glyphs.addr, align 8, !dbg !2012
  %incdec.ptr73 = getelementptr inbounds ptr, ptr %60, i32 1, !dbg !2012
  store ptr %incdec.ptr73, ptr %glyphs.addr, align 8, !dbg !2012
  store ptr %59, ptr %60, align 8, !dbg !2013
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %if.then68
  br label %while.cond57, !dbg !1985, !llvm.loop !2014

while.end75:                                      ; preds = %while.cond57
  br label %if.end101, !dbg !2016

if.else76:                                        ; preds = %land.lhs.true54, %sw.bb46
  br label %while.cond77, !dbg !2017

while.cond77:                                     ; preds = %if.end99, %if.else76
  %61 = load i64, ptr %count.addr, align 8, !dbg !2019
  %dec78 = add i64 %61, -1, !dbg !2019
  store i64 %dec78, ptr %count.addr, align 8, !dbg !2019
  %tobool79 = icmp ne i64 %61, 0, !dbg !2017
  br i1 %tobool79, label %while.body80, label %while.end100, !dbg !2017

while.body80:                                     ; preds = %while.cond77
  %62 = load ptr, ptr %chars.addr, align 8, !dbg !2020
  %incdec.ptr81 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !2020
  store ptr %incdec.ptr81, ptr %chars.addr, align 8, !dbg !2020
  %63 = load i8, ptr %62, align 1, !dbg !2022
  %conv82 = zext i8 %63 to i32, !dbg !2022
  %shl83 = shl i32 %conv82, 8, !dbg !2023
  store i32 %shl83, ptr %c, align 4, !dbg !2024
  %64 = load i32, ptr %c, align 4, !dbg !2025
  %65 = load ptr, ptr %chars.addr, align 8, !dbg !2026
  %incdec.ptr84 = getelementptr inbounds i8, ptr %65, i32 1, !dbg !2026
  store ptr %incdec.ptr84, ptr %chars.addr, align 8, !dbg !2026
  %66 = load i8, ptr %65, align 1, !dbg !2027
  %conv85 = zext i8 %66 to i32, !dbg !2027
  %or86 = or i32 %64, %conv85, !dbg !2028
  %67 = load i32, ptr %firstCol, align 4, !dbg !2029
  %sub87 = sub i32 %or86, %67, !dbg !2030
  store i32 %sub87, ptr %c, align 4, !dbg !2031
  %68 = load i32, ptr %c, align 4, !dbg !2032
  %69 = load i32, ptr %numCols, align 4, !dbg !2034
  %cmp88 = icmp ult i32 %68, %69, !dbg !2035
  br i1 %cmp88, label %if.then90, label %if.else94, !dbg !2036

if.then90:                                        ; preds = %while.body80
  %70 = load ptr, ptr %encoding, align 8, !dbg !2037
  %71 = load i32, ptr %c, align 4, !dbg !2038
  %idx.ext91 = zext i32 %71 to i64, !dbg !2039
  %add.ptr92 = getelementptr inbounds %struct._CharInfo, ptr %70, i64 %idx.ext91, !dbg !2039
  %72 = load ptr, ptr %glyphs.addr, align 8, !dbg !2040
  %incdec.ptr93 = getelementptr inbounds ptr, ptr %72, i32 1, !dbg !2040
  store ptr %incdec.ptr93, ptr %glyphs.addr, align 8, !dbg !2040
  store ptr %add.ptr92, ptr %72, align 8, !dbg !2041
  br label %if.end99, !dbg !2042

if.else94:                                        ; preds = %while.body80
  %73 = load ptr, ptr %pDefault, align 8, !dbg !2043
  %tobool95 = icmp ne ptr %73, null, !dbg !2043
  br i1 %tobool95, label %if.then96, label %if.end98, !dbg !2045

if.then96:                                        ; preds = %if.else94
  %74 = load ptr, ptr %pDefault, align 8, !dbg !2046
  %75 = load ptr, ptr %glyphs.addr, align 8, !dbg !2047
  %incdec.ptr97 = getelementptr inbounds ptr, ptr %75, i32 1, !dbg !2047
  store ptr %incdec.ptr97, ptr %glyphs.addr, align 8, !dbg !2047
  store ptr %74, ptr %75, align 8, !dbg !2048
  br label %if.end98, !dbg !2049

if.end98:                                         ; preds = %if.then96, %if.else94
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then90
  br label %while.cond77, !dbg !2017, !llvm.loop !2050

while.end100:                                     ; preds = %while.cond77
  br label %if.end101

if.end101:                                        ; preds = %while.end100, %while.end75
  br label %sw.epilog, !dbg !2052

sw.bb102:                                         ; preds = %if.end
  %76 = load ptr, ptr %pFont.addr, align 8, !dbg !2053
  %info103 = getelementptr inbounds %struct._Font, ptr %76, i32 0, i32 1, !dbg !2054
  %firstRow104 = getelementptr inbounds %struct._FontInfo, ptr %info103, i32 0, i32 2, !dbg !2055
  %77 = load i16, ptr %firstRow104, align 4, !dbg !2055
  %conv105 = zext i16 %77 to i32, !dbg !2053
  store i32 %conv105, ptr %firstRow, align 4, !dbg !2056
  %78 = load ptr, ptr %pFont.addr, align 8, !dbg !2057
  %info106 = getelementptr inbounds %struct._Font, ptr %78, i32 0, i32 1, !dbg !2058
  %lastRow = getelementptr inbounds %struct._FontInfo, ptr %info106, i32 0, i32 3, !dbg !2059
  %79 = load i16, ptr %lastRow, align 2, !dbg !2059
  %conv107 = zext i16 %79 to i32, !dbg !2057
  %80 = load i32, ptr %firstRow, align 4, !dbg !2060
  %sub108 = sub i32 %conv107, %80, !dbg !2061
  %add109 = add i32 %sub108, 1, !dbg !2062
  store i32 %add109, ptr %numRows, align 4, !dbg !2063
  br label %while.cond110, !dbg !2064

while.cond110:                                    ; preds = %if.end135, %sw.bb102
  %81 = load i64, ptr %count.addr, align 8, !dbg !2065
  %dec111 = add i64 %81, -1, !dbg !2065
  store i64 %dec111, ptr %count.addr, align 8, !dbg !2065
  %tobool112 = icmp ne i64 %81, 0, !dbg !2064
  br i1 %tobool112, label %while.body113, label %while.end136, !dbg !2064

while.body113:                                    ; preds = %while.cond110
  %82 = load ptr, ptr %chars.addr, align 8, !dbg !2066
  %incdec.ptr114 = getelementptr inbounds i8, ptr %82, i32 1, !dbg !2066
  store ptr %incdec.ptr114, ptr %chars.addr, align 8, !dbg !2066
  %83 = load i8, ptr %82, align 1, !dbg !2068
  %conv115 = zext i8 %83 to i32, !dbg !2069
  %84 = load i32, ptr %firstRow, align 4, !dbg !2070
  %sub116 = sub i32 %conv115, %84, !dbg !2071
  store i32 %sub116, ptr %r, align 4, !dbg !2072
  %85 = load ptr, ptr %chars.addr, align 8, !dbg !2073
  %incdec.ptr117 = getelementptr inbounds i8, ptr %85, i32 1, !dbg !2073
  store ptr %incdec.ptr117, ptr %chars.addr, align 8, !dbg !2073
  %86 = load i8, ptr %85, align 1, !dbg !2074
  %conv118 = zext i8 %86 to i32, !dbg !2075
  %87 = load i32, ptr %firstCol, align 4, !dbg !2076
  %sub119 = sub i32 %conv118, %87, !dbg !2077
  store i32 %sub119, ptr %c, align 4, !dbg !2078
  %88 = load i32, ptr %r, align 4, !dbg !2079
  %89 = load i32, ptr %numRows, align 4, !dbg !2081
  %cmp120 = icmp ult i32 %88, %89, !dbg !2082
  br i1 %cmp120, label %land.lhs.true122, label %if.else130, !dbg !2083

land.lhs.true122:                                 ; preds = %while.body113
  %90 = load i32, ptr %c, align 4, !dbg !2084
  %91 = load i32, ptr %numCols, align 4, !dbg !2085
  %cmp123 = icmp ult i32 %90, %91, !dbg !2086
  br i1 %cmp123, label %if.then125, label %if.else130, !dbg !2087

if.then125:                                       ; preds = %land.lhs.true122
  %92 = load ptr, ptr %encoding, align 8, !dbg !2088
  %93 = load i32, ptr %r, align 4, !dbg !2089
  %94 = load i32, ptr %numCols, align 4, !dbg !2090
  %mul = mul i32 %93, %94, !dbg !2091
  %95 = load i32, ptr %c, align 4, !dbg !2092
  %add126 = add i32 %mul, %95, !dbg !2093
  %idx.ext127 = zext i32 %add126 to i64, !dbg !2094
  %add.ptr128 = getelementptr inbounds %struct._CharInfo, ptr %92, i64 %idx.ext127, !dbg !2094
  %96 = load ptr, ptr %glyphs.addr, align 8, !dbg !2095
  %incdec.ptr129 = getelementptr inbounds ptr, ptr %96, i32 1, !dbg !2095
  store ptr %incdec.ptr129, ptr %glyphs.addr, align 8, !dbg !2095
  store ptr %add.ptr128, ptr %96, align 8, !dbg !2096
  br label %if.end135, !dbg !2097

if.else130:                                       ; preds = %land.lhs.true122, %while.body113
  %97 = load ptr, ptr %pDefault, align 8, !dbg !2098
  %tobool131 = icmp ne ptr %97, null, !dbg !2098
  br i1 %tobool131, label %if.then132, label %if.end134, !dbg !2100

if.then132:                                       ; preds = %if.else130
  %98 = load ptr, ptr %pDefault, align 8, !dbg !2101
  %99 = load ptr, ptr %glyphs.addr, align 8, !dbg !2102
  %incdec.ptr133 = getelementptr inbounds ptr, ptr %99, i32 1, !dbg !2102
  store ptr %incdec.ptr133, ptr %glyphs.addr, align 8, !dbg !2102
  store ptr %98, ptr %99, align 8, !dbg !2103
  br label %if.end134, !dbg !2104

if.end134:                                        ; preds = %if.then132, %if.else130
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then125
  br label %while.cond110, !dbg !2064, !llvm.loop !2105

while.end136:                                     ; preds = %while.cond110
  br label %sw.epilog, !dbg !2107

sw.epilog:                                        ; preds = %if.end, %while.end136, %if.end101, %if.end45, %if.then10
  %100 = load ptr, ptr %glyphs.addr, align 8, !dbg !2108
  %101 = load ptr, ptr %glyphsBase, align 8, !dbg !2109
  %sub.ptr.lhs.cast137 = ptrtoint ptr %100 to i64, !dbg !2110
  %sub.ptr.rhs.cast138 = ptrtoint ptr %101 to i64, !dbg !2110
  %sub.ptr.sub139 = sub i64 %sub.ptr.lhs.cast137, %sub.ptr.rhs.cast138, !dbg !2110
  %sub.ptr.div140 = sdiv exact i64 %sub.ptr.sub139, 8, !dbg !2110
  %102 = load ptr, ptr %glyphCount.addr, align 8, !dbg !2111
  store i64 %sub.ptr.div140, ptr %102, align 8, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 8, ptr %pDefault) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoding) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 8, ptr %glyphsBase) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr %numRows) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstRow) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr %numCols) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstCol) #8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsdata) #8, !dbg !2113
  ret i32 85, !dbg !2114
}

; Function Attrs: nounwind uwtable
define internal void @_fs_unload_font(ptr noundef %pfont) #0 !dbg !2115 {
entry:
  %pfont.addr = alloca ptr, align 8
  %fsdata = alloca ptr, align 8
  %fsd = alloca ptr, align 8
  %encoding = alloca ptr, align 8
  %glyphs = alloca ptr, align 8
  store ptr %pfont, ptr %pfont.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pfont.addr, metadata !2117, metadata !DIExpression()), !dbg !2122
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsdata) #8, !dbg !2123
  tail call void @llvm.dbg.declare(metadata ptr %fsdata, metadata !2118, metadata !DIExpression()), !dbg !2124
  %0 = load ptr, ptr %pfont.addr, align 8, !dbg !2125
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %0, i32 0, i32 13, !dbg !2126
  %1 = load ptr, ptr %fontPrivate, align 8, !dbg !2126
  store ptr %1, ptr %fsdata, align 8, !dbg !2124
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsd) #8, !dbg !2127
  tail call void @llvm.dbg.declare(metadata ptr %fsd, metadata !2119, metadata !DIExpression()), !dbg !2128
  %2 = load ptr, ptr %pfont.addr, align 8, !dbg !2129
  %fpePrivate = getelementptr inbounds %struct._Font, ptr %2, i32 0, i32 14, !dbg !2130
  %3 = load ptr, ptr %fpePrivate, align 8, !dbg !2130
  store ptr %3, ptr %fsd, align 8, !dbg !2128
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoding) #8, !dbg !2131
  tail call void @llvm.dbg.declare(metadata ptr %encoding, metadata !2120, metadata !DIExpression()), !dbg !2132
  %4 = load ptr, ptr %fsdata, align 8, !dbg !2133
  %encoding1 = getelementptr inbounds %struct._fs_font, ptr %4, i32 0, i32 1, !dbg !2134
  %5 = load ptr, ptr %encoding1, align 8, !dbg !2134
  store ptr %5, ptr %encoding, align 8, !dbg !2132
  call void @llvm.lifetime.start.p0(i64 8, ptr %glyphs) #8, !dbg !2135
  tail call void @llvm.dbg.declare(metadata ptr %glyphs, metadata !2121, metadata !DIExpression()), !dbg !2136
  %6 = load ptr, ptr %encoding, align 8, !dbg !2137
  %tobool = icmp ne ptr %6, null, !dbg !2137
  br i1 %tobool, label %if.then, label %if.end, !dbg !2139

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %encoding, align 8, !dbg !2140
  call void @free(ptr noundef %7) #8, !dbg !2141
  br label %if.end, !dbg !2141

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !2142

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load ptr, ptr %fsdata, align 8, !dbg !2143
  %glyphs2 = getelementptr inbounds %struct._fs_font, ptr %8, i32 0, i32 3, !dbg !2144
  %9 = load ptr, ptr %glyphs2, align 8, !dbg !2144
  store ptr %9, ptr %glyphs, align 8, !dbg !2145
  %tobool3 = icmp ne ptr %9, null, !dbg !2142
  br i1 %tobool3, label %while.body, label %while.end, !dbg !2142

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %glyphs, align 8, !dbg !2146
  %next = getelementptr inbounds %struct._fs_glyph, ptr %10, i32 0, i32 0, !dbg !2148
  %11 = load ptr, ptr %next, align 8, !dbg !2148
  %12 = load ptr, ptr %fsdata, align 8, !dbg !2149
  %glyphs4 = getelementptr inbounds %struct._fs_font, ptr %12, i32 0, i32 3, !dbg !2150
  store ptr %11, ptr %glyphs4, align 8, !dbg !2151
  %13 = load ptr, ptr %glyphs, align 8, !dbg !2152
  call void @free(ptr noundef %13) #8, !dbg !2153
  br label %while.cond, !dbg !2142, !llvm.loop !2154

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %fsd, align 8, !dbg !2156
  %fontid = getelementptr inbounds %struct._fs_font_data, ptr %14, i32 0, i32 0, !dbg !2158
  %15 = load i64, ptr %fontid, align 8, !dbg !2158
  %call = call ptr @find_old_font(i64 noundef %15), !dbg !2159
  %tobool5 = icmp ne ptr %call, null, !dbg !2159
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2160

if.then6:                                         ; preds = %while.end
  %16 = load ptr, ptr %fsd, align 8, !dbg !2161
  %fontid7 = getelementptr inbounds %struct._fs_font_data, ptr %16, i32 0, i32 0, !dbg !2162
  %17 = load i64, ptr %fontid7, align 8, !dbg !2162
  call void @DeleteFontClientID(i64 noundef %17), !dbg !2163
  br label %if.end8, !dbg !2163

if.end8:                                          ; preds = %if.then6, %while.end
  %18 = load ptr, ptr %pfont.addr, align 8, !dbg !2164
  %info = getelementptr inbounds %struct._Font, ptr %18, i32 0, i32 1, !dbg !2165
  call void @_fs_free_props(ptr noundef %info), !dbg !2166
  %19 = load ptr, ptr %fsdata, align 8, !dbg !2167
  call void @free(ptr noundef %19) #8, !dbg !2168
  %20 = load ptr, ptr %pfont.addr, align 8, !dbg !2169
  call void @DestroyFontRec(ptr noundef %20), !dbg !2170
  call void @llvm.lifetime.end.p0(i64 8, ptr %glyphs) #8, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoding) #8, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsd) #8, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsdata) #8, !dbg !2171
  ret void, !dbg !2171
}

declare !dbg !2172 i64 @GetNewFontClientID() #2

declare !dbg !2176 i32 @StoreFontClientFont(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @fs_alloc_glyphs(ptr noundef %pFont, i32 noundef %size) #0 !dbg !2179 {
entry:
  %retval = alloca ptr, align 8
  %pFont.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %glyphs = alloca ptr, align 8
  %fsfont = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pFont, ptr %pFont.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pFont.addr, metadata !2183, metadata !DIExpression()), !dbg !2187
  store i32 %size, ptr %size.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2184, metadata !DIExpression()), !dbg !2188
  call void @llvm.lifetime.start.p0(i64 8, ptr %glyphs) #8, !dbg !2189
  tail call void @llvm.dbg.declare(metadata ptr %glyphs, metadata !2185, metadata !DIExpression()), !dbg !2190
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsfont) #8, !dbg !2191
  tail call void @llvm.dbg.declare(metadata ptr %fsfont, metadata !2186, metadata !DIExpression()), !dbg !2192
  %0 = load ptr, ptr %pFont.addr, align 8, !dbg !2193
  %fontPrivate = getelementptr inbounds %struct._Font, ptr %0, i32 0, i32 13, !dbg !2194
  %1 = load ptr, ptr %fontPrivate, align 8, !dbg !2194
  store ptr %1, ptr %fsfont, align 8, !dbg !2192
  %2 = load i32, ptr %size.addr, align 4, !dbg !2195
  %conv = sext i32 %2 to i64, !dbg !2195
  %cmp = icmp ult i64 %conv, 2147483639, !dbg !2197
  br i1 %cmp, label %if.then, label %if.else, !dbg !2198

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %size.addr, align 4, !dbg !2199
  %conv2 = sext i32 %3 to i64, !dbg !2199
  %add = add i64 8, %conv2, !dbg !2200
  %call = call noalias ptr @malloc(i64 noundef %add) #9, !dbg !2201
  store ptr %call, ptr %glyphs, align 8, !dbg !2202
  br label %if.end, !dbg !2203

if.else:                                          ; preds = %entry
  store ptr null, ptr %glyphs, align 8, !dbg !2204
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %glyphs, align 8, !dbg !2205
  %cmp3 = icmp eq ptr %4, null, !dbg !2207
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !2208

if.then5:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2209

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %fsfont, align 8, !dbg !2210
  %glyphs7 = getelementptr inbounds %struct._fs_font, ptr %5, i32 0, i32 3, !dbg !2211
  %6 = load ptr, ptr %glyphs7, align 8, !dbg !2211
  %7 = load ptr, ptr %glyphs, align 8, !dbg !2212
  %next = getelementptr inbounds %struct._fs_glyph, ptr %7, i32 0, i32 0, !dbg !2213
  store ptr %6, ptr %next, align 8, !dbg !2214
  %8 = load ptr, ptr %glyphs, align 8, !dbg !2215
  %9 = load ptr, ptr %fsfont, align 8, !dbg !2216
  %glyphs8 = getelementptr inbounds %struct._fs_font, ptr %9, i32 0, i32 3, !dbg !2217
  store ptr %8, ptr %glyphs8, align 8, !dbg !2218
  %10 = load ptr, ptr %glyphs, align 8, !dbg !2219
  %add.ptr = getelementptr inbounds %struct._fs_glyph, ptr %10, i64 1, !dbg !2220
  store ptr %add.ptr, ptr %retval, align 8, !dbg !2221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2221

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsfont) #8, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %glyphs) #8, !dbg !2222
  %11 = load ptr, ptr %retval, align 8, !dbg !2222
  ret ptr %11, !dbg !2222
}

declare !dbg !2223 i32 @fs_load_all_glyphs(ptr noundef) #2

declare !dbg !2226 ptr @find_old_font(i64 noundef) #2

declare !dbg !2229 void @DeleteFontClientID(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fsconvert.c", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build/aidengro/spack-stage-libxfont-1.5.4-scvwheodi5y5phavsi67myzr3xykgcgd/spack-src/src/fc", checksumkind: CSK_MD5, checksum: "b183d9b110e3561d2f01bd6f4b6775ef")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 162, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/font.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "a41ff5d042660dc9657472c9cc981807")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "Linear8Bit", value: 0)
!8 = !DIEnumerator(name: "TwoD8Bit", value: 1)
!9 = !DIEnumerator(name: "Linear16Bit", value: 2)
!10 = !DIEnumerator(name: "TwoD16Bit", value: 3)
!11 = !{!12, !14, !17, !36, !70, !72, !74, !75}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !15, line: 98, baseType: !16)
!15 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/Xmd.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "6659907b96ce8071adc5e93d9bbce63a")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSFontDataPtr", file: !18, line: 60, baseType: !19)
!18 = !DIFile(filename: "./fserve.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build/aidengro/spack-stage-libxfont-1.5.4-scvwheodi5y5phavsi67myzr3xykgcgd/spack-src/src/fc", checksumkind: CSK_MD5, checksum: "ebab7dc8e03d8fbce658e0d7c2dba896")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_font_data", file: !21, line: 51, size: 384, elements: !22)
!21 = !DIFile(filename: "./fservestr.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build/aidengro/spack-stage-libxfont-1.5.4-scvwheodi5y5phavsi67myzr3xykgcgd/spack-src/src/fc", checksumkind: CSK_MD5, checksum: "884f2a5b7ac528c6c100827341dfbd57")
!22 = !{!23, !25, !26, !28, !29, !30, !34}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fontid", scope: !20, file: !21, line: 52, baseType: !24, size: 64)
!24 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !20, file: !21, line: 53, baseType: !16, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "glyphs_to_get", scope: !20, file: !21, line: 54, baseType: !27, size: 64, offset: 128)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !20, file: !21, line: 57, baseType: !16, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !20, file: !21, line: 58, baseType: !12, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !20, file: !21, line: 59, baseType: !31, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsBitmapFormat", file: !32, line: 94, baseType: !33)
!32 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/fsmasks.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "4bfc20aced0cbacb54e9d5fba7414335")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "CARD32", file: !15, line: 108, baseType: !5)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fmask", scope: !20, file: !21, line: 60, baseType: !35, size: 32, offset: 352)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsBitmapFormatMask", file: !32, line: 95, baseType: !33)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSFontPtr", file: !21, line: 48, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_font", file: !21, line: 43, size: 256, elements: !39)
!39 = !{!40, !62, !63, !64}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pDefault", scope: !38, file: !21, line: 44, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "CharInfoPtr", file: !4, line: 43, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CharInfo", file: !44, line: 63, size: 192, elements: !45)
!44 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/fontstruct.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "83a2b2a763f7c1e423b85aece6a41bc2")
!45 = !{!46, !61}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !43, file: !44, line: 64, baseType: !47, size: 96)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xCharInfo", file: !48, line: 385, baseType: !49)
!48 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/Xproto.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "9480d28dfcb38412fb2746e48b2eb919")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 378, size: 96, elements: !50)
!50 = !{!51, !54, !55, !56, !57, !58}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "leftSideBearing", scope: !49, file: !48, line: 379, baseType: !52, size: 16)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !15, line: 102, baseType: !53)
!53 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "rightSideBearing", scope: !49, file: !48, line: 380, baseType: !52, size: 16, offset: 16)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "characterWidth", scope: !49, file: !48, line: 381, baseType: !52, size: 16, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ascent", scope: !49, file: !48, line: 382, baseType: !52, size: 16, offset: 48)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descent", scope: !49, file: !48, line: 383, baseType: !52, size: 16, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !49, file: !48, line: 384, baseType: !59, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "CARD16", file: !15, line: 113, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !43, file: !44, line: 65, baseType: !12, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !38, file: !21, line: 45, baseType: !41, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "inkMetrics", scope: !38, file: !21, line: 46, baseType: !41, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "glyphs", scope: !38, file: !21, line: 47, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSGlyphPtr", file: !21, line: 41, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_glyph", file: !21, line: 39, size: 64, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !67, file: !21, line: 40, baseType: !66, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", file: !73, line: 53, baseType: !74)
!73 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/Xdefs.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "3cf4f3a89c166d4994924d34661b81e6")
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{i32 8, !"PIC Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!82 = distinct !DISubprogram(name: "_fs_convert_char_info", scope: !1, file: !1, line: 50, type: !83, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !75}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsXCharInfo", file: !87, line: 144, baseType: !88)
!87 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/FSproto.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "0bc3d09c523e7c259901b4e39f1aa167")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 137, size: 96, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !88, file: !87, line: 138, baseType: !52, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !88, file: !87, line: 139, baseType: !52, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !88, file: !87, line: 140, baseType: !52, size: 16, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ascent", scope: !88, file: !87, line: 141, baseType: !52, size: 16, offset: 48)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descent", scope: !88, file: !87, line: 142, baseType: !52, size: 16, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !88, file: !87, line: 143, baseType: !59, size: 16, offset: 80)
!96 = !{!97, !98}
!97 = !DILocalVariable(name: "src", arg: 1, scope: !82, file: !1, line: 50, type: !85)
!98 = !DILocalVariable(name: "dst", arg: 2, scope: !82, file: !1, line: 50, type: !75)
!99 = !DILocation(line: 50, column: 36, scope: !82)
!100 = !DILocation(line: 50, column: 52, scope: !82)
!101 = !DILocation(line: 52, column: 19, scope: !82)
!102 = !DILocation(line: 52, column: 24, scope: !82)
!103 = !DILocation(line: 52, column: 5, scope: !82)
!104 = !DILocation(line: 52, column: 10, scope: !82)
!105 = !DILocation(line: 52, column: 17, scope: !82)
!106 = !DILocation(line: 53, column: 20, scope: !82)
!107 = !DILocation(line: 53, column: 25, scope: !82)
!108 = !DILocation(line: 53, column: 5, scope: !82)
!109 = !DILocation(line: 53, column: 10, scope: !82)
!110 = !DILocation(line: 53, column: 18, scope: !82)
!111 = !DILocation(line: 54, column: 28, scope: !82)
!112 = !DILocation(line: 54, column: 33, scope: !82)
!113 = !DILocation(line: 54, column: 5, scope: !82)
!114 = !DILocation(line: 54, column: 10, scope: !82)
!115 = !DILocation(line: 54, column: 26, scope: !82)
!116 = !DILocation(line: 55, column: 29, scope: !82)
!117 = !DILocation(line: 55, column: 34, scope: !82)
!118 = !DILocation(line: 55, column: 5, scope: !82)
!119 = !DILocation(line: 55, column: 10, scope: !82)
!120 = !DILocation(line: 55, column: 27, scope: !82)
!121 = !DILocation(line: 56, column: 27, scope: !82)
!122 = !DILocation(line: 56, column: 32, scope: !82)
!123 = !DILocation(line: 56, column: 5, scope: !82)
!124 = !DILocation(line: 56, column: 10, scope: !82)
!125 = !DILocation(line: 56, column: 25, scope: !82)
!126 = !DILocation(line: 57, column: 23, scope: !82)
!127 = !DILocation(line: 57, column: 28, scope: !82)
!128 = !DILocation(line: 57, column: 5, scope: !82)
!129 = !DILocation(line: 57, column: 10, scope: !82)
!130 = !DILocation(line: 57, column: 21, scope: !82)
!131 = !DILocation(line: 58, column: 1, scope: !82)
!132 = distinct !DISubprogram(name: "_fs_init_fontinfo", scope: !1, file: !1, line: 61, type: !133, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !201}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSFpePtr", file: !18, line: 67, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_fpe_data", file: !138, line: 82, size: 1536, elements: !139)
!138 = !DIFile(filename: "./fsio.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build/aidengro/spack-stage-libxfont-1.5.4-scvwheodi5y5phavsi67myzr3xykgcgd/spack-src/src/fc", checksumkind: CSK_MD5, checksum: "f554a262995d0e7cd40a3b530d4cabcc")
!139 = !{!140, !141, !142, !143, !144, !145, !147, !148, !149, !150, !151, !158, !169, !170, !178, !179, !180, !181, !182, !183, !184, !185, !197}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !138, line: 83, baseType: !135, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fs_fd", scope: !137, file: !138, line: 84, baseType: !16, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "fs_conn_state", scope: !137, file: !138, line: 85, baseType: !16, size: 32, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "current_seq", scope: !137, file: !138, line: 86, baseType: !16, size: 32, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "servername", scope: !137, file: !138, line: 87, baseType: !12, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "has_catalogues", scope: !137, file: !138, line: 88, baseType: !146, size: 32, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !73, line: 47, baseType: !16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !137, file: !138, line: 90, baseType: !16, size: 32, offset: 288)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "numAlts", scope: !137, file: !138, line: 91, baseType: !16, size: 32, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "alternate", scope: !137, file: !138, line: 92, baseType: !16, size: 32, offset: 352)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fsMajorVersion", scope: !137, file: !138, line: 93, baseType: !16, size: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "alts", scope: !137, file: !138, line: 94, baseType: !152, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSFpeAltPtr", file: !138, line: 36, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_fpe_alternate", file: !138, line: 33, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !138, line: 34, baseType: !12, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "subset", scope: !154, file: !138, line: 35, baseType: !146, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !137, file: !138, line: 96, baseType: !159, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSClientPtr", file: !138, line: 45, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_client_data", file: !138, line: 40, size: 256, elements: !162)
!162 = !{!163, !164, !165, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !161, file: !138, line: 41, baseType: !72, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !138, line: 42, baseType: !160, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "acid", scope: !161, file: !138, line: 43, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "XID", file: !167, line: 66, baseType: !27)
!167 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/X.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "2487f55a62008b5a3fa226f1acb1d84a")
!168 = !DIDerivedType(tag: DW_TAG_member, name: "auth_generation", scope: !161, file: !138, line: 44, baseType: !16, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "curacid", scope: !137, file: !138, line: 97, baseType: !166, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "outBuf", scope: !137, file: !138, line: 105, baseType: !171, size: 256, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSBufRec", file: !138, line: 60, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_buf", file: !138, line: 55, size: 256, elements: !173)
!173 = !{!174, !175, !176, !177}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !172, file: !138, line: 56, baseType: !12, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !172, file: !138, line: 57, baseType: !24, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !172, file: !138, line: 58, baseType: !24, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !172, file: !138, line: 59, baseType: !24, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "inBuf", scope: !137, file: !138, line: 106, baseType: !171, size: 256, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "inNeed", scope: !137, file: !138, line: 107, baseType: !24, size: 64, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "blockState", scope: !137, file: !138, line: 109, baseType: !33, size: 32, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "blockedReplyTime", scope: !137, file: !138, line: 110, baseType: !33, size: 32, offset: 1248)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "brokenWriteTime", scope: !137, file: !138, line: 111, baseType: !33, size: 32, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "blockedConnectTime", scope: !137, file: !138, line: 112, baseType: !33, size: 32, offset: 1312)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "brokenConnectionTime", scope: !137, file: !138, line: 113, baseType: !33, size: 32, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "blockedRequests", scope: !137, file: !138, line: 115, baseType: !186, size: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSBlockDataPtr", file: !18, line: 65, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fs_block_data", file: !21, line: 125, size: 448, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !21, line: 126, baseType: !16, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !188, file: !21, line: 128, baseType: !72, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sequenceNumber", scope: !188, file: !21, line: 129, baseType: !59, size: 16, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !188, file: !21, line: 130, baseType: !72, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "errcode", scope: !188, file: !21, line: 131, baseType: !16, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "depending", scope: !188, file: !21, line: 132, baseType: !187, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !21, line: 133, baseType: !187, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "trans_conn", scope: !137, file: !138, line: 117, baseType: !198, size: 64, offset: 1472)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XtransConnInfo", file: !200, line: 168, flags: DIFlagFwdDecl)
!200 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/xtrans-1.4.0-jpsmiftwabehdhwraffmnogmgq54a5fn/include/X11/Xtrans/Xtrans.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "f8475ae5c4f9993e1bfb8ae8fdb33149")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontInfoPtr", file: !4, line: 37, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontInfo", file: !44, line: 73, size: 704, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !236}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "firstCol", scope: !203, file: !44, line: 74, baseType: !60, size: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "lastCol", scope: !203, file: !44, line: 75, baseType: !60, size: 16, offset: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "firstRow", scope: !203, file: !44, line: 76, baseType: !60, size: 16, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lastRow", scope: !203, file: !44, line: 77, baseType: !60, size: 16, offset: 48)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "defaultCh", scope: !203, file: !44, line: 78, baseType: !60, size: 16, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "noOverlap", scope: !203, file: !44, line: 79, baseType: !5, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "terminalFont", scope: !203, file: !44, line: 80, baseType: !5, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "constantMetrics", scope: !203, file: !44, line: 81, baseType: !5, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "constantWidth", scope: !203, file: !44, line: 82, baseType: !5, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "inkInside", scope: !203, file: !44, line: 83, baseType: !5, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "inkMetrics", scope: !203, file: !44, line: 84, baseType: !5, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "allExist", scope: !203, file: !44, line: 85, baseType: !5, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "drawDirection", scope: !203, file: !44, line: 86, baseType: !5, size: 2, offset: 87, flags: DIFlagBitField, extraData: i64 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cachable", scope: !203, file: !44, line: 87, baseType: !5, size: 1, offset: 89, flags: DIFlagBitField, extraData: i64 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "anamorphic", scope: !203, file: !44, line: 88, baseType: !5, size: 1, offset: 90, flags: DIFlagBitField, extraData: i64 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "maxOverlap", scope: !203, file: !44, line: 89, baseType: !53, size: 16, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !203, file: !44, line: 90, baseType: !53, size: 16, offset: 112)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "maxbounds", scope: !203, file: !44, line: 91, baseType: !47, size: 96, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "minbounds", scope: !203, file: !44, line: 92, baseType: !47, size: 96, offset: 224)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ink_maxbounds", scope: !203, file: !44, line: 93, baseType: !47, size: 96, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ink_minbounds", scope: !203, file: !44, line: 94, baseType: !47, size: 96, offset: 416)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "fontAscent", scope: !203, file: !44, line: 95, baseType: !53, size: 16, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fontDescent", scope: !203, file: !44, line: 96, baseType: !53, size: 16, offset: 528)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nprops", scope: !203, file: !44, line: 97, baseType: !16, size: 32, offset: 544)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !203, file: !44, line: 98, baseType: !230, size: 64, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontPropPtr", file: !4, line: 38, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontProp", file: !44, line: 41, size: 128, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !44, line: 42, baseType: !24, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !44, line: 43, baseType: !24, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "isStringProp", scope: !203, file: !44, line: 99, baseType: !12, size: 64, offset: 640)
!237 = !{!238, !239, !240}
!238 = !DILocalVariable(name: "conn", arg: 1, scope: !132, file: !1, line: 61, type: !135)
!239 = !DILocalVariable(name: "pfi", arg: 2, scope: !132, file: !1, line: 61, type: !201)
!240 = !DILocalVariable(name: "n", scope: !241, file: !1, line: 64, type: !60)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 63, column: 36)
!242 = distinct !DILexicalBlock(scope: !132, file: !1, line: 63, column: 9)
!243 = !DILocation(line: 61, column: 28, scope: !132)
!244 = !DILocation(line: 61, column: 46, scope: !132)
!245 = !DILocation(line: 63, column: 9, scope: !242)
!246 = !DILocation(line: 63, column: 15, scope: !242)
!247 = !DILocation(line: 63, column: 30, scope: !242)
!248 = !DILocation(line: 63, column: 9, scope: !132)
!249 = !DILocation(line: 64, column: 2, scope: !241)
!250 = !DILocation(line: 64, column: 17, scope: !241)
!251 = !DILocation(line: 65, column: 6, scope: !241)
!252 = !DILocation(line: 65, column: 11, scope: !241)
!253 = !DILocation(line: 65, column: 4, scope: !241)
!254 = !DILocation(line: 66, column: 18, scope: !241)
!255 = !DILocation(line: 66, column: 23, scope: !241)
!256 = !DILocation(line: 66, column: 2, scope: !241)
!257 = !DILocation(line: 66, column: 7, scope: !241)
!258 = !DILocation(line: 66, column: 16, scope: !241)
!259 = !DILocation(line: 67, column: 18, scope: !241)
!260 = !DILocation(line: 67, column: 2, scope: !241)
!261 = !DILocation(line: 67, column: 7, scope: !241)
!262 = !DILocation(line: 67, column: 16, scope: !241)
!263 = !DILocation(line: 68, column: 6, scope: !241)
!264 = !DILocation(line: 68, column: 11, scope: !241)
!265 = !DILocation(line: 68, column: 4, scope: !241)
!266 = !DILocation(line: 69, column: 17, scope: !241)
!267 = !DILocation(line: 69, column: 22, scope: !241)
!268 = !DILocation(line: 69, column: 2, scope: !241)
!269 = !DILocation(line: 69, column: 7, scope: !241)
!270 = !DILocation(line: 69, column: 15, scope: !241)
!271 = !DILocation(line: 70, column: 17, scope: !241)
!272 = !DILocation(line: 70, column: 2, scope: !241)
!273 = !DILocation(line: 70, column: 7, scope: !241)
!274 = !DILocation(line: 70, column: 15, scope: !241)
!275 = !DILocation(line: 71, column: 21, scope: !241)
!276 = !DILocation(line: 71, column: 26, scope: !241)
!277 = !DILocation(line: 71, column: 36, scope: !241)
!278 = !DILocation(line: 71, column: 42, scope: !241)
!279 = !DILocation(line: 72, column: 25, scope: !241)
!280 = !DILocation(line: 72, column: 30, scope: !241)
!281 = !DILocation(line: 72, column: 40, scope: !241)
!282 = !DILocation(line: 72, column: 48, scope: !241)
!283 = !DILocation(line: 72, column: 21, scope: !241)
!284 = !DILocation(line: 71, column: 19, scope: !241)
!285 = !DILocation(line: 71, column: 2, scope: !241)
!286 = !DILocation(line: 71, column: 7, scope: !241)
!287 = !DILocation(line: 71, column: 17, scope: !241)
!288 = !DILocation(line: 73, column: 5, scope: !242)
!289 = !DILocation(line: 73, column: 5, scope: !241)
!290 = !DILocation(line: 75, column: 30, scope: !291)
!291 = distinct !DILexicalBlock(scope: !132, file: !1, line: 75, column: 9)
!292 = !DILocation(line: 75, column: 9, scope: !291)
!293 = !DILocation(line: 75, column: 9, scope: !132)
!294 = !DILocation(line: 77, column: 2, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 76, column: 5)
!296 = !DILocation(line: 77, column: 7, scope: !295)
!297 = !DILocation(line: 77, column: 20, scope: !295)
!298 = !DILocation(line: 78, column: 26, scope: !295)
!299 = !DILocation(line: 78, column: 31, scope: !295)
!300 = !DILocation(line: 78, column: 2, scope: !295)
!301 = !DILocation(line: 78, column: 7, scope: !295)
!302 = !DILocation(line: 78, column: 17, scope: !295)
!303 = !DILocation(line: 78, column: 24, scope: !295)
!304 = !DILocation(line: 79, column: 27, scope: !295)
!305 = !DILocation(line: 79, column: 32, scope: !295)
!306 = !DILocation(line: 79, column: 2, scope: !295)
!307 = !DILocation(line: 79, column: 7, scope: !295)
!308 = !DILocation(line: 79, column: 17, scope: !295)
!309 = !DILocation(line: 79, column: 25, scope: !295)
!310 = !DILocation(line: 80, column: 2, scope: !295)
!311 = !DILocation(line: 80, column: 7, scope: !295)
!312 = !DILocation(line: 80, column: 17, scope: !295)
!313 = !DILocation(line: 80, column: 33, scope: !295)
!314 = !DILocation(line: 81, column: 36, scope: !295)
!315 = !DILocation(line: 81, column: 41, scope: !295)
!316 = !DILocation(line: 81, column: 51, scope: !295)
!317 = !DILocation(line: 81, column: 2, scope: !295)
!318 = !DILocation(line: 81, column: 7, scope: !295)
!319 = !DILocation(line: 81, column: 17, scope: !295)
!320 = !DILocation(line: 81, column: 34, scope: !295)
!321 = !DILocation(line: 82, column: 2, scope: !295)
!322 = !DILocation(line: 82, column: 7, scope: !295)
!323 = !DILocation(line: 82, column: 19, scope: !295)
!324 = !DILocation(line: 82, column: 24, scope: !295)
!325 = !DILocation(line: 83, column: 5, scope: !295)
!326 = !DILocation(line: 85, column: 34, scope: !132)
!327 = !DILocation(line: 85, column: 5, scope: !132)
!328 = !DILocation(line: 86, column: 1, scope: !132)
!329 = !DISubprogram(name: "FontCouldBeTerminal", scope: !330, file: !330, line: 6, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DIFile(filename: "../../include/X11/fonts/fontutil.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build/aidengro/spack-stage-libxfont-1.5.4-scvwheodi5y5phavsi67myzr3xykgcgd/spack-src/src/fc", checksumkind: CSK_MD5, checksum: "c132f9f5c8d47ca89ec629808fd8a997")
!331 = !DISubroutineType(types: !332)
!332 = !{!16, !201}
!333 = !DISubprogram(name: "FontComputeInfoAccelerators", scope: !330, file: !330, line: 9, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !201}
!336 = distinct !DISubprogram(name: "_fs_convert_props", scope: !1, file: !1, line: 89, type: !337, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!337 = !DISubroutineType(types: !338)
!338 = !{!16, !339, !345, !72, !201}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsPropInfo", file: !87, line: 181, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 176, size: 64, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num_offsets", scope: !341, file: !87, line: 177, baseType: !33, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !341, file: !87, line: 178, baseType: !33, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsPropOffset", file: !87, line: 174, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 168, size: 160, elements: !348)
!348 = !{!349, !355, !356, !358, !360}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !87, line: 169, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsOffset32", file: !87, line: 166, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 163, size: 64, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !351, file: !87, line: 164, baseType: !33, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !351, file: !87, line: 165, baseType: !33, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !87, line: 170, baseType: !350, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !347, file: !87, line: 171, baseType: !357, size: 8, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "CARD8", file: !15, line: 114, baseType: !71)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !347, file: !87, line: 172, baseType: !359, size: 8, offset: 136)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !15, line: 119, baseType: !357)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !347, file: !87, line: 173, baseType: !59, size: 16, offset: 144)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!362 = !DILocalVariable(name: "pi", arg: 1, scope: !336, file: !1, line: 89, type: !339)
!363 = !DILocalVariable(name: "po", arg: 2, scope: !336, file: !1, line: 89, type: !345)
!364 = !DILocalVariable(name: "pd", arg: 3, scope: !336, file: !1, line: 89, type: !72)
!365 = !DILocalVariable(name: "pfi", arg: 4, scope: !336, file: !1, line: 90, type: !201)
!366 = !DILocalVariable(name: "dprop", scope: !336, file: !1, line: 92, type: !230)
!367 = !DILocalVariable(name: "i", scope: !336, file: !1, line: 93, type: !16)
!368 = !DILocalVariable(name: "nprops", scope: !336, file: !1, line: 94, type: !16)
!369 = !DILocalVariable(name: "is_str", scope: !336, file: !1, line: 95, type: !12)
!370 = !DILocalVariable(name: "local_off", scope: !336, file: !1, line: 96, type: !346)
!371 = !DILocalVariable(name: "off_adr", scope: !336, file: !1, line: 97, type: !12)
!372 = !DILocalVariable(name: "pdc", scope: !336, file: !1, line: 98, type: !12)
!373 = !DILabel(scope: !374, name: "bail", file: !1, line: 140)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 139, column: 6)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 138, column: 10)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 130, column: 9)
!377 = distinct !DILexicalBlock(scope: !378, file: !1, line: 127, column: 6)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 119, column: 5)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 118, column: 5)
!380 = distinct !DILexicalBlock(scope: !336, file: !1, line: 118, column: 5)
!381 = !DILocation(line: 89, column: 31, scope: !336)
!382 = !DILocation(line: 89, column: 49, scope: !336)
!383 = !DILocation(line: 89, column: 61, scope: !336)
!384 = !DILocation(line: 90, column: 17, scope: !336)
!385 = !DILocation(line: 92, column: 5, scope: !336)
!386 = !DILocation(line: 92, column: 17, scope: !336)
!387 = !DILocation(line: 93, column: 5, scope: !336)
!388 = !DILocation(line: 93, column: 17, scope: !336)
!389 = !DILocation(line: 94, column: 17, scope: !336)
!390 = !DILocation(line: 95, column: 5, scope: !336)
!391 = !DILocation(line: 95, column: 17, scope: !336)
!392 = !DILocation(line: 96, column: 5, scope: !336)
!393 = !DILocation(line: 96, column: 18, scope: !336)
!394 = !DILocation(line: 97, column: 5, scope: !336)
!395 = !DILocation(line: 97, column: 11, scope: !336)
!396 = !DILocation(line: 98, column: 5, scope: !336)
!397 = !DILocation(line: 98, column: 11, scope: !336)
!398 = !DILocation(line: 98, column: 17, scope: !336)
!399 = !DILocation(line: 103, column: 28, scope: !336)
!400 = !DILocation(line: 103, column: 32, scope: !336)
!401 = !DILocation(line: 103, column: 14, scope: !336)
!402 = !DILocation(line: 103, column: 19, scope: !336)
!403 = !DILocation(line: 103, column: 26, scope: !336)
!404 = !DILocation(line: 103, column: 12, scope: !336)
!405 = !DILocation(line: 105, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !336, file: !1, line: 105, column: 9)
!407 = !DILocation(line: 105, column: 16, scope: !406)
!408 = !DILocation(line: 106, column: 2, scope: !406)
!409 = !DILocation(line: 106, column: 5, scope: !406)
!410 = !DILocation(line: 106, column: 12, scope: !406)
!411 = !DILocation(line: 105, column: 9, scope: !336)
!412 = !DILocation(line: 107, column: 2, scope: !406)
!413 = !DILocation(line: 109, column: 42, scope: !336)
!414 = !DILocation(line: 109, column: 40, scope: !336)
!415 = !DILocation(line: 109, column: 67, scope: !336)
!416 = !DILocation(line: 109, column: 65, scope: !336)
!417 = !DILocation(line: 109, column: 49, scope: !336)
!418 = !DILocation(line: 109, column: 13, scope: !336)
!419 = !DILocation(line: 109, column: 11, scope: !336)
!420 = !DILocation(line: 110, column: 10, scope: !421)
!421 = distinct !DILexicalBlock(scope: !336, file: !1, line: 110, column: 9)
!422 = !DILocation(line: 110, column: 9, scope: !336)
!423 = !DILocation(line: 111, column: 2, scope: !421)
!424 = !DILocation(line: 113, column: 24, scope: !336)
!425 = !DILocation(line: 113, column: 32, scope: !336)
!426 = !DILocation(line: 113, column: 30, scope: !336)
!427 = !DILocation(line: 113, column: 12, scope: !336)
!428 = !DILocation(line: 114, column: 18, scope: !336)
!429 = !DILocation(line: 114, column: 5, scope: !336)
!430 = !DILocation(line: 114, column: 10, scope: !336)
!431 = !DILocation(line: 114, column: 16, scope: !336)
!432 = !DILocation(line: 115, column: 25, scope: !336)
!433 = !DILocation(line: 115, column: 5, scope: !336)
!434 = !DILocation(line: 115, column: 10, scope: !336)
!435 = !DILocation(line: 115, column: 23, scope: !336)
!436 = !DILocation(line: 117, column: 23, scope: !336)
!437 = !DILocation(line: 117, column: 13, scope: !336)
!438 = !DILocation(line: 118, column: 12, scope: !380)
!439 = !DILocation(line: 118, column: 10, scope: !380)
!440 = !DILocation(line: 118, column: 17, scope: !379)
!441 = !DILocation(line: 118, column: 21, scope: !379)
!442 = !DILocation(line: 118, column: 19, scope: !379)
!443 = !DILocation(line: 118, column: 5, scope: !380)
!444 = !DILocation(line: 120, column: 21, scope: !378)
!445 = !DILocation(line: 120, column: 2, scope: !378)
!446 = !DILocation(line: 121, column: 17, scope: !447)
!447 = distinct !DILexicalBlock(scope: !378, file: !1, line: 121, column: 6)
!448 = !DILocation(line: 121, column: 22, scope: !447)
!449 = !DILocation(line: 121, column: 34, scope: !447)
!450 = !DILocation(line: 121, column: 38, scope: !447)
!451 = !DILocation(line: 121, column: 31, scope: !447)
!452 = !DILocation(line: 121, column: 48, scope: !447)
!453 = !DILocation(line: 122, column: 14, scope: !447)
!454 = !DILocation(line: 122, column: 19, scope: !447)
!455 = !DILocation(line: 123, column: 5, scope: !447)
!456 = !DILocation(line: 123, column: 9, scope: !447)
!457 = !DILocation(line: 123, column: 30, scope: !447)
!458 = !DILocation(line: 123, column: 35, scope: !447)
!459 = !DILocation(line: 123, column: 18, scope: !447)
!460 = !DILocation(line: 122, column: 26, scope: !447)
!461 = !DILocation(line: 121, column: 6, scope: !378)
!462 = !DILocation(line: 124, column: 6, scope: !447)
!463 = !DILocation(line: 125, column: 26, scope: !378)
!464 = !DILocation(line: 125, column: 40, scope: !378)
!465 = !DILocation(line: 125, column: 45, scope: !378)
!466 = !DILocation(line: 126, column: 21, scope: !378)
!467 = !DILocation(line: 126, column: 26, scope: !378)
!468 = !DILocation(line: 125, column: 16, scope: !378)
!469 = !DILocation(line: 125, column: 2, scope: !378)
!470 = !DILocation(line: 125, column: 9, scope: !378)
!471 = !DILocation(line: 125, column: 14, scope: !378)
!472 = !DILocation(line: 127, column: 16, scope: !377)
!473 = !DILocation(line: 127, column: 6, scope: !377)
!474 = !DILocation(line: 127, column: 21, scope: !377)
!475 = !DILocation(line: 127, column: 6, scope: !378)
!476 = !DILocation(line: 128, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !377, file: !1, line: 127, column: 40)
!478 = !DILocation(line: 128, column: 14, scope: !477)
!479 = !DILocation(line: 129, column: 31, scope: !477)
!480 = !DILocation(line: 129, column: 37, scope: !477)
!481 = !DILocation(line: 129, column: 21, scope: !477)
!482 = !DILocation(line: 129, column: 6, scope: !477)
!483 = !DILocation(line: 129, column: 13, scope: !477)
!484 = !DILocation(line: 129, column: 19, scope: !477)
!485 = !DILocation(line: 130, column: 2, scope: !477)
!486 = !DILocation(line: 131, column: 7, scope: !376)
!487 = !DILocation(line: 131, column: 14, scope: !376)
!488 = !DILocation(line: 132, column: 21, scope: !489)
!489 = distinct !DILexicalBlock(scope: !376, file: !1, line: 132, column: 10)
!490 = !DILocation(line: 132, column: 27, scope: !489)
!491 = !DILocation(line: 132, column: 39, scope: !489)
!492 = !DILocation(line: 132, column: 43, scope: !489)
!493 = !DILocation(line: 132, column: 36, scope: !489)
!494 = !DILocation(line: 132, column: 53, scope: !489)
!495 = !DILocation(line: 133, column: 14, scope: !489)
!496 = !DILocation(line: 133, column: 20, scope: !489)
!497 = !DILocation(line: 134, column: 5, scope: !489)
!498 = !DILocation(line: 134, column: 9, scope: !489)
!499 = !DILocation(line: 134, column: 30, scope: !489)
!500 = !DILocation(line: 134, column: 36, scope: !489)
!501 = !DILocation(line: 134, column: 18, scope: !489)
!502 = !DILocation(line: 133, column: 27, scope: !489)
!503 = !DILocation(line: 132, column: 10, scope: !376)
!504 = !DILocation(line: 135, column: 3, scope: !489)
!505 = !DILocation(line: 136, column: 39, scope: !376)
!506 = !DILocation(line: 136, column: 53, scope: !376)
!507 = !DILocation(line: 136, column: 59, scope: !376)
!508 = !DILocation(line: 137, column: 20, scope: !376)
!509 = !DILocation(line: 137, column: 26, scope: !376)
!510 = !DILocation(line: 136, column: 29, scope: !376)
!511 = !DILocation(line: 136, column: 21, scope: !376)
!512 = !DILocation(line: 136, column: 6, scope: !376)
!513 = !DILocation(line: 136, column: 13, scope: !376)
!514 = !DILocation(line: 136, column: 19, scope: !376)
!515 = !DILocation(line: 138, column: 10, scope: !375)
!516 = !DILocation(line: 138, column: 17, scope: !375)
!517 = !DILocation(line: 138, column: 23, scope: !375)
!518 = !DILocation(line: 138, column: 10, scope: !376)
!519 = !DILocation(line: 139, column: 6, scope: !375)
!520 = !DILocation(line: 140, column: 8, scope: !374)
!521 = !DILocation(line: 141, column: 9, scope: !374)
!522 = !DILocation(line: 141, column: 14, scope: !374)
!523 = !DILocation(line: 141, column: 3, scope: !374)
!524 = !DILocation(line: 142, column: 3, scope: !374)
!525 = !DILocation(line: 142, column: 8, scope: !374)
!526 = !DILocation(line: 142, column: 15, scope: !374)
!527 = !DILocation(line: 143, column: 3, scope: !374)
!528 = !DILocation(line: 143, column: 8, scope: !374)
!529 = !DILocation(line: 143, column: 14, scope: !374)
!530 = !DILocation(line: 144, column: 3, scope: !374)
!531 = !DILocation(line: 144, column: 8, scope: !374)
!532 = !DILocation(line: 144, column: 21, scope: !374)
!533 = !DILocation(line: 145, column: 3, scope: !374)
!534 = !DILocation(line: 148, column: 10, scope: !378)
!535 = !DILocation(line: 149, column: 5, scope: !378)
!536 = !DILocation(line: 118, column: 30, scope: !379)
!537 = !DILocation(line: 118, column: 39, scope: !379)
!538 = !DILocation(line: 118, column: 49, scope: !379)
!539 = !DILocation(line: 118, column: 5, scope: !379)
!540 = distinct !{!540, !443, !541, !542}
!541 = !DILocation(line: 149, column: 5, scope: !380)
!542 = !{!"llvm.loop.mustprogress"}
!543 = !DILocation(line: 151, column: 12, scope: !336)
!544 = !DILocation(line: 151, column: 5, scope: !336)
!545 = !DILocation(line: 152, column: 1, scope: !336)
!546 = !DISubprogram(name: "malloc", scope: !547, file: !547, line: 540, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!548 = !DISubroutineType(types: !549)
!549 = !{!74, !550}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !551, line: 70, baseType: !27)
!551 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!552 = !DISubprogram(name: "MakeAtom", scope: !553, file: !553, line: 55, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DIFile(filename: "../../include/X11/fonts/fontmisc.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build/aidengro/spack-stage-libxfont-1.5.4-scvwheodi5y5phavsi67myzr3xykgcgd/spack-src/src/fc", checksumkind: CSK_MD5, checksum: "ca2c870721803850633432853869513a")
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !557, !5, !16}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atom", file: !167, line: 74, baseType: !27)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!559 = !DISubprogram(name: "free", scope: !547, file: !547, line: 555, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !74}
!562 = distinct !DISubprogram(name: "_fs_free_props", scope: !1, file: !1, line: 155, type: !334, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !563)
!563 = !{!564}
!564 = !DILocalVariable(name: "pfi", arg: 1, scope: !562, file: !1, line: 155, type: !201)
!565 = !DILocation(line: 155, column: 29, scope: !562)
!566 = !DILocation(line: 157, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !1, line: 157, column: 9)
!568 = !DILocation(line: 157, column: 14, scope: !567)
!569 = !DILocation(line: 157, column: 9, scope: !562)
!570 = !DILocation(line: 159, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !1, line: 158, column: 5)
!572 = !DILocation(line: 159, column: 13, scope: !571)
!573 = !DILocation(line: 159, column: 2, scope: !571)
!574 = !DILocation(line: 160, column: 2, scope: !571)
!575 = !DILocation(line: 160, column: 7, scope: !571)
!576 = !DILocation(line: 160, column: 14, scope: !571)
!577 = !DILocation(line: 161, column: 2, scope: !571)
!578 = !DILocation(line: 161, column: 7, scope: !571)
!579 = !DILocation(line: 161, column: 13, scope: !571)
!580 = !DILocation(line: 162, column: 5, scope: !571)
!581 = !DILocation(line: 163, column: 1, scope: !562)
!582 = distinct !DISubprogram(name: "_fs_convert_lfwi_reply", scope: !1, file: !1, line: 166, type: !583, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !617)
!583 = !DISubroutineType(types: !584)
!584 = !{!16, !135, !201, !585, !339, !345, !72}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsListFontsWithXInfoReply", file: !87, line: 530, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 499, size: 416, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !87, line: 500, baseType: !359, size: 8)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nameLength", scope: !587, file: !87, line: 501, baseType: !357, size: 8, offset: 8)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sequenceNumber", scope: !587, file: !87, line: 502, baseType: !59, size: 16, offset: 16)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !587, file: !87, line: 503, baseType: !33, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nReplies", scope: !587, file: !87, line: 504, baseType: !33, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_flags", scope: !587, file: !87, line: 505, baseType: !33, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "font_hdr_char_range_min_char_high", scope: !587, file: !87, line: 506, baseType: !357, size: 8, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "font_hdr_char_range_min_char_low", scope: !587, file: !87, line: 507, baseType: !357, size: 8, offset: 136)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "font_hdr_char_range_max_char_high", scope: !587, file: !87, line: 508, baseType: !357, size: 8, offset: 144)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "font_hdr_char_range_max_char_low", scope: !587, file: !87, line: 509, baseType: !357, size: 8, offset: 152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_draw_direction", scope: !587, file: !87, line: 510, baseType: !357, size: 8, offset: 160)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_pad", scope: !587, file: !87, line: 511, baseType: !357, size: 8, offset: 168)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_default_char_high", scope: !587, file: !87, line: 512, baseType: !357, size: 8, offset: 176)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_default_char_low", scope: !587, file: !87, line: 513, baseType: !357, size: 8, offset: 184)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_min_bounds_left", scope: !587, file: !87, line: 514, baseType: !52, size: 16, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_min_bounds_right", scope: !587, file: !87, line: 515, baseType: !52, size: 16, offset: 208)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_min_bounds_width", scope: !587, file: !87, line: 516, baseType: !52, size: 16, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_min_bounds_ascent", scope: !587, file: !87, line: 517, baseType: !52, size: 16, offset: 240)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_min_bounds_descent", scope: !587, file: !87, line: 518, baseType: !52, size: 16, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_min_bounds_attributes", scope: !587, file: !87, line: 519, baseType: !59, size: 16, offset: 272)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_max_bounds_left", scope: !587, file: !87, line: 520, baseType: !52, size: 16, offset: 288)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_max_bounds_right", scope: !587, file: !87, line: 521, baseType: !52, size: 16, offset: 304)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_max_bounds_width", scope: !587, file: !87, line: 522, baseType: !52, size: 16, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_max_bounds_ascent", scope: !587, file: !87, line: 523, baseType: !52, size: 16, offset: 336)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_max_bounds_descent", scope: !587, file: !87, line: 524, baseType: !52, size: 16, offset: 352)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_max_bounds_attributes", scope: !587, file: !87, line: 525, baseType: !59, size: 16, offset: 368)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_font_ascent", scope: !587, file: !87, line: 526, baseType: !52, size: 16, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "font_header_font_descent", scope: !587, file: !87, line: 527, baseType: !52, size: 16, offset: 400)
!617 = !{!618, !619, !620, !621, !622, !623}
!618 = !DILocalVariable(name: "conn", arg: 1, scope: !582, file: !1, line: 166, type: !135)
!619 = !DILocalVariable(name: "pfi", arg: 2, scope: !582, file: !1, line: 166, type: !201)
!620 = !DILocalVariable(name: "fsrep", arg: 3, scope: !582, file: !1, line: 167, type: !585)
!621 = !DILocalVariable(name: "pi", arg: 4, scope: !582, file: !1, line: 168, type: !339)
!622 = !DILocalVariable(name: "po", arg: 5, scope: !582, file: !1, line: 168, type: !345)
!623 = !DILocalVariable(name: "pd", arg: 6, scope: !582, file: !1, line: 168, type: !72)
!624 = !DILocation(line: 166, column: 33, scope: !582)
!625 = !DILocation(line: 166, column: 51, scope: !582)
!626 = !DILocation(line: 167, column: 37, scope: !582)
!627 = !DILocation(line: 168, column: 22, scope: !582)
!628 = !DILocation(line: 168, column: 40, scope: !582)
!629 = !DILocation(line: 168, column: 52, scope: !582)
!630 = !DILocation(line: 170, column: 5, scope: !582)
!631 = !DILocation(line: 171, column: 23, scope: !582)
!632 = !DILocation(line: 171, column: 29, scope: !582)
!633 = !DILocation(line: 171, column: 5, scope: !582)
!634 = !DILocation(line: 173, column: 27, scope: !635)
!635 = distinct !DILexicalBlock(scope: !582, file: !1, line: 173, column: 9)
!636 = !DILocation(line: 173, column: 31, scope: !635)
!637 = !DILocation(line: 173, column: 35, scope: !635)
!638 = !DILocation(line: 173, column: 39, scope: !635)
!639 = !DILocation(line: 173, column: 9, scope: !635)
!640 = !DILocation(line: 173, column: 44, scope: !635)
!641 = !DILocation(line: 173, column: 9, scope: !582)
!642 = !DILocation(line: 174, column: 2, scope: !635)
!643 = !DILocation(line: 176, column: 5, scope: !582)
!644 = !DILocation(line: 177, column: 1, scope: !582)
!645 = distinct !DISubprogram(name: "fs_build_range", scope: !1, file: !1, line: 200, type: !646, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !703)
!646 = !DISubroutineType(types: !647)
!647 = !{!16, !648, !146, !5, !16, !70, !693, !694}
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontPtr", file: !73, line: 81, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Font", file: !44, line: 102, size: 1472, elements: !651)
!651 = !{!652, !653, !655, !656, !657, !658, !659, !660, !667, !672, !676, !677, !687, !688, !689, !690, !691}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !650, file: !44, line: 103, baseType: !16, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !650, file: !44, line: 104, baseType: !654, size: 704, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontInfoRec", file: !44, line: 100, baseType: !203)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !650, file: !44, line: 105, baseType: !13, size: 8, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !650, file: !44, line: 106, baseType: !13, size: 8, offset: 776)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "glyph", scope: !650, file: !44, line: 107, baseType: !13, size: 8, offset: 784)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !650, file: !44, line: 108, baseType: !13, size: 8, offset: 792)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !650, file: !44, line: 109, baseType: !31, size: 32, offset: 800)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_glyphs", scope: !650, file: !44, line: 110, baseType: !661, size: 64, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!16, !648, !27, !70, !664, !665, !666}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontEncoding", file: !4, line: 164, baseType: !3)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "get_metrics", scope: !650, file: !44, line: 116, baseType: !668, size: 64, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!16, !648, !27, !70, !664, !665, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "unload_font", scope: !650, file: !44, line: 122, baseType: !673, size: 64, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !648}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "unload_glyphs", scope: !650, file: !44, line: 123, baseType: !673, size: 64, offset: 1024)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fpe", scope: !650, file: !44, line: 124, baseType: !678, size: 64, offset: 1088)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontPathElementPtr", file: !4, line: 40, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontPathElement", file: !44, line: 148, size: 256, elements: !681)
!681 = !{!682, !683, !684, !685, !686}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !680, file: !44, line: 149, baseType: !16, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !680, file: !44, line: 153, baseType: !12, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !44, line: 154, baseType: !16, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !680, file: !44, line: 155, baseType: !16, size: 32, offset: 160)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !680, file: !44, line: 156, baseType: !74, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "svrPrivate", scope: !650, file: !44, line: 125, baseType: !74, size: 64, offset: 1152)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fontPrivate", scope: !650, file: !44, line: 126, baseType: !74, size: 64, offset: 1216)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fpePrivate", scope: !650, file: !44, line: 127, baseType: !74, size: 64, offset: 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "maxPrivate", scope: !650, file: !44, line: 128, baseType: !16, size: 32, offset: 1344)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "devPrivates", scope: !650, file: !44, line: 129, baseType: !692, size: 64, offset: 1408)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsRange", file: !87, line: 161, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 156, size: 32, elements: !698)
!698 = !{!699, !700, !701, !702}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "min_char_high", scope: !697, file: !87, line: 157, baseType: !357, size: 8)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "min_char_low", scope: !697, file: !87, line: 158, baseType: !357, size: 8, offset: 8)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "max_char_high", scope: !697, file: !87, line: 159, baseType: !357, size: 8, offset: 16)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "max_char_low", scope: !697, file: !87, line: 160, baseType: !357, size: 8, offset: 24)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !731, !732, !737, !739, !740, !741, !742}
!704 = !DILocalVariable(name: "pfont", arg: 1, scope: !645, file: !1, line: 200, type: !648)
!705 = !DILocalVariable(name: "range_flag", arg: 2, scope: !645, file: !1, line: 200, type: !146)
!706 = !DILocalVariable(name: "count", arg: 3, scope: !645, file: !1, line: 200, type: !5)
!707 = !DILocalVariable(name: "item_size", arg: 4, scope: !645, file: !1, line: 201, type: !16)
!708 = !DILocalVariable(name: "data", arg: 5, scope: !645, file: !1, line: 201, type: !70)
!709 = !DILocalVariable(name: "nranges", arg: 6, scope: !645, file: !1, line: 201, type: !693)
!710 = !DILocalVariable(name: "ranges", arg: 7, scope: !645, file: !1, line: 202, type: !694)
!711 = !DILocalVariable(name: "fsd", scope: !645, file: !1, line: 204, type: !17)
!712 = !DILocalVariable(name: "fsfont", scope: !645, file: !1, line: 205, type: !36)
!713 = !DILocalVariable(name: "encoding", scope: !645, file: !1, line: 206, type: !41)
!714 = !DILocalVariable(name: "pfi", scope: !645, file: !1, line: 207, type: !201)
!715 = !DILocalVariable(name: "range", scope: !645, file: !1, line: 208, type: !696)
!716 = !DILocalVariable(name: "access_done", scope: !645, file: !1, line: 209, type: !16)
!717 = !DILocalVariable(name: "err", scope: !645, file: !1, line: 210, type: !16)
!718 = !DILocalVariable(name: "firstrow", scope: !645, file: !1, line: 211, type: !27)
!719 = !DILocalVariable(name: "lastrow", scope: !645, file: !1, line: 211, type: !27)
!720 = !DILocalVariable(name: "firstcol", scope: !645, file: !1, line: 211, type: !27)
!721 = !DILocalVariable(name: "lastcol", scope: !645, file: !1, line: 211, type: !27)
!722 = !DILocalVariable(name: "row", scope: !645, file: !1, line: 212, type: !27)
!723 = !DILocalVariable(name: "col", scope: !645, file: !1, line: 213, type: !27)
!724 = !DILocalVariable(name: "loc", scope: !645, file: !1, line: 214, type: !27)
!725 = !DILocalVariable(name: "col1", scope: !726, file: !1, line: 249, type: !16)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 248, column: 6)
!727 = distinct !DILexicalBlock(scope: !728, file: !1, line: 246, column: 10)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 244, column: 2)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 241, column: 5)
!730 = distinct !DILexicalBlock(scope: !645, file: !1, line: 240, column: 9)
!731 = !DILocalVariable(name: "col2", scope: !726, file: !1, line: 249, type: !16)
!732 = !DILocalVariable(name: "fullrange", scope: !733, file: !1, line: 272, type: !734)
!733 = distinct !DILexicalBlock(scope: !730, file: !1, line: 271, column: 5)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 32, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 1)
!737 = !DILocalVariable(name: "row1", scope: !738, file: !1, line: 286, type: !16)
!738 = distinct !DILexicalBlock(scope: !733, file: !1, line: 285, column: 2)
!739 = !DILocalVariable(name: "col1", scope: !738, file: !1, line: 286, type: !16)
!740 = !DILocalVariable(name: "row2", scope: !738, file: !1, line: 286, type: !16)
!741 = !DILocalVariable(name: "col2", scope: !738, file: !1, line: 286, type: !16)
!742 = !DILabel(scope: !743, name: "expand_glyph_range", file: !1, line: 315)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 314, column: 6)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 313, column: 6)
!745 = distinct !DILexicalBlock(scope: !738, file: !1, line: 313, column: 6)
!746 = !DILocation(line: 200, column: 24, scope: !645)
!747 = !DILocation(line: 200, column: 36, scope: !645)
!748 = !DILocation(line: 200, column: 61, scope: !645)
!749 = !DILocation(line: 201, column: 13, scope: !645)
!750 = !DILocation(line: 201, column: 39, scope: !645)
!751 = !DILocation(line: 201, column: 50, scope: !645)
!752 = !DILocation(line: 202, column: 19, scope: !645)
!753 = !DILocation(line: 204, column: 5, scope: !645)
!754 = !DILocation(line: 204, column: 19, scope: !645)
!755 = !DILocation(line: 204, column: 42, scope: !645)
!756 = !DILocation(line: 204, column: 49, scope: !645)
!757 = !DILocation(line: 205, column: 5, scope: !645)
!758 = !DILocation(line: 205, column: 15, scope: !645)
!759 = !DILocation(line: 205, column: 37, scope: !645)
!760 = !DILocation(line: 205, column: 44, scope: !645)
!761 = !DILocation(line: 206, column: 5, scope: !645)
!762 = !DILocation(line: 206, column: 26, scope: !645)
!763 = !DILocation(line: 206, column: 37, scope: !645)
!764 = !DILocation(line: 206, column: 45, scope: !645)
!765 = !DILocation(line: 207, column: 5, scope: !645)
!766 = !DILocation(line: 207, column: 17, scope: !645)
!767 = !DILocation(line: 207, column: 25, scope: !645)
!768 = !DILocation(line: 207, column: 32, scope: !645)
!769 = !DILocation(line: 208, column: 5, scope: !645)
!770 = !DILocation(line: 208, column: 13, scope: !645)
!771 = !DILocation(line: 209, column: 5, scope: !645)
!772 = !DILocation(line: 209, column: 10, scope: !645)
!773 = !DILocation(line: 210, column: 5, scope: !645)
!774 = !DILocation(line: 210, column: 10, scope: !645)
!775 = !DILocation(line: 211, column: 5, scope: !645)
!776 = !DILocation(line: 211, column: 28, scope: !645)
!777 = !DILocation(line: 211, column: 38, scope: !645)
!778 = !DILocation(line: 211, column: 47, scope: !645)
!779 = !DILocation(line: 211, column: 57, scope: !645)
!780 = !DILocation(line: 212, column: 5, scope: !645)
!781 = !DILocation(line: 212, column: 28, scope: !645)
!782 = !DILocation(line: 213, column: 5, scope: !645)
!783 = !DILocation(line: 213, column: 28, scope: !645)
!784 = !DILocation(line: 214, column: 5, scope: !645)
!785 = !DILocation(line: 214, column: 28, scope: !645)
!786 = !DILocation(line: 216, column: 10, scope: !787)
!787 = distinct !DILexicalBlock(scope: !645, file: !1, line: 216, column: 9)
!788 = !DILocation(line: 216, column: 15, scope: !787)
!789 = !DILocation(line: 216, column: 9, scope: !645)
!790 = !DILocation(line: 217, column: 2, scope: !787)
!791 = !DILocation(line: 219, column: 16, scope: !645)
!792 = !DILocation(line: 219, column: 21, scope: !645)
!793 = !DILocation(line: 219, column: 14, scope: !645)
!794 = !DILocation(line: 220, column: 15, scope: !645)
!795 = !DILocation(line: 220, column: 20, scope: !645)
!796 = !DILocation(line: 220, column: 13, scope: !645)
!797 = !DILocation(line: 221, column: 16, scope: !645)
!798 = !DILocation(line: 221, column: 21, scope: !645)
!799 = !DILocation(line: 221, column: 14, scope: !645)
!800 = !DILocation(line: 222, column: 15, scope: !645)
!801 = !DILocation(line: 222, column: 20, scope: !645)
!802 = !DILocation(line: 222, column: 13, scope: !645)
!803 = !DILocation(line: 225, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !645, file: !1, line: 225, column: 9)
!805 = !DILocation(line: 225, column: 17, scope: !804)
!806 = !DILocation(line: 225, column: 26, scope: !804)
!807 = !DILocation(line: 225, column: 29, scope: !804)
!808 = !DILocation(line: 225, column: 9, scope: !645)
!809 = !DILocation(line: 0, scope: !804)
!810 = !DILocation(line: 227, column: 8, scope: !811)
!811 = distinct !DILexicalBlock(scope: !804, file: !1, line: 226, column: 5)
!812 = !DILocation(line: 227, column: 16, scope: !811)
!813 = !DILocation(line: 227, column: 27, scope: !811)
!814 = !DILocation(line: 227, column: 25, scope: !811)
!815 = !DILocation(line: 227, column: 6, scope: !811)
!816 = !DILocation(line: 228, column: 8, scope: !811)
!817 = !DILocation(line: 228, column: 15, scope: !811)
!818 = !DILocation(line: 228, column: 25, scope: !811)
!819 = !DILocation(line: 228, column: 23, scope: !811)
!820 = !DILocation(line: 228, column: 34, scope: !811)
!821 = !DILocation(line: 228, column: 12, scope: !811)
!822 = !DILocation(line: 228, column: 41, scope: !811)
!823 = !DILocation(line: 228, column: 39, scope: !811)
!824 = !DILocation(line: 228, column: 6, scope: !811)
!825 = !DILocation(line: 229, column: 8, scope: !811)
!826 = !DILocation(line: 229, column: 15, scope: !811)
!827 = !DILocation(line: 229, column: 25, scope: !811)
!828 = !DILocation(line: 229, column: 23, scope: !811)
!829 = !DILocation(line: 229, column: 34, scope: !811)
!830 = !DILocation(line: 229, column: 12, scope: !811)
!831 = !DILocation(line: 229, column: 41, scope: !811)
!832 = !DILocation(line: 229, column: 39, scope: !811)
!833 = !DILocation(line: 229, column: 6, scope: !811)
!834 = !DILocation(line: 231, column: 44, scope: !811)
!835 = !DILocation(line: 231, column: 29, scope: !811)
!836 = !DILocation(line: 231, column: 42, scope: !811)
!837 = !DILocation(line: 231, column: 8, scope: !811)
!838 = !DILocation(line: 231, column: 21, scope: !811)
!839 = !DILocation(line: 232, column: 46, scope: !811)
!840 = !DILocation(line: 232, column: 30, scope: !811)
!841 = !DILocation(line: 232, column: 44, scope: !811)
!842 = !DILocation(line: 232, column: 8, scope: !811)
!843 = !DILocation(line: 232, column: 22, scope: !811)
!844 = !DILocation(line: 234, column: 31, scope: !845)
!845 = distinct !DILexicalBlock(scope: !811, file: !1, line: 234, column: 6)
!846 = !DILocation(line: 234, column: 40, scope: !845)
!847 = !DILocation(line: 234, column: 13, scope: !845)
!848 = !DILocation(line: 234, column: 11, scope: !845)
!849 = !DILocation(line: 234, column: 56, scope: !845)
!850 = !DILocation(line: 234, column: 6, scope: !811)
!851 = !DILocation(line: 235, column: 25, scope: !845)
!852 = !DILocation(line: 235, column: 18, scope: !845)
!853 = !DILocation(line: 236, column: 2, scope: !811)
!854 = !DILocation(line: 236, column: 11, scope: !811)
!855 = !DILocation(line: 236, column: 16, scope: !811)
!856 = !DILocation(line: 236, column: 21, scope: !811)
!857 = !DILocation(line: 237, column: 14, scope: !811)
!858 = !DILocation(line: 238, column: 5, scope: !811)
!859 = !DILocation(line: 240, column: 10, scope: !730)
!860 = !DILocation(line: 240, column: 21, scope: !730)
!861 = !DILocation(line: 240, column: 24, scope: !730)
!862 = !DILocation(line: 240, column: 34, scope: !730)
!863 = !DILocation(line: 240, column: 9, scope: !645)
!864 = !DILocation(line: 242, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !729, file: !1, line: 242, column: 6)
!866 = !DILocation(line: 242, column: 15, scope: !865)
!867 = !DILocation(line: 242, column: 6, scope: !729)
!868 = !DILocation(line: 242, column: 21, scope: !865)
!869 = !DILocation(line: 243, column: 2, scope: !729)
!870 = !DILocation(line: 243, column: 14, scope: !729)
!871 = !DILocation(line: 245, column: 17, scope: !728)
!872 = !DILocation(line: 245, column: 12, scope: !728)
!873 = !DILocation(line: 245, column: 10, scope: !728)
!874 = !DILocation(line: 246, column: 10, scope: !727)
!875 = !DILocation(line: 246, column: 17, scope: !727)
!876 = !DILocation(line: 246, column: 14, scope: !727)
!877 = !DILocation(line: 246, column: 26, scope: !727)
!878 = !DILocation(line: 246, column: 29, scope: !727)
!879 = !DILocation(line: 246, column: 36, scope: !727)
!880 = !DILocation(line: 246, column: 33, scope: !727)
!881 = !DILocation(line: 246, column: 44, scope: !727)
!882 = !DILocation(line: 247, column: 3, scope: !727)
!883 = !DILocation(line: 246, column: 10, scope: !728)
!884 = !DILocation(line: 0, scope: !727)
!885 = !DILocation(line: 249, column: 3, scope: !726)
!886 = !DILocation(line: 249, column: 7, scope: !726)
!887 = !DILocation(line: 249, column: 13, scope: !726)
!888 = !DILocation(line: 250, column: 10, scope: !726)
!889 = !DILocation(line: 250, column: 14, scope: !726)
!890 = !DILocation(line: 250, column: 8, scope: !726)
!891 = !DILocation(line: 251, column: 10, scope: !726)
!892 = !DILocation(line: 251, column: 15, scope: !726)
!893 = !DILocation(line: 251, column: 8, scope: !726)
!894 = !DILocation(line: 252, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !726, file: !1, line: 252, column: 7)
!896 = !DILocation(line: 252, column: 14, scope: !895)
!897 = !DILocation(line: 252, column: 12, scope: !895)
!898 = !DILocation(line: 252, column: 7, scope: !726)
!899 = !DILocation(line: 252, column: 31, scope: !895)
!900 = !DILocation(line: 252, column: 29, scope: !895)
!901 = !DILocation(line: 252, column: 24, scope: !895)
!902 = !DILocation(line: 253, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !726, file: !1, line: 253, column: 7)
!904 = !DILocation(line: 253, column: 14, scope: !903)
!905 = !DILocation(line: 253, column: 12, scope: !903)
!906 = !DILocation(line: 253, column: 7, scope: !726)
!907 = !DILocation(line: 253, column: 30, scope: !903)
!908 = !DILocation(line: 253, column: 28, scope: !903)
!909 = !DILocation(line: 253, column: 23, scope: !903)
!910 = !DILocation(line: 257, column: 14, scope: !911)
!911 = distinct !DILexicalBlock(scope: !726, file: !1, line: 257, column: 3)
!912 = !DILocation(line: 257, column: 12, scope: !911)
!913 = !DILocation(line: 257, column: 8, scope: !911)
!914 = !DILocation(line: 257, column: 20, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !1, line: 257, column: 3)
!916 = !DILocation(line: 257, column: 27, scope: !915)
!917 = !DILocation(line: 257, column: 24, scope: !915)
!918 = !DILocation(line: 257, column: 3, scope: !911)
!919 = !DILocation(line: 259, column: 12, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !1, line: 259, column: 11)
!921 = distinct !DILexicalBlock(scope: !915, file: !1, line: 258, column: 3)
!922 = !DILocation(line: 259, column: 11, scope: !921)
!923 = !DILocation(line: 0, scope: !920)
!924 = !DILocation(line: 259, column: 45, scope: !920)
!925 = !DILocation(line: 260, column: 49, scope: !921)
!926 = !DILocation(line: 260, column: 34, scope: !921)
!927 = !DILocation(line: 260, column: 47, scope: !921)
!928 = !DILocation(line: 260, column: 13, scope: !921)
!929 = !DILocation(line: 260, column: 26, scope: !921)
!930 = !DILocation(line: 261, column: 35, scope: !921)
!931 = !DILocation(line: 261, column: 49, scope: !921)
!932 = !DILocation(line: 261, column: 13, scope: !921)
!933 = !DILocation(line: 261, column: 27, scope: !921)
!934 = !DILocation(line: 262, column: 36, scope: !935)
!935 = distinct !DILexicalBlock(scope: !921, file: !1, line: 262, column: 11)
!936 = !DILocation(line: 262, column: 45, scope: !935)
!937 = !DILocation(line: 262, column: 18, scope: !935)
!938 = !DILocation(line: 262, column: 16, scope: !935)
!939 = !DILocation(line: 262, column: 61, scope: !935)
!940 = !DILocation(line: 262, column: 11, scope: !921)
!941 = !DILocation(line: 263, column: 30, scope: !935)
!942 = !DILocation(line: 263, column: 23, scope: !935)
!943 = !DILocation(line: 264, column: 7, scope: !921)
!944 = !DILocation(line: 264, column: 16, scope: !921)
!945 = !DILocation(line: 264, column: 22, scope: !921)
!946 = !DILocation(line: 264, column: 20, scope: !921)
!947 = !DILocation(line: 264, column: 32, scope: !921)
!948 = !DILocation(line: 264, column: 37, scope: !921)
!949 = !DILocation(line: 265, column: 19, scope: !921)
!950 = !DILocation(line: 266, column: 3, scope: !921)
!951 = !DILocation(line: 257, column: 36, scope: !915)
!952 = !DILocation(line: 257, column: 3, scope: !915)
!953 = distinct !{!953, !918, !954, !542}
!954 = !DILocation(line: 266, column: 3, scope: !911)
!955 = !DILocation(line: 267, column: 6, scope: !727)
!956 = !DILocation(line: 267, column: 6, scope: !726)
!957 = distinct !{!957, !869, !958, !542}
!958 = !DILocation(line: 268, column: 2, scope: !729)
!959 = !DILocation(line: 269, column: 5, scope: !729)
!960 = !DILocation(line: 272, column: 2, scope: !733)
!961 = !DILocation(line: 272, column: 10, scope: !733)
!962 = !DILocation(line: 274, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !733, file: !1, line: 274, column: 6)
!964 = !DILocation(line: 274, column: 17, scope: !963)
!965 = !DILocation(line: 274, column: 20, scope: !963)
!966 = !DILocation(line: 274, column: 26, scope: !963)
!967 = !DILocation(line: 274, column: 6, scope: !733)
!968 = !DILocation(line: 276, column: 12, scope: !969)
!969 = distinct !DILexicalBlock(scope: !963, file: !1, line: 275, column: 2)
!970 = !DILocation(line: 277, column: 30, scope: !969)
!971 = !DILocation(line: 277, column: 11, scope: !969)
!972 = !DILocation(line: 278, column: 35, scope: !969)
!973 = !DILocation(line: 278, column: 6, scope: !969)
!974 = !DILocation(line: 278, column: 19, scope: !969)
!975 = !DILocation(line: 278, column: 33, scope: !969)
!976 = !DILocation(line: 279, column: 34, scope: !969)
!977 = !DILocation(line: 279, column: 6, scope: !969)
!978 = !DILocation(line: 279, column: 19, scope: !969)
!979 = !DILocation(line: 279, column: 32, scope: !969)
!980 = !DILocation(line: 280, column: 35, scope: !969)
!981 = !DILocation(line: 280, column: 6, scope: !969)
!982 = !DILocation(line: 280, column: 19, scope: !969)
!983 = !DILocation(line: 280, column: 33, scope: !969)
!984 = !DILocation(line: 281, column: 34, scope: !969)
!985 = !DILocation(line: 281, column: 6, scope: !969)
!986 = !DILocation(line: 281, column: 19, scope: !969)
!987 = !DILocation(line: 281, column: 32, scope: !969)
!988 = !DILocation(line: 282, column: 2, scope: !969)
!989 = !DILocation(line: 284, column: 2, scope: !733)
!990 = !DILocation(line: 284, column: 14, scope: !733)
!991 = !DILocation(line: 286, column: 6, scope: !738)
!992 = !DILocation(line: 286, column: 10, scope: !738)
!993 = !DILocation(line: 286, column: 16, scope: !738)
!994 = !DILocation(line: 286, column: 22, scope: !738)
!995 = !DILocation(line: 286, column: 28, scope: !738)
!996 = !DILocation(line: 287, column: 25, scope: !738)
!997 = !DILocation(line: 287, column: 20, scope: !738)
!998 = !DILocation(line: 287, column: 18, scope: !738)
!999 = !DILocation(line: 287, column: 11, scope: !738)
!1000 = !DILocation(line: 288, column: 25, scope: !738)
!1001 = !DILocation(line: 288, column: 20, scope: !738)
!1002 = !DILocation(line: 288, column: 18, scope: !738)
!1003 = !DILocation(line: 288, column: 11, scope: !738)
!1004 = !DILocation(line: 289, column: 10, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !738, file: !1, line: 289, column: 10)
!1006 = !DILocation(line: 289, column: 10, scope: !738)
!1007 = !DILocation(line: 291, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 291, column: 7)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 290, column: 6)
!1010 = !DILocation(line: 291, column: 7, scope: !1009)
!1011 = !DILocation(line: 293, column: 19, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 292, column: 3)
!1013 = !DILocation(line: 293, column: 14, scope: !1012)
!1014 = !DILocation(line: 293, column: 12, scope: !1012)
!1015 = !DILocation(line: 294, column: 19, scope: !1012)
!1016 = !DILocation(line: 294, column: 14, scope: !1012)
!1017 = !DILocation(line: 294, column: 12, scope: !1012)
!1018 = !DILocation(line: 295, column: 12, scope: !1012)
!1019 = !DILocation(line: 296, column: 3, scope: !1012)
!1020 = !DILocation(line: 299, column: 14, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 298, column: 3)
!1022 = !DILocation(line: 299, column: 12, scope: !1021)
!1023 = !DILocation(line: 300, column: 14, scope: !1021)
!1024 = !DILocation(line: 300, column: 12, scope: !1021)
!1025 = !DILocation(line: 302, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 302, column: 7)
!1027 = !DILocation(line: 302, column: 14, scope: !1026)
!1028 = !DILocation(line: 302, column: 12, scope: !1026)
!1029 = !DILocation(line: 302, column: 7, scope: !1009)
!1030 = !DILocation(line: 302, column: 31, scope: !1026)
!1031 = !DILocation(line: 302, column: 29, scope: !1026)
!1032 = !DILocation(line: 302, column: 24, scope: !1026)
!1033 = !DILocation(line: 303, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 303, column: 7)
!1035 = !DILocation(line: 303, column: 14, scope: !1034)
!1036 = !DILocation(line: 303, column: 12, scope: !1034)
!1037 = !DILocation(line: 303, column: 7, scope: !1009)
!1038 = !DILocation(line: 303, column: 30, scope: !1034)
!1039 = !DILocation(line: 303, column: 28, scope: !1034)
!1040 = !DILocation(line: 303, column: 23, scope: !1034)
!1041 = !DILocation(line: 304, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 304, column: 7)
!1043 = !DILocation(line: 304, column: 14, scope: !1042)
!1044 = !DILocation(line: 304, column: 12, scope: !1042)
!1045 = !DILocation(line: 304, column: 7, scope: !1009)
!1046 = !DILocation(line: 304, column: 31, scope: !1042)
!1047 = !DILocation(line: 304, column: 29, scope: !1042)
!1048 = !DILocation(line: 304, column: 24, scope: !1042)
!1049 = !DILocation(line: 305, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 305, column: 7)
!1051 = !DILocation(line: 305, column: 14, scope: !1050)
!1052 = !DILocation(line: 305, column: 12, scope: !1050)
!1053 = !DILocation(line: 305, column: 7, scope: !1009)
!1054 = !DILocation(line: 305, column: 30, scope: !1050)
!1055 = !DILocation(line: 305, column: 28, scope: !1050)
!1056 = !DILocation(line: 305, column: 23, scope: !1050)
!1057 = !DILocation(line: 306, column: 6, scope: !1009)
!1058 = !DILocation(line: 309, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 309, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 308, column: 6)
!1061 = !DILocation(line: 309, column: 14, scope: !1059)
!1062 = !DILocation(line: 309, column: 12, scope: !1059)
!1063 = !DILocation(line: 309, column: 23, scope: !1059)
!1064 = !DILocation(line: 309, column: 26, scope: !1059)
!1065 = !DILocation(line: 309, column: 33, scope: !1059)
!1066 = !DILocation(line: 309, column: 31, scope: !1059)
!1067 = !DILocation(line: 309, column: 41, scope: !1059)
!1068 = !DILocation(line: 310, column: 7, scope: !1059)
!1069 = !DILocation(line: 310, column: 14, scope: !1059)
!1070 = !DILocation(line: 310, column: 12, scope: !1059)
!1071 = !DILocation(line: 310, column: 23, scope: !1059)
!1072 = !DILocation(line: 310, column: 26, scope: !1059)
!1073 = !DILocation(line: 310, column: 33, scope: !1059)
!1074 = !DILocation(line: 310, column: 31, scope: !1059)
!1075 = !DILocation(line: 309, column: 7, scope: !1060)
!1076 = !DILocation(line: 311, column: 7, scope: !1059)
!1077 = distinct !{!1077, !989, !1078, !542}
!1078 = !DILocation(line: 345, column: 2, scope: !733)
!1079 = !DILocation(line: 313, column: 17, scope: !745)
!1080 = !DILocation(line: 313, column: 15, scope: !745)
!1081 = !DILocation(line: 313, column: 11, scope: !745)
!1082 = !DILocation(line: 313, column: 23, scope: !744)
!1083 = !DILocation(line: 313, column: 30, scope: !744)
!1084 = !DILocation(line: 313, column: 27, scope: !744)
!1085 = !DILocation(line: 313, column: 6, scope: !745)
!1086 = !DILocation(line: 314, column: 6, scope: !744)
!1087 = !DILocation(line: 315, column: 6, scope: !743)
!1088 = !DILocation(line: 316, column: 10, scope: !743)
!1089 = !DILocation(line: 316, column: 16, scope: !743)
!1090 = !DILocation(line: 316, column: 14, scope: !743)
!1091 = !DILocation(line: 316, column: 29, scope: !743)
!1092 = !DILocation(line: 316, column: 37, scope: !743)
!1093 = !DILocation(line: 316, column: 43, scope: !743)
!1094 = !DILocation(line: 316, column: 41, scope: !743)
!1095 = !DILocation(line: 316, column: 26, scope: !743)
!1096 = !DILocation(line: 317, column: 10, scope: !743)
!1097 = !DILocation(line: 317, column: 17, scope: !743)
!1098 = !DILocation(line: 317, column: 15, scope: !743)
!1099 = !DILocation(line: 316, column: 53, scope: !743)
!1100 = !DILocation(line: 316, column: 7, scope: !743)
!1101 = !DILocation(line: 318, column: 14, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !743, file: !1, line: 318, column: 3)
!1103 = !DILocation(line: 318, column: 12, scope: !1102)
!1104 = !DILocation(line: 318, column: 8, scope: !1102)
!1105 = !DILocation(line: 318, column: 20, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 318, column: 3)
!1107 = !DILocation(line: 318, column: 27, scope: !1106)
!1108 = !DILocation(line: 318, column: 24, scope: !1106)
!1109 = !DILocation(line: 318, column: 3, scope: !1102)
!1110 = !DILocation(line: 320, column: 11, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 320, column: 11)
!1112 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 319, column: 3)
!1113 = !DILocation(line: 320, column: 11, scope: !1112)
!1114 = !DILocation(line: 0, scope: !1111)
!1115 = !DILocation(line: 322, column: 8, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 322, column: 8)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 321, column: 7)
!1118 = !DILocation(line: 322, column: 16, scope: !1116)
!1119 = !DILocation(line: 322, column: 13, scope: !1116)
!1120 = !DILocation(line: 322, column: 21, scope: !1116)
!1121 = !DILocation(line: 323, column: 11, scope: !1116)
!1122 = !DILocation(line: 323, column: 16, scope: !1116)
!1123 = !DILocation(line: 323, column: 23, scope: !1116)
!1124 = !DILocation(line: 323, column: 26, scope: !1116)
!1125 = !DILocation(line: 323, column: 33, scope: !1116)
!1126 = !DILocation(line: 323, column: 31, scope: !1116)
!1127 = !DILocation(line: 323, column: 43, scope: !1116)
!1128 = !DILocation(line: 324, column: 10, scope: !1116)
!1129 = !DILocation(line: 324, column: 15, scope: !1116)
!1130 = !DILocation(line: 324, column: 22, scope: !1116)
!1131 = !DILocation(line: 324, column: 30, scope: !1116)
!1132 = !DILocation(line: 324, column: 34, scope: !1116)
!1133 = !DILocation(line: 324, column: 41, scope: !1116)
!1134 = !DILocation(line: 324, column: 39, scope: !1116)
!1135 = !DILocation(line: 322, column: 8, scope: !1117)
!1136 = !DILocation(line: 330, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 325, column: 4)
!1138 = !DILocation(line: 331, column: 16, scope: !1137)
!1139 = !DILocation(line: 331, column: 21, scope: !1137)
!1140 = !DILocation(line: 331, column: 29, scope: !1137)
!1141 = !DILocation(line: 331, column: 13, scope: !1137)
!1142 = !DILocation(line: 332, column: 12, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 332, column: 12)
!1144 = !DILocation(line: 332, column: 19, scope: !1143)
!1145 = !DILocation(line: 332, column: 17, scope: !1143)
!1146 = !DILocation(line: 332, column: 12, scope: !1137)
!1147 = !DILocation(line: 332, column: 36, scope: !1143)
!1148 = !DILocation(line: 332, column: 34, scope: !1143)
!1149 = !DILocation(line: 332, column: 29, scope: !1143)
!1150 = !DILocation(line: 333, column: 12, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 333, column: 12)
!1152 = !DILocation(line: 333, column: 19, scope: !1151)
!1153 = !DILocation(line: 333, column: 17, scope: !1151)
!1154 = !DILocation(line: 333, column: 12, scope: !1137)
!1155 = !DILocation(line: 333, column: 35, scope: !1151)
!1156 = !DILocation(line: 333, column: 33, scope: !1151)
!1157 = !DILocation(line: 333, column: 28, scope: !1151)
!1158 = !DILocation(line: 334, column: 8, scope: !1137)
!1159 = !DILocation(line: 336, column: 46, scope: !1117)
!1160 = !DILocation(line: 336, column: 31, scope: !1117)
!1161 = !DILocation(line: 336, column: 44, scope: !1117)
!1162 = !DILocation(line: 336, column: 10, scope: !1117)
!1163 = !DILocation(line: 336, column: 23, scope: !1117)
!1164 = !DILocation(line: 337, column: 48, scope: !1117)
!1165 = !DILocation(line: 337, column: 32, scope: !1117)
!1166 = !DILocation(line: 337, column: 46, scope: !1117)
!1167 = !DILocation(line: 337, column: 10, scope: !1117)
!1168 = !DILocation(line: 337, column: 24, scope: !1117)
!1169 = !DILocation(line: 338, column: 33, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 338, column: 8)
!1171 = !DILocation(line: 338, column: 42, scope: !1170)
!1172 = !DILocation(line: 338, column: 15, scope: !1170)
!1173 = !DILocation(line: 338, column: 13, scope: !1170)
!1174 = !DILocation(line: 338, column: 58, scope: !1170)
!1175 = !DILocation(line: 338, column: 8, scope: !1117)
!1176 = !DILocation(line: 339, column: 27, scope: !1170)
!1177 = !DILocation(line: 339, column: 20, scope: !1170)
!1178 = !DILocation(line: 340, column: 4, scope: !1117)
!1179 = !DILocation(line: 340, column: 13, scope: !1117)
!1180 = !DILocation(line: 340, column: 18, scope: !1117)
!1181 = !DILocation(line: 340, column: 23, scope: !1117)
!1182 = !DILocation(line: 341, column: 16, scope: !1117)
!1183 = !DILocation(line: 342, column: 7, scope: !1117)
!1184 = !DILocation(line: 343, column: 3, scope: !1112)
!1185 = !DILocation(line: 318, column: 36, scope: !1106)
!1186 = !DILocation(line: 318, column: 43, scope: !1106)
!1187 = !DILocation(line: 318, column: 3, scope: !1106)
!1188 = distinct !{!1188, !1109, !1189, !542}
!1189 = !DILocation(line: 343, column: 3, scope: !1102)
!1190 = !DILocation(line: 344, column: 6, scope: !743)
!1191 = !DILocation(line: 313, column: 39, scope: !744)
!1192 = !DILocation(line: 313, column: 6, scope: !744)
!1193 = distinct !{!1193, !1085, !1194, !542}
!1194 = !DILocation(line: 344, column: 6, scope: !745)
!1195 = !DILocation(line: 346, column: 5, scope: !730)
!1196 = !DILocation(line: 348, column: 12, scope: !645)
!1197 = !DILocation(line: 348, column: 5, scope: !645)
!1198 = !DILocation(line: 351, column: 1, scope: !645)
!1199 = !DISubprogram(name: "add_range", scope: !330, file: !330, line: 21, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!16, !695, !693, !694, !146}
!1202 = distinct !DISubprogram(name: "_fs_clean_aborted_loadglyphs", scope: !1, file: !1, line: 362, type: !1203, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !648, !16, !695}
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1214, !1218, !1219}
!1206 = !DILocalVariable(name: "pfont", arg: 1, scope: !1202, file: !1, line: 362, type: !648)
!1207 = !DILocalVariable(name: "num_expected_ranges", arg: 2, scope: !1202, file: !1, line: 362, type: !16)
!1208 = !DILocalVariable(name: "expected_ranges", arg: 3, scope: !1202, file: !1, line: 363, type: !695)
!1209 = !DILocalVariable(name: "fsfont", scope: !1202, file: !1, line: 365, type: !36)
!1210 = !DILocalVariable(name: "i", scope: !1202, file: !1, line: 366, type: !16)
!1211 = !DILocalVariable(name: "full_range", scope: !1212, file: !1, line: 371, type: !734)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 370, column: 5)
!1213 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 369, column: 9)
!1214 = !DILocalVariable(name: "row", scope: !1215, file: !1, line: 384, type: !16)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 383, column: 2)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 382, column: 2)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 382, column: 2)
!1218 = !DILocalVariable(name: "col", scope: !1215, file: !1, line: 384, type: !16)
!1219 = !DILocalVariable(name: "encoding", scope: !1220, file: !1, line: 389, type: !41)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 388, column: 6)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 385, column: 6)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 385, column: 6)
!1223 = !DILocation(line: 362, column: 38, scope: !1202)
!1224 = !DILocation(line: 362, column: 49, scope: !1202)
!1225 = !DILocation(line: 363, column: 18, scope: !1202)
!1226 = !DILocation(line: 365, column: 5, scope: !1202)
!1227 = !DILocation(line: 365, column: 24, scope: !1202)
!1228 = !DILocation(line: 366, column: 5, scope: !1202)
!1229 = !DILocation(line: 366, column: 18, scope: !1202)
!1230 = !DILocation(line: 368, column: 26, scope: !1202)
!1231 = !DILocation(line: 368, column: 33, scope: !1202)
!1232 = !DILocation(line: 368, column: 12, scope: !1202)
!1233 = !DILocation(line: 369, column: 9, scope: !1213)
!1234 = !DILocation(line: 369, column: 17, scope: !1213)
!1235 = !DILocation(line: 369, column: 9, scope: !1202)
!1236 = !DILocation(line: 371, column: 2, scope: !1212)
!1237 = !DILocation(line: 371, column: 10, scope: !1212)
!1238 = !DILocation(line: 372, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 372, column: 6)
!1240 = !DILocation(line: 372, column: 6, scope: !1212)
!1241 = !DILocation(line: 374, column: 35, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 373, column: 2)
!1243 = !DILocation(line: 374, column: 42, scope: !1242)
!1244 = !DILocation(line: 374, column: 47, scope: !1242)
!1245 = !DILocation(line: 374, column: 6, scope: !1242)
!1246 = !DILocation(line: 374, column: 20, scope: !1242)
!1247 = !DILocation(line: 374, column: 33, scope: !1242)
!1248 = !DILocation(line: 375, column: 36, scope: !1242)
!1249 = !DILocation(line: 375, column: 43, scope: !1242)
!1250 = !DILocation(line: 375, column: 48, scope: !1242)
!1251 = !DILocation(line: 375, column: 6, scope: !1242)
!1252 = !DILocation(line: 375, column: 20, scope: !1242)
!1253 = !DILocation(line: 375, column: 34, scope: !1242)
!1254 = !DILocation(line: 376, column: 35, scope: !1242)
!1255 = !DILocation(line: 376, column: 42, scope: !1242)
!1256 = !DILocation(line: 376, column: 47, scope: !1242)
!1257 = !DILocation(line: 376, column: 6, scope: !1242)
!1258 = !DILocation(line: 376, column: 20, scope: !1242)
!1259 = !DILocation(line: 376, column: 33, scope: !1242)
!1260 = !DILocation(line: 377, column: 36, scope: !1242)
!1261 = !DILocation(line: 377, column: 43, scope: !1242)
!1262 = !DILocation(line: 377, column: 48, scope: !1242)
!1263 = !DILocation(line: 377, column: 6, scope: !1242)
!1264 = !DILocation(line: 377, column: 20, scope: !1242)
!1265 = !DILocation(line: 377, column: 34, scope: !1242)
!1266 = !DILocation(line: 378, column: 26, scope: !1242)
!1267 = !DILocation(line: 379, column: 24, scope: !1242)
!1268 = !DILocation(line: 379, column: 22, scope: !1242)
!1269 = !DILocation(line: 380, column: 2, scope: !1242)
!1270 = !DILocation(line: 382, column: 9, scope: !1217)
!1271 = !DILocation(line: 382, column: 7, scope: !1217)
!1272 = !DILocation(line: 382, column: 14, scope: !1216)
!1273 = !DILocation(line: 382, column: 18, scope: !1216)
!1274 = !DILocation(line: 382, column: 16, scope: !1216)
!1275 = !DILocation(line: 382, column: 2, scope: !1217)
!1276 = !DILocation(line: 384, column: 6, scope: !1215)
!1277 = !DILocation(line: 384, column: 10, scope: !1215)
!1278 = !DILocation(line: 384, column: 15, scope: !1215)
!1279 = !DILocation(line: 385, column: 17, scope: !1222)
!1280 = !DILocation(line: 385, column: 33, scope: !1222)
!1281 = !DILocation(line: 385, column: 36, scope: !1222)
!1282 = !DILocation(line: 385, column: 15, scope: !1222)
!1283 = !DILocation(line: 385, column: 11, scope: !1222)
!1284 = !DILocation(line: 386, column: 4, scope: !1221)
!1285 = !DILocation(line: 386, column: 11, scope: !1221)
!1286 = !DILocation(line: 386, column: 27, scope: !1221)
!1287 = !DILocation(line: 386, column: 30, scope: !1221)
!1288 = !DILocation(line: 386, column: 8, scope: !1221)
!1289 = !DILocation(line: 385, column: 6, scope: !1222)
!1290 = !DILocation(line: 389, column: 3, scope: !1220)
!1291 = !DILocation(line: 389, column: 24, scope: !1220)
!1292 = !DILocation(line: 389, column: 35, scope: !1220)
!1293 = !DILocation(line: 389, column: 43, scope: !1220)
!1294 = !DILocation(line: 390, column: 9, scope: !1220)
!1295 = !DILocation(line: 390, column: 15, scope: !1220)
!1296 = !DILocation(line: 390, column: 22, scope: !1220)
!1297 = !DILocation(line: 390, column: 27, scope: !1220)
!1298 = !DILocation(line: 390, column: 13, scope: !1220)
!1299 = !DILocation(line: 391, column: 9, scope: !1220)
!1300 = !DILocation(line: 391, column: 16, scope: !1220)
!1301 = !DILocation(line: 391, column: 21, scope: !1220)
!1302 = !DILocation(line: 392, column: 9, scope: !1220)
!1303 = !DILocation(line: 392, column: 16, scope: !1220)
!1304 = !DILocation(line: 392, column: 21, scope: !1220)
!1305 = !DILocation(line: 391, column: 29, scope: !1220)
!1306 = !DILocation(line: 392, column: 30, scope: !1220)
!1307 = !DILocation(line: 390, column: 37, scope: !1220)
!1308 = !DILocation(line: 393, column: 8, scope: !1220)
!1309 = !DILocation(line: 393, column: 24, scope: !1220)
!1310 = !DILocation(line: 393, column: 27, scope: !1220)
!1311 = !DILocation(line: 392, column: 35, scope: !1220)
!1312 = !DILocation(line: 394, column: 8, scope: !1220)
!1313 = !DILocation(line: 394, column: 15, scope: !1220)
!1314 = !DILocation(line: 394, column: 20, scope: !1220)
!1315 = !DILocation(line: 393, column: 40, scope: !1220)
!1316 = !DILocation(line: 389, column: 52, scope: !1220)
!1317 = !DILocation(line: 395, column: 14, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 395, column: 3)
!1319 = !DILocation(line: 395, column: 30, scope: !1318)
!1320 = !DILocation(line: 395, column: 33, scope: !1318)
!1321 = !DILocation(line: 395, column: 12, scope: !1318)
!1322 = !DILocation(line: 395, column: 8, scope: !1318)
!1323 = !DILocation(line: 396, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 395, column: 3)
!1325 = !DILocation(line: 396, column: 15, scope: !1324)
!1326 = !DILocation(line: 396, column: 31, scope: !1324)
!1327 = !DILocation(line: 396, column: 34, scope: !1324)
!1328 = !DILocation(line: 396, column: 12, scope: !1324)
!1329 = !DILocation(line: 395, column: 3, scope: !1318)
!1330 = !DILocation(line: 399, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 399, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 398, column: 3)
!1333 = !DILocation(line: 399, column: 21, scope: !1331)
!1334 = !DILocation(line: 399, column: 26, scope: !1331)
!1335 = !DILocation(line: 399, column: 11, scope: !1332)
!1336 = !DILocation(line: 400, column: 4, scope: !1331)
!1337 = !DILocation(line: 400, column: 14, scope: !1331)
!1338 = !DILocation(line: 400, column: 19, scope: !1331)
!1339 = !DILocation(line: 401, column: 3, scope: !1332)
!1340 = !DILocation(line: 397, column: 16, scope: !1324)
!1341 = !DILocation(line: 397, column: 23, scope: !1324)
!1342 = !DILocation(line: 395, column: 3, scope: !1324)
!1343 = distinct !{!1343, !1329, !1344, !542}
!1344 = !DILocation(line: 401, column: 3, scope: !1318)
!1345 = !DILocation(line: 402, column: 6, scope: !1221)
!1346 = !DILocation(line: 402, column: 6, scope: !1220)
!1347 = !DILocation(line: 387, column: 7, scope: !1221)
!1348 = !DILocation(line: 385, column: 6, scope: !1221)
!1349 = distinct !{!1349, !1289, !1350, !542}
!1350 = !DILocation(line: 402, column: 6, scope: !1222)
!1351 = !DILocation(line: 403, column: 2, scope: !1216)
!1352 = !DILocation(line: 403, column: 2, scope: !1215)
!1353 = !DILocation(line: 382, column: 40, scope: !1216)
!1354 = !DILocation(line: 382, column: 2, scope: !1216)
!1355 = distinct !{!1355, !1275, !1356, !542}
!1356 = !DILocation(line: 403, column: 2, scope: !1217)
!1357 = !DILocation(line: 404, column: 5, scope: !1213)
!1358 = !DILocation(line: 404, column: 5, scope: !1212)
!1359 = !DILocation(line: 405, column: 1, scope: !1202)
!1360 = distinct !DISubprogram(name: "fs_create_font", scope: !1, file: !1, line: 645, type: !1361, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!648, !678, !557, !16, !31, !35}
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1364 = !DILocalVariable(name: "fpe", arg: 1, scope: !1360, file: !1, line: 645, type: !678)
!1365 = !DILocalVariable(name: "name", arg: 2, scope: !1360, file: !1, line: 646, type: !557)
!1366 = !DILocalVariable(name: "namelen", arg: 3, scope: !1360, file: !1, line: 647, type: !16)
!1367 = !DILocalVariable(name: "format", arg: 4, scope: !1360, file: !1, line: 648, type: !31)
!1368 = !DILocalVariable(name: "fmask", arg: 5, scope: !1360, file: !1, line: 649, type: !35)
!1369 = !DILocalVariable(name: "pfont", scope: !1360, file: !1, line: 651, type: !648)
!1370 = !DILocalVariable(name: "fsfont", scope: !1360, file: !1, line: 652, type: !36)
!1371 = !DILocalVariable(name: "fsd", scope: !1360, file: !1, line: 653, type: !17)
!1372 = !DILocalVariable(name: "bit", scope: !1360, file: !1, line: 654, type: !16)
!1373 = !DILocalVariable(name: "byte", scope: !1360, file: !1, line: 654, type: !16)
!1374 = !DILocalVariable(name: "scan", scope: !1360, file: !1, line: 654, type: !16)
!1375 = !DILocalVariable(name: "glyph", scope: !1360, file: !1, line: 654, type: !16)
!1376 = !DILocation(line: 645, column: 37, scope: !1360)
!1377 = !DILocation(line: 646, column: 19, scope: !1360)
!1378 = !DILocation(line: 647, column: 12, scope: !1360)
!1379 = !DILocation(line: 648, column: 22, scope: !1360)
!1380 = !DILocation(line: 649, column: 23, scope: !1360)
!1381 = !DILocation(line: 651, column: 5, scope: !1360)
!1382 = !DILocation(line: 651, column: 17, scope: !1360)
!1383 = !DILocation(line: 652, column: 5, scope: !1360)
!1384 = !DILocation(line: 652, column: 19, scope: !1360)
!1385 = !DILocation(line: 653, column: 5, scope: !1360)
!1386 = !DILocation(line: 653, column: 21, scope: !1360)
!1387 = !DILocation(line: 654, column: 5, scope: !1360)
!1388 = !DILocation(line: 654, column: 14, scope: !1360)
!1389 = !DILocation(line: 654, column: 19, scope: !1360)
!1390 = !DILocation(line: 654, column: 25, scope: !1360)
!1391 = !DILocation(line: 654, column: 31, scope: !1360)
!1392 = !DILocation(line: 656, column: 13, scope: !1360)
!1393 = !DILocation(line: 656, column: 11, scope: !1360)
!1394 = !DILocation(line: 657, column: 10, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 657, column: 9)
!1396 = !DILocation(line: 657, column: 9, scope: !1360)
!1397 = !DILocation(line: 658, column: 2, scope: !1395)
!1398 = !DILocation(line: 659, column: 68, scope: !1360)
!1399 = !DILocation(line: 659, column: 66, scope: !1360)
!1400 = !DILocation(line: 659, column: 76, scope: !1360)
!1401 = !DILocation(line: 659, column: 14, scope: !1360)
!1402 = !DILocation(line: 659, column: 12, scope: !1360)
!1403 = !DILocation(line: 660, column: 10, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 660, column: 9)
!1405 = !DILocation(line: 660, column: 9, scope: !1360)
!1406 = !DILocation(line: 662, column: 18, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 661, column: 5)
!1408 = !DILocation(line: 662, column: 2, scope: !1407)
!1409 = !DILocation(line: 663, column: 2, scope: !1407)
!1410 = !DILocation(line: 665, column: 28, scope: !1360)
!1411 = !DILocation(line: 665, column: 35, scope: !1360)
!1412 = !DILocation(line: 665, column: 9, scope: !1360)
!1413 = !DILocation(line: 666, column: 5, scope: !1360)
!1414 = !DILocation(line: 667, column: 5, scope: !1360)
!1415 = !DILocation(line: 669, column: 18, scope: !1360)
!1416 = !DILocation(line: 669, column: 5, scope: !1360)
!1417 = !DILocation(line: 669, column: 12, scope: !1360)
!1418 = !DILocation(line: 669, column: 16, scope: !1360)
!1419 = !DILocation(line: 670, column: 36, scope: !1360)
!1420 = !DILocation(line: 670, column: 5, scope: !1360)
!1421 = !DILocation(line: 670, column: 12, scope: !1360)
!1422 = !DILocation(line: 670, column: 24, scope: !1360)
!1423 = !DILocation(line: 671, column: 35, scope: !1360)
!1424 = !DILocation(line: 671, column: 5, scope: !1360)
!1425 = !DILocation(line: 671, column: 12, scope: !1360)
!1426 = !DILocation(line: 671, column: 23, scope: !1360)
!1427 = !DILocation(line: 674, column: 19, scope: !1360)
!1428 = !DILocation(line: 674, column: 5, scope: !1360)
!1429 = !DILocation(line: 683, column: 21, scope: !1360)
!1430 = !DILocation(line: 683, column: 5, scope: !1360)
!1431 = !DILocation(line: 683, column: 12, scope: !1360)
!1432 = !DILocation(line: 683, column: 19, scope: !1360)
!1433 = !DILocation(line: 684, column: 18, scope: !1360)
!1434 = !DILocation(line: 684, column: 5, scope: !1360)
!1435 = !DILocation(line: 684, column: 12, scope: !1360)
!1436 = !DILocation(line: 684, column: 16, scope: !1360)
!1437 = !DILocation(line: 685, column: 19, scope: !1360)
!1438 = !DILocation(line: 685, column: 5, scope: !1360)
!1439 = !DILocation(line: 685, column: 12, scope: !1360)
!1440 = !DILocation(line: 685, column: 17, scope: !1360)
!1441 = !DILocation(line: 686, column: 19, scope: !1360)
!1442 = !DILocation(line: 686, column: 5, scope: !1360)
!1443 = !DILocation(line: 686, column: 12, scope: !1360)
!1444 = !DILocation(line: 686, column: 17, scope: !1360)
!1445 = !DILocation(line: 687, column: 20, scope: !1360)
!1446 = !DILocation(line: 687, column: 5, scope: !1360)
!1447 = !DILocation(line: 687, column: 12, scope: !1360)
!1448 = !DILocation(line: 687, column: 18, scope: !1360)
!1449 = !DILocation(line: 689, column: 5, scope: !1360)
!1450 = !DILocation(line: 689, column: 12, scope: !1360)
!1451 = !DILocation(line: 689, column: 17, scope: !1360)
!1452 = !DILocation(line: 689, column: 24, scope: !1360)
!1453 = !DILocation(line: 690, column: 5, scope: !1360)
!1454 = !DILocation(line: 690, column: 12, scope: !1360)
!1455 = !DILocation(line: 690, column: 17, scope: !1360)
!1456 = !DILocation(line: 690, column: 23, scope: !1360)
!1457 = !DILocation(line: 691, column: 5, scope: !1360)
!1458 = !DILocation(line: 691, column: 12, scope: !1360)
!1459 = !DILocation(line: 691, column: 17, scope: !1360)
!1460 = !DILocation(line: 691, column: 30, scope: !1360)
!1461 = !DILocation(line: 694, column: 5, scope: !1360)
!1462 = !DILocation(line: 694, column: 12, scope: !1360)
!1463 = !DILocation(line: 694, column: 23, scope: !1360)
!1464 = !DILocation(line: 695, column: 5, scope: !1360)
!1465 = !DILocation(line: 695, column: 12, scope: !1360)
!1466 = !DILocation(line: 695, column: 24, scope: !1360)
!1467 = !DILocation(line: 696, column: 5, scope: !1360)
!1468 = !DILocation(line: 696, column: 12, scope: !1360)
!1469 = !DILocation(line: 696, column: 24, scope: !1360)
!1470 = !DILocation(line: 697, column: 5, scope: !1360)
!1471 = !DILocation(line: 697, column: 12, scope: !1360)
!1472 = !DILocation(line: 697, column: 26, scope: !1360)
!1473 = !DILocation(line: 700, column: 19, scope: !1360)
!1474 = !DILocation(line: 700, column: 5, scope: !1360)
!1475 = !DILocation(line: 700, column: 10, scope: !1360)
!1476 = !DILocation(line: 700, column: 17, scope: !1360)
!1477 = !DILocation(line: 701, column: 18, scope: !1360)
!1478 = !DILocation(line: 701, column: 5, scope: !1360)
!1479 = !DILocation(line: 701, column: 10, scope: !1360)
!1480 = !DILocation(line: 701, column: 16, scope: !1360)
!1481 = !DILocation(line: 702, column: 27, scope: !1360)
!1482 = !DILocation(line: 702, column: 31, scope: !1360)
!1483 = !DILocation(line: 702, column: 5, scope: !1360)
!1484 = !DILocation(line: 702, column: 10, scope: !1360)
!1485 = !DILocation(line: 702, column: 15, scope: !1360)
!1486 = !DILocation(line: 703, column: 13, scope: !1360)
!1487 = !DILocation(line: 703, column: 18, scope: !1360)
!1488 = !DILocation(line: 703, column: 24, scope: !1360)
!1489 = !DILocation(line: 703, column: 30, scope: !1360)
!1490 = !DILocation(line: 703, column: 5, scope: !1360)
!1491 = !DILocation(line: 704, column: 5, scope: !1360)
!1492 = !DILocation(line: 704, column: 10, scope: !1360)
!1493 = !DILocation(line: 704, column: 15, scope: !1360)
!1494 = !DILocation(line: 704, column: 24, scope: !1360)
!1495 = !DILocation(line: 705, column: 19, scope: !1360)
!1496 = !DILocation(line: 705, column: 5, scope: !1360)
!1497 = !DILocation(line: 705, column: 10, scope: !1360)
!1498 = !DILocation(line: 705, column: 17, scope: !1360)
!1499 = !DILocation(line: 708, column: 30, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 708, column: 9)
!1501 = !DILocation(line: 708, column: 37, scope: !1500)
!1502 = !DILocation(line: 708, column: 42, scope: !1500)
!1503 = !DILocation(line: 708, column: 10, scope: !1500)
!1504 = !DILocation(line: 708, column: 9, scope: !1360)
!1505 = !DILocation(line: 710, column: 8, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1500, file: !1, line: 709, column: 5)
!1507 = !DILocation(line: 710, column: 2, scope: !1506)
!1508 = !DILocation(line: 711, column: 18, scope: !1506)
!1509 = !DILocation(line: 711, column: 2, scope: !1506)
!1510 = !DILocation(line: 712, column: 2, scope: !1506)
!1511 = !DILocation(line: 715, column: 12, scope: !1360)
!1512 = !DILocation(line: 715, column: 5, scope: !1360)
!1513 = !DILocation(line: 716, column: 1, scope: !1360)
!1514 = !DISubprogram(name: "CreateFontRec", scope: !1515, file: !1515, line: 73, type: !1516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1515 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spac/linux-ubuntu22.04-zen2/clang-18.0.0/fontsproto-2.1.3-b3ds5xiancrlyhfaooh5rnsbzohsusmb/include/X11/fonts/fontproto.h", directory: "/local-ssd/libxfont-scvwheodi5y5phavsi67myzr3xykgcgd-build", checksumkind: CSK_MD5, checksum: "82b8376d51d70918c90cbcad8a4314fc")
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!648}
!1518 = !DISubprogram(name: "DestroyFontRec", scope: !1515, file: !1515, line: 74, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1519 = !DISubprogram(name: "CheckFSFormat", scope: !330, file: !330, line: 7, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!16, !31, !35, !693, !693, !693, !693, !693}
!1522 = distinct !DISubprogram(name: "_fs_get_glyphs", scope: !1, file: !1, line: 408, type: !662, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1524 = !DILocalVariable(name: "pFont", arg: 1, scope: !1522, file: !1, line: 408, type: !648)
!1525 = !DILocalVariable(name: "count", arg: 2, scope: !1522, file: !1, line: 408, type: !27)
!1526 = !DILocalVariable(name: "chars", arg: 3, scope: !1522, file: !1, line: 408, type: !70)
!1527 = !DILocalVariable(name: "charEncoding", arg: 4, scope: !1522, file: !1, line: 409, type: !664)
!1528 = !DILocalVariable(name: "glyphCount", arg: 5, scope: !1522, file: !1, line: 410, type: !665)
!1529 = !DILocalVariable(name: "glyphs", arg: 6, scope: !1522, file: !1, line: 411, type: !666)
!1530 = !DILocalVariable(name: "fsdata", scope: !1522, file: !1, line: 413, type: !36)
!1531 = !DILocalVariable(name: "firstCol", scope: !1522, file: !1, line: 414, type: !5)
!1532 = !DILocalVariable(name: "numCols", scope: !1522, file: !1, line: 415, type: !5)
!1533 = !DILocalVariable(name: "firstRow", scope: !1522, file: !1, line: 416, type: !5)
!1534 = !DILocalVariable(name: "numRows", scope: !1522, file: !1, line: 417, type: !5)
!1535 = !DILocalVariable(name: "glyphsBase", scope: !1522, file: !1, line: 418, type: !666)
!1536 = !DILocalVariable(name: "c", scope: !1522, file: !1, line: 419, type: !5)
!1537 = !DILocalVariable(name: "pci", scope: !1522, file: !1, line: 420, type: !41)
!1538 = !DILocalVariable(name: "r", scope: !1522, file: !1, line: 421, type: !5)
!1539 = !DILocalVariable(name: "encoding", scope: !1522, file: !1, line: 422, type: !41)
!1540 = !DILocalVariable(name: "pDefault", scope: !1522, file: !1, line: 423, type: !41)
!1541 = !DILocalVariable(name: "fsd", scope: !1522, file: !1, line: 424, type: !17)
!1542 = !DILocalVariable(name: "err", scope: !1522, file: !1, line: 425, type: !16)
!1543 = !DILocation(line: 408, column: 24, scope: !1522)
!1544 = !DILocation(line: 408, column: 45, scope: !1522)
!1545 = !DILocation(line: 408, column: 67, scope: !1522)
!1546 = !DILocation(line: 409, column: 22, scope: !1522)
!1547 = !DILocation(line: 410, column: 24, scope: !1522)
!1548 = !DILocation(line: 411, column: 22, scope: !1522)
!1549 = !DILocation(line: 413, column: 5, scope: !1522)
!1550 = !DILocation(line: 413, column: 17, scope: !1522)
!1551 = !DILocation(line: 414, column: 5, scope: !1522)
!1552 = !DILocation(line: 414, column: 18, scope: !1522)
!1553 = !DILocation(line: 415, column: 5, scope: !1522)
!1554 = !DILocation(line: 415, column: 27, scope: !1522)
!1555 = !DILocation(line: 416, column: 5, scope: !1522)
!1556 = !DILocation(line: 416, column: 18, scope: !1522)
!1557 = !DILocation(line: 417, column: 5, scope: !1522)
!1558 = !DILocation(line: 417, column: 18, scope: !1522)
!1559 = !DILocation(line: 418, column: 5, scope: !1522)
!1560 = !DILocation(line: 418, column: 18, scope: !1522)
!1561 = !DILocation(line: 419, column: 5, scope: !1522)
!1562 = !DILocation(line: 419, column: 27, scope: !1522)
!1563 = !DILocation(line: 420, column: 5, scope: !1522)
!1564 = !DILocation(line: 420, column: 26, scope: !1522)
!1565 = !DILocation(line: 421, column: 5, scope: !1522)
!1566 = !DILocation(line: 421, column: 18, scope: !1522)
!1567 = !DILocation(line: 422, column: 5, scope: !1522)
!1568 = !DILocation(line: 422, column: 17, scope: !1522)
!1569 = !DILocation(line: 423, column: 5, scope: !1522)
!1570 = !DILocation(line: 423, column: 17, scope: !1522)
!1571 = !DILocation(line: 424, column: 5, scope: !1522)
!1572 = !DILocation(line: 424, column: 19, scope: !1522)
!1573 = !DILocation(line: 424, column: 41, scope: !1522)
!1574 = !DILocation(line: 424, column: 48, scope: !1522)
!1575 = !DILocation(line: 425, column: 5, scope: !1522)
!1576 = !DILocation(line: 425, column: 17, scope: !1522)
!1577 = !DILocation(line: 427, column: 26, scope: !1522)
!1578 = !DILocation(line: 427, column: 33, scope: !1522)
!1579 = !DILocation(line: 427, column: 12, scope: !1522)
!1580 = !DILocation(line: 428, column: 16, scope: !1522)
!1581 = !DILocation(line: 428, column: 24, scope: !1522)
!1582 = !DILocation(line: 428, column: 14, scope: !1522)
!1583 = !DILocation(line: 429, column: 16, scope: !1522)
!1584 = !DILocation(line: 429, column: 24, scope: !1522)
!1585 = !DILocation(line: 429, column: 14, scope: !1522)
!1586 = !DILocation(line: 430, column: 16, scope: !1522)
!1587 = !DILocation(line: 430, column: 23, scope: !1522)
!1588 = !DILocation(line: 430, column: 28, scope: !1522)
!1589 = !DILocation(line: 430, column: 14, scope: !1522)
!1590 = !DILocation(line: 431, column: 15, scope: !1522)
!1591 = !DILocation(line: 431, column: 22, scope: !1522)
!1592 = !DILocation(line: 431, column: 27, scope: !1522)
!1593 = !DILocation(line: 431, column: 37, scope: !1522)
!1594 = !DILocation(line: 431, column: 35, scope: !1522)
!1595 = !DILocation(line: 431, column: 46, scope: !1522)
!1596 = !DILocation(line: 431, column: 13, scope: !1522)
!1597 = !DILocation(line: 432, column: 18, scope: !1522)
!1598 = !DILocation(line: 432, column: 16, scope: !1522)
!1599 = !DILocation(line: 454, column: 13, scope: !1522)
!1600 = !DILocation(line: 454, column: 5, scope: !1522)
!1601 = !DILocation(line: 458, column: 6, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 458, column: 6)
!1603 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 454, column: 27)
!1604 = !DILocation(line: 458, column: 13, scope: !1602)
!1605 = !DILocation(line: 458, column: 18, scope: !1602)
!1606 = !DILocation(line: 458, column: 27, scope: !1602)
!1607 = !DILocation(line: 458, column: 6, scope: !1603)
!1608 = !DILocation(line: 459, column: 6, scope: !1602)
!1609 = !DILocation(line: 460, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 460, column: 6)
!1611 = !DILocation(line: 460, column: 13, scope: !1610)
!1612 = !DILocation(line: 460, column: 18, scope: !1610)
!1613 = !DILocation(line: 460, column: 27, scope: !1610)
!1614 = !DILocation(line: 460, column: 30, scope: !1610)
!1615 = !DILocation(line: 460, column: 6, scope: !1603)
!1616 = !DILocation(line: 461, column: 6, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 460, column: 40)
!1618 = !DILocation(line: 461, column: 13, scope: !1617)
!1619 = !DILocation(line: 461, column: 17, scope: !1617)
!1620 = !DILocation(line: 461, column: 31, scope: !1617)
!1621 = !DILocation(line: 461, column: 39, scope: !1617)
!1622 = !DILocation(line: 0, scope: !1617)
!1623 = !DILocation(line: 462, column: 14, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 461, column: 43)
!1625 = !DILocation(line: 462, column: 8, scope: !1624)
!1626 = !DILocation(line: 462, column: 7, scope: !1624)
!1627 = !DILocation(line: 462, column: 20, scope: !1624)
!1628 = !DILocation(line: 462, column: 18, scope: !1624)
!1629 = !DILocation(line: 462, column: 5, scope: !1624)
!1630 = !DILocation(line: 463, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 463, column: 7)
!1632 = !DILocation(line: 463, column: 11, scope: !1631)
!1633 = !DILocation(line: 463, column: 9, scope: !1631)
!1634 = !DILocation(line: 463, column: 7, scope: !1624)
!1635 = !DILocation(line: 464, column: 19, scope: !1631)
!1636 = !DILocation(line: 464, column: 14, scope: !1631)
!1637 = !DILocation(line: 464, column: 17, scope: !1631)
!1638 = !DILocation(line: 464, column: 7, scope: !1631)
!1639 = !DILocation(line: 466, column: 19, scope: !1631)
!1640 = !DILocation(line: 466, column: 14, scope: !1631)
!1641 = !DILocation(line: 466, column: 17, scope: !1631)
!1642 = distinct !{!1642, !1616, !1643, !542}
!1643 = !DILocation(line: 467, column: 6, scope: !1617)
!1644 = !DILocation(line: 468, column: 2, scope: !1617)
!1645 = !DILocation(line: 469, column: 6, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 468, column: 9)
!1647 = !DILocation(line: 469, column: 13, scope: !1646)
!1648 = !DILocation(line: 469, column: 17, scope: !1646)
!1649 = !DILocation(line: 469, column: 31, scope: !1646)
!1650 = !DILocation(line: 469, column: 39, scope: !1646)
!1651 = !DILocation(line: 0, scope: !1646)
!1652 = !DILocation(line: 470, column: 14, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 469, column: 43)
!1654 = !DILocation(line: 470, column: 8, scope: !1653)
!1655 = !DILocation(line: 470, column: 7, scope: !1653)
!1656 = !DILocation(line: 470, column: 20, scope: !1653)
!1657 = !DILocation(line: 470, column: 18, scope: !1653)
!1658 = !DILocation(line: 470, column: 5, scope: !1653)
!1659 = !DILocation(line: 471, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1653, file: !1, line: 471, column: 7)
!1661 = !DILocation(line: 471, column: 11, scope: !1660)
!1662 = !DILocation(line: 471, column: 9, scope: !1660)
!1663 = !DILocation(line: 471, column: 19, scope: !1660)
!1664 = !DILocation(line: 471, column: 22, scope: !1660)
!1665 = !DILocation(line: 471, column: 41, scope: !1660)
!1666 = !DILocation(line: 471, column: 7, scope: !1653)
!1667 = !DILocation(line: 472, column: 19, scope: !1660)
!1668 = !DILocation(line: 472, column: 14, scope: !1660)
!1669 = !DILocation(line: 472, column: 17, scope: !1660)
!1670 = !DILocation(line: 472, column: 7, scope: !1660)
!1671 = !DILocation(line: 473, column: 12, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 473, column: 12)
!1673 = !DILocation(line: 473, column: 12, scope: !1660)
!1674 = !DILocation(line: 474, column: 19, scope: !1672)
!1675 = !DILocation(line: 474, column: 14, scope: !1672)
!1676 = !DILocation(line: 474, column: 17, scope: !1672)
!1677 = !DILocation(line: 474, column: 7, scope: !1672)
!1678 = distinct !{!1678, !1645, !1679, !542}
!1679 = !DILocation(line: 475, column: 6, scope: !1646)
!1680 = !DILocation(line: 477, column: 2, scope: !1603)
!1681 = !DILocation(line: 479, column: 6, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 479, column: 6)
!1683 = !DILocation(line: 479, column: 13, scope: !1682)
!1684 = !DILocation(line: 479, column: 18, scope: !1682)
!1685 = !DILocation(line: 479, column: 27, scope: !1682)
!1686 = !DILocation(line: 479, column: 30, scope: !1682)
!1687 = !DILocation(line: 479, column: 6, scope: !1603)
!1688 = !DILocation(line: 480, column: 6, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 479, column: 40)
!1690 = !DILocation(line: 480, column: 13, scope: !1689)
!1691 = !DILocation(line: 480, column: 17, scope: !1689)
!1692 = !DILocation(line: 480, column: 31, scope: !1689)
!1693 = !DILocation(line: 480, column: 39, scope: !1689)
!1694 = !DILocation(line: 0, scope: !1689)
!1695 = !DILocation(line: 481, column: 13, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 480, column: 43)
!1697 = !DILocation(line: 481, column: 7, scope: !1696)
!1698 = !DILocation(line: 481, column: 16, scope: !1696)
!1699 = !DILocation(line: 481, column: 5, scope: !1696)
!1700 = !DILocation(line: 482, column: 8, scope: !1696)
!1701 = !DILocation(line: 482, column: 18, scope: !1696)
!1702 = !DILocation(line: 482, column: 12, scope: !1696)
!1703 = !DILocation(line: 482, column: 10, scope: !1696)
!1704 = !DILocation(line: 482, column: 24, scope: !1696)
!1705 = !DILocation(line: 482, column: 22, scope: !1696)
!1706 = !DILocation(line: 482, column: 5, scope: !1696)
!1707 = !DILocation(line: 483, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 483, column: 7)
!1709 = !DILocation(line: 483, column: 11, scope: !1708)
!1710 = !DILocation(line: 483, column: 9, scope: !1708)
!1711 = !DILocation(line: 483, column: 7, scope: !1696)
!1712 = !DILocation(line: 484, column: 19, scope: !1708)
!1713 = !DILocation(line: 484, column: 14, scope: !1708)
!1714 = !DILocation(line: 484, column: 17, scope: !1708)
!1715 = !DILocation(line: 484, column: 7, scope: !1708)
!1716 = !DILocation(line: 486, column: 19, scope: !1708)
!1717 = !DILocation(line: 486, column: 14, scope: !1708)
!1718 = !DILocation(line: 486, column: 17, scope: !1708)
!1719 = distinct !{!1719, !1688, !1720, !542}
!1720 = !DILocation(line: 487, column: 6, scope: !1689)
!1721 = !DILocation(line: 488, column: 2, scope: !1689)
!1722 = !DILocation(line: 489, column: 6, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 488, column: 9)
!1724 = !DILocation(line: 489, column: 13, scope: !1723)
!1725 = !DILocation(line: 489, column: 17, scope: !1723)
!1726 = !DILocation(line: 489, column: 31, scope: !1723)
!1727 = !DILocation(line: 489, column: 39, scope: !1723)
!1728 = !DILocation(line: 0, scope: !1723)
!1729 = !DILocation(line: 490, column: 13, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1723, file: !1, line: 489, column: 43)
!1731 = !DILocation(line: 490, column: 7, scope: !1730)
!1732 = !DILocation(line: 490, column: 16, scope: !1730)
!1733 = !DILocation(line: 490, column: 5, scope: !1730)
!1734 = !DILocation(line: 491, column: 8, scope: !1730)
!1735 = !DILocation(line: 491, column: 18, scope: !1730)
!1736 = !DILocation(line: 491, column: 12, scope: !1730)
!1737 = !DILocation(line: 491, column: 10, scope: !1730)
!1738 = !DILocation(line: 491, column: 24, scope: !1730)
!1739 = !DILocation(line: 491, column: 22, scope: !1730)
!1740 = !DILocation(line: 491, column: 5, scope: !1730)
!1741 = !DILocation(line: 492, column: 7, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 492, column: 7)
!1743 = !DILocation(line: 492, column: 11, scope: !1742)
!1744 = !DILocation(line: 492, column: 9, scope: !1742)
!1745 = !DILocation(line: 492, column: 19, scope: !1742)
!1746 = !DILocation(line: 492, column: 22, scope: !1742)
!1747 = !DILocation(line: 492, column: 41, scope: !1742)
!1748 = !DILocation(line: 492, column: 7, scope: !1730)
!1749 = !DILocation(line: 493, column: 19, scope: !1742)
!1750 = !DILocation(line: 493, column: 14, scope: !1742)
!1751 = !DILocation(line: 493, column: 17, scope: !1742)
!1752 = !DILocation(line: 493, column: 7, scope: !1742)
!1753 = !DILocation(line: 494, column: 12, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 494, column: 12)
!1755 = !DILocation(line: 494, column: 12, scope: !1742)
!1756 = !DILocation(line: 495, column: 19, scope: !1754)
!1757 = !DILocation(line: 495, column: 14, scope: !1754)
!1758 = !DILocation(line: 495, column: 17, scope: !1754)
!1759 = !DILocation(line: 495, column: 7, scope: !1754)
!1760 = distinct !{!1760, !1722, !1761, !542}
!1761 = !DILocation(line: 496, column: 6, scope: !1723)
!1762 = !DILocation(line: 498, column: 2, scope: !1603)
!1763 = !DILocation(line: 501, column: 13, scope: !1603)
!1764 = !DILocation(line: 501, column: 20, scope: !1603)
!1765 = !DILocation(line: 501, column: 25, scope: !1603)
!1766 = !DILocation(line: 501, column: 11, scope: !1603)
!1767 = !DILocation(line: 502, column: 12, scope: !1603)
!1768 = !DILocation(line: 502, column: 19, scope: !1603)
!1769 = !DILocation(line: 502, column: 24, scope: !1603)
!1770 = !DILocation(line: 502, column: 34, scope: !1603)
!1771 = !DILocation(line: 502, column: 32, scope: !1603)
!1772 = !DILocation(line: 502, column: 43, scope: !1603)
!1773 = !DILocation(line: 502, column: 10, scope: !1603)
!1774 = !DILocation(line: 503, column: 2, scope: !1603)
!1775 = !DILocation(line: 503, column: 9, scope: !1603)
!1776 = !DILocation(line: 503, column: 13, scope: !1603)
!1777 = !DILocation(line: 503, column: 27, scope: !1603)
!1778 = !DILocation(line: 503, column: 35, scope: !1603)
!1779 = !DILocation(line: 0, scope: !1603)
!1780 = !DILocation(line: 504, column: 17, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 503, column: 39)
!1782 = !DILocation(line: 504, column: 11, scope: !1781)
!1783 = !DILocation(line: 504, column: 10, scope: !1781)
!1784 = !DILocation(line: 504, column: 23, scope: !1781)
!1785 = !DILocation(line: 504, column: 21, scope: !1781)
!1786 = !DILocation(line: 504, column: 8, scope: !1781)
!1787 = !DILocation(line: 505, column: 17, scope: !1781)
!1788 = !DILocation(line: 505, column: 11, scope: !1781)
!1789 = !DILocation(line: 505, column: 10, scope: !1781)
!1790 = !DILocation(line: 505, column: 23, scope: !1781)
!1791 = !DILocation(line: 505, column: 21, scope: !1781)
!1792 = !DILocation(line: 505, column: 8, scope: !1781)
!1793 = !DILocation(line: 506, column: 10, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 506, column: 10)
!1795 = !DILocation(line: 506, column: 14, scope: !1794)
!1796 = !DILocation(line: 506, column: 12, scope: !1794)
!1797 = !DILocation(line: 506, column: 22, scope: !1794)
!1798 = !DILocation(line: 506, column: 25, scope: !1794)
!1799 = !DILocation(line: 506, column: 29, scope: !1794)
!1800 = !DILocation(line: 506, column: 27, scope: !1794)
!1801 = !DILocation(line: 506, column: 37, scope: !1794)
!1802 = !DILocation(line: 507, column: 7, scope: !1794)
!1803 = !DILocation(line: 507, column: 40, scope: !1794)
!1804 = !DILocation(line: 506, column: 10, scope: !1781)
!1805 = !DILocation(line: 508, column: 15, scope: !1794)
!1806 = !DILocation(line: 508, column: 10, scope: !1794)
!1807 = !DILocation(line: 508, column: 13, scope: !1794)
!1808 = !DILocation(line: 508, column: 3, scope: !1794)
!1809 = !DILocation(line: 509, column: 15, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1794, file: !1, line: 509, column: 15)
!1811 = !DILocation(line: 509, column: 15, scope: !1794)
!1812 = !DILocation(line: 510, column: 15, scope: !1810)
!1813 = !DILocation(line: 510, column: 10, scope: !1810)
!1814 = !DILocation(line: 510, column: 13, scope: !1810)
!1815 = !DILocation(line: 510, column: 3, scope: !1810)
!1816 = distinct !{!1816, !1774, !1817, !542}
!1817 = !DILocation(line: 511, column: 2, scope: !1603)
!1818 = !DILocation(line: 512, column: 2, scope: !1603)
!1819 = !DILocation(line: 514, column: 19, scope: !1522)
!1820 = !DILocation(line: 514, column: 28, scope: !1522)
!1821 = !DILocation(line: 514, column: 26, scope: !1522)
!1822 = !DILocation(line: 514, column: 6, scope: !1522)
!1823 = !DILocation(line: 514, column: 17, scope: !1522)
!1824 = !DILocation(line: 515, column: 12, scope: !1522)
!1825 = !DILocation(line: 516, column: 1, scope: !1522)
!1826 = !DILocation(line: 515, column: 5, scope: !1522)
!1827 = distinct !DISubprogram(name: "_fs_get_metrics", scope: !1, file: !1, line: 520, type: !669, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1828)
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1829 = !DILocalVariable(name: "pFont", arg: 1, scope: !1827, file: !1, line: 520, type: !648)
!1830 = !DILocalVariable(name: "count", arg: 2, scope: !1827, file: !1, line: 520, type: !27)
!1831 = !DILocalVariable(name: "chars", arg: 3, scope: !1827, file: !1, line: 520, type: !70)
!1832 = !DILocalVariable(name: "charEncoding", arg: 4, scope: !1827, file: !1, line: 521, type: !664)
!1833 = !DILocalVariable(name: "glyphCount", arg: 5, scope: !1827, file: !1, line: 522, type: !665)
!1834 = !DILocalVariable(name: "glyphs", arg: 6, scope: !1827, file: !1, line: 523, type: !671)
!1835 = !DILocalVariable(name: "fsdata", scope: !1827, file: !1, line: 525, type: !36)
!1836 = !DILocalVariable(name: "firstCol", scope: !1827, file: !1, line: 526, type: !5)
!1837 = !DILocalVariable(name: "numCols", scope: !1827, file: !1, line: 527, type: !5)
!1838 = !DILocalVariable(name: "firstRow", scope: !1827, file: !1, line: 528, type: !5)
!1839 = !DILocalVariable(name: "numRows", scope: !1827, file: !1, line: 529, type: !5)
!1840 = !DILocalVariable(name: "glyphsBase", scope: !1827, file: !1, line: 530, type: !671)
!1841 = !DILocalVariable(name: "c", scope: !1827, file: !1, line: 531, type: !5)
!1842 = !DILocalVariable(name: "r", scope: !1827, file: !1, line: 532, type: !5)
!1843 = !DILocalVariable(name: "encoding", scope: !1827, file: !1, line: 533, type: !41)
!1844 = !DILocalVariable(name: "pDefault", scope: !1827, file: !1, line: 534, type: !41)
!1845 = !DILocation(line: 520, column: 25, scope: !1827)
!1846 = !DILocation(line: 520, column: 46, scope: !1827)
!1847 = !DILocation(line: 520, column: 68, scope: !1827)
!1848 = !DILocation(line: 521, column: 16, scope: !1827)
!1849 = !DILocation(line: 522, column: 18, scope: !1827)
!1850 = !DILocation(line: 523, column: 15, scope: !1827)
!1851 = !DILocation(line: 525, column: 5, scope: !1827)
!1852 = !DILocation(line: 525, column: 17, scope: !1827)
!1853 = !DILocation(line: 526, column: 5, scope: !1827)
!1854 = !DILocation(line: 526, column: 18, scope: !1827)
!1855 = !DILocation(line: 527, column: 5, scope: !1827)
!1856 = !DILocation(line: 527, column: 27, scope: !1827)
!1857 = !DILocation(line: 528, column: 5, scope: !1827)
!1858 = !DILocation(line: 528, column: 18, scope: !1827)
!1859 = !DILocation(line: 529, column: 5, scope: !1827)
!1860 = !DILocation(line: 529, column: 18, scope: !1827)
!1861 = !DILocation(line: 530, column: 5, scope: !1827)
!1862 = !DILocation(line: 530, column: 17, scope: !1827)
!1863 = !DILocation(line: 531, column: 5, scope: !1827)
!1864 = !DILocation(line: 531, column: 27, scope: !1827)
!1865 = !DILocation(line: 532, column: 5, scope: !1827)
!1866 = !DILocation(line: 532, column: 18, scope: !1827)
!1867 = !DILocation(line: 533, column: 5, scope: !1827)
!1868 = !DILocation(line: 533, column: 17, scope: !1827)
!1869 = !DILocation(line: 534, column: 5, scope: !1827)
!1870 = !DILocation(line: 534, column: 17, scope: !1827)
!1871 = !DILocation(line: 536, column: 26, scope: !1827)
!1872 = !DILocation(line: 536, column: 33, scope: !1827)
!1873 = !DILocation(line: 536, column: 12, scope: !1827)
!1874 = !DILocation(line: 537, column: 16, scope: !1827)
!1875 = !DILocation(line: 537, column: 24, scope: !1827)
!1876 = !DILocation(line: 537, column: 14, scope: !1827)
!1877 = !DILocation(line: 538, column: 16, scope: !1827)
!1878 = !DILocation(line: 538, column: 24, scope: !1827)
!1879 = !DILocation(line: 538, column: 14, scope: !1827)
!1880 = !DILocation(line: 540, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 540, column: 9)
!1882 = !DILocation(line: 540, column: 9, scope: !1827)
!1883 = !DILocation(line: 541, column: 13, scope: !1881)
!1884 = !DILocation(line: 541, column: 25, scope: !1881)
!1885 = !DILocation(line: 541, column: 36, scope: !1881)
!1886 = !DILocation(line: 541, column: 44, scope: !1881)
!1887 = !DILocation(line: 541, column: 34, scope: !1881)
!1888 = !DILocation(line: 541, column: 22, scope: !1881)
!1889 = !DILocation(line: 541, column: 11, scope: !1881)
!1890 = !DILocation(line: 541, column: 2, scope: !1881)
!1891 = !DILocation(line: 542, column: 16, scope: !1827)
!1892 = !DILocation(line: 542, column: 23, scope: !1827)
!1893 = !DILocation(line: 542, column: 28, scope: !1827)
!1894 = !DILocation(line: 542, column: 14, scope: !1827)
!1895 = !DILocation(line: 543, column: 15, scope: !1827)
!1896 = !DILocation(line: 543, column: 22, scope: !1827)
!1897 = !DILocation(line: 543, column: 27, scope: !1827)
!1898 = !DILocation(line: 543, column: 37, scope: !1827)
!1899 = !DILocation(line: 543, column: 35, scope: !1827)
!1900 = !DILocation(line: 543, column: 46, scope: !1827)
!1901 = !DILocation(line: 543, column: 13, scope: !1827)
!1902 = !DILocation(line: 544, column: 18, scope: !1827)
!1903 = !DILocation(line: 544, column: 16, scope: !1827)
!1904 = !DILocation(line: 549, column: 13, scope: !1827)
!1905 = !DILocation(line: 549, column: 5, scope: !1827)
!1906 = !DILocation(line: 553, column: 6, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 553, column: 6)
!1908 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 549, column: 27)
!1909 = !DILocation(line: 553, column: 13, scope: !1907)
!1910 = !DILocation(line: 553, column: 18, scope: !1907)
!1911 = !DILocation(line: 553, column: 27, scope: !1907)
!1912 = !DILocation(line: 553, column: 6, scope: !1908)
!1913 = !DILocation(line: 554, column: 6, scope: !1907)
!1914 = !DILocation(line: 555, column: 6, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 555, column: 6)
!1916 = !DILocation(line: 555, column: 13, scope: !1915)
!1917 = !DILocation(line: 555, column: 18, scope: !1915)
!1918 = !DILocation(line: 555, column: 27, scope: !1915)
!1919 = !DILocation(line: 555, column: 30, scope: !1915)
!1920 = !DILocation(line: 555, column: 6, scope: !1908)
!1921 = !DILocation(line: 556, column: 6, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 555, column: 40)
!1923 = !DILocation(line: 556, column: 18, scope: !1922)
!1924 = !DILocation(line: 557, column: 14, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 556, column: 22)
!1926 = !DILocation(line: 557, column: 8, scope: !1925)
!1927 = !DILocation(line: 557, column: 7, scope: !1925)
!1928 = !DILocation(line: 557, column: 20, scope: !1925)
!1929 = !DILocation(line: 557, column: 18, scope: !1925)
!1930 = !DILocation(line: 557, column: 5, scope: !1925)
!1931 = !DILocation(line: 558, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1925, file: !1, line: 558, column: 7)
!1933 = !DILocation(line: 558, column: 11, scope: !1932)
!1934 = !DILocation(line: 558, column: 9, scope: !1932)
!1935 = !DILocation(line: 558, column: 7, scope: !1925)
!1936 = !DILocation(line: 559, column: 33, scope: !1932)
!1937 = !DILocation(line: 559, column: 42, scope: !1932)
!1938 = !DILocation(line: 559, column: 14, scope: !1932)
!1939 = !DILocation(line: 559, column: 17, scope: !1932)
!1940 = !DILocation(line: 559, column: 7, scope: !1932)
!1941 = !DILocation(line: 561, column: 32, scope: !1932)
!1942 = !DILocation(line: 561, column: 14, scope: !1932)
!1943 = !DILocation(line: 561, column: 17, scope: !1932)
!1944 = distinct !{!1944, !1921, !1945, !542}
!1945 = !DILocation(line: 562, column: 6, scope: !1922)
!1946 = !DILocation(line: 563, column: 2, scope: !1922)
!1947 = !DILocation(line: 564, column: 6, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 563, column: 9)
!1949 = !DILocation(line: 564, column: 18, scope: !1948)
!1950 = !DILocation(line: 565, column: 14, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 564, column: 22)
!1952 = !DILocation(line: 565, column: 8, scope: !1951)
!1953 = !DILocation(line: 565, column: 7, scope: !1951)
!1954 = !DILocation(line: 565, column: 20, scope: !1951)
!1955 = !DILocation(line: 565, column: 18, scope: !1951)
!1956 = !DILocation(line: 565, column: 5, scope: !1951)
!1957 = !DILocation(line: 566, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 566, column: 7)
!1959 = !DILocation(line: 566, column: 11, scope: !1958)
!1960 = !DILocation(line: 566, column: 9, scope: !1958)
!1961 = !DILocation(line: 566, column: 7, scope: !1951)
!1962 = !DILocation(line: 567, column: 33, scope: !1958)
!1963 = !DILocation(line: 567, column: 44, scope: !1958)
!1964 = !DILocation(line: 567, column: 42, scope: !1958)
!1965 = !DILocation(line: 567, column: 14, scope: !1958)
!1966 = !DILocation(line: 567, column: 17, scope: !1958)
!1967 = !DILocation(line: 567, column: 7, scope: !1958)
!1968 = !DILocation(line: 568, column: 12, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !1, line: 568, column: 12)
!1970 = !DILocation(line: 568, column: 12, scope: !1958)
!1971 = !DILocation(line: 569, column: 32, scope: !1969)
!1972 = !DILocation(line: 569, column: 14, scope: !1969)
!1973 = !DILocation(line: 569, column: 17, scope: !1969)
!1974 = !DILocation(line: 569, column: 7, scope: !1969)
!1975 = distinct !{!1975, !1947, !1976, !542}
!1976 = !DILocation(line: 570, column: 6, scope: !1948)
!1977 = !DILocation(line: 572, column: 2, scope: !1908)
!1978 = !DILocation(line: 574, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 574, column: 6)
!1980 = !DILocation(line: 574, column: 13, scope: !1979)
!1981 = !DILocation(line: 574, column: 18, scope: !1979)
!1982 = !DILocation(line: 574, column: 27, scope: !1979)
!1983 = !DILocation(line: 574, column: 30, scope: !1979)
!1984 = !DILocation(line: 574, column: 6, scope: !1908)
!1985 = !DILocation(line: 575, column: 6, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 574, column: 40)
!1987 = !DILocation(line: 575, column: 18, scope: !1986)
!1988 = !DILocation(line: 576, column: 13, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 575, column: 22)
!1990 = !DILocation(line: 576, column: 7, scope: !1989)
!1991 = !DILocation(line: 576, column: 16, scope: !1989)
!1992 = !DILocation(line: 576, column: 5, scope: !1989)
!1993 = !DILocation(line: 577, column: 8, scope: !1989)
!1994 = !DILocation(line: 577, column: 18, scope: !1989)
!1995 = !DILocation(line: 577, column: 12, scope: !1989)
!1996 = !DILocation(line: 577, column: 10, scope: !1989)
!1997 = !DILocation(line: 577, column: 24, scope: !1989)
!1998 = !DILocation(line: 577, column: 22, scope: !1989)
!1999 = !DILocation(line: 577, column: 5, scope: !1989)
!2000 = !DILocation(line: 578, column: 7, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1989, file: !1, line: 578, column: 7)
!2002 = !DILocation(line: 578, column: 11, scope: !2001)
!2003 = !DILocation(line: 578, column: 9, scope: !2001)
!2004 = !DILocation(line: 578, column: 7, scope: !1989)
!2005 = !DILocation(line: 579, column: 33, scope: !2001)
!2006 = !DILocation(line: 579, column: 44, scope: !2001)
!2007 = !DILocation(line: 579, column: 42, scope: !2001)
!2008 = !DILocation(line: 579, column: 14, scope: !2001)
!2009 = !DILocation(line: 579, column: 17, scope: !2001)
!2010 = !DILocation(line: 579, column: 7, scope: !2001)
!2011 = !DILocation(line: 581, column: 32, scope: !2001)
!2012 = !DILocation(line: 581, column: 14, scope: !2001)
!2013 = !DILocation(line: 581, column: 17, scope: !2001)
!2014 = distinct !{!2014, !1985, !2015, !542}
!2015 = !DILocation(line: 582, column: 6, scope: !1986)
!2016 = !DILocation(line: 583, column: 2, scope: !1986)
!2017 = !DILocation(line: 584, column: 6, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 583, column: 9)
!2019 = !DILocation(line: 584, column: 18, scope: !2018)
!2020 = !DILocation(line: 585, column: 13, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 584, column: 22)
!2022 = !DILocation(line: 585, column: 7, scope: !2021)
!2023 = !DILocation(line: 585, column: 16, scope: !2021)
!2024 = !DILocation(line: 585, column: 5, scope: !2021)
!2025 = !DILocation(line: 586, column: 8, scope: !2021)
!2026 = !DILocation(line: 586, column: 18, scope: !2021)
!2027 = !DILocation(line: 586, column: 12, scope: !2021)
!2028 = !DILocation(line: 586, column: 10, scope: !2021)
!2029 = !DILocation(line: 586, column: 24, scope: !2021)
!2030 = !DILocation(line: 586, column: 22, scope: !2021)
!2031 = !DILocation(line: 586, column: 5, scope: !2021)
!2032 = !DILocation(line: 587, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 587, column: 7)
!2034 = !DILocation(line: 587, column: 11, scope: !2033)
!2035 = !DILocation(line: 587, column: 9, scope: !2033)
!2036 = !DILocation(line: 587, column: 7, scope: !2021)
!2037 = !DILocation(line: 588, column: 33, scope: !2033)
!2038 = !DILocation(line: 588, column: 44, scope: !2033)
!2039 = !DILocation(line: 588, column: 42, scope: !2033)
!2040 = !DILocation(line: 588, column: 14, scope: !2033)
!2041 = !DILocation(line: 588, column: 17, scope: !2033)
!2042 = !DILocation(line: 588, column: 7, scope: !2033)
!2043 = !DILocation(line: 589, column: 12, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 589, column: 12)
!2045 = !DILocation(line: 589, column: 12, scope: !2033)
!2046 = !DILocation(line: 590, column: 32, scope: !2044)
!2047 = !DILocation(line: 590, column: 14, scope: !2044)
!2048 = !DILocation(line: 590, column: 17, scope: !2044)
!2049 = !DILocation(line: 590, column: 7, scope: !2044)
!2050 = distinct !{!2050, !2017, !2051, !542}
!2051 = !DILocation(line: 591, column: 6, scope: !2018)
!2052 = !DILocation(line: 593, column: 2, scope: !1908)
!2053 = !DILocation(line: 596, column: 13, scope: !1908)
!2054 = !DILocation(line: 596, column: 20, scope: !1908)
!2055 = !DILocation(line: 596, column: 25, scope: !1908)
!2056 = !DILocation(line: 596, column: 11, scope: !1908)
!2057 = !DILocation(line: 597, column: 12, scope: !1908)
!2058 = !DILocation(line: 597, column: 19, scope: !1908)
!2059 = !DILocation(line: 597, column: 24, scope: !1908)
!2060 = !DILocation(line: 597, column: 34, scope: !1908)
!2061 = !DILocation(line: 597, column: 32, scope: !1908)
!2062 = !DILocation(line: 597, column: 43, scope: !1908)
!2063 = !DILocation(line: 597, column: 10, scope: !1908)
!2064 = !DILocation(line: 598, column: 2, scope: !1908)
!2065 = !DILocation(line: 598, column: 14, scope: !1908)
!2066 = !DILocation(line: 599, column: 17, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 598, column: 18)
!2068 = !DILocation(line: 599, column: 11, scope: !2067)
!2069 = !DILocation(line: 599, column: 10, scope: !2067)
!2070 = !DILocation(line: 599, column: 23, scope: !2067)
!2071 = !DILocation(line: 599, column: 21, scope: !2067)
!2072 = !DILocation(line: 599, column: 8, scope: !2067)
!2073 = !DILocation(line: 600, column: 17, scope: !2067)
!2074 = !DILocation(line: 600, column: 11, scope: !2067)
!2075 = !DILocation(line: 600, column: 10, scope: !2067)
!2076 = !DILocation(line: 600, column: 23, scope: !2067)
!2077 = !DILocation(line: 600, column: 21, scope: !2067)
!2078 = !DILocation(line: 600, column: 8, scope: !2067)
!2079 = !DILocation(line: 601, column: 10, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 601, column: 10)
!2081 = !DILocation(line: 601, column: 14, scope: !2080)
!2082 = !DILocation(line: 601, column: 12, scope: !2080)
!2083 = !DILocation(line: 601, column: 22, scope: !2080)
!2084 = !DILocation(line: 601, column: 25, scope: !2080)
!2085 = !DILocation(line: 601, column: 29, scope: !2080)
!2086 = !DILocation(line: 601, column: 27, scope: !2080)
!2087 = !DILocation(line: 601, column: 10, scope: !2067)
!2088 = !DILocation(line: 602, column: 29, scope: !2080)
!2089 = !DILocation(line: 602, column: 41, scope: !2080)
!2090 = !DILocation(line: 602, column: 45, scope: !2080)
!2091 = !DILocation(line: 602, column: 43, scope: !2080)
!2092 = !DILocation(line: 602, column: 55, scope: !2080)
!2093 = !DILocation(line: 602, column: 53, scope: !2080)
!2094 = !DILocation(line: 602, column: 38, scope: !2080)
!2095 = !DILocation(line: 602, column: 10, scope: !2080)
!2096 = !DILocation(line: 602, column: 13, scope: !2080)
!2097 = !DILocation(line: 602, column: 3, scope: !2080)
!2098 = !DILocation(line: 603, column: 15, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 603, column: 15)
!2100 = !DILocation(line: 603, column: 15, scope: !2080)
!2101 = !DILocation(line: 604, column: 28, scope: !2099)
!2102 = !DILocation(line: 604, column: 10, scope: !2099)
!2103 = !DILocation(line: 604, column: 13, scope: !2099)
!2104 = !DILocation(line: 604, column: 3, scope: !2099)
!2105 = distinct !{!2105, !2064, !2106, !542}
!2106 = !DILocation(line: 605, column: 2, scope: !1908)
!2107 = !DILocation(line: 606, column: 2, scope: !1908)
!2108 = !DILocation(line: 608, column: 19, scope: !1827)
!2109 = !DILocation(line: 608, column: 28, scope: !1827)
!2110 = !DILocation(line: 608, column: 26, scope: !1827)
!2111 = !DILocation(line: 608, column: 6, scope: !1827)
!2112 = !DILocation(line: 608, column: 17, scope: !1827)
!2113 = !DILocation(line: 610, column: 1, scope: !1827)
!2114 = !DILocation(line: 609, column: 5, scope: !1827)
!2115 = distinct !DISubprogram(name: "_fs_unload_font", scope: !1, file: !1, line: 614, type: !674, scopeLine: 615, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121}
!2117 = !DILocalVariable(name: "pfont", arg: 1, scope: !2115, file: !1, line: 614, type: !648)
!2118 = !DILocalVariable(name: "fsdata", scope: !2115, file: !1, line: 616, type: !36)
!2119 = !DILocalVariable(name: "fsd", scope: !2115, file: !1, line: 617, type: !17)
!2120 = !DILocalVariable(name: "encoding", scope: !2115, file: !1, line: 618, type: !41)
!2121 = !DILocalVariable(name: "glyphs", scope: !2115, file: !1, line: 619, type: !65)
!2122 = !DILocation(line: 614, column: 25, scope: !2115)
!2123 = !DILocation(line: 616, column: 5, scope: !2115)
!2124 = !DILocation(line: 616, column: 19, scope: !2115)
!2125 = !DILocation(line: 616, column: 40, scope: !2115)
!2126 = !DILocation(line: 616, column: 47, scope: !2115)
!2127 = !DILocation(line: 617, column: 5, scope: !2115)
!2128 = !DILocation(line: 617, column: 21, scope: !2115)
!2129 = !DILocation(line: 617, column: 43, scope: !2115)
!2130 = !DILocation(line: 617, column: 50, scope: !2115)
!2131 = !DILocation(line: 618, column: 5, scope: !2115)
!2132 = !DILocation(line: 618, column: 21, scope: !2115)
!2133 = !DILocation(line: 618, column: 32, scope: !2115)
!2134 = !DILocation(line: 618, column: 40, scope: !2115)
!2135 = !DILocation(line: 619, column: 5, scope: !2115)
!2136 = !DILocation(line: 619, column: 20, scope: !2115)
!2137 = !DILocation(line: 624, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 624, column: 9)
!2139 = !DILocation(line: 624, column: 9, scope: !2115)
!2140 = !DILocation(line: 625, column: 7, scope: !2138)
!2141 = !DILocation(line: 625, column: 2, scope: !2138)
!2142 = !DILocation(line: 627, column: 5, scope: !2115)
!2143 = !DILocation(line: 627, column: 22, scope: !2115)
!2144 = !DILocation(line: 627, column: 30, scope: !2115)
!2145 = !DILocation(line: 627, column: 20, scope: !2115)
!2146 = !DILocation(line: 629, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 628, column: 5)
!2148 = !DILocation(line: 629, column: 27, scope: !2147)
!2149 = !DILocation(line: 629, column: 2, scope: !2147)
!2150 = !DILocation(line: 629, column: 10, scope: !2147)
!2151 = !DILocation(line: 629, column: 17, scope: !2147)
!2152 = !DILocation(line: 630, column: 8, scope: !2147)
!2153 = !DILocation(line: 630, column: 2, scope: !2147)
!2154 = distinct !{!2154, !2142, !2155, !542}
!2155 = !DILocation(line: 631, column: 5, scope: !2115)
!2156 = !DILocation(line: 634, column: 23, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 634, column: 9)
!2158 = !DILocation(line: 634, column: 28, scope: !2157)
!2159 = !DILocation(line: 634, column: 9, scope: !2157)
!2160 = !DILocation(line: 634, column: 9, scope: !2115)
!2161 = !DILocation(line: 635, column: 22, scope: !2157)
!2162 = !DILocation(line: 635, column: 27, scope: !2157)
!2163 = !DILocation(line: 635, column: 2, scope: !2157)
!2164 = !DILocation(line: 637, column: 22, scope: !2115)
!2165 = !DILocation(line: 637, column: 29, scope: !2115)
!2166 = !DILocation(line: 637, column: 5, scope: !2115)
!2167 = !DILocation(line: 639, column: 10, scope: !2115)
!2168 = !DILocation(line: 639, column: 5, scope: !2115)
!2169 = !DILocation(line: 641, column: 20, scope: !2115)
!2170 = !DILocation(line: 641, column: 5, scope: !2115)
!2171 = !DILocation(line: 642, column: 1, scope: !2115)
!2172 = !DISubprogram(name: "GetNewFontClientID", scope: !1515, file: !1515, line: 60, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2175}
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Font", file: !167, line: 100, baseType: !166)
!2176 = !DISubprogram(name: "StoreFontClientFont", scope: !1515, file: !1515, line: 61, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!16, !648, !2175}
!2179 = distinct !DISubprogram(name: "fs_alloc_glyphs", scope: !1, file: !1, line: 719, type: !2180, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!72, !648, !16}
!2182 = !{!2183, !2184, !2185, !2186}
!2183 = !DILocalVariable(name: "pFont", arg: 1, scope: !2179, file: !1, line: 719, type: !648)
!2184 = !DILocalVariable(name: "size", arg: 2, scope: !2179, file: !1, line: 719, type: !16)
!2185 = !DILocalVariable(name: "glyphs", scope: !2179, file: !1, line: 721, type: !65)
!2186 = !DILocalVariable(name: "fsfont", scope: !2179, file: !1, line: 722, type: !36)
!2187 = !DILocation(line: 719, column: 26, scope: !2179)
!2188 = !DILocation(line: 719, column: 37, scope: !2179)
!2189 = !DILocation(line: 721, column: 5, scope: !2179)
!2190 = !DILocation(line: 721, column: 16, scope: !2179)
!2191 = !DILocation(line: 722, column: 5, scope: !2179)
!2192 = !DILocation(line: 722, column: 15, scope: !2179)
!2193 = !DILocation(line: 722, column: 36, scope: !2179)
!2194 = !DILocation(line: 722, column: 43, scope: !2179)
!2195 = !DILocation(line: 724, column: 9, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2179, file: !1, line: 724, column: 9)
!2197 = !DILocation(line: 724, column: 14, scope: !2196)
!2198 = !DILocation(line: 724, column: 9, scope: !2179)
!2199 = !DILocation(line: 725, column: 41, scope: !2196)
!2200 = !DILocation(line: 725, column: 39, scope: !2196)
!2201 = !DILocation(line: 725, column: 11, scope: !2196)
!2202 = !DILocation(line: 725, column: 9, scope: !2196)
!2203 = !DILocation(line: 725, column: 2, scope: !2196)
!2204 = !DILocation(line: 727, column: 9, scope: !2196)
!2205 = !DILocation(line: 728, column: 9, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2179, file: !1, line: 728, column: 9)
!2207 = !DILocation(line: 728, column: 16, scope: !2206)
!2208 = !DILocation(line: 728, column: 9, scope: !2179)
!2209 = !DILocation(line: 729, column: 2, scope: !2206)
!2210 = !DILocation(line: 730, column: 20, scope: !2179)
!2211 = !DILocation(line: 730, column: 28, scope: !2179)
!2212 = !DILocation(line: 730, column: 5, scope: !2179)
!2213 = !DILocation(line: 730, column: 13, scope: !2179)
!2214 = !DILocation(line: 730, column: 18, scope: !2179)
!2215 = !DILocation(line: 731, column: 22, scope: !2179)
!2216 = !DILocation(line: 731, column: 5, scope: !2179)
!2217 = !DILocation(line: 731, column: 13, scope: !2179)
!2218 = !DILocation(line: 731, column: 20, scope: !2179)
!2219 = !DILocation(line: 732, column: 23, scope: !2179)
!2220 = !DILocation(line: 732, column: 30, scope: !2179)
!2221 = !DILocation(line: 732, column: 5, scope: !2179)
!2222 = !DILocation(line: 733, column: 1, scope: !2179)
!2223 = !DISubprogram(name: "fs_load_all_glyphs", scope: !18, file: !18, line: 80, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!16, !648}
!2226 = !DISubprogram(name: "find_old_font", scope: !18, file: !18, line: 86, type: !2227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!648, !2175}
!2229 = !DISubprogram(name: "DeleteFontClientID", scope: !1515, file: !1515, line: 59, type: !2230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !2175}
